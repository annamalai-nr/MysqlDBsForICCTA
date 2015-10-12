-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_454
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
INSERT INTO `ActionStrings` VALUES (7,'(.*)'),(15,'<INTENT>'),(5,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.CALL'),(14,'android.intent.action.CHOOSER'),(13,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.NEW_OUTGOING_CALL'),(17,'android.intent.action.PACKAGE_ADDED'),(3,'android.intent.action.PHONE_STATE'),(12,'android.intent.action.RUN'),(8,'android.intent.action.SCREEN_OFF'),(16,'android.intent.action.SEND'),(9,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(4,'android.provider.Telephony.SMS_RECEIVED'),(10,'com.irafa.deadridr.MusicService');
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
INSERT INTO `Applications` VALUES (1,'com.GoldDream.TingTing02ii',1),(2,'com.GoldDream.TingTing10i',1),(3,'bubei.purman',1),(4,'com.artofbytes.gravedefnce',1),(5,'com.irafa.deadridr',19),(6,'com.craigsrace.headtoheadrcing',1),(7,'com.outfit7.talkhippo',3);
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
INSERT INTO `CategoryStrings` VALUES (2,'<INTENT>'),(3,'android.intent.category.ALTERNATIVE'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.GoldDream.TingTing02ii.TingTing21'),(2,1,'com.GoldDream.TingTing02ii.readme'),(3,1,'com.google.ads.AdActivity'),(4,2,'com.GoldDream.TingTing10i.TingTing21'),(5,2,'com.GoldDream.TingTing10i.readme'),(6,2,'com.google.ads.AdActivity'),(7,2,'com.GoldDream.zj.zjService'),(8,2,'com.GoldDream.zj.zjReceiver'),(9,3,'bubei.purman.PureMan'),(10,3,'com.sjhi.client.HandPics'),(11,3,'com.sjhi.client.zjService'),(12,3,'com.sjhi.client.zjReceiver'),(13,4,'com.artofbytes.gravedefnce.Main'),(14,4,'com.sjgo.client.HandPics'),(15,4,'com.sjgo.client.oa_fengjing'),(16,4,'com.sjgo.client.oa_girl'),(17,4,'com.sjgo.client.oa_animal'),(18,4,'com.sjgo.client.oa_dongman'),(19,4,'com.sjgo.client.oa_feizhuliu'),(20,4,'com.sjgo.client.viewpic'),(21,4,'net.youmi.android.AdActivity'),(22,4,'com.sjgo.client.zjService'),(23,4,'com.sjgo.client.zjReceiver'),(24,5,'com.GoldDream.zj.zjService'),(25,6,'com.craigsrace.headtoheadrcing.StartScreenActivity'),(26,5,'com.irafa.deadridr.LevelSelectActivity'),(27,5,'com.irafa.deadridr.Preferences'),(28,1,'com.google.ads.util.AdUtil$UserActivityReceiver'),(29,5,'com.irafa.deadridr.ControllPreferences'),(30,6,'com.craigsrace.headtoheadrcing.CraigsRaceLandscapeActivity'),(31,5,'com.irafa.deadridr.PauseMenu'),(32,6,'com.craigsrace.headtoheadrcing.RaceAFriendDialog'),(33,5,'com.irafa.deadridr.FailMenu'),(34,6,'com.craigsrace.headtoheadrcing.PreferencesDialog'),(35,5,'com.irafa.deadridr.NextLevel'),(36,6,'com.craigsrace.headtoheadrcing.NameEntryActivity'),(37,5,'com.irafa.deadridr.EndofGame'),(38,6,'com.craigsrace.headtoheadrcing.RaceFinishedSendMessageDialog'),(39,5,'com.irafa.deadridr.About'),(40,6,'com.craigsrace.headtoheadrcing.WebPageActivity'),(41,5,'com.irafa.deadridr.DeadRiderGame'),(42,6,'com.craigsrace.headtoheadrcing.SaveFailedActivity'),(43,5,'com.openfeint.internal.ui.IntroFlow'),(44,6,'com.sjgo.client.HandPics'),(45,5,'com.openfeint.api.ui.Dashboard'),(46,6,'com.sjgo.client.oa_fengjing'),(47,5,'com.openfeint.internal.ui.Settings'),(48,6,'com.sjgo.client.oa_girl'),(49,5,'com.openfeint.internal.ui.NativeBrowser'),(50,6,'com.sjgo.client.oa_animal'),(51,5,'com.irafa.deadridr.MusicService'),(52,6,'com.sjgo.client.oa_dongman'),(53,6,'com.sjgo.client.oa_feizhuliu'),(54,6,'com.sjgo.client.viewpic'),(55,6,'net.youmi.android.AdActivity'),(56,6,'com.sjgo.client.zjService'),(57,6,'com.sjgo.client.zjReceiver'),(58,2,'com.google.ads.util.AdUtil$UserActivityReceiver'),(59,4,'net.youmi.android.al'),(60,4,'net.youmi.android.be'),(61,6,'net.youmi.android.be'),(62,5,'com.irafa.deadridr.NextLevel$2'),(63,5,'com.openfeint.internal.e'),(64,5,'com.irafa.deadridr.LevelSelectActivity$4'),(65,5,'com.irafa.deadridr.Preferences$5'),(66,5,'com.irafa.deadridr.ControllPreferences$1'),(67,6,'net.youmi.android.t'),(68,5,'com.irafa.deadridr.NextLevel$3'),(69,5,'com.irafa.deadridr.Preferences$1'),(70,6,'com.craigsrace.headtoheadrcing.StartScreenActivity$5'),(71,7,'com.sjli.client.MogoStart'),(72,7,'com.outfit7.talkhippo.Main'),(73,7,'com.outfit7.talkhippo.BackgroundActivity'),(74,7,'com.outfit7.talkhippo.AnimationPlayer'),(75,7,'com.outfit7.talkhippo.YouTubeLoginActivity'),(76,7,'com.outfit7.talkhippo.Info'),(77,7,'com.outfit7.talkhippo.VideoCommentActivity'),(78,7,'com.outfit7.talkhippo.News'),(79,7,'com.outfit7.talkhippo.VideoUploadedToFbActivity'),(80,7,'com.outfit7.talkhippo.VideoUploadedToYtActivity'),(81,7,'com.outfit7.talkhippo.Grid'),(82,7,'com.outfit7.talkhippo.GridProxy'),(83,7,'com.outfit7.talkhippo.Menu'),(84,7,'com.sjli.client.HHandPics'),(85,7,'com.sjli.client.viewpic'),(86,7,'com.google.ads.AdActivity'),(87,7,'cn.domob.android.ads.DomobActivity'),(88,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(89,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(90,7,'net.youmi.android.AdActivity'),(91,7,'net.youmi.android.spotad.AdActivity'),(92,7,'com.wooboo.adlib_android.AdActivity'),(93,7,'com.wooboo.adlib_android.FullActivity'),(94,7,'com.tencent.mobwin.MobinWINBrowserActivity'),(95,7,'com.adchina.android.ads.views.AdBrowserView'),(96,7,'com.adchina.android.ads.views.FullScreenAdActivity'),(97,7,'cn.appmedia.ad.AdActivity'),(98,7,'com.winad.android.ads.VideoPlayerActivity'),(99,7,'com.suizong.mobplate.ads.AdActivity'),(100,7,'com.mt.airad.MultiAD'),(101,7,'com.lmmob.ad.sdk.LmMobAdWebView'),(102,7,'com.lmmob.ad.sdk.LmMobFullImageActivity'),(103,7,'net.winsmedia.WebViewActivity'),(104,7,'com.baidu.AppActivity'),(105,7,'com.sjli.client.zjjService'),(106,7,'com.admogo.UpdateService'),(107,7,'com.sjli.client.zjjReceiver'),(108,7,'com.winad.android.ads.ReciveInstallPackage');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'com.google.ads.AdOpener'),(2,3,'params'),(3,3,'action'),(4,12,'incoming_number'),(5,12,'android.intent.extra.PHONE_NUMBER'),(6,6,'com.google.ads.AdOpener'),(7,6,'action'),(8,12,'pdus'),(9,8,'android.intent.extra.PHONE_NUMBER'),(10,8,'pdus'),(11,6,'params'),(12,8,'incoming_number'),(13,21,'D50EF1926ADD471892E72BCE6D7E032C'),(14,20,'objUrl'),(15,21,'D780FBF4215247bcBB1AC0AD33C474FE'),(16,21,'172C94EDC717477aBF600D7898A64A8E'),(17,23,'pdus'),(18,23,'incoming_number'),(19,21,'EB80F3291A8E469c962CA133BDC549D7'),(20,23,'android.intent.extra.PHONE_NUMBER'),(21,41,'result'),(22,47,'screenName'),(23,45,'screenName'),(24,43,'screenName'),(25,47,'com.openfeint.internal.ui.NativeBrowser.argument.result'),(26,49,'com.openfeint.internal.ui.NativeBrowser.argument.src'),(27,47,'com.openfeint.internal.ui.NativeBrowser.argument.failed'),(28,47,'com.openfeint.internal.ui.NativeBrowser.argument.failure_desc'),(29,35,'levelname'),(30,35,'level'),(31,47,'content_name'),(32,45,'content_name'),(33,43,'content_name'),(34,35,'next'),(35,35,'original'),(36,49,'com.openfeint.internal.ui.NativeBrowser.argument.timeout'),(37,40,'webSiteAddress'),(38,30,'raceAgainstFriend'),(39,38,'timeDifference'),(40,30,'friendCreateRace'),(41,35,'seconds'),(42,38,'opponentName'),(43,55,'EB80F3291A8E469c962CA133BDC549D7'),(44,55,'D50EF1926ADD471892E72BCE6D7E032C'),(45,25,'friendIsLocalRace'),(46,25,'opponentName'),(47,57,'incoming_number'),(48,38,'weWon'),(49,54,'objUrl'),(50,25,'weWon'),(51,25,'timeDifference'),(52,57,'pdus'),(53,57,'android.intent.extra.PHONE_NUMBER'),(54,55,'D780FBF4215247bcBB1AC0AD33C474FE'),(55,30,'friendIsLocalRace'),(56,55,'172C94EDC717477aBF600D7898A64A8E');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',1,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',1,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'s',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'s',1,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,71,'a',1,NULL,NULL),(60,72,'a',0,NULL,NULL),(61,73,'a',1,NULL,NULL),(62,74,'a',1,NULL,NULL),(63,75,'a',1,NULL,NULL),(64,76,'a',1,NULL,NULL),(65,77,'a',1,NULL,NULL),(66,78,'a',1,NULL,NULL),(67,79,'a',1,NULL,NULL),(68,80,'a',1,NULL,NULL),(69,81,'a',1,NULL,NULL),(70,82,'a',1,NULL,NULL),(71,83,'a',1,NULL,NULL),(72,84,'a',0,NULL,NULL),(73,85,'a',0,NULL,NULL),(74,86,'a',0,NULL,NULL),(75,87,'a',0,NULL,NULL),(76,88,'a',0,NULL,NULL),(77,89,'a',0,NULL,NULL),(78,90,'a',0,NULL,NULL),(79,91,'a',0,NULL,NULL),(80,92,'a',0,NULL,NULL),(81,93,'a',0,NULL,NULL),(82,94,'a',0,NULL,NULL),(83,95,'a',0,NULL,NULL),(84,96,'a',0,NULL,NULL),(85,97,'a',0,NULL,NULL),(86,98,'a',0,NULL,NULL),(87,99,'a',0,NULL,NULL),(88,100,'a',0,NULL,NULL),(89,101,'a',0,NULL,NULL),(90,102,'a',0,NULL,NULL),(91,103,'a',0,NULL,NULL),(92,104,'a',0,NULL,NULL),(93,105,'s',1,NULL,NULL),(94,106,'s',1,NULL,NULL),(95,107,'r',1,NULL,NULL),(96,108,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,3),(4,4,1),(5,5,5),(6,6,5),(7,7,6),(8,8,12),(9,9,7),(10,10,11),(11,11,7),(12,12,11),(13,13,4),(14,14,12),(15,15,8),(16,16,11),(17,17,4),(18,18,7),(19,19,4),(20,20,4),(21,21,16),(22,22,22),(23,23,23),(24,24,21),(25,25,13),(26,26,19),(27,27,22),(28,28,22),(29,29,18),(30,30,17),(31,31,23),(32,32,15),(33,33,21),(34,34,24),(35,35,55),(36,36,35),(37,37,26),(38,38,47),(39,38,43),(40,39,26),(41,40,41),(42,41,24),(43,42,55),(44,42,25),(45,43,41),(46,44,27),(47,45,29),(48,46,56),(49,47,24),(50,48,55),(51,49,35),(52,50,27),(53,51,29),(54,52,27),(55,53,56),(56,54,46),(57,55,25),(58,55,55),(59,56,25),(60,57,25),(61,58,53),(62,59,52),(63,60,25),(64,61,25),(65,61,55),(66,62,57),(67,63,38),(68,63,55),(69,64,50),(70,65,48),(71,66,25),(72,66,55),(73,67,56),(74,68,57),(75,69,25),(76,69,55);
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
INSERT INTO `ExitPoints` VALUES (1,1,'<com.GoldDream.TingTing02ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(2,1,'<com.GoldDream.TingTing02ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(3,3,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(4,1,'<com.GoldDream.TingTing02ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(5,5,'<com.GoldDream.TingTing10i.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(6,5,'<com.GoldDream.TingTing10i.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(7,6,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(8,12,'<com.sjhi.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',94,'a',NULL),(9,7,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(10,11,'<com.sjhi.client.zjService: void a()>',89,'a',NULL),(11,7,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(12,11,'<com.sjhi.client.zjService: void a()>',106,'a',NULL),(13,4,'<com.GoldDream.TingTing10i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(14,12,'<com.sjhi.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(15,8,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(16,11,'<com.sjhi.client.zjService: void a()>',97,'a',NULL),(17,4,'<com.GoldDream.TingTing10i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(18,7,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(19,4,'<com.GoldDream.TingTing10i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(20,4,'<com.GoldDream.TingTing10i.TingTing21: void onCreate(android.os.Bundle)>',7,'s',NULL),(21,16,'<com.sjgo.client.oa_girl: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(22,22,'<com.sjgo.client.zjService: void a()>',102,'a',NULL),(23,23,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(24,59,'<net.youmi.android.al: void onClick(android.view.View)>',48,'a',NULL),(25,13,'<com.artofbytes.gravedefnce.Main: void marketPlaceIntent()>',6,'a',NULL),(26,19,'<com.sjgo.client.oa_feizhuliu: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(27,22,'<com.sjgo.client.zjService: void a()>',110,'a',NULL),(28,22,'<com.sjgo.client.zjService: void a()>',119,'a',NULL),(29,18,'<com.sjgo.client.oa_dongman: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(30,17,'<com.sjgo.client.oa_animal: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(31,23,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',95,'a',NULL),(32,15,'<com.sjgo.client.oa_fengjing: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(33,60,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(34,24,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(35,61,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(36,62,'<com.irafa.deadridr.NextLevel$2: void onClick(android.view.View)>',15,'a',NULL),(37,26,'<com.irafa.deadridr.LevelSelectActivity: void onResume()>',11,'s',NULL),(38,63,'<com.openfeint.internal.e: android.graphics.Bitmap a(android.app.Activity,int,int,android.content.Intent)>',10,'p',0),(39,64,'<com.irafa.deadridr.LevelSelectActivity$4: void onClick(android.view.View)>',12,'a',NULL),(40,41,'<com.irafa.deadridr.DeadRiderGame: boolean onKeyDown(int,android.view.KeyEvent)>',21,'a',NULL),(41,24,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(42,25,'<com.craigsrace.headtoheadrcing.StartScreenActivity: void startGame()>',17,'a',NULL),(43,41,'<com.irafa.deadridr.DeadRiderGame: void onActivityResult(int,int,android.content.Intent)>',14,'a',NULL),(44,65,'<com.irafa.deadridr.Preferences$5: void onClick(android.view.View)>',13,'a',NULL),(45,66,'<com.irafa.deadridr.ControllPreferences$1: void onClick(android.view.View)>',10,'a',NULL),(46,56,'<com.sjgo.client.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(47,24,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(48,67,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(49,68,'<com.irafa.deadridr.NextLevel$3: void onClick(android.view.View)>',24,'a',NULL),(50,27,'<com.irafa.deadridr.Preferences: void onResume()>',9,'s',NULL),(51,29,'<com.irafa.deadridr.ControllPreferences: void onResume()>',9,'s',NULL),(52,69,'<com.irafa.deadridr.Preferences$1: void onCheckedChanged(android.widget.CompoundButton,boolean)>',16,'s',NULL),(53,56,'<com.sjgo.client.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(54,46,'<com.sjgo.client.oa_fengjing: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(55,70,'<com.craigsrace.headtoheadrcing.StartScreenActivity$5: void onClick(android.view.View)>',21,'a',NULL),(56,25,'<com.craigsrace.headtoheadrcing.StartScreenActivity: void onActivityResult(int,int,android.content.Intent)>',8,'a',NULL),(57,25,'<com.craigsrace.headtoheadrcing.StartScreenActivity: void onActivityResult(int,int,android.content.Intent)>',42,'a',NULL),(58,53,'<com.sjgo.client.oa_feizhuliu: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(59,52,'<com.sjgo.client.oa_dongman: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(60,25,'<com.craigsrace.headtoheadrcing.StartScreenActivity: boolean onPrepareOptionsMenu(android.view.Menu)>',4,'a',NULL),(61,25,'<com.craigsrace.headtoheadrcing.StartScreenActivity: void sendSMS()>',15,'a',NULL),(62,57,'<com.sjgo.client.zjReceiver: void startObjActivity(android.content.Context)>',8,'a',NULL),(63,38,'<com.craigsrace.headtoheadrcing.RaceFinishedSendMessageDialog: void sendMessage(java.lang.String,int,int,boolean,java.lang.String)>',32,'a',NULL),(64,50,'<com.sjgo.client.oa_animal: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(65,48,'<com.sjgo.client.oa_girl: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(66,25,'<com.craigsrace.headtoheadrcing.StartScreenActivity: void sendEmail()>',19,'a',NULL),(67,56,'<com.sjgo.client.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(68,57,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(69,25,'<com.craigsrace.headtoheadrcing.StartScreenActivity: void sendGeneric()>',20,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,6),(2,3,6),(3,4,7),(4,5,7),(5,6,6),(6,7,6),(7,8,6),(8,9,6),(9,10,7),(10,11,7),(11,13,6),(12,14,11),(13,15,11),(14,16,6),(15,17,6),(16,18,12),(17,19,12),(18,20,13),(19,21,6),(20,22,13),(21,26,11),(22,27,12),(23,28,14),(24,29,14),(25,30,14),(26,31,14),(27,32,14),(28,33,14),(29,34,14),(30,35,14),(31,36,6),(32,38,13),(33,39,6),(34,44,6),(35,45,6),(36,46,6),(37,47,6),(38,48,6),(39,49,6),(40,50,6),(41,51,6),(42,52,6),(43,53,6),(44,54,6),(45,55,6),(46,57,6),(47,58,10),(48,59,6),(49,60,6),(50,61,6),(51,62,6),(52,64,6),(53,66,6),(54,67,11),(55,69,15),(56,73,13),(57,74,13),(58,75,14),(59,77,14),(60,78,14),(61,79,10),(62,80,14),(63,81,10),(64,82,14),(65,83,10),(66,84,14),(67,85,14),(68,86,14),(69,87,6),(70,95,6),(71,97,14),(72,98,14),(73,99,14),(74,100,14),(75,101,14),(76,102,14),(77,103,14),(78,104,14),(79,107,16),(80,108,11),(81,109,12),(82,110,14),(83,111,14),(84,112,14),(85,113,14),(86,114,14),(87,115,14),(88,116,14),(89,117,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,69,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/GoldDream/TingTing02ii/readme'),(2,12,'com/sjhi/client/HandPics'),(3,13,'com.android.packageinstaller.PackageInstallerActivity'),(4,16,'com.android.packageinstaller.PackageInstallerActivity'),(5,18,'com/sjhi/client/zjService'),(6,19,'com/GoldDream/zj/zjService'),(7,23,'com/GoldDream/TingTing10i/readme'),(8,24,'com/GoldDream/zj/zjService'),(9,25,'com/sjgo/client/viewpic'),(10,27,'com/sjgo/client/zjService'),(11,37,'com/sjgo/client/viewpic'),(12,39,'com.android.packageinstaller.PackageInstallerActivity'),(13,40,'com/sjgo/client/viewpic'),(14,41,'com/sjgo/client/viewpic'),(15,42,'com/sjgo/client/HandPics'),(16,43,'com/sjgo/client/viewpic'),(17,53,'com.android.packageinstaller.PackageInstallerActivity'),(18,56,'com/irafa/deadridr/DeadRiderGame'),(19,63,'com/irafa/deadridr/DeadRiderGame'),(20,65,'com/irafa/deadridr/PauseMenu'),(21,68,'com/craigsrace/headtoheadrcing/CraigsRaceLandscapeActivity'),(22,71,'com/irafa/deadridr/ControllPreferences'),(23,70,'com/craigsrace/headtoheadrcing/CraigsRaceLandscapeActivity'),(24,72,'com/irafa/deadridr/Preferences'),(25,76,'com/irafa/deadridr/DeadRiderGame'),(26,87,'com.android.packageinstaller.PackageInstallerActivity'),(27,88,'com/sjgo/client/viewpic'),(28,89,'com/craigsrace/headtoheadrcing/RaceAFriendDialog'),(29,90,'com/craigsrace/headtoheadrcing/NameEntryActivity'),(30,91,'com/craigsrace/headtoheadrcing/RaceFinishedSendMessageDialog'),(31,92,'com/sjgo/client/viewpic'),(32,93,'com/sjgo/client/viewpic'),(33,94,'com/craigsrace/headtoheadrcing/PreferencesDialog'),(34,96,'com/sjgo/client/HandPics'),(35,105,'com/sjgo/client/viewpic'),(36,106,'com/sjgo/client/viewpic'),(37,109,'com/sjgo/client/zjService');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,4,3),(4,5,4),(5,6,5),(6,7,6),(7,8,7),(8,9,8),(9,10,9),(10,11,10),(11,13,11),(12,14,12),(13,15,13),(14,16,14),(15,17,15),(16,20,16),(17,21,17),(18,22,18),(19,26,19),(20,36,20),(21,38,21),(22,39,22),(23,44,23),(24,45,24),(25,46,25),(26,47,26),(27,48,27),(28,49,28),(29,50,29),(30,51,30),(31,52,31),(32,53,32),(33,54,33),(34,55,34),(35,57,35),(36,59,36),(37,60,37),(38,61,38),(39,62,39),(40,64,40),(41,66,41),(42,67,42),(43,73,43),(44,74,44),(45,87,45),(46,108,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,25,'objUrl'),(2,28,'android.intent.extra.INTENT'),(3,29,'android.intent.extra.INTENT'),(4,30,'android.intent.extra.TITLE'),(5,30,'android.intent.extra.INTENT'),(6,31,'android.intent.extra.INTENT'),(7,32,'android.intent.extra.TITLE'),(8,32,'android.intent.extra.INTENT'),(9,33,'android.intent.extra.INTENT'),(10,34,'android.intent.extra.TITLE'),(11,34,'android.intent.extra.INTENT'),(12,35,'android.intent.extra.TITLE'),(13,35,'android.intent.extra.INTENT'),(14,37,'objUrl'),(15,40,'objUrl'),(16,41,'objUrl'),(17,42,'objUrl'),(18,43,'objUrl'),(19,68,'trackNum'),(20,68,'carType'),(21,68,'friendIsLocalRace'),(22,68,'raceAgainstFriend'),(23,68,'friendId'),(24,68,'friendCreateRace'),(25,69,'<INTENT>'),(26,70,'carType'),(27,70,'trackNum'),(28,70,'raceAgainstFriend'),(29,75,'android.intent.extra.INTENT'),(30,77,'android.intent.extra.INTENT'),(31,78,'android.intent.extra.TITLE'),(32,78,'android.intent.extra.INTENT'),(33,80,'android.intent.extra.INTENT'),(34,82,'android.intent.extra.TITLE'),(35,82,'android.intent.extra.INTENT'),(36,84,'android.intent.extra.INTENT'),(37,85,'android.intent.extra.TITLE'),(38,85,'android.intent.extra.INTENT'),(39,86,'android.intent.extra.TITLE'),(40,86,'android.intent.extra.INTENT'),(41,88,'objUrl'),(42,91,'ourScore'),(43,91,'weWon'),(44,91,'timeDifference'),(45,91,'opponentScore'),(46,91,'opponentName'),(47,92,'objUrl'),(48,93,'objUrl'),(49,95,'sms_body'),(50,96,'objUrl'),(51,97,'android.intent.extra.INTENT'),(52,98,'android.intent.extra.INTENT'),(53,99,'android.intent.extra.TITLE'),(54,99,'android.intent.extra.INTENT'),(55,100,'android.intent.extra.INTENT'),(56,101,'android.intent.extra.TITLE'),(57,101,'android.intent.extra.INTENT'),(58,102,'android.intent.extra.INTENT'),(59,103,'android.intent.extra.TITLE'),(60,103,'android.intent.extra.INTENT'),(61,104,'android.intent.extra.TITLE'),(62,104,'android.intent.extra.INTENT'),(63,105,'objUrl'),(64,106,'objUrl'),(65,107,'android.intent.extra.TEXT'),(66,107,'android.intent.extra.SUBJECT'),(67,110,'android.intent.extra.INTENT'),(68,111,'android.intent.extra.INTENT'),(69,112,'android.intent.extra.TITLE'),(70,112,'android.intent.extra.INTENT'),(71,113,'android.intent.extra.INTENT'),(72,114,'android.intent.extra.TITLE'),(73,114,'android.intent.extra.INTENT'),(74,115,'android.intent.extra.INTENT'),(75,116,'android.intent.extra.TITLE'),(76,116,'android.intent.extra.INTENT'),(77,117,'android.intent.extra.TITLE'),(78,117,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,5),(5,3,2),(6,3,3),(7,4,1),(8,5,3),(9,5,2),(10,5,4),(11,5,5),(12,6,1),(13,7,2),(14,7,3),(15,7,4),(16,7,5),(17,8,1),(18,9,1),(19,10,8),(20,10,9),(21,11,10),(22,12,4),(23,12,3),(24,12,5),(25,12,2),(26,13,9),(27,13,8),(28,14,1),(29,15,1),(30,16,1),(31,17,1),(32,18,1),(33,19,1),(34,20,1),(35,21,1),(36,22,1),(37,23,1),(38,24,1),(39,25,1),(40,26,3),(41,26,5),(42,27,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,1),(4,6,1),(5,8,1),(6,9,1),(7,14,1),(8,15,3),(9,16,3),(10,17,3),(11,18,3),(12,19,3),(13,20,3),(14,21,3),(15,22,3),(16,23,3),(17,24,3),(18,25,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,27,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,4,'(.*)','(.*)'),(2,10,'(.*)','(.*)'),(3,44,'application','vnd.android.package-archive'),(4,45,'application','vnd.android.package-archive'),(5,46,'application','vnd.android.package-archive'),(6,47,'application','vnd.android.package-archive'),(7,48,'application','vnd.android.package-archive'),(8,49,'application','vnd.android.package-archive'),(9,50,'application','vnd.android.package-archive'),(10,51,'application','vnd.android.package-archive'),(11,52,'application','vnd.android.package-archive'),(12,54,'application','vnd.android.package-archive'),(13,55,'application','vnd.android.package-archive'),(14,57,'application','vnd.android.package-archive'),(15,59,'application','vnd.android.package-archive'),(16,60,'application','vnd.android.package-archive'),(17,61,'application','vnd.android.package-archive'),(18,62,'application','vnd.android.package-archive'),(19,64,'application','vnd.android.package-archive'),(20,66,'application','vnd.android.package-archive'),(21,95,'vnd.android-dir','mms-sms'),(22,107,'message','rfc822');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.GoldDream.TingTing02ii'),(2,12,'bubei.purman'),(3,13,'com.android.packageinstaller'),(4,16,'com.android.packageinstaller'),(5,18,'bubei.purman'),(6,19,'com.GoldDream.TingTing10i'),(7,23,'com.GoldDream.TingTing10i'),(8,24,'com.GoldDream.TingTing10i'),(9,25,'com.artofbytes.gravedefnce'),(10,27,'com.artofbytes.gravedefnce'),(11,37,'com.artofbytes.gravedefnce'),(12,39,'com.android.packageinstaller'),(13,40,'com.artofbytes.gravedefnce'),(14,41,'com.artofbytes.gravedefnce'),(15,42,'com.artofbytes.gravedefnce'),(16,43,'com.artofbytes.gravedefnce'),(17,53,'com.android.packageinstaller'),(18,56,'com.irafa.deadridr'),(19,63,'com.irafa.deadridr'),(20,65,'com.irafa.deadridr'),(21,68,'com.craigsrace.headtoheadrcing'),(22,71,'com.irafa.deadridr'),(23,70,'com.craigsrace.headtoheadrcing'),(24,72,'com.irafa.deadridr'),(25,76,'com.irafa.deadridr'),(26,87,'com.android.packageinstaller'),(27,88,'com.craigsrace.headtoheadrcing'),(28,89,'com.craigsrace.headtoheadrcing'),(29,90,'com.craigsrace.headtoheadrcing'),(30,91,'com.craigsrace.headtoheadrcing'),(31,92,'com.craigsrace.headtoheadrcing'),(32,93,'com.craigsrace.headtoheadrcing'),(33,94,'com.craigsrace.headtoheadrcing'),(34,96,'com.craigsrace.headtoheadrcing'),(35,105,'com.craigsrace.headtoheadrcing'),(36,106,'com.craigsrace.headtoheadrcing'),(37,109,'com.craigsrace.headtoheadrcing');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,8,0),(4,9,0),(5,12,0),(6,13,0),(7,23,0),(8,24,0),(9,25,0),(10,28,0),(11,51,0),(12,57,0),(13,58,0),(14,59,0),(15,61,0),(16,62,0),(17,63,0),(18,64,0),(19,65,0),(20,66,0),(21,67,0),(22,68,0),(23,69,0),(24,70,0),(25,71,0),(26,95,0),(27,96,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,3,1,0),(5,3,1,0),(6,4,1,0),(7,5,1,0),(8,6,1,0),(9,7,1,0),(10,7,1,0),(11,7,1,0),(12,8,0,0),(13,9,0,0),(14,10,1,0),(15,11,1,0),(16,12,0,0),(17,13,1,0),(18,14,0,0),(19,15,0,0),(20,16,1,0),(21,17,1,0),(22,18,1,0),(23,19,0,0),(24,20,0,0),(25,21,0,0),(26,22,1,0),(27,23,0,0),(28,24,1,0),(29,24,1,0),(30,24,1,0),(31,24,1,0),(32,24,1,0),(33,24,1,0),(34,24,1,0),(35,24,1,0),(36,25,1,0),(37,26,0,0),(38,27,1,0),(39,28,0,0),(40,29,0,0),(41,30,0,0),(42,31,0,0),(43,32,0,0),(44,33,1,0),(45,33,1,0),(46,33,1,0),(47,33,1,0),(48,33,1,0),(49,33,1,0),(50,33,1,0),(51,33,1,0),(52,33,1,0),(53,34,0,0),(54,35,1,0),(55,35,1,0),(56,36,0,0),(57,35,1,0),(58,37,1,0),(59,35,1,0),(60,35,1,0),(61,35,1,0),(62,35,1,0),(63,39,0,0),(64,35,1,0),(65,40,0,0),(66,35,1,0),(67,41,1,0),(68,42,0,0),(69,43,1,0),(70,42,0,0),(71,44,0,0),(72,45,0,0),(73,46,1,0),(74,47,1,0),(75,48,1,0),(76,49,0,0),(77,48,1,0),(78,48,1,0),(79,50,1,0),(80,48,1,0),(81,51,1,0),(82,48,1,0),(83,52,1,0),(84,48,1,0),(85,48,1,0),(86,48,1,0),(87,53,0,0),(88,54,0,0),(89,55,0,0),(90,56,0,0),(91,57,0,0),(92,58,0,0),(93,59,0,0),(94,60,0,0),(95,61,1,0),(96,62,0,0),(97,63,1,0),(98,63,1,0),(99,63,1,0),(100,63,1,0),(101,63,1,0),(102,63,1,0),(103,63,1,0),(104,63,1,0),(105,64,0,0),(106,65,0,0),(107,66,1,0),(108,67,1,0),(109,68,0,0),(110,69,1,0),(111,69,1,0),(112,69,1,0),(113,69,1,0),(114,69,1,0),(115,69,1,0),(116,69,1,0),(117,69,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(3,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(12,'android.permission.CALL_PHONE'),(5,'android.permission.DELETE_PACKAGES'),(18,'android.permission.GET_ACCOUNTS'),(16,'android.permission.GET_TASKS'),(4,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(7,'android.permission.PROCESS_OUTGOING_CALLS'),(21,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_SMS'),(23,'android.permission.RECORD_AUDIO'),(6,'android.permission.SEND_SMS'),(20,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(8,'android.permission.WRITE_EXTERNAL_STORAGE'),(24,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(22,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(19,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://lebar.gicp.net/login.aspx?id=9998',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?id=9998',NULL,NULL,NULL),(6,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9960&cid=1000',NULL,NULL,NULL),(7,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9960&cid=1000',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(13,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9960&cid=1000',NULL,NULL,NULL),(16,'package','(.*)',NULL,NULL,NULL,NULL),(17,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9960&cid=1000',NULL,NULL,NULL),(18,'package','(.*)',NULL,NULL,NULL,NULL),(19,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,'package','(.*)',NULL,NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(43,'package','(.*)',NULL,NULL,NULL,NULL),(44,'package','(.*)',NULL,NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'tel:(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,2,4),(8,2,5),(9,2,6),(10,2,7),(11,2,8),(12,2,9),(13,2,10),(14,2,11),(15,2,12),(16,2,13),(17,2,14),(18,2,15),(19,3,1),(20,3,2),(21,3,3),(22,3,4),(23,3,5),(24,3,7),(25,3,8),(26,3,9),(27,3,10),(28,3,11),(29,3,13),(30,3,14),(31,3,15),(32,4,17),(33,4,16),(34,4,1),(35,4,2),(36,4,3),(37,4,4),(38,4,5),(39,4,7),(40,4,8),(41,4,10),(42,4,11),(43,4,13),(44,4,15),(45,5,1),(46,5,2),(47,5,3),(48,5,4),(49,5,5),(50,5,6),(51,5,7),(52,5,8),(53,5,10),(54,6,2),(55,5,11),(56,6,3),(57,5,13),(58,6,4),(59,5,14),(60,6,5),(61,5,17),(62,6,7),(63,5,19),(64,6,8),(65,5,18),(66,6,10),(67,5,20),(68,6,13),(69,6,14),(70,6,15),(71,6,17),(72,6,20),(73,7,1),(74,7,2),(75,7,3),(76,7,8),(77,7,9),(78,7,11),(79,7,14),(80,7,15),(81,7,16),(82,7,19),(83,7,21),(84,7,23),(85,7,22),(86,7,24);
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

-- Dump completed on 2015-10-09  0:39:45
