-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_457
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
INSERT INTO `ActionStrings` VALUES (12,'(.*)'),(5,'android.intent.action.BOOT_COMPLETED'),(7,'android.intent.action.CALL'),(13,'android.intent.action.CHOOSER'),(6,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.NEW_OUTGOING_CALL'),(14,'android.intent.action.PACKAGE_ADDED'),(3,'android.intent.action.PHONE_STATE'),(9,'android.intent.action.RUN'),(10,'android.intent.action.SCREEN_OFF'),(11,'android.intent.action.USER_PRESENT'),(8,'android.intent.action.VIEW'),(4,'android.provider.Telephony.SMS_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.GoldDream.TingTing12i',1),(2,'com.GoldDream.TingTing12ii',1),(3,'com.rainbw.Fish',1),(4,'cxboy.android.game.fivelnk',2),(5,'com.chenyx.tiltmazs',3),(6,'com.sjli.TingTing',1),(7,'com.GoldDream.pg04',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.GoldDream.TingTing12i.TingTing21'),(2,1,'com.GoldDream.TingTing12i.readme'),(3,1,'com.google.ads.AdActivity'),(4,1,'com.GoldDream.zj.zjService'),(5,1,'com.GoldDream.zj.zjReceiver'),(6,2,'com.GoldDream.TingTing12ii.TingTing21'),(7,2,'com.GoldDream.TingTing12ii.readme'),(8,2,'com.google.ads.AdActivity'),(9,2,'com.GoldDream.zj.zjService'),(10,2,'com.GoldDream.zj.zjReceiver'),(11,3,'com.rainbw.Fish.Fish'),(12,3,'com.rainbw.Fish.Fish2'),(13,3,'com.rainbw.Fish.Fish3'),(14,3,'com.GoldDream.zj.zjService'),(15,3,'com.GoldDream.zj.zjReceiver'),(16,4,'cxboy.android.game.fivelnk.FiveLink'),(17,4,'com.sjgo.client.HandPics'),(18,4,'com.sjgo.client.oa_fengjing'),(19,4,'com.sjgo.client.oa_girl'),(20,4,'com.sjgo.client.oa_animal'),(21,4,'com.sjgo.client.oa_dongman'),(22,4,'com.sjgo.client.oa_feizhuliu'),(23,4,'com.sjgo.client.viewpic'),(24,4,'net.youmi.android.AdActivity'),(25,4,'com.sjgo.client.zjService'),(26,4,'com.sjgo.client.zjReceiver'),(27,5,'com.chenyx.tiltmazs.TiltMaze'),(28,5,'com.sjgo.client.HandPics'),(29,5,'com.sjgo.client.oa_fengjing'),(30,5,'com.sjgo.client.oa_girl'),(31,5,'com.sjgo.client.oa_animal'),(32,5,'com.sjgo.client.oa_dongman'),(33,5,'com.sjgo.client.oa_feizhuliu'),(34,5,'com.sjgo.client.viewpic'),(35,5,'net.youmi.android.AdActivity'),(36,5,'com.sjgo.client.zjService'),(37,5,'com.sjgo.client.zjReceiver'),(38,2,'com.google.ads.util.AdUtil$UserActivityReceiver'),(39,1,'com.google.ads.util.AdUtil$UserActivityReceiver'),(40,4,'com.casee.adsdk.AdClickListener'),(41,4,'net.youmi.android.be'),(42,4,'net.youmi.android.al'),(43,5,'net.youmi.android.be'),(44,5,'net.youmi.android.al'),(45,6,'com.sjli.TingTing.TingTing21'),(46,6,'com.sjli.TingTing.readme'),(47,6,'com.sjli.client.HHandPics'),(48,6,'com.sjli.client.viewpic'),(49,6,'com.google.ads.AdActivity'),(50,6,'cn.domob.android.ads.DomobActivity'),(51,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(52,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(53,6,'com.mt.airad.MultiAD'),(54,6,'net.youmi.android.AdActivity'),(55,6,'net.youmi.android.spotad.AdActivity'),(56,6,'com.wooboo.adlib_android.AdActivity'),(57,6,'com.wooboo.adlib_android.FullActivity'),(58,6,'com.sjli.client.zjjService'),(59,6,'com.admogo.UpdateService'),(60,6,'com.sjli.client.zjjReceiver'),(61,7,'com.GoldDream.pg04.PureGirls16'),(62,7,'com.GoldDream.pg04.showAllPics'),(63,7,'com.GoldDream.pg04.readme'),(64,7,'com.admob.android.ads.AdMobActivity'),(65,7,'com.google.ads.AdActivity'),(66,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(67,7,'com.millennialmedia.android.VideoPlayer'),(68,7,'net.youmi.android.AdActivity'),(69,7,'com.GoldDream.zj.zjService'),(70,7,'com.GoldDream.zj.zjReceiver'),(71,7,'com.GoldDream.pg04.PureGirls16$ItemClickListener'),(72,6,'net.youmi.android.t'),(73,6,'net.youmi.android.be'),(74,6,'com.mt.airad.IIIIlllIlllIIIII'),(75,6,'cn.domob.android.ads.p'),(76,6,'com.wooboo.adlib_android.WoobooAdView$3$0'),(77,6,'cn.domob.android.ads.e'),(78,6,'cn.domob.android.a.d'),(79,6,'cn.domob.android.ads.DomobAdManager'),(80,6,'com.wooboo.adlib_android.AdLayout$5'),(81,6,'cn.domob.android.ads.g$2'),(82,6,'cn.domob.android.ads.p$5'),(83,6,'com.wooboo.download.d'),(84,6,'com.wooboo.adlib_android.AdActivity$b_$0');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,15,'pdus'),(2,15,'android.intent.extra.PHONE_NUMBER'),(3,15,'incoming_number'),(4,3,'params'),(5,5,'incoming_number'),(6,10,'pdus'),(7,3,'action'),(8,5,'pdus'),(9,3,'com.google.ads.AdOpener'),(10,10,'android.intent.extra.PHONE_NUMBER'),(11,8,'com.google.ads.AdOpener'),(12,8,'action'),(13,10,'incoming_number'),(14,5,'android.intent.extra.PHONE_NUMBER'),(15,8,'params'),(16,26,'pdus'),(17,23,'objUrl'),(18,26,'incoming_number'),(19,24,'D50EF1926ADD471892E72BCE6D7E032C'),(20,24,'EB80F3291A8E469c962CA133BDC549D7'),(21,24,'172C94EDC717477aBF600D7898A64A8E'),(22,24,'D780FBF4215247bcBB1AC0AD33C474FE'),(23,26,'android.intent.extra.PHONE_NUMBER'),(24,35,'D50EF1926ADD471892E72BCE6D7E032C'),(25,35,'172C94EDC717477aBF600D7898A64A8E'),(26,34,'objUrl'),(27,37,'pdus'),(28,37,'android.intent.extra.PHONE_NUMBER'),(29,35,'D780FBF4215247bcBB1AC0AD33C474FE'),(30,35,'EB80F3291A8E469c962CA133BDC549D7'),(31,37,'incoming_number'),(32,60,'params'),(33,63,'A7D1721B9508405D8271AB82AC6D9B3C'),(34,57,'objSelect'),(35,61,'overlayTitle'),(36,61,'transitionTime'),(37,65,'incoming_number'),(38,61,'shouldShowTitlebar'),(39,65,'pdus'),(40,60,'com.google.ads.AdOpener'),(41,61,'overlayTransition'),(42,61,'canAccelerate'),(43,60,'action'),(44,65,'android.intent.extra.PHONE_NUMBER'),(45,61,'shouldResizeOverlay'),(46,61,'shouldShowNavbar'),(47,47,'(.*)'),(48,54,'DOMOB_PID'),(49,47,'DOMOB_PID'),(50,53,'DOMOB_PID'),(51,46,'DOMOB_PID'),(52,49,'DOMOB_PID'),(53,44,'DOMOB_PID'),(54,49,'D50EF1926ADD471892E72BCE6D7E032C'),(55,47,'shouldShowBottomBar'),(56,47,'overlayTitle'),(57,44,'com.google.ads.AdOpener'),(58,45,'appName'),(59,44,'action'),(60,45,'appId'),(61,48,'adURL'),(62,49,'EB80F3291A8E469c962CA133BDC549D7'),(63,51,'(.*)'),(64,46,'overlayTitle'),(65,47,'shouldEnableBottomBar'),(66,46,'shouldEnableBottomBar'),(67,49,'172C94EDC717477aBF600D7898A64A8E'),(68,47,'overlayTransition'),(69,46,'overlayTransition'),(70,47,'shouldResizeOverlay'),(71,46,'url'),(72,47,'shouldMakeOverlayTransparent'),(73,46,'shouldShowBottomBar'),(74,46,'shouldShowTitlebar'),(75,45,'actType'),(76,46,'shouldMakeOverlayTransparent'),(77,46,'shouldResizeOverlay'),(78,46,'recurl'),(79,47,'transitionTime'),(80,47,'shouldShowTitlebar'),(81,44,'params'),(82,45,'msg'),(83,46,'transitionTime'),(84,54,'mogo_link'),(85,48,'adID'),(86,49,'D780FBF4215247bcBB1AC0AD33C474FE'),(87,54,'DOMOB_TEST_MODE'),(88,47,'DOMOB_TEST_MODE'),(89,53,'DOMOB_TEST_MODE'),(90,46,'DOMOB_TEST_MODE'),(91,49,'DOMOB_TEST_MODE'),(92,44,'DOMOB_TEST_MODE'),(93,47,'FSAd'),(94,54,'mogo_title'),(95,43,'objUrl');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',1,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,45,'a',1,NULL,NULL),(41,46,'a',0,NULL,NULL),(42,47,'a',0,NULL,NULL),(43,48,'a',0,NULL,NULL),(44,49,'a',0,NULL,NULL),(45,50,'a',0,NULL,NULL),(46,51,'a',0,NULL,NULL),(47,52,'a',0,NULL,NULL),(48,53,'a',0,NULL,NULL),(49,54,'a',0,NULL,NULL),(50,55,'a',0,NULL,NULL),(51,56,'a',0,NULL,NULL),(52,57,'a',0,NULL,NULL),(53,58,'s',1,NULL,NULL),(54,59,'s',1,NULL,NULL),(55,60,'r',1,NULL,NULL),(56,61,'a',1,NULL,NULL),(57,62,'a',0,NULL,NULL),(58,63,'a',0,NULL,NULL),(59,64,'a',0,NULL,NULL),(60,65,'a',0,NULL,NULL),(61,66,'a',0,NULL,NULL),(62,67,'a',0,NULL,NULL),(63,68,'a',0,NULL,NULL),(64,69,'s',1,NULL,NULL),(65,70,'r',1,NULL,NULL),(66,77,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,14),(2,2,14),(3,3,14),(4,4,15),(5,5,1),(6,6,7),(7,7,1),(8,8,2),(9,9,6),(10,10,6),(11,11,5),(12,12,8),(13,13,2),(14,14,4),(15,15,7),(16,16,4),(17,17,4),(18,18,9),(19,19,1),(20,20,6),(21,21,3),(22,22,6),(23,23,9),(24,24,10),(25,25,1),(26,26,9),(27,27,18),(28,28,26),(29,29,25),(30,30,25),(31,31,21),(32,32,24),(33,33,24),(34,34,22),(35,35,26),(36,36,20),(37,37,25),(38,38,24),(39,39,37),(40,40,37),(41,41,36),(42,42,35),(43,42,27),(44,43,19),(45,44,36),(46,45,29),(47,46,33),(48,47,30),(49,48,31),(50,49,27),(51,49,35),(52,50,36),(53,51,32),(54,52,60),(55,53,64),(56,54,56),(57,55,58),(58,56,56),(59,57,57),(60,58,58),(61,59,56),(62,60,65),(63,61,57),(64,62,64),(65,63,56),(66,64,64),(67,65,56),(68,66,57),(69,67,49),(70,68,49),(71,69,48),(72,70,49),(73,70,47),(74,70,46),(75,70,44),(76,70,54),(77,70,53),(78,71,54),(79,71,44),(80,71,47),(81,71,46),(82,71,49),(83,71,53),(84,72,46),(85,72,44),(86,72,49),(87,72,47),(88,72,54),(89,72,53),(90,73,44),(91,73,47),(92,73,46),(93,73,53),(94,73,54),(95,73,49),(96,74,49),(97,75,53),(98,75,54),(99,75,44),(100,75,49),(101,75,46),(102,75,47),(103,76,42),(104,77,44),(105,78,55),(106,79,49),(107,79,47),(108,79,46),(109,79,44),(110,79,53),(111,79,54),(112,80,53),(113,81,40),(114,82,40),(115,83,40),(116,84,55),(117,85,49),(118,86,49),(119,86,51),(120,87,53),(121,88,55);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,14,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(2,14,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(3,14,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(4,15,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(5,1,'<com.GoldDream.TingTing12i.TingTing21: void onCreate(android.os.Bundle)>',7,'s',NULL),(6,7,'<com.GoldDream.TingTing12ii.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(7,1,'<com.GoldDream.TingTing12i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(8,2,'<com.GoldDream.TingTing12i.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(9,6,'<com.GoldDream.TingTing12ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(10,6,'<com.GoldDream.TingTing12ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(11,5,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(12,8,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(13,2,'<com.GoldDream.TingTing12i.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(14,4,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(15,7,'<com.GoldDream.TingTing12ii.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(16,4,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(17,4,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(18,9,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(19,1,'<com.GoldDream.TingTing12i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(20,6,'<com.GoldDream.TingTing12ii.TingTing21: void onCreate(android.os.Bundle)>',7,'s',NULL),(21,3,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(22,6,'<com.GoldDream.TingTing12ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(23,9,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(24,10,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(25,1,'<com.GoldDream.TingTing12i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(26,9,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(27,18,'<com.sjgo.client.oa_fengjing: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(28,26,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(29,25,'<com.sjgo.client.zjService: void a()>',110,'a',NULL),(30,25,'<com.sjgo.client.zjService: void a()>',119,'a',NULL),(31,21,'<com.sjgo.client.oa_dongman: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(32,40,'<com.casee.adsdk.AdClickListener: boolean startIntent()>',26,'a',NULL),(33,41,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(34,22,'<com.sjgo.client.oa_feizhuliu: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(35,26,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',95,'a',NULL),(36,20,'<com.sjgo.client.oa_animal: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(37,25,'<com.sjgo.client.zjService: void a()>',102,'a',NULL),(38,42,'<net.youmi.android.al: void onClick(android.view.View)>',48,'a',NULL),(39,37,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',95,'a',NULL),(40,37,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(41,36,'<com.sjgo.client.zjService: void a()>',119,'a',NULL),(42,43,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(43,19,'<com.sjgo.client.oa_girl: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(44,36,'<com.sjgo.client.zjService: void a()>',102,'a',NULL),(45,29,'<com.sjgo.client.oa_fengjing: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(46,33,'<com.sjgo.client.oa_feizhuliu: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(47,30,'<com.sjgo.client.oa_girl: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(48,31,'<com.sjgo.client.oa_animal: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(49,44,'<net.youmi.android.al: void onClick(android.view.View)>',48,'a',NULL),(50,36,'<com.sjgo.client.zjService: void a()>',110,'a',NULL),(51,32,'<com.sjgo.client.oa_dongman: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(52,65,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(53,69,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(54,61,'<com.GoldDream.pg04.PureGirls16: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(55,63,'<com.GoldDream.pg04.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(56,71,'<com.GoldDream.pg04.PureGirls16$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(57,62,'<com.GoldDream.pg04.showAllPics: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(58,63,'<com.GoldDream.pg04.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(59,61,'<com.GoldDream.pg04.PureGirls16: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(60,70,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(61,62,'<com.GoldDream.pg04.showAllPics: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(62,69,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(63,61,'<com.GoldDream.pg04.PureGirls16: void onCreate(android.os.Bundle)>',7,'s',NULL),(64,69,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(65,61,'<com.GoldDream.pg04.PureGirls16: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(66,62,'<com.GoldDream.pg04.showAllPics: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(67,72,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(68,73,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(69,74,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(70,75,'<cn.domob.android.ads.p: void v(cn.domob.android.ads.p)>',6,'a',NULL),(71,76,'<com.wooboo.adlib_android.WoobooAdView$3$0: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(72,78,'<cn.domob.android.a.d: java.net.Proxy a(android.content.Context)>',86,'p',NULL),(73,79,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor n(android.content.Context)>',9,'p',NULL),(74,80,'<com.wooboo.adlib_android.AdLayout$5: void onClick(android.view.View)>',14,'a',NULL),(75,81,'<cn.domob.android.ads.g$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(76,47,'<com.sjli.client.HHandPics: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(77,49,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(78,60,'<com.sjli.client.zjjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(79,82,'<cn.domob.android.ads.p$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(80,58,'<com.sjli.client.zjjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',23,'a',NULL),(81,45,'<com.sjli.TingTing.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(82,45,'<com.sjli.TingTing.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(83,45,'<com.sjli.TingTing.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(84,60,'<com.sjli.client.zjjReceiver: void startObjActivity(android.content.Context)>',7,'a',NULL),(85,83,'<com.wooboo.download.d: boolean c(android.content.Context,java.lang.String)>',13,'a',NULL),(86,84,'<com.wooboo.adlib_android.AdActivity$b_$0: void onClick(android.view.View)>',27,'a',NULL),(87,58,'<com.sjli.client.zjjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',14,'a',NULL),(88,60,'<com.sjli.client.zjjReceiver: void onReceive(android.content.Context,android.content.Intent)>',28,'s',NULL);
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
INSERT INTO `IActions` VALUES (1,1,6),(2,2,7),(3,3,8),(4,4,9),(5,6,8),(6,7,8),(7,8,8),(8,9,8),(9,11,9),(10,12,8),(11,13,8),(12,14,12),(13,15,8),(14,16,12),(15,17,8),(16,18,6),(17,19,7),(18,20,7),(19,21,8),(20,23,8),(21,24,8),(22,25,12),(23,26,6),(24,27,12),(25,28,9),(26,30,8),(27,32,9),(28,33,6),(29,34,8),(30,36,8),(31,37,8),(32,38,8),(33,39,8),(34,40,8),(35,41,8),(36,42,8),(37,43,8),(38,44,8),(39,45,8),(40,49,7),(41,50,13),(42,52,13),(43,53,13),(44,54,9),(45,55,13),(46,56,13),(47,57,8),(48,58,13),(49,59,13),(50,60,8),(51,61,13),(52,62,8),(53,64,8),(54,65,8),(55,66,8),(56,67,8),(57,68,8),(58,69,8),(59,70,8),(60,71,7),(61,76,13),(62,77,13),(63,78,13),(64,79,13),(65,80,13),(66,81,13),(67,82,13),(68,83,13),(69,84,6),(70,86,8),(71,87,12),(72,88,12),(73,89,8),(74,91,8),(75,93,8),(76,94,8),(77,95,8),(78,96,9),(79,97,8),(80,98,7),(81,100,6),(82,101,8),(83,103,13),(84,104,13),(85,105,13),(86,106,13),(87,107,13),(88,108,13),(89,109,13),(90,110,13),(91,111,8),(92,112,8),(93,113,8),(94,114,8),(95,115,8),(96,116,8),(97,117,8),(98,118,8),(99,119,8),(100,120,8),(101,121,8),(102,122,12),(103,123,12),(104,125,8),(105,126,12),(106,127,12),(107,128,9),(108,129,8),(109,131,8),(110,132,8),(111,133,8),(112,134,8),(113,135,8),(114,137,8),(115,138,8),(116,140,12),(117,141,13),(118,142,13),(119,143,13),(120,144,13),(121,145,13),(122,146,13),(123,147,13),(124,148,13),(125,149,6),(126,150,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com.android.packageinstaller.PackageInstallerActivity'),(2,4,'com/GoldDream/zj/zjService'),(3,5,'com/GoldDream/zj/zjService'),(4,10,'com/GoldDream/TingTing12ii/readme'),(5,11,'com/GoldDream/zj/zjService'),(6,15,'com.android.packageinstaller.PackageInstallerActivity'),(7,22,'com/GoldDream/zj/zjService'),(8,28,'com/GoldDream/zj/zjService'),(9,29,'com/GoldDream/TingTing12i/readme'),(10,30,'com.android.packageinstaller.PackageInstallerActivity'),(11,31,'com/sjgo/client/viewpic'),(12,32,'com/sjgo/client/zjService'),(13,34,'com.android.packageinstaller.PackageInstallerActivity'),(14,35,'com/sjgo/client/viewpic'),(15,46,'com/sjgo/client/viewpic'),(16,47,'com/sjgo/client/HandPics'),(17,48,'com/sjgo/client/viewpic'),(18,51,'com/sjgo/client/HandPics'),(19,54,'com/sjgo/client/zjService'),(20,57,'com.android.packageinstaller.PackageInstallerActivity'),(21,63,'com/sjgo/client/viewpic'),(22,72,'com/sjgo/client/viewpic'),(23,73,'com/sjgo/client/viewpic'),(24,74,'com/sjgo/client/viewpic'),(25,75,'com/sjgo/client/viewpic'),(26,85,'com/sjgo/client/viewpic'),(27,89,'com.android.packageinstaller.PackageInstallerActivity'),(28,90,'com/GoldDream/pg04/readme'),(29,92,'com/GoldDream/pg04/showAllPics'),(30,96,'com/GoldDream/zj/zjService'),(31,99,'com/GoldDream/zj/zjService'),(32,102,'com/GoldDream/pg04/readme'),(33,124,'com/sjli/client/viewpic'),(34,128,'com/sjli/client/zjjService'),(35,135,'com.android.packageinstaller.PackageInstallerActivity'),(36,136,'com/sjli/TingTing/readme'),(37,139,'com/sjli/client/HHandPics'),(38,150,'com/sjli/client/zjjService');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,3,3),(4,6,4),(5,7,5),(6,8,6),(7,9,7),(8,12,8),(9,13,9),(10,14,10),(11,15,11),(12,16,12),(13,17,13),(14,18,14),(15,19,15),(16,20,16),(17,21,17),(18,23,18),(19,24,19),(20,25,20),(21,26,21),(22,27,22),(23,30,23),(24,33,24),(25,34,25),(26,36,26),(27,37,27),(28,38,28),(29,39,29),(30,40,30),(31,41,31),(32,42,32),(33,43,33),(34,44,34),(35,45,35),(36,49,36),(37,57,37),(38,60,38),(39,62,39),(40,64,40),(41,65,41),(42,66,42),(43,67,43),(44,68,44),(45,69,45),(46,70,46),(47,71,47),(48,84,48),(49,86,49),(50,87,50),(51,88,51),(52,89,52),(53,91,53),(54,93,54),(55,94,55),(56,95,56),(57,97,57),(58,98,58),(59,100,59),(60,101,60),(61,111,61),(62,112,62),(63,113,63),(64,114,64),(65,115,65),(66,116,66),(67,117,67),(68,118,68),(69,119,69),(70,120,70),(71,121,71),(72,122,72),(73,123,75),(74,125,76),(75,126,77),(76,127,78),(77,129,79),(78,131,80),(79,132,81),(80,133,82),(81,134,83),(82,135,84),(83,137,85),(84,138,86),(85,140,87),(86,149,88);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,31,'objUrl'),(2,35,'objUrl'),(3,46,'objUrl'),(4,47,'objUrl'),(5,48,'objUrl'),(6,51,'objUrl'),(7,50,'android.intent.extra.INTENT'),(8,52,'android.intent.extra.INTENT'),(9,53,'android.intent.extra.TITLE'),(10,53,'android.intent.extra.INTENT'),(11,55,'android.intent.extra.INTENT'),(12,56,'android.intent.extra.TITLE'),(13,56,'android.intent.extra.INTENT'),(14,58,'android.intent.extra.INTENT'),(15,59,'android.intent.extra.TITLE'),(16,59,'android.intent.extra.INTENT'),(17,61,'android.intent.extra.TITLE'),(18,61,'android.intent.extra.INTENT'),(19,63,'objUrl'),(20,72,'objUrl'),(21,73,'objUrl'),(22,74,'objUrl'),(23,75,'objUrl'),(24,76,'android.intent.extra.INTENT'),(25,77,'android.intent.extra.INTENT'),(26,78,'android.intent.extra.TITLE'),(27,78,'android.intent.extra.INTENT'),(28,79,'android.intent.extra.INTENT'),(29,80,'android.intent.extra.TITLE'),(30,80,'android.intent.extra.INTENT'),(31,81,'android.intent.extra.INTENT'),(32,82,'android.intent.extra.TITLE'),(33,82,'android.intent.extra.INTENT'),(34,83,'android.intent.extra.TITLE'),(35,83,'android.intent.extra.INTENT'),(36,85,'objUrl'),(37,92,'objSelect'),(38,103,'android.intent.extra.INTENT'),(39,104,'android.intent.extra.INTENT'),(40,105,'android.intent.extra.TITLE'),(41,105,'android.intent.extra.INTENT'),(42,106,'android.intent.extra.INTENT'),(43,107,'android.intent.extra.TITLE'),(44,107,'android.intent.extra.INTENT'),(45,108,'android.intent.extra.INTENT'),(46,109,'android.intent.extra.TITLE'),(47,109,'android.intent.extra.INTENT'),(48,110,'android.intent.extra.TITLE'),(49,110,'android.intent.extra.INTENT'),(50,124,'objUrl'),(51,141,'android.intent.extra.INTENT'),(52,142,'android.intent.extra.INTENT'),(53,143,'android.intent.extra.TITLE'),(54,143,'android.intent.extra.INTENT'),(55,144,'android.intent.extra.INTENT'),(56,145,'android.intent.extra.TITLE'),(57,145,'android.intent.extra.INTENT'),(58,146,'android.intent.extra.INTENT'),(59,147,'android.intent.extra.TITLE'),(60,147,'android.intent.extra.INTENT'),(61,148,'android.intent.extra.TITLE'),(62,148,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,5),(5,3,2),(6,3,3),(7,4,2),(8,4,3),(9,4,4),(10,4,5),(11,5,1),(12,6,4),(13,6,5),(14,6,3),(15,6,2),(16,7,1),(17,8,2),(18,8,5),(19,8,3),(20,8,4),(21,9,1),(22,10,5),(23,10,3),(24,10,4),(25,10,2),(26,11,10),(27,11,11),(28,12,10),(29,12,11),(30,13,1),(31,14,5),(32,14,3),(33,15,1),(34,16,2),(35,16,3),(36,16,4),(37,16,5),(38,17,14),(39,18,14);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,5,1),(4,7,1),(5,9,1),(6,13,1),(7,15,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,17,'package',NULL,NULL,NULL,NULL,NULL),(2,18,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,14,'(.*)','(.*)'),(2,25,'(.*)','(.*)'),(3,37,'application','vnd.android.package-archive'),(4,38,'application','vnd.android.package-archive'),(5,39,'application','vnd.android.package-archive'),(6,40,'application','vnd.android.package-archive'),(7,41,'application','vnd.android.package-archive'),(8,42,'application','vnd.android.package-archive'),(9,43,'application','vnd.android.package-archive'),(10,44,'application','vnd.android.package-archive'),(11,45,'application','vnd.android.package-archive'),(12,60,'application','vnd.android.package-archive'),(13,62,'application','vnd.android.package-archive'),(14,64,'application','vnd.android.package-archive'),(15,65,'application','vnd.android.package-archive'),(16,66,'application','vnd.android.package-archive'),(17,67,'application','vnd.android.package-archive'),(18,68,'application','vnd.android.package-archive'),(19,69,'application','vnd.android.package-archive'),(20,70,'application','vnd.android.package-archive'),(21,87,'(.*)','(.*)'),(22,111,'application','vnd.android.package-archive'),(23,112,'application','vnd.android.package-archive'),(24,113,'application','vnd.android.package-archive'),(25,114,'application','vnd.android.package-archive'),(26,115,'application','vnd.android.package-archive'),(27,116,'application','vnd.android.package-archive'),(28,117,'application','vnd.android.package-archive'),(29,118,'application','vnd.android.package-archive'),(30,119,'application','vnd.android.package-archive'),(31,126,'(.*)','(.*)'),(32,129,'application','vnd.android.package-archive'),(33,131,'application','vnd.android.package-archive'),(34,132,'application','vnd.android.package-archive'),(35,133,'application','vnd.android.package-archive'),(36,134,'application','vnd.android.package-archive'),(37,140,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.android.packageinstaller'),(2,4,'com.rainbw.Fish'),(3,5,'com.GoldDream.TingTing12i'),(4,10,'com.GoldDream.TingTing12ii'),(5,11,'com.GoldDream.TingTing12i'),(6,15,'com.android.packageinstaller'),(7,22,'com.GoldDream.TingTing12ii'),(8,28,'com.GoldDream.TingTing12ii'),(9,29,'com.GoldDream.TingTing12i'),(10,30,'com.android.packageinstaller'),(11,31,'cxboy.android.game.fivelnk'),(12,32,'cxboy.android.game.fivelnk'),(13,34,'com.android.packageinstaller'),(14,35,'cxboy.android.game.fivelnk'),(15,46,'cxboy.android.game.fivelnk'),(16,47,'cxboy.android.game.fivelnk'),(17,48,'cxboy.android.game.fivelnk'),(18,51,'com.chenyx.tiltmazs'),(19,54,'com.chenyx.tiltmazs'),(20,57,'com.android.packageinstaller'),(21,63,'cxboy.android.game.fivelnk'),(22,72,'com.chenyx.tiltmazs'),(23,73,'com.chenyx.tiltmazs'),(24,74,'com.chenyx.tiltmazs'),(25,75,'com.chenyx.tiltmazs'),(26,85,'com.chenyx.tiltmazs'),(27,89,'com.android.packageinstaller'),(28,90,'com.GoldDream.pg04'),(29,92,'com.GoldDream.pg04'),(30,96,'com.GoldDream.pg04'),(31,99,'com.GoldDream.pg04'),(32,102,'com.GoldDream.pg04'),(33,124,'com.sjli.TingTing'),(34,128,'com.sjli.TingTing'),(35,135,'com.android.packageinstaller'),(36,136,'com.sjli.TingTing'),(37,139,'com.sjli.TingTing'),(38,150,'com.sjli.TingTing');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,5,0),(4,10,0),(5,11,0),(6,15,0),(7,16,0),(8,26,0),(9,27,0),(10,37,0),(11,39,0),(12,38,0),(13,40,0),(14,55,0),(15,56,0),(16,65,0),(17,66,0),(18,66,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,7,1,0),(8,8,1,0),(9,9,1,0),(10,10,0,0),(11,11,0,0),(12,12,1,0),(13,13,1,0),(14,12,1,0),(15,14,0,0),(16,12,1,0),(17,15,1,0),(18,16,1,0),(19,17,1,0),(20,18,1,0),(21,19,1,0),(22,20,0,0),(23,21,1,0),(24,22,1,0),(25,21,1,0),(26,23,1,0),(27,21,1,0),(28,24,0,0),(29,25,0,0),(30,26,0,0),(31,27,0,0),(32,28,0,0),(33,29,1,0),(34,30,0,0),(35,31,0,0),(36,32,1,0),(37,33,1,0),(38,33,1,0),(39,33,1,0),(40,33,1,0),(41,33,1,0),(42,33,1,0),(43,33,1,0),(44,33,1,0),(45,33,1,0),(46,34,0,0),(47,35,0,0),(48,36,0,0),(49,37,1,0),(50,38,1,0),(51,39,0,0),(52,38,1,0),(53,38,1,0),(54,40,0,0),(55,38,1,0),(56,38,1,0),(57,41,0,0),(58,38,1,0),(59,38,1,0),(60,42,1,0),(61,38,1,0),(62,42,1,0),(63,43,0,0),(64,42,1,0),(65,42,1,0),(66,42,1,0),(67,42,1,0),(68,42,1,0),(69,42,1,0),(70,42,1,0),(71,44,1,0),(72,45,0,0),(73,46,0,0),(74,47,0,0),(75,48,0,0),(76,49,1,0),(77,49,1,0),(78,49,1,0),(79,49,1,0),(80,49,1,0),(81,49,1,0),(82,49,1,0),(83,49,1,0),(84,50,1,0),(85,51,0,0),(86,52,1,0),(87,52,1,0),(88,52,1,0),(89,53,0,0),(90,54,0,0),(91,55,1,0),(92,56,0,0),(93,57,1,0),(94,58,1,0),(95,59,1,0),(96,60,0,0),(97,61,1,0),(98,62,1,0),(99,63,0,0),(100,64,1,0),(101,65,1,0),(102,66,0,0),(103,67,1,0),(104,67,1,0),(105,67,1,0),(106,67,1,0),(107,67,1,0),(108,67,1,0),(109,67,1,0),(110,67,1,0),(111,68,1,0),(112,68,1,0),(113,68,1,0),(114,68,1,0),(115,68,1,0),(116,68,1,0),(117,68,1,0),(118,68,1,0),(119,68,1,0),(120,69,1,0),(121,70,1,0),(122,71,1,0),(123,74,1,0),(124,76,0,0),(125,77,1,0),(126,77,1,0),(127,77,1,0),(128,78,0,0),(129,79,1,0),(130,79,1,0),(131,79,1,0),(132,79,1,0),(133,79,1,0),(134,79,1,0),(135,80,0,0),(136,81,0,0),(137,82,1,0),(138,83,1,0),(139,84,0,0),(140,85,1,0),(141,86,1,0),(142,86,1,0),(143,86,1,0),(144,86,1,0),(145,86,1,0),(146,86,1,0),(147,86,1,0),(148,86,1,0),(149,87,1,0),(150,88,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,23,27,2,NULL),(2,27,27,2,NULL),(3,19,27,2,NULL),(4,12,27,2,NULL),(5,16,27,2,NULL),(6,20,27,2,NULL),(7,2,27,2,NULL),(8,49,27,2,NULL),(9,71,27,2,NULL),(10,125,27,2,NULL),(11,127,27,2,NULL),(12,86,27,2,NULL),(13,88,27,2,NULL),(14,98,27,2,NULL),(15,72,23,2,NULL),(16,72,34,2,NULL),(17,74,23,2,NULL),(18,74,34,2,NULL),(19,75,23,2,NULL),(20,75,34,2,NULL),(21,85,23,2,NULL),(22,85,34,2,NULL),(23,73,23,2,NULL),(24,73,34,2,NULL),(25,71,1,2,NULL),(26,71,5,2,NULL),(27,71,39,2,NULL),(28,71,6,2,NULL),(29,71,10,2,NULL),(30,71,38,2,NULL),(31,71,11,2,NULL),(32,71,15,2,NULL),(33,71,16,2,NULL),(34,71,26,2,NULL),(35,71,37,2,NULL),(36,71,40,2,NULL),(37,71,55,2,NULL),(38,71,56,2,NULL),(39,71,65,2,NULL),(40,51,17,2,NULL),(41,51,28,2,NULL),(42,54,25,2,NULL),(43,54,36,2,NULL),(44,23,37,2,NULL),(45,27,37,2,NULL),(46,19,37,2,NULL),(47,12,37,2,NULL),(48,16,37,2,NULL),(49,20,37,2,NULL),(50,2,37,2,NULL),(51,49,37,2,NULL),(52,125,37,2,NULL),(53,127,37,2,NULL),(54,86,37,2,NULL),(55,88,37,2,NULL),(56,98,37,2,NULL),(57,90,58,2,NULL),(58,99,4,2,NULL),(59,99,9,2,NULL),(60,99,14,2,NULL),(61,99,64,2,NULL),(62,23,56,2,NULL),(63,27,56,2,NULL),(64,19,56,2,NULL),(65,12,56,2,NULL),(66,16,56,2,NULL),(67,20,56,2,NULL),(68,2,56,2,NULL),(69,49,56,2,NULL),(70,125,56,2,NULL),(71,127,56,2,NULL),(72,86,56,2,NULL),(73,88,56,2,NULL),(74,98,56,2,NULL),(75,102,58,2,NULL),(76,86,1,2,NULL),(77,88,1,2,NULL),(78,86,5,2,NULL),(79,88,5,2,NULL),(80,86,39,2,NULL),(81,88,39,2,NULL),(82,86,6,2,NULL),(83,88,6,2,NULL),(84,86,10,2,NULL),(85,88,10,2,NULL),(86,86,38,2,NULL),(87,88,38,2,NULL),(88,86,11,2,NULL),(89,88,11,2,NULL),(90,86,15,2,NULL),(91,88,15,2,NULL),(92,86,16,2,NULL),(93,88,16,2,NULL),(94,86,26,2,NULL),(95,88,26,2,NULL),(96,86,40,2,NULL),(97,88,40,2,NULL),(98,86,55,2,NULL),(99,88,55,2,NULL),(100,86,65,2,NULL),(101,88,65,2,NULL),(102,98,1,2,NULL),(103,98,5,2,NULL),(104,98,39,2,NULL),(105,98,6,2,NULL),(106,98,10,2,NULL),(107,98,38,2,NULL),(108,98,11,2,NULL),(109,98,15,2,NULL),(110,98,16,2,NULL),(111,98,26,2,NULL),(112,98,40,2,NULL),(113,98,55,2,NULL),(114,98,65,2,NULL),(115,96,4,2,NULL),(116,96,9,2,NULL),(117,96,14,2,NULL),(118,96,64,2,NULL),(119,23,65,2,NULL),(120,27,65,2,NULL),(121,19,65,2,NULL),(122,12,65,2,NULL),(123,16,65,2,NULL),(124,20,65,2,NULL),(125,2,65,2,NULL),(126,49,65,2,NULL),(127,125,65,2,NULL),(128,127,65,2,NULL),(129,5,4,2,NULL),(130,5,9,2,NULL),(131,5,14,2,NULL),(132,5,64,2,NULL),(133,29,2,2,NULL),(134,23,1,2,NULL),(135,27,1,2,NULL),(136,19,1,2,NULL),(137,12,1,2,NULL),(138,16,1,2,NULL),(139,20,1,2,NULL),(140,2,1,2,NULL),(141,49,1,2,NULL),(142,125,1,2,NULL),(143,127,1,2,NULL),(144,23,5,2,NULL),(145,27,5,2,NULL),(146,23,39,2,NULL),(147,27,39,2,NULL),(148,23,6,2,NULL),(149,27,6,2,NULL),(150,23,10,2,NULL),(151,27,10,2,NULL),(152,23,38,2,NULL),(153,27,38,2,NULL),(154,23,11,2,NULL),(155,27,11,2,NULL),(156,23,15,2,NULL),(157,27,15,2,NULL),(158,23,16,2,NULL),(159,27,16,2,NULL),(160,23,26,2,NULL),(161,27,26,2,NULL),(162,23,40,2,NULL),(163,27,40,2,NULL),(164,23,55,2,NULL),(165,27,55,2,NULL),(166,19,5,2,NULL),(167,19,39,2,NULL),(168,19,6,2,NULL),(169,19,10,2,NULL),(170,19,38,2,NULL),(171,19,11,2,NULL),(172,19,15,2,NULL),(173,19,16,2,NULL),(174,19,26,2,NULL),(175,19,40,2,NULL),(176,19,55,2,NULL),(177,11,4,2,NULL),(178,11,9,2,NULL),(179,11,14,2,NULL),(180,11,64,2,NULL),(181,12,5,2,NULL),(182,16,5,2,NULL),(183,20,5,2,NULL),(184,2,5,2,NULL),(185,49,5,2,NULL),(186,125,5,2,NULL),(187,127,5,2,NULL),(188,12,39,2,NULL),(189,16,39,2,NULL),(190,20,39,2,NULL),(191,2,39,2,NULL),(192,49,39,2,NULL),(193,125,39,2,NULL),(194,127,39,2,NULL),(195,136,41,2,NULL),(196,12,40,2,NULL),(197,16,40,2,NULL),(198,20,40,2,NULL),(199,2,40,2,NULL),(200,49,40,2,NULL),(201,125,40,2,NULL),(202,127,40,2,NULL),(203,124,43,2,NULL),(204,125,6,2,NULL),(205,127,6,2,NULL),(206,125,10,2,NULL),(207,127,10,2,NULL),(208,125,38,2,NULL),(209,127,38,2,NULL),(210,125,11,2,NULL),(211,127,11,2,NULL),(212,125,15,2,NULL),(213,127,15,2,NULL),(214,125,16,2,NULL),(215,127,16,2,NULL),(216,125,26,2,NULL),(217,127,26,2,NULL),(218,125,55,2,NULL),(219,127,55,2,NULL),(220,128,53,2,NULL),(221,139,42,2,NULL),(222,150,53,2,NULL),(223,12,55,2,NULL),(224,16,55,2,NULL),(225,20,55,2,NULL),(226,2,55,2,NULL),(227,49,55,2,NULL),(228,12,16,2,NULL),(229,16,16,2,NULL),(230,20,16,2,NULL),(231,2,16,2,NULL),(232,49,16,2,NULL),(233,31,23,2,NULL),(234,31,34,2,NULL),(235,63,23,2,NULL),(236,63,34,2,NULL),(237,48,23,2,NULL),(238,48,34,2,NULL),(239,35,23,2,NULL),(240,35,34,2,NULL),(241,46,23,2,NULL),(242,46,34,2,NULL),(243,49,6,2,NULL),(244,49,10,2,NULL),(245,49,38,2,NULL),(246,49,11,2,NULL),(247,49,15,2,NULL),(248,49,26,2,NULL),(249,32,25,2,NULL),(250,32,36,2,NULL),(251,47,17,2,NULL),(252,47,28,2,NULL),(253,12,26,2,NULL),(254,16,26,2,NULL),(255,20,26,2,NULL),(256,2,26,2,NULL),(257,10,7,2,NULL),(258,22,4,2,NULL),(259,22,9,2,NULL),(260,22,14,2,NULL),(261,22,64,2,NULL),(262,12,6,2,NULL),(263,16,6,2,NULL),(264,20,6,2,NULL),(265,2,6,2,NULL),(266,12,10,2,NULL),(267,16,10,2,NULL),(268,12,38,2,NULL),(269,16,38,2,NULL),(270,12,11,2,NULL),(271,16,11,2,NULL),(272,12,15,2,NULL),(273,16,15,2,NULL),(274,20,10,2,NULL),(275,20,38,2,NULL),(276,20,11,2,NULL),(277,20,15,2,NULL),(278,28,4,2,NULL),(279,28,9,2,NULL),(280,28,14,2,NULL),(281,28,64,2,NULL),(282,2,10,2,NULL),(283,2,38,2,NULL),(284,2,11,2,NULL),(285,2,15,2,NULL),(286,4,4,2,NULL),(287,4,9,2,NULL),(288,4,14,2,NULL),(289,4,64,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(15,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.CALL_PHONE'),(2,'android.permission.DELETE_PACKAGES'),(1,'android.permission.INSTALL_PACKAGES'),(13,'android.permission.INTERNET'),(4,'android.permission.PROCESS_OUTGOING_CALLS'),(16,'android.permission.READ_EXTERNAL_STORAGE'),(10,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_SMS'),(3,'android.permission.SEND_SMS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(18,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(17,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,'package','(.*)',NULL,NULL,NULL,NULL),(2,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9958&cid=1000',NULL,NULL,NULL),(5,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9958&cid=1000',NULL,NULL,NULL),(6,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9958&cid=1000',NULL,NULL,NULL),(7,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9958&cid=1000',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9958&cid=1000',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9958&cid=1000',NULL,NULL,NULL),(14,'package','(.*)',NULL,NULL,NULL,NULL),(15,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(16,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(17,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9958&cid=1000',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9958&cid=1000',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,'package','(.*)',NULL,NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,'package','(.*)',NULL,NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(48,'package','(.*)',NULL,NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9971&cid=1000',NULL,NULL,NULL),(54,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9971&cid=1000',NULL,NULL,NULL),(55,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9971&cid=1000',NULL,NULL,NULL),(56,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9971&cid=1000',NULL,NULL,NULL),(57,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9971&cid=1000',NULL,NULL,NULL),(58,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(59,'package','(.*)',NULL,NULL,NULL,NULL),(60,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9971&cid=1000',NULL,NULL,NULL),(61,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(62,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(63,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(64,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(65,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(66,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(67,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(68,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(69,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(70,NULL,NULL,'',NULL,NULL,NULL),(71,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(72,NULL,NULL,'',NULL,NULL,NULL),(73,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(74,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(75,NULL,NULL,'(.*)',NULL,NULL,NULL),(76,NULL,NULL,'(.*)',NULL,NULL,NULL),(77,NULL,NULL,'(.*)',NULL,NULL,NULL),(78,NULL,NULL,'(.*)',NULL,NULL,NULL),(79,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(80,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(81,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(82,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(83,NULL,NULL,'file://',NULL,NULL,NULL),(84,NULL,NULL,'(.*)',NULL,NULL,NULL),(85,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9996',NULL,NULL,NULL),(86,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9996',NULL,NULL,NULL),(87,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(88,'package','(.*)',NULL,NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,72,73),(2,73,74);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,2,1),(16,1,15),(17,2,2),(18,2,3),(19,2,4),(20,2,5),(21,2,6),(22,2,7),(23,2,8),(24,2,9),(25,2,10),(26,2,11),(27,2,12),(28,2,13),(29,2,14),(30,2,15),(31,3,1),(32,3,2),(33,3,4),(34,3,7),(35,3,10),(36,3,11),(37,3,12),(38,3,13),(39,4,1),(40,4,2),(41,4,4),(42,4,5),(43,4,7),(44,4,8),(45,4,10),(46,4,11),(47,4,12),(48,4,13),(49,4,14),(50,4,15),(51,5,1),(52,5,2),(53,5,4),(54,5,5),(55,5,7),(56,5,10),(57,5,11),(58,5,12),(59,5,13),(60,5,14),(61,5,15),(62,6,17),(63,6,16),(64,6,1),(65,6,2),(66,6,18),(67,6,4),(68,6,5),(69,6,6),(70,6,8),(71,6,10),(72,6,12),(73,6,13),(74,6,14),(75,6,15),(76,7,1),(77,7,2),(78,7,3),(79,7,4),(80,7,5),(81,7,6),(82,7,7),(83,7,8),(84,7,9),(85,7,10),(86,7,11),(87,7,12),(88,7,13),(89,7,14),(90,7,15);
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
