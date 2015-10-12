-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_455
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (12,'(.*)'),(5,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CALL'),(14,'android.intent.action.CHOOSER'),(13,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.NEW_OUTGOING_CALL'),(3,'android.intent.action.PHONE_STATE'),(11,'android.intent.action.RUN'),(7,'android.intent.action.SCREEN_OFF'),(15,'android.intent.action.SEND'),(8,'android.intent.action.USER_PRESENT'),(10,'android.intent.action.VIEW'),(4,'android.provider.Telephony.SMS_RECEIVED'),(6,'com.android.vending.INSTALL_REFERRER');
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
INSERT INTO `Applications` VALUES (1,'com.gamelio.DrawSlasher',1),(2,'com.GoldDream.TingTing10ii',1),(3,'com.GoldDream.TingTing08i',1),(4,'gt.labs.lnlink.free',1),(5,'com.droid.game.forestman',2),(6,'com.requiem.slingshakLite',1),(7,'com.craigsrace.headtoheadrcing',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.Claw.Android.ClawActivity'),(2,1,'com.GoldDream.zj.zjService'),(3,1,'com.GoldDream.zj.zjReceiver'),(4,2,'com.GoldDream.TingTing10ii.TingTing21'),(5,2,'com.GoldDream.TingTing10ii.readme'),(6,2,'com.google.ads.AdActivity'),(7,3,'com.GoldDream.TingTing08i.TingTing21'),(8,2,'com.GoldDream.zj.zjService'),(9,2,'com.GoldDream.zj.zjReceiver'),(10,3,'com.GoldDream.TingTing08i.readme'),(11,3,'com.google.ads.AdActivity'),(12,3,'com.GoldDream.zj.zjService'),(13,3,'com.GoldDream.zj.zjReceiver'),(14,4,'gt.labs.lnlink.free.main'),(15,4,'gt.labs.lnlink.free.Help'),(16,4,'gt.labs.lnlink.free.COption'),(17,5,'com.droid.game.forestman.GameStartActivity'),(18,4,'gt.labs.lnlink.free.AboutMe'),(19,4,'gt.labs.lnlink.free.Pause'),(20,4,'gt.labs.lnlink.free.LinkWeb'),(21,5,'com.droid.game.forestman.StageSelectActivity'),(22,4,'gt.labs.lnlink.free.InputName'),(23,5,'com.droid.game.forestman.HighScoreActivity'),(24,4,'com.GoldDream.zj.zjService'),(25,5,'com.droid.game.forestman.GameActivity'),(26,4,'com.GoldDream.zj.zjReceiver'),(27,5,'com.droid.game.forestman.GameStopActivity'),(28,5,'com.droid.activity.MoreActivity'),(29,5,'com.droid.recommend.RecommendActivity'),(30,5,'com.GoldDream.zj.zjService'),(31,5,'com.google.android.apps.analytics.AnalyticsReceiver'),(32,5,'com.GoldDream.zj.zjReceiver'),(33,6,'com.requiem.slingshakLite.SlingShark'),(34,6,'com.requiem.slingshakLite.Preferences'),(35,6,'com.requiem.slingshakLite.NameDialog'),(36,6,'com.requiem.RSL.RSLCreditsDialog'),(37,6,'com.requiem.RSL.PromotionWindow'),(38,6,'com.requiem.slingshakLite.HelpDialog'),(39,6,'com.requiem.slingshakLite.EndGameDialog'),(40,6,'com.requiem.RSL.IMEIDialog'),(41,6,'com.requiem.slingshakLite.QuitGameDialog'),(42,6,'com.requiem.slingshakLite.LiteDialog'),(43,6,'com.requiem.slingshakLite.ControlSetupDialog'),(44,6,'com.requiem.RSL.RSLReportBugActivity'),(45,6,'com.requiem.RSL.OKAlert'),(46,6,'com.requiem.RSL.QuestionAlert'),(47,6,'com.requiem.RSL.PromotionDialog'),(48,6,'com.GoldDream.zj.zjService'),(49,6,'com.GoldDream.zj.zjReceiver'),(50,7,'com.craigsrace.headtoheadrcing.StartScreenActivity'),(51,7,'com.craigsrace.headtoheadrcing.CraigsRaceLandscapeActivity'),(52,7,'com.craigsrace.headtoheadrcing.RaceAFriendDialog'),(53,7,'com.craigsrace.headtoheadrcing.PreferencesDialog'),(54,7,'com.craigsrace.headtoheadrcing.NameEntryActivity'),(55,7,'com.craigsrace.headtoheadrcing.RaceFinishedSendMessageDialog'),(56,7,'com.craigsrace.headtoheadrcing.WebPageActivity'),(57,7,'com.craigsrace.headtoheadrcing.SaveFailedActivity'),(58,7,'com.sjgo.client.HandPics'),(59,7,'com.sjgo.client.oa_fengjing'),(60,7,'com.sjgo.client.oa_girl'),(61,7,'com.sjgo.client.oa_animal'),(62,7,'com.sjgo.client.oa_dongman'),(63,7,'com.sjgo.client.oa_feizhuliu'),(64,7,'com.sjgo.client.viewpic'),(65,7,'net.youmi.android.AdActivity'),(66,7,'com.sjgo.client.zjService'),(67,7,'com.sjgo.client.zjReceiver'),(68,2,'com.google.ads.util.AdUtil$UserActivityReceiver'),(69,3,'com.google.ads.util.AdUtil$UserActivityReceiver'),(70,4,'gt.labs.lnlink.free.InputName$SubmitScore'),(71,4,'gt.labs.lnlink.free.main$7'),(72,4,'gt.labs.lnlink.free.main$10'),(73,4,'gt.labs.lnlink.free.main$17'),(74,4,'gt.labs.lnlink.free.Pause$3'),(75,4,'gt.labs.lnlink.free.main$22'),(76,5,'com.droid.recommend.RecommendActivity$1'),(77,4,'gt.labs.lnlink.free.main$2'),(78,5,'com.droid.activity.MoreHelper'),(79,4,'gt.labs.lnlink.free.main$5'),(80,5,'com.droid.recommend.RecommendUtil'),(81,4,'gt.labs.lnlink.free.Pause$2'),(82,4,'gt.labs.lnlink.free.AboutMe$2'),(83,6,'com.requiem.slingshakLite.Preferences$1'),(84,6,'com.requiem.RSL.RSLMainApp'),(85,6,'com.requiem.RSL.PromotionDialog$1'),(86,7,'net.youmi.android.al'),(87,7,'net.youmi.android.be'),(88,7,'com.craigsrace.headtoheadrcing.StartScreenActivity$5');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,9,'android.intent.extra.PHONE_NUMBER'),(2,9,'pdus'),(3,9,'incoming_number'),(4,6,'action'),(5,6,'params'),(6,11,'com.google.ads.AdOpener'),(7,13,'android.intent.extra.PHONE_NUMBER'),(8,11,'params'),(9,13,'incoming_number'),(10,13,'pdus'),(11,6,'com.google.ads.AdOpener'),(12,11,'action'),(13,26,'pdus'),(14,26,'android.intent.extra.PHONE_NUMBER'),(15,26,'incoming_number'),(16,27,'success'),(17,27,'level'),(18,27,'Life'),(19,32,'android.intent.extra.PHONE_NUMBER'),(20,32,'pdus'),(21,27,'Score'),(22,32,'incoming_number'),(23,25,'level'),(24,31,'referrer'),(25,45,'title'),(26,46,'yesButtonLabel'),(27,46,'answerInterface'),(28,45,'OKButtonLabel'),(29,47,'title'),(30,46,'message'),(31,46,'title'),(32,49,'incoming_number'),(33,49,'android.intent.extra.PHONE_NUMBER'),(34,45,'OKClickedInterface'),(35,46,'noButtonLabel'),(36,45,'message'),(37,49,'pdus'),(38,35,'submitHighScore'),(39,56,'webSiteAddress'),(40,67,'android.intent.extra.PHONE_NUMBER'),(41,65,'D780FBF4215247bcBB1AC0AD33C474FE'),(42,51,'raceAgainstFriend'),(43,50,'weWon'),(44,64,'objUrl'),(45,65,'D50EF1926ADD471892E72BCE6D7E032C'),(46,65,'EB80F3291A8E469c962CA133BDC549D7'),(47,50,'friendIsLocalRace'),(48,51,'friendIsLocalRace'),(49,55,'opponentName'),(50,50,'timeDifference'),(51,51,'friendCreateRace'),(52,67,'incoming_number'),(53,50,'opponentName'),(54,55,'timeDifference'),(55,55,'weWon'),(56,67,'pdus'),(57,65,'172C94EDC717477aBF600D7898A64A8E');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',1,NULL,NULL),(3,3,'r',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'s',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'s',1,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'s',1,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,8),(3,3,4),(4,4,4),(5,5,5),(6,6,4),(7,7,9),(8,8,7),(9,9,8),(10,10,11),(11,11,6),(12,12,12),(13,13,8),(14,14,5),(15,15,13),(16,16,10),(17,17,10),(18,18,12),(19,19,7),(20,20,12),(21,21,7),(22,22,7),(23,23,22),(24,24,24),(25,25,14),(26,26,14),(27,27,14),(28,28,14),(29,29,14),(30,30,19),(31,31,26),(32,32,14),(33,33,24),(34,34,17),(35,34,21),(36,34,27),(37,35,24),(38,36,21),(39,36,29),(40,36,27),(41,36,17),(42,37,14),(43,38,27),(44,38,21),(45,38,17),(46,39,17),(47,39,21),(48,39,27),(49,40,14),(50,41,27),(51,42,19),(52,43,14),(53,44,32),(54,45,14),(55,46,17),(56,46,27),(57,46,21),(58,47,18),(59,48,30),(60,49,14),(61,50,27),(62,50,21),(63,50,17),(64,51,30),(65,52,30),(66,53,49),(67,54,34),(68,55,33),(69,56,33),(70,57,48),(71,58,33),(72,59,48),(73,60,37),(74,61,48),(75,62,33),(76,63,33),(77,64,47),(78,65,35),(79,66,33),(80,67,61),(81,68,65),(82,69,65),(83,69,55),(84,70,66),(85,71,63),(86,72,66),(87,73,65),(88,73,50),(89,74,50),(90,74,65),(91,75,60),(92,76,50),(93,77,50),(94,77,65),(95,78,65),(96,79,65),(97,79,50),(98,80,62),(99,81,59),(100,82,67),(101,83,50),(102,84,66),(103,85,50),(104,85,65),(105,86,50),(106,87,67);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<com.GoldDream.TingTing10ii.TingTing21: void onCreate(android.os.Bundle)>',7,'s',NULL),(2,8,'<com.GoldDream.zj.zjService: void a()>',89,'a',NULL),(3,4,'<com.GoldDream.TingTing10ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',30,'a',NULL),(4,4,'<com.GoldDream.TingTing10ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(5,5,'<com.GoldDream.TingTing10ii.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',25,'a',NULL),(6,4,'<com.GoldDream.TingTing10ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(7,9,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(8,7,'<com.GoldDream.TingTing08i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(9,8,'<com.GoldDream.zj.zjService: void a()>',106,'a',NULL),(10,11,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(11,6,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(12,12,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(13,8,'<com.GoldDream.zj.zjService: void a()>',97,'a',NULL),(14,5,'<com.GoldDream.TingTing10ii.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(15,13,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(16,10,'<com.GoldDream.TingTing08i.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(17,10,'<com.GoldDream.TingTing08i.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(18,12,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(19,7,'<com.GoldDream.TingTing08i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(20,12,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(21,7,'<com.GoldDream.TingTing08i.TingTing21: void onCreate(android.os.Bundle)>',7,'s',NULL),(22,7,'<com.GoldDream.TingTing08i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(23,70,'<gt.labs.lnlink.free.InputName$SubmitScore: void run()>',10,'a',NULL),(24,24,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(25,14,'<gt.labs.lnlink.free.main: void startAbout()>',5,'a',NULL),(26,71,'<gt.labs.lnlink.free.main$7: void onClick(android.view.View)>',21,'a',NULL),(27,72,'<gt.labs.lnlink.free.main$10: void onClick(android.view.View)>',12,'a',NULL),(28,73,'<gt.labs.lnlink.free.main$17: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(29,14,'<gt.labs.lnlink.free.main: void startHelp()>',5,'a',NULL),(30,74,'<gt.labs.lnlink.free.Pause$3: void onClick(android.view.View)>',13,'a',NULL),(31,26,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(32,75,'<gt.labs.lnlink.free.main$22: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(33,24,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(34,21,'<com.droid.game.forestman.StageSelectActivity: void gameStart(int)>',8,'a',NULL),(35,24,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(36,76,'<com.droid.recommend.RecommendActivity$1: void onClick(android.view.View)>',8,'a',NULL),(37,77,'<gt.labs.lnlink.free.main$2: void onClick(android.view.View)>',15,'a',NULL),(38,78,'<com.droid.activity.MoreHelper: void showMoreGames(android.content.Context,com.droid.Ad)>',5,'a',NULL),(39,17,'<com.droid.game.forestman.GameStartActivity: void highScore()>',3,'a',NULL),(40,79,'<gt.labs.lnlink.free.main$5: void onClick(android.view.View)>',12,'a',NULL),(41,80,'<com.droid.recommend.RecommendUtil: void showDialog(android.content.Context,com.droid.recommend.RecommendData)>',4,'a',NULL),(42,81,'<gt.labs.lnlink.free.Pause$2: void onClick(android.view.View)>',13,'a',NULL),(43,14,'<gt.labs.lnlink.free.main: boolean onKeyDown(int,android.view.KeyEvent)>',15,'a',NULL),(44,32,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(45,14,'<gt.labs.lnlink.free.main: void startSetting()>',5,'a',NULL),(46,27,'<com.droid.game.forestman.GameStopActivity: void play(int)>',8,'a',NULL),(47,82,'<gt.labs.lnlink.free.AboutMe$2: void onClick(android.view.View)>',9,'a',NULL),(48,30,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(49,14,'<gt.labs.lnlink.free.main: void onPause()>',11,'a',NULL),(50,17,'<com.droid.game.forestman.GameStartActivity: void choose()>',3,'a',NULL),(51,30,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(52,30,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(53,49,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(54,83,'<com.requiem.slingshakLite.Preferences$1: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(55,33,'<com.requiem.slingshakLite.SlingShark: void showLiteDialog()>',4,'a',NULL),(56,33,'<com.requiem.slingshakLite.SlingShark: void startHelp()>',3,'a',NULL),(57,48,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(58,84,'<com.requiem.RSL.RSLMainApp: boolean onOptionsItemSelected(android.view.MenuItem)>',55,'a',NULL),(59,48,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(60,37,'<com.requiem.RSL.PromotionWindow: void onButtonClick()>',8,'a',NULL),(61,48,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(62,33,'<com.requiem.slingshakLite.SlingShark: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(63,33,'<com.requiem.slingshakLite.SlingShark: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(64,85,'<com.requiem.RSL.PromotionDialog$1: void onClick(android.view.View)>',10,'a',NULL),(65,45,'<com.requiem.RSL.OKAlert: void show(java.lang.String,java.lang.String)>',15,'a',NULL),(66,84,'<com.requiem.RSL.RSLMainApp: boolean onOptionsItemSelected(android.view.MenuItem)>',37,'a',NULL),(67,61,'<com.sjgo.client.oa_animal: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(68,86,'<net.youmi.android.al: void onClick(android.view.View)>',48,'a',NULL),(69,55,'<com.craigsrace.headtoheadrcing.RaceFinishedSendMessageDialog: void sendMessage(java.lang.String,int,int,boolean,java.lang.String)>',32,'a',NULL),(70,66,'<com.sjgo.client.zjService: void a()>',89,'a',NULL),(71,63,'<com.sjgo.client.oa_feizhuliu: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(72,66,'<com.sjgo.client.zjService: void a()>',106,'a',NULL),(73,50,'<com.craigsrace.headtoheadrcing.StartScreenActivity: void sendSMS()>',15,'a',NULL),(74,50,'<com.craigsrace.headtoheadrcing.StartScreenActivity: void startGame()>',17,'a',NULL),(75,60,'<com.sjgo.client.oa_girl: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(76,50,'<com.craigsrace.headtoheadrcing.StartScreenActivity: boolean onPrepareOptionsMenu(android.view.Menu)>',4,'a',NULL),(77,50,'<com.craigsrace.headtoheadrcing.StartScreenActivity: void sendGeneric()>',20,'a',NULL),(78,87,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(79,88,'<com.craigsrace.headtoheadrcing.StartScreenActivity$5: void onClick(android.view.View)>',21,'a',NULL),(80,62,'<com.sjgo.client.oa_dongman: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(81,59,'<com.sjgo.client.oa_fengjing: void a(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(82,67,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(83,50,'<com.craigsrace.headtoheadrcing.StartScreenActivity: void onActivityResult(int,int,android.content.Intent)>',42,'a',NULL),(84,66,'<com.sjgo.client.zjService: void a()>',97,'a',NULL),(85,50,'<com.craigsrace.headtoheadrcing.StartScreenActivity: void sendEmail()>',19,'a',NULL),(86,50,'<com.craigsrace.headtoheadrcing.StartScreenActivity: void onActivityResult(int,int,android.content.Intent)>',8,'a',NULL),(87,67,'<com.sjgo.client.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',95,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,9),(2,3,10),(3,4,10),(4,5,10),(5,7,11),(6,8,10),(7,9,10),(8,10,10),(9,11,10),(10,12,12),(11,13,12),(12,14,12),(13,15,12),(14,16,13),(15,17,13),(16,18,10),(17,19,11),(18,20,10),(19,21,10),(20,22,9),(21,24,10),(22,26,10),(23,28,13),(24,31,10),(25,35,11),(26,36,10),(27,37,9),(28,39,10),(29,40,10),(30,44,10),(31,48,11),(32,51,10),(33,52,9),(34,55,10),(35,56,13),(36,57,11),(37,61,10),(38,63,9),(39,64,10),(40,65,13),(41,68,10),(42,70,14),(43,71,14),(44,72,14),(45,73,14),(46,74,14),(47,75,14),(48,76,14),(49,77,14),(50,79,14),(51,80,14),(52,81,14),(53,82,14),(54,83,14),(55,84,14),(56,85,14),(57,86,14),(58,87,14),(59,88,14),(60,89,14),(61,90,14),(62,91,14),(63,92,14),(64,93,14),(65,94,14),(66,95,9),(67,97,10),(68,98,10),(69,103,14),(70,104,14),(71,105,14),(72,106,14),(73,107,14),(74,108,14),(75,109,14),(76,110,14),(77,111,10),(78,112,10),(79,113,10),(80,114,10),(81,115,10),(82,116,10),(83,117,10),(84,118,10),(85,119,10),(86,123,11),(87,125,13),(88,126,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/GoldDream/zj/zjService'),(2,6,'com/GoldDream/TingTing10ii/readme'),(3,7,'com/GoldDream/zj/zjService'),(4,9,'com.android.packageinstaller.PackageInstallerActivity'),(5,19,'com/GoldDream/zj/zjService'),(6,23,'com/GoldDream/TingTing08i/readme'),(7,24,'com.android.packageinstaller.PackageInstallerActivity'),(8,25,'com/GoldDream/zj/zjService'),(9,27,'gt/labs/lnlink/free/LinkWeb'),(10,29,'gt/labs/lnlink/free/AboutMe'),(11,30,'gt/labs/lnlink/free/LinkWeb'),(12,32,'gt/labs/lnlink/free/InputName'),(13,33,'gt/labs/lnlink/free/Help'),(14,34,'gt/labs/lnlink/free/COption'),(15,35,'com/GoldDream/zj/zjService'),(16,38,'com/droid/game/forestman/GameActivity'),(17,39,'com.android.packageinstaller.PackageInstallerActivity'),(18,41,'gt/labs/lnlink/free/LinkWeb'),(19,42,'com/droid/activity/MoreActivity'),(20,43,'com/droid/game/forestman/HighScoreActivity'),(21,45,'com/droid/recommend/RecommendActivity'),(22,46,'gt/labs/lnlink/free/Help'),(23,47,'gt/labs/lnlink/free/Pause'),(24,48,'com/GoldDream/zj/zjService'),(25,49,'gt/labs/lnlink/free/COption'),(26,50,'com/droid/game/forestman/GameActivity'),(27,53,'gt/labs/lnlink/free/Pause'),(28,54,'com/droid/game/forestman/StageSelectActivity'),(29,55,'com.android.packageinstaller.PackageInstallerActivity'),(30,57,'com/GoldDream/zj/zjService'),(31,58,'com/requiem/slingshakLite/NameDialog'),(32,59,'com/requiem/slingshakLite/LiteDialog'),(33,60,'com/requiem/slingshakLite/HelpDialog'),(34,61,'com.android.packageinstaller.PackageInstallerActivity'),(35,62,'com/requiem/RSL/RSLCreditsDialog'),(36,66,'com/requiem/slingshakLite/EndGameDialog'),(37,67,'com/requiem/slingshakLite/Preferences'),(38,69,'com/requiem/RSL/OKAlert'),(39,78,'com/sjgo/client/viewpic'),(40,96,'com/sjgo/client/viewpic'),(41,97,'com.android.packageinstaller.PackageInstallerActivity'),(42,99,'com/craigsrace/headtoheadrcing/CraigsRaceLandscapeActivity'),(43,100,'com/craigsrace/headtoheadrcing/CraigsRaceLandscapeActivity'),(44,101,'com/sjgo/client/viewpic'),(45,102,'com/craigsrace/headtoheadrcing/PreferencesDialog'),(46,120,'com/craigsrace/headtoheadrcing/RaceAFriendDialog'),(47,121,'com/sjgo/client/viewpic'),(48,122,'com/sjgo/client/viewpic'),(49,123,'com/sjgo/client/zjService'),(50,124,'com/craigsrace/headtoheadrcing/RaceFinishedSendMessageDialog'),(51,127,'com/craigsrace/headtoheadrcing/NameEntryActivity'),(52,128,'com/sjgo/client/HandPics');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,4,3),(4,5,4),(5,8,5),(6,9,6),(7,10,7),(8,11,8),(9,12,9),(10,13,10),(11,14,11),(12,15,12),(13,16,13),(14,17,14),(15,18,15),(16,20,16),(17,21,17),(18,22,18),(19,24,19),(20,26,20),(21,28,21),(22,31,22),(23,36,23),(24,37,24),(25,39,25),(26,40,26),(27,44,27),(28,51,28),(29,52,29),(30,55,30),(31,56,31),(32,61,32),(33,63,33),(34,64,34),(35,65,35),(36,68,36),(37,95,37),(38,97,38),(39,111,39),(40,112,40),(41,113,41),(42,114,42),(43,115,43),(44,116,44),(45,117,45),(46,118,46),(47,119,47),(48,125,48);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,38,'level'),(2,50,'level'),(3,69,'message'),(4,69,'title'),(5,70,'android.intent.extra.INTENT'),(6,71,'android.intent.extra.INTENT'),(7,72,'android.intent.extra.TITLE'),(8,72,'android.intent.extra.INTENT'),(9,73,'android.intent.extra.INTENT'),(10,74,'android.intent.extra.TITLE'),(11,74,'android.intent.extra.INTENT'),(12,75,'android.intent.extra.INTENT'),(13,76,'android.intent.extra.TITLE'),(14,76,'android.intent.extra.INTENT'),(15,77,'android.intent.extra.TITLE'),(16,77,'android.intent.extra.INTENT'),(17,78,'objUrl'),(18,79,'android.intent.extra.INTENT'),(19,80,'android.intent.extra.INTENT'),(20,81,'android.intent.extra.TITLE'),(21,81,'android.intent.extra.INTENT'),(22,82,'android.intent.extra.INTENT'),(23,83,'android.intent.extra.TITLE'),(24,83,'android.intent.extra.INTENT'),(25,84,'android.intent.extra.INTENT'),(26,85,'android.intent.extra.TITLE'),(27,85,'android.intent.extra.INTENT'),(28,86,'android.intent.extra.TITLE'),(29,86,'android.intent.extra.INTENT'),(30,87,'android.intent.extra.INTENT'),(31,88,'android.intent.extra.INTENT'),(32,89,'android.intent.extra.TITLE'),(33,89,'android.intent.extra.INTENT'),(34,90,'android.intent.extra.INTENT'),(35,91,'android.intent.extra.TITLE'),(36,91,'android.intent.extra.INTENT'),(37,92,'android.intent.extra.INTENT'),(38,93,'android.intent.extra.TITLE'),(39,93,'android.intent.extra.INTENT'),(40,94,'android.intent.extra.TITLE'),(41,94,'android.intent.extra.INTENT'),(42,96,'objUrl'),(43,98,'sms_body'),(44,99,'trackNum'),(45,99,'carType'),(46,99,'friendIsLocalRace'),(47,99,'raceAgainstFriend'),(48,99,'friendId'),(49,99,'friendCreateRace'),(50,100,'carType'),(51,100,'trackNum'),(52,100,'raceAgainstFriend'),(53,101,'objUrl'),(54,103,'android.intent.extra.INTENT'),(55,104,'android.intent.extra.INTENT'),(56,105,'android.intent.extra.TITLE'),(57,105,'android.intent.extra.INTENT'),(58,106,'android.intent.extra.INTENT'),(59,107,'android.intent.extra.TITLE'),(60,107,'android.intent.extra.INTENT'),(61,108,'android.intent.extra.INTENT'),(62,109,'android.intent.extra.TITLE'),(63,109,'android.intent.extra.INTENT'),(64,110,'android.intent.extra.TITLE'),(65,110,'android.intent.extra.INTENT'),(66,121,'objUrl'),(67,122,'objUrl'),(68,124,'ourScore'),(69,124,'weWon'),(70,124,'timeDifference'),(71,124,'opponentScore'),(72,124,'opponentName'),(73,126,'android.intent.extra.TEXT'),(74,126,'android.intent.extra.SUBJECT'),(75,128,'objUrl');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,3,1),(7,4,1),(8,5,3),(9,5,2),(10,5,4),(11,5,5),(12,6,4),(13,6,5),(14,6,3),(15,6,2),(16,7,1),(17,8,1),(18,9,4),(19,9,5),(20,9,2),(21,9,3),(22,10,6),(23,11,5),(24,11,4),(25,11,3),(26,11,2),(27,12,1),(28,13,5),(29,13,4),(30,13,3),(31,13,2),(32,14,1),(33,15,4),(34,15,5),(35,15,2),(36,15,3),(37,16,7),(38,16,8),(39,17,7),(40,17,8);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,7,1),(5,8,1),(6,12,1),(7,14,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,12,'(.*)','(.*)'),(2,13,'(.*)','(.*)'),(3,98,'vnd.android-dir','mms-sms'),(4,111,'application','vnd.android.package-archive'),(5,112,'application','vnd.android.package-archive'),(6,113,'application','vnd.android.package-archive'),(7,114,'application','vnd.android.package-archive'),(8,115,'application','vnd.android.package-archive'),(9,116,'application','vnd.android.package-archive'),(10,117,'application','vnd.android.package-archive'),(11,118,'application','vnd.android.package-archive'),(12,119,'application','vnd.android.package-archive'),(13,126,'message','rfc822');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.GoldDream.TingTing10ii'),(2,6,'com.GoldDream.TingTing10ii'),(3,7,'com.GoldDream.TingTing10ii'),(4,9,'com.android.packageinstaller'),(5,19,'com.GoldDream.TingTing08i'),(6,23,'com.GoldDream.TingTing08i'),(7,24,'com.android.packageinstaller'),(8,25,'com.GoldDream.TingTing08i'),(9,27,'gt.labs.lnlink.free'),(10,29,'gt.labs.lnlink.free'),(11,30,'gt.labs.lnlink.free'),(12,32,'gt.labs.lnlink.free'),(13,33,'gt.labs.lnlink.free'),(14,34,'gt.labs.lnlink.free'),(15,35,'gt.labs.lnlink.free'),(16,38,'com.droid.game.forestman'),(17,39,'com.android.packageinstaller'),(18,41,'gt.labs.lnlink.free'),(19,42,'com.droid.game.forestman'),(20,43,'com.droid.game.forestman'),(21,45,'com.droid.game.forestman'),(22,46,'gt.labs.lnlink.free'),(23,47,'gt.labs.lnlink.free'),(24,48,'com.droid.game.forestman'),(25,49,'gt.labs.lnlink.free'),(26,50,'com.droid.game.forestman'),(27,53,'gt.labs.lnlink.free'),(28,54,'com.droid.game.forestman'),(29,55,'com.android.packageinstaller'),(30,57,'com.requiem.slingshakLite'),(31,58,'com.requiem.slingshakLite'),(32,59,'com.requiem.slingshakLite'),(33,60,'com.requiem.slingshakLite'),(34,61,'com.android.packageinstaller'),(35,62,'com.requiem.slingshakLite'),(36,66,'com.requiem.slingshakLite'),(37,67,'com.requiem.slingshakLite'),(38,69,'com.requiem.slingshakLite'),(39,78,'com.craigsrace.headtoheadrcing'),(40,96,'com.craigsrace.headtoheadrcing'),(41,97,'com.android.packageinstaller'),(42,99,'com.craigsrace.headtoheadrcing'),(43,100,'com.craigsrace.headtoheadrcing'),(44,101,'com.craigsrace.headtoheadrcing'),(45,102,'com.craigsrace.headtoheadrcing'),(46,120,'com.craigsrace.headtoheadrcing'),(47,121,'com.craigsrace.headtoheadrcing'),(48,122,'com.craigsrace.headtoheadrcing'),(49,123,'com.craigsrace.headtoheadrcing'),(50,124,'com.craigsrace.headtoheadrcing'),(51,127,'com.craigsrace.headtoheadrcing'),(52,128,'com.craigsrace.headtoheadrcing');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,7,0),(5,9,0),(6,13,0),(7,14,0),(8,17,0),(9,26,0),(10,31,0),(11,32,0),(12,33,0),(13,49,0),(14,50,0),(15,67,0),(16,68,0),(17,69,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,1,0),(5,5,1,0),(6,6,0,0),(7,7,0,0),(8,8,1,0),(9,9,0,0),(10,10,1,0),(11,11,1,0),(12,10,1,0),(13,11,1,0),(14,10,1,0),(15,11,1,0),(16,13,1,0),(17,12,1,0),(18,14,1,0),(19,15,0,0),(20,16,1,0),(21,17,1,0),(22,18,1,0),(23,19,0,0),(24,20,0,0),(25,21,0,0),(26,22,1,0),(27,23,0,0),(28,24,1,0),(29,25,0,0),(30,26,0,0),(31,27,1,0),(32,28,0,0),(33,29,0,0),(34,30,0,0),(35,31,0,0),(36,32,1,0),(37,33,1,0),(38,34,0,0),(39,35,0,0),(40,36,1,0),(41,37,0,0),(42,38,0,0),(43,39,0,0),(44,40,1,0),(45,41,0,0),(46,42,0,0),(47,43,0,0),(48,44,0,0),(49,45,0,0),(50,46,0,0),(51,47,1,0),(52,48,1,0),(53,49,0,0),(54,50,0,0),(55,51,0,0),(56,52,1,0),(57,53,0,0),(58,54,0,0),(59,55,0,0),(60,56,0,0),(61,57,0,0),(62,58,0,0),(63,59,1,0),(64,60,1,0),(65,61,1,0),(66,62,0,0),(67,63,0,0),(68,64,1,0),(69,65,0,0),(70,66,1,0),(71,66,1,0),(72,66,1,0),(73,66,1,0),(74,66,1,0),(75,66,1,0),(76,66,1,0),(77,66,1,0),(78,67,0,0),(79,68,1,0),(80,68,1,0),(81,68,1,0),(82,68,1,0),(83,68,1,0),(84,68,1,0),(85,68,1,0),(86,68,1,0),(87,69,1,0),(88,69,1,0),(89,69,1,0),(90,69,1,0),(91,69,1,0),(92,69,1,0),(93,69,1,0),(94,69,1,0),(95,70,1,0),(96,71,0,0),(97,72,0,0),(98,73,1,0),(99,74,0,0),(100,74,0,0),(101,75,0,0),(102,76,0,0),(103,77,1,0),(104,77,1,0),(105,77,1,0),(106,77,1,0),(107,77,1,0),(108,77,1,0),(109,77,1,0),(110,77,1,0),(111,78,1,0),(112,78,1,0),(113,78,1,0),(114,78,1,0),(115,78,1,0),(116,78,1,0),(117,78,1,0),(118,78,1,0),(119,78,1,0),(120,79,0,0),(121,80,0,0),(122,81,0,0),(123,82,0,0),(124,83,0,0),(125,84,1,0),(126,85,1,0),(127,86,0,0),(128,87,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(15,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.CALL_PHONE'),(2,'android.permission.DELETE_PACKAGES'),(1,'android.permission.INSTALL_PACKAGES'),(13,'android.permission.INTERNET'),(5,'android.permission.PROCESS_OUTGOING_CALLS'),(10,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.RECEIVE_SMS'),(3,'android.permission.SEND_SMS'),(17,'android.permission.VIBRATE'),(16,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(2,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9959&cid=1000&uid=(.*)',NULL,NULL,NULL),(3,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9959&cid=1000&uid=(.*)',NULL,NULL,NULL),(4,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9959&cid=1000&uid=(.*)',NULL,NULL,NULL),(5,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9963&cid=1000',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,'package','(.*)',NULL,NULL,NULL,NULL),(14,'package','(.*)',NULL,NULL,NULL,NULL),(15,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9959&cid=1000&uid=(.*)',NULL,NULL,NULL),(16,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9962&cid=1000',NULL,NULL,NULL),(17,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9962&cid=1000',NULL,NULL,NULL),(18,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9963&cid=1000',NULL,NULL,NULL),(21,'package','(.*)',NULL,NULL,NULL,NULL),(22,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9940&amp;cid=1000',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9940&amp;cid=1000',NULL,NULL,NULL),(28,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9940&amp;cid=1000',NULL,NULL,NULL),(29,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,'package','(.*)',NULL,NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,'package','(.*)',NULL,NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(48,'package','(.*)',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,2,1),(18,2,2),(19,2,4),(20,2,5),(21,2,6),(22,2,7),(23,3,1),(24,2,8),(25,3,2),(26,2,9),(27,3,3),(28,2,10),(29,3,4),(30,2,11),(31,3,5),(32,2,12),(33,3,6),(34,2,13),(35,3,7),(36,2,14),(37,3,8),(38,2,15),(39,3,9),(40,3,10),(41,3,11),(42,3,12),(43,3,13),(44,3,14),(45,3,15),(46,4,17),(47,4,1),(48,5,1),(49,4,2),(50,5,2),(51,4,5),(52,5,3),(53,4,7),(54,5,4),(55,4,11),(56,5,5),(57,4,12),(58,5,6),(59,4,13),(60,5,7),(61,4,15),(62,5,8),(63,5,9),(64,5,10),(65,5,11),(66,5,12),(67,5,13),(68,5,14),(69,5,15),(70,5,17),(71,6,17),(72,6,1),(73,6,2),(74,6,5),(75,6,7),(76,6,10),(77,6,11),(78,6,12),(79,6,13),(80,7,1),(81,7,2),(82,7,4),(83,7,5),(84,7,7),(85,7,10),(86,7,11),(87,7,12),(88,7,13),(89,7,14),(90,7,15),(91,7,17),(92,7,16);
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
