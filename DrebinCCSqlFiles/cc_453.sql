-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_453
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (8,'(.*)'),(5,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.CALL'),(12,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.NEW_OUTGOING_CALL'),(3,'android.intent.action.PHONE_STATE'),(7,'android.intent.action.RUN'),(9,'android.intent.action.SCREEN_OFF'),(10,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(4,'android.provider.Telephony.SMS_RECEIVED');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.GoldDream.TingTing08i',1),(2,'com.GoldDream.TingTing11ii',1),(3,'org.nwhy.aFruitLinlnk',1),(4,'jp.co.sic.missng',10),(5,'com.dchoc.tuxdo',5),(6,'com.droidhen.game.bubles2',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.GoldDream.TingTing08i.TingTing21'),(2,1,'com.GoldDream.TingTing08i.readme'),(3,1,'com.google.ads.AdActivity'),(4,1,'com.GoldDream.zj.zjService'),(5,1,'com.GoldDream.zj.zjReceiver'),(6,2,'com.GoldDream.TingTing11ii.TingTing21'),(7,2,'com.GoldDream.TingTing11ii.readme'),(8,2,'com.google.ads.AdActivity'),(9,2,'com.GoldDream.zj.zjService'),(10,2,'com.GoldDream.zj.zjReceiver'),(11,3,'org.nwhy.aFruitLinlnk.aFruitLinlink'),(12,3,'org.nwhy.aFruitLinlnk.MainMenu'),(13,3,'org.nwhy.aFruitLinlnk.Help'),(14,3,'org.nwhy.aFruitLinlnk.Records'),(15,3,'org.nwhy.aFruitLinlnk.StageList'),(16,3,'org.nwhy.aFruitLinlnk.Game'),(17,3,'com.sjhi.client.HandPics'),(18,3,'com.sjhi.client.zjService'),(19,4,'jp.co.sic.missng.TopMenu'),(20,3,'com.sjhi.client.zjReceiver'),(21,4,'jp.co.sic.missng.BasicAspect'),(22,4,'jp.co.sic.missng.ItemList'),(23,4,'jp.co.sic.missng.ZoomAspect'),(24,4,'jp.co.sic.missng.Darts'),(25,4,'jp.co.sic.missng.SlitherLink'),(26,4,'jp.co.sic.missng.Ending'),(27,4,'jp.co.sic.missng.Help'),(28,4,'jp.co.sic.missng.Credit'),(29,4,'com.sjhi.client.HandPics'),(30,4,'jp.co.sic.missng.BgmPlayer'),(31,4,'com.sjhi.client.zjService'),(32,4,'com.sjhi.client.zjReceiver'),(33,5,'com.dchoc.tuxdo.DCTuxedo'),(34,5,'com.GoldDream.zj.zjService'),(35,5,'com.GoldDream.zj.zjReceiver'),(36,2,'com.google.ads.util.AdUtil$UserActivityReceiver'),(37,3,'org.nwhy.aFruitLinlnk.MainMenu$1'),(38,3,'org.nwhy.aFruitLinlnk.StageList$ItemClickListener'),(39,4,'jp.co.sic.missng.BasicAspect$1'),(40,4,'jp.co.sic.missng.Ending$2'),(41,6,'com.sjli.client.MogoStart'),(42,6,'com.droidhen.game.bubles2.ChooseActivity'),(43,6,'com.droidhen.game.bubles2.game.GameActivity'),(44,6,'com.droidhen.game.bubles2.game.GameOverActivity'),(45,6,'com.droidhen.api.scoreclient.ui.HighScoresActivity'),(46,6,'com.droidhen.activity.MoreActivity'),(47,6,'com.droidhen.recommend.RecommendActivity'),(48,6,'com.droidhen.game.bubles2.CoverActivity'),(49,6,'com.sjli.client.HHandPics'),(50,6,'com.sjli.client.viewpic'),(51,6,'com.google.ads.AdActivity'),(52,6,'cn.domob.android.ads.DomobActivity'),(53,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(54,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(55,6,'com.mt.airad.MultiAD'),(56,6,'net.youmi.android.AdActivity'),(57,6,'net.youmi.android.spotad.AdActivity'),(58,6,'com.wooboo.adlib_android.AdActivity'),(59,6,'com.wooboo.adlib_android.FullActivity'),(60,6,'com.sjli.client.zjjService'),(61,6,'com.admogo.UpdateService'),(62,6,'com.sjli.client.zjjReceiver'),(63,6,'com.droidhen.api.scoreclient.ScoreClientProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'action'),(2,10,'pdus'),(3,8,'params'),(4,8,'com.google.ads.AdOpener'),(5,20,'pdus'),(6,20,'incoming_number'),(7,10,'incoming_number'),(8,10,'android.intent.extra.PHONE_NUMBER'),(9,16,'MAP_ID'),(10,35,'android.intent.extra.PHONE_NUMBER'),(11,35,'incoming_number'),(12,20,'android.intent.extra.PHONE_NUMBER'),(13,35,'pdus'),(14,21,'view_mode'),(15,32,'incoming_number'),(16,22,'view_mode_item'),(17,27,'movement_origin'),(18,21,'link_clear'),(19,24,'movement_origin'),(20,27,'view_mode'),(21,25,'movement_origin'),(22,22,'movement_origin'),(23,21,'movement_origin'),(24,22,'view_mode'),(25,22,'movement_origin_item'),(26,27,'movement_origin_item'),(27,21,'darts_clear_flg'),(28,23,'view_mode'),(29,32,'android.intent.extra.PHONE_NUMBER'),(30,27,'view_mode_item'),(31,32,'pdus');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',1,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'s',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'s',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,41,'a',1,NULL,NULL),(38,42,'a',0,NULL,NULL),(39,43,'a',0,NULL,NULL),(40,44,'a',0,NULL,NULL),(41,45,'a',0,NULL,NULL),(42,46,'a',0,NULL,NULL),(43,47,'a',0,NULL,NULL),(44,48,'a',0,NULL,NULL),(45,49,'a',0,NULL,NULL),(46,50,'a',0,NULL,NULL),(47,51,'a',0,NULL,NULL),(48,52,'a',0,NULL,NULL),(49,53,'a',0,NULL,NULL),(50,54,'a',0,NULL,NULL),(51,55,'a',0,NULL,NULL),(52,56,'a',0,NULL,NULL),(53,57,'a',0,NULL,NULL),(54,58,'a',0,NULL,NULL),(55,59,'a',0,NULL,NULL),(56,60,'s',1,NULL,NULL),(57,61,'s',1,NULL,NULL),(58,62,'r',1,NULL,NULL),(59,63,'p',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,6),(3,3,10),(4,4,8),(5,5,12),(6,6,7),(7,7,12),(8,8,6),(9,9,18),(10,10,6),(11,11,15),(12,12,7),(13,13,12),(14,14,9),(15,15,12),(16,16,34),(17,17,9),(18,18,18),(19,19,35),(20,20,9),(21,21,20),(22,22,34),(23,23,20),(24,24,34),(25,25,18),(26,26,25),(27,27,24),(28,28,27),(29,29,25),(30,30,21),(31,31,24),(32,32,23),(33,33,21),(34,34,19),(35,35,32),(36,36,21),(37,37,31),(38,38,26),(39,39,19),(40,40,21),(41,41,21),(42,42,25),(43,43,21),(44,44,21),(45,45,22),(46,46,24),(47,47,21),(48,48,28),(49,49,24),(50,50,21),(51,51,19),(52,52,25),(53,53,22),(54,54,21),(55,55,25),(56,56,21),(57,57,21),(58,58,21),(59,59,25),(60,60,21),(61,61,23),(62,62,23),(63,63,22),(64,64,31),(65,65,26),(66,66,21),(67,67,27),(68,68,24),(69,69,23),(70,70,26),(71,71,23),(72,72,32),(73,73,21),(74,74,28),(75,75,21),(76,76,21),(77,77,22),(78,78,19),(79,79,26),(80,80,19),(81,81,31),(82,82,27),(83,83,23),(84,84,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<com.GoldDream.TingTing11ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(2,6,'<com.GoldDream.TingTing11ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(3,10,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(4,8,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(5,37,'<org.nwhy.aFruitLinlnk.MainMenu$1: void onClick(android.view.View)>',19,'a',NULL),(6,7,'<com.GoldDream.TingTing11ii.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(7,37,'<org.nwhy.aFruitLinlnk.MainMenu$1: void onClick(android.view.View)>',33,'a',NULL),(8,6,'<com.GoldDream.TingTing11ii.TingTing21: void onCreate(android.os.Bundle)>',7,'s',NULL),(9,18,'<com.sjhi.client.zjService: void a()>',89,'a',NULL),(10,6,'<com.GoldDream.TingTing11ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(11,38,'<org.nwhy.aFruitLinlnk.StageList$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(12,7,'<com.GoldDream.TingTing11ii.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(13,37,'<org.nwhy.aFruitLinlnk.MainMenu$1: void onClick(android.view.View)>',39,'a',NULL),(14,9,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(15,37,'<org.nwhy.aFruitLinlnk.MainMenu$1: void onClick(android.view.View)>',26,'a',NULL),(16,34,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(17,9,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(18,18,'<com.sjhi.client.zjService: void a()>',106,'a',NULL),(19,35,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(20,9,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(21,20,'<com.sjhi.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(22,34,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(23,20,'<com.sjhi.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',94,'a',NULL),(24,34,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(25,18,'<com.sjhi.client.zjService: void a()>',97,'a',NULL),(26,25,'<jp.co.sic.missng.SlitherLink: void onResume()>',7,'s',NULL),(27,24,'<jp.co.sic.missng.Darts: boolean onKeyDown(int,android.view.KeyEvent)>',26,'a',NULL),(28,27,'<jp.co.sic.missng.Help: void onResume()>',11,'s',NULL),(29,25,'<jp.co.sic.missng.SlitherLink: boolean onKeyDown(int,android.view.KeyEvent)>',16,'a',NULL),(30,21,'<jp.co.sic.missng.BasicAspect: boolean onTouchEvent(android.view.MotionEvent)>',323,'a',NULL),(31,24,'<jp.co.sic.missng.Darts: void onResume()>',7,'s',NULL),(32,23,'<jp.co.sic.missng.ZoomAspect: boolean onTouch(android.view.View,android.view.MotionEvent)>',35,'a',NULL),(33,21,'<jp.co.sic.missng.BasicAspect: boolean onTouchEvent(android.view.MotionEvent)>',955,'a',NULL),(34,19,'<jp.co.sic.missng.TopMenu: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(35,32,'<com.sjhi.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(36,21,'<jp.co.sic.missng.BasicAspect: boolean onTouchEvent(android.view.MotionEvent)>',30,'a',NULL),(37,31,'<com.sjhi.client.zjService: void a()>',97,'a',NULL),(38,26,'<jp.co.sic.missng.Ending: void onResume()>',7,'s',NULL),(39,19,'<jp.co.sic.missng.TopMenu: void onResume()>',8,'s',NULL),(40,21,'<jp.co.sic.missng.BasicAspect: boolean onTouch(android.view.View,android.view.MotionEvent)>',91,'a',NULL),(41,21,'<jp.co.sic.missng.BasicAspect: boolean onTouchEvent(android.view.MotionEvent)>',891,'a',NULL),(42,25,'<jp.co.sic.missng.SlitherLink: boolean onKeyDown(int,android.view.KeyEvent)>',25,'a',NULL),(43,21,'<jp.co.sic.missng.BasicAspect: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(44,21,'<jp.co.sic.missng.BasicAspect: boolean onKeyDown(int,android.view.KeyEvent)>',71,'a',NULL),(45,22,'<jp.co.sic.missng.ItemList: boolean onKeyDown(int,android.view.KeyEvent)>',12,'a',NULL),(46,24,'<jp.co.sic.missng.Darts: boolean onOptionsItemSelected(android.view.MenuItem)>',26,'a',NULL),(47,21,'<jp.co.sic.missng.BasicAspect: boolean onTouchEvent(android.view.MotionEvent)>',260,'a',NULL),(48,28,'<jp.co.sic.missng.Credit: void backButtonHandler()>',4,'a',NULL),(49,24,'<jp.co.sic.missng.Darts: boolean onTouchEvent(android.view.MotionEvent)>',261,'a',NULL),(50,21,'<jp.co.sic.missng.BasicAspect: boolean onTouchEvent(android.view.MotionEvent)>',127,'a',NULL),(51,19,'<jp.co.sic.missng.TopMenu: boolean onTouchEvent(android.view.MotionEvent)>',36,'a',NULL),(52,25,'<jp.co.sic.missng.SlitherLink: boolean onTouchEvent(android.view.MotionEvent)>',41,'a',NULL),(53,22,'<jp.co.sic.missng.ItemList: void onResume()>',7,'s',NULL),(54,21,'<jp.co.sic.missng.BasicAspect: boolean onTouchEvent(android.view.MotionEvent)>',222,'a',NULL),(55,25,'<jp.co.sic.missng.SlitherLink: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(56,21,'<jp.co.sic.missng.BasicAspect: boolean onTouchEvent(android.view.MotionEvent)>',241,'a',NULL),(57,21,'<jp.co.sic.missng.BasicAspect: boolean onTouchEvent(android.view.MotionEvent)>',203,'a',NULL),(58,21,'<jp.co.sic.missng.BasicAspect: boolean onTouchEvent(android.view.MotionEvent)>',303,'a',NULL),(59,25,'<jp.co.sic.missng.SlitherLink: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(60,21,'<jp.co.sic.missng.BasicAspect: void onResume()>',7,'s',NULL),(61,23,'<jp.co.sic.missng.ZoomAspect: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(62,23,'<jp.co.sic.missng.ZoomAspect: void moveBasicAspect()>',7,'a',NULL),(63,22,'<jp.co.sic.missng.ItemList: void onClick(android.view.View)>',472,'a',NULL),(64,31,'<com.sjhi.client.zjService: void a()>',106,'a',NULL),(65,26,'<jp.co.sic.missng.Ending: void Missing2ButtonHandler()>',5,'a',NULL),(66,21,'<jp.co.sic.missng.BasicAspect: boolean onTouchEvent(android.view.MotionEvent)>',342,'a',NULL),(67,27,'<jp.co.sic.missng.Help: void onClick(android.view.View)>',16,'a',NULL),(68,24,'<jp.co.sic.missng.Darts: boolean onOptionsItemSelected(android.view.MenuItem)>',39,'a',NULL),(69,23,'<jp.co.sic.missng.ZoomAspect: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(70,26,'<jp.co.sic.missng.Ending: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(71,23,'<jp.co.sic.missng.ZoomAspect: void onResume()>',7,'s',NULL),(72,32,'<com.sjhi.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',94,'a',NULL),(73,39,'<jp.co.sic.missng.BasicAspect$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(74,28,'<jp.co.sic.missng.Credit: void Missing2ButtonHandler()>',5,'a',NULL),(75,21,'<jp.co.sic.missng.BasicAspect: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(76,21,'<jp.co.sic.missng.BasicAspect: boolean onTouchEvent(android.view.MotionEvent)>',146,'a',NULL),(77,22,'<jp.co.sic.missng.ItemList: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(78,19,'<jp.co.sic.missng.TopMenu: void LinkButtonHandler()>',5,'a',NULL),(79,40,'<jp.co.sic.missng.Ending$2: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(80,19,'<jp.co.sic.missng.TopMenu: void Missing2ButtonHandler()>',5,'a',NULL),(81,31,'<com.sjhi.client.zjService: void a()>',89,'a',NULL),(82,27,'<jp.co.sic.missng.Help: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(83,23,'<jp.co.sic.missng.ZoomAspect: boolean onKeyDown(int,android.view.KeyEvent)>',32,'a',NULL),(84,21,'<jp.co.sic.missng.BasicAspect: boolean onTouchEvent(android.view.MotionEvent)>',166,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,6),(2,3,7),(3,4,6),(4,5,8),(5,6,8),(6,8,6),(7,11,11),(8,12,6),(9,14,6),(10,15,6),(11,16,12),(12,18,6),(13,19,6),(14,20,6),(15,21,7),(16,22,11),(17,23,7),(18,24,12),(19,26,11),(20,27,12),(21,39,7),(22,41,12),(23,75,6),(24,76,6),(25,90,6),(26,94,6),(27,96,6),(28,97,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/GoldDream/TingTing11ii/readme'),(2,3,'com/GoldDream/zj/zjService'),(3,7,'org/nwhy/aFruitLinlnk/Game'),(4,9,'org/nwhy/aFruitLinlnk/Records'),(5,10,'com/GoldDream/zj/zjService'),(6,13,'org/nwhy/aFruitLinlnk/Game'),(7,17,'org/nwhy/aFruitLinlnk/Help'),(8,18,'com.android.packageinstaller.PackageInstallerActivity'),(9,19,'com.android.packageinstaller.PackageInstallerActivity'),(10,21,'com/GoldDream/zj/zjService'),(11,20,'com.android.packageinstaller.PackageInstallerActivity'),(12,23,'com/sjhi/client/zjService'),(13,25,'com/sjhi/client/HandPics'),(14,28,'jp/co/sic/missng/BgmPlayer'),(15,29,'jp/co/sic/missng/BasicAspect'),(16,30,'jp/co/sic/missng/BgmPlayer'),(17,31,'jp/co/sic/missng/BasicAspect'),(18,32,'jp/co/sic/missng/ZoomAspect'),(19,33,'jp/co/sic/missng/BgmPlayer'),(20,34,'jp/co/sic/missng/ItemList'),(21,35,'jp/co/sic/missng/Ending'),(22,37,'jp/co/sic/missng/Help'),(23,38,'jp/co/sic/missng/Credit'),(24,39,'com/sjhi/client/zjService'),(25,40,'jp/co/sic/missng/ZoomAspect'),(26,42,'jp/co/sic/missng/BgmPlayer'),(27,43,'jp/co/sic/missng/BgmPlayer'),(28,44,'jp/co/sic/missng/ItemList'),(29,45,'jp/co/sic/missng/SlitherLink'),(30,46,'jp/co/sic/missng/BasicAspect'),(31,47,'jp/co/sic/missng/Help'),(32,48,'jp/co/sic/missng/ItemList'),(33,49,'jp/co/sic/missng/ZoomAspect'),(34,50,'jp/co/sic/missng/Darts'),(35,51,'jp/co/sic/missng/SlitherLink'),(36,52,'jp/co/sic/missng/BasicAspect'),(37,53,'jp/co/sic/missng/Help'),(38,54,'jp/co/sic/missng/ZoomAspect'),(39,55,'jp/co/sic/missng/TopMenu'),(40,56,'jp/co/sic/missng/BasicAspect'),(41,57,'jp/co/sic/missng/ZoomAspect'),(42,58,'jp/co/sic/missng/BasicAspect'),(43,59,'jp/co/sic/missng/BasicAspect'),(44,60,'jp/co/sic/missng/BgmPlayer'),(45,61,'jp/co/sic/missng/ZoomAspect'),(46,62,'jp/co/sic/missng/Help'),(47,63,'jp/co/sic/missng/ZoomAspect'),(48,64,'jp/co/sic/missng/ZoomAspect'),(49,65,'jp/co/sic/missng/ZoomAspect'),(50,66,'jp/co/sic/missng/ItemList'),(51,67,'jp/co/sic/missng/BgmPlayer'),(52,68,'jp/co/sic/missng/ItemList'),(53,69,'jp/co/sic/missng/BasicAspect'),(54,70,'jp/co/sic/missng/BasicAspect'),(55,71,'jp/co/sic/missng/ZoomAspect'),(56,72,'jp/co/sic/missng/Darts'),(57,73,'jp/co/sic/missng/SlitherLink'),(58,74,'jp/co/sic/missng/BasicAspect'),(59,75,'com.android.packageinstaller.PackageInstallerActivity'),(60,77,'jp/co/sic/missng/ZoomAspect'),(61,78,'jp/co/sic/missng/ZoomAspect'),(62,79,'jp/co/sic/missng/Darts'),(63,80,'jp/co/sic/missng/SlitherLink'),(64,81,'jp/co/sic/missng/ItemList'),(65,82,'jp/co/sic/missng/BasicAspect'),(66,83,'jp/co/sic/missng/TopMenu'),(67,84,'jp/co/sic/missng/ItemList'),(68,85,'jp/co/sic/missng/Help'),(69,86,'jp/co/sic/missng/TopMenu'),(70,87,'jp/co/sic/missng/BgmPlayer'),(71,88,'com/sjhi/client/HandPics'),(72,89,'jp/co/sic/missng/TopMenu'),(73,91,'jp/co/sic/missng/ItemList'),(74,92,'jp/co/sic/missng/ZoomAspect'),(75,93,'jp/co/sic/missng/Help'),(76,95,'jp/co/sic/missng/TopMenu'),(77,98,'jp/co/sic/missng/ZoomAspect'),(78,99,'jp/co/sic/missng/Darts'),(79,100,'jp/co/sic/missng/SlitherLink'),(80,101,'jp/co/sic/missng/ItemList'),(81,102,'jp/co/sic/missng/BasicAspect'),(82,103,'jp/co/sic/missng/TopMenu'),(83,104,'jp/co/sic/missng/ItemList'),(84,105,'jp/co/sic/missng/Darts');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,4,2),(3,5,3),(4,6,4),(5,8,5),(6,11,6),(7,12,7),(8,14,8),(9,15,9),(10,16,10),(11,18,11),(12,19,12),(13,20,13),(14,22,14),(15,24,15),(16,26,16),(17,27,17),(18,41,18),(19,75,19),(20,76,20),(21,90,21),(22,94,22),(23,96,23),(24,97,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,7,'MAP_ID'),(2,13,'MAP_ID'),(3,29,'darts_clear_flg'),(4,29,'movement_origin'),(5,31,'link_clear'),(6,31,'movement_origin'),(7,32,'view_mode'),(8,32,'movement_origin'),(9,34,'view_mode'),(10,34,'movement_origin'),(11,37,'movement_origin'),(12,40,'view_mode'),(13,40,'movement_origin'),(14,44,'view_mode'),(15,44,'movement_origin'),(16,45,'movement_origin'),(17,46,'link_clear'),(18,46,'movement_origin'),(19,47,'view_mode'),(20,47,'movement_origin'),(21,48,'view_mode'),(22,48,'movement_origin'),(23,49,'view_mode'),(24,49,'movement_origin'),(25,52,'view_mode'),(26,52,'movement_origin'),(27,53,'movement_origin'),(28,54,'view_mode'),(29,54,'movement_origin'),(30,56,'darts_clear_flg'),(31,56,'movement_origin'),(32,57,'view_mode'),(33,57,'movement_origin'),(34,58,'movement_origin'),(35,59,'link_clear'),(36,59,'movement_origin'),(37,61,'view_mode'),(38,61,'movement_origin'),(39,62,'movement_origin'),(40,63,'view_mode'),(41,63,'movement_origin'),(42,64,'view_mode'),(43,64,'movement_origin'),(44,65,'view_mode'),(45,65,'movement_origin'),(46,66,'movement_origin'),(47,68,'view_mode'),(48,68,'movement_origin'),(49,69,'movement_origin'),(50,70,'view_mode'),(51,70,'movement_origin'),(52,71,'view_mode'),(53,71,'movement_origin'),(54,74,'view_mode'),(55,74,'movement_origin'),(56,77,'view_mode'),(57,77,'movement_origin'),(58,78,'view_mode'),(59,78,'movement_origin'),(60,81,'movement_origin_item'),(61,81,'view_mode_item'),(62,81,'movement_origin'),(63,82,'view_mode'),(64,82,'movement_origin'),(65,84,'movement_origin'),(66,85,'view_mode'),(67,85,'movement_origin'),(68,91,'view_mode'),(69,91,'movement_origin'),(70,92,'view_mode'),(71,92,'movement_origin'),(72,93,'movement_origin_item'),(73,93,'view_mode_item'),(74,93,'movement_origin'),(75,98,'view_mode'),(76,98,'movement_origin'),(77,101,'movement_origin_item'),(78,101,'view_mode_item'),(79,101,'movement_origin'),(80,102,'view_mode'),(81,102,'movement_origin'),(82,104,'view_mode'),(83,104,'movement_origin'),(84,105,'movement_origin');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,5),(5,3,2),(6,3,3),(7,4,2),(8,4,3),(9,4,4),(10,4,5),(11,5,1),(12,6,4),(13,6,5),(14,6,3),(15,6,2),(16,7,1),(17,8,1),(18,9,4),(19,9,5),(20,9,2),(21,9,3),(22,10,5),(23,10,3),(24,10,4),(25,10,2),(26,11,1),(27,12,4),(28,12,3),(29,12,5),(30,12,2),(31,13,10),(32,13,9),(33,14,1),(34,15,5),(35,15,3);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,5,1),(4,7,1),(5,8,1),(6,11,1),(7,14,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,5,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.GoldDream.TingTing11ii'),(2,3,'com.GoldDream.TingTing11ii'),(3,7,'org.nwhy.aFruitLinlnk'),(4,9,'org.nwhy.aFruitLinlnk'),(5,10,'com.GoldDream.TingTing11ii'),(6,13,'org.nwhy.aFruitLinlnk'),(7,17,'org.nwhy.aFruitLinlnk'),(8,18,'com.android.packageinstaller'),(9,19,'com.android.packageinstaller'),(10,20,'com.android.packageinstaller'),(11,21,'com.dchoc.tuxdo'),(12,23,'org.nwhy.aFruitLinlnk'),(13,25,'org.nwhy.aFruitLinlnk'),(14,28,'jp.co.sic.missng'),(15,29,'jp.co.sic.missng'),(16,30,'jp.co.sic.missng'),(17,31,'jp.co.sic.missng'),(18,32,'jp.co.sic.missng'),(19,33,'jp.co.sic.missng'),(20,34,'jp.co.sic.missng'),(21,35,'jp.co.sic.missng'),(22,37,'jp.co.sic.missng'),(23,38,'jp.co.sic.missng'),(24,39,'jp.co.sic.missng'),(25,40,'jp.co.sic.missng'),(26,42,'jp.co.sic.missng'),(27,43,'jp.co.sic.missng'),(28,44,'jp.co.sic.missng'),(29,45,'jp.co.sic.missng'),(30,46,'jp.co.sic.missng'),(31,47,'jp.co.sic.missng'),(32,48,'jp.co.sic.missng'),(33,49,'jp.co.sic.missng'),(34,50,'jp.co.sic.missng'),(35,51,'jp.co.sic.missng'),(36,52,'jp.co.sic.missng'),(37,53,'jp.co.sic.missng'),(38,54,'jp.co.sic.missng'),(39,55,'jp.co.sic.missng'),(40,56,'jp.co.sic.missng'),(41,57,'jp.co.sic.missng'),(42,58,'jp.co.sic.missng'),(43,59,'jp.co.sic.missng'),(44,60,'jp.co.sic.missng'),(45,61,'jp.co.sic.missng'),(46,62,'jp.co.sic.missng'),(47,63,'jp.co.sic.missng'),(48,64,'jp.co.sic.missng'),(49,65,'jp.co.sic.missng'),(50,66,'jp.co.sic.missng'),(51,67,'jp.co.sic.missng'),(52,68,'jp.co.sic.missng'),(53,69,'jp.co.sic.missng'),(54,70,'jp.co.sic.missng'),(55,71,'jp.co.sic.missng'),(56,72,'jp.co.sic.missng'),(57,73,'jp.co.sic.missng'),(58,74,'jp.co.sic.missng'),(59,75,'com.android.packageinstaller'),(60,77,'jp.co.sic.missng'),(61,78,'jp.co.sic.missng'),(62,79,'jp.co.sic.missng'),(63,80,'jp.co.sic.missng'),(64,81,'jp.co.sic.missng'),(65,82,'jp.co.sic.missng'),(66,83,'jp.co.sic.missng'),(67,84,'jp.co.sic.missng'),(68,85,'jp.co.sic.missng'),(69,86,'jp.co.sic.missng'),(70,87,'jp.co.sic.missng'),(71,88,'jp.co.sic.missng'),(72,89,'jp.co.sic.missng'),(73,91,'jp.co.sic.missng'),(74,92,'jp.co.sic.missng'),(75,93,'jp.co.sic.missng'),(76,95,'jp.co.sic.missng'),(77,98,'jp.co.sic.missng'),(78,99,'jp.co.sic.missng'),(79,100,'jp.co.sic.missng'),(80,101,'jp.co.sic.missng'),(81,102,'jp.co.sic.missng'),(82,103,'jp.co.sic.missng'),(83,104,'jp.co.sic.missng'),(84,105,'jp.co.sic.missng');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,5,0),(4,5,0),(5,6,0),(6,10,0),(7,11,0),(8,19,0),(9,20,0),(10,32,0),(11,33,0),(12,35,0),(13,36,0),(14,37,0),(15,58,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,4,1,0),(6,4,1,0),(7,5,0,0),(8,6,1,0),(9,7,0,0),(10,8,0,0),(11,9,1,0),(12,10,1,0),(13,11,0,0),(14,12,1,0),(15,13,1,0),(16,14,1,0),(17,15,0,0),(18,16,0,0),(19,17,0,0),(20,18,0,0),(21,19,0,0),(22,20,1,0),(23,21,0,0),(24,22,1,0),(25,23,0,0),(26,24,1,0),(27,25,1,0),(28,26,0,0),(29,27,0,0),(30,28,0,0),(31,29,0,0),(32,30,0,0),(33,31,0,0),(34,32,0,0),(35,33,0,0),(36,34,1,0),(37,34,0,0),(38,34,0,0),(39,35,0,0),(40,36,0,0),(41,37,1,0),(42,38,0,0),(43,39,0,0),(44,40,0,0),(45,41,0,0),(46,42,0,0),(47,43,0,0),(48,44,0,0),(49,45,0,0),(50,45,0,0),(51,45,0,0),(52,45,0,0),(53,46,0,0),(54,47,0,0),(55,48,0,0),(56,49,0,0),(57,50,0,0),(58,51,0,0),(59,52,0,0),(60,53,0,0),(61,54,0,0),(62,55,0,0),(63,56,0,0),(64,57,0,0),(65,58,0,0),(66,59,0,0),(67,60,0,0),(68,61,0,0),(69,62,0,0),(70,62,0,0),(71,63,0,0),(72,63,0,0),(73,63,0,0),(74,63,0,0),(75,64,0,0),(76,65,1,0),(77,66,0,0),(78,67,0,0),(79,67,0,0),(80,67,0,0),(81,67,0,0),(82,67,0,0),(83,67,0,0),(84,68,0,0),(85,69,0,0),(86,70,0,0),(87,71,0,0),(88,72,0,0),(89,73,0,0),(90,74,1,0),(91,75,0,0),(92,76,0,0),(93,77,0,0),(94,78,1,0),(95,79,0,0),(96,80,1,0),(97,81,1,0),(98,82,0,0),(99,82,0,0),(100,82,0,0),(101,82,0,0),(102,82,0,0),(103,82,0,0),(104,83,0,0),(105,84,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.droidhen.game.bubles2.ScoreClient');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(15,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.CALL_PHONE'),(2,'android.permission.DELETE_PACKAGES'),(1,'android.permission.INSTALL_PACKAGES'),(13,'android.permission.INTERNET'),(4,'android.permission.PROCESS_OUTGOING_CALLS'),(18,'android.permission.READ_EXTERNAL_STORAGE'),(10,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_SMS'),(3,'android.permission.SEND_SMS'),(16,'android.permission.VIBRATE'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(20,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(19,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(17,'com.android.vending.CHECK_LICENSE');
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
INSERT INTO `Providers` VALUES (1,59,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9959&cid=1000',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9959&cid=1000',NULL,NULL,NULL),(6,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(7,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9959&cid=1000',NULL,NULL,NULL),(8,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9959&cid=1000',NULL,NULL,NULL),(9,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9917&amp;cid=1000',NULL,NULL,NULL),(10,'package','(.*)',NULL,NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(15,'package','(.*)',NULL,NULL,NULL,NULL),(16,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(17,'package','(.*)',NULL,NULL,NULL,NULL),(18,'package','(.*)',NULL,NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9923&amp;cid=1000',NULL,NULL,NULL),(21,NULL,NULL,'market://search?q=pname:jp.co.sic.missng2',NULL,NULL,NULL),(22,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9923&amp;cid=1000',NULL,NULL,NULL),(23,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9923&amp;cid=1000',NULL,NULL,NULL),(24,NULL,NULL,'tel:(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,2,1),(17,2,2),(18,2,3),(19,2,4),(20,2,5),(21,2,6),(22,2,7),(23,2,8),(24,2,9),(25,2,10),(26,2,11),(27,2,12),(28,2,13),(29,2,14),(30,2,15),(31,3,1),(32,3,2),(33,3,4),(34,3,5),(35,3,6),(36,3,7),(37,3,8),(38,3,10),(39,3,11),(40,3,12),(41,3,13),(42,3,14),(43,3,15),(44,4,1),(45,4,2),(46,4,4),(47,4,5),(48,4,6),(49,4,7),(50,4,8),(51,4,10),(52,4,11),(53,4,12),(54,4,13),(55,4,14),(56,4,15),(57,4,16),(58,5,17),(59,5,16),(60,5,1),(61,5,2),(62,5,4),(63,5,7),(64,5,8),(65,5,10),(66,5,11),(67,5,12),(68,5,13),(69,6,1),(70,6,2),(71,6,5),(72,6,6),(73,6,8),(74,6,10),(75,6,12),(76,6,13),(77,6,14),(78,6,15),(79,6,16),(80,6,19),(81,6,18),(82,6,20);
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
