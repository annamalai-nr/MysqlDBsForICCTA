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
) ENGINE=InnoDB AUTO_INCREMENT=2082 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,201,24,2,NULL),(2,254,24,2,NULL),(3,257,24,2,NULL),(4,116,24,2,NULL),(5,221,24,2,NULL),(6,223,24,2,NULL),(7,224,24,2,NULL),(8,262,24,2,NULL),(9,265,24,2,NULL),(10,118,24,2,NULL),(11,167,24,2,NULL),(12,170,24,2,NULL),(13,256,24,2,NULL),(14,75,24,2,NULL),(15,78,24,2,NULL),(16,206,24,2,NULL),(17,209,24,2,NULL),(18,154,24,2,NULL),(19,107,24,2,NULL),(20,111,24,2,NULL),(21,28,24,2,NULL),(22,31,24,2,NULL),(23,155,24,2,NULL),(24,86,24,2,NULL),(25,113,24,2,NULL),(26,119,24,2,NULL),(27,122,24,2,NULL),(28,125,24,2,NULL),(29,141,24,2,NULL),(30,145,24,2,NULL),(31,147,24,2,NULL),(32,152,24,2,NULL),(33,216,24,2,NULL),(34,217,24,2,NULL),(35,219,24,2,NULL),(36,222,24,2,NULL),(37,225,24,2,NULL),(38,226,24,2,NULL),(39,228,24,2,NULL),(40,230,24,2,NULL),(41,233,24,2,NULL),(42,235,24,2,NULL),(43,236,24,2,NULL),(44,239,24,2,NULL),(45,241,24,2,NULL),(46,244,24,2,NULL),(47,245,24,2,NULL),(48,248,24,2,NULL),(49,258,24,2,NULL),(50,264,24,2,NULL),(51,48,60,2,NULL),(52,101,60,2,NULL),(53,201,28,2,NULL),(54,254,28,2,NULL),(55,257,28,2,NULL),(56,116,28,2,NULL),(57,221,28,2,NULL),(58,223,28,2,NULL),(59,224,28,2,NULL),(60,262,28,2,NULL),(61,265,28,2,NULL),(62,118,28,2,NULL),(63,167,28,2,NULL),(64,170,28,2,NULL),(65,256,28,2,NULL),(66,75,28,2,NULL),(67,78,28,2,NULL),(68,206,28,2,NULL),(69,209,28,2,NULL),(70,154,28,2,NULL),(71,107,28,2,NULL),(72,111,28,2,NULL),(73,28,28,2,NULL),(74,31,28,2,NULL),(75,155,28,2,NULL),(76,86,28,2,NULL),(77,113,28,2,NULL),(78,203,55,2,NULL),(79,119,28,2,NULL),(80,205,55,2,NULL),(81,32,47,2,NULL),(82,122,28,2,NULL),(83,271,55,2,NULL),(84,125,28,2,NULL),(85,50,47,2,NULL),(86,35,55,2,NULL),(87,141,28,2,NULL),(88,201,43,2,NULL),(89,178,55,2,NULL),(90,145,28,2,NULL),(91,182,55,2,NULL),(92,254,43,2,NULL),(93,147,28,2,NULL),(94,146,26,2,NULL),(95,257,43,2,NULL),(96,152,28,2,NULL),(97,116,43,2,NULL),(98,151,2,2,NULL),(99,216,28,2,NULL),(100,221,43,2,NULL),(101,217,28,2,NULL),(102,224,15,2,NULL),(103,223,43,2,NULL),(104,219,28,2,NULL),(105,224,18,2,NULL),(106,224,43,2,NULL),(107,222,28,2,NULL),(108,224,22,2,NULL),(109,262,43,2,NULL),(110,225,28,2,NULL),(111,224,25,2,NULL),(112,265,43,2,NULL),(113,226,28,2,NULL),(114,224,30,2,NULL),(115,118,43,2,NULL),(116,228,28,2,NULL),(117,224,39,2,NULL),(118,167,43,2,NULL),(119,230,28,2,NULL),(120,224,46,2,NULL),(121,170,43,2,NULL),(122,233,28,2,NULL),(123,224,56,2,NULL),(124,256,43,2,NULL),(125,235,28,2,NULL),(126,224,64,2,NULL),(127,75,43,2,NULL),(128,236,28,2,NULL),(129,224,14,2,NULL),(130,78,43,2,NULL),(131,239,28,2,NULL),(132,224,19,2,NULL),(133,206,43,2,NULL),(134,241,28,2,NULL),(135,224,23,2,NULL),(136,209,43,2,NULL),(137,244,28,2,NULL),(138,224,26,2,NULL),(139,154,43,2,NULL),(140,245,28,2,NULL),(141,224,31,2,NULL),(142,107,43,2,NULL),(143,248,28,2,NULL),(144,224,40,2,NULL),(145,111,43,2,NULL),(146,258,28,2,NULL),(147,224,44,2,NULL),(148,28,43,2,NULL),(149,264,28,2,NULL),(150,224,55,2,NULL),(151,31,43,2,NULL),(152,5,24,2,NULL),(153,224,63,2,NULL),(154,155,43,2,NULL),(155,34,60,2,NULL),(156,224,1,2,NULL),(157,86,43,2,NULL),(158,56,60,2,NULL),(159,224,21,2,NULL),(160,113,43,2,NULL),(161,201,41,2,NULL),(162,224,42,2,NULL),(163,119,43,2,NULL),(164,254,41,2,NULL),(165,224,41,2,NULL),(166,122,43,2,NULL),(167,257,41,2,NULL),(168,224,45,2,NULL),(169,125,43,2,NULL),(170,116,41,2,NULL),(171,224,49,2,NULL),(172,141,43,2,NULL),(173,221,41,2,NULL),(174,224,60,2,NULL),(175,145,43,2,NULL),(176,223,41,2,NULL),(177,224,67,2,NULL),(178,147,43,2,NULL),(179,262,41,2,NULL),(180,224,82,2,NULL),(181,152,43,2,NULL),(182,265,41,2,NULL),(183,216,43,2,NULL),(184,224,85,2,NULL),(185,118,41,2,NULL),(186,217,43,2,NULL),(187,224,66,2,NULL),(188,167,41,2,NULL),(189,224,53,2,NULL),(190,219,43,2,NULL),(191,170,41,2,NULL),(192,222,43,2,NULL),(193,224,61,2,NULL),(194,256,41,2,NULL),(195,224,72,2,NULL),(196,225,43,2,NULL),(197,75,41,2,NULL),(198,226,43,2,NULL),(199,224,78,2,NULL),(200,78,41,2,NULL),(201,228,43,2,NULL),(202,224,80,2,NULL),(203,206,41,2,NULL),(204,224,83,2,NULL),(205,230,43,2,NULL),(206,209,41,2,NULL),(207,224,84,2,NULL),(208,233,43,2,NULL),(209,154,41,2,NULL),(210,235,43,2,NULL),(211,224,86,2,NULL),(212,107,41,2,NULL),(213,236,43,2,NULL),(214,90,55,2,NULL),(215,111,41,2,NULL),(216,239,43,2,NULL),(217,100,26,2,NULL),(218,28,41,2,NULL),(219,201,14,2,NULL),(220,241,43,2,NULL),(221,31,41,2,NULL),(222,244,43,2,NULL),(223,254,14,2,NULL),(224,155,41,2,NULL),(225,245,43,2,NULL),(226,257,14,2,NULL),(227,86,41,2,NULL),(228,248,43,2,NULL),(229,116,14,2,NULL),(230,113,41,2,NULL),(231,258,43,2,NULL),(232,221,14,2,NULL),(233,119,41,2,NULL),(234,264,43,2,NULL),(235,223,14,2,NULL),(236,122,41,2,NULL),(237,36,54,2,NULL),(238,262,14,2,NULL),(239,125,41,2,NULL),(240,265,14,2,NULL),(241,95,59,2,NULL),(242,141,41,2,NULL),(243,110,43,2,NULL),(244,118,14,2,NULL),(245,145,41,2,NULL),(246,47,43,2,NULL),(247,167,14,2,NULL),(248,147,41,2,NULL),(249,201,66,2,NULL),(250,170,14,2,NULL),(251,152,41,2,NULL),(252,256,14,2,NULL),(253,254,66,2,NULL),(254,216,41,2,NULL),(255,75,14,2,NULL),(256,257,66,2,NULL),(257,217,41,2,NULL),(258,116,66,2,NULL),(259,78,14,2,NULL),(260,219,41,2,NULL),(261,221,66,2,NULL),(262,206,14,2,NULL),(263,222,41,2,NULL),(264,223,66,2,NULL),(265,209,14,2,NULL),(266,225,41,2,NULL),(267,154,14,2,NULL),(268,262,66,2,NULL),(269,226,41,2,NULL),(270,265,66,2,NULL),(271,107,14,2,NULL),(272,228,41,2,NULL),(273,118,66,2,NULL),(274,111,14,2,NULL),(275,230,41,2,NULL),(276,28,14,2,NULL),(277,167,66,2,NULL),(278,233,41,2,NULL),(279,31,14,2,NULL),(280,170,66,2,NULL),(281,235,41,2,NULL),(282,256,66,2,NULL),(283,155,14,2,NULL),(284,236,41,2,NULL),(285,86,14,2,NULL),(286,75,66,2,NULL),(287,239,41,2,NULL),(288,78,66,2,NULL),(289,113,14,2,NULL),(290,241,41,2,NULL),(291,206,66,2,NULL),(292,119,14,2,NULL),(293,244,41,2,NULL),(294,122,14,2,NULL),(295,209,66,2,NULL),(296,245,41,2,NULL),(297,125,14,2,NULL),(298,154,66,2,NULL),(299,248,41,2,NULL),(300,141,14,2,NULL),(301,107,66,2,NULL),(302,258,41,2,NULL),(303,145,14,2,NULL),(304,111,66,2,NULL),(305,264,41,2,NULL),(306,28,66,2,NULL),(307,147,14,2,NULL),(308,4,41,2,NULL),(309,152,14,2,NULL),(310,31,66,2,NULL),(311,201,45,2,NULL),(312,216,14,2,NULL),(313,155,66,2,NULL),(314,107,15,2,NULL),(315,86,66,2,NULL),(316,217,14,2,NULL),(317,111,15,2,NULL),(318,113,66,2,NULL),(319,219,14,2,NULL),(320,107,18,2,NULL),(321,222,14,2,NULL),(322,119,66,2,NULL),(323,111,18,2,NULL),(324,225,14,2,NULL),(325,122,66,2,NULL),(326,107,22,2,NULL),(327,125,66,2,NULL),(328,226,14,2,NULL),(329,111,22,2,NULL),(330,228,14,2,NULL),(331,141,66,2,NULL),(332,107,25,2,NULL),(333,230,14,2,NULL),(334,145,66,2,NULL),(335,111,25,2,NULL),(336,233,14,2,NULL),(337,147,66,2,NULL),(338,107,30,2,NULL),(339,152,66,2,NULL),(340,235,14,2,NULL),(341,111,30,2,NULL),(342,236,14,2,NULL),(343,216,66,2,NULL),(344,254,45,2,NULL),(345,239,14,2,NULL),(346,217,66,2,NULL),(347,257,45,2,NULL),(348,241,14,2,NULL),(349,219,66,2,NULL),(350,116,45,2,NULL),(351,222,66,2,NULL),(352,244,14,2,NULL),(353,221,45,2,NULL),(354,245,14,2,NULL),(355,225,66,2,NULL),(356,223,45,2,NULL),(357,248,14,2,NULL),(358,226,66,2,NULL),(359,107,39,2,NULL),(360,258,14,2,NULL),(361,228,66,2,NULL),(362,111,39,2,NULL),(363,264,14,2,NULL),(364,230,66,2,NULL),(365,107,46,2,NULL),(366,233,66,2,NULL),(367,105,26,2,NULL),(368,111,46,2,NULL),(369,235,66,2,NULL),(370,251,55,2,NULL),(371,107,56,2,NULL),(372,236,66,2,NULL),(373,201,19,2,NULL),(374,111,56,2,NULL),(375,254,19,2,NULL),(376,239,66,2,NULL),(377,107,64,2,NULL),(378,241,66,2,NULL),(379,257,19,2,NULL),(380,111,64,2,NULL),(381,244,66,2,NULL),(382,116,19,2,NULL),(383,107,19,2,NULL),(384,221,19,2,NULL),(385,245,66,2,NULL),(386,111,19,2,NULL),(387,248,66,2,NULL),(388,223,19,2,NULL),(389,107,23,2,NULL),(390,258,66,2,NULL),(391,262,19,2,NULL),(392,111,23,2,NULL),(393,264,66,2,NULL),(394,265,19,2,NULL),(395,107,26,2,NULL),(396,118,19,2,NULL),(397,111,26,2,NULL),(398,167,19,2,NULL),(399,107,31,2,NULL),(400,170,19,2,NULL),(401,111,31,2,NULL),(402,256,19,2,NULL),(403,262,45,2,NULL),(404,75,19,2,NULL),(405,265,45,2,NULL),(406,78,19,2,NULL),(407,118,45,2,NULL),(408,206,19,2,NULL),(409,167,45,2,NULL),(410,209,19,2,NULL),(411,170,45,2,NULL),(412,154,19,2,NULL),(413,107,40,2,NULL),(414,28,19,2,NULL),(415,111,40,2,NULL),(416,31,19,2,NULL),(417,107,44,2,NULL),(418,155,19,2,NULL),(419,111,44,2,NULL),(420,86,19,2,NULL),(421,256,45,2,NULL),(422,113,19,2,NULL),(423,107,55,2,NULL),(424,119,19,2,NULL),(425,111,55,2,NULL),(426,122,19,2,NULL),(427,107,63,2,NULL),(428,125,19,2,NULL),(429,111,63,2,NULL),(430,141,19,2,NULL),(431,107,1,2,NULL),(432,145,19,2,NULL),(433,111,1,2,NULL),(434,147,19,2,NULL),(435,107,21,2,NULL),(436,152,19,2,NULL),(437,111,21,2,NULL),(438,216,19,2,NULL),(439,75,45,2,NULL),(440,217,19,2,NULL),(441,78,45,2,NULL),(442,219,19,2,NULL),(443,206,45,2,NULL),(444,222,19,2,NULL),(445,209,45,2,NULL),(446,225,19,2,NULL),(447,154,45,2,NULL),(448,226,19,2,NULL),(449,107,42,2,NULL),(450,228,19,2,NULL),(451,111,42,2,NULL),(452,230,19,2,NULL),(453,107,49,2,NULL),(454,233,19,2,NULL),(455,111,49,2,NULL),(456,235,19,2,NULL),(457,28,45,2,NULL),(458,236,19,2,NULL),(459,31,45,2,NULL),(460,239,19,2,NULL),(461,155,45,2,NULL),(462,241,19,2,NULL),(463,107,60,2,NULL),(464,244,19,2,NULL),(465,111,60,2,NULL),(466,245,19,2,NULL),(467,107,67,2,NULL),(468,248,19,2,NULL),(469,111,67,2,NULL),(470,258,19,2,NULL),(471,107,82,2,NULL),(472,264,19,2,NULL),(473,111,82,2,NULL),(474,94,55,2,NULL),(475,107,85,2,NULL),(476,201,23,2,NULL),(477,111,85,2,NULL),(478,254,23,2,NULL),(479,107,53,2,NULL),(480,257,23,2,NULL),(481,111,53,2,NULL),(482,116,23,2,NULL),(483,107,61,2,NULL),(484,221,23,2,NULL),(485,111,61,2,NULL),(486,223,23,2,NULL),(487,107,72,2,NULL),(488,262,23,2,NULL),(489,111,72,2,NULL),(490,265,23,2,NULL),(491,86,45,2,NULL),(492,118,23,2,NULL),(493,113,45,2,NULL),(494,167,23,2,NULL),(495,119,45,2,NULL),(496,170,23,2,NULL),(497,122,45,2,NULL),(498,256,23,2,NULL),(499,125,45,2,NULL),(500,75,23,2,NULL),(501,141,45,2,NULL),(502,78,23,2,NULL),(503,145,45,2,NULL),(504,206,23,2,NULL),(505,147,45,2,NULL),(506,209,23,2,NULL),(507,152,45,2,NULL),(508,154,23,2,NULL),(509,216,45,2,NULL),(510,28,23,2,NULL),(511,217,45,2,NULL),(512,31,23,2,NULL),(513,219,45,2,NULL),(514,155,23,2,NULL),(515,222,45,2,NULL),(516,86,23,2,NULL),(517,225,45,2,NULL),(518,113,23,2,NULL),(519,226,45,2,NULL),(520,119,23,2,NULL),(521,228,45,2,NULL),(522,122,23,2,NULL),(523,230,45,2,NULL),(524,125,23,2,NULL),(525,233,45,2,NULL),(526,141,23,2,NULL),(527,235,45,2,NULL),(528,145,23,2,NULL),(529,236,45,2,NULL),(530,147,23,2,NULL),(531,239,45,2,NULL),(532,152,23,2,NULL),(533,241,45,2,NULL),(534,216,23,2,NULL),(535,244,45,2,NULL),(536,217,23,2,NULL),(537,245,45,2,NULL),(538,219,23,2,NULL),(539,248,45,2,NULL),(540,222,23,2,NULL),(541,258,45,2,NULL),(542,225,23,2,NULL),(543,264,45,2,NULL),(544,226,23,2,NULL),(545,107,78,2,NULL),(546,228,23,2,NULL),(547,111,78,2,NULL),(548,230,23,2,NULL),(549,107,80,2,NULL),(550,233,23,2,NULL),(551,111,80,2,NULL),(552,235,23,2,NULL),(553,107,83,2,NULL),(554,236,23,2,NULL),(555,111,83,2,NULL),(556,239,23,2,NULL),(557,107,84,2,NULL),(558,241,23,2,NULL),(559,111,84,2,NULL),(560,244,23,2,NULL),(561,107,86,2,NULL),(562,245,23,2,NULL),(563,111,86,2,NULL),(564,248,23,2,NULL),(565,117,60,2,NULL),(566,258,23,2,NULL),(567,201,49,2,NULL),(568,264,23,2,NULL),(569,254,49,2,NULL),(570,38,55,2,NULL),(571,257,49,2,NULL),(572,210,2,2,NULL),(573,116,49,2,NULL),(574,249,2,2,NULL),(575,221,49,2,NULL),(576,267,2,2,NULL),(577,223,49,2,NULL),(578,201,26,2,NULL),(579,262,49,2,NULL),(580,254,26,2,NULL),(581,265,49,2,NULL),(582,257,26,2,NULL),(583,118,49,2,NULL),(584,116,26,2,NULL),(585,167,49,2,NULL),(586,221,26,2,NULL),(587,170,49,2,NULL),(588,223,26,2,NULL),(589,256,49,2,NULL),(590,262,26,2,NULL),(591,75,49,2,NULL),(592,265,26,2,NULL),(593,78,49,2,NULL),(594,118,26,2,NULL),(595,206,49,2,NULL),(596,167,26,2,NULL),(597,209,49,2,NULL),(598,170,26,2,NULL),(599,154,49,2,NULL),(600,256,26,2,NULL),(601,28,49,2,NULL),(602,75,26,2,NULL),(603,31,49,2,NULL),(604,78,26,2,NULL),(605,155,49,2,NULL),(606,206,26,2,NULL),(607,86,49,2,NULL),(608,209,26,2,NULL),(609,113,49,2,NULL),(610,154,26,2,NULL),(611,119,49,2,NULL),(612,28,26,2,NULL),(613,122,49,2,NULL),(614,31,26,2,NULL),(615,125,49,2,NULL),(616,155,26,2,NULL),(617,141,49,2,NULL),(618,86,26,2,NULL),(619,145,49,2,NULL),(620,113,26,2,NULL),(621,147,49,2,NULL),(622,119,26,2,NULL),(623,152,49,2,NULL),(624,122,26,2,NULL),(625,216,49,2,NULL),(626,125,26,2,NULL),(627,217,49,2,NULL),(628,141,26,2,NULL),(629,219,49,2,NULL),(630,145,26,2,NULL),(631,222,49,2,NULL),(632,147,26,2,NULL),(633,225,49,2,NULL),(634,152,26,2,NULL),(635,226,49,2,NULL),(636,216,26,2,NULL),(637,228,49,2,NULL),(638,217,26,2,NULL),(639,230,49,2,NULL),(640,219,26,2,NULL),(641,233,49,2,NULL),(642,222,26,2,NULL),(643,235,49,2,NULL),(644,225,26,2,NULL),(645,236,49,2,NULL),(646,226,26,2,NULL),(647,239,49,2,NULL),(648,228,26,2,NULL),(649,241,49,2,NULL),(650,230,26,2,NULL),(651,244,49,2,NULL),(652,233,26,2,NULL),(653,245,49,2,NULL),(654,235,26,2,NULL),(655,248,49,2,NULL),(656,236,26,2,NULL),(657,258,49,2,NULL),(658,239,26,2,NULL),(659,264,49,2,NULL),(660,241,26,2,NULL),(661,81,41,2,NULL),(662,244,26,2,NULL),(663,158,57,2,NULL),(664,245,26,2,NULL),(665,28,15,2,NULL),(666,248,26,2,NULL),(667,31,15,2,NULL),(668,258,26,2,NULL),(669,155,15,2,NULL),(670,264,26,2,NULL),(671,28,18,2,NULL),(672,231,26,2,NULL),(673,31,18,2,NULL),(674,201,31,2,NULL),(675,155,18,2,NULL),(676,262,15,2,NULL),(677,28,22,2,NULL),(678,265,15,2,NULL),(679,31,22,2,NULL),(680,262,18,2,NULL),(681,155,22,2,NULL),(682,265,18,2,NULL),(683,28,25,2,NULL),(684,262,22,2,NULL),(685,31,25,2,NULL),(686,265,22,2,NULL),(687,155,25,2,NULL),(688,262,25,2,NULL),(689,28,30,2,NULL),(690,265,25,2,NULL),(691,31,30,2,NULL),(692,262,30,2,NULL),(693,155,30,2,NULL),(694,252,73,2,NULL),(695,265,30,2,NULL),(696,28,39,2,NULL),(697,201,72,2,NULL),(698,254,31,2,NULL),(699,31,39,2,NULL),(700,86,15,2,NULL),(701,257,31,2,NULL),(702,155,39,2,NULL),(703,86,18,2,NULL),(704,116,31,2,NULL),(705,28,46,2,NULL),(706,86,22,2,NULL),(707,221,31,2,NULL),(708,31,46,2,NULL),(709,86,25,2,NULL),(710,223,31,2,NULL),(711,155,46,2,NULL),(712,86,30,2,NULL),(713,262,39,2,NULL),(714,28,56,2,NULL),(715,254,72,2,NULL),(716,265,39,2,NULL),(717,31,56,2,NULL),(718,257,72,2,NULL),(719,262,46,2,NULL),(720,155,56,2,NULL),(721,116,72,2,NULL),(722,265,46,2,NULL),(723,28,64,2,NULL),(724,221,72,2,NULL),(725,262,56,2,NULL),(726,31,64,2,NULL),(727,223,72,2,NULL),(728,265,56,2,NULL),(729,155,64,2,NULL),(730,86,39,2,NULL),(731,262,64,2,NULL),(732,28,31,2,NULL),(733,86,46,2,NULL),(734,265,64,2,NULL),(735,31,31,2,NULL),(736,86,56,2,NULL),(737,118,31,2,NULL),(738,155,31,2,NULL),(739,86,64,2,NULL),(740,167,31,2,NULL),(741,28,40,2,NULL),(742,86,31,2,NULL),(743,170,31,2,NULL),(744,31,40,2,NULL),(745,262,72,2,NULL),(746,262,40,2,NULL),(747,155,40,2,NULL),(748,265,72,2,NULL),(749,265,40,2,NULL),(750,28,44,2,NULL),(751,118,72,2,NULL),(752,262,44,2,NULL),(753,31,44,2,NULL),(754,167,72,2,NULL),(755,265,44,2,NULL),(756,155,44,2,NULL),(757,170,72,2,NULL),(758,256,31,2,NULL),(759,28,55,2,NULL),(760,86,40,2,NULL),(761,262,55,2,NULL),(762,31,55,2,NULL),(763,86,44,2,NULL),(764,265,55,2,NULL),(765,155,55,2,NULL),(766,256,72,2,NULL),(767,262,63,2,NULL),(768,28,63,2,NULL),(769,86,55,2,NULL),(770,265,63,2,NULL),(771,31,63,2,NULL),(772,86,63,2,NULL),(773,262,1,2,NULL),(774,155,63,2,NULL),(775,86,1,2,NULL),(776,265,1,2,NULL),(777,28,1,2,NULL),(778,86,21,2,NULL),(779,262,21,2,NULL),(780,31,1,2,NULL),(781,75,72,2,NULL),(782,265,21,2,NULL),(783,155,1,2,NULL),(784,78,72,2,NULL),(785,75,31,2,NULL),(786,28,21,2,NULL),(787,206,72,2,NULL),(788,78,31,2,NULL),(789,31,21,2,NULL),(790,209,72,2,NULL),(791,206,31,2,NULL),(792,155,21,2,NULL),(793,154,72,2,NULL),(794,209,31,2,NULL),(795,28,42,2,NULL),(796,86,42,2,NULL),(797,154,31,2,NULL),(798,31,42,2,NULL),(799,28,72,2,NULL),(800,262,42,2,NULL),(801,155,42,2,NULL),(802,31,72,2,NULL),(803,265,42,2,NULL),(804,155,72,2,NULL),(805,28,60,2,NULL),(806,262,60,2,NULL),(807,31,60,2,NULL),(808,86,60,2,NULL),(809,265,60,2,NULL),(810,155,60,2,NULL),(811,86,67,2,NULL),(812,262,67,2,NULL),(813,28,67,2,NULL),(814,86,82,2,NULL),(815,265,67,2,NULL),(816,31,67,2,NULL),(817,86,85,2,NULL),(818,262,82,2,NULL),(819,155,67,2,NULL),(820,86,53,2,NULL),(821,265,82,2,NULL),(822,28,82,2,NULL),(823,86,61,2,NULL),(824,262,85,2,NULL),(825,31,82,2,NULL),(826,113,72,2,NULL),(827,265,85,2,NULL),(828,155,82,2,NULL),(829,119,72,2,NULL),(830,262,53,2,NULL),(831,28,85,2,NULL),(832,122,72,2,NULL),(833,265,53,2,NULL),(834,31,85,2,NULL),(835,125,72,2,NULL),(836,262,61,2,NULL),(837,155,85,2,NULL),(838,265,61,2,NULL),(839,141,72,2,NULL),(840,28,53,2,NULL),(841,145,72,2,NULL),(842,31,53,2,NULL),(843,113,31,2,NULL),(844,147,72,2,NULL),(845,155,53,2,NULL),(846,119,31,2,NULL),(847,152,72,2,NULL),(848,28,61,2,NULL),(849,122,31,2,NULL),(850,216,72,2,NULL),(851,125,31,2,NULL),(852,31,61,2,NULL),(853,217,72,2,NULL),(854,155,61,2,NULL),(855,141,31,2,NULL),(856,219,72,2,NULL),(857,145,31,2,NULL),(858,28,78,2,NULL),(859,222,72,2,NULL),(860,147,31,2,NULL),(861,31,78,2,NULL),(862,225,72,2,NULL),(863,155,78,2,NULL),(864,152,31,2,NULL),(865,226,72,2,NULL),(866,28,80,2,NULL),(867,216,31,2,NULL),(868,228,72,2,NULL),(869,217,31,2,NULL),(870,31,80,2,NULL),(871,230,72,2,NULL),(872,219,31,2,NULL),(873,155,80,2,NULL),(874,233,72,2,NULL),(875,28,83,2,NULL),(876,222,31,2,NULL),(877,235,72,2,NULL),(878,31,83,2,NULL),(879,225,31,2,NULL),(880,236,72,2,NULL),(881,155,83,2,NULL),(882,226,31,2,NULL),(883,239,72,2,NULL),(884,28,84,2,NULL),(885,228,31,2,NULL),(886,241,72,2,NULL),(887,31,84,2,NULL),(888,230,31,2,NULL),(889,244,72,2,NULL),(890,233,31,2,NULL),(891,155,84,2,NULL),(892,245,72,2,NULL),(893,235,31,2,NULL),(894,28,86,2,NULL),(895,248,72,2,NULL),(896,236,31,2,NULL),(897,31,86,2,NULL),(898,258,72,2,NULL),(899,239,31,2,NULL),(900,155,86,2,NULL),(901,264,72,2,NULL),(902,201,60,2,NULL),(903,241,31,2,NULL),(904,86,78,2,NULL),(905,244,31,2,NULL),(906,254,60,2,NULL),(907,86,80,2,NULL),(908,257,60,2,NULL),(909,245,31,2,NULL),(910,86,83,2,NULL),(911,248,31,2,NULL),(912,116,60,2,NULL),(913,86,84,2,NULL),(914,221,60,2,NULL),(915,258,31,2,NULL),(916,86,86,2,NULL),(917,264,31,2,NULL),(918,223,60,2,NULL),(919,113,15,2,NULL),(920,262,78,2,NULL),(921,118,60,2,NULL),(922,119,15,2,NULL),(923,265,78,2,NULL),(924,167,60,2,NULL),(925,122,15,2,NULL),(926,170,60,2,NULL),(927,262,80,2,NULL),(928,125,15,2,NULL),(929,265,80,2,NULL),(930,256,60,2,NULL),(931,141,15,2,NULL),(932,75,60,2,NULL),(933,262,83,2,NULL),(934,145,15,2,NULL),(935,78,60,2,NULL),(936,265,83,2,NULL),(937,147,15,2,NULL),(938,206,60,2,NULL),(939,262,84,2,NULL),(940,152,15,2,NULL),(941,265,84,2,NULL),(942,216,15,2,NULL),(943,209,60,2,NULL),(944,262,86,2,NULL),(945,154,60,2,NULL),(946,217,15,2,NULL),(947,265,86,2,NULL),(948,219,15,2,NULL),(949,113,60,2,NULL),(950,198,37,2,NULL),(951,119,60,2,NULL),(952,222,15,2,NULL),(953,273,26,2,NULL),(954,122,60,2,NULL),(955,225,15,2,NULL),(956,118,15,2,NULL),(957,125,60,2,NULL),(958,226,15,2,NULL),(959,167,15,2,NULL),(960,141,60,2,NULL),(961,228,15,2,NULL),(962,170,15,2,NULL),(963,145,60,2,NULL),(964,230,15,2,NULL),(965,118,18,2,NULL),(966,147,60,2,NULL),(967,233,15,2,NULL),(968,167,18,2,NULL),(969,152,60,2,NULL),(970,235,15,2,NULL),(971,170,18,2,NULL),(972,216,60,2,NULL),(973,236,15,2,NULL),(974,118,22,2,NULL),(975,217,60,2,NULL),(976,239,15,2,NULL),(977,167,22,2,NULL),(978,219,60,2,NULL),(979,241,15,2,NULL),(980,170,22,2,NULL),(981,222,60,2,NULL),(982,244,15,2,NULL),(983,118,25,2,NULL),(984,225,60,2,NULL),(985,245,15,2,NULL),(986,167,25,2,NULL),(987,226,60,2,NULL),(988,248,15,2,NULL),(989,170,25,2,NULL),(990,228,60,2,NULL),(991,113,18,2,NULL),(992,118,30,2,NULL),(993,230,60,2,NULL),(994,119,18,2,NULL),(995,167,30,2,NULL),(996,233,60,2,NULL),(997,122,18,2,NULL),(998,170,30,2,NULL),(999,235,60,2,NULL),(1000,125,18,2,NULL),(1001,118,39,2,NULL),(1002,236,60,2,NULL),(1003,141,18,2,NULL),(1004,167,39,2,NULL),(1005,239,60,2,NULL),(1006,145,18,2,NULL),(1007,170,39,2,NULL),(1008,241,60,2,NULL),(1009,147,18,2,NULL),(1010,118,46,2,NULL),(1011,244,60,2,NULL),(1012,152,18,2,NULL),(1013,167,46,2,NULL),(1014,216,18,2,NULL),(1015,245,60,2,NULL),(1016,170,46,2,NULL),(1017,248,60,2,NULL),(1018,217,18,2,NULL),(1019,118,56,2,NULL),(1020,258,60,2,NULL),(1021,219,18,2,NULL),(1022,167,56,2,NULL),(1023,264,60,2,NULL),(1024,222,18,2,NULL),(1025,170,56,2,NULL),(1026,6,60,2,NULL),(1027,225,18,2,NULL),(1028,118,64,2,NULL),(1029,91,60,2,NULL),(1030,226,18,2,NULL),(1031,167,64,2,NULL),(1032,138,60,2,NULL),(1033,228,18,2,NULL),(1034,170,64,2,NULL),(1035,201,67,2,NULL),(1036,230,18,2,NULL),(1037,118,40,2,NULL),(1038,254,67,2,NULL),(1039,233,18,2,NULL),(1040,167,40,2,NULL),(1041,257,67,2,NULL),(1042,235,18,2,NULL),(1043,170,40,2,NULL),(1044,116,67,2,NULL),(1045,236,18,2,NULL),(1046,118,44,2,NULL),(1047,221,67,2,NULL),(1048,239,18,2,NULL),(1049,167,44,2,NULL),(1050,223,67,2,NULL),(1051,241,18,2,NULL),(1052,170,44,2,NULL),(1053,244,18,2,NULL),(1054,118,67,2,NULL),(1055,118,55,2,NULL),(1056,167,67,2,NULL),(1057,245,18,2,NULL),(1058,167,55,2,NULL),(1059,170,67,2,NULL),(1060,248,18,2,NULL),(1061,170,55,2,NULL),(1062,256,67,2,NULL),(1063,113,22,2,NULL),(1064,118,63,2,NULL),(1065,75,67,2,NULL),(1066,119,22,2,NULL),(1067,167,63,2,NULL),(1068,78,67,2,NULL),(1069,122,22,2,NULL),(1070,170,63,2,NULL),(1071,206,67,2,NULL),(1072,125,22,2,NULL),(1073,118,1,2,NULL),(1074,209,67,2,NULL),(1075,167,1,2,NULL),(1076,141,22,2,NULL),(1077,154,67,2,NULL),(1078,170,1,2,NULL),(1079,145,22,2,NULL),(1080,113,67,2,NULL),(1081,118,21,2,NULL),(1082,147,22,2,NULL),(1083,119,67,2,NULL),(1084,167,21,2,NULL),(1085,122,67,2,NULL),(1086,152,22,2,NULL),(1087,170,21,2,NULL),(1088,125,67,2,NULL),(1089,216,22,2,NULL),(1090,118,42,2,NULL),(1091,141,67,2,NULL),(1092,167,42,2,NULL),(1093,217,22,2,NULL),(1094,145,67,2,NULL),(1095,170,42,2,NULL),(1096,219,22,2,NULL),(1097,147,67,2,NULL),(1098,222,22,2,NULL),(1099,118,82,2,NULL),(1100,152,67,2,NULL),(1101,225,22,2,NULL),(1102,167,82,2,NULL),(1103,216,67,2,NULL),(1104,170,82,2,NULL),(1105,226,22,2,NULL),(1106,217,67,2,NULL),(1107,118,85,2,NULL),(1108,228,22,2,NULL),(1109,219,67,2,NULL),(1110,167,85,2,NULL),(1111,230,22,2,NULL),(1112,222,67,2,NULL),(1113,170,85,2,NULL),(1114,233,22,2,NULL),(1115,225,67,2,NULL),(1116,235,22,2,NULL),(1117,118,53,2,NULL),(1118,226,67,2,NULL),(1119,167,53,2,NULL),(1120,236,22,2,NULL),(1121,228,67,2,NULL),(1122,239,22,2,NULL),(1123,170,53,2,NULL),(1124,230,67,2,NULL),(1125,118,61,2,NULL),(1126,241,22,2,NULL),(1127,233,67,2,NULL),(1128,167,61,2,NULL),(1129,244,22,2,NULL),(1130,235,67,2,NULL),(1131,170,61,2,NULL),(1132,245,22,2,NULL),(1133,236,67,2,NULL),(1134,248,22,2,NULL),(1135,118,78,2,NULL),(1136,239,67,2,NULL),(1137,167,78,2,NULL),(1138,113,25,2,NULL),(1139,241,67,2,NULL),(1140,170,78,2,NULL),(1141,119,25,2,NULL),(1142,244,67,2,NULL),(1143,118,80,2,NULL),(1144,122,25,2,NULL),(1145,245,67,2,NULL),(1146,167,80,2,NULL),(1147,125,25,2,NULL),(1148,248,67,2,NULL),(1149,170,80,2,NULL),(1150,141,25,2,NULL),(1151,258,67,2,NULL),(1152,118,83,2,NULL),(1153,145,25,2,NULL),(1154,264,67,2,NULL),(1155,167,83,2,NULL),(1156,147,25,2,NULL),(1157,201,82,2,NULL),(1158,170,83,2,NULL),(1159,152,25,2,NULL),(1160,254,82,2,NULL),(1161,118,84,2,NULL),(1162,257,82,2,NULL),(1163,216,25,2,NULL),(1164,167,84,2,NULL),(1165,116,82,2,NULL),(1166,217,25,2,NULL),(1167,170,84,2,NULL),(1168,221,82,2,NULL),(1169,219,25,2,NULL),(1170,118,86,2,NULL),(1171,223,82,2,NULL),(1172,167,86,2,NULL),(1173,222,25,2,NULL),(1174,256,82,2,NULL),(1175,170,86,2,NULL),(1176,225,25,2,NULL),(1177,75,82,2,NULL),(1178,226,25,2,NULL),(1179,201,40,2,NULL),(1180,78,82,2,NULL),(1181,254,40,2,NULL),(1182,228,25,2,NULL),(1183,206,82,2,NULL),(1184,257,40,2,NULL),(1185,230,25,2,NULL),(1186,209,82,2,NULL),(1187,233,25,2,NULL),(1188,116,40,2,NULL),(1189,154,82,2,NULL),(1190,235,25,2,NULL),(1191,221,40,2,NULL),(1192,113,82,2,NULL),(1193,223,40,2,NULL),(1194,236,25,2,NULL),(1195,119,82,2,NULL),(1196,239,25,2,NULL),(1197,256,40,2,NULL),(1198,122,82,2,NULL),(1199,75,40,2,NULL),(1200,241,25,2,NULL),(1201,125,82,2,NULL),(1202,244,25,2,NULL),(1203,78,40,2,NULL),(1204,141,82,2,NULL),(1205,245,25,2,NULL),(1206,206,40,2,NULL),(1207,145,82,2,NULL),(1208,209,40,2,NULL),(1209,248,25,2,NULL),(1210,147,82,2,NULL),(1211,154,40,2,NULL),(1212,113,30,2,NULL),(1213,152,82,2,NULL),(1214,119,30,2,NULL),(1215,113,40,2,NULL),(1216,216,82,2,NULL),(1217,122,30,2,NULL),(1218,119,40,2,NULL),(1219,217,82,2,NULL),(1220,125,30,2,NULL),(1221,122,40,2,NULL),(1222,219,82,2,NULL),(1223,125,40,2,NULL),(1224,141,30,2,NULL),(1225,222,82,2,NULL),(1226,141,40,2,NULL),(1227,145,30,2,NULL),(1228,225,82,2,NULL),(1229,147,30,2,NULL),(1230,145,40,2,NULL),(1231,226,82,2,NULL),(1232,152,30,2,NULL),(1233,147,40,2,NULL),(1234,228,82,2,NULL),(1235,216,30,2,NULL),(1236,152,40,2,NULL),(1237,230,82,2,NULL),(1238,216,40,2,NULL),(1239,217,30,2,NULL),(1240,233,82,2,NULL),(1241,217,40,2,NULL),(1242,219,30,2,NULL),(1243,235,82,2,NULL),(1244,219,40,2,NULL),(1245,222,30,2,NULL),(1246,236,82,2,NULL),(1247,225,30,2,NULL),(1248,222,40,2,NULL),(1249,239,82,2,NULL),(1250,226,30,2,NULL),(1251,225,40,2,NULL),(1252,241,82,2,NULL),(1253,226,40,2,NULL),(1254,228,30,2,NULL),(1255,244,82,2,NULL),(1256,228,40,2,NULL),(1257,230,30,2,NULL),(1258,245,82,2,NULL),(1259,230,40,2,NULL),(1260,233,30,2,NULL),(1261,248,82,2,NULL),(1262,233,40,2,NULL),(1263,235,30,2,NULL),(1264,258,82,2,NULL),(1265,235,40,2,NULL),(1266,236,30,2,NULL),(1267,264,82,2,NULL),(1268,236,40,2,NULL),(1269,239,30,2,NULL),(1270,201,85,2,NULL),(1271,239,40,2,NULL),(1272,241,30,2,NULL),(1273,254,85,2,NULL),(1274,241,40,2,NULL),(1275,244,30,2,NULL),(1276,257,85,2,NULL),(1277,244,40,2,NULL),(1278,245,30,2,NULL),(1279,116,85,2,NULL),(1280,245,40,2,NULL),(1281,248,30,2,NULL),(1282,221,85,2,NULL),(1283,248,40,2,NULL),(1284,113,39,2,NULL),(1285,223,85,2,NULL),(1286,258,40,2,NULL),(1287,119,39,2,NULL),(1288,256,85,2,NULL),(1289,264,40,2,NULL),(1290,122,39,2,NULL),(1291,75,85,2,NULL),(1292,188,55,2,NULL),(1293,125,39,2,NULL),(1294,78,85,2,NULL),(1295,190,55,2,NULL),(1296,141,39,2,NULL),(1297,206,85,2,NULL),(1298,272,55,2,NULL),(1299,145,39,2,NULL),(1300,209,85,2,NULL),(1301,201,44,2,NULL),(1302,147,39,2,NULL),(1303,154,85,2,NULL),(1304,254,44,2,NULL),(1305,152,39,2,NULL),(1306,113,85,2,NULL),(1307,257,44,2,NULL),(1308,216,39,2,NULL),(1309,119,85,2,NULL),(1310,116,44,2,NULL),(1311,217,39,2,NULL),(1312,122,85,2,NULL),(1313,221,44,2,NULL),(1314,219,39,2,NULL),(1315,125,85,2,NULL),(1316,223,44,2,NULL),(1317,222,39,2,NULL),(1318,141,85,2,NULL),(1319,225,39,2,NULL),(1320,256,44,2,NULL),(1321,145,85,2,NULL),(1322,75,44,2,NULL),(1323,226,39,2,NULL),(1324,147,85,2,NULL),(1325,78,44,2,NULL),(1326,228,39,2,NULL),(1327,152,85,2,NULL),(1328,206,44,2,NULL),(1329,230,39,2,NULL),(1330,216,85,2,NULL),(1331,209,44,2,NULL),(1332,233,39,2,NULL),(1333,217,85,2,NULL),(1334,154,44,2,NULL),(1335,235,39,2,NULL),(1336,219,85,2,NULL),(1337,236,39,2,NULL),(1338,113,44,2,NULL),(1339,222,85,2,NULL),(1340,239,39,2,NULL),(1341,119,44,2,NULL),(1342,225,85,2,NULL),(1343,122,44,2,NULL),(1344,241,39,2,NULL),(1345,226,85,2,NULL),(1346,125,44,2,NULL),(1347,244,39,2,NULL),(1348,228,85,2,NULL),(1349,141,44,2,NULL),(1350,245,39,2,NULL),(1351,230,85,2,NULL),(1352,248,39,2,NULL),(1353,145,44,2,NULL),(1354,233,85,2,NULL),(1355,147,44,2,NULL),(1356,113,46,2,NULL),(1357,235,85,2,NULL),(1358,152,44,2,NULL),(1359,119,46,2,NULL),(1360,236,85,2,NULL),(1361,216,44,2,NULL),(1362,122,46,2,NULL),(1363,239,85,2,NULL),(1364,217,44,2,NULL),(1365,125,46,2,NULL),(1366,241,85,2,NULL),(1367,219,44,2,NULL),(1368,141,46,2,NULL),(1369,244,85,2,NULL),(1370,222,44,2,NULL),(1371,145,46,2,NULL),(1372,245,85,2,NULL),(1373,225,44,2,NULL),(1374,147,46,2,NULL),(1375,248,85,2,NULL),(1376,226,44,2,NULL),(1377,152,46,2,NULL),(1378,258,85,2,NULL),(1379,228,44,2,NULL),(1380,216,46,2,NULL),(1381,264,85,2,NULL),(1382,230,44,2,NULL),(1383,217,46,2,NULL),(1384,233,44,2,NULL),(1385,219,46,2,NULL),(1386,235,44,2,NULL),(1387,222,46,2,NULL),(1388,236,44,2,NULL),(1389,225,46,2,NULL),(1390,239,44,2,NULL),(1391,226,46,2,NULL),(1392,241,44,2,NULL),(1393,228,46,2,NULL),(1394,244,44,2,NULL),(1395,230,46,2,NULL),(1396,245,44,2,NULL),(1397,233,46,2,NULL),(1398,248,44,2,NULL),(1399,235,46,2,NULL),(1400,258,44,2,NULL),(1401,236,46,2,NULL),(1402,264,44,2,NULL),(1403,239,46,2,NULL),(1404,72,26,2,NULL),(1405,241,46,2,NULL),(1406,256,15,2,NULL),(1407,244,46,2,NULL),(1408,256,18,2,NULL),(1409,245,46,2,NULL),(1410,256,22,2,NULL),(1411,248,46,2,NULL),(1412,256,25,2,NULL),(1413,113,56,2,NULL),(1414,256,30,2,NULL),(1415,119,56,2,NULL),(1416,256,39,2,NULL),(1417,122,56,2,NULL),(1418,256,46,2,NULL),(1419,125,56,2,NULL),(1420,256,56,2,NULL),(1421,141,56,2,NULL),(1422,256,64,2,NULL),(1423,145,56,2,NULL),(1424,256,55,2,NULL),(1425,147,56,2,NULL),(1426,256,63,2,NULL),(1427,152,56,2,NULL),(1428,256,1,2,NULL),(1429,216,56,2,NULL),(1430,256,21,2,NULL),(1431,217,56,2,NULL),(1432,256,42,2,NULL),(1433,219,56,2,NULL),(1434,256,53,2,NULL),(1435,222,56,2,NULL),(1436,256,61,2,NULL),(1437,225,56,2,NULL),(1438,256,78,2,NULL),(1439,226,56,2,NULL),(1440,256,80,2,NULL),(1441,228,56,2,NULL),(1442,256,83,2,NULL),(1443,230,56,2,NULL),(1444,256,84,2,NULL),(1445,233,56,2,NULL),(1446,256,86,2,NULL),(1447,235,56,2,NULL),(1448,201,55,2,NULL),(1449,236,56,2,NULL),(1450,254,55,2,NULL),(1451,239,56,2,NULL),(1452,257,55,2,NULL),(1453,241,56,2,NULL),(1454,116,55,2,NULL),(1455,244,56,2,NULL),(1456,221,55,2,NULL),(1457,245,56,2,NULL),(1458,223,55,2,NULL),(1459,248,56,2,NULL),(1460,75,55,2,NULL),(1461,113,64,2,NULL),(1462,78,55,2,NULL),(1463,119,64,2,NULL),(1464,206,55,2,NULL),(1465,122,64,2,NULL),(1466,209,55,2,NULL),(1467,125,64,2,NULL),(1468,154,55,2,NULL),(1469,141,64,2,NULL),(1470,113,55,2,NULL),(1471,145,64,2,NULL),(1472,119,55,2,NULL),(1473,147,64,2,NULL),(1474,122,55,2,NULL),(1475,152,64,2,NULL),(1476,125,55,2,NULL),(1477,216,64,2,NULL),(1478,141,55,2,NULL),(1479,217,64,2,NULL),(1480,145,55,2,NULL),(1481,219,64,2,NULL),(1482,147,55,2,NULL),(1483,222,64,2,NULL),(1484,152,55,2,NULL),(1485,225,64,2,NULL),(1486,216,55,2,NULL),(1487,226,64,2,NULL),(1488,217,55,2,NULL),(1489,228,64,2,NULL),(1490,219,55,2,NULL),(1491,230,64,2,NULL),(1492,222,55,2,NULL),(1493,233,64,2,NULL),(1494,225,55,2,NULL),(1495,235,64,2,NULL),(1496,226,55,2,NULL),(1497,236,64,2,NULL),(1498,228,55,2,NULL),(1499,239,64,2,NULL),(1500,230,55,2,NULL),(1501,241,64,2,NULL),(1502,233,55,2,NULL),(1503,244,64,2,NULL),(1504,235,55,2,NULL),(1505,245,64,2,NULL),(1506,236,55,2,NULL),(1507,248,64,2,NULL),(1508,239,55,2,NULL),(1509,241,55,2,NULL),(1510,244,55,2,NULL),(1511,245,55,2,NULL),(1512,248,55,2,NULL),(1513,258,55,2,NULL),(1514,113,63,2,NULL),(1515,264,55,2,NULL),(1516,119,63,2,NULL),(1517,57,55,2,NULL),(1518,122,63,2,NULL),(1519,77,55,2,NULL),(1520,125,63,2,NULL),(1521,140,55,2,NULL),(1522,141,63,2,NULL),(1523,201,63,2,NULL),(1524,145,63,2,NULL),(1525,254,63,2,NULL),(1526,147,63,2,NULL),(1527,257,63,2,NULL),(1528,152,63,2,NULL),(1529,116,63,2,NULL),(1530,216,63,2,NULL),(1531,221,63,2,NULL),(1532,217,63,2,NULL),(1533,223,63,2,NULL),(1534,219,63,2,NULL),(1535,75,63,2,NULL),(1536,222,63,2,NULL),(1537,78,63,2,NULL),(1538,225,63,2,NULL),(1539,206,63,2,NULL),(1540,226,63,2,NULL),(1541,209,63,2,NULL),(1542,228,63,2,NULL),(1543,154,63,2,NULL),(1544,230,63,2,NULL),(1545,233,63,2,NULL),(1546,235,63,2,NULL),(1547,236,63,2,NULL),(1548,239,63,2,NULL),(1549,241,63,2,NULL),(1550,244,63,2,NULL),(1551,245,63,2,NULL),(1552,248,63,2,NULL),(1553,258,63,2,NULL),(1554,113,1,2,NULL),(1555,264,63,2,NULL),(1556,119,1,2,NULL),(1557,122,1,2,NULL),(1558,125,1,2,NULL),(1559,141,1,2,NULL),(1560,145,1,2,NULL),(1561,147,1,2,NULL),(1562,152,1,2,NULL),(1563,216,1,2,NULL),(1564,217,1,2,NULL),(1565,219,1,2,NULL),(1566,222,1,2,NULL),(1567,225,1,2,NULL),(1568,226,1,2,NULL),(1569,228,1,2,NULL),(1570,230,1,2,NULL),(1571,233,1,2,NULL),(1572,235,1,2,NULL),(1573,236,1,2,NULL),(1574,239,1,2,NULL),(1575,241,1,2,NULL),(1576,244,1,2,NULL),(1577,245,1,2,NULL),(1578,248,1,2,NULL),(1579,113,21,2,NULL),(1580,119,21,2,NULL),(1581,122,21,2,NULL),(1582,125,21,2,NULL),(1583,141,21,2,NULL),(1584,145,21,2,NULL),(1585,147,21,2,NULL),(1586,152,21,2,NULL),(1587,216,21,2,NULL),(1588,217,21,2,NULL),(1589,219,21,2,NULL),(1590,222,21,2,NULL),(1591,225,21,2,NULL),(1592,226,21,2,NULL),(1593,228,21,2,NULL),(1594,230,21,2,NULL),(1595,233,21,2,NULL),(1596,235,21,2,NULL),(1597,236,21,2,NULL),(1598,239,21,2,NULL),(1599,241,21,2,NULL),(1600,244,21,2,NULL),(1601,245,21,2,NULL),(1602,248,21,2,NULL),(1603,113,42,2,NULL),(1604,119,42,2,NULL),(1605,122,42,2,NULL),(1606,125,42,2,NULL),(1607,141,42,2,NULL),(1608,145,42,2,NULL),(1609,147,42,2,NULL),(1610,152,42,2,NULL),(1611,216,42,2,NULL),(1612,217,42,2,NULL),(1613,219,42,2,NULL),(1614,222,42,2,NULL),(1615,225,42,2,NULL),(1616,226,42,2,NULL),(1617,228,42,2,NULL),(1618,230,42,2,NULL),(1619,233,42,2,NULL),(1620,235,42,2,NULL),(1621,236,42,2,NULL),(1622,239,42,2,NULL),(1623,241,42,2,NULL),(1624,244,42,2,NULL),(1625,245,42,2,NULL),(1626,248,42,2,NULL),(1627,113,53,2,NULL),(1628,119,53,2,NULL),(1629,122,53,2,NULL),(1630,125,53,2,NULL),(1631,141,53,2,NULL),(1632,145,53,2,NULL),(1633,147,53,2,NULL),(1634,152,53,2,NULL),(1635,216,53,2,NULL),(1636,217,53,2,NULL),(1637,219,53,2,NULL),(1638,201,1,2,NULL),(1639,222,53,2,NULL),(1640,254,1,2,NULL),(1641,225,53,2,NULL),(1642,257,1,2,NULL),(1643,226,53,2,NULL),(1644,116,1,2,NULL),(1645,228,53,2,NULL),(1646,221,1,2,NULL),(1647,230,53,2,NULL),(1648,223,1,2,NULL),(1649,233,53,2,NULL),(1650,75,1,2,NULL),(1651,235,53,2,NULL),(1652,78,1,2,NULL),(1653,236,53,2,NULL),(1654,206,1,2,NULL),(1655,239,53,2,NULL),(1656,209,1,2,NULL),(1657,241,53,2,NULL),(1658,154,1,2,NULL),(1659,244,53,2,NULL),(1660,258,1,2,NULL),(1661,264,1,2,NULL),(1662,245,53,2,NULL),(1663,51,10,2,NULL),(1664,248,53,2,NULL),(1665,54,7,2,NULL),(1666,113,61,2,NULL),(1667,99,7,2,NULL),(1668,119,61,2,NULL),(1669,114,7,2,NULL),(1670,122,61,2,NULL),(1671,189,10,2,NULL),(1672,125,61,2,NULL),(1673,84,4,2,NULL),(1674,141,61,2,NULL),(1675,142,27,2,NULL),(1676,145,61,2,NULL),(1677,193,27,2,NULL),(1678,147,61,2,NULL),(1679,201,21,2,NULL),(1680,152,61,2,NULL),(1681,254,21,2,NULL),(1682,216,61,2,NULL),(1683,257,21,2,NULL),(1684,217,61,2,NULL),(1685,116,21,2,NULL),(1686,219,61,2,NULL),(1687,221,21,2,NULL),(1688,222,61,2,NULL),(1689,223,21,2,NULL),(1690,225,61,2,NULL),(1691,75,21,2,NULL),(1692,226,61,2,NULL),(1693,78,21,2,NULL),(1694,228,61,2,NULL),(1695,206,21,2,NULL),(1696,230,61,2,NULL),(1697,209,21,2,NULL),(1698,233,61,2,NULL),(1699,154,21,2,NULL),(1700,235,61,2,NULL),(1701,258,21,2,NULL),(1702,236,61,2,NULL),(1703,264,21,2,NULL),(1704,239,61,2,NULL),(1705,46,1,2,NULL),(1706,241,61,2,NULL),(1707,121,1,2,NULL),(1708,244,61,2,NULL),(1709,183,1,2,NULL),(1710,245,61,2,NULL),(1711,202,1,2,NULL),(1712,248,61,2,NULL),(1713,75,15,2,NULL),(1714,113,78,2,NULL),(1715,78,15,2,NULL),(1716,119,78,2,NULL),(1717,206,15,2,NULL),(1718,122,78,2,NULL),(1719,209,15,2,NULL),(1720,125,78,2,NULL),(1721,75,18,2,NULL),(1722,141,78,2,NULL),(1723,78,18,2,NULL),(1724,145,78,2,NULL),(1725,206,18,2,NULL),(1726,147,78,2,NULL),(1727,209,18,2,NULL),(1728,152,78,2,NULL),(1729,75,22,2,NULL),(1730,216,78,2,NULL),(1731,78,22,2,NULL),(1732,217,78,2,NULL),(1733,206,22,2,NULL),(1734,219,78,2,NULL),(1735,209,22,2,NULL),(1736,222,78,2,NULL),(1737,75,25,2,NULL),(1738,225,78,2,NULL),(1739,78,25,2,NULL),(1740,226,78,2,NULL),(1741,206,25,2,NULL),(1742,228,78,2,NULL),(1743,209,25,2,NULL),(1744,230,78,2,NULL),(1745,75,30,2,NULL),(1746,233,78,2,NULL),(1747,78,30,2,NULL),(1748,235,78,2,NULL),(1749,206,30,2,NULL),(1750,236,78,2,NULL),(1751,209,30,2,NULL),(1752,239,78,2,NULL),(1753,75,39,2,NULL),(1754,201,53,2,NULL),(1755,241,78,2,NULL),(1756,78,39,2,NULL),(1757,244,78,2,NULL),(1758,254,53,2,NULL),(1759,206,39,2,NULL),(1760,245,78,2,NULL),(1761,257,53,2,NULL),(1762,209,39,2,NULL),(1763,248,78,2,NULL),(1764,116,53,2,NULL),(1765,75,46,2,NULL),(1766,113,80,2,NULL),(1767,221,53,2,NULL),(1768,78,46,2,NULL),(1769,119,80,2,NULL),(1770,223,53,2,NULL),(1771,206,46,2,NULL),(1772,122,80,2,NULL),(1773,75,53,2,NULL),(1774,209,46,2,NULL),(1775,125,80,2,NULL),(1776,78,53,2,NULL),(1777,75,56,2,NULL),(1778,141,80,2,NULL),(1779,206,53,2,NULL),(1780,78,56,2,NULL),(1781,145,80,2,NULL),(1782,209,53,2,NULL),(1783,206,56,2,NULL),(1784,147,80,2,NULL),(1785,154,53,2,NULL),(1786,209,56,2,NULL),(1787,152,80,2,NULL),(1788,258,53,2,NULL),(1789,75,64,2,NULL),(1790,216,80,2,NULL),(1791,264,53,2,NULL),(1792,78,64,2,NULL),(1793,217,80,2,NULL),(1794,3,53,2,NULL),(1795,206,64,2,NULL),(1796,219,80,2,NULL),(1797,201,61,2,NULL),(1798,209,64,2,NULL),(1799,222,80,2,NULL),(1800,254,61,2,NULL),(1801,75,42,2,NULL),(1802,225,80,2,NULL),(1803,257,61,2,NULL),(1804,78,42,2,NULL),(1805,226,80,2,NULL),(1806,116,61,2,NULL),(1807,206,42,2,NULL),(1808,228,80,2,NULL),(1809,221,61,2,NULL),(1810,209,42,2,NULL),(1811,230,80,2,NULL),(1812,223,61,2,NULL),(1813,75,61,2,NULL),(1814,233,80,2,NULL),(1815,78,61,2,NULL),(1816,206,61,2,NULL),(1817,235,80,2,NULL),(1818,209,61,2,NULL),(1819,75,78,2,NULL),(1820,236,80,2,NULL),(1821,154,61,2,NULL),(1822,78,78,2,NULL),(1823,239,80,2,NULL),(1824,258,61,2,NULL),(1825,206,78,2,NULL),(1826,241,80,2,NULL),(1827,264,61,2,NULL),(1828,209,78,2,NULL),(1829,244,80,2,NULL),(1830,75,80,2,NULL),(1831,245,80,2,NULL),(1832,78,80,2,NULL),(1833,248,80,2,NULL),(1834,206,80,2,NULL),(1835,113,83,2,NULL),(1836,209,80,2,NULL),(1837,119,83,2,NULL),(1838,75,83,2,NULL),(1839,122,83,2,NULL),(1840,78,83,2,NULL),(1841,125,83,2,NULL),(1842,206,83,2,NULL),(1843,141,83,2,NULL),(1844,209,83,2,NULL),(1845,145,83,2,NULL),(1846,75,84,2,NULL),(1847,147,83,2,NULL),(1848,78,84,2,NULL),(1849,152,83,2,NULL),(1850,206,84,2,NULL),(1851,216,83,2,NULL),(1852,209,84,2,NULL),(1853,217,83,2,NULL),(1854,75,86,2,NULL),(1855,219,83,2,NULL),(1856,78,86,2,NULL),(1857,222,83,2,NULL),(1858,206,86,2,NULL),(1859,225,83,2,NULL),(1860,209,86,2,NULL),(1861,226,83,2,NULL),(1862,154,15,2,NULL),(1863,228,83,2,NULL),(1864,154,18,2,NULL),(1865,230,83,2,NULL),(1866,154,22,2,NULL),(1867,233,83,2,NULL),(1868,154,25,2,NULL),(1869,235,83,2,NULL),(1870,154,30,2,NULL),(1871,236,83,2,NULL),(1872,154,39,2,NULL),(1873,239,83,2,NULL),(1874,154,46,2,NULL),(1875,241,83,2,NULL),(1876,154,56,2,NULL),(1877,244,83,2,NULL),(1878,154,64,2,NULL),(1879,245,83,2,NULL),(1880,154,42,2,NULL),(1881,248,83,2,NULL),(1882,154,78,2,NULL),(1883,113,84,2,NULL),(1884,154,80,2,NULL),(1885,119,84,2,NULL),(1886,154,83,2,NULL),(1887,122,84,2,NULL),(1888,154,84,2,NULL),(1889,125,84,2,NULL),(1890,154,86,2,NULL),(1891,141,84,2,NULL),(1892,127,29,2,NULL),(1893,145,84,2,NULL),(1894,201,42,2,NULL),(1895,147,84,2,NULL),(1896,254,42,2,NULL),(1897,152,84,2,NULL),(1898,257,42,2,NULL),(1899,216,84,2,NULL),(1900,116,42,2,NULL),(1901,217,84,2,NULL),(1902,221,42,2,NULL),(1903,219,84,2,NULL),(1904,223,42,2,NULL),(1905,222,84,2,NULL),(1906,258,42,2,NULL),(1907,225,84,2,NULL),(1908,264,42,2,NULL),(1909,226,84,2,NULL),(1910,228,84,2,NULL),(1911,230,84,2,NULL),(1912,233,84,2,NULL),(1913,235,84,2,NULL),(1914,236,84,2,NULL),(1915,239,84,2,NULL),(1916,241,84,2,NULL),(1917,244,84,2,NULL),(1918,245,84,2,NULL),(1919,248,84,2,NULL),(1920,113,86,2,NULL),(1921,119,86,2,NULL),(1922,122,86,2,NULL),(1923,125,86,2,NULL),(1924,141,86,2,NULL),(1925,145,86,2,NULL),(1926,147,86,2,NULL),(1927,152,86,2,NULL),(1928,216,86,2,NULL),(1929,217,86,2,NULL),(1930,219,86,2,NULL),(1931,222,86,2,NULL),(1932,225,86,2,NULL),(1933,226,86,2,NULL),(1934,228,86,2,NULL),(1935,230,86,2,NULL),(1936,233,86,2,NULL),(1937,235,86,2,NULL),(1938,236,86,2,NULL),(1939,239,86,2,NULL),(1940,241,86,2,NULL),(1941,244,86,2,NULL),(1942,245,86,2,NULL),(1943,248,86,2,NULL),(1944,258,15,2,NULL),(1945,264,15,2,NULL),(1946,258,18,2,NULL),(1947,264,18,2,NULL),(1948,258,22,2,NULL),(1949,264,22,2,NULL),(1950,258,25,2,NULL),(1951,264,25,2,NULL),(1952,258,30,2,NULL),(1953,264,30,2,NULL),(1954,258,39,2,NULL),(1955,264,39,2,NULL),(1956,258,46,2,NULL),(1957,264,46,2,NULL),(1958,258,56,2,NULL),(1959,264,56,2,NULL),(1960,258,64,2,NULL),(1961,264,64,2,NULL),(1962,258,78,2,NULL),(1963,264,78,2,NULL),(1964,258,80,2,NULL),(1965,264,80,2,NULL),(1966,258,83,2,NULL),(1967,264,83,2,NULL),(1968,258,84,2,NULL),(1969,264,84,2,NULL),(1970,258,86,2,NULL),(1971,264,86,2,NULL),(1972,255,72,2,NULL),(1973,177,72,2,NULL),(1974,201,78,2,NULL),(1975,254,78,2,NULL),(1976,257,78,2,NULL),(1977,116,78,2,NULL),(1978,221,78,2,NULL),(1979,223,78,2,NULL),(1980,201,80,2,NULL),(1981,254,80,2,NULL),(1982,257,80,2,NULL),(1983,116,80,2,NULL),(1984,221,80,2,NULL),(1985,223,80,2,NULL),(1986,201,83,2,NULL),(1987,254,83,2,NULL),(1988,257,83,2,NULL),(1989,116,83,2,NULL),(1990,221,83,2,NULL),(1991,223,83,2,NULL),(1992,201,84,2,NULL),(1993,254,84,2,NULL),(1994,257,84,2,NULL),(1995,116,84,2,NULL),(1996,221,84,2,NULL),(1997,223,84,2,NULL),(1998,201,86,2,NULL),(1999,254,86,2,NULL),(2000,257,86,2,NULL),(2001,116,86,2,NULL),(2002,221,86,2,NULL),(2003,223,86,2,NULL),(2004,52,56,2,NULL),(2005,55,56,2,NULL),(2006,150,56,2,NULL),(2007,173,56,2,NULL),(2008,260,56,2,NULL),(2009,263,56,2,NULL),(2010,40,25,2,NULL),(2011,109,3,2,NULL),(2012,201,15,2,NULL),(2013,201,18,2,NULL),(2014,201,22,2,NULL),(2015,201,25,2,NULL),(2016,201,30,2,NULL),(2017,201,39,2,NULL),(2018,201,46,2,NULL),(2019,201,56,2,NULL),(2020,201,64,2,NULL),(2021,212,56,2,NULL),(2022,215,25,2,NULL),(2023,254,15,2,NULL),(2024,257,15,2,NULL),(2025,116,15,2,NULL),(2026,221,15,2,NULL),(2027,223,15,2,NULL),(2028,45,56,2,NULL),(2029,106,25,2,NULL),(2030,254,18,2,NULL),(2031,257,18,2,NULL),(2032,116,18,2,NULL),(2033,221,18,2,NULL),(2034,223,18,2,NULL),(2035,89,56,2,NULL),(2036,254,22,2,NULL),(2037,257,22,2,NULL),(2038,116,22,2,NULL),(2039,221,22,2,NULL),(2040,223,22,2,NULL),(2041,59,3,2,NULL),(2042,93,3,2,NULL),(2043,199,56,2,NULL),(2044,253,3,2,NULL),(2045,254,25,2,NULL),(2046,257,25,2,NULL),(2047,116,25,2,NULL),(2048,221,25,2,NULL),(2049,223,25,2,NULL),(2050,80,25,2,NULL),(2051,116,30,2,NULL),(2052,221,30,2,NULL),(2053,223,30,2,NULL),(2054,254,39,2,NULL),(2055,257,39,2,NULL),(2056,254,46,2,NULL),(2057,257,46,2,NULL),(2058,254,56,2,NULL),(2059,257,56,2,NULL),(2060,254,64,2,NULL),(2061,257,64,2,NULL),(2062,181,35,2,NULL),(2063,187,25,2,NULL),(2064,116,39,2,NULL),(2065,221,39,2,NULL),(2066,223,39,2,NULL),(2067,116,46,2,NULL),(2068,221,46,2,NULL),(2069,223,46,2,NULL),(2070,116,56,2,NULL),(2071,221,56,2,NULL),(2072,223,56,2,NULL),(2073,116,64,2,NULL),(2074,221,64,2,NULL),(2075,223,64,2,NULL),(2076,96,56,2,NULL),(2077,247,56,2,NULL),(2078,250,56,2,NULL),(2079,27,56,2,NULL),(2080,85,56,2,NULL),(2081,270,56,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:30
