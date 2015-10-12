-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_451
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
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(5,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.CALL'),(15,'android.intent.action.CHOOSER'),(14,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.NEW_OUTGOING_CALL'),(17,'android.intent.action.PACKAGE_ADDED'),(8,'android.intent.action.PHONE_STATE'),(13,'android.intent.action.RUN'),(4,'android.intent.action.USER_PRESENT'),(11,'android.intent.action.VIEW'),(6,'android.provider.Telephony.SMS_RECEIVED'),(10,'com.amir.nightjar.buservice.BUFFER_SERVICES'),(2,'com.amir.nightjar.service.BUFFER_SERVICES'),(3,'com.amir.nightjar.service.CONFIG_SERVICES'),(7,'com.android.vending.INSTALL_REFERRER');
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
INSERT INTO `Applications` VALUES (1,'com.gthu.cfdvuvkbblncc.lhrpcrmr.vjiqa',10038),(2,'com.droid.game.forestman',2),(3,'com.golden.eagle',1),(4,'com.rainbow.FMajor',4),(5,'com.chenyx.tiltmazs',5),(6,'com.juspmvtae.it.dkprmwvfim',10032),(7,'com.batterypoweredgames.deadlychambersh',19);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.rakoo.puzzle.PuzzleActivity'),(2,1,'com.rakoo.puzzle.MoreGameActivity'),(3,1,'raker.sdk.social.MainAct'),(4,1,'com.nvmccB.TacUDekenMNC'),(5,1,'com.nvmccB.EfhCdluTkvoEsa'),(6,2,'com.droid.game.forestman.GameStartActivity'),(7,3,'com.golden.eagle.BufferServices'),(8,1,'com.nvmccB.QGaMmrUhd'),(9,1,'com.nvmccB.BDoWuFdqIfmVo'),(10,2,'com.droid.game.forestman.StageSelectActivity'),(11,1,'com.nvmccB.tSppnJTqPh'),(12,2,'com.droid.game.forestman.HighScoreActivity'),(13,3,'com.golden.eagle.ConfigService'),(14,1,'com.nvmccB.GUwsUhEcKB'),(15,2,'com.droid.game.forestman.GameActivity'),(16,1,'com.nvmccB.userPermissionReceiver'),(17,2,'com.droid.game.forestman.GameStopActivity'),(18,2,'com.droid.activity.MoreActivity'),(19,3,'com.golden.eagle.BootMointor'),(20,2,'com.droid.recommend.RecommendActivity'),(21,2,'com.GoldDream.zj.zjService'),(22,3,'com.golden.eagle.oderbock.InstructionBlockService'),(23,2,'com.google.android.apps.analytics.AnalyticsReceiver'),(24,3,'com.everysoft.autoanswer.AutoAnswerReceiver'),(25,4,'com.rainbow.FMajor.FMaj'),(26,2,'com.GoldDream.zj.zjReceiver'),(27,4,'com.rainbow.FMajor.FMaj2'),(28,3,'com.golden.eagle.scratch._CP_CONFIG_DB_'),(29,4,'com.rainbow.FMajor.FMaj3'),(30,3,'com.golden.eagle.scratch._CP_CAM_DB_'),(31,4,'com.sjgo.client.HandPics'),(32,4,'com.sjgo.client.oa_fengjing'),(33,5,'com.chenyx.tiltmazs.TiltMaze'),(34,4,'com.sjgo.client.oa_girl'),(35,4,'com.sjgo.client.oa_animal'),(36,5,'com.sjgo.client.HandPics'),(37,4,'com.sjgo.client.oa_dongman'),(38,5,'com.sjgo.client.oa_fengjing'),(39,4,'com.sjgo.client.oa_feizhuliu'),(40,5,'com.sjgo.client.oa_girl'),(41,4,'com.sjgo.client.viewpic'),(42,5,'com.sjgo.client.oa_animal'),(43,4,'net.youmi.android.AdActivity'),(44,5,'com.sjgo.client.oa_dongman'),(45,4,'com.sjgo.client.zjService'),(46,5,'com.sjgo.client.oa_feizhuliu'),(47,4,'com.sjgo.client.zjReceiver'),(48,5,'com.sjgo.client.viewpic'),(49,5,'net.youmi.android.AdActivity'),(50,5,'com.sjgo.client.zjService'),(51,5,'com.sjgo.client.zjReceiver'),(52,6,'com.juspmvtae.it.dkprmwvfim.GameActivity'),(53,6,'com.google.ads.AdActivity'),(54,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(55,6,'com.millennialmedia.android.VideoPlayer'),(56,6,'com.WbjfUfh.ujQQLoKHkeFa'),(57,6,'com.WbjfUfh.IQCLFEHFOSUMb'),(58,6,'com.WbjfUfh.nubFUsvB'),(59,6,'com.WbjfUfh.jcEFEUtvmEBl'),(60,6,'com.WbjfUfh.GHJklgGLsNQr'),(61,6,'com.WbjfUfh.CiBEpgWfr'),(62,6,'com.WbjfUfh.userPermissionReceiver'),(63,3,'com.golden.eagle.scratch.Ox_Order_DbService'),(64,3,'com.golden.eagle.scratch.Ox_Config_DbService'),(65,3,'com.golden.eagle.ConfigReceiver'),(66,3,'com.golden.eagle.BufferReceiver'),(67,1,'com.nvmccB.ah'),(68,1,'com.nvmccB.ad'),(69,1,'com.nvmccB.ae'),(70,3,'com.golden.eagle.sorder.TaskHandlerActivator'),(71,2,'com.droid.recommend.RecommendActivity$1'),(72,4,'net.youmi.android.be'),(73,2,'com.droid.activity.MoreHelper'),(74,2,'com.droid.recommend.RecommendUtil'),(75,5,'net.youmi.android.al'),(76,4,'net.youmi.android.al'),(77,5,'net.youmi.android.be'),(78,6,'com.WbjfUfh.ad'),(79,6,'com.WbjfUfh.o'),(80,6,'com.WbjfUfh.ab'),(81,7,'com.batterypoweredgames.deadlychambersh.GameActivity'),(82,7,'com.batterypoweredgames.deadlychambersh.GameSettingsActivity'),(83,7,'com.batterypoweredgames.deadlychambersh.GameSettingsTabActivity'),(84,7,'com.sjli.client.MogoStart'),(85,7,'com.batterypoweredgames.deadlychambersh.PlayActivity'),(86,7,'com.batterypoweredgames.deadlychambersh.EndGameActivity'),(87,7,'com.batterypoweredgames.deadlychambersh.AchievementsActivity'),(88,7,'com.zeemote.zc.ui.android.ControllerAndroidUi$Activity'),(89,7,'com.batterypoweredgames.deadlychambersh.MainMenuActivity'),(90,7,'com.sjli.client.HHandPics'),(91,7,'com.sjli.client.viewpic'),(92,7,'com.google.ads.AdActivity'),(93,7,'cn.domob.android.ads.DomobActivity'),(94,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(95,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(96,7,'net.youmi.android.AdActivity'),(97,7,'net.youmi.android.spotad.AdActivity'),(98,7,'com.wooboo.adlib_android.AdActivity'),(99,7,'com.wooboo.adlib_android.FullActivity'),(100,7,'com.tencent.mobwin.MobinWINBrowserActivity'),(101,7,'com.adchina.android.ads.views.AdBrowserView'),(102,7,'com.adchina.android.ads.views.FullScreenAdActivity'),(103,7,'cn.appmedia.ad.AdActivity'),(104,7,'com.winad.android.ads.VideoPlayerActivity'),(105,7,'com.suizong.mobplate.ads.AdActivity'),(106,7,'com.mt.airad.MultiAD'),(107,7,'com.lmmob.ad.sdk.LmMobAdWebView'),(108,7,'com.lmmob.ad.sdk.LmMobFullImageActivity'),(109,7,'net.winsmedia.WebViewActivity'),(110,7,'com.baidu.AppActivity'),(111,7,'com.sjli.client.zjjService'),(112,7,'com.admogo.UpdateService'),(113,7,'com.sjli.client.zjjReceiver'),(114,7,'com.winad.android.ads.ReciveInstallPackage');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,13,'UpRPhonenum'),(2,13,'UpReciever'),(3,7,'EDeleteOne'),(4,13,'UpSenderP'),(5,24,'state'),(6,22,'pdus'),(7,13,'UpSenderS'),(8,13,'UpSenderU'),(9,7,'EUpdataYnV'),(10,13,'UpPhonenum'),(11,11,'fileURL'),(12,8,'imageURL'),(13,8,'apkSoftID'),(14,8,'apkVersion'),(15,11,'packageName'),(16,8,'apkInfo'),(17,8,'detailFlag'),(18,8,'apkSize'),(19,7,'CmdTypeHandler'),(20,8,'apkTitle'),(21,24,'incoming_number'),(22,13,'ConfigHandler'),(23,8,'iconURL'),(24,7,'EUpdataReasonV'),(25,14,'fileName'),(26,8,'np_app_key'),(27,14,'np_app_key'),(28,4,'np_app_key'),(29,23,'referrer'),(30,5,'np_app_key'),(31,17,'Life'),(32,9,'np_app_key'),(33,17,'Score'),(34,26,'pdus'),(35,47,'pdus'),(36,17,'level'),(37,41,'objUrl'),(38,8,'apkURL'),(39,43,'D780FBF4215247bcBB1AC0AD33C474FE'),(40,8,'packageName'),(41,26,'incoming_number'),(42,43,'EB80F3291A8E469c962CA133BDC549D7'),(43,14,'fileURL'),(44,26,'android.intent.extra.PHONE_NUMBER'),(45,49,'D780FBF4215247bcBB1AC0AD33C474FE'),(46,17,'success'),(47,15,'level'),(48,51,'pdus'),(49,49,'EB80F3291A8E469c962CA133BDC549D7'),(50,43,'D50EF1926ADD471892E72BCE6D7E032C'),(51,43,'172C94EDC717477aBF600D7898A64A8E'),(52,47,'incoming_number'),(53,53,'com.google.ads.AdOpener'),(54,58,'detailFlag'),(55,47,'android.intent.extra.PHONE_NUMBER'),(56,61,'fileName'),(57,60,'fileURL'),(58,58,'packageName'),(59,49,'D50EF1926ADD471892E72BCE6D7E032C'),(60,48,'objUrl'),(61,49,'172C94EDC717477aBF600D7898A64A8E'),(62,58,'apkTitle'),(63,61,'fileURL'),(64,58,'apkURL'),(65,58,'apkInfo'),(66,59,'np_app_key'),(67,56,'np_app_key'),(68,57,'np_app_key'),(69,61,'np_app_key'),(70,58,'np_app_key'),(71,51,'android.intent.extra.PHONE_NUMBER'),(72,58,'apkSoftID'),(73,51,'incoming_number'),(74,53,'action'),(75,60,'packageName'),(76,58,'apkVersion'),(77,53,'params'),(78,58,'apkSize'),(79,58,'iconURL'),(80,58,'imageURL');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'s',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'r',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',1,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'r',1,1,NULL),(25,25,'a',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,28,'p',0,NULL,NULL),(28,27,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,30,'p',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',1,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'r',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,65,'r',1,NULL,NULL),(64,66,'r',1,NULL,NULL),(65,81,'a',0,NULL,NULL),(66,82,'a',0,NULL,NULL),(67,83,'a',0,NULL,NULL),(68,84,'a',1,NULL,NULL),(69,85,'a',0,NULL,NULL),(70,86,'a',0,NULL,NULL),(71,87,'a',0,NULL,NULL),(72,88,'a',0,NULL,NULL),(73,89,'a',0,NULL,NULL),(74,90,'a',0,NULL,NULL),(75,91,'a',0,NULL,NULL),(76,92,'a',0,NULL,NULL),(77,93,'a',0,NULL,NULL),(78,94,'a',0,NULL,NULL),(79,95,'a',0,NULL,NULL),(80,96,'a',0,NULL,NULL),(81,97,'a',0,NULL,NULL),(82,98,'a',0,NULL,NULL),(83,99,'a',0,NULL,NULL),(84,100,'a',0,NULL,NULL),(85,101,'a',0,NULL,NULL),(86,102,'a',0,NULL,NULL),(87,103,'a',0,NULL,NULL),(88,104,'a',0,NULL,NULL),(89,105,'a',0,NULL,NULL),(90,106,'a',0,NULL,NULL),(91,107,'a',0,NULL,NULL),(92,108,'a',0,NULL,NULL),(93,109,'a',0,NULL,NULL),(94,110,'a',0,NULL,NULL),(95,111,'s',1,NULL,NULL),(96,112,'s',1,NULL,NULL),(97,113,'r',1,NULL,NULL),(98,114,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,24),(3,3,31),(4,4,7),(5,5,7),(6,6,13),(7,7,7),(8,8,13),(9,9,22),(10,10,7),(11,11,13),(12,12,13),(13,13,27),(14,14,13),(15,15,22),(16,16,13),(17,17,22),(18,18,22),(19,19,27),(20,20,22),(21,21,13),(22,22,22),(23,23,5),(24,24,31),(25,25,22),(26,26,16),(27,27,22),(28,28,4),(29,29,13),(30,30,31),(31,31,5),(32,32,7),(33,33,27),(34,34,4),(35,35,22),(36,36,5),(37,36,8),(38,37,22),(39,38,22),(40,39,5),(41,40,5),(42,40,8),(43,41,7),(44,42,24),(45,43,8),(46,44,22),(47,45,21),(48,46,11),(49,47,19),(50,48,10),(51,48,17),(52,48,20),(53,48,6),(54,49,4),(55,50,26),(56,51,14),(57,52,34),(58,53,10),(59,53,6),(60,53,17),(61,54,47),(62,55,6),(63,55,10),(64,55,17),(65,56,5),(66,57,6),(67,57,17),(68,57,10),(69,58,45),(70,59,1),(71,60,17),(72,60,10),(73,60,6),(74,61,4),(75,62,43),(76,63,17),(77,63,6),(78,63,10),(79,64,21),(80,65,21),(81,66,17),(82,67,50),(83,68,42),(84,69,49),(85,69,33),(86,70,39),(87,71,37),(88,72,32),(89,73,43),(90,74,33),(91,74,49),(92,75,57),(93,76,62),(94,77,45),(95,78,56),(96,79,56),(97,80,35),(98,81,56),(99,82,47),(100,83,60),(101,84,45),(102,85,57),(103,86,40),(104,87,58),(105,88,46),(106,89,50),(107,90,57),(108,91,51),(109,92,61),(110,93,51),(111,94,44),(112,95,57),(113,96,50),(114,97,38),(115,98,57),(116,98,58),(117,99,57),(118,99,58),(119,100,53),(120,101,56),(121,102,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,63,'<com.golden.eagle.scratch.Ox_Order_DbService: void InsterL(com.golden.eagle.scratch.Md_0XEECMD_)>',14,'p',NULL),(2,24,'<com.everysoft.autoanswer.AutoAnswerReceiver: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(3,30,'<com.golden.eagle.scratch._CP_CAM_DB_: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',39,'p',0),(4,63,'<com.golden.eagle.scratch.Ox_Order_DbService: void UpdateAFieldL(java.lang.Integer,java.lang.String,int)>',21,'p',NULL),(5,7,'<com.golden.eagle.BufferServices: void SendBroadcast(java.lang.Integer,java.lang.Integer)>',8,'r',NULL),(6,64,'<com.golden.eagle.scratch.Ox_Config_DbService: void UpdateSenderInfo(java.lang.Integer,java.lang.String,java.lang.String,java.lang.String)>',17,'p',NULL),(7,7,'<com.golden.eagle.BufferServices: void SendBroadcast()>',4,'r',NULL),(8,64,'<com.golden.eagle.scratch.Ox_Config_DbService: java.util.List SelectAllEntry()>',15,'p',NULL),(9,22,'<com.golden.eagle.oderbock.InstructionBlockService: int Of_InstructionConFig(android.content.Context,java.lang.String)>',78,'s',NULL),(10,63,'<com.golden.eagle.scratch.Ox_Order_DbService: int SelectAFieldL(java.lang.Integer,java.lang.String)>',14,'p',NULL),(11,64,'<com.golden.eagle.scratch.Ox_Config_DbService: com.golden.eagle.scratch.Md_0XCONFIG SelectMailSender(java.lang.Integer)>',15,'p',NULL),(12,64,'<com.golden.eagle.scratch.Ox_Config_DbService: java.lang.String SelectAFieldL(java.lang.Integer,java.lang.String)>',14,'p',NULL),(13,28,'<com.golden.eagle.scratch._CP_CONFIG_DB_: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',25,'p',0),(14,13,'<com.golden.eagle.ConfigService: void SendBroadcast(java.lang.Integer)>',5,'r',NULL),(15,22,'<com.golden.eagle.oderbock.InstructionBlockService: boolean Of_Instruction(android.content.Context,java.lang.String)>',40,'s',NULL),(16,64,'<com.golden.eagle.scratch.Ox_Config_DbService: void UpdateAFieldL(java.lang.Integer,java.lang.String,java.lang.String)>',14,'p',NULL),(17,22,'<com.golden.eagle.oderbock.InstructionBlockService: int Of_InstructionConFig(android.content.Context,java.lang.String)>',66,'s',NULL),(18,22,'<com.golden.eagle.oderbock.InstructionBlockService: boolean Of_Instruction(android.content.Context,java.lang.String)>',70,'s',NULL),(19,28,'<com.golden.eagle.scratch._CP_CONFIG_DB_: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',39,'p',0),(20,22,'<com.golden.eagle.oderbock.InstructionBlockService: int Of_InstructionConFig(android.content.Context,java.lang.String)>',33,'s',NULL),(21,64,'<com.golden.eagle.scratch.Ox_Config_DbService: java.util.List SelectAllEntryKey()>',9,'p',NULL),(22,22,'<com.golden.eagle.oderbock.InstructionBlockService: boolean Of_Instruction(android.content.Context,java.lang.String)>',22,'s',NULL),(23,5,'<com.nvmccB.EfhCdluTkvoEsa: void a()>',3,'a',NULL),(24,30,'<com.golden.eagle.scratch._CP_CAM_DB_: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',25,'p',0),(25,22,'<com.golden.eagle.oderbock.InstructionBlockService: int Of_InstructionConFig(android.content.Context,java.lang.String)>',53,'s',NULL),(26,67,'<com.nvmccB.ah: void run()>',25,'s',NULL),(27,22,'<com.golden.eagle.oderbock.InstructionBlockService: boolean Of_Instruction(android.content.Context,java.lang.String)>',31,'s',NULL),(28,68,'<com.nvmccB.ad: void run()>',8,'s',NULL),(29,64,'<com.golden.eagle.scratch.Ox_Config_DbService: void InsterL(com.golden.eagle.scratch.Md_0XCONFIG)>',20,'p',NULL),(30,30,'<com.golden.eagle.scratch._CP_CAM_DB_: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',13,'p',0),(31,5,'<com.nvmccB.EfhCdluTkvoEsa: void b()>',45,'a',NULL),(32,63,'<com.golden.eagle.scratch.Ox_Order_DbService: java.util.List SelectAllEntryToKey()>',7,'p',NULL),(33,28,'<com.golden.eagle.scratch._CP_CONFIG_DB_: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',13,'p',0),(34,4,'<com.nvmccB.TacUDekenMNC: void onCreate(android.os.Bundle)>',36,'a',NULL),(35,22,'<com.golden.eagle.oderbock.InstructionBlockService: boolean Of_Instruction(android.content.Context,java.lang.String)>',63,'s',NULL),(36,8,'<com.nvmccB.QGaMmrUhd: void a(com.nvmccB.QGaMmrUhd,android.content.Context,java.lang.String)>',5,'a',NULL),(37,22,'<com.golden.eagle.oderbock.InstructionBlockService: boolean Of_Instruction(android.content.Context,java.lang.String)>',56,'s',NULL),(38,22,'<com.golden.eagle.oderbock.InstructionBlockService: boolean Of_Instruction(android.content.Context,java.lang.String)>',13,'s',NULL),(39,5,'<com.nvmccB.EfhCdluTkvoEsa: void onBackPressed()>',5,'a',NULL),(40,69,'<com.nvmccB.ae: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(41,63,'<com.golden.eagle.scratch.Ox_Order_DbService: void DeteleAEntry(java.lang.Integer)>',15,'p',NULL),(42,24,'<com.everysoft.autoanswer.AutoAnswerReceiver: void returnToHome(android.content.Context)>',8,'a',NULL),(43,8,'<com.nvmccB.QGaMmrUhd: void onCreate(android.os.Bundle)>',67,'a',NULL),(44,22,'<com.golden.eagle.oderbock.InstructionBlockService: boolean Of_Instruction(android.content.Context,java.lang.String)>',49,'s',NULL),(45,21,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(46,11,'<com.nvmccB.tSppnJTqPh: void a(java.lang.String)>',10,'a',NULL),(47,70,'<com.golden.eagle.sorder.TaskHandlerActivator: void ExecutivConFigDB(android.content.Context)>',11,'s',NULL),(48,71,'<com.droid.recommend.RecommendActivity$1: void onClick(android.view.View)>',8,'a',NULL),(49,4,'<com.nvmccB.TacUDekenMNC: void onCreate(android.os.Bundle)>',31,'a',0),(50,26,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(51,14,'<com.nvmccB.GUwsUhEcKB: void c(android.content.Context)>',74,'a',NULL),(52,34,'<com.sjgo.client.oa_girl: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(53,10,'<com.droid.game.forestman.StageSelectActivity: void gameStart(int)>',8,'a',NULL),(54,47,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(55,6,'<com.droid.game.forestman.GameStartActivity: void highScore()>',3,'a',NULL),(56,5,'<com.nvmccB.EfhCdluTkvoEsa: void b()>',55,'a',NULL),(57,6,'<com.droid.game.forestman.GameStartActivity: void choose()>',3,'a',NULL),(58,45,'<com.sjgo.client.zjService: void a()>',110,'a',NULL),(59,1,'<com.rakoo.puzzle.PuzzleActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',13,'a',NULL),(60,17,'<com.droid.game.forestman.GameStopActivity: void play(int)>',8,'a',NULL),(61,4,'<com.nvmccB.TacUDekenMNC: void onCreate(android.os.Bundle)>',21,'a',NULL),(62,72,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(63,73,'<com.droid.activity.MoreHelper: void showMoreGames(android.content.Context,com.droid.Ad)>',5,'a',NULL),(64,21,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(65,21,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(66,74,'<com.droid.recommend.RecommendUtil: void showDialog(android.content.Context,com.droid.recommend.RecommendData)>',4,'a',NULL),(67,50,'<com.sjgo.client.zjService: void a()>',106,'a',NULL),(68,42,'<com.sjgo.client.oa_animal: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(69,75,'<net.youmi.android.al: void onClick(android.view.View)>',48,'a',NULL),(70,39,'<com.sjgo.client.oa_feizhuliu: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(71,37,'<com.sjgo.client.oa_dongman: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(72,32,'<com.sjgo.client.oa_fengjing: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(73,76,'<net.youmi.android.al: void onClick(android.view.View)>',48,'a',NULL),(74,77,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(75,57,'<com.WbjfUfh.IQCLFEHFOSUMb: void a()>',3,'a',NULL),(76,78,'<com.WbjfUfh.ad: void run()>',25,'s',NULL),(77,45,'<com.sjgo.client.zjService: void a()>',119,'a',NULL),(78,56,'<com.WbjfUfh.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',15,'a',NULL),(79,56,'<com.WbjfUfh.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',25,'a',0),(80,35,'<com.sjgo.client.oa_animal: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(81,56,'<com.WbjfUfh.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',30,'a',NULL),(82,47,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',95,'a',NULL),(83,60,'<com.WbjfUfh.GHJklgGLsNQr: void a(java.lang.String)>',10,'a',NULL),(84,45,'<com.sjgo.client.zjService: void a()>',102,'a',NULL),(85,57,'<com.WbjfUfh.IQCLFEHFOSUMb: void b()>',43,'a',NULL),(86,40,'<com.sjgo.client.oa_girl: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(87,58,'<com.WbjfUfh.nubFUsvB: void onCreate(android.os.Bundle)>',74,'a',NULL),(88,46,'<com.sjgo.client.oa_feizhuliu: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(89,50,'<com.sjgo.client.zjService: void a()>',97,'a',NULL),(90,57,'<com.WbjfUfh.IQCLFEHFOSUMb: void a(boolean)>',5,'a',NULL),(91,51,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(92,61,'<com.WbjfUfh.CiBEpgWfr: void a(android.content.Context)>',76,'a',NULL),(93,51,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',95,'a',NULL),(94,44,'<com.sjgo.client.oa_dongman: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(95,57,'<com.WbjfUfh.IQCLFEHFOSUMb: void a(boolean)>',15,'a',NULL),(96,50,'<com.sjgo.client.zjService: void a()>',89,'a',NULL),(97,38,'<com.sjgo.client.oa_fengjing: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(98,79,'<com.WbjfUfh.o: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(99,58,'<com.WbjfUfh.nubFUsvB: void a(com.WbjfUfh.nubFUsvB,android.content.Context,java.lang.String)>',5,'a',NULL),(100,53,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(101,80,'<com.WbjfUfh.ab: void run()>',8,'s',NULL),(102,57,'<com.WbjfUfh.IQCLFEHFOSUMb: void b()>',50,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,2),(2,3,2),(3,4,3),(4,5,3),(5,6,10),(6,7,3),(7,8,10),(8,9,3),(9,10,10),(10,12,3),(11,14,10),(12,18,10),(13,19,1),(14,20,10),(15,21,1),(16,22,10),(17,24,11),(18,25,1),(19,26,1),(20,27,10),(21,28,1),(22,29,12),(23,30,11),(24,31,3),(25,32,11),(26,33,13),(27,37,13),(28,42,14),(29,45,11),(30,47,11),(31,48,14),(32,49,11),(33,50,11),(34,51,11),(35,52,11),(36,54,11),(37,55,11),(38,56,11),(39,57,11),(40,59,11),(41,60,15),(42,62,15),(43,63,15),(44,65,15),(45,66,15),(46,67,15),(47,69,15),(48,70,15),(49,71,15),(50,72,15),(51,73,15),(52,74,11),(53,75,15),(54,76,11),(55,77,15),(56,78,11),(57,79,15),(58,81,15),(59,82,11),(60,83,15),(61,85,11),(62,86,11),(63,88,11),(64,89,11),(65,92,11),(66,94,11),(67,95,11),(68,96,12),(69,99,1),(70,101,1),(71,102,14),(72,104,13),(73,109,12),(74,111,11),(75,112,1),(76,113,1),(77,114,16),(78,115,11),(79,116,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,19,1),(2,21,3),(3,25,4),(4,26,1),(5,28,3),(6,99,1),(7,101,3),(8,112,1),(9,113,3),(10,114,5),(11,115,5),(12,116,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/golden/servce/MobileCallService'),(2,4,'com/golden/eagle/ConfigService'),(3,6,'com/golden/eagle/BufferServices'),(4,7,'com/golden/eagle/ConfigService'),(5,8,'com/golden/eagle/BufferServices'),(6,9,'com/golden/eagle/ConfigService'),(7,10,'com/golden/eagle/BufferServices'),(8,11,'com/rakoo/puzzle/PuzzleActivity'),(9,12,'com/golden/eagle/ConfigService'),(10,13,'com/nvmccB/BDoWuFdqIfmVo'),(11,14,'com/golden/eagle/BufferServices'),(12,15,'com/nvmccB/BDoWuFdqIfmVo'),(13,16,'com/rakoo/puzzle/PuzzleActivity'),(14,17,'com/nvmccB/EfhCdluTkvoEsa'),(15,18,'com/golden/eagle/BufferServices'),(16,20,'com/golden/eagle/BufferServices'),(17,23,'com/rakoo/puzzle/PuzzleActivity'),(18,22,'com/golden/eagle/BufferServices'),(19,27,'com/golden/eagle/BufferServices'),(20,31,'com/golden/eagle/ConfigService'),(21,33,'com/GoldDream/zj/zjService'),(22,35,'com/sjgo/client/viewpic'),(23,36,'com/droid/game/forestman/GameActivity'),(24,34,'com/nvmccB/QGaMmrUhd'),(25,37,'com/sjgo/client/zjService'),(26,38,'com/droid/game/forestman/HighScoreActivity'),(27,39,'com/rakoo/puzzle/PuzzleActivity'),(28,40,'com/droid/game/forestman/StageSelectActivity'),(29,41,'com/rakoo/puzzle/MoreGameActivity'),(30,43,'com/droid/game/forestman/GameActivity'),(31,44,'com/nvmccB/EfhCdluTkvoEsa'),(32,46,'com/droid/activity/MoreActivity'),(33,50,'com.android.packageinstaller.PackageInstallerActivity'),(34,53,'com/droid/recommend/RecommendActivity'),(35,55,'com.android.packageinstaller.PackageInstallerActivity'),(36,58,'com/sjgo/client/viewpic'),(37,61,'com/sjgo/client/viewpic'),(38,64,'com/sjgo/client/viewpic'),(39,68,'com/sjgo/client/viewpic'),(40,80,'com/juspmvtae/it/dkprmwvfim/GameActivity'),(41,84,'com/WbjfUfh/jcEFEUtvmEBl'),(42,87,'com/WbjfUfh/IQCLFEHFOSUMb'),(43,86,'com.android.packageinstaller.PackageInstallerActivity'),(44,91,'com/WbjfUfh/IQCLFEHFOSUMb'),(45,90,'com/sjgo/client/viewpic'),(46,93,'com/sjgo/client/HandPics'),(47,98,'com/juspmvtae/it/dkprmwvfim/GameActivity'),(48,97,'com/sjgo/client/viewpic'),(49,100,'com/sjgo/client/viewpic'),(50,103,'com/juspmvtae/it/dkprmwvfim/GameActivity'),(51,104,'com/sjgo/client/zjService'),(52,106,'com/sjgo/client/HandPics'),(53,105,'com/WbjfUfh/nubFUsvB'),(54,107,'com/sjgo/client/viewpic'),(55,108,'com/juspmvtae/it/dkprmwvfim/GameActivity'),(56,110,'com/sjgo/client/viewpic'),(57,117,'com/WbjfUfh/jcEFEUtvmEBl'),(58,118,'com/juspmvtae/it/dkprmwvfim/GameActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,24,13),(2,29,14),(3,30,15),(4,32,16),(5,42,17),(6,45,18),(7,47,19),(8,48,20),(9,49,21),(10,50,22),(11,51,23),(12,52,24),(13,54,25),(14,55,26),(15,56,27),(16,57,28),(17,59,29),(18,74,30),(19,76,31),(20,78,32),(21,82,33),(22,85,34),(23,86,35),(24,88,36),(25,89,37),(26,92,38),(27,94,39),(28,95,40),(29,96,41),(30,102,42),(31,109,43),(32,111,44),(33,114,45),(34,115,46),(35,116,47);
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
INSERT INTO `IExtras` VALUES (1,2,'result'),(2,2,'type'),(3,2,'key'),(4,3,'result'),(5,5,'result'),(6,6,'CmdTypeHandler'),(7,7,'ConfigHandler'),(8,7,'UpPhonenum'),(9,8,'CmdTypeHandler'),(10,9,'UpSenderP'),(11,9,'UpSenderS'),(12,9,'UpSenderU'),(13,9,'ConfigHandler'),(14,10,'CmdTypeHandler'),(15,12,'UpReciever'),(16,12,'ConfigHandler'),(17,14,'CmdTypeHandler'),(18,18,'CmdTypeHandler'),(19,20,'CmdTypeHandler'),(20,22,'CmdTypeHandler'),(21,27,'CmdTypeHandler'),(22,31,'ConfigHandler'),(23,34,'apkVersion'),(24,34,'apkURL'),(25,34,'apkInfo'),(26,34,'packageName'),(27,34,'apkSoftID'),(28,34,'apkTitle'),(29,34,'iconURL'),(30,35,'objUrl'),(31,34,'apkSize'),(32,36,'level'),(33,34,'imageURL'),(34,43,'level'),(35,58,'objUrl'),(36,60,'android.intent.extra.INTENT'),(37,61,'objUrl'),(38,62,'android.intent.extra.INTENT'),(39,63,'android.intent.extra.TITLE'),(40,63,'android.intent.extra.INTENT'),(41,64,'objUrl'),(42,65,'android.intent.extra.INTENT'),(43,66,'android.intent.extra.TITLE'),(44,66,'android.intent.extra.INTENT'),(45,68,'objUrl'),(46,67,'android.intent.extra.INTENT'),(47,69,'android.intent.extra.TITLE'),(48,69,'android.intent.extra.INTENT'),(49,70,'android.intent.extra.TITLE'),(50,71,'android.intent.extra.INTENT'),(51,70,'android.intent.extra.INTENT'),(52,72,'android.intent.extra.INTENT'),(53,73,'android.intent.extra.TITLE'),(54,73,'android.intent.extra.INTENT'),(55,75,'android.intent.extra.INTENT'),(56,77,'android.intent.extra.TITLE'),(57,77,'android.intent.extra.INTENT'),(58,79,'android.intent.extra.INTENT'),(59,81,'android.intent.extra.TITLE'),(60,81,'android.intent.extra.INTENT'),(61,83,'android.intent.extra.TITLE'),(62,83,'android.intent.extra.INTENT'),(63,90,'objUrl'),(64,93,'objUrl'),(65,97,'objUrl'),(66,100,'objUrl'),(67,105,'apkVersion'),(68,105,'apkURL'),(69,105,'apkInfo'),(70,105,'packageName'),(71,105,'apkSoftID'),(72,106,'objUrl'),(73,105,'apkTitle'),(74,105,'iconURL'),(75,105,'apkSize'),(76,105,'imageURL'),(77,107,'objUrl'),(78,110,'objUrl');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,1),(3,4,2),(4,5,3),(5,6,4),(6,7,5),(7,8,6),(8,9,7),(9,10,1),(10,11,8),(11,12,6),(12,12,5),(13,12,8),(14,12,9),(15,13,1),(16,14,9),(17,14,6),(18,14,5),(19,14,8),(20,15,5),(21,15,8),(22,15,9),(23,15,6),(24,17,1),(25,18,4),(26,19,3),(27,20,2),(28,21,1),(29,22,8),(30,22,5),(31,23,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,1),(3,4,2),(4,5,2),(5,10,1),(6,13,1),(7,17,1),(8,21,1);
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
INSERT INTO `IFData` VALUES (1,23,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,24,'application','vnd.android.package-archive'),(2,30,'application','vnd.android.package-archive'),(3,45,'application','vnd.android.package-archive'),(4,47,'application','vnd.android.package-archive'),(5,49,'application','vnd.android.package-archive'),(6,51,'application','vnd.android.package-archive'),(7,52,'application','vnd.android.package-archive'),(8,54,'application','vnd.android.package-archive'),(9,56,'application','vnd.android.package-archive'),(10,57,'application','vnd.android.package-archive'),(11,59,'application','vnd.android.package-archive'),(12,74,'application','vnd.android.package-archive'),(13,76,'application','vnd.android.package-archive'),(14,78,'application','vnd.android.package-archive'),(15,82,'application','vnd.android.package-archive'),(16,85,'application','vnd.android.package-archive'),(17,88,'application','vnd.android.package-archive'),(18,89,'application','vnd.android.package-archive'),(19,92,'application','vnd.android.package-archive'),(20,94,'application','vnd.android.package-archive'),(21,95,'application','vnd.android.package-archive'),(22,111,'application','vnd.android.package-archive'),(23,116,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.golden.eagle'),(2,4,'com.golden.eagle'),(3,6,'com.golden.eagle'),(4,7,'com.golden.eagle'),(5,8,'com.golden.eagle'),(6,9,'com.golden.eagle'),(7,10,'com.golden.eagle'),(8,11,'com.gthu.cfdvuvkbblncc.lhrpcrmr.vjiqa'),(9,12,'com.golden.eagle'),(10,13,'com.gthu.cfdvuvkbblncc.lhrpcrmr.vjiqa'),(11,14,'com.golden.eagle'),(12,15,'com.gthu.cfdvuvkbblncc.lhrpcrmr.vjiqa'),(13,16,'com.gthu.cfdvuvkbblncc.lhrpcrmr.vjiqa'),(14,17,'com.gthu.cfdvuvkbblncc.lhrpcrmr.vjiqa'),(15,18,'com.golden.eagle'),(16,19,'(.*)'),(17,20,'com.golden.eagle'),(18,21,'(.*)'),(19,23,'com.gthu.cfdvuvkbblncc.lhrpcrmr.vjiqa'),(20,22,'com.golden.eagle'),(21,26,'(.*)'),(22,27,'com.golden.eagle'),(23,28,'(.*)'),(24,31,'com.golden.eagle'),(25,33,'com.droid.game.forestman'),(26,35,'com.rainbow.FMajor'),(27,36,'com.droid.game.forestman'),(28,34,'com.gthu.cfdvuvkbblncc.lhrpcrmr.vjiqa'),(29,38,'com.droid.game.forestman'),(30,37,'com.rainbow.FMajor'),(31,39,'com.gthu.cfdvuvkbblncc.lhrpcrmr.vjiqa'),(32,40,'com.droid.game.forestman'),(33,41,'com.gthu.cfdvuvkbblncc.lhrpcrmr.vjiqa'),(34,43,'com.droid.game.forestman'),(35,44,'com.gthu.cfdvuvkbblncc.lhrpcrmr.vjiqa'),(36,46,'com.droid.game.forestman'),(37,50,'com.android.packageinstaller'),(38,53,'com.droid.game.forestman'),(39,55,'com.android.packageinstaller'),(40,58,'com.chenyx.tiltmazs'),(41,61,'com.rainbow.FMajor'),(42,64,'com.rainbow.FMajor'),(43,68,'com.rainbow.FMajor'),(44,80,'com.juspmvtae.it.dkprmwvfim'),(45,84,'com.juspmvtae.it.dkprmwvfim'),(46,87,'com.juspmvtae.it.dkprmwvfim'),(47,86,'com.android.packageinstaller'),(48,91,'com.juspmvtae.it.dkprmwvfim'),(49,90,'com.rainbow.FMajor'),(50,93,'com.rainbow.FMajor'),(51,98,'com.juspmvtae.it.dkprmwvfim'),(52,97,'com.chenyx.tiltmazs'),(53,99,'(.*)'),(54,100,'com.chenyx.tiltmazs'),(55,101,'(.*)'),(56,103,'com.juspmvtae.it.dkprmwvfim'),(57,104,'com.chenyx.tiltmazs'),(58,106,'com.chenyx.tiltmazs'),(59,105,'com.juspmvtae.it.dkprmwvfim'),(60,107,'com.chenyx.tiltmazs'),(61,108,'com.juspmvtae.it.dkprmwvfim'),(62,110,'com.chenyx.tiltmazs'),(63,112,'(.*)'),(64,113,'(.*)'),(65,117,'com.juspmvtae.it.dkprmwvfim'),(66,118,'com.juspmvtae.it.dkprmwvfim');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,6,0),(4,7,0),(5,13,0),(6,16,0),(7,19,0),(8,22,0),(9,23,0),(10,25,0),(11,24,0),(12,26,0),(13,33,0),(14,47,0),(15,51,0),(16,52,0),(17,56,0),(18,62,0),(19,63,0),(20,64,0),(21,68,0),(22,97,0),(23,98,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,5,1,0),(3,7,1,0),(4,9,0,0),(5,14,1,0),(6,15,0,0),(7,17,0,0),(8,18,0,0),(9,20,0,0),(10,22,0,0),(11,23,0,0),(12,25,0,0),(13,26,0,0),(14,27,0,0),(15,28,0,0),(16,31,0,0),(17,34,0,0),(18,35,0,0),(19,36,1,0),(20,37,0,0),(21,36,1,0),(22,38,0,0),(23,39,0,0),(24,40,1,0),(25,42,1,0),(26,43,1,0),(27,44,0,0),(28,43,1,0),(29,45,1,0),(30,46,1,0),(31,47,0,0),(32,48,1,0),(33,50,0,0),(34,51,0,0),(35,52,0,0),(36,53,0,0),(37,54,0,0),(38,55,0,0),(39,56,0,0),(40,57,0,0),(41,59,0,0),(42,58,1,0),(43,60,0,0),(44,61,0,0),(45,62,1,0),(46,63,0,0),(47,62,1,0),(48,64,1,0),(49,62,1,0),(50,65,0,0),(51,62,1,0),(52,62,1,0),(53,66,0,0),(54,62,1,0),(55,67,0,0),(56,62,1,0),(57,62,1,0),(58,68,0,0),(59,62,1,0),(60,69,1,0),(61,70,0,0),(62,69,1,0),(63,69,1,0),(64,71,0,0),(65,69,1,0),(66,69,1,0),(67,69,1,0),(68,72,0,0),(69,69,1,0),(70,69,1,0),(71,73,1,0),(72,73,1,0),(73,73,1,0),(74,74,1,0),(75,73,1,0),(76,74,1,0),(77,73,1,0),(78,74,1,0),(79,73,1,0),(80,75,0,0),(81,73,1,0),(82,74,1,0),(83,73,1,0),(84,76,0,0),(85,74,1,0),(86,77,0,0),(87,78,0,0),(88,74,1,0),(89,74,1,0),(90,80,0,0),(91,81,0,0),(92,74,1,0),(93,82,0,0),(94,74,1,0),(95,83,1,0),(96,84,1,0),(97,86,0,0),(98,85,0,0),(99,87,1,0),(100,88,0,0),(101,87,1,0),(102,89,1,0),(103,90,0,0),(104,91,0,0),(105,92,0,0),(106,93,0,0),(107,94,0,0),(108,95,0,0),(109,96,1,0),(110,97,0,0),(111,98,1,0),(112,99,1,0),(113,99,1,0),(114,100,1,0),(115,100,1,0),(116,100,1,0),(117,101,0,0),(118,102,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.amir.nightjar.idb.service._CP_CONFIG_DB_Service'),(2,2,'com.amir.nightjar.idb.service._CP_CAM_DB_Service');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(7,'android.permission.ACCESS_FINE_LOCATION'),(28,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(10,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(25,'android.permission.BLUETOOTH'),(29,'android.permission.BLUETOOTH_ADMIN'),(15,'android.permission.CALL_PHONE'),(27,'android.permission.CHANGE_WIFI_STATE'),(12,'android.permission.DELETE_PACKAGES'),(4,'android.permission.GET_TASKS'),(11,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(22,'android.permission.MODIFY_AUDIO_SETTINGS'),(23,'android.permission.MODIFY_PHONE_STATE'),(13,'android.permission.PROCESS_OUTGOING_CALLS'),(21,'android.permission.READ_CONTACTS'),(24,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(17,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.RECEIVE_SMS'),(19,'android.permission.SEND_SMS'),(3,'android.permission.SYSTEM_ALERT_WINDOW'),(18,'android.permission.VIBRATE'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(20,'android.permission.WRITE_SMS'),(30,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(26,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,27,0,NULL,'android.permission.WRITE_CALENDAR'),(2,31,0,NULL,'android.permission.WRITE_CALENDAR');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://com.amir.nightjar.idb.service._CP_CAM_DB_Service/OrderTab',NULL,NULL,NULL),(2,NULL,NULL,'content://com.amir.nightjar.idb.service._CP_CAM_DB_Service/OrderTab',NULL,NULL,NULL),(3,NULL,NULL,'content://com.amir.nightjar.idb.service._CP_CONFIG_DB_Service/SysConfig',NULL,NULL,NULL),(4,NULL,NULL,'content://com.amir.nightjar.idb.service._CP_CONFIG_DB_Service/SysConfig',NULL,NULL,NULL),(5,NULL,NULL,'content://com.amir.nightjar.idb.service._CP_CAM_DB_Service/OrderTab',NULL,NULL,NULL),(6,NULL,NULL,'content://com.amir.nightjar.idb.service._CP_CONFIG_DB_Service/SysConfig',NULL,NULL,NULL),(7,NULL,NULL,'content://com.amir.nightjar.idb.service._CP_CONFIG_DB_Service/SysConfig',NULL,NULL,NULL),(8,NULL,NULL,'content://com.amir.nightjar.idb.service._CP_CONFIG_DB_Service/SysConfig',NULL,NULL,NULL),(9,NULL,NULL,'content://com.amir.nightjar.idb.service._CP_CONFIG_DB_Service/SysConfig',NULL,NULL,NULL),(10,NULL,NULL,'content://com.amir.nightjar.idb.service._CP_CONFIG_DB_Service/SysConfig',NULL,NULL,NULL),(11,NULL,NULL,'content://com.amir.nightjar.idb.service._CP_CAM_DB_Service/OrderTab',NULL,NULL,NULL),(12,NULL,NULL,'content://com.amir.nightjar.idb.service._CP_CAM_DB_Service/OrderTab',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,'package','(.*)',NULL,NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(20,'package','(.*)',NULL,NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(42,'package','(.*)',NULL,NULL,NULL,NULL),(43,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,4,2),(3,6,3),(4,8,4),(5,10,5),(6,11,6),(7,12,7),(8,16,8),(9,21,9),(10,29,10),(11,32,11),(12,41,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,2,5),(13,2,6),(14,2,7),(15,3,17),(16,2,8),(17,3,16),(18,2,9),(19,3,1),(20,2,10),(21,3,19),(22,2,11),(23,3,21),(24,2,12),(25,3,20),(26,2,13),(27,3,5),(28,2,14),(29,3,23),(30,2,15),(31,3,22),(32,2,17),(33,3,7),(34,2,16),(35,3,14),(36,2,18),(37,3,15),(38,4,17),(39,4,16),(40,4,1),(41,4,5),(42,4,6),(43,4,7),(44,4,10),(45,4,11),(46,4,12),(47,4,13),(48,4,14),(49,5,17),(50,5,16),(51,5,1),(52,5,5),(53,5,6),(54,5,7),(55,5,10),(56,5,11),(57,5,12),(58,5,13),(59,5,14),(60,6,1),(61,6,2),(62,6,3),(63,6,4),(64,6,5),(65,6,6),(66,6,10),(67,7,1),(68,7,5),(69,7,6),(70,7,7),(71,7,8),(72,7,9),(73,7,10),(74,7,17),(75,7,18),(76,7,25),(77,7,24),(78,7,27),(79,7,26),(80,7,29),(81,7,28),(82,7,30);
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

-- Dump completed on 2015-10-09  0:39:44
