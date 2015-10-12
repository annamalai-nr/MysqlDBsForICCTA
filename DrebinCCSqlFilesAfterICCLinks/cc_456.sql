-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_456
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (7,'(.*)'),(5,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CALL'),(14,'android.intent.action.CHOOSER'),(8,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.NEW_OUTGOING_CALL'),(13,'android.intent.action.PACKAGE_ADDED'),(3,'android.intent.action.PHONE_STATE'),(10,'android.intent.action.RUN'),(11,'android.intent.action.SCREEN_OFF'),(12,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(4,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.GoldDream.TingTing06i',1),(2,'hww.com.tanker',1),(3,'com.sjli.TingTing',1),(4,'com.GoldDream.pg',1),(5,'com.droidhen.game.cityjjumper',5),(6,'com.GoldDream.pg03',1),(7,'org.microemu.android.Game2010082711491328',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.GoldDream.TingTing06i.TingTing21'),(2,1,'com.GoldDream.TingTing06i.readme'),(3,1,'com.google.ads.AdActivity'),(4,1,'com.GoldDream.zj.zjService'),(5,1,'com.GoldDream.zj.zjReceiver'),(6,2,'hww.com.tanker.main'),(7,2,'hww.com.tanker.SelectLevel'),(8,2,'hww.com.tanker.gameActivity'),(9,2,'com.GoldDream.zj.zjService'),(10,2,'com.GoldDream.zj.zjReceiver'),(11,1,'com.google.ads.util.AdUtil$UserActivityReceiver'),(12,3,'com.sjli.TingTing.TingTing21'),(13,3,'com.sjli.TingTing.readme'),(14,3,'com.sjli.client.HHandPics'),(15,3,'com.sjli.client.viewpic'),(16,3,'com.google.ads.AdActivity'),(17,3,'cn.domob.android.ads.DomobActivity'),(18,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(19,3,'com.adwo.adsdk.AdwoSplashAdActivity'),(20,3,'com.mt.airad.MultiAD'),(21,3,'net.youmi.android.AdActivity'),(22,3,'net.youmi.android.spotad.AdActivity'),(23,3,'com.wooboo.adlib_android.AdActivity'),(24,3,'com.wooboo.adlib_android.FullActivity'),(25,3,'com.sjli.client.zjjService'),(26,3,'com.admogo.UpdateService'),(27,3,'com.sjli.client.zjjReceiver'),(28,4,'com.GoldDream.pg.PureGirls16'),(29,4,'com.GoldDream.pg.showAllPics'),(30,4,'com.GoldDream.pg.readme'),(31,4,'com.admob.android.ads.AdMobActivity'),(32,4,'com.google.ads.AdActivity'),(33,4,'com.millennialmedia.android.MMAdViewOverlayActivity'),(34,4,'com.millennialmedia.android.VideoPlayer'),(35,4,'net.youmi.android.AdActivity'),(36,4,'com.GoldDream.zj.zjService'),(37,4,'com.GoldDream.zj.zjReceiver'),(38,5,'com.sjli.client.MogoStart'),(39,5,'com.google.ads.AdActivity'),(40,5,'com.droidhen.api.promptclient.more.MoreActivity'),(41,5,'com.droidhen.api.promptclient.prompt.RecommendActivity'),(42,5,'com.droidhen.api.promptclient.prompt.RateActivity'),(43,5,'com.droidhen.api.scoreclient.ui.HighScoresActivity'),(44,5,'com.droidhen.game.cityjjumper.MainActivity'),(45,5,'com.sjli.client.HHandPics'),(46,5,'com.sjli.client.viewpic'),(47,5,'cn.domob.android.ads.DomobActivity'),(48,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(49,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(50,5,'net.youmi.android.AdActivity'),(51,5,'net.youmi.android.spotad.AdActivity'),(52,5,'com.wooboo.adlib_android.AdActivity'),(53,5,'com.wooboo.adlib_android.FullActivity'),(54,5,'com.tencent.mobwin.MobinWINBrowserActivity'),(55,5,'com.adchina.android.ads.views.AdBrowserView'),(56,5,'com.adchina.android.ads.views.FullScreenAdActivity'),(57,5,'cn.appmedia.ad.AdActivity'),(58,5,'com.winad.android.ads.VideoPlayerActivity'),(59,5,'com.suizong.mobplate.ads.AdActivity'),(60,5,'com.mt.airad.MultiAD'),(61,5,'com.lmmob.ad.sdk.LmMobAdWebView'),(62,5,'com.lmmob.ad.sdk.LmMobFullImageActivity'),(63,5,'net.winsmedia.WebViewActivity'),(64,5,'com.baidu.AppActivity'),(65,5,'com.sjli.client.zjjService'),(66,5,'com.admogo.UpdateService'),(67,5,'com.sjli.client.zjjReceiver'),(68,5,'com.winad.android.ads.ReciveInstallPackage'),(69,5,'com.droidhen.api.scoreclient.ScoreClientProvider'),(70,6,'com.GoldDream.pg03.PureGirls16'),(71,6,'com.GoldDream.pg03.showAllPics'),(72,6,'com.GoldDream.pg03.readme'),(73,4,'com.GoldDream.pg.PureGirls16$ItemClickListener'),(74,6,'com.admob.android.ads.AdMobActivity'),(75,6,'com.google.ads.AdActivity'),(76,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(77,6,'com.millennialmedia.android.VideoPlayer'),(78,6,'net.youmi.android.AdActivity'),(79,6,'com.GoldDream.zj.zjService'),(80,6,'com.GoldDream.zj.zjReceiver'),(81,7,'com.sjli.client.MogoStart'),(82,7,'org.microemu.android.MicroEmulator'),(83,7,'com.sjli.client.HHandPics'),(84,7,'com.sjli.client.viewpic'),(85,7,'com.google.ads.AdActivity'),(86,7,'cn.domob.android.ads.DomobActivity'),(87,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(88,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(89,7,'net.youmi.android.AdActivity'),(90,7,'net.youmi.android.spotad.AdActivity'),(91,7,'com.wooboo.adlib_android.AdActivity'),(92,7,'com.wooboo.adlib_android.FullActivity'),(93,7,'com.tencent.mobwin.MobinWINBrowserActivity'),(94,7,'com.adchina.android.ads.views.AdBrowserView'),(95,7,'com.adchina.android.ads.views.FullScreenAdActivity'),(96,7,'cn.appmedia.ad.AdActivity'),(97,7,'com.winad.android.ads.VideoPlayerActivity'),(98,7,'com.sjli.client.zjjService'),(99,7,'com.admogo.UpdateService'),(100,7,'com.sjli.client.zjjReceiver'),(101,7,'com.winad.android.ads.ReciveInstallPackage'),(102,6,'com.GoldDream.pg03.PureGirls16$ItemClickListener'),(103,3,'cn.domob.android.ads.e'),(104,3,'com.wooboo.adlib_android.WoobooAdView$3$0'),(105,3,'cn.domob.android.a.d'),(106,3,'com.wooboo.download.d'),(107,3,'com.mt.airad.IIIIlllIlllIIIII'),(108,3,'cn.domob.android.ads.p$5'),(109,3,'com.wooboo.adlib_android.AdLayout$5'),(110,3,'net.youmi.android.t'),(111,3,'com.wooboo.adlib_android.AdActivity$b_$0'),(112,3,'cn.domob.android.ads.g$2'),(113,3,'net.youmi.android.be'),(114,3,'cn.domob.android.ads.p'),(115,3,'cn.domob.android.ads.DomobAdManager');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,10,'pdus'),(2,5,'android.intent.extra.PHONE_NUMBER'),(3,3,'action'),(4,8,'level'),(5,3,'params'),(6,10,'incoming_number'),(7,10,'android.intent.extra.PHONE_NUMBER'),(8,5,'incoming_number'),(9,5,'pdus'),(10,3,'com.google.ads.AdOpener'),(11,37,'android.intent.extra.PHONE_NUMBER'),(12,33,'shouldResizeOverlay'),(13,33,'canAccelerate'),(14,35,'A7D1721B9508405D8271AB82AC6D9B3C'),(15,33,'overlayTitle'),(16,37,'pdus'),(17,32,'params'),(18,32,'com.google.ads.AdOpener'),(19,33,'shouldShowNavbar'),(20,29,'objSelect'),(21,37,'incoming_number'),(22,33,'overlayTransition'),(23,33,'transitionTime'),(24,32,'action'),(25,33,'shouldShowTitlebar'),(26,79,'incoming_number'),(27,74,'params'),(28,79,'android.intent.extra.PHONE_NUMBER'),(29,74,'com.google.ads.AdOpener'),(30,74,'action'),(31,79,'pdus'),(32,75,'shouldResizeOverlay'),(33,77,'A7D1721B9508405D8271AB82AC6D9B3C'),(34,75,'overlayTransition'),(35,75,'transitionTime'),(36,75,'canAccelerate'),(37,71,'objSelect'),(38,75,'overlayTitle'),(39,75,'shouldShowNavbar'),(40,75,'shouldShowTitlebar'),(41,23,'(.*)'),(42,21,'D780FBF4215247bcBB1AC0AD33C474FE'),(43,26,'mogo_link'),(44,21,'172C94EDC717477aBF600D7898A64A8E'),(45,18,'url'),(46,26,'mogo_title'),(47,18,'shouldEnableBottomBar'),(48,18,'transitionTime'),(49,16,'com.google.ads.AdOpener'),(50,17,'actType'),(51,19,'overlayTitle'),(52,18,'shouldResizeOverlay'),(53,17,'msg'),(54,18,'shouldShowTitlebar'),(55,19,'FSAd'),(56,18,'overlayTitle'),(57,19,'shouldShowTitlebar'),(58,21,'D50EF1926ADD471892E72BCE6D7E032C'),(59,19,'transitionTime'),(60,18,'recurl'),(61,19,'(.*)'),(62,16,'action'),(63,19,'overlayTransition'),(64,15,'objUrl'),(65,17,'appName'),(66,18,'shouldShowBottomBar'),(67,19,'shouldMakeOverlayTransparent'),(68,19,'shouldResizeOverlay'),(69,18,'overlayTransition'),(70,26,'DOMOB_PID'),(71,19,'DOMOB_PID'),(72,25,'DOMOB_PID'),(73,18,'DOMOB_PID'),(74,21,'DOMOB_PID'),(75,16,'DOMOB_PID'),(76,20,'adURL'),(77,26,'DOMOB_TEST_MODE'),(78,19,'DOMOB_TEST_MODE'),(79,25,'DOMOB_TEST_MODE'),(80,18,'DOMOB_TEST_MODE'),(81,21,'DOMOB_TEST_MODE'),(82,16,'DOMOB_TEST_MODE'),(83,16,'params'),(84,19,'shouldShowBottomBar'),(85,18,'shouldMakeOverlayTransparent'),(86,19,'shouldEnableBottomBar'),(87,20,'adID'),(88,21,'EB80F3291A8E469c962CA133BDC549D7'),(89,17,'appId');
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',1,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',1,NULL,NULL),(26,26,'s',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'s',1,NULL,NULL),(66,66,'s',1,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'p',0,NULL,NULL),(70,70,'a',1,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,74,'a',0,NULL,NULL),(74,75,'a',0,NULL,NULL),(75,76,'a',0,NULL,NULL),(76,77,'a',0,NULL,NULL),(77,78,'a',0,NULL,NULL),(78,79,'s',1,NULL,NULL),(79,80,'r',1,NULL,NULL),(80,81,'a',1,NULL,NULL),(81,82,'a',0,NULL,NULL),(82,83,'a',0,NULL,NULL),(83,84,'a',0,NULL,NULL),(84,85,'a',0,NULL,NULL),(85,86,'a',0,NULL,NULL),(86,87,'a',0,NULL,NULL),(87,88,'a',0,NULL,NULL),(88,89,'a',0,NULL,NULL),(89,90,'a',0,NULL,NULL),(90,91,'a',0,NULL,NULL),(91,92,'a',0,NULL,NULL),(92,93,'a',0,NULL,NULL),(93,94,'a',0,NULL,NULL),(94,95,'a',0,NULL,NULL),(95,96,'a',0,NULL,NULL),(96,97,'a',0,NULL,NULL),(97,98,'s',1,NULL,NULL),(98,99,'s',1,NULL,NULL),(99,100,'r',1,NULL,NULL),(100,101,'r',1,NULL,NULL),(101,103,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,9),(3,3,6),(4,4,6),(5,5,2),(6,6,9),(7,7,1),(8,8,4),(9,9,9),(10,10,1),(11,11,10),(12,12,2),(13,13,4),(14,14,1),(15,15,5),(16,16,4),(17,17,1),(18,18,32),(19,19,28),(20,20,28),(21,21,37),(22,22,29),(23,23,36),(24,24,30),(25,25,29),(26,26,30),(27,27,36),(28,28,29),(29,29,36),(30,30,28),(31,31,28),(32,32,28),(33,33,71),(34,34,74),(35,35,78),(36,36,71),(37,37,78),(38,38,70),(39,39,78),(40,40,70),(41,41,72),(42,42,71),(43,43,70),(44,44,72),(45,45,79),(46,46,70),(47,47,70),(48,48,26),(49,48,25),(50,48,16),(51,48,18),(52,48,19),(53,48,21),(54,49,25),(55,50,16),(56,50,26),(57,50,25),(58,50,21),(59,50,18),(60,50,19),(61,51,27),(62,52,14),(63,53,21),(64,54,20),(65,55,26),(66,55,16),(67,55,21),(68,55,19),(69,55,25),(70,55,18),(71,56,12),(72,57,21),(73,58,27),(74,59,21),(75,60,23),(76,60,21),(77,61,16),(78,61,19),(79,61,18),(80,61,25),(81,61,26),(82,61,21),(83,62,21),(84,63,12),(85,64,16),(86,65,25),(87,65,26),(88,65,21),(89,65,16),(90,65,18),(91,65,19),(92,66,25),(93,67,12),(94,68,16),(95,68,18),(96,68,19),(97,68,21),(98,68,26),(99,68,25),(100,69,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(2,9,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(3,6,'<hww.com.tanker.main: void toGameActivity()>',8,'a',NULL),(4,6,'<hww.com.tanker.main: boolean onTouchEvent(android.view.MotionEvent)>',21,'a',NULL),(5,2,'<com.GoldDream.TingTing06i.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(6,9,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(7,1,'<com.GoldDream.TingTing06i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(8,4,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(9,9,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(10,1,'<com.GoldDream.TingTing06i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(11,10,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(12,2,'<com.GoldDream.TingTing06i.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(13,4,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(14,1,'<com.GoldDream.TingTing06i.TingTing21: void onCreate(android.os.Bundle)>',7,'s',NULL),(15,5,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(16,4,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(17,1,'<com.GoldDream.TingTing06i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(18,32,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(19,73,'<com.GoldDream.pg.PureGirls16$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(20,28,'<com.GoldDream.pg.PureGirls16: void onCreate(android.os.Bundle)>',7,'s',NULL),(21,37,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(22,29,'<com.GoldDream.pg.showAllPics: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(23,36,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(24,30,'<com.GoldDream.pg.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(25,29,'<com.GoldDream.pg.showAllPics: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(26,30,'<com.GoldDream.pg.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(27,36,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(28,29,'<com.GoldDream.pg.showAllPics: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(29,36,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(30,28,'<com.GoldDream.pg.PureGirls16: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(31,28,'<com.GoldDream.pg.PureGirls16: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(32,28,'<com.GoldDream.pg.PureGirls16: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(33,71,'<com.GoldDream.pg03.showAllPics: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(34,75,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(35,79,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(36,71,'<com.GoldDream.pg03.showAllPics: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(37,79,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(38,70,'<com.GoldDream.pg03.PureGirls16: void onCreate(android.os.Bundle)>',7,'s',NULL),(39,79,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(40,70,'<com.GoldDream.pg03.PureGirls16: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(41,72,'<com.GoldDream.pg03.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(42,71,'<com.GoldDream.pg03.showAllPics: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(43,102,'<com.GoldDream.pg03.PureGirls16$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(44,72,'<com.GoldDream.pg03.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(45,80,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(46,70,'<com.GoldDream.pg03.PureGirls16: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(47,70,'<com.GoldDream.pg03.PureGirls16: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(48,104,'<com.wooboo.adlib_android.WoobooAdView$3$0: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(49,25,'<com.sjli.client.zjjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',14,'a',NULL),(50,105,'<cn.domob.android.a.d: java.net.Proxy a(android.content.Context)>',86,'p',NULL),(51,27,'<com.sjli.client.zjjReceiver: void onReceive(android.content.Context,android.content.Intent)>',28,'s',NULL),(52,14,'<com.sjli.client.HHandPics: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(53,106,'<com.wooboo.download.d: boolean c(android.content.Context,java.lang.String)>',13,'a',NULL),(54,107,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(55,108,'<cn.domob.android.ads.p$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(56,12,'<com.sjli.TingTing.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(57,109,'<com.wooboo.adlib_android.AdLayout$5: void onClick(android.view.View)>',14,'a',NULL),(58,27,'<com.sjli.client.zjjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(59,110,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(60,111,'<com.wooboo.adlib_android.AdActivity$b_$0: void onClick(android.view.View)>',27,'a',NULL),(61,112,'<cn.domob.android.ads.g$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(62,113,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(63,12,'<com.sjli.TingTing.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(64,16,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(65,114,'<cn.domob.android.ads.p: void v(cn.domob.android.ads.p)>',6,'a',NULL),(66,25,'<com.sjli.client.zjjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',23,'a',NULL),(67,12,'<com.sjli.TingTing.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(68,115,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor n(android.content.Context)>',9,'p',NULL),(69,27,'<com.sjli.client.zjjReceiver: void startObjActivity(android.content.Context)>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,6),(2,2,6),(3,3,7),(4,5,7),(5,7,6),(6,8,8),(7,10,8),(8,11,9),(9,12,6),(10,13,10),(11,14,6),(12,15,9),(13,17,10),(14,18,6),(15,19,6),(16,20,6),(17,21,7),(18,22,7),(19,25,10),(20,26,6),(21,27,6),(22,28,6),(23,30,6),(24,31,9),(25,32,6),(26,33,8),(27,34,6),(28,36,6),(29,37,6),(30,38,6),(31,39,7),(32,40,7),(33,41,9),(34,43,6),(35,45,8),(36,46,6),(37,47,6),(38,48,6),(39,50,6),(40,51,10),(41,52,6),(42,54,7),(43,55,8),(44,56,10),(45,58,7),(46,59,6),(47,60,6),(48,62,6),(49,63,6),(50,64,6),(51,65,6),(52,66,6),(53,67,7),(54,68,10),(55,69,14),(56,70,14),(57,71,14),(58,72,14),(59,73,14),(60,74,14),(61,75,14),(62,76,14),(63,77,14),(64,78,14),(65,79,14),(66,80,14),(67,81,14),(68,82,14),(69,83,14),(70,84,14),(71,85,6),(72,86,6),(73,87,6),(74,88,6),(75,89,6),(76,90,6),(77,91,6),(78,92,6),(79,93,6),(80,95,6),(81,96,7),(82,97,7),(83,98,6),(84,99,6),(85,100,6);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com.android.packageinstaller.PackageInstallerActivity'),(2,4,'hww/com/tanker/gameActivity'),(3,6,'hww/com/tanker/SelectLevel'),(4,9,'com/GoldDream/TingTing06i/readme'),(5,13,'com/GoldDream/zj/zjService'),(6,16,'com/GoldDream/zj/zjService'),(7,17,'com/GoldDream/zj/zjService'),(8,18,'com.android.packageinstaller.PackageInstallerActivity'),(9,23,'com/GoldDream/pg/showAllPics'),(10,24,'com/GoldDream/zj/zjService'),(11,25,'com/GoldDream/zj/zjService'),(12,27,'com.android.packageinstaller.PackageInstallerActivity'),(13,29,'com/GoldDream/pg/readme'),(14,35,'com/GoldDream/pg/readme'),(15,42,'com/GoldDream/pg03/readme'),(16,43,'com.android.packageinstaller.PackageInstallerActivity'),(17,44,'com/GoldDream/zj/zjService'),(18,49,'com/GoldDream/pg03/showAllPics'),(19,51,'com/GoldDream/zj/zjService'),(20,53,'com/GoldDream/pg03/readme'),(21,56,'com/sjli/client/zjjService'),(22,57,'com/sjli/client/viewpic'),(23,68,'com/sjli/client/zjjService'),(24,94,'com/sjli/TingTing/readme'),(25,99,'com.android.packageinstaller.PackageInstallerActivity'),(26,101,'com/sjli/client/HHandPics');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,3,3),(4,5,4),(5,7,5),(6,8,6),(7,10,7),(8,11,8),(9,12,9),(10,14,10),(11,15,11),(12,18,12),(13,19,13),(14,20,14),(15,21,15),(16,22,16),(17,26,17),(18,27,18),(19,28,19),(20,30,20),(21,31,21),(22,32,22),(23,33,23),(24,34,24),(25,36,25),(26,37,26),(27,38,27),(28,39,28),(29,40,29),(30,41,30),(31,43,31),(32,45,32),(33,46,33),(34,47,34),(35,48,35),(36,50,36),(37,52,37),(38,54,38),(39,55,39),(40,58,41),(41,59,42),(42,60,43),(43,62,44),(44,63,45),(45,64,46),(46,65,47),(47,66,48),(48,67,49),(49,85,50),(50,86,51),(51,87,52),(52,88,53),(53,89,54),(54,90,55),(55,91,56),(56,92,57),(57,93,58),(58,95,59),(59,96,60),(60,97,61),(61,98,62),(62,99,63),(63,100,64);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'level'),(2,6,'maxLevel'),(3,23,'objSelect'),(4,49,'objSelect'),(5,57,'objUrl'),(6,69,'android.intent.extra.INTENT'),(7,70,'android.intent.extra.INTENT'),(8,71,'android.intent.extra.TITLE'),(9,71,'android.intent.extra.INTENT'),(10,72,'android.intent.extra.INTENT'),(11,73,'android.intent.extra.TITLE'),(12,73,'android.intent.extra.INTENT'),(13,74,'android.intent.extra.INTENT'),(14,75,'android.intent.extra.TITLE'),(15,75,'android.intent.extra.INTENT'),(16,76,'android.intent.extra.TITLE'),(17,76,'android.intent.extra.INTENT'),(18,77,'android.intent.extra.INTENT'),(19,78,'android.intent.extra.INTENT'),(20,79,'android.intent.extra.TITLE'),(21,79,'android.intent.extra.INTENT'),(22,80,'android.intent.extra.INTENT'),(23,81,'android.intent.extra.TITLE'),(24,81,'android.intent.extra.INTENT'),(25,82,'android.intent.extra.INTENT'),(26,83,'android.intent.extra.TITLE'),(27,83,'android.intent.extra.INTENT'),(28,84,'android.intent.extra.TITLE'),(29,84,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,3,1),(7,4,2),(8,4,3),(9,4,4),(10,4,5),(11,5,12),(12,5,11),(13,6,1),(14,7,3),(15,7,5),(16,8,1),(17,9,4),(18,9,5),(19,9,2),(20,9,3),(21,10,1),(22,11,5),(23,11,3),(24,12,13),(25,13,1),(26,14,5),(27,14,2),(28,14,4),(29,14,3),(30,15,1),(31,16,3),(32,16,5),(33,17,13),(34,18,13),(35,19,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,6,1),(4,8,1),(5,10,1),(6,13,1),(7,15,1);
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
INSERT INTO `IFData` VALUES (1,12,'package',NULL,NULL,NULL,NULL,NULL),(2,17,'package',NULL,NULL,NULL,NULL,NULL),(3,18,'package',NULL,NULL,NULL,NULL,NULL),(4,19,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,3,'(.*)','(.*)'),(2,21,'(.*)','(.*)'),(3,39,'(.*)','(.*)'),(4,58,'(.*)','(.*)'),(5,60,'application','vnd.android.package-archive'),(6,62,'application','vnd.android.package-archive'),(7,63,'application','vnd.android.package-archive'),(8,64,'application','vnd.android.package-archive'),(9,65,'application','vnd.android.package-archive'),(10,85,'application','vnd.android.package-archive'),(11,86,'application','vnd.android.package-archive'),(12,87,'application','vnd.android.package-archive'),(13,88,'application','vnd.android.package-archive'),(14,89,'application','vnd.android.package-archive'),(15,90,'application','vnd.android.package-archive'),(16,91,'application','vnd.android.package-archive'),(17,92,'application','vnd.android.package-archive'),(18,93,'application','vnd.android.package-archive'),(19,96,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.android.packageinstaller'),(2,4,'hww.com.tanker'),(3,6,'hww.com.tanker'),(4,9,'com.GoldDream.TingTing06i'),(5,13,'hww.com.tanker'),(6,16,'com.GoldDream.TingTing06i'),(7,17,'com.GoldDream.TingTing06i'),(8,18,'com.android.packageinstaller'),(9,23,'com.GoldDream.pg'),(10,24,'com.GoldDream.pg'),(11,25,'com.GoldDream.pg'),(12,27,'com.android.packageinstaller'),(13,29,'com.GoldDream.pg'),(14,35,'com.GoldDream.pg'),(15,42,'com.GoldDream.pg03'),(16,43,'com.android.packageinstaller'),(17,44,'com.GoldDream.pg03'),(18,49,'com.GoldDream.pg03'),(19,51,'com.GoldDream.pg03'),(20,53,'com.GoldDream.pg03'),(21,56,'com.sjli.TingTing'),(22,57,'com.sjli.TingTing'),(23,68,'com.sjli.TingTing'),(24,94,'com.sjli.TingTing'),(25,99,'com.android.packageinstaller'),(26,101,'com.sjli.TingTing');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,10,0),(5,11,0),(6,12,0),(7,27,0),(8,28,0),(9,37,0),(10,38,0),(11,67,0),(12,68,0),(13,70,0),(14,79,0),(15,80,0),(16,99,0),(17,100,0),(18,101,0),(19,101,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,1,1,0),(4,3,0,0),(5,1,1,0),(6,4,0,0),(7,5,1,0),(8,6,1,0),(9,7,0,0),(10,8,1,0),(11,9,1,0),(12,10,1,0),(13,11,0,0),(14,12,1,0),(15,13,1,0),(16,14,0,0),(17,15,0,0),(18,16,0,0),(19,17,1,0),(20,18,1,0),(21,18,1,0),(22,18,1,0),(23,19,0,0),(24,20,0,0),(25,21,0,0),(26,22,1,0),(27,23,0,0),(28,24,1,0),(29,25,0,0),(30,26,1,0),(31,27,1,0),(32,28,1,0),(33,29,1,0),(34,30,1,0),(35,31,0,0),(36,32,1,0),(37,33,1,0),(38,34,1,0),(39,34,1,0),(40,34,1,0),(41,35,1,0),(42,36,0,0),(43,37,0,0),(44,38,0,0),(45,39,1,0),(46,40,1,0),(47,41,1,0),(48,42,1,0),(49,43,0,0),(50,44,1,0),(51,45,0,0),(52,46,1,0),(53,47,0,0),(54,48,1,0),(55,49,1,0),(56,51,0,0),(57,52,0,0),(58,53,1,0),(59,54,1,0),(60,55,1,0),(61,55,1,0),(62,55,1,0),(63,55,1,0),(64,55,1,0),(65,55,1,0),(66,56,1,0),(67,57,1,0),(68,58,0,0),(69,59,1,0),(70,59,1,0),(71,59,1,0),(72,59,1,0),(73,59,1,0),(74,59,1,0),(75,59,1,0),(76,59,1,0),(77,60,1,0),(78,60,1,0),(79,60,1,0),(80,60,1,0),(81,60,1,0),(82,60,1,0),(83,60,1,0),(84,60,1,0),(85,62,1,0),(86,62,1,0),(87,62,1,0),(88,62,1,0),(89,62,1,0),(90,62,1,0),(91,62,1,0),(92,62,1,0),(93,62,1,0),(94,63,0,0),(95,64,1,0),(96,64,1,0),(97,64,1,0),(98,65,1,0),(99,66,0,0),(100,67,1,0),(101,69,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,80,2,NULL),(2,5,80,2,NULL),(3,15,80,2,NULL),(4,11,80,2,NULL),(5,95,80,2,NULL),(6,97,80,2,NULL),(7,20,80,2,NULL),(8,22,80,2,NULL),(9,31,80,2,NULL),(10,38,80,2,NULL),(11,40,80,2,NULL),(12,41,80,2,NULL),(13,1,99,2,NULL),(14,5,99,2,NULL),(15,15,99,2,NULL),(16,11,99,2,NULL),(17,95,99,2,NULL),(18,97,99,2,NULL),(19,20,99,2,NULL),(20,22,99,2,NULL),(21,31,99,2,NULL),(22,38,99,2,NULL),(23,40,99,2,NULL),(24,41,99,2,NULL),(25,24,4,2,NULL),(26,24,9,2,NULL),(27,24,36,2,NULL),(28,24,78,2,NULL),(29,35,30,2,NULL),(30,1,28,2,NULL),(31,5,28,2,NULL),(32,15,28,2,NULL),(33,11,28,2,NULL),(34,95,28,2,NULL),(35,97,28,2,NULL),(36,20,28,2,NULL),(37,22,28,2,NULL),(38,31,28,2,NULL),(39,38,28,2,NULL),(40,40,28,2,NULL),(41,41,28,2,NULL),(42,29,30,2,NULL),(43,20,1,2,NULL),(44,22,1,2,NULL),(45,20,5,2,NULL),(46,22,5,2,NULL),(47,20,11,2,NULL),(48,22,11,2,NULL),(49,20,6,2,NULL),(50,22,6,2,NULL),(51,20,10,2,NULL),(52,22,10,2,NULL),(53,20,12,2,NULL),(54,22,12,2,NULL),(55,20,27,2,NULL),(56,22,27,2,NULL),(57,20,37,2,NULL),(58,22,37,2,NULL),(59,20,38,2,NULL),(60,22,38,2,NULL),(61,20,67,2,NULL),(62,22,67,2,NULL),(63,20,70,2,NULL),(64,22,70,2,NULL),(65,20,79,2,NULL),(66,22,79,2,NULL),(67,31,1,2,NULL),(68,31,5,2,NULL),(69,31,11,2,NULL),(70,31,6,2,NULL),(71,31,10,2,NULL),(72,31,12,2,NULL),(73,31,27,2,NULL),(74,31,37,2,NULL),(75,31,38,2,NULL),(76,31,67,2,NULL),(77,31,70,2,NULL),(78,31,79,2,NULL),(79,25,4,2,NULL),(80,25,9,2,NULL),(81,25,36,2,NULL),(82,25,78,2,NULL),(83,1,37,2,NULL),(84,5,37,2,NULL),(85,15,37,2,NULL),(86,11,37,2,NULL),(87,95,37,2,NULL),(88,97,37,2,NULL),(89,38,37,2,NULL),(90,40,37,2,NULL),(91,41,37,2,NULL),(92,9,2,2,NULL),(93,16,4,2,NULL),(94,16,9,2,NULL),(95,16,36,2,NULL),(96,16,78,2,NULL),(97,1,1,2,NULL),(98,5,1,2,NULL),(99,15,1,2,NULL),(100,11,1,2,NULL),(101,95,1,2,NULL),(102,97,1,2,NULL),(103,38,1,2,NULL),(104,40,1,2,NULL),(105,41,1,2,NULL),(106,1,5,2,NULL),(107,5,5,2,NULL),(108,1,11,2,NULL),(109,5,11,2,NULL),(110,1,6,2,NULL),(111,5,6,2,NULL),(112,1,10,2,NULL),(113,5,10,2,NULL),(114,1,12,2,NULL),(115,5,12,2,NULL),(116,1,27,2,NULL),(117,5,27,2,NULL),(118,1,38,2,NULL),(119,5,38,2,NULL),(120,1,67,2,NULL),(121,5,67,2,NULL),(122,1,70,2,NULL),(123,5,70,2,NULL),(124,1,79,2,NULL),(125,5,79,2,NULL),(126,15,5,2,NULL),(127,15,11,2,NULL),(128,15,6,2,NULL),(129,15,10,2,NULL),(130,15,12,2,NULL),(131,15,27,2,NULL),(132,15,38,2,NULL),(133,15,67,2,NULL),(134,15,70,2,NULL),(135,15,79,2,NULL),(136,17,4,2,NULL),(137,17,9,2,NULL),(138,17,36,2,NULL),(139,17,78,2,NULL),(140,11,5,2,NULL),(141,95,5,2,NULL),(142,97,5,2,NULL),(143,38,5,2,NULL),(144,40,5,2,NULL),(145,41,5,2,NULL),(146,11,11,2,NULL),(147,95,11,2,NULL),(148,97,11,2,NULL),(149,38,11,2,NULL),(150,40,11,2,NULL),(151,41,11,2,NULL),(152,11,38,2,NULL),(153,95,38,2,NULL),(154,97,38,2,NULL),(155,38,38,2,NULL),(156,40,38,2,NULL),(157,41,38,2,NULL),(158,11,67,2,NULL),(159,95,67,2,NULL),(160,97,67,2,NULL),(161,38,67,2,NULL),(162,40,67,2,NULL),(163,41,67,2,NULL),(164,44,4,2,NULL),(165,44,9,2,NULL),(166,44,36,2,NULL),(167,44,78,2,NULL),(168,53,72,2,NULL),(169,11,70,2,NULL),(170,95,70,2,NULL),(171,97,70,2,NULL),(172,38,70,2,NULL),(173,40,70,2,NULL),(174,41,70,2,NULL),(175,42,72,2,NULL),(176,38,6,2,NULL),(177,40,6,2,NULL),(178,38,10,2,NULL),(179,40,10,2,NULL),(180,38,12,2,NULL),(181,40,12,2,NULL),(182,38,27,2,NULL),(183,40,27,2,NULL),(184,38,79,2,NULL),(185,40,79,2,NULL),(186,41,6,2,NULL),(187,41,10,2,NULL),(188,41,12,2,NULL),(189,41,27,2,NULL),(190,41,79,2,NULL),(191,51,4,2,NULL),(192,51,9,2,NULL),(193,51,36,2,NULL),(194,51,78,2,NULL),(195,11,79,2,NULL),(196,95,79,2,NULL),(197,97,79,2,NULL),(198,4,8,2,NULL),(199,6,7,2,NULL),(200,11,6,2,NULL),(201,95,6,2,NULL),(202,97,6,2,NULL),(203,11,10,2,NULL),(204,11,12,2,NULL),(205,11,27,2,NULL),(206,13,4,2,NULL),(207,13,9,2,NULL),(208,13,36,2,NULL),(209,13,78,2,NULL),(210,95,10,2,NULL),(211,97,10,2,NULL),(212,94,13,2,NULL),(213,95,12,2,NULL),(214,97,12,2,NULL),(215,57,15,2,NULL),(216,57,46,2,NULL),(217,57,83,2,NULL),(218,95,27,2,NULL),(219,97,27,2,NULL),(220,56,25,2,NULL),(221,56,65,2,NULL),(222,56,97,2,NULL),(223,68,25,2,NULL),(224,68,65,2,NULL),(225,68,97,2,NULL),(226,101,14,2,NULL),(227,101,45,2,NULL),(228,101,82,2,NULL);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.droidhen.game.cityjjumper.ScoreClient');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(22,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(15,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.CALL_PHONE'),(21,'android.permission.CHANGE_WIFI_STATE'),(2,'android.permission.DELETE_PACKAGES'),(1,'android.permission.INSTALL_PACKAGES'),(13,'android.permission.INTERNET'),(4,'android.permission.PROCESS_OUTGOING_CALLS'),(18,'android.permission.READ_EXTERNAL_STORAGE'),(10,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_SMS'),(3,'android.permission.SEND_SMS'),(17,'android.permission.VIBRATE'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(20,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(19,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(16,'com.android.vending.CHECK_LICENSE');
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
INSERT INTO `Providers` VALUES (1,69,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9964&cid=1000',NULL,NULL,NULL),(6,'package','(.*)',NULL,NULL,NULL,NULL),(7,'package','(.*)',NULL,NULL,NULL,NULL),(8,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(9,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9964&cid=1000',NULL,NULL,NULL),(10,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9964&cid=1000',NULL,NULL,NULL),(11,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9964&cid=1000',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9973&cid=1000',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9973&cid=1000',NULL,NULL,NULL),(20,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9973&cid=1000',NULL,NULL,NULL),(21,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9973&cid=1000',NULL,NULL,NULL),(23,'package','(.*)',NULL,NULL,NULL,NULL),(24,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9973',NULL,NULL,NULL),(25,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9973',NULL,NULL,NULL),(26,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9972&cid=1000',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,'package','(.*)',NULL,NULL,NULL,NULL),(33,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9972&cid=1000',NULL,NULL,NULL),(34,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9972&cid=1000',NULL,NULL,NULL),(35,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9972&cid=1000',NULL,NULL,NULL),(36,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9972&cid=1000',NULL,NULL,NULL),(37,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9972&cid=1000',NULL,NULL,NULL),(38,NULL,NULL,'',NULL,NULL,NULL),(39,'package','(.*)',NULL,NULL,NULL,NULL),(40,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(44,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(47,NULL,NULL,'file://',NULL,NULL,NULL),(48,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9996',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(58,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(63,NULL,NULL,'(.*)',NULL,NULL,NULL),(64,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9996',NULL,NULL,NULL),(65,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,50,40),(2,68,65);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,2,17),(17,2,16),(18,2,1),(19,2,2),(20,2,4),(21,2,7),(22,2,8),(23,2,10),(24,2,11),(25,2,12),(26,2,13),(27,3,1),(28,3,2),(29,3,4),(30,3,5),(31,3,6),(32,3,8),(33,3,10),(34,3,12),(35,3,13),(36,3,14),(37,3,15),(38,3,19),(39,3,18),(40,3,20),(41,4,1),(42,4,2),(43,4,3),(44,4,4),(45,4,5),(46,4,6),(47,4,7),(48,4,8),(49,4,9),(50,4,10),(51,4,11),(52,4,12),(53,4,13),(54,4,14),(55,4,15),(56,5,19),(57,5,18),(58,5,21),(59,5,20),(60,5,5),(61,5,6),(62,5,22),(63,5,8),(64,5,10),(65,5,12),(66,5,13),(67,5,14),(68,5,15),(69,6,1),(70,6,2),(71,6,3),(72,6,4),(73,6,5),(74,6,6),(75,6,7),(76,6,8),(77,6,9),(78,6,10),(79,6,11),(80,6,12),(81,6,13),(82,6,14),(83,6,15),(84,7,1),(85,7,2),(86,7,5),(87,7,6),(88,7,8),(89,7,10),(90,7,12),(91,7,13),(92,7,14),(93,7,15),(94,7,19),(95,7,18),(96,7,20);
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

-- Dump completed on 2015-10-12  3:30:33
