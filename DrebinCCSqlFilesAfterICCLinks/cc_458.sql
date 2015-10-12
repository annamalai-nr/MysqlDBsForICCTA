-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_458
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (14,'(.*)'),(5,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CALL'),(11,'android.intent.action.CHOOSER'),(8,'android.intent.action.DELETE'),(12,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.NEW_OUTGOING_CALL'),(10,'android.intent.action.PACKAGE_ADDED'),(3,'android.intent.action.PHONE_STATE'),(7,'android.intent.action.RUN'),(13,'android.intent.action.SENDTO'),(6,'android.intent.action.VIEW'),(17,'android.intent.action.WEB_SEARCH'),(15,'android.net.wifi.SCAN_RESULTS'),(4,'android.provider.Telephony.SMS_RECEIVED'),(16,'com.tencent.lbsapi.GPS_SINGLE');
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
INSERT INTO `Applications` VALUES (1,'com.GoldDream.TingTing',1),(2,'com.rainbow.Dizz',4),(3,'com.droidstu.game.devilninja',2),(4,'com.cnvcs.junqii',6),(5,'com.sjli.TingTing10II',1),(6,'com.sjli.TingTing01II',1),(7,'com.anzoo.a1278319831688',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.GoldDream.TingTing.TingTing21'),(2,1,'com.GoldDream.TingTing.readme'),(3,2,'com.rainbow.Dizz.Diz'),(4,2,'com.rainbow.Dizz.Diz2'),(5,2,'com.rainbow.Dizz.Diz3'),(6,2,'com.sjhi.client.HandPics'),(7,2,'com.sjhi.client.zjService'),(8,2,'com.sjhi.client.zjReceiver'),(9,3,'com.droidstu.game.devilninja.MenuActivity'),(10,3,'com.scoreloop.android.coreui.HighscoresActivity'),(11,3,'com.scoreloop.android.coreui.ProfileActivity'),(12,3,'com.droidstu.game.devilninja.MainActivity'),(13,3,'com.droidstu.game.devilninja.TipsActivity'),(14,3,'com.droidstu.game.devilninja.GameoverActivity'),(15,3,'com.droidstu.game.devilninja.Prefs'),(16,3,'com.GoldDream.zj.zjService'),(17,3,'com.GoldDream.zj.zjReceiver'),(18,4,'com.cnvcs.App'),(19,4,'net.youmi.android.AdActivity'),(20,4,'cn.domob.android.ads.DomobActivity'),(21,4,'com.sjgo.client.HandPics'),(22,4,'com.sjgo.client.oa_fengjing'),(23,4,'com.sjgo.client.oa_girl'),(24,4,'com.sjgo.client.oa_animal'),(25,4,'com.sjgo.client.oa_dongman'),(26,4,'com.sjgo.client.oa_feizhuliu'),(27,4,'com.sjgo.client.viewpic'),(28,4,'com.sjgo.client.zjService'),(29,4,'com.sjgo.client.zjReceiver'),(30,4,'cn.domob.android.a.a$a'),(31,4,'cn.domob.android.ads.o$5'),(32,4,'cn.domob.android.ads.e'),(33,4,'cn.domob.android.ads.g$1'),(34,4,'net.youmi.android.be'),(35,4,'cn.domob.android.ads.DomobAdManager'),(36,4,'cn.domob.android.ads.o'),(37,4,'net.youmi.android.t'),(38,5,'com.sjli.TingTing10II.TingTing21'),(39,5,'com.sjli.TingTing10II.readme'),(40,5,'com.sjli.client.HHandPics'),(41,5,'com.sjli.client.viewpic'),(42,5,'com.google.ads.AdActivity'),(43,5,'cn.domob.android.ads.DomobActivity'),(44,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(45,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(46,5,'com.mt.airad.MultiAD'),(47,5,'net.youmi.android.AdActivity'),(48,5,'net.youmi.android.spotad.AdActivity'),(49,5,'com.wooboo.adlib_android.AdActivity'),(50,5,'com.wooboo.adlib_android.FullActivity'),(51,5,'com.sjli.client.zjjService'),(52,5,'com.admogo.UpdateService'),(53,5,'com.sjli.client.zjjReceiver'),(54,6,'com.sjli.TingTing01II.TingTing21'),(55,6,'com.sjli.TingTing01II.readme'),(56,6,'com.sjli.client.HHandPics'),(57,6,'com.sjli.client.viewpic'),(58,6,'com.google.ads.AdActivity'),(59,6,'cn.domob.android.ads.DomobActivity'),(60,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(61,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(62,6,'com.mt.airad.MultiAD'),(63,6,'net.youmi.android.AdActivity'),(64,6,'net.youmi.android.spotad.AdActivity'),(65,6,'com.wooboo.adlib_android.AdActivity'),(66,6,'com.wooboo.adlib_android.FullActivity'),(67,6,'com.sjli.client.zjjService'),(68,6,'com.admogo.UpdateService'),(69,6,'com.sjli.client.zjjReceiver'),(70,7,'com.sjli.client.MogoStart'),(71,7,'com.anzoo.a1278319831688.Main'),(72,7,'com.sjli.client.HHandPics'),(73,7,'com.sjli.client.viewpic'),(74,7,'com.google.ads.AdActivity'),(75,7,'cn.domob.android.ads.DomobActivity'),(76,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(77,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(78,7,'net.youmi.android.AdActivity'),(79,7,'net.youmi.android.spotad.AdActivity'),(80,7,'com.wooboo.adlib_android.AdActivity'),(81,7,'com.wooboo.adlib_android.FullActivity'),(82,7,'com.tencent.mobwin.MobinWINBrowserActivity'),(83,7,'com.adchina.android.ads.views.AdBrowserView'),(84,7,'com.adchina.android.ads.views.FullScreenAdActivity'),(85,7,'cn.appmedia.ad.AdActivity'),(86,7,'com.winad.android.ads.VideoPlayerActivity'),(87,7,'com.suizong.mobplate.ads.AdActivity'),(88,7,'com.mt.airad.MultiAD'),(89,7,'com.lmmob.ad.sdk.LmMobAdWebView'),(90,7,'com.lmmob.ad.sdk.LmMobFullImageActivity'),(91,7,'net.winsmedia.WebViewActivity'),(92,7,'com.baidu.AppActivity'),(93,7,'com.sjli.client.zjjService'),(94,7,'com.admogo.UpdateService'),(95,7,'com.sjli.client.zjjReceiver'),(96,7,'com.winad.android.ads.ReciveInstallPackage'),(97,7,'com.mt.airad.IIIIlllIlllIIIII'),(98,7,'com.winad.android.ads.d'),(99,7,'com.tencent.mobwin.core.k'),(100,7,'com.sjli.client.MogoStart$1'),(101,7,'net.youmi.android.en'),(102,7,'com.google.ads.util.AdUtil$UserActivityReceiver'),(103,7,'com.tencent.lbsapi.core.c'),(104,7,'com.tencent.lbsapi.core.a'),(105,7,'com.tencent.mobwin.utils.ApkInstalReceiver'),(106,7,'com.sjli.client.MogoStart$7'),(107,7,'com.sjli.client.MogoStart$4'),(108,7,'com.winad.android.ads.ae'),(109,7,'net.youmi.android.w'),(110,7,'com.tencent.mobwin.core.w'),(111,7,'com.sjli.client.MogoStart$6'),(112,7,'net.youmi.android.bj'),(113,6,'com.mt.airad.IIIIlllIlllIIIII'),(114,6,'com.wooboo.adlib_android.WoobooAdView$3$0'),(115,6,'net.youmi.android.t'),(116,6,'cn.domob.android.ads.p'),(117,6,'net.youmi.android.be'),(118,6,'com.wooboo.download.d'),(119,6,'cn.domob.android.ads.p$5'),(120,6,'cn.domob.android.ads.g$2'),(121,6,'cn.domob.android.ads.DomobAdManager'),(122,6,'cn.domob.android.ads.e'),(123,6,'cn.domob.android.a.d'),(124,6,'com.wooboo.adlib_android.AdActivity$b_$0'),(125,6,'com.wooboo.adlib_android.AdLayout$5'),(126,5,'cn.domob.android.ads.DomobAdManager'),(127,5,'com.wooboo.adlib_android.WoobooAdView$3$0'),(128,5,'cn.domob.android.ads.e'),(129,5,'net.youmi.android.be'),(130,5,'cn.domob.android.ads.p$5'),(131,5,'cn.domob.android.ads.p'),(132,5,'com.wooboo.adlib_android.AdLayout$5'),(133,5,'com.wooboo.adlib_android.AdActivity$b_$0'),(134,5,'com.wooboo.download.d'),(135,5,'com.mt.airad.IIIIlllIlllIIIII'),(136,5,'cn.domob.android.ads.g$2'),(137,5,'net.youmi.android.t'),(138,5,'cn.domob.android.a.d');
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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,1,'Market_ID'),(2,8,'pdus'),(3,8,'incoming_number'),(4,8,'android.intent.extra.PHONE_NUMBER'),(5,17,'incoming_number'),(6,17,'android.intent.extra.PHONE_NUMBER'),(7,14,'curScore'),(8,14,'highScore'),(9,17,'pdus'),(10,18,'UMENG_CHANNEL'),(11,28,'DOMOB_PID'),(12,19,'DOMOB_PID'),(13,28,'DOMOB_ALLOW_LOCATION'),(14,19,'DOMOB_ALLOW_LOCATION'),(15,29,'android.intent.extra.PHONE_NUMBER'),(16,20,'appId'),(17,20,'actType'),(18,27,'objUrl'),(19,19,'EB80F3291A8E469c962CA133BDC549D7'),(20,28,'DOMOB_TEST_MODE'),(21,19,'DOMOB_TEST_MODE'),(22,19,'D780FBF4215247bcBB1AC0AD33C474FE'),(23,19,'D50EF1926ADD471892E72BCE6D7E032C'),(24,29,'incoming_number'),(25,20,'appName'),(26,18,'UMENG_APPKEY'),(27,19,'172C94EDC717477aBF600D7898A64A8E'),(28,29,'pdus'),(29,82,'AD_ID'),(30,71,'EB80F3291A8E469c962CA133BDC549D7'),(31,79,'URL'),(32,71,'YOUMI_CHANNEL'),(33,75,'YOUMI_CHANNEL'),(34,75,'APP_ID'),(35,70,'shouldEnableBottomBar'),(36,87,'mogo_title'),(37,82,'lmmob_send_data'),(38,69,'overlayTitle'),(39,69,'overlayTransition'),(40,70,'overlayTitle'),(41,68,'appId'),(42,71,'ArgName'),(43,75,'ArgName'),(44,83,'lmmob_send_data'),(45,77,'ArgName'),(46,68,'actType'),(47,69,'shouldShowTitlebar'),(48,87,'mogo_link'),(49,70,'shouldShowBottomBar'),(50,75,'APP_CHANNEL'),(51,78,'url'),(52,67,'com.google.ads.AdOpener'),(53,70,'overlayTransition'),(54,66,'objUrl'),(55,70,'shouldResizeOverlay'),(56,71,'172C94EDC717477aBF600D7898A64A8E'),(57,77,'mAdType'),(58,81,'adID'),(59,70,'shouldShowTitlebar'),(60,69,'shouldMakeOverlayTransparent'),(61,82,'operationURL'),(62,69,'recurl'),(63,69,'url'),(64,75,'URL'),(65,83,'operationURL'),(66,70,'shouldMakeOverlayTransparent'),(67,69,'shouldEnableBottomBar'),(68,81,'adURL'),(69,70,'transitionTime'),(70,76,'browserurl'),(71,75,'browserurl'),(72,70,'FSAd'),(73,77,'Time'),(74,69,'shouldResizeOverlay'),(75,69,'transitionTime'),(76,71,'D780FBF4215247bcBB1AC0AD33C474FE'),(77,75,'EFFECTIVE_TYPE'),(78,68,'msg'),(79,71,'D50EF1926ADD471892E72BCE6D7E032C'),(80,69,'shouldShowBottomBar'),(81,68,'appName'),(82,53,'shouldMakeOverlayTransparent'),(83,58,'(.*)'),(84,54,'shouldShowBottomBar'),(85,55,'adURL'),(86,54,'shouldShowTitlebar'),(87,61,'DOMOB_TEST_MODE'),(88,54,'DOMOB_TEST_MODE'),(89,60,'DOMOB_TEST_MODE'),(90,53,'DOMOB_TEST_MODE'),(91,56,'DOMOB_TEST_MODE'),(92,51,'DOMOB_TEST_MODE'),(93,51,'action'),(94,56,'172C94EDC717477aBF600D7898A64A8E'),(95,52,'actType'),(96,53,'recurl'),(97,53,'shouldResizeOverlay'),(98,52,'msg'),(99,56,'EB80F3291A8E469c962CA133BDC549D7'),(100,54,'(.*)'),(101,61,'mogo_title'),(102,51,'params'),(103,55,'adID'),(104,54,'FSAd'),(105,54,'transitionTime'),(106,50,'objUrl'),(107,54,'overlayTransition'),(108,53,'overlayTitle'),(109,52,'appName'),(110,53,'shouldEnableBottomBar'),(111,53,'transitionTime'),(112,61,'DOMOB_PID'),(113,54,'DOMOB_PID'),(114,60,'DOMOB_PID'),(115,53,'DOMOB_PID'),(116,56,'DOMOB_PID'),(117,51,'DOMOB_PID'),(118,52,'appId'),(119,53,'url'),(120,54,'shouldMakeOverlayTransparent'),(121,54,'shouldResizeOverlay'),(122,53,'shouldShowTitlebar'),(123,61,'mogo_link'),(124,53,'shouldShowBottomBar'),(125,54,'overlayTitle'),(126,56,'D50EF1926ADD471892E72BCE6D7E032C'),(127,53,'overlayTransition'),(128,54,'shouldEnableBottomBar'),(129,56,'D780FBF4215247bcBB1AC0AD33C474FE'),(130,51,'com.google.ads.AdOpener'),(131,35,'action'),(132,42,'(.*)'),(133,37,'overlayTitle'),(134,38,'shouldMakeOverlayTransparent'),(135,36,'appId'),(136,40,'172C94EDC717477aBF600D7898A64A8E'),(137,38,'(.*)'),(138,37,'shouldResizeOverlay'),(139,38,'shouldEnableBottomBar'),(140,38,'overlayTitle'),(141,38,'shouldResizeOverlay'),(142,45,'mogo_link'),(143,36,'msg'),(144,34,'objUrl'),(145,36,'actType'),(146,37,'recurl'),(147,35,'com.google.ads.AdOpener'),(148,45,'mogo_title'),(149,37,'shouldShowTitlebar'),(150,37,'shouldMakeOverlayTransparent'),(151,38,'FSAd'),(152,40,'D50EF1926ADD471892E72BCE6D7E032C'),(153,37,'shouldEnableBottomBar'),(154,37,'shouldShowBottomBar'),(155,38,'overlayTransition'),(156,45,'DOMOB_PID'),(157,38,'DOMOB_PID'),(158,44,'DOMOB_PID'),(159,37,'DOMOB_PID'),(160,40,'DOMOB_PID'),(161,35,'DOMOB_PID'),(162,37,'overlayTransition'),(163,38,'shouldShowTitlebar'),(164,35,'params'),(165,36,'appName'),(166,39,'adURL'),(167,40,'EB80F3291A8E469c962CA133BDC549D7'),(168,45,'DOMOB_TEST_MODE'),(169,38,'DOMOB_TEST_MODE'),(170,44,'DOMOB_TEST_MODE'),(171,37,'DOMOB_TEST_MODE'),(172,40,'DOMOB_TEST_MODE'),(173,35,'DOMOB_TEST_MODE'),(174,37,'transitionTime'),(175,38,'transitionTime'),(176,38,'shouldShowBottomBar'),(177,40,'D780FBF4215247bcBB1AC0AD33C474FE'),(178,39,'adID'),(179,37,'url');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,32,'r',1,NULL,NULL),(31,38,'a',1,NULL,NULL),(32,39,'a',0,NULL,NULL),(33,40,'a',0,NULL,NULL),(34,41,'a',0,NULL,NULL),(35,42,'a',0,NULL,NULL),(36,43,'a',0,NULL,NULL),(37,44,'a',0,NULL,NULL),(38,45,'a',0,NULL,NULL),(39,46,'a',0,NULL,NULL),(40,47,'a',0,NULL,NULL),(41,48,'a',0,NULL,NULL),(42,49,'a',0,NULL,NULL),(43,50,'a',0,NULL,NULL),(44,51,'s',1,NULL,NULL),(45,52,'s',1,NULL,NULL),(46,53,'r',1,NULL,NULL),(47,54,'a',1,NULL,NULL),(48,55,'a',0,NULL,NULL),(49,56,'a',0,NULL,NULL),(50,57,'a',0,NULL,NULL),(51,58,'a',0,NULL,NULL),(52,59,'a',0,NULL,NULL),(53,60,'a',0,NULL,NULL),(54,61,'a',0,NULL,NULL),(55,62,'a',0,NULL,NULL),(56,63,'a',0,NULL,NULL),(57,64,'a',0,NULL,NULL),(58,65,'a',0,NULL,NULL),(59,66,'a',0,NULL,NULL),(60,67,'s',1,NULL,NULL),(61,68,'s',1,NULL,NULL),(62,69,'r',1,NULL,NULL),(63,70,'a',1,NULL,NULL),(64,71,'a',0,NULL,NULL),(65,72,'a',0,NULL,NULL),(66,73,'a',0,NULL,NULL),(67,74,'a',0,NULL,NULL),(68,75,'a',0,NULL,NULL),(69,76,'a',0,NULL,NULL),(70,77,'a',0,NULL,NULL),(71,78,'a',0,NULL,NULL),(72,79,'a',0,NULL,NULL),(73,80,'a',0,NULL,NULL),(74,81,'a',0,NULL,NULL),(75,82,'a',0,NULL,NULL),(76,83,'a',0,NULL,NULL),(77,84,'a',0,NULL,NULL),(78,85,'a',0,NULL,NULL),(79,86,'a',0,NULL,NULL),(80,87,'a',0,NULL,NULL),(81,88,'a',0,NULL,NULL),(82,89,'a',0,NULL,NULL),(83,90,'a',0,NULL,NULL),(84,91,'a',0,NULL,NULL),(85,92,'a',0,NULL,NULL),(86,93,'s',1,NULL,NULL),(87,94,'s',1,NULL,NULL),(88,95,'r',1,NULL,NULL),(89,96,'r',1,NULL,NULL),(90,101,'r',1,NULL,NULL),(91,102,'r',1,NULL,NULL),(92,103,'r',1,NULL,NULL),(93,104,'r',1,NULL,NULL),(94,105,'r',1,NULL,NULL),(95,105,'r',1,NULL,0),(96,122,'r',1,NULL,NULL),(97,128,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,8),(5,5,8),(6,6,7),(7,7,7),(8,8,7),(9,9,16),(10,10,16),(11,11,14),(12,12,11),(13,13,16),(14,14,10),(15,15,13),(16,16,17),(17,17,9),(18,18,28),(19,18,19),(20,19,26),(21,20,28),(22,20,19),(23,21,28),(24,21,19),(25,22,19),(26,23,28),(27,24,28),(28,24,19),(29,25,28),(30,25,19),(31,26,23),(32,27,25),(33,28,29),(34,29,28),(35,30,19),(36,31,28),(37,32,29),(38,33,22),(39,34,24),(40,35,81),(41,35,75),(42,36,89),(43,37,65),(44,38,71),(45,38,75),(46,39,88),(47,40,63),(48,41,71),(49,41,75),(50,42,88),(51,43,75),(52,43,71),(53,44,67),(54,45,75),(55,45,76),(56,46,71),(57,46,75),(58,47,86),(59,48,63),(60,49,75),(61,49,71),(62,50,63),(63,51,71),(64,51,75),(65,52,71),(66,52,75),(67,53,71),(68,53,75),(69,54,75),(70,54,71),(71,55,86),(72,56,75),(73,57,88),(74,58,75),(75,58,71),(76,59,63),(77,60,75),(78,60,71),(79,61,71),(80,61,75),(81,62,75),(82,62,71),(83,63,75),(84,63,71),(85,64,55),(86,65,56),(87,65,60),(88,65,61),(89,65,51),(90,65,54),(91,65,53),(92,66,62),(93,67,47),(94,68,56),(95,69,51),(96,69,61),(97,69,60),(98,69,56),(99,69,53),(100,69,54),(101,70,56),(102,71,56),(103,72,51),(104,73,60),(105,74,61),(106,74,60),(107,74,56),(108,74,54),(109,74,53),(110,74,51),(111,75,53),(112,75,51),(113,75,56),(114,75,54),(115,75,61),(116,75,60),(117,76,62),(118,77,47),(119,78,60),(120,78,53),(121,78,54),(122,78,56),(123,78,51),(124,78,61),(125,79,62),(126,80,60),(127,81,54),(128,81,53),(129,81,51),(130,81,61),(131,81,60),(132,81,56),(133,82,56),(134,82,58),(135,83,49),(136,84,56),(137,85,47),(138,86,45),(139,86,35),(140,86,38),(141,86,37),(142,86,40),(143,86,44),(144,87,31),(145,88,44),(146,88,45),(147,88,40),(148,88,35),(149,88,38),(150,88,37),(151,89,44),(152,90,40),(153,91,44),(154,92,40),(155,92,37),(156,92,38),(157,92,35),(158,92,45),(159,92,44),(160,93,40),(161,93,37),(162,93,38),(163,93,35),(164,93,45),(165,93,44),(166,94,40),(167,95,40),(168,95,42),(169,96,46),(170,97,31),(171,98,40),(172,99,39),(173,100,35),(174,100,38),(175,100,37),(176,100,40),(177,100,44),(178,100,45),(179,101,46),(180,102,46),(181,103,31),(182,104,40),(183,105,33),(184,106,35),(185,106,40),(186,106,38),(187,106,37),(188,106,45),(189,106,44),(190,107,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.GoldDream.TingTing.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(2,1,'<com.GoldDream.TingTing.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(3,1,'<com.GoldDream.TingTing.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(4,8,'<com.sjhi.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',94,'a',NULL),(5,8,'<com.sjhi.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(6,7,'<com.sjhi.client.zjService: void a()>',97,'a',NULL),(7,7,'<com.sjhi.client.zjService: void a()>',106,'a',NULL),(8,7,'<com.sjhi.client.zjService: void a()>',89,'a',NULL),(9,16,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(10,16,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(11,14,'<com.droidstu.game.devilninja.GameoverActivity: void onClick(android.view.View)>',10,'a',NULL),(12,11,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',4,'a',NULL),(13,16,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(14,10,'<com.scoreloop.android.coreui.HighscoresActivity: void a()>',3,'a',NULL),(15,13,'<com.droidstu.game.devilninja.TipsActivity: void onClick(android.view.View)>',7,'a',NULL),(16,17,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(17,9,'<com.droidstu.game.devilninja.MenuActivity: void onClick(android.view.View)>',7,'a',NULL),(18,30,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(19,26,'<com.sjgo.client.oa_feizhuliu: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(20,31,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(21,33,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(22,34,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(23,28,'<com.sjgo.client.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(24,35,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(25,36,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(26,23,'<com.sjgo.client.oa_girl: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(27,25,'<com.sjgo.client.oa_dongman: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(28,29,'<com.sjgo.client.zjReceiver: void startObjActivity(android.content.Context)>',8,'a',NULL),(29,28,'<com.sjgo.client.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(30,37,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(31,28,'<com.sjgo.client.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(32,29,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(33,22,'<com.sjgo.client.oa_fengjing: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(34,24,'<com.sjgo.client.oa_animal: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(35,97,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(36,98,'<com.winad.android.ads.d: void a(android.content.Context,java.lang.String)>',5,'a',NULL),(37,72,'<com.sjli.client.HHandPics: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(38,99,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',104,'a',NULL),(39,95,'<com.sjli.client.zjjReceiver: void startObjActivity(android.content.Context)>',7,'a',NULL),(40,100,'<com.sjli.client.MogoStart$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',21,'a',NULL),(41,99,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',111,'p',NULL),(42,95,'<com.sjli.client.zjjReceiver: void onReceive(android.content.Context,android.content.Intent)>',30,'s',NULL),(43,99,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',129,'a',NULL),(44,74,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(45,83,'<com.adchina.android.ads.views.AdBrowserView: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',13,'a',NULL),(46,99,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',192,'a',NULL),(47,93,'<com.sjli.client.zjjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',23,'a',NULL),(48,106,'<com.sjli.client.MogoStart$7: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(49,99,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',90,'p',NULL),(50,107,'<com.sjli.client.MogoStart$4: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(51,99,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',163,'a',NULL),(52,108,'<com.winad.android.ads.ae: void c(android.content.Context,java.lang.String)>',6,'a',NULL),(53,109,'<net.youmi.android.w: void onClick(android.view.View)>',48,'a',NULL),(54,99,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',67,'a',NULL),(55,93,'<com.sjli.client.zjjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',14,'a',NULL),(56,82,'<com.tencent.mobwin.MobinWINBrowserActivity: void a(java.lang.String,android.content.Context)>',18,'a',NULL),(57,95,'<com.sjli.client.zjjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(58,110,'<com.tencent.mobwin.core.w: void a(java.io.File,int)>',11,'a',NULL),(59,111,'<com.sjli.client.MogoStart$6: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(60,99,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',175,'a',NULL),(61,112,'<net.youmi.android.bj: void a(android.content.Context,java.lang.String)>',7,'a',NULL),(62,99,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',152,'a',NULL),(63,82,'<com.tencent.mobwin.MobinWINBrowserActivity: void c(java.lang.String,android.content.Context)>',9,'a',NULL),(64,113,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(65,114,'<com.wooboo.adlib_android.WoobooAdView$3$0: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(66,69,'<com.sjli.client.zjjReceiver: void onReceive(android.content.Context,android.content.Intent)>',28,'s',NULL),(67,54,'<com.sjli.TingTing01II.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(68,115,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(69,116,'<cn.domob.android.ads.p: void v(cn.domob.android.ads.p)>',6,'a',NULL),(70,117,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(71,118,'<com.wooboo.download.d: boolean c(android.content.Context,java.lang.String)>',13,'a',NULL),(72,58,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(73,67,'<com.sjli.client.zjjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',23,'a',NULL),(74,119,'<cn.domob.android.ads.p$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(75,120,'<cn.domob.android.ads.g$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(76,69,'<com.sjli.client.zjjReceiver: void startObjActivity(android.content.Context)>',7,'a',NULL),(77,54,'<com.sjli.TingTing01II.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(78,121,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor n(android.content.Context)>',9,'p',NULL),(79,69,'<com.sjli.client.zjjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(80,67,'<com.sjli.client.zjjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',14,'a',NULL),(81,123,'<cn.domob.android.a.d: java.net.Proxy a(android.content.Context)>',86,'p',NULL),(82,124,'<com.wooboo.adlib_android.AdActivity$b_$0: void onClick(android.view.View)>',27,'a',NULL),(83,56,'<com.sjli.client.HHandPics: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(84,125,'<com.wooboo.adlib_android.AdLayout$5: void onClick(android.view.View)>',14,'a',NULL),(85,54,'<com.sjli.TingTing01II.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(86,126,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor n(android.content.Context)>',9,'p',NULL),(87,38,'<com.sjli.TingTing10II.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(88,127,'<com.wooboo.adlib_android.WoobooAdView$3$0: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(89,51,'<com.sjli.client.zjjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',14,'a',NULL),(90,129,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(91,51,'<com.sjli.client.zjjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',23,'a',NULL),(92,130,'<cn.domob.android.ads.p$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(93,131,'<cn.domob.android.ads.p: void v(cn.domob.android.ads.p)>',6,'a',NULL),(94,132,'<com.wooboo.adlib_android.AdLayout$5: void onClick(android.view.View)>',14,'a',NULL),(95,133,'<com.wooboo.adlib_android.AdActivity$b_$0: void onClick(android.view.View)>',27,'a',NULL),(96,53,'<com.sjli.client.zjjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(97,38,'<com.sjli.TingTing10II.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(98,134,'<com.wooboo.download.d: boolean c(android.content.Context,java.lang.String)>',13,'a',NULL),(99,135,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(100,136,'<cn.domob.android.ads.g$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(101,53,'<com.sjli.client.zjjReceiver: void startObjActivity(android.content.Context)>',7,'a',NULL),(102,53,'<com.sjli.client.zjjReceiver: void onReceive(android.content.Context,android.content.Intent)>',28,'s',NULL),(103,38,'<com.sjli.TingTing10II.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(104,137,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(105,40,'<com.sjli.client.HHandPics: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(106,138,'<cn.domob.android.a.d: java.net.Proxy a(android.content.Context)>',86,'p',NULL),(107,42,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,6),(2,3,6),(3,5,7),(4,6,8),(5,7,6),(6,8,9),(7,9,6),(8,10,9),(9,13,8),(10,16,7),(11,18,6),(12,23,6),(13,25,6),(14,26,6),(15,27,6),(16,28,6),(17,29,6),(18,30,6),(19,31,6),(20,32,6),(21,33,6),(22,34,6),(23,35,6),(24,36,6),(25,37,6),(26,38,9),(27,39,6),(28,43,8),(29,44,11),(30,45,11),(31,46,11),(32,47,11),(33,48,11),(34,49,11),(35,50,11),(36,51,11),(37,52,6),(38,53,7),(39,56,6),(40,57,1),(41,58,1),(42,60,12),(43,63,7),(44,64,13),(45,65,6),(46,66,14),(47,67,14),(48,68,6),(49,69,6),(50,71,6),(51,74,6),(52,75,6),(53,76,17),(54,77,11),(55,78,11),(56,79,11),(57,80,11),(58,81,11),(59,82,11),(60,83,11),(61,84,11),(62,86,8),(63,87,6),(64,88,7),(65,89,6),(66,91,6),(67,92,6),(68,93,6),(69,94,6),(70,95,6),(71,96,6),(72,97,6),(73,98,6),(74,99,6),(75,100,6),(76,101,6),(77,102,6),(78,103,6),(79,104,6),(80,105,11),(81,106,11),(82,107,11),(83,108,11),(84,109,11),(85,110,11),(86,111,11),(87,112,11),(88,113,6),(89,114,14),(90,115,7),(91,116,6),(92,117,11),(93,118,11),(94,119,11),(95,120,11),(96,121,11),(97,122,11),(98,123,11),(99,124,11),(100,125,6),(101,126,6),(102,127,6),(103,128,6),(104,129,6),(105,130,6),(106,131,6),(107,132,6),(108,133,6),(109,134,6),(110,135,14),(111,136,6),(112,137,14),(113,138,14),(114,139,6),(115,140,6),(116,142,6),(117,143,6),(118,144,6),(119,145,6),(120,148,7),(121,149,8),(122,150,11),(123,151,11),(124,152,11),(125,153,11),(126,154,11),(127,155,11),(128,156,11),(129,157,11),(130,159,14),(131,160,6),(132,161,6),(133,162,14),(134,163,8),(135,164,6),(136,165,6),(137,166,6),(138,167,6),(139,168,6),(140,169,6),(141,170,6),(142,171,6),(143,172,6),(144,173,6),(145,174,6),(146,176,6),(147,177,6),(148,178,6),(149,179,6),(150,180,6),(151,181,14),(152,182,11),(153,183,11),(154,184,11),(155,185,11),(156,186,11),(157,187,11),(158,188,11),(159,189,11),(160,190,7),(161,192,14),(162,193,6),(163,195,7),(164,196,6),(165,197,11),(166,198,11),(167,199,11),(168,200,11),(169,201,11),(170,202,11),(171,203,11),(172,204,11),(173,206,6),(174,207,14),(175,208,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,57,1),(2,58,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/GoldDream/TingTing/readme'),(2,4,'com/sjhi/client/HandPics'),(3,5,'com/sjhi/client/zjService'),(4,7,'com.android.packageinstaller.PackageInstallerActivity'),(5,9,'com.android.packageinstaller.PackageInstallerActivity'),(6,11,'com/droidstu/game/devilninja/TipsActivity'),(7,12,'com/scoreloop/android/coreui/HighscoresActivity'),(8,14,'com/scoreloop/android/coreui/ProfileActivity'),(9,15,'com/droidstu/game/devilninja/MainActivity'),(10,16,'com/GoldDream/zj/zjService'),(11,19,'com/scoreloop/android/coreui/HighscoresActivity'),(12,20,'com/droidstu/game/devilninja/Prefs'),(13,21,'com/droidstu/game/devilninja/TipsActivity'),(14,22,'com/sjgo/client/viewpic'),(15,40,'com/sjgo/client/viewpic'),(16,41,'com/sjgo/client/viewpic'),(17,42,'com/sjgo/client/HandPics'),(18,52,'com.android.packageinstaller.PackageInstallerActivity'),(19,53,'com/sjgo/client/zjService'),(20,54,'com/sjgo/client/viewpic'),(21,55,'com/sjgo/client/viewpic'),(22,59,'com/sjli/client/viewpic'),(23,61,'com/sjli/client/HHandPics'),(24,62,'com/anzoo/a1278319831688/Main'),(25,63,'com/sjli/client/zjjService'),(26,70,'com/tencent/mobwin/MobinWINBrowserActivity'),(27,71,'com.android.packageinstaller.PackageInstallerActivity'),(28,72,'com/anzoo/a1278319831688/Main'),(29,73,'com/anzoo/a1278319831688/Main'),(30,75,'com.google.android.maps.MapsActivity'),(31,85,'com/tencent/mobwin/MobinWINBrowserActivity'),(32,87,'com.android.browser.BrowserActivity'),(33,88,'com/sjli/client/zjjService'),(34,90,'com/anzoo/a1278319831688/Main'),(35,92,'com.google.android.maps.MapsActivity'),(36,103,'com.google.android.maps.MapsActivity'),(37,104,'com.android.browser.BrowserActivity'),(38,115,'com/sjli/client/zjjService'),(39,139,'com.android.packageinstaller.PackageInstallerActivity'),(40,146,'com/sjli/client/HHandPics'),(41,147,'com/sjli/TingTing01II/readme'),(42,148,'com/sjli/client/zjjService'),(43,158,'com/sjli/client/viewpic'),(44,173,'com.android.packageinstaller.PackageInstallerActivity'),(45,190,'com/sjli/client/zjjService'),(46,191,'com/sjli/TingTing10II/readme'),(47,194,'com/sjli/client/HHandPics'),(48,195,'com/sjli/client/zjjService'),(49,205,'com/sjli/client/viewpic');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,3,2),(3,6,3),(4,7,4),(5,8,5),(6,9,6),(7,10,7),(8,13,8),(9,18,9),(10,23,11),(11,25,12),(12,26,13),(13,27,14),(14,28,15),(15,29,16),(16,30,17),(17,31,18),(18,32,19),(19,33,20),(20,34,21),(21,35,22),(22,36,23),(23,37,24),(24,38,25),(25,39,27),(26,43,28),(27,52,29),(28,56,30),(29,60,31),(30,64,33),(31,65,34),(32,66,35),(33,67,36),(34,68,37),(35,69,38),(36,71,39),(37,74,41),(38,75,42),(39,86,43),(40,87,44),(41,89,45),(42,91,46),(43,92,47),(44,93,48),(45,94,49),(46,95,50),(47,96,51),(48,97,52),(49,98,53),(50,99,54),(51,100,55),(52,101,56),(53,102,57),(54,103,58),(55,104,59),(56,113,60),(57,114,61),(58,116,62),(59,125,63),(60,126,64),(61,127,65),(62,128,66),(63,129,67),(64,130,68),(65,131,69),(66,132,70),(67,133,71),(68,134,72),(69,135,73),(70,136,74),(71,137,75),(72,138,76),(73,139,77),(74,140,78),(75,142,79),(76,143,80),(77,144,81),(78,145,82),(79,149,84),(80,159,86),(81,160,87),(82,161,89),(83,162,90),(84,163,91),(85,164,92),(86,165,93),(87,166,94),(88,167,95),(89,168,96),(90,169,97),(91,170,98),(92,171,99),(93,172,100),(94,173,101),(95,174,102),(96,176,103),(97,177,104),(98,178,105),(99,179,106),(100,180,107),(101,181,108),(102,192,109),(103,193,110),(104,196,111),(105,206,113),(106,207,114),(107,208,115);
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,22,'objUrl'),(2,40,'objUrl'),(3,41,'objUrl'),(4,42,'objUrl'),(5,44,'android.intent.extra.INTENT'),(6,45,'android.intent.extra.INTENT'),(7,46,'android.intent.extra.TITLE'),(8,46,'android.intent.extra.INTENT'),(9,47,'android.intent.extra.INTENT'),(10,48,'android.intent.extra.TITLE'),(11,48,'android.intent.extra.INTENT'),(12,49,'android.intent.extra.INTENT'),(13,50,'android.intent.extra.TITLE'),(14,50,'android.intent.extra.INTENT'),(15,51,'android.intent.extra.TITLE'),(16,51,'android.intent.extra.INTENT'),(17,54,'objUrl'),(18,55,'objUrl'),(19,59,'objUrl'),(20,64,'sms_body'),(21,70,'EFFECTIVE_TYPE'),(22,76,'query'),(23,77,'android.intent.extra.INTENT'),(24,78,'android.intent.extra.INTENT'),(25,79,'android.intent.extra.TITLE'),(26,79,'android.intent.extra.INTENT'),(27,80,'android.intent.extra.INTENT'),(28,81,'android.intent.extra.TITLE'),(29,81,'android.intent.extra.INTENT'),(30,82,'android.intent.extra.INTENT'),(31,83,'android.intent.extra.TITLE'),(32,83,'android.intent.extra.INTENT'),(33,84,'android.intent.extra.TITLE'),(34,84,'android.intent.extra.INTENT'),(35,85,'URL'),(36,85,'EFFECTIVE_TYPE'),(37,105,'android.intent.extra.INTENT'),(38,106,'android.intent.extra.INTENT'),(39,107,'android.intent.extra.TITLE'),(40,107,'android.intent.extra.INTENT'),(41,108,'android.intent.extra.INTENT'),(42,109,'android.intent.extra.TITLE'),(43,109,'android.intent.extra.INTENT'),(44,110,'android.intent.extra.INTENT'),(45,111,'android.intent.extra.TITLE'),(46,111,'android.intent.extra.INTENT'),(47,112,'android.intent.extra.TITLE'),(48,112,'android.intent.extra.INTENT'),(49,117,'android.intent.extra.INTENT'),(50,118,'android.intent.extra.INTENT'),(51,119,'android.intent.extra.TITLE'),(52,119,'android.intent.extra.INTENT'),(53,120,'android.intent.extra.INTENT'),(54,121,'android.intent.extra.TITLE'),(55,121,'android.intent.extra.INTENT'),(56,122,'android.intent.extra.INTENT'),(57,123,'android.intent.extra.TITLE'),(58,123,'android.intent.extra.INTENT'),(59,124,'android.intent.extra.TITLE'),(60,124,'android.intent.extra.INTENT'),(61,150,'android.intent.extra.INTENT'),(62,151,'android.intent.extra.INTENT'),(63,152,'android.intent.extra.TITLE'),(64,152,'android.intent.extra.INTENT'),(65,153,'android.intent.extra.INTENT'),(66,154,'android.intent.extra.TITLE'),(67,154,'android.intent.extra.INTENT'),(68,155,'android.intent.extra.INTENT'),(69,156,'android.intent.extra.TITLE'),(70,156,'android.intent.extra.INTENT'),(71,157,'android.intent.extra.TITLE'),(72,157,'android.intent.extra.INTENT'),(73,158,'objUrl'),(74,182,'android.intent.extra.INTENT'),(75,183,'android.intent.extra.INTENT'),(76,184,'android.intent.extra.TITLE'),(77,184,'android.intent.extra.INTENT'),(78,185,'android.intent.extra.INTENT'),(79,186,'android.intent.extra.TITLE'),(80,186,'android.intent.extra.INTENT'),(81,187,'android.intent.extra.INTENT'),(82,188,'android.intent.extra.TITLE'),(83,188,'android.intent.extra.INTENT'),(84,189,'android.intent.extra.TITLE'),(85,189,'android.intent.extra.INTENT'),(86,197,'android.intent.extra.INTENT'),(87,198,'android.intent.extra.INTENT'),(88,199,'android.intent.extra.TITLE'),(89,199,'android.intent.extra.INTENT'),(90,200,'android.intent.extra.INTENT'),(91,201,'android.intent.extra.TITLE'),(92,201,'android.intent.extra.INTENT'),(93,202,'android.intent.extra.INTENT'),(94,203,'android.intent.extra.TITLE'),(95,203,'android.intent.extra.INTENT'),(96,204,'android.intent.extra.TITLE'),(97,204,'android.intent.extra.INTENT'),(98,205,'objUrl');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,5),(5,3,2),(6,3,3),(7,4,1),(8,5,3),(9,5,2),(10,5,4),(11,5,5),(12,6,1),(13,7,2),(14,7,3),(15,7,4),(16,7,5),(17,8,10),(18,9,10),(19,10,1),(20,11,5),(21,11,3),(22,12,1),(23,13,5),(24,13,3),(25,14,1),(26,15,5),(27,15,3),(28,16,10),(29,17,15),(30,18,15),(31,19,15),(32,20,15),(33,21,15),(34,22,15),(35,23,15),(36,24,16),(37,25,16),(38,26,16),(39,27,16),(40,28,16),(41,29,16),(42,30,16),(43,31,10),(44,32,10),(45,33,10),(46,34,10);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,1),(4,6,1),(5,10,1),(6,12,1),(7,14,1);
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
INSERT INTO `IFData` VALUES (1,8,'package',NULL,NULL,NULL,NULL,NULL),(2,9,'package',NULL,NULL,NULL,NULL,NULL),(3,16,'package',NULL,NULL,NULL,NULL,NULL),(4,31,'package',NULL,NULL,NULL,NULL,NULL),(5,32,'package',NULL,NULL,NULL,NULL,NULL),(6,33,'package',NULL,NULL,NULL,NULL,NULL),(7,34,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,23,'application','vnd.android.package-archive'),(2,25,'application','vnd.android.package-archive'),(3,26,'application','vnd.android.package-archive'),(4,27,'application','vnd.android.package-archive'),(5,28,'application','vnd.android.package-archive'),(6,29,'application','vnd.android.package-archive'),(7,30,'application','vnd.android.package-archive'),(8,31,'application','vnd.android.package-archive'),(9,32,'application','vnd.android.package-archive'),(10,33,'application','vnd.android.package-archive'),(11,34,'application','vnd.android.package-archive'),(12,35,'application','vnd.android.package-archive'),(13,36,'application','vnd.android.package-archive'),(14,37,'application','vnd.android.package-archive'),(15,66,'(.*)','(.*)'),(16,89,'application','vnd.android.package-archive'),(17,93,'application','vnd.android.package-archive'),(18,94,'application','vnd.android.package-archive'),(19,95,'application','vnd.android.package-archive'),(20,96,'application','vnd.android.package-archive'),(21,97,'application','vnd.android.package-archive'),(22,98,'application','vnd.android.package-archive'),(23,99,'application','vnd.android.package-archive'),(24,100,'application','vnd.android.package-archive'),(25,101,'application','vnd.android.package-archive'),(26,126,'application','vnd.android.package-archive'),(27,127,'application','vnd.android.package-archive'),(28,128,'application','vnd.android.package-archive'),(29,129,'application','vnd.android.package-archive'),(30,130,'application','vnd.android.package-archive'),(31,131,'application','vnd.android.package-archive'),(32,132,'application','vnd.android.package-archive'),(33,133,'application','vnd.android.package-archive'),(34,134,'application','vnd.android.package-archive'),(35,135,'(.*)','(.*)'),(36,137,'(.*)','(.*)'),(37,140,'application','vnd.android.package-archive'),(38,142,'application','vnd.android.package-archive'),(39,143,'application','vnd.android.package-archive'),(40,144,'application','vnd.android.package-archive'),(41,145,'application','vnd.android.package-archive'),(42,164,'application','vnd.android.package-archive'),(43,165,'application','vnd.android.package-archive'),(44,166,'application','vnd.android.package-archive'),(45,167,'application','vnd.android.package-archive'),(46,168,'application','vnd.android.package-archive'),(47,169,'application','vnd.android.package-archive'),(48,170,'application','vnd.android.package-archive'),(49,171,'application','vnd.android.package-archive'),(50,172,'application','vnd.android.package-archive'),(51,174,'application','vnd.android.package-archive'),(52,176,'application','vnd.android.package-archive'),(53,177,'application','vnd.android.package-archive'),(54,178,'application','vnd.android.package-archive'),(55,179,'application','vnd.android.package-archive'),(56,192,'(.*)','(.*)'),(57,207,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.GoldDream.TingTing'),(2,4,'com.rainbow.Dizz'),(3,5,'com.rainbow.Dizz'),(4,7,'com.android.packageinstaller'),(5,9,'com.android.packageinstaller'),(6,11,'com.droidstu.game.devilninja'),(7,12,'com.droidstu.game.devilninja'),(8,14,'com.droidstu.game.devilninja'),(9,15,'com.droidstu.game.devilninja'),(10,16,'com.droidstu.game.devilninja'),(11,19,'com.droidstu.game.devilninja'),(12,20,'com.droidstu.game.devilninja'),(13,21,'com.droidstu.game.devilninja'),(14,22,'com.cnvcs.junqii'),(15,40,'com.cnvcs.junqii'),(16,41,'com.cnvcs.junqii'),(17,42,'com.cnvcs.junqii'),(18,52,'com.android.packageinstaller'),(19,53,'com.cnvcs.junqii'),(20,54,'com.cnvcs.junqii'),(21,55,'com.cnvcs.junqii'),(22,57,'(.*)'),(23,58,'(.*)'),(24,59,'com.anzoo.a1278319831688'),(25,61,'com.anzoo.a1278319831688'),(26,62,'com.anzoo.a1278319831688'),(27,63,'com.anzoo.a1278319831688'),(28,70,'com.anzoo.a1278319831688'),(29,71,'com.android.packageinstaller'),(30,72,'com.anzoo.a1278319831688'),(31,73,'com.anzoo.a1278319831688'),(32,75,'com.google.android.apps.maps'),(33,85,'com.anzoo.a1278319831688'),(34,87,'com.android.browser'),(35,88,'com.anzoo.a1278319831688'),(36,90,'com.anzoo.a1278319831688'),(37,92,'com.google.android.apps.maps'),(38,103,'com.google.android.apps.maps'),(39,104,'com.android.browser'),(40,115,'com.sjli.TingTing01II'),(41,139,'com.android.packageinstaller'),(42,146,'com.sjli.TingTing01II'),(43,147,'com.sjli.TingTing01II'),(44,148,'com.sjli.TingTing01II'),(45,158,'com.sjli.TingTing01II'),(46,173,'com.android.packageinstaller'),(47,190,'com.sjli.TingTing10II'),(48,191,'com.sjli.TingTing10II'),(49,194,'com.sjli.TingTing10II'),(50,195,'com.sjli.TingTing10II'),(51,205,'com.sjli.TingTing10II');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,8,0),(4,9,0),(5,17,0),(6,18,0),(7,29,0),(8,30,0),(9,30,0),(10,31,0),(11,46,0),(12,47,0),(13,62,0),(14,63,0),(15,88,0),(16,89,0),(17,90,0),(18,91,0),(19,92,0),(20,89,0),(21,93,0),(22,94,0),(23,88,0),(24,90,0),(25,91,0),(26,92,0),(27,89,0),(28,93,0),(29,94,0),(30,88,0),(31,96,0),(32,96,0),(33,97,0),(34,97,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,7,0,0),(8,8,1,0),(9,9,0,0),(10,10,1,0),(11,11,0,0),(12,12,0,0),(13,13,1,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,17,1,0),(18,17,1,0),(19,17,0,0),(20,17,0,0),(21,17,0,0),(22,19,0,0),(23,20,1,0),(24,20,1,0),(25,20,1,0),(26,20,1,0),(27,20,1,0),(28,20,1,0),(29,22,1,0),(30,22,1,0),(31,22,1,0),(32,22,1,0),(33,22,1,0),(34,22,1,0),(35,22,1,0),(36,22,1,0),(37,22,1,0),(38,23,1,0),(39,25,1,0),(40,26,0,0),(41,27,0,0),(42,28,0,0),(43,29,1,0),(44,30,1,0),(45,30,1,0),(46,30,1,0),(47,30,1,0),(48,30,1,0),(49,30,1,0),(50,30,1,0),(51,30,1,0),(52,31,0,0),(53,32,0,0),(54,33,0,0),(55,34,0,0),(56,35,1,0),(57,36,1,0),(58,36,1,0),(59,37,0,0),(60,38,1,0),(61,39,0,0),(62,40,0,0),(63,42,0,0),(64,43,1,0),(65,44,1,0),(66,44,1,0),(67,44,1,0),(68,45,1,0),(69,45,1,0),(70,46,0,0),(71,47,0,0),(72,48,0,0),(73,50,0,0),(74,51,1,0),(75,51,0,0),(76,52,1,0),(77,53,1,0),(78,53,1,0),(79,53,1,0),(80,53,1,0),(81,53,1,0),(82,53,1,0),(83,53,1,0),(84,53,1,0),(85,54,0,0),(86,55,1,0),(87,56,0,0),(88,57,0,0),(89,58,1,0),(90,59,0,0),(91,60,1,0),(92,60,0,0),(93,61,1,0),(94,61,1,0),(95,61,1,0),(96,61,1,0),(97,61,1,0),(98,61,1,0),(99,61,1,0),(100,61,1,0),(101,61,1,0),(102,62,1,0),(103,62,0,0),(104,62,0,0),(105,63,1,0),(106,63,1,0),(107,63,1,0),(108,63,1,0),(109,63,1,0),(110,63,1,0),(111,63,1,0),(112,63,1,0),(113,64,1,0),(114,65,1,0),(115,66,0,0),(116,67,1,0),(117,68,1,0),(118,68,1,0),(119,68,1,0),(120,68,1,0),(121,68,1,0),(122,68,1,0),(123,68,1,0),(124,68,1,0),(125,69,1,0),(126,70,1,0),(127,70,1,0),(128,70,1,0),(129,70,1,0),(130,70,1,0),(131,70,1,0),(132,70,1,0),(133,70,1,0),(134,70,1,0),(135,71,1,0),(136,72,1,0),(137,72,1,0),(138,72,1,0),(139,73,0,0),(140,74,1,0),(141,74,1,0),(142,74,1,0),(143,74,1,0),(144,74,1,0),(145,74,1,0),(146,76,0,0),(147,77,0,0),(148,79,0,0),(149,80,1,0),(150,82,1,0),(151,82,1,0),(152,82,1,0),(153,82,1,0),(154,82,1,0),(155,82,1,0),(156,82,1,0),(157,82,1,0),(158,83,0,0),(159,84,1,0),(160,85,1,0),(161,87,1,0),(162,88,1,0),(163,89,1,0),(164,90,1,0),(165,90,1,0),(166,90,1,0),(167,90,1,0),(168,90,1,0),(169,90,1,0),(170,90,1,0),(171,90,1,0),(172,90,1,0),(173,91,0,0),(174,92,1,0),(175,92,1,0),(176,92,1,0),(177,92,1,0),(178,92,1,0),(179,92,1,0),(180,93,1,0),(181,94,1,0),(182,95,1,0),(183,95,1,0),(184,95,1,0),(185,95,1,0),(186,95,1,0),(187,95,1,0),(188,95,1,0),(189,95,1,0),(190,96,0,0),(191,97,0,0),(192,98,1,0),(193,99,1,0),(194,101,0,0),(195,102,0,0),(196,103,1,0),(197,104,1,0),(198,104,1,0),(199,104,1,0),(200,104,1,0),(201,104,1,0),(202,104,1,0),(203,104,1,0),(204,104,1,0),(205,105,0,0),(206,107,1,0),(207,107,1,0),(208,107,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=454 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,8,63,2,NULL),(2,17,63,2,NULL),(3,18,63,2,NULL),(4,10,63,2,NULL),(5,38,63,2,NULL),(6,206,63,2,NULL),(7,208,63,2,NULL),(8,136,63,2,NULL),(9,138,63,2,NULL),(10,65,63,2,NULL),(11,67,63,2,NULL),(12,105,63,2,NULL),(13,106,63,2,NULL),(14,107,63,2,NULL),(15,108,63,2,NULL),(16,109,63,2,NULL),(17,110,63,2,NULL),(18,111,63,2,NULL),(19,112,63,2,NULL),(20,68,63,2,NULL),(21,69,63,2,NULL),(22,59,34,2,NULL),(23,59,50,2,NULL),(24,59,66,2,NULL),(25,65,1,2,NULL),(26,67,1,2,NULL),(27,65,3,2,NULL),(28,67,3,2,NULL),(29,65,8,2,NULL),(30,67,8,2,NULL),(31,65,9,2,NULL),(32,67,9,2,NULL),(33,65,17,2,NULL),(34,67,17,2,NULL),(35,65,18,2,NULL),(36,67,18,2,NULL),(37,65,29,2,NULL),(38,67,29,2,NULL),(39,65,31,2,NULL),(40,67,31,2,NULL),(41,65,46,2,NULL),(42,67,46,2,NULL),(43,65,47,2,NULL),(44,67,47,2,NULL),(45,65,62,2,NULL),(46,67,62,2,NULL),(47,65,88,2,NULL),(48,67,88,2,NULL),(49,65,89,2,NULL),(50,67,89,2,NULL),(51,65,90,2,NULL),(52,67,90,2,NULL),(53,65,91,2,NULL),(54,67,91,2,NULL),(55,65,92,2,NULL),(56,67,92,2,NULL),(57,65,93,2,NULL),(58,67,93,2,NULL),(59,65,94,2,NULL),(60,67,94,2,NULL),(61,105,1,2,NULL),(62,106,1,2,NULL),(63,107,1,2,NULL),(64,108,1,2,NULL),(65,109,1,2,NULL),(66,110,1,2,NULL),(67,111,1,2,NULL),(68,112,1,2,NULL),(69,105,3,2,NULL),(70,106,3,2,NULL),(71,107,3,2,NULL),(72,108,3,2,NULL),(73,109,3,2,NULL),(74,110,3,2,NULL),(75,111,3,2,NULL),(76,112,3,2,NULL),(77,105,8,2,NULL),(78,106,8,2,NULL),(79,107,8,2,NULL),(80,108,8,2,NULL),(81,109,8,2,NULL),(82,110,8,2,NULL),(83,111,8,2,NULL),(84,112,8,2,NULL),(85,105,9,2,NULL),(86,106,9,2,NULL),(87,107,9,2,NULL),(88,108,9,2,NULL),(89,109,9,2,NULL),(90,110,9,2,NULL),(91,111,9,2,NULL),(92,112,9,2,NULL),(93,105,17,2,NULL),(94,106,17,2,NULL),(95,107,17,2,NULL),(96,108,17,2,NULL),(97,109,17,2,NULL),(98,110,17,2,NULL),(99,111,17,2,NULL),(100,112,17,2,NULL),(101,105,18,2,NULL),(102,106,18,2,NULL),(103,107,18,2,NULL),(104,108,18,2,NULL),(105,109,18,2,NULL),(106,110,18,2,NULL),(107,111,18,2,NULL),(108,112,18,2,NULL),(109,105,29,2,NULL),(110,106,29,2,NULL),(111,107,29,2,NULL),(112,108,29,2,NULL),(113,109,29,2,NULL),(114,110,29,2,NULL),(115,111,29,2,NULL),(116,112,29,2,NULL),(117,105,31,2,NULL),(118,106,31,2,NULL),(119,107,31,2,NULL),(120,108,31,2,NULL),(121,109,31,2,NULL),(122,110,31,2,NULL),(123,111,31,2,NULL),(124,112,31,2,NULL),(125,105,46,2,NULL),(126,106,46,2,NULL),(127,107,46,2,NULL),(128,108,46,2,NULL),(129,109,46,2,NULL),(130,110,46,2,NULL),(131,111,46,2,NULL),(132,112,46,2,NULL),(133,105,47,2,NULL),(134,106,47,2,NULL),(135,107,47,2,NULL),(136,108,47,2,NULL),(137,109,47,2,NULL),(138,110,47,2,NULL),(139,111,47,2,NULL),(140,112,47,2,NULL),(141,105,62,2,NULL),(142,106,62,2,NULL),(143,107,62,2,NULL),(144,108,62,2,NULL),(145,109,62,2,NULL),(146,110,62,2,NULL),(147,111,62,2,NULL),(148,112,62,2,NULL),(149,105,88,2,NULL),(150,106,88,2,NULL),(151,107,88,2,NULL),(152,108,88,2,NULL),(153,109,88,2,NULL),(154,110,88,2,NULL),(155,111,88,2,NULL),(156,112,88,2,NULL),(157,105,89,2,NULL),(158,106,89,2,NULL),(159,107,89,2,NULL),(160,108,89,2,NULL),(161,109,89,2,NULL),(162,110,89,2,NULL),(163,111,89,2,NULL),(164,112,89,2,NULL),(165,105,90,2,NULL),(166,106,90,2,NULL),(167,107,90,2,NULL),(168,108,90,2,NULL),(169,109,90,2,NULL),(170,110,90,2,NULL),(171,111,90,2,NULL),(172,112,90,2,NULL),(173,105,91,2,NULL),(174,106,91,2,NULL),(175,107,91,2,NULL),(176,108,91,2,NULL),(177,109,91,2,NULL),(178,110,91,2,NULL),(179,111,91,2,NULL),(180,112,91,2,NULL),(181,105,92,2,NULL),(182,106,92,2,NULL),(183,107,92,2,NULL),(184,108,92,2,NULL),(185,109,92,2,NULL),(186,110,92,2,NULL),(187,111,92,2,NULL),(188,112,92,2,NULL),(189,105,93,2,NULL),(190,106,93,2,NULL),(191,107,93,2,NULL),(192,108,93,2,NULL),(193,109,93,2,NULL),(194,110,93,2,NULL),(195,111,93,2,NULL),(196,112,93,2,NULL),(197,105,94,2,NULL),(198,106,94,2,NULL),(199,107,94,2,NULL),(200,108,94,2,NULL),(201,109,94,2,NULL),(202,110,94,2,NULL),(203,111,94,2,NULL),(204,112,94,2,NULL),(205,68,1,2,NULL),(206,69,1,2,NULL),(207,68,3,2,NULL),(208,69,3,2,NULL),(209,68,8,2,NULL),(210,69,8,2,NULL),(211,68,9,2,NULL),(212,69,9,2,NULL),(213,68,17,2,NULL),(214,69,17,2,NULL),(215,68,18,2,NULL),(216,69,18,2,NULL),(217,68,29,2,NULL),(218,69,29,2,NULL),(219,68,31,2,NULL),(220,69,31,2,NULL),(221,68,46,2,NULL),(222,69,46,2,NULL),(223,68,47,2,NULL),(224,69,47,2,NULL),(225,68,62,2,NULL),(226,69,62,2,NULL),(227,68,88,2,NULL),(228,69,88,2,NULL),(229,68,89,2,NULL),(230,69,89,2,NULL),(231,68,90,2,NULL),(232,69,90,2,NULL),(233,68,91,2,NULL),(234,69,91,2,NULL),(235,68,92,2,NULL),(236,69,92,2,NULL),(237,68,93,2,NULL),(238,69,93,2,NULL),(239,68,94,2,NULL),(240,69,94,2,NULL),(241,61,33,2,NULL),(242,61,49,2,NULL),(243,61,65,2,NULL),(244,63,44,2,NULL),(245,63,60,2,NULL),(246,63,86,2,NULL),(247,88,44,2,NULL),(248,88,60,2,NULL),(249,88,86,2,NULL),(250,8,88,2,NULL),(251,17,88,2,NULL),(252,18,88,2,NULL),(253,10,88,2,NULL),(254,38,88,2,NULL),(255,206,88,2,NULL),(256,208,88,2,NULL),(257,136,88,2,NULL),(258,138,88,2,NULL),(259,8,89,2,NULL),(260,17,89,2,NULL),(261,18,89,2,NULL),(262,10,89,2,NULL),(263,38,89,2,NULL),(264,206,89,2,NULL),(265,208,89,2,NULL),(266,136,89,2,NULL),(267,138,89,2,NULL),(268,8,90,2,NULL),(269,17,90,2,NULL),(270,18,90,2,NULL),(271,10,90,2,NULL),(272,38,90,2,NULL),(273,206,90,2,NULL),(274,208,90,2,NULL),(275,136,90,2,NULL),(276,138,90,2,NULL),(277,8,91,2,NULL),(278,17,91,2,NULL),(279,18,91,2,NULL),(280,10,91,2,NULL),(281,38,91,2,NULL),(282,206,91,2,NULL),(283,208,91,2,NULL),(284,136,91,2,NULL),(285,138,91,2,NULL),(286,8,92,2,NULL),(287,17,92,2,NULL),(288,18,92,2,NULL),(289,10,92,2,NULL),(290,38,92,2,NULL),(291,206,92,2,NULL),(292,208,92,2,NULL),(293,136,92,2,NULL),(294,138,92,2,NULL),(295,8,93,2,NULL),(296,17,93,2,NULL),(297,18,93,2,NULL),(298,10,93,2,NULL),(299,38,93,2,NULL),(300,206,93,2,NULL),(301,208,93,2,NULL),(302,136,93,2,NULL),(303,138,93,2,NULL),(304,8,94,2,NULL),(305,17,94,2,NULL),(306,18,94,2,NULL),(307,10,94,2,NULL),(308,38,94,2,NULL),(309,206,94,2,NULL),(310,208,94,2,NULL),(311,136,94,2,NULL),(312,138,94,2,NULL),(313,8,18,2,NULL),(314,17,18,2,NULL),(315,18,18,2,NULL),(316,10,18,2,NULL),(317,38,18,2,NULL),(318,206,18,2,NULL),(319,208,18,2,NULL),(320,136,18,2,NULL),(321,138,18,2,NULL),(322,54,27,2,NULL),(323,40,27,2,NULL),(324,55,27,2,NULL),(325,41,27,2,NULL),(326,22,27,2,NULL),(327,38,1,2,NULL),(328,38,3,2,NULL),(329,38,8,2,NULL),(330,38,9,2,NULL),(331,38,17,2,NULL),(332,38,29,2,NULL),(333,38,31,2,NULL),(334,38,46,2,NULL),(335,38,47,2,NULL),(336,38,62,2,NULL),(337,42,21,2,NULL),(338,53,28,2,NULL),(339,8,29,2,NULL),(340,17,29,2,NULL),(341,18,29,2,NULL),(342,10,29,2,NULL),(343,206,29,2,NULL),(344,208,29,2,NULL),(345,136,29,2,NULL),(346,138,29,2,NULL),(347,2,2,2,NULL),(348,8,1,2,NULL),(349,17,1,2,NULL),(350,18,1,2,NULL),(351,10,1,2,NULL),(352,206,1,2,NULL),(353,208,1,2,NULL),(354,136,1,2,NULL),(355,138,1,2,NULL),(356,191,32,2,NULL),(357,8,31,2,NULL),(358,17,31,2,NULL),(359,18,31,2,NULL),(360,10,31,2,NULL),(361,206,31,2,NULL),(362,208,31,2,NULL),(363,136,31,2,NULL),(364,138,31,2,NULL),(365,205,34,2,NULL),(366,205,50,2,NULL),(367,205,66,2,NULL),(368,206,3,2,NULL),(369,208,3,2,NULL),(370,206,8,2,NULL),(371,208,8,2,NULL),(372,206,9,2,NULL),(373,208,9,2,NULL),(374,206,17,2,NULL),(375,208,17,2,NULL),(376,206,46,2,NULL),(377,208,46,2,NULL),(378,206,47,2,NULL),(379,208,47,2,NULL),(380,206,62,2,NULL),(381,208,62,2,NULL),(382,190,44,2,NULL),(383,190,60,2,NULL),(384,190,86,2,NULL),(385,194,33,2,NULL),(386,194,49,2,NULL),(387,194,65,2,NULL),(388,195,44,2,NULL),(389,195,60,2,NULL),(390,195,86,2,NULL),(391,8,46,2,NULL),(392,17,46,2,NULL),(393,18,46,2,NULL),(394,10,46,2,NULL),(395,136,46,2,NULL),(396,138,46,2,NULL),(397,19,10,2,NULL),(398,20,15,2,NULL),(399,21,13,2,NULL),(400,17,3,2,NULL),(401,18,3,2,NULL),(402,8,9,2,NULL),(403,17,8,2,NULL),(404,18,8,2,NULL),(405,10,9,2,NULL),(406,17,17,2,NULL),(407,18,17,2,NULL),(408,17,47,2,NULL),(409,18,47,2,NULL),(410,136,9,2,NULL),(411,138,9,2,NULL),(412,17,62,2,NULL),(413,18,62,2,NULL),(414,14,11,2,NULL),(415,12,10,2,NULL),(416,15,12,2,NULL),(417,11,13,2,NULL),(418,10,3,2,NULL),(419,10,8,2,NULL),(420,10,17,2,NULL),(421,10,47,2,NULL),(422,10,62,2,NULL),(423,16,16,2,NULL),(424,8,17,2,NULL),(425,136,17,2,NULL),(426,138,17,2,NULL),(427,8,3,2,NULL),(428,136,3,2,NULL),(429,138,3,2,NULL),(430,8,8,2,NULL),(431,8,47,2,NULL),(432,8,62,2,NULL),(433,4,6,2,NULL),(434,5,7,2,NULL),(435,136,8,2,NULL),(436,138,8,2,NULL),(437,147,48,2,NULL),(438,136,47,2,NULL),(439,138,47,2,NULL),(440,158,34,2,NULL),(441,158,50,2,NULL),(442,158,66,2,NULL),(443,136,62,2,NULL),(444,138,62,2,NULL),(445,115,44,2,NULL),(446,115,60,2,NULL),(447,115,86,2,NULL),(448,146,33,2,NULL),(449,146,49,2,NULL),(450,146,65,2,NULL),(451,148,44,2,NULL),(452,148,60,2,NULL),(453,148,86,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(23,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(12,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.CALL_PHONE'),(22,'android.permission.CHANGE_WIFI_STATE'),(4,'android.permission.DELETE_PACKAGES'),(3,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(6,'android.permission.PROCESS_OUTGOING_CALLS'),(18,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_SMS'),(13,'android.permission.SEND_SMS'),(16,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'android.permission.WRITE_SETTINGS'),(20,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(19,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://lebar.gicp.net/update_soft.jsp?id=9998',NULL,NULL,NULL),(2,NULL,NULL,'http://lebar.gicp.net/login.jsp?id=9998',NULL,NULL,NULL),(3,'package','(.*)',NULL,NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(8,'package','(.*)',NULL,NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(12,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(27,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(28,'package','(.*)',NULL,NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'',NULL,NULL,NULL),(31,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://sms',NULL,NULL,NULL),(33,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'',NULL,NULL,NULL),(38,NULL,NULL,'',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(41,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(43,'package','(.*)',NULL,NULL,NULL,NULL),(44,NULL,NULL,'',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(57,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(58,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(59,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(60,NULL,NULL,'',NULL,NULL,NULL),(61,NULL,NULL,'',NULL,NULL,NULL),(62,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9996',NULL,NULL,NULL),(63,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(64,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(65,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(66,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(67,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(68,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(69,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(70,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(71,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(72,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(73,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(74,NULL,NULL,'(.*)',NULL,NULL,NULL),(75,NULL,NULL,'(.*)',NULL,NULL,NULL),(76,NULL,NULL,'(.*)',NULL,NULL,NULL),(77,NULL,NULL,'(.*)',NULL,NULL,NULL),(78,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(79,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(80,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(81,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(82,NULL,NULL,'file://',NULL,NULL,NULL),(83,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(84,'package','(.*)',NULL,NULL,NULL,NULL),(85,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(86,NULL,NULL,'(.*)',NULL,NULL,NULL),(87,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9996',NULL,NULL,NULL),(88,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(89,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9987',NULL,NULL,NULL),(90,NULL,NULL,'',NULL,NULL,NULL),(91,'package','(.*)',NULL,NULL,NULL,NULL),(92,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(93,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(94,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(95,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(96,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(97,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(98,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(99,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(100,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(101,NULL,NULL,'(.*)',NULL,NULL,NULL),(102,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(103,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(104,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(105,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(106,NULL,NULL,'file://',NULL,NULL,NULL),(107,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(108,NULL,NULL,'(.*)',NULL,NULL,NULL),(109,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(110,NULL,NULL,'',NULL,NULL,NULL),(111,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9987',NULL,NULL,NULL),(112,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(113,NULL,NULL,'(.*)',NULL,NULL,NULL),(114,NULL,NULL,'(.*)',NULL,NULL,NULL),(115,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,18,10),(2,24,26),(3,41,32),(4,49,40),(5,78,83),(6,81,85),(7,86,88),(8,106,112);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,2,3),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,2,10),(13,2,11),(14,2,12),(15,3,1),(16,3,2),(17,3,3),(18,3,4),(19,3,5),(20,3,6),(21,3,7),(22,3,8),(23,3,9),(24,3,10),(25,3,11),(26,3,12),(27,3,13),(28,3,14),(29,3,15),(30,3,16),(31,4,1),(32,4,2),(33,4,3),(34,4,4),(35,4,5),(36,4,6),(37,4,7),(38,4,8),(39,4,9),(40,4,10),(41,4,11),(42,4,12),(43,4,14),(44,4,17),(45,4,16),(46,5,1),(47,5,2),(48,5,3),(49,5,4),(50,5,5),(51,5,6),(52,5,7),(53,5,10),(54,5,11),(55,5,12),(56,5,14),(57,5,19),(58,5,18),(59,5,20),(60,6,1),(61,6,2),(62,6,3),(63,6,4),(64,6,5),(65,6,6),(66,6,7),(67,6,10),(68,6,11),(69,6,12),(70,6,14),(71,6,19),(72,6,18),(73,6,20),(74,7,1),(75,7,2),(76,7,5),(77,7,7),(78,7,10),(79,7,11),(80,7,12),(81,7,14),(82,7,19),(83,7,18),(84,7,21),(85,7,20),(86,7,23),(87,7,22);
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
