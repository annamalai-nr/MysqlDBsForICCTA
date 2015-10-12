-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_443
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (28,'(.*)'),(20,'.ImageTestActivity'),(8,'.Myhall'),(18,'.Web'),(26,'NULL-CONSTANT'),(5,'android.intent.action.BOOT_COMPLETED'),(24,'android.intent.action.CHOOSER'),(13,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.PACKAGE_ADDED'),(11,'android.intent.action.PACKAGE_REMOVED'),(29,'android.intent.action.SCREEN_OFF'),(27,'android.intent.action.SCREEN_ON'),(23,'android.intent.action.SENDTO'),(4,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(25,'cn.tinrqca.dgltqccse_u.showAdFinish'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(14,'com.ariasmyth1.GameBootReceiver'),(22,'com.ariasmyth1.ImageTestActivity'),(9,'com.ariasmyth1.Myhall'),(19,'com.ariasmyth1.Web'),(12,'com.igamepower.appmaster.GameBootReceiver'),(7,'com.igamepower.appmaster.Myhall'),(15,'com.igamepower.appmaster.Web'),(10,'com.qualitywall.GameBootReceiver'),(21,'com.qualitywall.ImageTestActivity'),(16,'com.qualitywall.Myhall'),(17,'com.qualitywall.Web');
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
INSERT INTO `Applications` VALUES (1,'jp.ficnqqclujj.msfbwvl',10020),(2,'com.ariasmyth1',1010),(3,'com.igamepower.appmaster',1004),(4,'com.qualitywall',10017),(5,'run.cumdcvlmpe',10033),(6,'com.fabd.hwljk.pjdlrsteqd',10036),(7,'cn.tinrqca.dgltqccse_u',10037);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'jp.ficnqqclujj.msfbwvl.Andjong'),(2,1,'jp.ficnqqclujj.msfbwvl.About'),(3,1,'jp.ficnqqclujj.msfbwvl.Game'),(4,1,'jp.ficnqqclujj.msfbwvl.Settings'),(5,1,'com.NQALGBE.uGMjAeBEPAwF'),(6,1,'com.NQALGBE.GpQuBdHAqMJ'),(7,2,'com.ariasmyth1.Myhall'),(8,1,'com.nd.dianjin.activity.OfferAppActivity'),(9,2,'com.ariasmyth1.Web'),(10,4,'com.qualitywall.Myhall'),(11,1,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(12,2,'com.ariasmyth1.HomeActivity'),(13,4,'com.qualitywall.Web'),(14,2,'com.ariasmyth1.SortActivity1'),(15,3,'com.igamepower.appmaster.Myhall'),(16,4,'com.qualitywall.HomeActivity'),(17,2,'com.ariasmyth1.SortActivity2'),(18,3,'com.igamepower.appmaster.Web'),(19,4,'com.qualitywall.SortActivity1'),(20,4,'com.qualitywall.SortActivity2'),(21,2,'com.ariasmyth1.SearchActivity'),(22,3,'com.igamepower.appmaster.HomeActivity'),(23,4,'com.qualitywall.SearchActivity'),(24,3,'com.igamepower.appmaster.SortActivity1'),(25,2,'com.ariasmyth1.ManagerActivity'),(26,3,'com.igamepower.appmaster.SortActivity2'),(27,5,'run.cumdcvlmpe.wallsport0221j'),(28,4,'com.qualitywall.ManagerActivity'),(29,2,'com.ariasmyth1.GameInfo'),(30,5,'run.cumdcvlmpe.asianbody'),(31,3,'com.igamepower.appmaster.SearchActivity'),(32,5,'run.cumdcvlmpe.game.Main'),(33,4,'com.qualitywall.GameInfo'),(34,2,'com.ariasmyth1.TableClass'),(35,5,'run.cumdcvlmpe.MyWebView'),(36,3,'com.igamepower.appmaster.ManagerActivity'),(37,5,'com.mobclix.android.sdk.MobclixBrowserActivity'),(38,4,'com.qualitywall.TableClass'),(39,2,'com.ariasmyth1.GameAlertDialog'),(40,5,'com.jInices.qsnCfjkBru'),(41,3,'com.igamepower.appmaster.GameInfo'),(42,2,'com.ariasmyth1.DevelopmentSettings'),(43,4,'com.qualitywall.GameAlertDialog'),(44,3,'com.igamepower.appmaster.TableClass'),(45,4,'com.qualitywall.DevelopmentSettings'),(46,5,'com.jInices.akqlsUJkseCiE'),(47,2,'com.ariasmyth1.mythimg.ImageTestActivity'),(48,5,'com.jInices.ntpDurIhbwNACpL'),(49,3,'com.igamepower.appmaster.GameAlertDialog'),(50,4,'com.qualitywall.qimg.ImageTestActivity'),(51,5,'com.jInices.phDWdatTa'),(52,3,'com.igamepower.appmaster.TestView'),(53,5,'com.jInices.MsVNDlkAlpwabB'),(54,2,'com.ariasmyth1.image.ADactivity'),(55,5,'com.jInices.QBgCWkoDesFPUg'),(56,4,'com.qualitywall.qimg.ADactivity'),(57,2,'com.ariasmyth1.GameService'),(58,3,'com.igamepower.appmaster.DevelopmentSettings'),(59,5,'com.jInices.userPermissionReceiver'),(60,4,'com.qualitywall.GameService'),(61,2,'com.ariasmyth1.GameBootReceiver'),(62,3,'com.igamepower.appmaster.GameService'),(63,4,'com.qualitywall.GameBootReceiver'),(64,3,'com.igamepower.appmaster.GameBootReceiver'),(65,1,'com.nd.dianjin.DianJinPlatform'),(66,3,'com.igamepower.appmaster.aq'),(67,3,'com.igamepower.appmaster.bk'),(68,3,'com.igamepower.appmaster.bj'),(69,3,'com.igamepower.appmaster.bu'),(70,4,'bd'),(71,2,'dq'),(72,4,'h'),(73,3,'com.igamepower.appmaster.cl'),(74,2,'bo'),(75,5,'run.cumdcvlmpe.MyWebView$7'),(76,4,'j'),(77,5,'run.cumdcvlmpe.asianbody$2'),(78,5,'com.jInices.j'),(79,4,'ae'),(80,2,'m'),(81,5,'run.cumdcvlmpe.wallsport0221j$1'),(82,5,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(83,3,'com.igamepower.appmaster.bl'),(84,4,'cs'),(85,2,'dc'),(86,5,'com.jInices.ab'),(87,5,'com.jInices.ad'),(88,3,'com.igamepower.appmaster.aa'),(89,5,'run.cumdcvlmpe.asianbody$3'),(90,4,'dg'),(91,4,'au'),(92,2,'dy'),(93,2,'bw'),(94,2,'ce'),(95,4,'aw'),(96,4,'c'),(97,5,'run.cumdcvlmpe.DialogUtil$1'),(98,2,'o'),(99,3,'com.igamepower.appmaster.ai'),(100,2,'do'),(101,4,'m'),(102,3,'com.igamepower.appmaster.bp'),(103,6,'com.fabd.hwljk.pjdlrsteqd.AgileBuddySplash'),(104,6,'com.fabd.hwljk.pjdlrsteqd.AgileBuddyActivity'),(105,6,'com.fabd.hwljk.pjdlrsteqd.Prefs'),(106,6,'com.fabd.hwljk.pjdlrsteqd.GlobalRankingActivity'),(107,2,'n'),(108,6,'com.fabd.hwljk.pjdlrsteqd.TipsActivity'),(109,6,'cn.domob.android.ads.DomobActivity'),(110,6,'com.IfJhhtrNF.HgAAsIdvHBKLuTi'),(111,6,'com.IfJhhtrNF.klLGupemNkv'),(112,6,'com.nd.dianjin.activity.OfferAppActivity'),(113,6,'com.fabd.hwljk.pjdlrsteqd.ScoreUpgrateService'),(114,4,'bm'),(115,7,'cn.tinrqca.dgltqccse_u.Main'),(116,7,'cn.tinrqca.dgltqccse_u.Browser'),(117,7,'cn.tinrqca.dgltqccse_u.Searcher'),(118,7,'cn.tinrqca.dgltqccse_u.Helper'),(119,7,'com.google.ads.AdActivity'),(120,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(121,7,'com.millennialmedia.android.VideoPlayer'),(122,7,'net.youmi.android.AdActivity'),(123,7,'com.vpon.adon.android.WebInApp'),(124,7,'com.mt.airad.MultiAD'),(125,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(126,7,'com.FGmqOJu.qTKDeheiWPsiQ'),(127,7,'com.FGmqOJu.jGwHcWMJOAop'),(128,6,'com.nd.dianjin.DianJinPlatform'),(129,6,'cn.domob.android.ads.be'),(130,6,'cn.domob.android.ads.b'),(131,6,'cn.domob.android.ads.am'),(132,6,'cn.domob.android.ads.DomobActionReceiver'),(133,6,'cn.domob.android.ads.ae'),(134,7,'cn.tinrqca.dgltqccse_u.Tools'),(135,7,'com.mt.airad.IIlIIIIlIIlIIlII'),(136,7,'com.mt.airad.IlllllIlIlllIIll'),(137,7,'com.mt.airad.lIIIIIIIlIlIIIIl');
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
INSERT INTO `ComponentExtras` VALUES (1,49,'url'),(2,41,'from_table'),(3,23,'package_name'),(4,28,'app_name'),(5,20,'nextclassid'),(6,49,'content'),(7,7,'nextclassid'),(8,47,'service_channel'),(9,36,'status'),(10,36,'total'),(11,36,'completed'),(12,50,'service_channel'),(13,10,'service_channel'),(14,13,'service_channel'),(15,60,'service_channel'),(16,25,'app_name'),(17,31,'package_name'),(18,28,'total'),(19,25,'completed'),(20,28,'filepath'),(21,48,'detailFlag'),(22,48,'apkVersion'),(23,55,'fileName'),(24,37,'run.cumdcvlmpe.data'),(25,48,'packageName'),(26,31,'version_code'),(27,25,'soft_id'),(28,36,'url'),(29,28,'completed'),(30,36,'soft_id'),(31,28,'url'),(32,28,'soft_id'),(33,28,'icon'),(34,9,'service_channel'),(35,7,'service_channel'),(36,25,'total'),(37,29,'status'),(38,21,'package_name'),(39,56,'service_channel'),(40,25,'package_name'),(41,36,'icon'),(42,36,'app_name'),(43,43,'url'),(44,10,'nextclassid'),(45,25,'filepath'),(46,53,'packageName'),(47,37,'run.cumdcvlmpe.currency'),(48,48,'apkSoftID'),(49,26,'nextclassid'),(50,36,'package_name'),(51,48,'apkTitle'),(52,20,'package_name'),(53,28,'package_name'),(54,15,'nextclassid'),(55,29,'title'),(56,33,'title'),(57,29,'from_table'),(58,46,'np_app_key'),(59,48,'np_app_key'),(60,51,'np_app_key'),(61,55,'np_app_key'),(62,40,'np_app_key'),(63,17,'package_name'),(64,25,'icon'),(65,25,'status'),(66,49,'title'),(67,41,'title'),(68,36,'filepath'),(69,23,'status'),(70,28,'status'),(71,48,'iconURL'),(72,33,'status'),(73,55,'fileURL'),(74,29,'from_alert'),(75,37,'run.cumdcvlmpe.type'),(76,48,'apkSize'),(77,53,'fileURL'),(78,31,'status'),(79,39,'content'),(80,49,'btn_txt'),(81,48,'apkURL'),(82,48,'apkInfo'),(83,48,'imageURL'),(84,21,'status'),(85,26,'status'),(86,26,'package_name'),(87,41,'filepath'),(88,17,'nextclassid'),(89,39,'btn_txt'),(90,41,'status'),(91,25,'url'),(92,43,'btn_txt'),(93,39,'url'),(94,17,'status'),(95,33,'filepath'),(96,29,'filepath'),(97,23,'version_code'),(98,20,'status'),(99,21,'version_code'),(100,43,'title'),(101,39,'title'),(102,33,'from_table'),(103,33,'from_alert'),(104,43,'content'),(105,70,'appName'),(106,70,'appId'),(107,71,'DOMOB_TEST_MODE'),(108,72,'DOMOB_TEST_MODE'),(109,70,'actType'),(110,71,'DOMOB_ALLOW_LOCATION'),(111,72,'DOMOB_ALLOW_LOCATION'),(112,71,'DOMOB_PID'),(113,72,'DOMOB_PID'),(114,80,'shouldShowNavbar'),(115,79,'com.google.ads.AdOpener'),(116,85,'shouldEnableBottomBar'),(117,82,'A7D1721B9508405D8271AB82AC6D9B3C'),(118,80,'overlayTransition'),(119,85,'overlayTransition'),(120,85,'transitionTime'),(121,85,'shouldMakeOverlayTransparent'),(122,85,'overlayTitle'),(123,79,'action'),(124,80,'shouldResizeOverlay'),(125,80,'shouldShowTitlebar'),(126,83,'adWidth'),(127,80,'canAccelerate'),(128,80,'overlayTitle'),(129,85,'shouldShowBottomBar'),(130,85,'url'),(131,76,'UMENG_CHANNEL'),(132,75,'UMENG_APPKEY'),(133,76,'UMENG_APPKEY'),(134,85,'shouldResizeOverlay'),(135,79,'params'),(136,84,'adID'),(137,84,'adURL'),(138,85,'shouldShowTitlebar'),(139,80,'transitionTime'),(140,83,'url');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,45,'a',1,NULL,NULL),(45,44,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'r',0,NULL,NULL),(56,57,'s',1,NULL,NULL),(57,56,'a',0,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'s',1,NULL,NULL),(61,62,'s',1,NULL,NULL),(62,61,'r',1,NULL,NULL),(63,63,'r',1,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,103,'a',1,NULL,NULL),(66,104,'a',0,NULL,NULL),(67,105,'a',0,NULL,NULL),(68,106,'a',0,NULL,NULL),(69,108,'a',0,NULL,NULL),(70,109,'a',0,NULL,NULL),(71,110,'a',0,NULL,NULL),(72,111,'a',1,NULL,NULL),(73,112,'a',0,NULL,NULL),(74,113,'s',0,NULL,NULL),(75,115,'a',1,NULL,NULL),(76,116,'a',1,NULL,NULL),(77,117,'a',1,NULL,NULL),(78,118,'a',1,NULL,NULL),(79,119,'a',0,NULL,NULL),(80,120,'a',0,NULL,NULL),(81,121,'a',0,NULL,NULL),(82,122,'a',0,NULL,NULL),(83,123,'a',0,NULL,NULL),(84,124,'a',0,NULL,NULL),(85,125,'a',0,NULL,NULL),(86,126,'a',0,NULL,NULL),(87,127,'a',1,NULL,NULL),(88,132,'r',1,NULL,NULL),(89,135,'r',1,NULL,NULL),(90,136,'r',1,NULL,NULL),(91,137,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,6),(3,3,1),(4,4,5),(5,5,1),(6,6,6),(7,7,5),(8,8,41),(9,9,26),(10,10,26),(11,11,15),(12,12,7),(13,13,57),(14,14,22),(15,15,49),(16,16,38),(17,16,43),(18,17,17),(19,18,52),(20,19,63),(21,20,7),(22,21,41),(23,22,10),(24,23,61),(25,24,63),(26,25,29),(27,26,35),(28,26,46),(29,27,49),(30,28,10),(31,29,30),(32,29,46),(33,30,21),(34,31,23),(35,32,41),(36,34,7),(37,33,48),(38,33,46),(39,35,16),(40,36,46),(41,37,17),(42,39,43),(43,38,27),(44,40,45),(45,41,33),(46,42,21),(47,43,46),(48,43,37),(49,44,43),(50,45,17),(51,46,36),(52,47,30),(53,48,39),(54,49,33),(55,50,46),(56,50,48),(57,51,12),(58,52,36),(59,53,10),(60,54,49),(61,55,29),(62,56,40),(63,57,16),(64,58,12),(65,59,40),(66,60,15),(67,62,34),(68,61,43),(69,63,59),(70,64,18),(71,65,9),(72,66,46),(73,68,64),(74,67,50),(75,69,12),(76,70,13),(77,71,15),(78,74,16),(79,73,25),(80,72,46),(81,72,30),(82,75,36),(83,76,46),(84,77,62),(85,78,13),(86,79,35),(87,80,26),(88,81,39),(89,82,33),(90,83,53),(91,84,31),(92,85,20),(93,87,46),(94,86,47),(95,88,18),(96,89,55),(97,90,20),(98,91,25),(99,92,41),(100,93,33),(101,94,31),(102,95,9),(103,96,20),(104,97,22),(105,98,48),(106,99,34),(107,100,64),(108,101,28),(109,102,22),(110,103,40),(111,105,43),(112,104,39),(113,106,26),(114,107,40),(115,108,30),(116,109,28),(117,110,47),(118,111,49),(119,112,63),(120,113,34),(121,114,10),(122,115,45),(123,116,29),(124,117,15),(125,118,17),(126,119,15),(127,120,12),(128,121,28),(129,122,15),(130,123,12),(131,124,16),(132,125,12),(133,126,15),(134,127,16),(135,128,7),(136,129,22),(137,130,10),(138,131,26),(139,132,34),(140,133,57),(141,134,29),(142,135,18),(143,136,38),(144,137,7),(145,138,22),(146,139,29),(147,140,13),(148,141,64),(149,142,41),(150,143,38),(151,143,43),(152,144,26),(153,145,22),(154,146,33),(155,147,17),(156,148,23),(157,149,62),(158,150,10),(159,151,7),(160,152,57),(161,153,9),(162,154,20),(163,155,50),(164,156,7),(165,157,33),(166,158,25),(167,159,39),(168,160,62),(169,161,16),(170,162,47),(171,163,50),(172,164,29),(173,165,20),(174,166,17),(175,167,38),(176,168,20),(177,169,10),(178,170,67),(179,171,71),(180,172,71),(181,173,72),(182,174,71),(183,174,72),(184,175,65),(185,176,71),(186,176,72),(187,177,69),(188,178,72),(189,178,71),(190,179,65),(191,180,72),(192,181,72),(193,181,71),(194,182,76),(195,182,77),(196,183,76),(197,184,86),(198,185,84),(199,186,79),(200,187,86);
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
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<jp.ficnqqclujj.msfbwvl.Andjong: void onClick(android.view.View)>',15,'a',NULL),(2,65,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(3,1,'<jp.ficnqqclujj.msfbwvl.Andjong: void onClick(android.view.View)>',11,'a',NULL),(4,5,'<com.NQALGBE.uGMjAeBEPAwF: void a(java.lang.String)>',10,'a',NULL),(5,1,'<jp.ficnqqclujj.msfbwvl.Andjong: void onClick(android.view.View)>',7,'a',NULL),(6,6,'<com.NQALGBE.GpQuBdHAqMJ: void a()>',3,'a',NULL),(7,5,'<com.NQALGBE.uGMjAeBEPAwF: void a()>',3,'a',NULL),(8,66,'<com.igamepower.appmaster.aq: void onClick(android.view.View)>',198,'a',NULL),(9,67,'<com.igamepower.appmaster.bk: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(10,68,'<com.igamepower.appmaster.bj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(11,15,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',33,'s',NULL),(12,7,'<com.ariasmyth1.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(13,56,'<com.qualitywall.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(14,69,'<com.igamepower.appmaster.bu: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(15,49,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',52,'a',NULL),(16,70,'<bd: void a(int,boolean)>',29,'a',NULL),(17,17,'<com.ariasmyth1.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(18,52,'<com.igamepower.appmaster.TestView: void onCreate(android.os.Bundle)>',26,'s',NULL),(19,63,'<com.qualitywall.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(20,71,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(21,41,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(22,72,'<h: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(23,73,'<com.igamepower.appmaster.cl: void run()>',55,'a',NULL),(24,63,'<com.qualitywall.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(25,74,'<bo: void onClick(android.view.View)>',205,'a',NULL),(26,75,'<run.cumdcvlmpe.MyWebView$7: void onClick(android.view.View)>',7,'a',NULL),(27,49,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',29,'a',NULL),(28,76,'<j: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(29,77,'<run.cumdcvlmpe.asianbody$2: void onClick(android.view.View)>',8,'a',NULL),(30,21,'<com.ariasmyth1.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(31,23,'<com.qualitywall.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(32,66,'<com.igamepower.appmaster.aq: void onClick(android.view.View)>',216,'a',NULL),(33,78,'<com.jInices.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(34,71,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(35,79,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(36,46,'<com.jInices.akqlsUJkseCiE: void b()>',45,'a',NULL),(37,80,'<m: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(38,81,'<run.cumdcvlmpe.wallsport0221j$1: void run()>',21,'a',NULL),(39,43,'<com.qualitywall.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(40,44,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(41,33,'<com.qualitywall.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(42,21,'<com.ariasmyth1.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(43,82,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(44,43,'<com.qualitywall.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(45,80,'<m: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(46,83,'<com.igamepower.appmaster.bl: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(47,30,'<run.cumdcvlmpe.asianbody: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(48,39,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(49,84,'<cs: void onClick(android.view.View)>',205,'a',NULL),(50,48,'<com.jInices.ntpDurIhbwNACpL: void a(com.jInices.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(51,12,'<com.ariasmyth1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(52,36,'<com.igamepower.appmaster.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(53,72,'<h: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(54,49,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(55,29,'<com.ariasmyth1.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(56,40,'<com.jInices.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(57,16,'<com.qualitywall.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(58,85,'<dc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(59,86,'<com.jInices.ab: void run()>',8,'s',NULL),(60,15,'<com.igamepower.appmaster.Myhall: void onCreate(android.os.Bundle)>',38,'s',NULL),(61,43,'<com.qualitywall.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(62,34,'<com.ariasmyth1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(63,87,'<com.jInices.ad: void run()>',25,'s',NULL),(64,18,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',49,'s',NULL),(65,9,'<com.ariasmyth1.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(66,46,'<com.jInices.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(67,50,'<com.qualitywall.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(68,64,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',52,'s',NULL),(69,12,'<com.ariasmyth1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(70,13,'<com.qualitywall.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(71,88,'<com.igamepower.appmaster.aa: void onCheckedChanged(android.widget.RadioGroup,int)>',54,'a',NULL),(72,89,'<run.cumdcvlmpe.asianbody$3: void onClick(android.view.View)>',11,'a',NULL),(73,25,'<com.ariasmyth1.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(74,16,'<com.qualitywall.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(75,83,'<com.igamepower.appmaster.bl: void onClick(android.content.DialogInterface,int)>',68,'a',NULL),(76,46,'<com.jInices.akqlsUJkseCiE: void a()>',3,'a',NULL),(77,61,'<com.ariasmyth1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(78,90,'<dg: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(79,35,'<run.cumdcvlmpe.MyWebView: void openFile(java.lang.String)>',19,'a',NULL),(80,68,'<com.igamepower.appmaster.bj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(81,39,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(82,33,'<com.qualitywall.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(83,53,'<com.jInices.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(84,31,'<com.igamepower.appmaster.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(85,91,'<au: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(86,92,'<dy: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(87,46,'<com.jInices.akqlsUJkseCiE: void b()>',55,'a',NULL),(88,18,'<com.igamepower.appmaster.Web: void onCreate(android.os.Bundle)>',45,'s',NULL),(89,55,'<com.jInices.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(90,20,'<com.qualitywall.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(91,93,'<bw: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(92,41,'<com.igamepower.appmaster.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(93,33,'<com.qualitywall.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(94,31,'<com.igamepower.appmaster.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(95,94,'<ce: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(96,95,'<aw: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(97,22,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(98,48,'<com.jInices.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(99,34,'<com.ariasmyth1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(100,64,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',15,'s',NULL),(101,96,'<c: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(102,69,'<com.igamepower.appmaster.bu: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(103,40,'<com.jInices.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(104,39,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(105,43,'<com.qualitywall.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL),(106,26,'<com.igamepower.appmaster.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(107,40,'<com.jInices.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(108,97,'<run.cumdcvlmpe.DialogUtil$1: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(109,28,'<com.qualitywall.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(110,47,'<com.ariasmyth1.mythimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(111,49,'<com.igamepower.appmaster.GameAlertDialog: void onClick(android.view.View)>',43,'a',NULL),(112,63,'<com.qualitywall.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(113,98,'<o: void a(int,boolean)>',29,'a',NULL),(114,10,'<com.qualitywall.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(115,44,'<com.igamepower.appmaster.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',20,'a',NULL),(116,29,'<com.ariasmyth1.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(117,88,'<com.igamepower.appmaster.aa: void onCheckedChanged(android.widget.RadioGroup,int)>',34,'a',NULL),(118,80,'<m: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(119,99,'<com.igamepower.appmaster.ai: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(120,85,'<dc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(121,96,'<c: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(122,88,'<com.igamepower.appmaster.aa: void onCheckedChanged(android.widget.RadioGroup,int)>',20,'a',NULL),(123,85,'<dc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(124,79,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(125,12,'<com.ariasmyth1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(126,88,'<com.igamepower.appmaster.aa: void onCheckedChanged(android.widget.RadioGroup,int)>',44,'a',NULL),(127,16,'<com.qualitywall.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(128,100,'<do: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(129,22,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(130,72,'<h: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(131,68,'<com.igamepower.appmaster.bj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(132,98,'<o: void a(int,boolean)>',10,'s',NULL),(133,101,'<m: void onClick(android.view.View)>',6,'a',NULL),(134,29,'<com.ariasmyth1.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(135,102,'<com.igamepower.appmaster.bp: void onClick(android.content.DialogInterface,int)>',29,'a',NULL),(136,38,'<com.qualitywall.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(137,71,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(138,69,'<com.igamepower.appmaster.bu: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(139,74,'<bo: void onClick(android.view.View)>',224,'a',NULL),(140,13,'<com.qualitywall.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(141,64,'<com.igamepower.appmaster.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',31,'s',NULL),(142,41,'<com.igamepower.appmaster.GameInfo: void onCreate(android.os.Bundle)>',85,'a',NULL),(143,70,'<bd: void a(int,boolean)>',10,'s',NULL),(144,26,'<com.igamepower.appmaster.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(145,22,'<com.igamepower.appmaster.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',47,'a',NULL),(146,33,'<com.qualitywall.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(147,107,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(148,23,'<com.qualitywall.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(149,61,'<com.ariasmyth1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(150,72,'<h: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(151,7,'<com.ariasmyth1.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(152,56,'<com.qualitywall.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(153,9,'<com.ariasmyth1.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(154,91,'<au: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(155,50,'<com.qualitywall.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(156,71,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(157,84,'<cs: void onClick(android.view.View)>',224,'a',NULL),(158,93,'<bw: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(159,39,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(160,61,'<com.ariasmyth1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(161,79,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(162,47,'<com.ariasmyth1.mythimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(163,114,'<bm: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(164,29,'<com.ariasmyth1.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(165,20,'<com.qualitywall.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(166,17,'<com.ariasmyth1.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(167,38,'<com.qualitywall.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(168,91,'<au: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(169,10,'<com.qualitywall.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(170,105,'<com.fabd.hwljk.pjdlrsteqd.Prefs: void onClick(android.view.View)>',43,'a',NULL),(171,110,'<com.IfJhhtrNF.HgAAsIdvHBKLuTi: void a()>',3,'a',NULL),(172,110,'<com.IfJhhtrNF.HgAAsIdvHBKLuTi: void a(java.lang.String)>',11,'a',NULL),(173,128,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(174,129,'<cn.domob.android.ads.be: void onClick(android.content.DialogInterface,int)>',8,'a',0),(175,103,'<com.fabd.hwljk.pjdlrsteqd.AgileBuddySplash: void onCreate(android.os.Bundle)>',37,'s',NULL),(176,130,'<cn.domob.android.ads.b: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(177,108,'<com.fabd.hwljk.pjdlrsteqd.TipsActivity: void onClick(android.view.View)>',6,'a',NULL),(178,131,'<cn.domob.android.ads.am: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(179,103,'<com.fabd.hwljk.pjdlrsteqd.AgileBuddySplash: void onClick(android.view.View)>',6,'a',NULL),(180,111,'<com.IfJhhtrNF.klLGupemNkv: void a()>',3,'a',NULL),(181,133,'<cn.domob.android.ads.ae: void p(cn.domob.android.ads.ae)>',6,'a',NULL),(182,134,'<cn.tinrqca.dgltqccse_u.Tools: void shareMsg(android.content.Context,java.lang.String)>',6,'a',NULL),(183,134,'<cn.tinrqca.dgltqccse_u.Tools: void shareMsg_email(android.content.Context,java.lang.String)>',8,'a',NULL),(184,126,'<com.FGmqOJu.qTKDeheiWPsiQ: void a()>',3,'a',NULL),(185,124,'<com.mt.airad.MultiAD: void _$2()>',7,'r',NULL),(186,119,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(187,126,'<com.FGmqOJu.qTKDeheiWPsiQ: void a(java.lang.String)>',11,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,6),(2,8,6),(3,9,6),(4,12,7),(5,13,8),(6,14,6),(7,16,9),(8,17,3),(9,21,10),(10,26,10),(11,27,6),(12,30,6),(13,31,6),(14,35,1),(15,37,6),(16,38,1),(17,40,1),(18,42,1),(19,45,3),(20,47,1),(21,50,1),(22,51,6),(23,53,6),(24,54,6),(25,55,1),(26,58,1),(27,59,6),(28,60,6),(29,61,1),(30,64,1),(31,69,6),(32,74,6),(33,77,6),(34,81,12),(35,82,6),(36,87,6),(37,88,13),(38,90,14),(39,91,6),(40,92,6),(41,94,6),(42,96,6),(43,97,6),(44,101,6),(45,102,15),(46,105,13),(47,109,6),(48,112,1),(49,113,1),(50,114,1),(51,116,1),(52,117,13),(53,118,6),(54,123,6),(55,126,6),(56,128,6),(57,130,8),(58,133,16),(59,136,6),(60,138,1),(61,139,1),(62,141,6),(63,146,6),(64,149,6),(65,153,6),(66,154,1),(67,156,1),(68,158,1),(69,159,17),(70,160,1),(71,161,12),(72,162,18),(73,163,1),(74,165,1),(75,168,6),(76,176,18),(77,177,6),(78,178,19),(79,179,20),(80,180,21),(81,182,1),(82,183,1),(83,184,1),(84,185,1),(85,186,1),(86,187,3),(87,188,1),(88,189,14),(89,190,6),(90,191,20),(91,192,22),(92,193,6),(93,202,6),(94,203,6),(95,207,6),(96,209,6),(97,210,6),(98,211,6),(99,212,6),(100,217,6),(101,220,6),(102,221,23),(103,222,24),(104,223,24),(105,224,24),(106,225,24),(107,226,24),(108,227,24),(109,228,24),(110,229,24),(111,231,25),(112,232,26),(113,233,6),(114,234,28),(115,235,28),(116,236,6),(117,237,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,35,1),(2,38,3),(3,40,1),(4,42,3),(5,47,1),(6,50,3),(7,55,1),(8,58,3),(9,61,1),(10,64,3),(11,112,1),(12,113,1),(13,114,3),(14,116,3),(15,138,1),(16,139,3),(17,154,1),(18,156,3),(19,158,1),(20,160,3),(21,163,1),(22,165,3),(23,182,1),(24,183,1),(25,184,3),(26,185,3),(27,186,1),(28,188,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'jp/ficnqqclujj/msfbwvl/Settings'),(2,2,'com/nd/dianjin/activity/OfferAppActivity'),(3,3,'jp/ficnqqclujj/msfbwvl/About'),(4,5,'jp/ficnqqclujj/msfbwvl/Game'),(5,6,'jp/ficnqqclujj/msfbwvl/Andjong'),(6,7,'jp/ficnqqclujj/msfbwvl/Andjong'),(7,10,'com/igamepower/appmaster/Myhall'),(8,11,'com/igamepower/appmaster/GameInfo'),(9,12,'com/igamepower/appmaster/GameService'),(10,13,'com/ariasmyth1/GameService'),(11,15,'com/igamepower/appmaster/GameInfo'),(12,16,'com/ariasmyth1/GameService'),(13,18,'com/qualitywall/Myhall'),(14,19,'com/ariasmyth1/GameService'),(15,20,'com/igamepower/appmaster/GameService'),(16,21,'com/qualitywall/GameService'),(17,22,'com/ariasmyth1/Myhall'),(18,23,'com/igamepower/appmaster/GameService'),(19,24,'com/qualitywall/Myhall'),(20,25,'com/igamepower/appmaster/GameAlertDialog'),(21,26,'com/qualitywall/GameService'),(22,28,'run/cumdcvlmpe/asianbody'),(23,29,'com/igamepower/appmaster/GameInfo'),(24,32,'run/cumdcvlmpe/MyWebView'),(25,33,'com/ariasmyth1/GameInfo'),(26,34,'com/qualitywall/GameService'),(27,36,'com/ariasmyth1/Myhall'),(28,41,'run/cumdcvlmpe/wallsport0221j'),(29,39,'com/qualitywall/Myhall'),(30,43,'com/ariasmyth1/GameInfo'),(31,46,'run/cumdcvlmpe/asianbody'),(32,48,'com/qualitywall/Myhall'),(33,49,'com/ariasmyth1/GameService'),(34,52,'com/qualitywall/GameInfo'),(35,56,'run/cumdcvlmpe/game/Main'),(36,57,'com/ariasmyth1/GameInfo'),(37,63,'com/igamepower/appmaster/GameService'),(38,62,'com/ariasmyth1/Myhall'),(39,65,'com/qualitywall/Myhall'),(40,67,'com/ariasmyth1/Myhall'),(41,68,'com/jInices/akqlsUJkseCiE'),(42,66,'com/igamepower/appmaster/GameAlertDialog'),(43,70,'com/ariasmyth1/GameInfo'),(44,71,'com/jInices/phDWdatTa'),(45,72,'com/igamepower/appmaster/GameService'),(46,73,'com/ariasmyth1/GameInfo'),(47,75,'com/jInices/phDWdatTa'),(48,76,'com/igamepower/appmaster/GameService'),(49,78,'com/ariasmyth1/GameService'),(50,79,'run/cumdcvlmpe/wallsport0221j'),(51,80,'com/qualitywall/GameService'),(52,81,'com/igamepower/appmaster/GameService'),(53,83,'com/qualitywall/GameService'),(54,84,'com/igamepower/appmaster/Myhall'),(55,86,'com/ariasmyth1/GameService'),(56,85,'com/qualitywall/Myhall'),(57,89,'run/cumdcvlmpe/wallsport0221j'),(58,90,'com/ariasmyth1/GameService'),(59,95,'com/qualitywall/GameService'),(60,93,'com/igamepower/appmaster/Myhall'),(61,98,'com/igamepower/appmaster/GameInfo'),(62,99,'com/qualitywall/Myhall'),(63,100,'run/cumdcvlmpe/wallsport0221j'),(64,102,'com/igamepower/appmaster/GameService'),(65,104,'com/qualitywall/GameService'),(66,106,'com/igamepower/appmaster/Myhall'),(67,107,'com/qualitywall/Myhall'),(68,108,'com/igamepower/appmaster/GameService'),(69,103,'com/jInices/ntpDurIhbwNACpL'),(70,111,'com/igamepower/appmaster/Myhall'),(71,110,'com/qualitywall/Myhall'),(72,115,'com/igamepower/appmaster/GameService'),(73,119,'com/jInices/akqlsUJkseCiE'),(74,122,'com/igamepower/appmaster/GameInfo'),(75,120,'com/ariasmyth1/GameAlertDialog'),(76,121,'com/qualitywall/GameAlertDialog'),(77,124,'com/qualitywall/GameService'),(78,125,'com/ariasmyth1/GameService'),(79,127,'com/qualitywall/GameService'),(80,129,'com/ariasmyth1/Myhall'),(81,130,'com/qualitywall/GameService'),(82,131,'com/igamepower/appmaster/GameInfo'),(83,132,'com/ariasmyth1/Myhall'),(84,133,'com/qualitywall/GameService'),(85,134,'com/igamepower/appmaster/Myhall'),(86,135,'com/ariasmyth1/Myhall'),(87,137,'com/ariasmyth1/Myhall'),(88,140,'com/igamepower/appmaster/Myhall'),(89,142,'com/qualitywall/GameInfo'),(90,143,'com/ariasmyth1/GameInfo'),(91,144,'com/igamepower/appmaster/Myhall'),(92,145,'com/qualitywall/GameInfo'),(93,147,'com/igamepower/appmaster/GameInfo'),(94,148,'com/qualitywall/Myhall'),(95,150,'com/ariasmyth1/GameService'),(96,151,'com/qualitywall/qimg/ImageTestActivity'),(97,152,'com/ariasmyth1/GameService'),(98,155,'com/ariasmyth1/Myhall'),(99,157,'com/igamepower/appmaster/Myhall'),(100,159,'com/qualitywall/GameService'),(101,161,'com/igamepower/appmaster/GameService'),(102,162,'com/qualitywall/GameService'),(103,164,'com/igamepower/appmaster/Myhall'),(104,166,'com/qualitywall/GameService'),(105,167,'com/igamepower/appmaster/GameService'),(106,169,'com/qualitywall/Myhall'),(107,170,'com/ariasmyth1/Myhall'),(108,171,'com/qualitywall/GameInfo'),(109,172,'com/ariasmyth1/GameService'),(110,173,'com/qualitywall/Myhall'),(111,174,'com/ariasmyth1/GameService'),(112,175,'com/qualitywall/GameInfo'),(113,176,'com/ariasmyth1/GameService'),(114,178,'com/ariasmyth1/GameService'),(115,179,'com/qualitywall/GameService'),(116,180,'com/qualitywall/GameService'),(117,181,'com/ariasmyth1/Myhall'),(118,189,'com/ariasmyth1/GameService'),(119,191,'com/ariasmyth1/GameService'),(120,192,'com/ariasmyth1/GameService'),(121,194,'com/ariasmyth1/Myhall'),(122,195,'com/qualitywall/GameInfo'),(123,196,'com/ariasmyth1/GameInfo'),(124,197,'com/qualitywall/GameInfo'),(125,198,'com/qualitywall/GameInfo'),(126,199,'com/qualitywall/GameService'),(127,200,'com/fabd/hwljk/pjdlrsteqd/TipsActivity'),(128,201,'com/fabd/hwljk/pjdlrsteqd/AgileBuddySplash'),(129,204,'com/nd/dianjin/activity/OfferAppActivity'),(130,205,'com/fabd/hwljk/pjdlrsteqd/ScoreUpgrateService'),(131,206,'com/fabd/hwljk/pjdlrsteqd/AgileBuddyActivity'),(132,213,'com/fabd/hwljk/pjdlrsteqd/GlobalRankingActivity'),(133,215,'com/fabd/hwljk/pjdlrsteqd/Prefs'),(134,216,'com/fabd/hwljk/pjdlrsteqd/TipsActivity'),(135,218,'com/fabd/hwljk/pjdlrsteqd/AgileBuddyActivity'),(136,219,'com/fabd/hwljk/pjdlrsteqd/AgileBuddySplash'),(137,230,'cn/tinrqca/dgltqccse_u/Main');
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
INSERT INTO `IData` VALUES (1,4,1),(2,8,2),(3,9,3),(4,14,4),(5,27,5),(6,30,6),(7,31,7),(8,37,8),(9,51,9),(10,53,10),(11,54,11),(12,59,12),(13,60,13),(14,69,14),(15,74,15),(16,77,16),(17,82,17),(18,87,18),(19,88,19),(20,91,20),(21,92,21),(22,94,22),(23,97,23),(24,96,24),(25,101,25),(26,105,26),(27,109,27),(28,117,28),(29,118,29),(30,123,30),(31,126,31),(32,128,32),(33,136,33),(34,141,34),(35,146,35),(36,149,36),(37,153,37),(38,168,38),(39,177,39),(40,190,40),(41,193,41),(42,202,42),(43,203,43),(44,207,45),(45,209,46),(46,210,47),(47,211,48),(48,212,49),(49,217,50),(50,220,51),(51,221,52),(52,233,53),(53,234,54),(54,235,55),(55,236,56),(56,237,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'oriention'),(2,10,'title'),(3,10,'nextclassid'),(4,10,'clicked'),(5,11,'title'),(6,15,'title'),(7,22,'clicked'),(8,24,'clicked'),(9,25,'title'),(10,25,'btn_txt'),(11,25,'need_adb_flag'),(12,25,'cont'),(13,25,'close_flag'),(14,29,'id'),(15,29,'from_table'),(16,29,'detail_flag'),(17,36,'clicked'),(18,39,'title'),(19,39,'nextclassid'),(20,39,'clicked'),(21,43,'title'),(22,52,'id'),(23,52,'from_alert'),(24,52,'detail_flag'),(25,57,'id'),(26,57,'from_table'),(27,57,'detail_flag'),(28,62,'nextclassid'),(29,62,'clicked'),(30,65,'clicked'),(31,66,'title'),(32,66,'btn_txt'),(33,66,'need_adb_flag'),(34,66,'cont'),(35,66,'close_flag'),(36,70,'title'),(37,84,'clicked'),(38,85,'nextclassid'),(39,85,'clicked'),(40,93,'title'),(41,93,'nextclassid'),(42,93,'clicked'),(43,99,'title'),(44,99,'nextclassid'),(45,99,'clicked'),(46,103,'apkVersion'),(47,103,'apkURL'),(48,103,'apkInfo'),(49,103,'packageName'),(50,103,'apkSoftID'),(51,103,'apkTitle'),(52,103,'iconURL'),(53,103,'apkSize'),(54,103,'imageURL'),(55,110,'title'),(56,111,'nextclassid'),(57,110,'nextclassid'),(58,111,'clicked'),(59,110,'clicked'),(60,121,'title'),(61,120,'title'),(62,121,'btn_txt'),(63,120,'btn_txt'),(64,120,'need_adb_flag'),(65,121,'need_adb_flag'),(66,120,'cont'),(67,121,'cont'),(68,122,'title'),(69,120,'close_flag'),(70,121,'close_flag'),(71,134,'clicked'),(72,135,'title'),(73,135,'nextclassid'),(74,135,'clicked'),(75,137,'title'),(76,137,'nextclassid'),(77,137,'clicked'),(78,140,'clicked'),(79,142,'title'),(80,144,'clicked'),(81,148,'clicked'),(82,155,'clicked'),(83,157,'title'),(84,157,'nextclassid'),(85,157,'clicked'),(86,170,'title'),(87,170,'nextclassid'),(88,170,'clicked'),(89,173,'clicked'),(90,181,'clicked'),(91,195,'title'),(92,196,'title'),(93,198,'title'),(94,204,'oriention'),(95,221,'sms_body'),(96,222,'android.intent.extra.INTENT'),(97,223,'android.intent.extra.INTENT'),(98,224,'android.intent.extra.TITLE'),(99,224,'android.intent.extra.INTENT'),(100,225,'android.intent.extra.INTENT'),(101,226,'android.intent.extra.TITLE'),(102,226,'android.intent.extra.INTENT'),(103,227,'android.intent.extra.INTENT'),(104,228,'android.intent.extra.TITLE'),(105,228,'android.intent.extra.INTENT'),(106,229,'android.intent.extra.TITLE'),(107,229,'android.intent.extra.INTENT'),(108,231,'adViewLeaveParameter'),(109,232,'adViewLeaveParameter');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,5,1),(4,4,1),(5,6,1),(6,7,1),(7,8,1),(8,9,1),(9,10,1),(10,12,1),(11,13,1),(12,14,1),(13,15,1),(14,16,1),(15,17,1),(16,18,1),(17,19,1),(18,20,1),(19,21,3),(20,23,1),(21,22,3),(22,24,1),(23,25,1),(24,26,1),(25,27,1),(26,28,3),(27,29,1),(28,30,4),(29,31,1),(30,32,5),(31,33,5),(32,34,5),(33,35,11),(34,36,2),(35,37,2),(36,38,11),(37,39,11),(38,41,1),(39,42,2),(40,47,1),(41,48,2),(42,49,25),(43,50,26),(44,51,27),(45,52,29);
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
INSERT INTO `IFCategories` VALUES (1,2,1),(2,5,1),(3,19,1),(4,24,1),(5,25,1),(6,27,1),(7,29,1),(8,31,1),(9,35,2),(10,36,2),(11,37,2),(12,38,2),(13,39,2),(14,41,1),(15,42,2),(16,44,1),(17,45,1),(18,46,1),(19,47,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,3,'package',NULL,NULL,NULL,NULL,NULL),(2,35,'package',NULL,NULL,NULL,NULL,NULL),(3,36,'package',NULL,NULL,NULL,NULL,NULL),(4,37,'package',NULL,NULL,NULL,NULL,NULL),(5,38,'package',NULL,NULL,NULL,NULL,NULL),(6,39,'package',NULL,NULL,NULL,NULL,NULL),(7,42,'package',NULL,NULL,NULL,NULL,NULL),(8,48,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,4,'application','vnd.android.package-archive'),(2,8,'application','vnd.android.package-archive'),(3,9,'application','vnd.android.package-archive'),(4,27,'application','vnd.android.package-archive'),(5,30,'application','vnd.android.package-archive'),(6,31,'application','vnd.android.package-archive'),(7,37,'application','vnd.android.package-archive'),(8,59,'application','vnd.android.package-archive'),(9,60,'application','vnd.android.package-archive'),(10,91,'application','vnd.android.package-archive'),(11,92,'application','vnd.android.package-archive'),(12,96,'application','vnd.android.package-archive'),(13,101,'application','vnd.android.package-archive'),(14,109,'application','vnd.android.package-archive'),(15,136,'application','vnd.android.package-archive'),(16,146,'application','vnd.android.package-archive'),(17,153,'application','vnd.android.package-archive'),(18,193,'application','vnd.android.package-archive'),(19,203,'(.*)','(.*)'),(20,207,'application','vnd.android.package-archive'),(21,209,'application','vnd.android.package-archive'),(22,210,'application','vnd.android.package-archive'),(23,211,'application','vnd.android.package-archive'),(24,212,'application','vnd.android.package-archive'),(25,234,'(.*)','(.*)'),(26,237,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'jp.ficnqqclujj.msfbwvl'),(2,2,'jp.ficnqqclujj.msfbwvl'),(3,3,'jp.ficnqqclujj.msfbwvl'),(4,5,'jp.ficnqqclujj.msfbwvl'),(5,6,'jp.ficnqqclujj.msfbwvl'),(6,7,'jp.ficnqqclujj.msfbwvl'),(7,10,'com.igamepower.appmaster'),(8,11,'com.igamepower.appmaster'),(9,12,'com.igamepower.appmaster'),(10,13,'com.ariasmyth1'),(11,15,'com.igamepower.appmaster'),(12,16,'com.ariasmyth1'),(13,18,'com.qualitywall'),(14,19,'com.ariasmyth1'),(15,20,'com.igamepower.appmaster'),(16,21,'com.qualitywall'),(17,22,'com.ariasmyth1'),(18,23,'com.igamepower.appmaster'),(19,24,'com.qualitywall'),(20,25,'com.igamepower.appmaster'),(21,26,'com.qualitywall'),(22,28,'run.cumdcvlmpe'),(23,29,'com.igamepower.appmaster'),(24,32,'run.cumdcvlmpe'),(25,33,'com.ariasmyth1'),(26,34,'com.qualitywall'),(27,35,'(.*)'),(28,36,'com.ariasmyth1'),(29,38,''),(30,40,''),(31,41,'run.cumdcvlmpe'),(32,39,'com.qualitywall'),(33,42,'(.*)'),(34,43,'com.ariasmyth1'),(35,46,'run.cumdcvlmpe'),(36,47,'(.*)'),(37,48,'com.qualitywall'),(38,49,'com.ariasmyth1'),(39,50,'(.*)'),(40,52,'com.qualitywall'),(41,55,'NULL-CONSTANT'),(42,56,'run.cumdcvlmpe'),(43,58,'NULL-CONSTANT'),(44,57,'com.ariasmyth1'),(45,61,'(.*)'),(46,63,'com.igamepower.appmaster'),(47,62,'com.ariasmyth1'),(48,64,'(.*)'),(49,65,'com.qualitywall'),(50,67,'com.ariasmyth1'),(51,68,'run.cumdcvlmpe'),(52,66,'com.igamepower.appmaster'),(53,70,'com.ariasmyth1'),(54,71,'run.cumdcvlmpe'),(55,72,'com.igamepower.appmaster'),(56,73,'com.ariasmyth1'),(57,75,'run.cumdcvlmpe'),(58,76,'com.igamepower.appmaster'),(59,78,'com.ariasmyth1'),(60,79,'run.cumdcvlmpe'),(61,80,'com.qualitywall'),(62,81,'com.igamepower.appmaster'),(63,83,'com.qualitywall'),(64,84,'com.igamepower.appmaster'),(65,86,'com.ariasmyth1'),(66,85,'com.qualitywall'),(67,89,'run.cumdcvlmpe'),(68,90,'com.ariasmyth1'),(69,95,'com.qualitywall'),(70,93,'com.igamepower.appmaster'),(71,98,'com.igamepower.appmaster'),(72,99,'com.qualitywall'),(73,100,'run.cumdcvlmpe'),(74,102,'com.igamepower.appmaster'),(75,104,'com.qualitywall'),(76,106,'com.igamepower.appmaster'),(77,107,'com.qualitywall'),(78,108,'com.igamepower.appmaster'),(79,103,'run.cumdcvlmpe'),(80,111,'com.igamepower.appmaster'),(81,110,'com.qualitywall'),(82,112,'(.*)'),(83,113,'(.*)'),(84,115,'com.igamepower.appmaster'),(85,114,'(.*)'),(86,116,'(.*)'),(87,119,'run.cumdcvlmpe'),(88,122,'com.igamepower.appmaster'),(89,120,'com.ariasmyth1'),(90,121,'com.qualitywall'),(91,124,'com.qualitywall'),(92,125,'com.ariasmyth1'),(93,127,'com.qualitywall'),(94,129,'com.ariasmyth1'),(95,130,'com.qualitywall'),(96,131,'com.igamepower.appmaster'),(97,132,'com.ariasmyth1'),(98,133,'com.qualitywall'),(99,134,'com.igamepower.appmaster'),(100,135,'com.ariasmyth1'),(101,137,'com.ariasmyth1'),(102,138,'NULL-CONSTANT'),(103,139,'NULL-CONSTANT'),(104,140,'com.igamepower.appmaster'),(105,142,'com.qualitywall'),(106,143,'com.ariasmyth1'),(107,144,'com.igamepower.appmaster'),(108,145,'com.qualitywall'),(109,147,'com.igamepower.appmaster'),(110,148,'com.qualitywall'),(111,150,'com.ariasmyth1'),(112,151,'com.qualitywall'),(113,152,'com.ariasmyth1'),(114,154,'(.*)'),(115,155,'com.ariasmyth1'),(116,156,'(.*)'),(117,157,'com.igamepower.appmaster'),(118,158,'(.*)'),(119,159,'com.qualitywall'),(120,160,''),(121,161,'com.igamepower.appmaster'),(122,162,'com.qualitywall'),(123,163,''),(124,164,'com.igamepower.appmaster'),(125,165,'(.*)'),(126,166,'com.qualitywall'),(127,167,'com.igamepower.appmaster'),(128,169,'com.qualitywall'),(129,170,'com.ariasmyth1'),(130,171,'com.qualitywall'),(131,172,'com.ariasmyth1'),(132,173,'com.qualitywall'),(133,174,'com.ariasmyth1'),(134,175,'com.qualitywall'),(135,176,'com.ariasmyth1'),(136,178,'com.ariasmyth1'),(137,179,'com.qualitywall'),(138,180,'com.qualitywall'),(139,181,'com.ariasmyth1'),(140,182,'(.*)'),(141,183,'NULL-CONSTANT'),(142,184,''),(143,185,'NULL-CONSTANT'),(144,186,''),(145,188,'(.*)'),(146,189,'com.ariasmyth1'),(147,191,'com.ariasmyth1'),(148,192,'com.ariasmyth1'),(149,194,'com.ariasmyth1'),(150,195,'com.qualitywall'),(151,196,'com.ariasmyth1'),(152,197,'com.qualitywall'),(153,198,'com.qualitywall'),(154,199,'com.qualitywall'),(155,200,'com.fabd.hwljk.pjdlrsteqd'),(156,201,'com.fabd.hwljk.pjdlrsteqd'),(157,204,'com.fabd.hwljk.pjdlrsteqd'),(158,205,'com.fabd.hwljk.pjdlrsteqd'),(159,206,'com.fabd.hwljk.pjdlrsteqd'),(160,213,'com.fabd.hwljk.pjdlrsteqd'),(161,215,'com.fabd.hwljk.pjdlrsteqd'),(162,216,'com.fabd.hwljk.pjdlrsteqd'),(163,218,'com.fabd.hwljk.pjdlrsteqd'),(164,219,'com.fabd.hwljk.pjdlrsteqd'),(165,230,'cn.tinrqca.dgltqccse_u');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,11,0),(4,17,0),(5,18,0),(6,20,0),(7,21,0),(8,23,0),(9,25,0),(10,26,0),(11,27,0),(12,28,0),(13,29,0),(14,31,0),(15,33,0),(16,34,0),(17,36,0),(18,38,0),(19,40,0),(20,41,0),(21,42,0),(22,44,0),(23,45,0),(24,47,0),(25,50,0),(26,52,0),(27,56,0),(28,58,0),(29,60,0),(30,59,0),(31,61,0),(32,62,0),(33,63,0),(34,64,0),(35,62,0),(36,64,0),(37,63,0),(38,63,0),(39,64,0),(40,65,0),(41,72,0),(42,62,0),(43,75,0),(44,76,0),(45,77,0),(46,78,0),(47,87,0),(48,88,0),(49,89,0),(50,89,0),(51,90,0),(52,91,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,1,0),(9,8,1,0),(10,9,0,0),(11,10,0,0),(12,11,0,0),(13,12,0,0),(14,13,1,0),(15,14,0,0),(16,12,0,0),(17,15,1,0),(18,16,0,0),(19,17,0,0),(20,18,0,0),(21,19,0,0),(22,20,0,0),(23,21,0,0),(24,22,0,0),(25,23,0,0),(26,24,0,0),(27,25,1,0),(28,26,0,0),(29,27,0,0),(30,25,1,0),(31,28,1,0),(32,29,0,0),(33,30,0,0),(34,31,0,0),(35,32,1,0),(36,34,0,0),(37,33,1,0),(38,32,1,0),(39,35,0,0),(40,32,1,0),(41,36,0,0),(42,32,1,0),(43,37,0,0),(44,38,1,0),(45,39,1,0),(46,38,0,0),(47,40,1,0),(48,41,0,0),(49,42,0,0),(50,40,1,0),(51,43,1,0),(52,44,0,0),(53,43,1,0),(54,45,1,0),(55,46,1,0),(56,47,0,0),(57,48,0,0),(58,46,1,0),(59,49,1,0),(60,49,1,0),(61,50,1,0),(62,51,0,0),(63,52,0,0),(64,50,1,0),(65,53,0,0),(66,54,0,0),(67,55,0,0),(68,56,0,0),(69,57,1,0),(70,58,0,0),(71,59,0,0),(72,60,0,0),(73,62,0,0),(74,61,1,0),(75,63,0,0),(76,64,0,0),(77,61,1,0),(78,65,0,0),(79,66,0,0),(80,67,0,0),(81,68,0,0),(82,69,1,0),(83,70,0,0),(84,71,0,0),(85,74,0,0),(86,73,0,0),(87,72,1,0),(88,75,1,0),(89,76,0,0),(90,77,0,0),(91,78,1,0),(92,79,1,0),(93,80,0,0),(94,81,1,0),(95,82,0,0),(96,83,1,0),(97,81,1,0),(98,84,0,0),(99,85,0,0),(100,87,0,0),(101,86,1,0),(102,88,0,0),(103,89,0,0),(104,90,0,0),(105,91,1,0),(106,92,0,0),(107,93,0,0),(108,94,0,0),(109,95,1,0),(110,96,0,0),(111,97,0,0),(112,98,1,0),(113,99,1,0),(114,98,1,0),(115,100,0,0),(116,99,1,0),(117,101,1,0),(118,102,1,0),(119,103,0,0),(120,104,0,0),(121,105,0,0),(122,106,0,0),(123,108,1,0),(124,109,0,0),(125,110,0,0),(126,111,1,0),(127,112,0,0),(128,111,1,0),(129,113,0,0),(130,114,0,0),(131,115,0,0),(132,116,0,0),(133,114,0,0),(134,117,0,0),(135,118,0,0),(136,119,1,0),(137,120,0,0),(138,121,1,0),(139,121,1,0),(140,122,0,0),(141,123,1,0),(142,124,0,0),(143,125,0,0),(144,126,0,0),(145,127,0,0),(146,128,1,0),(147,129,0,0),(148,130,0,0),(149,131,1,0),(150,132,0,0),(151,133,0,0),(152,134,0,0),(153,135,1,0),(154,136,1,0),(155,137,0,0),(156,136,1,0),(157,138,0,0),(158,139,1,0),(159,140,0,0),(160,139,1,0),(161,141,0,0),(162,140,0,0),(163,139,1,0),(164,142,0,0),(165,139,1,0),(166,143,0,0),(167,144,0,0),(168,145,1,0),(169,146,0,0),(170,147,0,0),(171,148,0,0),(172,149,0,0),(173,150,0,0),(174,151,0,0),(175,152,0,0),(176,153,0,0),(177,154,1,0),(178,153,0,0),(179,155,0,0),(180,155,0,0),(181,156,0,0),(182,157,1,0),(183,158,1,0),(184,157,1,0),(185,158,1,0),(186,157,1,0),(187,159,1,0),(188,157,1,0),(189,160,0,0),(190,161,1,0),(191,162,0,0),(192,162,0,0),(193,163,1,0),(194,164,0,0),(195,165,0,0),(196,166,0,0),(197,167,0,0),(198,168,0,0),(199,169,0,0),(200,170,0,0),(201,171,0,0),(202,172,1,0),(203,172,1,0),(204,173,0,0),(205,175,0,0),(206,177,0,0),(207,178,1,0),(208,178,1,0),(209,178,1,0),(210,178,1,0),(211,178,1,0),(212,178,1,0),(213,179,0,0),(214,179,1,0),(215,179,0,0),(216,179,0,0),(217,179,1,0),(218,179,0,0),(219,180,0,0),(220,181,1,0),(221,182,1,0),(222,183,1,0),(223,183,1,0),(224,183,1,0),(225,183,1,0),(226,183,1,0),(227,183,1,0),(228,183,1,0),(229,183,1,0),(230,184,0,0),(231,185,1,0),(232,185,1,0),(233,186,1,0),(234,186,1,0),(235,186,1,0),(236,187,1,0),(237,187,1,0);
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
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_CACHE_FILESYSTEM'),(23,'android.permission.ACCESS_COARSE_LOCATION'),(22,'android.permission.ACCESS_FINE_LOCATION'),(5,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.DELETE_CACHE_FILES'),(20,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(16,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(10,'android.permission.READ_LOGS'),(18,'android.permission.READ_OWNER_DATA'),(1,'android.permission.READ_PHONE_STATE'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.RESTART_PACKAGES'),(7,'android.permission.SET_WALLPAPER'),(19,'android.permission.SYSTEM_ALERT_WINDOW'),(21,'android.permission.VIBRATE'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(13,'android.permission.WRITE_OWNER_DATA'),(14,'android.permission.WRITE_SECURE_SETTINGS'),(17,'android.permission.WRITE_SETTINGS'),(6,'com.android.launcher.permission.INSTALL_SHORTCUT'),(12,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://',NULL,NULL,NULL),(7,NULL,NULL,'file://',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'http://market.android.com/search?q=pub:superpeterpan',NULL,NULL,NULL),(19,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'http://market.android.com/search?q=pub:JohnHancock',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(46,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(49,NULL,NULL,'file://',NULL,NULL,NULL),(50,NULL,NULL,'market://search?q=pub:\"com.xoYu\"',NULL,NULL,NULL),(51,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'smsto:',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,176,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,3,1),(9,3,2),(10,2,3),(11,3,3),(12,2,5),(13,4,1),(14,2,6),(15,4,2),(16,3,5),(17,4,3),(18,3,6),(19,2,7),(20,2,8),(21,4,5),(22,3,8),(23,2,9),(24,3,9),(25,4,6),(26,2,10),(27,3,10),(28,4,7),(29,3,11),(30,4,8),(31,2,11),(32,4,9),(33,3,12),(34,2,12),(35,3,13),(36,4,10),(37,4,11),(38,3,14),(39,4,12),(40,3,15),(41,3,17),(42,3,16),(43,3,18),(44,5,16),(45,5,1),(46,5,19),(47,5,2),(48,5,3),(49,5,20),(50,5,5),(51,5,6),(52,5,7),(53,6,1),(54,6,2),(55,6,3),(56,6,21),(57,6,4),(58,6,5),(59,7,1),(60,7,2),(61,7,3),(62,7,4),(63,7,5),(64,7,23),(65,7,22),(66,7,10);
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
