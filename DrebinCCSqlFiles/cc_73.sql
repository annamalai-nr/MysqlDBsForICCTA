-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_73
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
INSERT INTO `ActionStrings` VALUES (10,'(.*)'),(7,'android.intent.action.ACTION_HANDLE_MESSAGE_'),(4,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.CHOOSER'),(15,'android.intent.action.GET_CONTENT'),(8,'android.intent.action.GOSRECEIVER_'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.PACKAGE_ADDED'),(12,'android.intent.action.SCREEN_OFF'),(13,'android.intent.action.USER_PRESENT'),(9,'android.intent.action.VIEW'),(2,'android.intent.action.WAP_PUSH_GOS'),(3,'com.android.action_ACTIVITY3'),(5,'com.android.apple.APPLESERVICE'),(11,'com.android.apple.START');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.droidhen.traffic',19),(2,'com.androidn.game.forestman',6),(3,'com.feasy.jewels.FruitsMatching',19),(4,'com.androidn.darts',4),(5,'com.androidn.darts',3);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.droidhen.traffic.CoverActivity'),(2,2,'com.androidn.game.forestman.GameStartActivity'),(3,2,'com.androidn.game.forestman.StageSelectActivity'),(4,1,'com.droidhen.traffic.HelpActivity'),(5,2,'com.androidn.game.forestman.HighScoreActivity'),(6,1,'com.droidhen.traffic.GameActivity'),(7,2,'com.androidn.game.forestman.GameActivity'),(8,1,'com.droidhen.traffic.OptionActivity'),(9,2,'com.androidn.game.forestman.GameStopActivity'),(10,1,'com.google.ads.AdActivity'),(11,2,'com.androidn.api.promptclient.more.MoreActivity'),(12,1,'com.droidhen.api.scoreclient.ui.HighScoresActivity'),(13,3,'com.feasy.jewels.FruitsMatching.GMenu'),(14,2,'com.androidn.api.promptclient.prompt.RecommendActivity'),(15,1,'com.droidhen.api.promptclient.prompt.RecommendActivity'),(16,2,'com.androidn.api.promptclient.prompt.RateActivity'),(17,1,'com.droidhen.api.promptclient.prompt.RateActivity'),(18,2,'com.google.ads.AdActivity'),(19,3,'com.feasy.jewels.FruitsMatching.GameActivity'),(20,1,'com.droidhen.api.promptclient.more.MoreActivity'),(21,2,'com.android.cgos.Activity1'),(22,1,'com.android.cgos.NotificationActivity'),(23,3,'com.feasy.jewels.FruitsMatching.OptionActivity'),(24,2,'com.android.cgos.Activity2'),(25,3,'com.feasy.jewels.FruitsMatching.ScoreList'),(26,2,'com.android.cgos.Activity3'),(27,3,'com.scoreloop.android.coreui.HighscoresActivity'),(28,3,'com.scoreloop.android.coreui.ProfileActivity'),(29,1,'com.android.apple.TestActivity'),(30,3,'com.feasy.jewels.FruitsMatching.TestActivity'),(31,1,'com.android.cgos.GosService'),(32,2,'com.android.apple.TestActivity'),(33,3,'com.android.cgos.NotificationActivity'),(34,1,'com.android.apple.AppleService'),(35,2,'com.android.cgos.GosService'),(36,1,'com.android.cgos.GosReceiver'),(37,2,'com.android.apple.AppleService'),(38,3,'com.feasy.jewels.FruitsMatching.AppleService'),(39,3,'com.android.cgos.GosService'),(40,1,'com.android.apple.AppleReceiver'),(41,2,'com.android.cgos.AlarmReceiver'),(42,3,'com.feasy.jewels.FruitsMatching.AppleReceiver'),(43,2,'com.android.cgos.GosReceiver'),(44,1,'com.droidhen.api.scoreclient.ScoreClientProvider'),(45,3,'com.android.cgos.GosReceiver'),(46,2,'com.android.apple.AppleReceiver'),(47,4,'com.cdroid.darts.Menu'),(48,4,'com.cdroid.darts.gameview.GameActMP'),(49,4,'com.cdroid.darts.gameview.GameActSP'),(50,5,'com.cdroid.darts.Menu'),(51,4,'com.cdroid.darts.tutorial.Rules'),(52,4,'com.cdroid.darts.highscore.Highscore'),(53,4,'com.cdroid.darts.tutorial.Tutorial'),(54,5,'com.cdroid.darts.gameview.GameActMP'),(55,4,'com.carl.mpclient.activity.TextInputAct'),(56,5,'com.cdroid.darts.gameview.GameActSP'),(57,4,'com.carl.mpclient.activity.Preferences'),(58,5,'com.cdroid.darts.tutorial.Rules'),(59,4,'com.carl.mpclient.activity.chat.ChatAct'),(60,5,'com.cdroid.darts.highscore.Highscore'),(61,4,'com.carl.mpclient.activity.lobby.Lobby'),(62,5,'com.cdroid.darts.tutorial.Tutorial'),(63,4,'com.carl.mpclient.activity.profile.Profile'),(64,5,'com.carl.mpclient.activity.TextInputAct'),(65,4,'com.carl.mpclient.activity.profile.NameAct'),(66,5,'com.carl.mpclient.activity.Preferences'),(67,4,'com.carl.mpclient.activity.buddy.Buddies'),(68,5,'com.carl.mpclient.activity.chat.ChatAct'),(69,4,'com.google.ads.AdActivity'),(70,5,'com.carl.mpclient.activity.lobby.Lobby'),(71,4,'com.android.apple.TestActivity'),(72,5,'com.carl.mpclient.activity.profile.Profile'),(73,4,'com.android.cgos.Activity1'),(74,5,'com.carl.mpclient.activity.profile.NameAct'),(75,4,'com.android.cgos.Activity2'),(76,5,'com.carl.mpclient.activity.buddy.Buddies'),(77,4,'com.android.cgos.Activity3'),(78,5,'com.google.ads.AdActivity'),(79,5,'com.android.apple.TestActivity'),(80,5,'com.android.cgos.Activity1'),(81,4,'com.android.apple.AppleService'),(82,5,'com.android.cgos.Activity2'),(83,5,'com.android.cgos.Activity3'),(84,4,'com.android.cgos.GosService'),(85,4,'com.android.apple.AppleReceiver'),(86,5,'com.android.apple.AppleService'),(87,4,'com.android.cgos.AlarmReceiver'),(88,4,'com.android.cgos.GosReceiver'),(89,5,'com.android.cgos.GosService'),(90,5,'com.android.apple.AppleReceiver'),(91,5,'com.android.cgos.AlarmReceiver'),(92,5,'com.android.cgos.GosReceiver'),(93,1,'com.droidhen.api.promptclient.more.MoreHelper'),(94,1,'com.android.cgos.g'),(95,3,'com.android.cgos.g'),(96,1,'com.google.ads.util.AdUtil$UserActivityReceiver'),(97,3,'com.android.cgos.c'),(98,1,'com.android.cgos.c'),(99,3,'com.android.apple.AppleService$StartReceiver'),(100,1,'com.android.apple.AppleService$StartReceiver'),(101,3,'com.android.apple.AppleReceiver'),(102,3,'com.feasy.jewels.FruitsMatching.GMenu$2'),(103,1,'com.android.cgos.GosUtil'),(104,2,'com.androidn.api.promptclient.prompt.RecommendActivity$1'),(105,3,'com.android.cgos.l'),(106,2,'com.androidn.api.promptclient.more.MoreHelper'),(107,2,'com.android.cgos.GosUtil'),(108,3,'com.feasy.jewels.FruitsMatching.GMenu$4'),(109,2,'com.androidn.api.promptclient.prompt.PromptUtil'),(110,3,'com.feasy.jewels.FruitsMatching.GMenu$1'),(111,1,'com.android.cgos.l'),(112,2,'com.google.ads.util.AdUtil$UserActivityReceiver'),(113,3,'com.android.cgos.GosUtil'),(114,2,'com.android.cgos.h'),(115,1,'com.droidhen.api.promptclient.prompt.RecommendActivity$1'),(116,3,'com.feasy.jewels.FruitsMatching.GMenu$5'),(117,4,'com.android.cgos.GosUtil'),(118,4,'com.carl.mpclient.activity.h'),(119,5,'com.carl.mpclient.activity.h'),(120,4,'com.carl.mpclient.activity.profile.j'),(121,5,'com.android.cgos.GosUtil'),(122,4,'com.carl.mpclient.activity.lobby.r'),(123,5,'com.android.cgos.h'),(124,5,'com.carl.mpclient.activity.lobby.r'),(125,5,'com.carl.mpclient.activity.profile.j'),(126,4,'com.android.cgos.h');
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
INSERT INTO `ComponentExtras` VALUES (1,10,'params'),(2,6,'resume'),(3,10,'com.google.ads.AdOpener'),(4,22,'body'),(5,17,'file'),(6,24,'message'),(7,21,'message'),(8,26,'apkName'),(9,17,'msg'),(10,22,'url'),(11,13,'gameLevel'),(12,33,'address'),(13,23,'isVibrate'),(14,12,'submit'),(15,13,'isSound'),(16,26,'address'),(17,12,'global'),(18,33,'body'),(19,22,'address'),(20,13,'isVibrate'),(21,13,'gameScore'),(22,12,'board'),(23,26,'url'),(24,9,'Life'),(25,23,'isSound'),(26,33,'apkName'),(27,33,'url'),(28,13,'gamePause'),(29,18,'com.google.ads.AdOpener'),(30,23,'isMusic'),(31,13,'isMusic'),(32,20,'gamePause'),(33,18,'params'),(34,26,'body'),(35,9,'Score'),(36,22,'apkName'),(37,12,'mode'),(38,10,'action'),(39,18,'action'),(40,9,'success'),(41,16,'msg'),(42,26,'apkPackage'),(43,9,'level'),(44,7,'level'),(45,16,'file'),(46,72,'text'),(47,72,'frag_active'),(48,70,'frag_active'),(49,60,'frag_active'),(50,68,'frag_active'),(51,76,'frag_active'),(52,83,'apkName'),(53,76,'text'),(54,83,'address'),(55,78,'params'),(56,63,'frag_active'),(57,61,'frag_active'),(58,52,'frag_active'),(59,59,'frag_active'),(60,67,'frag_active'),(61,77,'apkPackage'),(62,72,'mp'),(63,65,'name'),(64,70,'mp'),(65,69,'action'),(66,60,'mp'),(67,68,'mp'),(68,76,'mp'),(69,74,'name'),(70,67,'text'),(71,77,'apkName'),(72,83,'apkPackage'),(73,78,'com.google.ads.AdOpener'),(74,64,'text'),(75,83,'url'),(76,80,'message'),(77,83,'body'),(78,77,'address'),(79,69,'com.google.ads.AdOpener'),(80,75,'message'),(81,82,'message'),(82,78,'action'),(83,53,'tutid'),(84,63,'mp'),(85,61,'mp'),(86,52,'mp'),(87,59,'mp'),(88,67,'mp'),(89,69,'params'),(90,77,'url'),(91,62,'tutid'),(92,63,'text'),(93,77,'body'),(94,73,'message'),(95,55,'text');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,20,'a',0,NULL,NULL),(20,19,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'s',1,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',0,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'p',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',1,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'s',1,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',1,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'r',1,NULL,NULL),(86,86,'s',1,NULL,NULL),(87,87,'r',0,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'r',1,NULL,NULL),(91,91,'r',0,NULL,NULL),(92,92,'r',1,NULL,NULL),(93,94,'r',1,NULL,NULL),(94,95,'r',1,NULL,NULL),(95,96,'r',1,NULL,NULL),(96,97,'r',1,NULL,NULL),(97,98,'r',1,NULL,NULL),(98,99,'r',1,NULL,NULL),(99,100,'r',1,NULL,NULL),(100,101,'r',1,NULL,NULL),(101,112,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,1,6),(3,2,27),(4,3,13),(5,4,22),(6,5,1),(7,5,6),(8,6,3),(9,6,2),(10,6,9),(11,6,14),(12,7,33),(13,8,10),(14,9,9),(15,9,2),(16,9,3),(17,10,9),(18,10,3),(19,10,2),(20,11,24),(21,11,26),(22,12,13),(23,13,6),(24,13,1),(25,14,20),(26,14,28),(27,14,27),(28,15,1),(29,15,36),(30,16,2),(31,16,3),(32,16,9),(33,17,44),(34,18,13),(35,19,1),(36,19,6),(37,20,9),(38,21,44),(39,22,13),(40,23,22),(41,24,21),(42,25,13),(43,27,2),(44,27,46),(45,26,33),(46,28,44),(47,29,45),(48,29,13),(49,30,9),(50,31,26),(51,31,24),(52,32,1),(53,32,40),(54,33,6),(55,33,15),(56,34,13),(57,35,18),(58,36,28),(59,37,9),(60,37,3),(61,37,2),(62,38,2),(63,38,43),(64,39,9),(65,39,3),(66,39,2),(67,40,50),(68,41,63),(69,42,75),(70,42,77),(71,43,57),(72,44,66),(73,45,47),(74,46,50),(75,47,50),(76,48,63),(77,49,47),(78,50,47),(79,50,85),(80,51,82),(81,51,83),(82,52,73),(83,53,47),(84,54,72),(85,55,50),(86,56,47),(87,56,88),(88,57,53),(89,57,61),(90,58,78),(91,59,90),(92,59,50),(93,60,82),(94,60,83),(95,61,47),(96,62,70),(97,62,62),(98,63,92),(99,63,50),(100,64,69),(101,65,72),(102,66,50),(103,67,47),(104,68,80),(105,69,77),(106,69,75);
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
INSERT INTO `ExitPoints` VALUES (1,93,'<com.droidhen.api.promptclient.more.MoreHelper: void showMoreGames(android.content.Context,com.droidhen.api.promptclient.more.AdInMore,boolean)>',6,'a',NULL),(2,27,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',4,'a',NULL),(3,102,'<com.feasy.jewels.FruitsMatching.GMenu$2: void onClick(android.view.View)>',37,'a',NULL),(4,103,'<com.android.cgos.GosUtil: android.net.Uri download(android.content.Context,java.lang.String,java.lang.String)>',17,'p',NULL),(5,1,'<com.droidhen.traffic.CoverActivity: void gotoOptions()>',3,'a',NULL),(6,104,'<com.androidn.api.promptclient.prompt.RecommendActivity$1: void onClick(android.view.View)>',8,'a',NULL),(7,105,'<com.android.cgos.l: void onClick(android.content.DialogInterface,int)>',20,'a',NULL),(8,10,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(9,106,'<com.androidn.api.promptclient.more.MoreHelper: void showMoreGames(android.content.Context,com.androidn.api.promptclient.more.AdInMore,boolean)>',6,'a',NULL),(10,2,'<com.androidn.game.forestman.GameStartActivity: void highScore()>',3,'a',NULL),(11,107,'<com.android.cgos.GosUtil: void openBrowser(android.content.Context,java.lang.String)>',5,'a',NULL),(12,108,'<com.feasy.jewels.FruitsMatching.GMenu$4: void onClick(android.view.View)>',8,'a',NULL),(13,1,'<com.droidhen.traffic.CoverActivity: void showHelp()>',3,'a',NULL),(14,19,'<com.feasy.jewels.FruitsMatching.GameActivity: void doShowMenu(boolean,int,int)>',26,'a',NULL),(15,103,'<com.android.cgos.GosUtil: void startGosService(android.content.Context)>',10,'s',NULL),(16,3,'<com.androidn.game.forestman.StageSelectActivity: void gameStart(int)>',8,'a',NULL),(17,44,'<com.droidhen.api.scoreclient.ScoreClientProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',28,'p',0),(18,13,'<com.feasy.jewels.FruitsMatching.GMenu: void showOptionDlg()>',10,'a',NULL),(19,1,'<com.droidhen.traffic.CoverActivity: void newGame(boolean)>',8,'a',NULL),(20,109,'<com.androidn.api.promptclient.prompt.PromptUtil: void show(android.content.Context,boolean,com.androidn.api.promptclient.util.ShareMsgType,java.lang.String,java.lang.String,java.lang.String)>',27,'a',NULL),(21,44,'<com.droidhen.api.scoreclient.ScoreClientProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',31,'p',0),(22,110,'<com.feasy.jewels.FruitsMatching.GMenu$1: void onClick(android.view.View)>',12,'a',NULL),(23,111,'<com.android.cgos.l: void onClick(android.content.DialogInterface,int)>',20,'a',NULL),(24,21,'<com.android.cgos.Activity1: void onCreate(android.os.Bundle)>',8,'a',NULL),(25,101,'<com.android.apple.AppleReceiver: void startService(android.content.Context)>',6,'s',NULL),(26,113,'<com.android.cgos.GosUtil: android.net.Uri download(android.content.Context,java.lang.String,java.lang.String)>',17,'p',NULL),(27,46,'<com.android.apple.AppleReceiver: void beginStartingService(android.content.Context,android.content.Intent)>',14,'s',NULL),(28,44,'<com.droidhen.api.scoreclient.ScoreClientProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',14,'p',0),(29,113,'<com.android.cgos.GosUtil: void startGosService(android.content.Context)>',10,'s',NULL),(30,109,'<com.androidn.api.promptclient.prompt.PromptUtil: void showDialog(android.content.Context,com.androidn.api.promptclient.prompt.RecommendData)>',4,'a',NULL),(31,114,'<com.android.cgos.h: void run()>',39,'a',NULL),(32,40,'<com.android.apple.AppleReceiver: void startService(android.content.Context)>',6,'s',NULL),(33,115,'<com.droidhen.api.promptclient.prompt.RecommendActivity$1: void onClick(android.view.View)>',8,'a',NULL),(34,116,'<com.feasy.jewels.FruitsMatching.GMenu$5: void onClick(android.view.View)>',8,'a',NULL),(35,18,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(36,28,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',4,'a',NULL),(37,2,'<com.androidn.game.forestman.GameStartActivity: void choose()>',3,'a',NULL),(38,43,'<com.android.cgos.GosReceiver: void a(android.content.Context)>',14,'s',NULL),(39,9,'<com.androidn.game.forestman.GameStopActivity: void play(int)>',8,'a',NULL),(40,50,'<com.cdroid.darts.Menu: void onClick(android.view.View)>',104,'a',NULL),(41,63,'<com.carl.mpclient.activity.profile.Profile: void onActivityResult(int,int,android.content.Intent)>',22,'p',0),(42,117,'<com.android.cgos.GosUtil: void openBrowser(android.content.Context,java.lang.String)>',5,'a',NULL),(43,118,'<com.carl.mpclient.activity.h: boolean onPreferenceClick(android.preference.Preference)>',18,'a',NULL),(44,119,'<com.carl.mpclient.activity.h: boolean onPreferenceClick(android.preference.Preference)>',18,'a',NULL),(45,47,'<com.cdroid.darts.Menu: void onClick(android.view.View)>',104,'a',NULL),(46,50,'<com.cdroid.darts.Menu: void onClick(android.view.View)>',42,'a',NULL),(47,50,'<com.cdroid.darts.Menu: void onClick(android.view.View)>',94,'a',NULL),(48,120,'<com.carl.mpclient.activity.profile.j: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(49,47,'<com.cdroid.darts.Menu: void onClick(android.view.View)>',42,'a',NULL),(50,85,'<com.android.apple.AppleReceiver: void beginStartingService(android.content.Context,android.content.Intent)>',14,'s',NULL),(51,121,'<com.android.cgos.GosUtil: void openBrowser(android.content.Context,java.lang.String)>',5,'a',NULL),(52,73,'<com.android.cgos.Activity1: void onCreate(android.os.Bundle)>',8,'a',NULL),(53,47,'<com.cdroid.darts.Menu: void onClick(android.view.View)>',94,'a',NULL),(54,72,'<com.carl.mpclient.activity.profile.Profile: void onActivityResult(int,int,android.content.Intent)>',22,'p',0),(55,50,'<com.cdroid.darts.Menu: void onClick(android.view.View)>',62,'a',NULL),(56,88,'<com.android.cgos.GosReceiver: void a(android.content.Context)>',14,'s',NULL),(57,122,'<com.carl.mpclient.activity.lobby.r: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(58,78,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(59,90,'<com.android.apple.AppleReceiver: void beginStartingService(android.content.Context,android.content.Intent)>',14,'s',NULL),(60,123,'<com.android.cgos.h: void run()>',38,'a',NULL),(61,47,'<com.cdroid.darts.Menu: void onClick(android.view.View)>',72,'a',NULL),(62,124,'<com.carl.mpclient.activity.lobby.r: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(63,92,'<com.android.cgos.GosReceiver: void a(android.content.Context)>',14,'s',NULL),(64,69,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(65,125,'<com.carl.mpclient.activity.profile.j: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(66,50,'<com.cdroid.darts.Menu: void onClick(android.view.View)>',72,'a',NULL),(67,47,'<com.cdroid.darts.Menu: void onClick(android.view.View)>',62,'a',NULL),(68,80,'<com.android.cgos.Activity1: void onCreate(android.os.Bundle)>',8,'a',NULL),(69,126,'<com.android.cgos.h: void run()>',38,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,6,9),(2,7,9),(3,8,9),(4,10,9),(5,11,10),(6,13,10),(7,14,9),(8,17,9),(9,19,9),(10,26,9),(11,27,9),(12,29,1),(13,33,9),(14,35,9),(15,37,9),(16,39,10),(17,40,10),(18,44,14),(19,45,14),(20,46,14),(21,47,14),(22,48,9),(23,49,14),(24,50,9),(25,51,14),(26,52,9),(27,53,14),(28,54,14),(29,55,14),(30,56,14),(31,57,14),(32,58,14),(33,59,14),(34,60,14),(35,61,14),(36,62,14),(37,63,14),(38,64,14),(39,65,14),(40,66,14),(41,67,14),(42,68,14),(43,69,14),(44,70,14),(45,71,14),(46,72,14),(47,74,14),(48,75,14),(49,76,14),(50,77,14),(51,78,14),(52,79,14),(53,80,14),(54,81,14),(55,82,14),(56,83,14),(57,84,14),(58,85,14),(59,86,14),(60,87,15),(61,88,14),(62,91,9),(63,92,9),(64,93,1),(65,94,9),(66,95,14),(67,96,14),(68,97,14),(69,98,14),(70,99,14),(71,100,14),(72,101,14),(73,102,14),(74,103,14),(75,104,14),(76,105,14),(77,106,14),(78,107,14),(79,108,14),(80,109,14),(81,111,14),(82,112,14),(83,113,9),(84,114,14),(85,115,10),(86,116,14),(87,117,10),(88,118,14),(89,119,14),(90,121,14),(91,122,14),(92,123,9),(93,124,14),(94,125,14),(95,126,14),(96,127,14),(97,128,14),(98,129,14),(99,130,14),(100,131,14),(101,132,14),(102,133,14),(103,134,14),(104,135,14),(105,136,14),(106,137,14),(107,138,14),(108,139,14),(109,140,14),(110,142,9),(111,143,15),(112,144,10),(113,145,14),(114,146,10),(115,147,14),(116,148,14),(117,149,14),(118,150,14),(119,151,14),(120,152,14),(121,153,14),(122,154,14),(123,155,14),(124,156,14),(125,157,14),(126,158,14),(127,159,14),(128,160,1),(129,161,14),(130,162,14),(131,163,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/droidhen/api/promptclient/more/MoreActivity'),(2,2,'com/scoreloop/android/coreui/ProfileActivity'),(3,3,'com/feasy/jewels/FruitsMatching/GameActivity'),(4,5,'com/droidhen/traffic/OptionActivity'),(5,4,'com/feasy/jewels/FruitsMatching/GameActivity'),(6,9,'com/androidn/api/promptclient/more/MoreActivity'),(7,12,'com/androidn/game/forestman/HighScoreActivity'),(8,15,'com/scoreloop/android/coreui/HighscoresActivity'),(9,16,'com/droidhen/traffic/HelpActivity'),(10,20,'com/android/cgos/GosService'),(11,18,'com/feasy/jewels/FruitsMatching/GMenu'),(12,21,'com/androidn/game/forestman/GameActivity'),(13,23,'com/droidhen/traffic/GameActivity'),(14,22,'com/feasy/jewels/FruitsMatching/OptionActivity'),(15,24,'com/androidn/api/promptclient/prompt/RateActivity'),(16,25,'com/feasy/jewels/FruitsMatching/GameActivity'),(17,28,'com/android/apple/AppleService'),(18,30,'com/android/apple/AppleService'),(19,31,'com/android/cgos/GosService'),(20,32,'com/androidn/api/promptclient/prompt/RecommendActivity'),(21,34,'com/android/apple/AppleService'),(22,36,'com/scoreloop/android/coreui/ProfileActivity'),(23,38,'com/scoreloop/android/coreui/HighscoresActivity'),(24,41,'com/androidn/game/forestman/StageSelectActivity'),(25,42,'com/android/cgos/GosService'),(26,43,'com/androidn/game/forestman/GameActivity'),(27,73,'com/cdroid/darts/gameview/GameActSP'),(28,89,'com/cdroid/darts/gameview/GameActSP'),(29,90,'com/android/apple/AppleService'),(30,110,'com/android/cgos/GosService'),(31,120,'com/android/apple/AppleService'),(32,141,'com/android/cgos/GosService');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,2),(2,7,3),(3,8,4),(4,10,5),(5,11,6),(6,13,7),(7,14,8),(8,17,9),(9,19,10),(10,26,11),(11,27,12),(12,33,14),(13,35,15),(14,37,16),(15,39,17),(16,40,18),(17,48,19),(18,50,20),(19,52,21),(20,91,22),(21,92,23),(22,94,24),(23,113,25),(24,115,26),(25,117,27),(26,123,28),(27,142,29),(28,144,30),(29,146,31),(30,163,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'gameScore'),(2,4,'gamePause'),(3,4,'gameLevel'),(4,18,'gameScore'),(5,18,'gamePause'),(6,18,'gameLevel'),(7,21,'level'),(8,22,'isSound'),(9,22,'isVibrate'),(10,23,'resume'),(11,22,'isMusic'),(12,24,'file'),(13,24,'msg'),(14,30,'action'),(15,43,'level'),(16,44,'android.intent.extra.INTENT'),(17,45,'android.intent.extra.INTENT'),(18,46,'android.intent.extra.TITLE'),(19,46,'android.intent.extra.INTENT'),(20,47,'android.intent.extra.INTENT'),(21,49,'android.intent.extra.TITLE'),(22,49,'android.intent.extra.INTENT'),(23,51,'android.intent.extra.INTENT'),(24,53,'android.intent.extra.TITLE'),(25,53,'android.intent.extra.INTENT'),(26,54,'android.intent.extra.TITLE'),(27,54,'android.intent.extra.INTENT'),(28,55,'android.intent.extra.INTENT'),(29,56,'android.intent.extra.INTENT'),(30,57,'android.intent.extra.INTENT'),(31,58,'android.intent.extra.TITLE'),(32,59,'android.intent.extra.INTENT'),(33,58,'android.intent.extra.INTENT'),(34,60,'android.intent.extra.TITLE'),(35,61,'android.intent.extra.INTENT'),(36,60,'android.intent.extra.INTENT'),(37,62,'android.intent.extra.TITLE'),(38,63,'android.intent.extra.INTENT'),(39,62,'android.intent.extra.INTENT'),(40,64,'android.intent.extra.TITLE'),(41,65,'android.intent.extra.INTENT'),(42,64,'android.intent.extra.INTENT'),(43,66,'android.intent.extra.TITLE'),(44,67,'android.intent.extra.INTENT'),(45,66,'android.intent.extra.INTENT'),(46,68,'android.intent.extra.TITLE'),(47,69,'android.intent.extra.TITLE'),(48,68,'android.intent.extra.INTENT'),(49,69,'android.intent.extra.INTENT'),(50,70,'android.intent.extra.TITLE'),(51,70,'android.intent.extra.INTENT'),(52,71,'android.intent.extra.INTENT'),(53,72,'android.intent.extra.INTENT'),(54,74,'android.intent.extra.TITLE'),(55,74,'android.intent.extra.INTENT'),(56,75,'android.intent.extra.INTENT'),(57,76,'android.intent.extra.INTENT'),(58,77,'android.intent.extra.INTENT'),(59,78,'android.intent.extra.TITLE'),(60,78,'android.intent.extra.INTENT'),(61,79,'android.intent.extra.TITLE'),(62,79,'android.intent.extra.INTENT'),(63,80,'android.intent.extra.INTENT'),(64,81,'android.intent.extra.INTENT'),(65,82,'android.intent.extra.TITLE'),(66,82,'android.intent.extra.INTENT'),(67,83,'android.intent.extra.TITLE'),(68,83,'android.intent.extra.INTENT'),(69,84,'android.intent.extra.TITLE'),(70,84,'android.intent.extra.INTENT'),(71,85,'android.intent.extra.INTENT'),(72,86,'android.intent.extra.TITLE'),(73,86,'android.intent.extra.INTENT'),(74,88,'android.intent.extra.TITLE'),(75,88,'android.intent.extra.INTENT'),(76,90,'action'),(77,95,'android.intent.extra.INTENT'),(78,96,'android.intent.extra.INTENT'),(79,97,'android.intent.extra.TITLE'),(80,98,'android.intent.extra.INTENT'),(81,97,'android.intent.extra.INTENT'),(82,99,'android.intent.extra.INTENT'),(83,100,'android.intent.extra.INTENT'),(84,101,'android.intent.extra.TITLE'),(85,102,'android.intent.extra.TITLE'),(86,101,'android.intent.extra.INTENT'),(87,102,'android.intent.extra.INTENT'),(88,103,'android.intent.extra.INTENT'),(89,104,'android.intent.extra.INTENT'),(90,105,'android.intent.extra.TITLE'),(91,106,'android.intent.extra.TITLE'),(92,105,'android.intent.extra.INTENT'),(93,106,'android.intent.extra.INTENT'),(94,107,'android.intent.extra.INTENT'),(95,108,'android.intent.extra.TITLE'),(96,108,'android.intent.extra.INTENT'),(97,109,'android.intent.extra.TITLE'),(98,109,'android.intent.extra.INTENT'),(99,111,'android.intent.extra.TITLE'),(100,111,'android.intent.extra.INTENT'),(101,112,'android.intent.extra.INTENT'),(102,114,'android.intent.extra.INTENT'),(103,116,'android.intent.extra.TITLE'),(104,116,'android.intent.extra.INTENT'),(105,118,'android.intent.extra.INTENT'),(106,119,'android.intent.extra.TITLE'),(107,119,'android.intent.extra.INTENT'),(108,120,'action'),(109,121,'android.intent.extra.INTENT'),(110,122,'android.intent.extra.TITLE'),(111,122,'android.intent.extra.INTENT'),(112,124,'android.intent.extra.TITLE'),(113,124,'android.intent.extra.INTENT'),(114,125,'android.intent.extra.INTENT'),(115,126,'android.intent.extra.INTENT'),(116,127,'android.intent.extra.INTENT'),(117,128,'android.intent.extra.INTENT'),(118,129,'android.intent.extra.TITLE'),(119,130,'android.intent.extra.TITLE'),(120,129,'android.intent.extra.INTENT'),(121,130,'android.intent.extra.INTENT'),(122,131,'android.intent.extra.INTENT'),(123,132,'android.intent.extra.INTENT'),(124,133,'android.intent.extra.TITLE'),(125,134,'android.intent.extra.TITLE'),(126,133,'android.intent.extra.INTENT'),(127,134,'android.intent.extra.INTENT'),(128,135,'android.intent.extra.INTENT'),(129,136,'android.intent.extra.INTENT'),(130,137,'android.intent.extra.TITLE'),(131,138,'android.intent.extra.TITLE'),(132,137,'android.intent.extra.INTENT'),(133,138,'android.intent.extra.INTENT'),(134,139,'android.intent.extra.TITLE'),(135,140,'android.intent.extra.TITLE'),(136,139,'android.intent.extra.INTENT'),(137,140,'android.intent.extra.INTENT'),(138,145,'android.intent.extra.INTENT'),(139,147,'android.intent.extra.INTENT'),(140,148,'android.intent.extra.TITLE'),(141,148,'android.intent.extra.INTENT'),(142,149,'android.intent.extra.INTENT'),(143,150,'android.intent.extra.INTENT'),(144,151,'android.intent.extra.TITLE'),(145,151,'android.intent.extra.INTENT'),(146,152,'android.intent.extra.INTENT'),(147,153,'android.intent.extra.INTENT'),(148,154,'android.intent.extra.TITLE'),(149,154,'android.intent.extra.INTENT'),(150,155,'android.intent.extra.TITLE'),(151,155,'android.intent.extra.INTENT'),(152,156,'android.intent.extra.INTENT'),(153,157,'android.intent.extra.TITLE'),(154,158,'android.intent.extra.TITLE'),(155,157,'android.intent.extra.INTENT'),(156,158,'android.intent.extra.INTENT'),(157,159,'android.intent.extra.INTENT'),(158,161,'android.intent.extra.TITLE'),(159,161,'android.intent.extra.INTENT'),(160,162,'android.intent.extra.TITLE'),(161,162,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,3),(6,6,2),(7,7,4),(8,8,5),(9,9,4),(10,10,4),(11,11,4),(12,12,4),(13,13,6),(14,14,4),(15,15,1),(16,16,1),(17,17,3),(18,18,5),(19,19,3),(20,20,4),(21,21,5),(22,22,6),(23,23,4),(24,24,4),(25,25,6),(26,26,4),(27,27,7),(28,28,8),(29,29,7),(30,30,8),(31,31,7),(32,32,8),(33,33,7),(34,34,8),(35,35,7),(36,36,8),(37,37,7),(38,38,11),(39,39,13),(40,39,12),(41,40,13),(42,40,12),(43,41,8),(44,42,8),(45,43,8),(46,44,8),(47,45,8),(48,46,7),(49,47,8),(50,48,7),(51,49,7),(52,50,7),(53,51,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,2),(6,6,2),(7,15,1),(8,16,1),(9,17,2),(10,19,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,13,'package',NULL,NULL,NULL,NULL,NULL),(2,22,'package',NULL,NULL,NULL,NULL,NULL),(3,25,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,11,'(.*)','(.*)'),(2,29,'vnd.android-dir','mms-sms'),(3,33,'application','vnd.android.package-archive'),(4,39,'(.*)','(.*)'),(5,87,'image','*'),(6,93,'vnd.android-dir','mms-sms'),(7,115,'(.*)','(.*)'),(8,123,'application','vnd.android.package-archive'),(9,143,'image','*'),(10,144,'(.*)','(.*)'),(11,160,'vnd.android-dir','mms-sms'),(12,163,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.droidhen.traffic'),(2,2,'com.feasy.jewels.FruitsMatching'),(3,3,'com.feasy.jewels.FruitsMatching'),(4,5,'com.droidhen.traffic'),(5,4,'com.feasy.jewels.FruitsMatching'),(6,9,'com.androidn.game.forestman'),(7,12,'com.androidn.game.forestman'),(8,15,'com.feasy.jewels.FruitsMatching'),(9,16,'com.droidhen.traffic'),(10,20,'com.droidhen.traffic'),(11,18,'com.feasy.jewels.FruitsMatching'),(12,21,'com.androidn.game.forestman'),(13,23,'com.droidhen.traffic'),(14,22,'com.feasy.jewels.FruitsMatching'),(15,24,'com.androidn.game.forestman'),(16,25,'com.feasy.jewels.FruitsMatching'),(17,28,'com.feasy.jewels.FruitsMatching'),(18,30,'com.androidn.game.forestman'),(19,31,'com.feasy.jewels.FruitsMatching'),(20,32,'com.androidn.game.forestman'),(21,34,'com.droidhen.traffic'),(22,36,'com.feasy.jewels.FruitsMatching'),(23,38,'com.feasy.jewels.FruitsMatching'),(24,41,'com.androidn.game.forestman'),(25,42,'com.androidn.game.forestman'),(26,43,'com.androidn.game.forestman'),(27,73,'com.androidn.darts'),(28,89,'com.androidn.darts'),(29,90,'com.androidn.darts'),(30,110,'com.androidn.darts'),(31,120,'com.androidn.darts'),(32,141,'com.androidn.darts');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,1,0),(3,13,0),(4,22,0),(5,26,0),(6,33,0),(7,36,0),(8,37,0),(9,40,0),(10,42,0),(11,43,0),(12,45,0),(13,43,0),(14,46,0),(15,47,0),(16,50,0),(17,77,0),(18,81,0),(19,83,0),(20,85,0),(21,86,0),(22,88,0),(23,90,0),(24,88,0),(25,92,0),(26,92,0),(27,36,0),(28,45,0),(29,93,0),(30,94,0),(31,95,0),(32,96,0),(33,97,0),(34,98,0),(35,99,0),(36,100,0),(37,40,0),(38,99,0),(39,101,0),(40,95,0),(41,36,0),(42,93,0),(43,95,0),(44,97,0),(45,99,0),(46,45,0),(47,40,0),(48,94,0),(49,96,0),(50,98,0),(51,100,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,3,0,0),(5,5,0,0),(6,6,1,0),(7,7,1,0),(8,8,1,0),(9,9,0,0),(10,7,1,0),(11,8,1,0),(12,10,0,0),(13,8,1,0),(14,11,1,0),(15,12,0,0),(16,13,0,0),(17,11,1,0),(18,14,0,0),(19,11,1,0),(20,15,0,0),(21,16,0,0),(22,18,0,0),(23,19,0,0),(24,20,0,0),(25,22,0,0),(26,23,1,0),(27,23,1,0),(28,25,0,0),(29,24,1,0),(30,27,0,0),(31,29,0,0),(32,30,0,0),(33,31,1,0),(34,32,0,0),(35,33,1,0),(36,34,0,0),(37,35,1,0),(38,36,0,0),(39,35,1,0),(40,35,1,0),(41,37,0,0),(42,38,0,0),(43,39,0,0),(44,40,1,0),(45,40,1,0),(46,40,1,0),(47,40,1,0),(48,42,1,0),(49,40,1,0),(50,42,1,0),(51,40,1,0),(52,42,1,0),(53,40,1,0),(54,40,1,0),(55,43,1,0),(56,43,1,0),(57,44,1,0),(58,43,1,0),(59,44,1,0),(60,44,1,0),(61,43,1,0),(62,43,1,0),(63,44,1,0),(64,44,1,0),(65,43,1,0),(66,43,1,0),(67,44,1,0),(68,44,1,0),(69,43,1,0),(70,44,1,0),(71,45,1,0),(72,45,1,0),(73,46,0,0),(74,45,1,0),(75,47,1,0),(76,45,1,0),(77,47,1,0),(78,45,1,0),(79,47,1,0),(80,45,1,0),(81,47,1,0),(82,45,1,0),(83,47,1,0),(84,45,1,0),(85,47,1,0),(86,47,1,0),(87,48,1,0),(88,47,1,0),(89,49,0,0),(90,50,0,0),(91,51,1,0),(92,51,1,0),(93,52,1,0),(94,51,1,0),(95,53,1,0),(96,53,1,0),(97,53,1,0),(98,55,1,0),(99,55,1,0),(100,53,1,0),(101,55,1,0),(102,53,1,0),(103,55,1,0),(104,53,1,0),(105,55,1,0),(106,53,1,0),(107,55,1,0),(108,53,1,0),(109,55,1,0),(110,56,0,0),(111,55,1,0),(112,57,1,0),(113,58,1,0),(114,57,1,0),(115,58,1,0),(116,57,1,0),(117,58,1,0),(118,57,1,0),(119,57,1,0),(120,59,0,0),(121,57,1,0),(122,57,1,0),(123,60,1,0),(124,57,1,0),(125,61,1,0),(126,62,1,0),(127,61,1,0),(128,62,1,0),(129,61,1,0),(130,62,1,0),(131,61,1,0),(132,62,1,0),(133,61,1,0),(134,62,1,0),(135,61,1,0),(136,62,1,0),(137,61,1,0),(138,62,1,0),(139,61,1,0),(140,62,1,0),(141,63,0,0),(142,64,1,0),(143,65,1,0),(144,64,1,0),(145,66,1,0),(146,64,1,0),(147,66,1,0),(148,66,1,0),(149,66,1,0),(150,67,1,0),(151,66,1,0),(152,67,1,0),(153,66,1,0),(154,67,1,0),(155,66,1,0),(156,67,1,0),(157,66,1,0),(158,67,1,0),(159,67,1,0),(160,68,1,0),(161,67,1,0),(162,67,1,0),(163,69,1,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.droidhen.traffic.ScoreClient');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_DOWNLOAD_MANAGER'),(9,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(14,'android.permission.DELETE_PACKAGES'),(2,'android.permission.INSTALL_PACKAGES'),(8,'android.permission.INTERNET'),(5,'android.permission.READ_PHONE_STATE'),(6,'android.permission.READ_SMS'),(7,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(15,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'android.permission.WRITE_SMS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `Providers` VALUES (1,44,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://downloads/download',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,NULL,'content://downloads/download',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'',NULL,NULL,NULL),(21,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'',NULL,NULL,NULL),(24,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,4,1),(2,26,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,1,6),(8,2,2),(9,1,7),(10,2,5),(11,1,8),(12,2,7),(13,1,9),(14,2,8),(15,1,10),(16,2,10),(17,1,11),(18,2,12),(19,1,12),(20,2,13),(21,1,13),(22,2,14),(23,2,15),(24,3,1),(25,3,2),(26,3,3),(27,3,5),(28,3,6),(29,3,7),(30,3,8),(31,3,9),(32,3,10),(33,3,11),(34,3,12),(35,3,13),(36,4,1),(37,4,2),(38,4,3),(39,4,5),(40,4,6),(41,4,7),(42,4,8),(43,4,10),(44,4,12),(45,5,1),(46,4,13),(47,5,2),(48,4,14),(49,5,3),(50,4,15),(51,5,5),(52,4,16),(53,5,6),(54,5,7),(55,5,8),(56,5,10),(57,5,12),(58,5,13),(59,5,14),(60,5,15),(61,5,16);
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

-- Dump completed on 2015-10-09  0:41:00
