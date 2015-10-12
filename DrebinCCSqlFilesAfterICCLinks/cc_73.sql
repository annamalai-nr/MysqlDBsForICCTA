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
) ENGINE=InnoDB AUTO_INCREMENT=2326 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,12,5,2,NULL),(2,41,3,2,NULL),(3,8,2,2,NULL),(4,13,2,2,NULL),(5,37,2,2,NULL),(6,40,2,2,NULL),(7,71,2,2,NULL),(8,72,2,2,NULL),(9,74,2,2,NULL),(10,76,2,2,NULL),(11,78,2,2,NULL),(12,80,2,2,NULL),(13,82,2,2,NULL),(14,84,2,2,NULL),(15,95,2,2,NULL),(16,96,2,2,NULL),(17,97,2,2,NULL),(18,100,2,2,NULL),(19,102,2,2,NULL),(20,104,2,2,NULL),(21,106,2,2,NULL),(22,108,2,2,NULL),(23,125,2,2,NULL),(24,127,2,2,NULL),(25,129,2,2,NULL),(26,131,2,2,NULL),(27,133,2,2,NULL),(28,135,2,2,NULL),(29,137,2,2,NULL),(30,139,2,2,NULL),(31,150,2,2,NULL),(32,152,2,2,NULL),(33,154,2,2,NULL),(34,156,2,2,NULL),(35,158,2,2,NULL),(36,159,2,2,NULL),(37,161,2,2,NULL),(38,162,2,2,NULL),(39,142,2,2,NULL),(40,146,2,2,NULL),(41,44,2,2,NULL),(42,45,2,2,NULL),(43,46,2,2,NULL),(44,47,2,2,NULL),(45,49,2,2,NULL),(46,51,2,2,NULL),(47,53,2,2,NULL),(48,54,2,2,NULL),(49,75,2,2,NULL),(50,77,2,2,NULL),(51,79,2,2,NULL),(52,81,2,2,NULL),(53,83,2,2,NULL),(54,85,2,2,NULL),(55,86,2,2,NULL),(56,88,2,2,NULL),(57,98,2,2,NULL),(58,99,2,2,NULL),(59,101,2,2,NULL),(60,103,2,2,NULL),(61,105,2,2,NULL),(62,107,2,2,NULL),(63,109,2,2,NULL),(64,111,2,2,NULL),(65,145,2,2,NULL),(66,147,2,2,NULL),(67,148,2,2,NULL),(68,149,2,2,NULL),(69,151,2,2,NULL),(70,153,2,2,NULL),(71,155,2,2,NULL),(72,157,2,2,NULL),(73,113,2,2,NULL),(74,117,2,2,NULL),(75,21,7,2,NULL),(76,43,7,2,NULL),(77,37,1,2,NULL),(78,40,1,2,NULL),(79,37,22,2,NULL),(80,40,22,2,NULL),(81,37,36,2,NULL),(82,40,36,2,NULL),(83,37,40,2,NULL),(84,40,40,2,NULL),(85,37,93,2,NULL),(86,40,93,2,NULL),(87,37,95,2,NULL),(88,40,95,2,NULL),(89,37,97,2,NULL),(90,40,97,2,NULL),(91,37,99,2,NULL),(92,40,99,2,NULL),(93,37,26,2,NULL),(94,40,26,2,NULL),(95,37,37,2,NULL),(96,40,37,2,NULL),(97,37,43,2,NULL),(98,40,43,2,NULL),(99,37,46,2,NULL),(100,40,46,2,NULL),(101,37,101,2,NULL),(102,40,101,2,NULL),(103,37,13,2,NULL),(104,40,13,2,NULL),(105,37,33,2,NULL),(106,40,33,2,NULL),(107,37,42,2,NULL),(108,40,42,2,NULL),(109,37,45,2,NULL),(110,40,45,2,NULL),(111,37,94,2,NULL),(112,40,94,2,NULL),(113,37,96,2,NULL),(114,40,96,2,NULL),(115,37,98,2,NULL),(116,40,98,2,NULL),(117,37,100,2,NULL),(118,40,100,2,NULL),(119,37,47,2,NULL),(120,40,47,2,NULL),(121,37,77,2,NULL),(122,40,77,2,NULL),(123,37,81,2,NULL),(124,40,81,2,NULL),(125,37,85,2,NULL),(126,40,85,2,NULL),(127,89,49,2,NULL),(128,37,88,2,NULL),(129,89,56,2,NULL),(130,40,88,2,NULL),(131,71,1,2,NULL),(132,37,50,2,NULL),(133,72,1,2,NULL),(134,40,50,2,NULL),(135,74,1,2,NULL),(136,37,83,2,NULL),(137,76,1,2,NULL),(138,40,83,2,NULL),(139,78,1,2,NULL),(140,37,86,2,NULL),(141,80,1,2,NULL),(142,40,86,2,NULL),(143,82,1,2,NULL),(144,37,90,2,NULL),(145,84,1,2,NULL),(146,40,90,2,NULL),(147,95,1,2,NULL),(148,37,92,2,NULL),(149,96,1,2,NULL),(150,40,92,2,NULL),(151,97,1,2,NULL),(152,8,26,2,NULL),(153,100,1,2,NULL),(154,13,26,2,NULL),(155,102,1,2,NULL),(156,71,26,2,NULL),(157,104,1,2,NULL),(158,72,26,2,NULL),(159,106,1,2,NULL),(160,74,26,2,NULL),(161,108,1,2,NULL),(162,76,26,2,NULL),(163,125,1,2,NULL),(164,78,26,2,NULL),(165,127,1,2,NULL),(166,80,26,2,NULL),(167,129,1,2,NULL),(168,82,26,2,NULL),(169,131,1,2,NULL),(170,84,26,2,NULL),(171,133,1,2,NULL),(172,95,26,2,NULL),(173,135,1,2,NULL),(174,96,26,2,NULL),(175,137,1,2,NULL),(176,97,26,2,NULL),(177,139,1,2,NULL),(178,100,26,2,NULL),(179,150,1,2,NULL),(180,102,26,2,NULL),(181,152,1,2,NULL),(182,104,26,2,NULL),(183,154,1,2,NULL),(184,106,26,2,NULL),(185,156,1,2,NULL),(186,108,26,2,NULL),(187,158,1,2,NULL),(188,125,26,2,NULL),(189,159,1,2,NULL),(190,127,26,2,NULL),(191,161,1,2,NULL),(192,129,26,2,NULL),(193,162,1,2,NULL),(194,131,26,2,NULL),(195,8,47,2,NULL),(196,133,26,2,NULL),(197,13,47,2,NULL),(198,135,26,2,NULL),(199,71,22,2,NULL),(200,137,26,2,NULL),(201,72,22,2,NULL),(202,139,26,2,NULL),(203,74,22,2,NULL),(204,150,26,2,NULL),(205,76,22,2,NULL),(206,152,26,2,NULL),(207,78,22,2,NULL),(208,154,26,2,NULL),(209,80,22,2,NULL),(210,156,26,2,NULL),(211,82,22,2,NULL),(212,158,26,2,NULL),(213,84,22,2,NULL),(214,159,26,2,NULL),(215,95,22,2,NULL),(216,161,26,2,NULL),(217,96,22,2,NULL),(218,162,26,2,NULL),(219,97,22,2,NULL),(220,142,26,2,NULL),(221,100,22,2,NULL),(222,146,26,2,NULL),(223,102,22,2,NULL),(224,44,26,2,NULL),(225,104,22,2,NULL),(226,45,26,2,NULL),(227,106,22,2,NULL),(228,46,26,2,NULL),(229,108,22,2,NULL),(230,47,26,2,NULL),(231,125,22,2,NULL),(232,49,26,2,NULL),(233,127,22,2,NULL),(234,51,26,2,NULL),(235,129,22,2,NULL),(236,53,26,2,NULL),(237,131,22,2,NULL),(238,54,26,2,NULL),(239,133,22,2,NULL),(240,75,26,2,NULL),(241,135,22,2,NULL),(242,77,26,2,NULL),(243,137,22,2,NULL),(244,79,26,2,NULL),(245,139,22,2,NULL),(246,81,26,2,NULL),(247,150,22,2,NULL),(248,83,26,2,NULL),(249,152,22,2,NULL),(250,85,26,2,NULL),(251,154,22,2,NULL),(252,86,26,2,NULL),(253,156,22,2,NULL),(254,88,26,2,NULL),(255,158,22,2,NULL),(256,98,26,2,NULL),(257,159,22,2,NULL),(258,99,26,2,NULL),(259,161,22,2,NULL),(260,101,26,2,NULL),(261,162,22,2,NULL),(262,103,26,2,NULL),(263,71,36,2,NULL),(264,105,26,2,NULL),(265,72,36,2,NULL),(266,107,26,2,NULL),(267,74,36,2,NULL),(268,109,26,2,NULL),(269,76,36,2,NULL),(270,111,26,2,NULL),(271,78,36,2,NULL),(272,145,26,2,NULL),(273,80,36,2,NULL),(274,147,26,2,NULL),(275,82,36,2,NULL),(276,148,26,2,NULL),(277,84,36,2,NULL),(278,149,26,2,NULL),(279,95,36,2,NULL),(280,151,26,2,NULL),(281,96,36,2,NULL),(282,153,26,2,NULL),(283,97,36,2,NULL),(284,155,26,2,NULL),(285,100,36,2,NULL),(286,157,26,2,NULL),(287,102,36,2,NULL),(288,113,26,2,NULL),(289,104,36,2,NULL),(290,117,26,2,NULL),(291,106,36,2,NULL),(292,8,37,2,NULL),(293,108,36,2,NULL),(294,13,37,2,NULL),(295,125,36,2,NULL),(296,71,37,2,NULL),(297,127,36,2,NULL),(298,72,37,2,NULL),(299,129,36,2,NULL),(300,74,37,2,NULL),(301,131,36,2,NULL),(302,76,37,2,NULL),(303,133,36,2,NULL),(304,78,37,2,NULL),(305,135,36,2,NULL),(306,80,37,2,NULL),(307,137,36,2,NULL),(308,82,37,2,NULL),(309,139,36,2,NULL),(310,84,37,2,NULL),(311,150,36,2,NULL),(312,95,37,2,NULL),(313,152,36,2,NULL),(314,96,37,2,NULL),(315,154,36,2,NULL),(316,97,37,2,NULL),(317,156,36,2,NULL),(318,100,37,2,NULL),(319,102,37,2,NULL),(320,158,36,2,NULL),(321,104,37,2,NULL),(322,159,36,2,NULL),(323,106,37,2,NULL),(324,161,36,2,NULL),(325,108,37,2,NULL),(326,162,36,2,NULL),(327,125,37,2,NULL),(328,71,40,2,NULL),(329,127,37,2,NULL),(330,72,40,2,NULL),(331,129,37,2,NULL),(332,74,40,2,NULL),(333,131,37,2,NULL),(334,76,40,2,NULL),(335,133,37,2,NULL),(336,78,40,2,NULL),(337,135,37,2,NULL),(338,80,40,2,NULL),(339,137,37,2,NULL),(340,82,40,2,NULL),(341,139,37,2,NULL),(342,84,40,2,NULL),(343,150,37,2,NULL),(344,95,40,2,NULL),(345,152,37,2,NULL),(346,96,40,2,NULL),(347,154,37,2,NULL),(348,97,40,2,NULL),(349,156,37,2,NULL),(350,100,40,2,NULL),(351,158,37,2,NULL),(352,102,40,2,NULL),(353,159,37,2,NULL),(354,104,40,2,NULL),(355,161,37,2,NULL),(356,106,40,2,NULL),(357,162,37,2,NULL),(358,108,40,2,NULL),(359,142,37,2,NULL),(360,125,40,2,NULL),(361,146,37,2,NULL),(362,127,40,2,NULL),(363,44,37,2,NULL),(364,129,40,2,NULL),(365,45,37,2,NULL),(366,131,40,2,NULL),(367,46,37,2,NULL),(368,133,40,2,NULL),(369,47,37,2,NULL),(370,135,40,2,NULL),(371,49,37,2,NULL),(372,137,40,2,NULL),(373,51,37,2,NULL),(374,139,40,2,NULL),(375,53,37,2,NULL),(376,150,40,2,NULL),(377,54,37,2,NULL),(378,152,40,2,NULL),(379,75,37,2,NULL),(380,154,40,2,NULL),(381,77,37,2,NULL),(382,156,40,2,NULL),(383,79,37,2,NULL),(384,158,40,2,NULL),(385,81,37,2,NULL),(386,159,40,2,NULL),(387,83,37,2,NULL),(388,161,40,2,NULL),(389,85,37,2,NULL),(390,162,40,2,NULL),(391,86,37,2,NULL),(392,71,93,2,NULL),(393,88,37,2,NULL),(394,72,93,2,NULL),(395,98,37,2,NULL),(396,74,93,2,NULL),(397,99,37,2,NULL),(398,76,93,2,NULL),(399,101,37,2,NULL),(400,78,93,2,NULL),(401,103,37,2,NULL),(402,80,93,2,NULL),(403,105,37,2,NULL),(404,82,93,2,NULL),(405,107,37,2,NULL),(406,84,93,2,NULL),(407,109,37,2,NULL),(408,95,93,2,NULL),(409,111,37,2,NULL),(410,96,93,2,NULL),(411,145,37,2,NULL),(412,97,93,2,NULL),(413,147,37,2,NULL),(414,100,93,2,NULL),(415,148,37,2,NULL),(416,102,93,2,NULL),(417,149,37,2,NULL),(418,104,93,2,NULL),(419,151,37,2,NULL),(420,106,93,2,NULL),(421,153,37,2,NULL),(422,108,93,2,NULL),(423,155,37,2,NULL),(424,125,93,2,NULL),(425,157,37,2,NULL),(426,127,93,2,NULL),(427,113,37,2,NULL),(428,129,93,2,NULL),(429,117,37,2,NULL),(430,131,93,2,NULL),(431,42,31,2,NULL),(432,133,93,2,NULL),(433,42,35,2,NULL),(434,135,93,2,NULL),(435,42,39,2,NULL),(436,137,93,2,NULL),(437,42,84,2,NULL),(438,139,93,2,NULL),(439,42,89,2,NULL),(440,150,93,2,NULL),(441,8,43,2,NULL),(442,152,93,2,NULL),(443,13,43,2,NULL),(444,154,93,2,NULL),(445,71,43,2,NULL),(446,156,93,2,NULL),(447,72,43,2,NULL),(448,158,93,2,NULL),(449,74,43,2,NULL),(450,159,93,2,NULL),(451,76,43,2,NULL),(452,161,93,2,NULL),(453,78,43,2,NULL),(454,162,93,2,NULL),(455,80,43,2,NULL),(456,71,95,2,NULL),(457,82,43,2,NULL),(458,72,95,2,NULL),(459,84,43,2,NULL),(460,74,95,2,NULL),(461,95,43,2,NULL),(462,76,95,2,NULL),(463,96,43,2,NULL),(464,78,95,2,NULL),(465,97,43,2,NULL),(466,80,95,2,NULL),(467,100,43,2,NULL),(468,82,95,2,NULL),(469,102,43,2,NULL),(470,84,95,2,NULL),(471,104,43,2,NULL),(472,95,95,2,NULL),(473,106,43,2,NULL),(474,96,95,2,NULL),(475,108,43,2,NULL),(476,97,95,2,NULL),(477,125,43,2,NULL),(478,100,95,2,NULL),(479,127,43,2,NULL),(480,102,95,2,NULL),(481,129,43,2,NULL),(482,104,95,2,NULL),(483,131,43,2,NULL),(484,106,95,2,NULL),(485,133,43,2,NULL),(486,108,95,2,NULL),(487,135,43,2,NULL),(488,125,95,2,NULL),(489,137,43,2,NULL),(490,127,95,2,NULL),(491,139,43,2,NULL),(492,129,95,2,NULL),(493,150,43,2,NULL),(494,131,95,2,NULL),(495,152,43,2,NULL),(496,133,95,2,NULL),(497,154,43,2,NULL),(498,135,95,2,NULL),(499,156,43,2,NULL),(500,137,95,2,NULL),(501,158,43,2,NULL),(502,139,95,2,NULL),(503,159,43,2,NULL),(504,150,95,2,NULL),(505,161,43,2,NULL),(506,152,95,2,NULL),(507,162,43,2,NULL),(508,154,95,2,NULL),(509,142,43,2,NULL),(510,156,95,2,NULL),(511,146,43,2,NULL),(512,158,95,2,NULL),(513,44,43,2,NULL),(514,159,95,2,NULL),(515,45,43,2,NULL),(516,161,95,2,NULL),(517,46,43,2,NULL),(518,162,95,2,NULL),(519,47,43,2,NULL),(520,71,97,2,NULL),(521,49,43,2,NULL),(522,72,97,2,NULL),(523,51,43,2,NULL),(524,74,97,2,NULL),(525,53,43,2,NULL),(526,76,97,2,NULL),(527,54,43,2,NULL),(528,78,97,2,NULL),(529,75,43,2,NULL),(530,80,97,2,NULL),(531,77,43,2,NULL),(532,82,97,2,NULL),(533,79,43,2,NULL),(534,84,97,2,NULL),(535,81,43,2,NULL),(536,95,97,2,NULL),(537,83,43,2,NULL),(538,96,97,2,NULL),(539,85,43,2,NULL),(540,97,97,2,NULL),(541,86,43,2,NULL),(542,100,97,2,NULL),(543,88,43,2,NULL),(544,102,97,2,NULL),(545,98,43,2,NULL),(546,104,97,2,NULL),(547,99,43,2,NULL),(548,106,97,2,NULL),(549,101,43,2,NULL),(550,108,97,2,NULL),(551,103,43,2,NULL),(552,125,97,2,NULL),(553,105,43,2,NULL),(554,127,97,2,NULL),(555,107,43,2,NULL),(556,129,97,2,NULL),(557,109,43,2,NULL),(558,131,97,2,NULL),(559,111,43,2,NULL),(560,133,97,2,NULL),(561,145,43,2,NULL),(562,135,97,2,NULL),(563,147,43,2,NULL),(564,137,97,2,NULL),(565,148,43,2,NULL),(566,139,97,2,NULL),(567,149,43,2,NULL),(568,150,97,2,NULL),(569,151,43,2,NULL),(570,152,97,2,NULL),(571,153,43,2,NULL),(572,154,97,2,NULL),(573,155,43,2,NULL),(574,156,97,2,NULL),(575,157,43,2,NULL),(576,158,97,2,NULL),(577,113,43,2,NULL),(578,159,97,2,NULL),(579,117,43,2,NULL),(580,161,97,2,NULL),(581,30,34,2,NULL),(582,162,97,2,NULL),(583,30,37,2,NULL),(584,71,99,2,NULL),(585,30,81,2,NULL),(586,72,99,2,NULL),(587,30,86,2,NULL),(588,74,99,2,NULL),(589,8,46,2,NULL),(590,76,99,2,NULL),(591,13,46,2,NULL),(592,78,99,2,NULL),(593,71,46,2,NULL),(594,80,99,2,NULL),(595,72,46,2,NULL),(596,82,99,2,NULL),(597,74,46,2,NULL),(598,84,99,2,NULL),(599,76,46,2,NULL),(600,95,99,2,NULL),(601,78,46,2,NULL),(602,96,99,2,NULL),(603,80,46,2,NULL),(604,97,99,2,NULL),(605,82,46,2,NULL),(606,100,99,2,NULL),(607,84,46,2,NULL),(608,102,99,2,NULL),(609,95,46,2,NULL),(610,104,99,2,NULL),(611,96,46,2,NULL),(612,106,99,2,NULL),(613,97,46,2,NULL),(614,108,99,2,NULL),(615,100,46,2,NULL),(616,125,99,2,NULL),(617,102,46,2,NULL),(618,127,99,2,NULL),(619,104,46,2,NULL),(620,129,99,2,NULL),(621,106,46,2,NULL),(622,131,99,2,NULL),(623,133,99,2,NULL),(624,108,46,2,NULL),(625,135,99,2,NULL),(626,137,99,2,NULL),(627,125,46,2,NULL),(628,139,99,2,NULL),(629,127,46,2,NULL),(630,150,99,2,NULL),(631,152,99,2,NULL),(632,129,46,2,NULL),(633,154,99,2,NULL),(634,156,99,2,NULL),(635,131,46,2,NULL),(636,158,99,2,NULL),(637,133,46,2,NULL),(638,159,99,2,NULL),(639,161,99,2,NULL),(640,135,46,2,NULL),(641,162,99,2,NULL),(642,162,99,2,NULL),(643,137,46,2,NULL),(644,139,46,2,NULL),(645,150,46,2,NULL),(646,152,46,2,NULL),(647,152,46,2,NULL),(648,154,46,2,NULL),(649,156,46,2,NULL),(650,158,46,2,NULL),(651,158,46,2,NULL),(652,159,46,2,NULL),(653,161,46,2,NULL),(654,162,46,2,NULL),(655,71,101,2,NULL),(656,142,46,2,NULL),(657,72,101,2,NULL),(658,74,101,2,NULL),(659,146,46,2,NULL),(660,76,101,2,NULL),(661,44,46,2,NULL),(662,78,101,2,NULL),(663,80,101,2,NULL),(664,45,46,2,NULL),(665,82,101,2,NULL),(666,84,101,2,NULL),(667,46,46,2,NULL),(668,95,101,2,NULL),(669,96,101,2,NULL),(670,47,46,2,NULL),(671,97,101,2,NULL),(672,100,101,2,NULL),(673,49,46,2,NULL),(674,102,101,2,NULL),(675,102,101,2,NULL),(676,51,46,2,NULL),(677,104,101,2,NULL),(678,106,101,2,NULL),(679,53,46,2,NULL),(680,108,101,2,NULL),(681,108,101,2,NULL),(682,54,46,2,NULL),(683,125,101,2,NULL),(684,75,46,2,NULL),(685,127,101,2,NULL),(686,127,101,2,NULL),(687,77,46,2,NULL),(688,129,101,2,NULL),(689,131,101,2,NULL),(690,79,46,2,NULL),(691,133,101,2,NULL),(692,135,101,2,NULL),(693,81,46,2,NULL),(694,137,101,2,NULL),(695,139,101,2,NULL),(696,83,46,2,NULL),(697,150,101,2,NULL),(698,152,101,2,NULL),(699,85,46,2,NULL),(700,154,101,2,NULL),(701,156,101,2,NULL),(702,86,46,2,NULL),(703,158,101,2,NULL),(704,159,101,2,NULL),(705,88,46,2,NULL),(706,161,101,2,NULL),(707,162,101,2,NULL),(708,98,46,2,NULL),(709,71,13,2,NULL),(710,72,13,2,NULL),(711,99,46,2,NULL),(712,74,13,2,NULL),(713,76,13,2,NULL),(714,101,46,2,NULL),(715,78,13,2,NULL),(716,80,13,2,NULL),(717,103,46,2,NULL),(718,82,13,2,NULL),(719,84,13,2,NULL),(720,105,46,2,NULL),(721,95,13,2,NULL),(722,96,13,2,NULL),(723,107,46,2,NULL),(724,97,13,2,NULL),(725,100,13,2,NULL),(726,109,46,2,NULL),(727,102,13,2,NULL),(728,104,13,2,NULL),(729,111,46,2,NULL),(730,106,13,2,NULL),(731,108,13,2,NULL),(732,145,46,2,NULL),(733,125,13,2,NULL),(734,127,13,2,NULL),(735,129,13,2,NULL),(736,131,13,2,NULL),(737,147,46,2,NULL),(738,133,13,2,NULL),(739,135,13,2,NULL),(740,148,46,2,NULL),(741,137,13,2,NULL),(742,139,13,2,NULL),(743,149,46,2,NULL),(744,150,13,2,NULL),(745,152,13,2,NULL),(746,151,46,2,NULL),(747,154,13,2,NULL),(748,156,13,2,NULL),(749,153,46,2,NULL),(750,158,13,2,NULL),(751,159,13,2,NULL),(752,155,46,2,NULL),(753,161,13,2,NULL),(754,162,13,2,NULL),(755,157,46,2,NULL),(756,71,33,2,NULL),(757,72,33,2,NULL),(758,113,46,2,NULL),(759,74,33,2,NULL),(760,76,33,2,NULL),(761,117,46,2,NULL),(762,78,33,2,NULL),(763,80,33,2,NULL),(764,8,101,2,NULL),(765,82,33,2,NULL),(766,84,33,2,NULL),(767,13,101,2,NULL),(768,95,33,2,NULL),(769,96,33,2,NULL),(770,97,33,2,NULL),(771,142,101,2,NULL),(772,100,33,2,NULL),(773,146,101,2,NULL),(774,102,33,2,NULL),(775,104,33,2,NULL),(776,44,101,2,NULL),(777,106,33,2,NULL),(778,108,33,2,NULL),(779,45,101,2,NULL),(780,125,33,2,NULL),(781,127,33,2,NULL),(782,46,101,2,NULL),(783,129,33,2,NULL),(784,131,33,2,NULL),(785,47,101,2,NULL),(786,133,33,2,NULL),(787,135,33,2,NULL),(788,49,101,2,NULL),(789,137,33,2,NULL),(790,139,33,2,NULL),(791,51,101,2,NULL),(792,150,33,2,NULL),(793,152,33,2,NULL),(794,53,101,2,NULL),(795,154,33,2,NULL),(796,156,33,2,NULL),(797,54,101,2,NULL),(798,158,33,2,NULL),(799,159,33,2,NULL),(800,75,101,2,NULL),(801,161,33,2,NULL),(802,162,33,2,NULL),(803,77,101,2,NULL),(804,71,42,2,NULL),(805,72,42,2,NULL),(806,79,101,2,NULL),(807,74,42,2,NULL),(808,76,42,2,NULL),(809,81,101,2,NULL),(810,78,42,2,NULL),(811,80,42,2,NULL),(812,83,101,2,NULL),(813,82,42,2,NULL),(814,84,42,2,NULL),(815,85,101,2,NULL),(816,95,42,2,NULL),(817,96,42,2,NULL),(818,86,101,2,NULL),(819,97,42,2,NULL),(820,100,42,2,NULL),(821,88,101,2,NULL),(822,102,42,2,NULL),(823,104,42,2,NULL),(824,98,101,2,NULL),(825,106,42,2,NULL),(826,108,42,2,NULL),(827,99,101,2,NULL),(828,125,42,2,NULL),(829,127,42,2,NULL),(830,101,101,2,NULL),(831,129,42,2,NULL),(832,131,42,2,NULL),(833,103,101,2,NULL),(834,133,42,2,NULL),(835,135,42,2,NULL),(836,105,101,2,NULL),(837,137,42,2,NULL),(838,139,42,2,NULL),(839,107,101,2,NULL),(840,150,42,2,NULL),(841,152,42,2,NULL),(842,109,101,2,NULL),(843,154,42,2,NULL),(844,156,42,2,NULL),(845,111,101,2,NULL),(846,158,42,2,NULL),(847,159,42,2,NULL),(848,145,101,2,NULL),(849,161,42,2,NULL),(850,162,42,2,NULL),(851,147,101,2,NULL),(852,71,45,2,NULL),(853,72,45,2,NULL),(854,148,101,2,NULL),(855,74,45,2,NULL),(856,76,45,2,NULL),(857,149,101,2,NULL),(858,78,45,2,NULL),(859,80,45,2,NULL),(860,151,101,2,NULL),(861,82,45,2,NULL),(862,84,45,2,NULL),(863,153,101,2,NULL),(864,95,45,2,NULL),(865,96,45,2,NULL),(866,155,101,2,NULL),(867,97,45,2,NULL),(868,100,45,2,NULL),(869,157,101,2,NULL),(870,102,45,2,NULL),(871,104,45,2,NULL),(872,113,101,2,NULL),(873,106,45,2,NULL),(874,108,45,2,NULL),(875,117,101,2,NULL),(876,125,45,2,NULL),(877,127,45,2,NULL),(878,129,45,2,NULL),(879,131,45,2,NULL),(880,133,45,2,NULL),(881,135,45,2,NULL),(882,137,45,2,NULL),(883,139,45,2,NULL),(884,150,45,2,NULL),(885,152,45,2,NULL),(886,154,45,2,NULL),(887,156,45,2,NULL),(888,158,45,2,NULL),(889,159,45,2,NULL),(890,161,45,2,NULL),(891,162,45,2,NULL),(892,71,94,2,NULL),(893,72,94,2,NULL),(894,74,94,2,NULL),(895,76,94,2,NULL),(896,78,94,2,NULL),(897,80,94,2,NULL),(898,82,94,2,NULL),(899,84,94,2,NULL),(900,95,94,2,NULL),(901,96,94,2,NULL),(902,97,94,2,NULL),(903,100,94,2,NULL),(904,102,94,2,NULL),(905,104,94,2,NULL),(906,106,94,2,NULL),(907,108,94,2,NULL),(908,125,94,2,NULL),(909,127,94,2,NULL),(910,129,94,2,NULL),(911,131,94,2,NULL),(912,133,94,2,NULL),(913,135,94,2,NULL),(914,137,94,2,NULL),(915,139,94,2,NULL),(916,150,94,2,NULL),(917,152,94,2,NULL),(918,154,94,2,NULL),(919,156,94,2,NULL),(920,158,94,2,NULL),(921,159,94,2,NULL),(922,161,94,2,NULL),(923,162,94,2,NULL),(924,71,96,2,NULL),(925,72,96,2,NULL),(926,74,96,2,NULL),(927,76,96,2,NULL),(928,78,96,2,NULL),(929,80,96,2,NULL),(930,82,96,2,NULL),(931,84,96,2,NULL),(932,95,96,2,NULL),(933,96,96,2,NULL),(934,97,96,2,NULL),(935,100,96,2,NULL),(936,102,96,2,NULL),(937,104,96,2,NULL),(938,106,96,2,NULL),(939,108,96,2,NULL),(940,125,96,2,NULL),(941,127,96,2,NULL),(942,129,96,2,NULL),(943,131,96,2,NULL),(944,133,96,2,NULL),(945,135,96,2,NULL),(946,137,96,2,NULL),(947,139,96,2,NULL),(948,150,96,2,NULL),(949,152,96,2,NULL),(950,154,96,2,NULL),(951,156,96,2,NULL),(952,158,96,2,NULL),(953,159,96,2,NULL),(954,161,96,2,NULL),(955,162,96,2,NULL),(956,71,98,2,NULL),(957,72,98,2,NULL),(958,74,98,2,NULL),(959,76,98,2,NULL),(960,78,98,2,NULL),(961,80,98,2,NULL),(962,82,98,2,NULL),(963,84,98,2,NULL),(964,95,98,2,NULL),(965,96,98,2,NULL),(966,97,98,2,NULL),(967,100,98,2,NULL),(968,102,98,2,NULL),(969,104,98,2,NULL),(970,106,98,2,NULL),(971,108,98,2,NULL),(972,125,98,2,NULL),(973,127,98,2,NULL),(974,129,98,2,NULL),(975,131,98,2,NULL),(976,133,98,2,NULL),(977,135,98,2,NULL),(978,137,98,2,NULL),(979,139,98,2,NULL),(980,150,98,2,NULL),(981,152,98,2,NULL),(982,154,98,2,NULL),(983,156,98,2,NULL),(984,158,98,2,NULL),(985,159,98,2,NULL),(986,161,98,2,NULL),(987,162,98,2,NULL),(988,71,100,2,NULL),(989,72,100,2,NULL),(990,74,100,2,NULL),(991,76,100,2,NULL),(992,78,100,2,NULL),(993,80,100,2,NULL),(994,82,100,2,NULL),(995,84,100,2,NULL),(996,95,100,2,NULL),(997,96,100,2,NULL),(998,97,100,2,NULL),(999,100,100,2,NULL),(1000,102,100,2,NULL),(1001,104,100,2,NULL),(1002,106,100,2,NULL),(1003,108,100,2,NULL),(1004,125,100,2,NULL),(1005,127,100,2,NULL),(1006,129,100,2,NULL),(1007,131,100,2,NULL),(1008,133,100,2,NULL),(1009,135,100,2,NULL),(1010,137,100,2,NULL),(1011,139,100,2,NULL),(1012,150,100,2,NULL),(1013,152,100,2,NULL),(1014,154,100,2,NULL),(1015,156,100,2,NULL),(1016,158,100,2,NULL),(1017,159,100,2,NULL),(1018,161,100,2,NULL),(1019,162,100,2,NULL),(1020,142,47,2,NULL),(1021,146,47,2,NULL),(1022,71,77,2,NULL),(1023,72,77,2,NULL),(1024,74,77,2,NULL),(1025,76,77,2,NULL),(1026,78,77,2,NULL),(1027,80,77,2,NULL),(1028,82,77,2,NULL),(1029,84,77,2,NULL),(1030,95,77,2,NULL),(1031,96,77,2,NULL),(1032,96,77,2,NULL),(1033,97,77,2,NULL),(1034,100,77,2,NULL),(1035,102,77,2,NULL),(1036,104,77,2,NULL),(1037,106,77,2,NULL),(1038,108,77,2,NULL),(1039,125,77,2,NULL),(1040,125,77,2,NULL),(1041,127,77,2,NULL),(1042,129,77,2,NULL),(1043,131,77,2,NULL),(1044,133,77,2,NULL),(1045,135,77,2,NULL),(1046,135,77,2,NULL),(1047,137,77,2,NULL),(1048,139,77,2,NULL),(1049,150,77,2,NULL),(1050,152,77,2,NULL),(1051,154,77,2,NULL),(1052,156,77,2,NULL),(1053,158,77,2,NULL),(1054,159,77,2,NULL),(1055,161,77,2,NULL),(1056,162,77,2,NULL),(1057,71,81,2,NULL),(1058,72,81,2,NULL),(1059,74,81,2,NULL),(1060,76,81,2,NULL),(1061,78,81,2,NULL),(1062,80,81,2,NULL),(1063,82,81,2,NULL),(1064,84,81,2,NULL),(1065,95,81,2,NULL),(1066,96,81,2,NULL),(1067,97,81,2,NULL),(1068,100,81,2,NULL),(1069,102,81,2,NULL),(1070,104,81,2,NULL),(1071,106,81,2,NULL),(1072,108,81,2,NULL),(1073,125,81,2,NULL),(1074,127,81,2,NULL),(1075,129,81,2,NULL),(1076,131,81,2,NULL),(1077,133,81,2,NULL),(1078,135,81,2,NULL),(1079,137,81,2,NULL),(1080,139,81,2,NULL),(1081,150,81,2,NULL),(1082,152,81,2,NULL),(1083,154,81,2,NULL),(1084,156,81,2,NULL),(1085,158,81,2,NULL),(1086,159,81,2,NULL),(1087,161,81,2,NULL),(1088,162,81,2,NULL),(1089,71,85,2,NULL),(1090,72,85,2,NULL),(1091,74,85,2,NULL),(1092,76,85,2,NULL),(1093,78,85,2,NULL),(1094,80,85,2,NULL),(1095,82,85,2,NULL),(1096,84,85,2,NULL),(1097,95,85,2,NULL),(1098,96,85,2,NULL),(1099,97,85,2,NULL),(1100,100,85,2,NULL),(1101,102,85,2,NULL),(1102,104,85,2,NULL),(1103,106,85,2,NULL),(1104,108,85,2,NULL),(1105,125,85,2,NULL),(1106,127,85,2,NULL),(1107,129,85,2,NULL),(1108,131,85,2,NULL),(1109,133,85,2,NULL),(1110,135,85,2,NULL),(1111,137,85,2,NULL),(1112,139,85,2,NULL),(1113,150,85,2,NULL),(1114,152,85,2,NULL),(1115,154,85,2,NULL),(1116,156,85,2,NULL),(1117,158,85,2,NULL),(1118,159,85,2,NULL),(1119,161,85,2,NULL),(1120,162,85,2,NULL),(1121,71,88,2,NULL),(1122,72,88,2,NULL),(1123,74,88,2,NULL),(1124,76,88,2,NULL),(1125,78,88,2,NULL),(1126,80,88,2,NULL),(1127,82,88,2,NULL),(1128,84,88,2,NULL),(1129,95,88,2,NULL),(1130,96,88,2,NULL),(1131,97,88,2,NULL),(1132,100,88,2,NULL),(1133,102,88,2,NULL),(1134,104,88,2,NULL),(1135,106,88,2,NULL),(1136,108,88,2,NULL),(1137,125,88,2,NULL),(1138,127,88,2,NULL),(1139,129,88,2,NULL),(1140,131,88,2,NULL),(1141,133,88,2,NULL),(1142,135,88,2,NULL),(1143,137,88,2,NULL),(1144,139,88,2,NULL),(1145,150,88,2,NULL),(1146,152,88,2,NULL),(1147,154,88,2,NULL),(1148,156,88,2,NULL),(1149,158,88,2,NULL),(1150,159,88,2,NULL),(1151,161,88,2,NULL),(1152,162,88,2,NULL),(1153,113,47,2,NULL),(1154,117,47,2,NULL),(1155,71,83,2,NULL),(1156,72,83,2,NULL),(1157,74,83,2,NULL),(1158,76,83,2,NULL),(1159,78,83,2,NULL),(1160,80,83,2,NULL),(1161,82,83,2,NULL),(1162,84,83,2,NULL),(1163,95,83,2,NULL),(1164,96,83,2,NULL),(1165,97,83,2,NULL),(1166,100,83,2,NULL),(1167,102,83,2,NULL),(1168,104,83,2,NULL),(1169,106,83,2,NULL),(1170,108,83,2,NULL),(1171,125,83,2,NULL),(1172,127,83,2,NULL),(1173,129,83,2,NULL),(1174,131,83,2,NULL),(1175,133,83,2,NULL),(1176,135,83,2,NULL),(1177,137,83,2,NULL),(1178,139,83,2,NULL),(1179,150,83,2,NULL),(1180,152,83,2,NULL),(1181,154,83,2,NULL),(1182,156,83,2,NULL),(1183,158,83,2,NULL),(1184,159,83,2,NULL),(1185,161,83,2,NULL),(1186,162,83,2,NULL),(1187,71,86,2,NULL),(1188,72,86,2,NULL),(1189,74,86,2,NULL),(1190,76,86,2,NULL),(1191,78,86,2,NULL),(1192,80,86,2,NULL),(1193,82,86,2,NULL),(1194,84,86,2,NULL),(1195,95,86,2,NULL),(1196,96,86,2,NULL),(1197,97,86,2,NULL),(1198,100,86,2,NULL),(1199,102,86,2,NULL),(1200,104,86,2,NULL),(1201,106,86,2,NULL),(1202,108,86,2,NULL),(1203,125,86,2,NULL),(1204,127,86,2,NULL),(1205,129,86,2,NULL),(1206,131,86,2,NULL),(1207,133,86,2,NULL),(1208,135,86,2,NULL),(1209,137,86,2,NULL),(1210,139,86,2,NULL),(1211,150,86,2,NULL),(1212,152,86,2,NULL),(1213,154,86,2,NULL),(1214,156,86,2,NULL),(1215,158,86,2,NULL),(1216,159,86,2,NULL),(1217,161,86,2,NULL),(1218,162,86,2,NULL),(1219,71,90,2,NULL),(1220,72,90,2,NULL),(1221,74,90,2,NULL),(1222,76,90,2,NULL),(1223,78,90,2,NULL),(1224,80,90,2,NULL),(1225,82,90,2,NULL),(1226,84,90,2,NULL),(1227,95,90,2,NULL),(1228,96,90,2,NULL),(1229,97,90,2,NULL),(1230,100,90,2,NULL),(1231,102,90,2,NULL),(1232,104,90,2,NULL),(1233,106,90,2,NULL),(1234,108,90,2,NULL),(1235,125,90,2,NULL),(1236,127,90,2,NULL),(1237,129,90,2,NULL),(1238,131,90,2,NULL),(1239,133,90,2,NULL),(1240,135,90,2,NULL),(1241,137,90,2,NULL),(1242,139,90,2,NULL),(1243,150,90,2,NULL),(1244,152,90,2,NULL),(1245,154,90,2,NULL),(1246,156,90,2,NULL),(1247,158,90,2,NULL),(1248,159,90,2,NULL),(1249,161,90,2,NULL),(1250,162,90,2,NULL),(1251,71,92,2,NULL),(1252,72,92,2,NULL),(1253,74,92,2,NULL),(1254,76,92,2,NULL),(1255,78,92,2,NULL),(1256,80,92,2,NULL),(1257,82,92,2,NULL),(1258,84,92,2,NULL),(1259,95,92,2,NULL),(1260,96,92,2,NULL),(1261,97,92,2,NULL),(1262,100,92,2,NULL),(1263,102,92,2,NULL),(1264,104,92,2,NULL),(1265,106,92,2,NULL),(1266,108,92,2,NULL),(1267,125,92,2,NULL),(1268,127,92,2,NULL),(1269,129,92,2,NULL),(1270,131,92,2,NULL),(1271,133,92,2,NULL),(1272,135,92,2,NULL),(1273,137,92,2,NULL),(1274,139,92,2,NULL),(1275,150,92,2,NULL),(1276,152,92,2,NULL),(1277,154,92,2,NULL),(1278,156,92,2,NULL),(1279,158,92,2,NULL),(1280,159,92,2,NULL),(1281,161,92,2,NULL),(1282,162,92,2,NULL),(1283,142,1,2,NULL),(1284,146,1,2,NULL),(1285,142,22,2,NULL),(1286,146,22,2,NULL),(1287,142,36,2,NULL),(1288,146,36,2,NULL),(1289,142,40,2,NULL),(1290,146,40,2,NULL),(1291,142,93,2,NULL),(1292,146,93,2,NULL),(1293,142,95,2,NULL),(1294,146,95,2,NULL),(1295,142,97,2,NULL),(1296,146,97,2,NULL),(1297,142,99,2,NULL),(1298,146,99,2,NULL),(1299,142,13,2,NULL),(1300,146,13,2,NULL),(1301,142,33,2,NULL),(1302,146,33,2,NULL),(1303,142,42,2,NULL),(1304,146,42,2,NULL),(1305,142,45,2,NULL),(1306,146,45,2,NULL),(1307,142,94,2,NULL),(1308,146,94,2,NULL),(1309,142,96,2,NULL),(1310,146,96,2,NULL),(1311,142,98,2,NULL),(1312,146,98,2,NULL),(1313,142,100,2,NULL),(1314,146,100,2,NULL),(1315,142,77,2,NULL),(1316,146,77,2,NULL),(1317,142,81,2,NULL),(1318,146,81,2,NULL),(1319,142,85,2,NULL),(1320,146,85,2,NULL),(1321,142,88,2,NULL),(1322,146,88,2,NULL),(1323,142,50,2,NULL),(1324,146,50,2,NULL),(1325,142,83,2,NULL),(1326,146,83,2,NULL),(1327,142,86,2,NULL),(1328,146,86,2,NULL),(1329,142,90,2,NULL),(1330,146,90,2,NULL),(1331,142,92,2,NULL),(1332,146,92,2,NULL),(1333,8,77,2,NULL),(1334,13,77,2,NULL),(1335,44,77,2,NULL),(1336,45,77,2,NULL),(1337,46,77,2,NULL),(1338,47,77,2,NULL),(1339,49,77,2,NULL),(1340,51,77,2,NULL),(1341,53,77,2,NULL),(1342,54,77,2,NULL),(1343,75,77,2,NULL),(1344,77,77,2,NULL),(1345,79,77,2,NULL),(1346,81,77,2,NULL),(1347,83,77,2,NULL),(1348,85,77,2,NULL),(1349,86,77,2,NULL),(1350,88,77,2,NULL),(1351,98,77,2,NULL),(1352,99,77,2,NULL),(1353,101,77,2,NULL),(1354,103,77,2,NULL),(1355,105,77,2,NULL),(1356,107,77,2,NULL),(1357,109,77,2,NULL),(1358,111,77,2,NULL),(1359,145,77,2,NULL),(1360,147,77,2,NULL),(1361,148,77,2,NULL),(1362,149,77,2,NULL),(1363,151,77,2,NULL),(1364,153,77,2,NULL),(1365,155,77,2,NULL),(1366,157,77,2,NULL),(1367,113,77,2,NULL),(1368,117,77,2,NULL),(1369,8,81,2,NULL),(1370,13,81,2,NULL),(1371,44,81,2,NULL),(1372,45,81,2,NULL),(1373,46,81,2,NULL),(1374,47,81,2,NULL),(1375,49,81,2,NULL),(1376,51,81,2,NULL),(1377,53,81,2,NULL),(1378,54,81,2,NULL),(1379,75,81,2,NULL),(1380,77,81,2,NULL),(1381,79,81,2,NULL),(1382,81,81,2,NULL),(1383,83,81,2,NULL),(1384,85,81,2,NULL),(1385,86,81,2,NULL),(1386,88,81,2,NULL),(1387,98,81,2,NULL),(1388,99,81,2,NULL),(1389,101,81,2,NULL),(1390,103,81,2,NULL),(1391,105,81,2,NULL),(1392,107,81,2,NULL),(1393,109,81,2,NULL),(1394,111,81,2,NULL),(1395,145,81,2,NULL),(1396,147,81,2,NULL),(1397,148,81,2,NULL),(1398,149,81,2,NULL),(1399,151,81,2,NULL),(1400,153,81,2,NULL),(1401,153,81,2,NULL),(1402,155,81,2,NULL),(1403,157,81,2,NULL),(1404,113,81,2,NULL),(1405,117,81,2,NULL),(1406,90,34,2,NULL),(1407,90,37,2,NULL),(1408,90,37,2,NULL),(1409,90,81,2,NULL),(1410,90,86,2,NULL),(1411,8,85,2,NULL),(1412,13,85,2,NULL),(1413,44,85,2,NULL),(1414,45,85,2,NULL),(1415,45,85,2,NULL),(1416,46,85,2,NULL),(1417,46,85,2,NULL),(1418,47,85,2,NULL),(1419,49,85,2,NULL),(1420,51,85,2,NULL),(1421,53,85,2,NULL),(1422,54,85,2,NULL),(1423,75,85,2,NULL),(1424,77,85,2,NULL),(1425,79,85,2,NULL),(1426,81,85,2,NULL),(1427,83,85,2,NULL),(1428,85,85,2,NULL),(1429,86,85,2,NULL),(1430,88,85,2,NULL),(1431,98,85,2,NULL),(1432,99,85,2,NULL),(1433,101,85,2,NULL),(1434,103,85,2,NULL),(1435,105,85,2,NULL),(1436,107,85,2,NULL),(1437,109,85,2,NULL),(1438,111,85,2,NULL),(1439,145,85,2,NULL),(1440,147,85,2,NULL),(1441,148,85,2,NULL),(1442,149,85,2,NULL),(1443,151,85,2,NULL),(1444,153,85,2,NULL),(1445,155,85,2,NULL),(1446,157,85,2,NULL),(1447,113,85,2,NULL),(1448,117,85,2,NULL),(1449,110,31,2,NULL),(1450,110,35,2,NULL),(1451,110,39,2,NULL),(1452,110,84,2,NULL),(1453,110,89,2,NULL),(1454,8,88,2,NULL),(1455,13,88,2,NULL),(1456,44,88,2,NULL),(1457,45,88,2,NULL),(1458,46,88,2,NULL),(1459,47,88,2,NULL),(1460,49,88,2,NULL),(1461,51,88,2,NULL),(1462,53,88,2,NULL),(1463,54,88,2,NULL),(1464,75,88,2,NULL),(1465,77,88,2,NULL),(1466,79,88,2,NULL),(1467,81,88,2,NULL),(1468,83,88,2,NULL),(1469,85,88,2,NULL),(1470,86,88,2,NULL),(1471,88,88,2,NULL),(1472,98,88,2,NULL),(1473,99,88,2,NULL),(1474,101,88,2,NULL),(1475,103,88,2,NULL),(1476,105,88,2,NULL),(1477,107,88,2,NULL),(1478,109,88,2,NULL),(1479,111,88,2,NULL),(1480,145,88,2,NULL),(1481,147,88,2,NULL),(1482,148,88,2,NULL),(1483,149,88,2,NULL),(1484,151,88,2,NULL),(1485,153,88,2,NULL),(1486,155,88,2,NULL),(1487,157,88,2,NULL),(1488,113,88,2,NULL),(1489,117,88,2,NULL),(1490,73,49,2,NULL),(1491,73,56,2,NULL),(1492,44,1,2,NULL),(1493,45,1,2,NULL),(1494,46,1,2,NULL),(1495,47,1,2,NULL),(1496,49,1,2,NULL),(1497,51,1,2,NULL),(1498,53,1,2,NULL),(1499,54,1,2,NULL),(1500,75,1,2,NULL),(1501,77,1,2,NULL),(1502,79,1,2,NULL),(1503,81,1,2,NULL),(1504,83,1,2,NULL),(1505,85,1,2,NULL),(1506,86,1,2,NULL),(1507,88,1,2,NULL),(1508,98,1,2,NULL),(1509,99,1,2,NULL),(1510,101,1,2,NULL),(1511,103,1,2,NULL),(1512,105,1,2,NULL),(1513,107,1,2,NULL),(1514,109,1,2,NULL),(1515,111,1,2,NULL),(1516,145,1,2,NULL),(1517,147,1,2,NULL),(1518,148,1,2,NULL),(1519,149,1,2,NULL),(1520,151,1,2,NULL),(1521,153,1,2,NULL),(1522,155,1,2,NULL),(1523,157,1,2,NULL),(1524,8,50,2,NULL),(1525,13,50,2,NULL),(1526,44,22,2,NULL),(1527,45,22,2,NULL),(1528,46,22,2,NULL),(1529,47,22,2,NULL),(1530,49,22,2,NULL),(1531,51,22,2,NULL),(1532,53,22,2,NULL),(1533,54,22,2,NULL),(1534,75,22,2,NULL),(1535,77,22,2,NULL),(1536,79,22,2,NULL),(1537,81,22,2,NULL),(1538,83,22,2,NULL),(1539,85,22,2,NULL),(1540,86,22,2,NULL),(1541,88,22,2,NULL),(1542,98,22,2,NULL),(1543,99,22,2,NULL),(1544,101,22,2,NULL),(1545,103,22,2,NULL),(1546,105,22,2,NULL),(1547,107,22,2,NULL),(1548,109,22,2,NULL),(1549,111,22,2,NULL),(1550,145,22,2,NULL),(1551,147,22,2,NULL),(1552,148,22,2,NULL),(1553,149,22,2,NULL),(1554,151,22,2,NULL),(1555,153,22,2,NULL),(1556,155,22,2,NULL),(1557,157,22,2,NULL),(1558,44,36,2,NULL),(1559,45,36,2,NULL),(1560,46,36,2,NULL),(1561,47,36,2,NULL),(1562,49,36,2,NULL),(1563,51,36,2,NULL),(1564,53,36,2,NULL),(1565,54,36,2,NULL),(1566,75,36,2,NULL),(1567,77,36,2,NULL),(1568,79,36,2,NULL),(1569,81,36,2,NULL),(1570,83,36,2,NULL),(1571,85,36,2,NULL),(1572,86,36,2,NULL),(1573,88,36,2,NULL),(1574,98,36,2,NULL),(1575,99,36,2,NULL),(1576,101,36,2,NULL),(1577,103,36,2,NULL),(1578,105,36,2,NULL),(1579,107,36,2,NULL),(1580,109,36,2,NULL),(1581,111,36,2,NULL),(1582,145,36,2,NULL),(1583,147,36,2,NULL),(1584,148,36,2,NULL),(1585,149,36,2,NULL),(1586,151,36,2,NULL),(1587,153,36,2,NULL),(1588,155,36,2,NULL),(1589,157,36,2,NULL),(1590,44,40,2,NULL),(1591,45,40,2,NULL),(1592,46,40,2,NULL),(1593,47,40,2,NULL),(1594,49,40,2,NULL),(1595,51,40,2,NULL),(1596,53,40,2,NULL),(1597,54,40,2,NULL),(1598,75,40,2,NULL),(1599,77,40,2,NULL),(1600,79,40,2,NULL),(1601,81,40,2,NULL),(1602,83,40,2,NULL),(1603,85,40,2,NULL),(1604,86,40,2,NULL),(1605,88,40,2,NULL),(1606,98,40,2,NULL),(1607,99,40,2,NULL),(1608,101,40,2,NULL),(1609,103,40,2,NULL),(1610,105,40,2,NULL),(1611,107,40,2,NULL),(1612,109,40,2,NULL),(1613,111,40,2,NULL),(1614,145,40,2,NULL),(1615,147,40,2,NULL),(1616,148,40,2,NULL),(1617,149,40,2,NULL),(1618,22,23,2,NULL),(1619,151,40,2,NULL),(1620,153,40,2,NULL),(1621,8,13,2,NULL),(1622,155,40,2,NULL),(1623,157,40,2,NULL),(1624,13,13,2,NULL),(1625,44,93,2,NULL),(1626,45,93,2,NULL),(1627,46,93,2,NULL),(1628,44,13,2,NULL),(1629,47,93,2,NULL),(1630,49,93,2,NULL),(1631,45,13,2,NULL),(1632,51,93,2,NULL),(1633,53,93,2,NULL),(1634,46,13,2,NULL),(1635,54,93,2,NULL),(1636,75,93,2,NULL),(1637,47,13,2,NULL),(1638,77,93,2,NULL),(1639,79,93,2,NULL),(1640,49,13,2,NULL),(1641,81,93,2,NULL),(1642,83,93,2,NULL),(1643,51,13,2,NULL),(1644,85,93,2,NULL),(1645,86,93,2,NULL),(1646,53,13,2,NULL),(1647,88,93,2,NULL),(1648,98,93,2,NULL),(1649,54,13,2,NULL),(1650,99,93,2,NULL),(1651,101,93,2,NULL),(1652,75,13,2,NULL),(1653,103,93,2,NULL),(1654,105,93,2,NULL),(1655,77,13,2,NULL),(1656,107,93,2,NULL),(1657,109,93,2,NULL),(1658,79,13,2,NULL),(1659,111,93,2,NULL),(1660,145,93,2,NULL),(1661,81,13,2,NULL),(1662,147,93,2,NULL),(1663,148,93,2,NULL),(1664,83,13,2,NULL),(1665,149,93,2,NULL),(1666,151,93,2,NULL),(1667,85,13,2,NULL),(1668,153,93,2,NULL),(1669,155,93,2,NULL),(1670,86,13,2,NULL),(1671,157,93,2,NULL),(1672,44,95,2,NULL),(1673,88,13,2,NULL),(1674,45,95,2,NULL),(1675,46,95,2,NULL),(1676,46,95,2,NULL),(1677,98,13,2,NULL),(1678,47,95,2,NULL),(1679,49,95,2,NULL),(1680,99,13,2,NULL),(1681,51,95,2,NULL),(1682,53,95,2,NULL),(1683,101,13,2,NULL),(1684,54,95,2,NULL),(1685,75,95,2,NULL),(1686,75,95,2,NULL),(1687,103,13,2,NULL),(1688,77,95,2,NULL),(1689,79,95,2,NULL),(1690,105,13,2,NULL),(1691,81,95,2,NULL),(1692,83,95,2,NULL),(1693,107,13,2,NULL),(1694,85,95,2,NULL),(1695,86,95,2,NULL),(1696,109,13,2,NULL),(1697,88,95,2,NULL),(1698,98,95,2,NULL),(1699,111,13,2,NULL),(1700,99,95,2,NULL),(1701,101,95,2,NULL),(1702,145,13,2,NULL),(1703,103,95,2,NULL),(1704,103,95,2,NULL),(1705,147,13,2,NULL),(1706,105,95,2,NULL),(1707,107,95,2,NULL),(1708,148,13,2,NULL),(1709,109,95,2,NULL),(1710,111,95,2,NULL),(1711,149,13,2,NULL),(1712,145,95,2,NULL),(1713,147,95,2,NULL),(1714,151,13,2,NULL),(1715,148,95,2,NULL),(1716,149,95,2,NULL),(1717,153,13,2,NULL),(1718,151,95,2,NULL),(1719,153,95,2,NULL),(1720,155,13,2,NULL),(1721,155,95,2,NULL),(1722,157,95,2,NULL),(1723,157,13,2,NULL),(1724,44,97,2,NULL),(1725,45,97,2,NULL),(1726,113,13,2,NULL),(1727,46,97,2,NULL),(1728,47,97,2,NULL),(1729,117,13,2,NULL),(1730,49,97,2,NULL),(1731,51,97,2,NULL),(1732,18,13,2,NULL),(1733,53,97,2,NULL),(1734,54,97,2,NULL),(1735,2,28,2,NULL),(1736,75,97,2,NULL),(1737,77,97,2,NULL),(1738,38,27,2,NULL),(1739,79,97,2,NULL),(1740,81,97,2,NULL),(1741,8,33,2,NULL),(1742,83,97,2,NULL),(1743,85,97,2,NULL),(1744,13,33,2,NULL),(1745,86,97,2,NULL),(1746,88,97,2,NULL),(1747,44,33,2,NULL),(1748,98,97,2,NULL),(1749,99,97,2,NULL),(1750,101,97,2,NULL),(1751,45,33,2,NULL),(1752,103,97,2,NULL),(1753,105,97,2,NULL),(1754,46,33,2,NULL),(1755,107,97,2,NULL),(1756,109,97,2,NULL),(1757,47,33,2,NULL),(1758,111,97,2,NULL),(1759,145,97,2,NULL),(1760,49,33,2,NULL),(1761,147,97,2,NULL),(1762,148,97,2,NULL),(1763,51,33,2,NULL),(1764,149,97,2,NULL),(1765,151,97,2,NULL),(1766,53,33,2,NULL),(1767,153,97,2,NULL),(1768,155,97,2,NULL),(1769,54,33,2,NULL),(1770,157,97,2,NULL),(1771,44,99,2,NULL),(1772,75,33,2,NULL),(1773,45,99,2,NULL),(1774,46,99,2,NULL),(1775,77,33,2,NULL),(1776,47,99,2,NULL),(1777,79,33,2,NULL),(1778,49,99,2,NULL),(1779,51,99,2,NULL),(1780,81,33,2,NULL),(1781,53,99,2,NULL),(1782,54,99,2,NULL),(1783,83,33,2,NULL),(1784,75,99,2,NULL),(1785,77,99,2,NULL),(1786,85,33,2,NULL),(1787,79,99,2,NULL),(1788,81,99,2,NULL),(1789,83,99,2,NULL),(1790,86,33,2,NULL),(1791,85,99,2,NULL),(1792,88,33,2,NULL),(1793,86,99,2,NULL),(1794,88,99,2,NULL),(1795,98,33,2,NULL),(1796,98,99,2,NULL),(1797,99,99,2,NULL),(1798,101,99,2,NULL),(1799,99,33,2,NULL),(1800,103,99,2,NULL),(1801,105,99,2,NULL),(1802,101,33,2,NULL),(1803,107,99,2,NULL),(1804,103,33,2,NULL),(1805,109,99,2,NULL),(1806,111,99,2,NULL),(1807,105,33,2,NULL),(1808,145,99,2,NULL),(1809,147,99,2,NULL),(1810,107,33,2,NULL),(1811,148,99,2,NULL),(1812,149,99,2,NULL),(1813,151,99,2,NULL),(1814,109,33,2,NULL),(1815,153,99,2,NULL),(1816,111,33,2,NULL),(1817,155,99,2,NULL),(1818,157,99,2,NULL),(1819,145,33,2,NULL),(1820,147,33,2,NULL),(1821,148,33,2,NULL),(1822,149,33,2,NULL),(1823,149,33,2,NULL),(1824,151,33,2,NULL),(1825,153,33,2,NULL),(1826,153,33,2,NULL),(1827,155,33,2,NULL),(1828,157,33,2,NULL),(1829,157,33,2,NULL),(1830,113,33,2,NULL),(1831,44,42,2,NULL),(1832,44,42,2,NULL),(1833,117,33,2,NULL),(1834,45,42,2,NULL),(1835,45,42,2,NULL),(1836,8,42,2,NULL),(1837,46,42,2,NULL),(1838,46,42,2,NULL),(1839,13,42,2,NULL),(1840,47,42,2,NULL),(1841,47,42,2,NULL),(1842,49,42,2,NULL),(1843,51,42,2,NULL),(1844,51,42,2,NULL),(1845,53,42,2,NULL),(1846,54,42,2,NULL),(1847,54,42,2,NULL),(1848,75,42,2,NULL),(1849,77,42,2,NULL),(1850,77,42,2,NULL),(1851,79,42,2,NULL),(1852,81,42,2,NULL),(1853,81,42,2,NULL),(1854,83,42,2,NULL),(1855,85,42,2,NULL),(1856,85,42,2,NULL),(1857,86,42,2,NULL),(1858,88,42,2,NULL),(1859,88,42,2,NULL),(1860,98,42,2,NULL),(1861,99,42,2,NULL),(1862,99,42,2,NULL),(1863,101,42,2,NULL),(1864,103,42,2,NULL),(1865,103,42,2,NULL),(1866,105,42,2,NULL),(1867,107,42,2,NULL),(1868,107,42,2,NULL),(1869,109,42,2,NULL),(1870,111,42,2,NULL),(1871,111,42,2,NULL),(1872,145,42,2,NULL),(1873,147,42,2,NULL),(1874,147,42,2,NULL),(1875,148,42,2,NULL),(1876,149,42,2,NULL),(1877,149,42,2,NULL),(1878,151,42,2,NULL),(1879,153,42,2,NULL),(1880,153,42,2,NULL),(1881,155,42,2,NULL),(1882,157,42,2,NULL),(1883,157,42,2,NULL),(1884,113,42,2,NULL),(1885,44,45,2,NULL),(1886,44,45,2,NULL),(1887,117,42,2,NULL),(1888,45,45,2,NULL),(1889,45,45,2,NULL),(1890,8,45,2,NULL),(1891,46,45,2,NULL),(1892,46,45,2,NULL),(1893,13,45,2,NULL),(1894,47,45,2,NULL),(1895,47,45,2,NULL),(1896,49,45,2,NULL),(1897,49,45,2,NULL),(1898,51,45,2,NULL),(1899,53,45,2,NULL),(1900,54,45,2,NULL),(1901,75,45,2,NULL),(1902,77,45,2,NULL),(1903,79,45,2,NULL),(1904,81,45,2,NULL),(1905,81,45,2,NULL),(1906,83,45,2,NULL),(1907,85,45,2,NULL),(1908,85,45,2,NULL),(1909,86,45,2,NULL),(1910,88,45,2,NULL),(1911,88,45,2,NULL),(1912,98,45,2,NULL),(1913,99,45,2,NULL),(1914,101,45,2,NULL),(1915,103,45,2,NULL),(1916,105,45,2,NULL),(1917,105,45,2,NULL),(1918,107,45,2,NULL),(1919,109,45,2,NULL),(1920,109,45,2,NULL),(1921,111,45,2,NULL),(1922,145,45,2,NULL),(1923,145,45,2,NULL),(1924,147,45,2,NULL),(1925,148,45,2,NULL),(1926,148,45,2,NULL),(1927,149,45,2,NULL),(1928,151,45,2,NULL),(1929,153,45,2,NULL),(1930,155,45,2,NULL),(1931,157,45,2,NULL),(1932,157,45,2,NULL),(1933,44,94,2,NULL),(1934,45,94,2,NULL),(1935,113,45,2,NULL),(1936,46,94,2,NULL),(1937,47,94,2,NULL),(1938,117,45,2,NULL),(1939,49,94,2,NULL),(1940,51,94,2,NULL),(1941,8,94,2,NULL),(1942,53,94,2,NULL),(1943,54,94,2,NULL),(1944,13,94,2,NULL),(1945,75,94,2,NULL),(1946,77,94,2,NULL),(1947,79,94,2,NULL),(1948,81,94,2,NULL),(1949,83,94,2,NULL),(1950,83,94,2,NULL),(1951,85,94,2,NULL),(1952,86,94,2,NULL),(1953,86,94,2,NULL),(1954,88,94,2,NULL),(1955,98,94,2,NULL),(1956,98,94,2,NULL),(1957,99,94,2,NULL),(1958,101,94,2,NULL),(1959,101,94,2,NULL),(1960,103,94,2,NULL),(1961,105,94,2,NULL),(1962,105,94,2,NULL),(1963,107,94,2,NULL),(1964,109,94,2,NULL),(1965,109,94,2,NULL),(1966,111,94,2,NULL),(1967,145,94,2,NULL),(1968,145,94,2,NULL),(1969,147,94,2,NULL),(1970,148,94,2,NULL),(1971,148,94,2,NULL),(1972,149,94,2,NULL),(1973,151,94,2,NULL),(1974,151,94,2,NULL),(1975,153,94,2,NULL),(1976,155,94,2,NULL),(1977,155,94,2,NULL),(1978,157,94,2,NULL),(1979,44,96,2,NULL),(1980,113,94,2,NULL),(1981,45,96,2,NULL),(1982,46,96,2,NULL),(1983,117,94,2,NULL),(1984,47,96,2,NULL),(1985,49,96,2,NULL),(1986,8,96,2,NULL),(1987,51,96,2,NULL),(1988,53,96,2,NULL),(1989,13,96,2,NULL),(1990,54,96,2,NULL),(1991,75,96,2,NULL),(1992,77,96,2,NULL),(1993,79,96,2,NULL),(1994,81,96,2,NULL),(1995,83,96,2,NULL),(1996,83,96,2,NULL),(1997,85,96,2,NULL),(1998,86,96,2,NULL),(1999,86,96,2,NULL),(2000,88,96,2,NULL),(2001,98,96,2,NULL),(2002,98,96,2,NULL),(2003,99,96,2,NULL),(2004,101,96,2,NULL),(2005,101,96,2,NULL),(2006,103,96,2,NULL),(2007,105,96,2,NULL),(2008,105,96,2,NULL),(2009,107,96,2,NULL),(2010,109,96,2,NULL),(2011,109,96,2,NULL),(2012,111,96,2,NULL),(2013,145,96,2,NULL),(2014,145,96,2,NULL),(2015,147,96,2,NULL),(2016,148,96,2,NULL),(2017,148,96,2,NULL),(2018,149,96,2,NULL),(2019,151,96,2,NULL),(2020,151,96,2,NULL),(2021,153,96,2,NULL),(2022,155,96,2,NULL),(2023,155,96,2,NULL),(2024,157,96,2,NULL),(2025,44,98,2,NULL),(2026,113,96,2,NULL),(2027,45,98,2,NULL),(2028,46,98,2,NULL),(2029,117,96,2,NULL),(2030,47,98,2,NULL),(2031,49,98,2,NULL),(2032,8,98,2,NULL),(2033,51,98,2,NULL),(2034,53,98,2,NULL),(2035,13,98,2,NULL),(2036,54,98,2,NULL),(2037,75,98,2,NULL),(2038,77,98,2,NULL),(2039,79,98,2,NULL),(2040,81,98,2,NULL),(2041,83,98,2,NULL),(2042,83,98,2,NULL),(2043,85,98,2,NULL),(2044,86,98,2,NULL),(2045,86,98,2,NULL),(2046,88,98,2,NULL),(2047,88,98,2,NULL),(2048,88,98,2,NULL),(2049,98,98,2,NULL),(2050,99,98,2,NULL),(2051,99,98,2,NULL),(2052,101,98,2,NULL),(2053,103,98,2,NULL),(2054,103,98,2,NULL),(2055,103,98,2,NULL),(2056,105,98,2,NULL),(2057,107,98,2,NULL),(2058,107,98,2,NULL),(2059,109,98,2,NULL),(2060,111,98,2,NULL),(2061,111,98,2,NULL),(2062,145,98,2,NULL),(2063,147,98,2,NULL),(2064,147,98,2,NULL),(2065,148,98,2,NULL),(2066,149,98,2,NULL),(2067,149,98,2,NULL),(2068,151,98,2,NULL),(2069,153,98,2,NULL),(2070,153,98,2,NULL),(2071,153,98,2,NULL),(2072,155,98,2,NULL),(2073,157,98,2,NULL),(2074,157,98,2,NULL),(2075,44,100,2,NULL),(2076,113,98,2,NULL),(2077,45,100,2,NULL),(2078,46,100,2,NULL),(2079,47,100,2,NULL),(2080,117,98,2,NULL),(2081,49,100,2,NULL),(2082,51,100,2,NULL),(2083,28,34,2,NULL),(2084,53,100,2,NULL),(2085,28,37,2,NULL),(2086,54,100,2,NULL),(2087,75,100,2,NULL),(2088,28,81,2,NULL),(2089,77,100,2,NULL),(2090,79,100,2,NULL),(2091,28,86,2,NULL),(2092,81,100,2,NULL),(2093,83,100,2,NULL),(2094,8,100,2,NULL),(2095,85,100,2,NULL),(2096,86,100,2,NULL),(2097,13,100,2,NULL),(2098,88,100,2,NULL),(2099,98,100,2,NULL),(2100,99,100,2,NULL),(2101,99,100,2,NULL),(2102,101,100,2,NULL),(2103,103,100,2,NULL),(2104,105,100,2,NULL),(2105,105,100,2,NULL),(2106,107,100,2,NULL),(2107,109,100,2,NULL),(2108,109,100,2,NULL),(2109,111,100,2,NULL),(2110,145,100,2,NULL),(2111,145,100,2,NULL),(2112,147,100,2,NULL),(2113,148,100,2,NULL),(2114,148,100,2,NULL),(2115,149,100,2,NULL),(2116,151,100,2,NULL),(2117,151,100,2,NULL),(2118,153,100,2,NULL),(2119,155,100,2,NULL),(2120,155,100,2,NULL),(2121,157,100,2,NULL),(2122,113,100,2,NULL),(2123,117,100,2,NULL),(2124,113,50,2,NULL),(2125,113,50,2,NULL),(2126,117,50,2,NULL),(2127,44,83,2,NULL),(2128,45,83,2,NULL),(2129,46,83,2,NULL),(2130,47,83,2,NULL),(2131,49,83,2,NULL),(2132,51,83,2,NULL),(2133,53,83,2,NULL),(2134,54,83,2,NULL),(2135,75,83,2,NULL),(2136,77,83,2,NULL),(2137,79,83,2,NULL),(2138,81,83,2,NULL),(2139,83,83,2,NULL),(2140,85,83,2,NULL),(2141,86,83,2,NULL),(2142,88,83,2,NULL),(2143,98,83,2,NULL),(2144,99,83,2,NULL),(2145,101,83,2,NULL),(2146,103,83,2,NULL),(2147,105,83,2,NULL),(2148,107,83,2,NULL),(2149,109,83,2,NULL),(2150,111,83,2,NULL),(2151,145,83,2,NULL),(2152,147,83,2,NULL),(2153,148,83,2,NULL),(2154,149,83,2,NULL),(2155,151,83,2,NULL),(2156,153,83,2,NULL),(2157,155,83,2,NULL),(2158,157,83,2,NULL),(2159,44,86,2,NULL),(2160,45,86,2,NULL),(2161,46,86,2,NULL),(2162,47,86,2,NULL),(2163,49,86,2,NULL),(2164,51,86,2,NULL),(2165,53,86,2,NULL),(2166,54,86,2,NULL),(2167,75,86,2,NULL),(2168,77,86,2,NULL),(2169,79,86,2,NULL),(2170,81,86,2,NULL),(2171,83,86,2,NULL),(2172,85,86,2,NULL),(2173,86,86,2,NULL),(2174,88,86,2,NULL),(2175,98,86,2,NULL),(2176,99,86,2,NULL),(2177,101,86,2,NULL),(2178,103,86,2,NULL),(2179,105,86,2,NULL),(2180,107,86,2,NULL),(2181,109,86,2,NULL),(2182,111,86,2,NULL),(2183,145,86,2,NULL),(2184,147,86,2,NULL),(2185,148,86,2,NULL),(2186,149,86,2,NULL),(2187,151,86,2,NULL),(2188,153,86,2,NULL),(2189,155,86,2,NULL),(2190,157,86,2,NULL),(2191,44,90,2,NULL),(2192,45,90,2,NULL),(2193,46,90,2,NULL),(2194,47,90,2,NULL),(2195,49,90,2,NULL),(2196,51,90,2,NULL),(2197,53,90,2,NULL),(2198,54,90,2,NULL),(2199,75,90,2,NULL),(2200,77,90,2,NULL),(2201,79,90,2,NULL),(2202,81,90,2,NULL),(2203,83,90,2,NULL),(2204,85,90,2,NULL),(2205,86,90,2,NULL),(2206,88,90,2,NULL),(2207,98,90,2,NULL),(2208,99,90,2,NULL),(2209,101,90,2,NULL),(2210,103,90,2,NULL),(2211,105,90,2,NULL),(2212,107,90,2,NULL),(2213,109,90,2,NULL),(2214,111,90,2,NULL),(2215,145,90,2,NULL),(2216,147,90,2,NULL),(2217,148,90,2,NULL),(2218,149,90,2,NULL),(2219,151,90,2,NULL),(2220,153,90,2,NULL),(2221,155,90,2,NULL),(2222,157,90,2,NULL),(2223,44,92,2,NULL),(2224,45,92,2,NULL),(2225,46,92,2,NULL),(2226,47,92,2,NULL),(2227,49,92,2,NULL),(2228,51,92,2,NULL),(2229,53,92,2,NULL),(2230,54,92,2,NULL),(2231,75,92,2,NULL),(2232,77,92,2,NULL),(2233,79,92,2,NULL),(2234,81,92,2,NULL),(2235,83,92,2,NULL),(2236,85,92,2,NULL),(2237,86,92,2,NULL),(2238,88,92,2,NULL),(2239,98,92,2,NULL),(2240,99,92,2,NULL),(2241,101,92,2,NULL),(2242,103,92,2,NULL),(2243,105,92,2,NULL),(2244,107,92,2,NULL),(2245,109,92,2,NULL),(2246,111,92,2,NULL),(2247,145,92,2,NULL),(2248,147,92,2,NULL),(2249,148,92,2,NULL),(2250,149,92,2,NULL),(2251,151,92,2,NULL),(2252,153,92,2,NULL),(2253,155,92,2,NULL),(2254,157,92,2,NULL),(2255,113,1,2,NULL),(2256,117,1,2,NULL),(2257,113,22,2,NULL),(2258,117,22,2,NULL),(2259,113,36,2,NULL),(2260,117,36,2,NULL),(2261,113,40,2,NULL),(2262,117,40,2,NULL),(2263,113,93,2,NULL),(2264,117,93,2,NULL),(2265,113,95,2,NULL),(2266,117,95,2,NULL),(2267,113,97,2,NULL),(2268,117,97,2,NULL),(2269,113,99,2,NULL),(2270,117,99,2,NULL),(2271,113,83,2,NULL),(2272,113,83,2,NULL),(2273,117,83,2,NULL),(2274,117,83,2,NULL),(2275,113,86,2,NULL),(2276,117,86,2,NULL),(2277,113,90,2,NULL),(2278,117,90,2,NULL),(2279,113,92,2,NULL),(2280,117,92,2,NULL),(2281,8,83,2,NULL),(2282,13,83,2,NULL),(2283,8,86,2,NULL),(2284,8,86,2,NULL),(2285,13,86,2,NULL),(2286,13,86,2,NULL),(2287,120,34,2,NULL),(2288,120,34,2,NULL),(2289,120,37,2,NULL),(2290,120,81,2,NULL),(2291,120,86,2,NULL),(2292,8,90,2,NULL),(2293,13,90,2,NULL),(2294,141,31,2,NULL),(2295,141,31,2,NULL),(2296,141,35,2,NULL),(2297,141,35,2,NULL),(2298,141,39,2,NULL),(2299,141,84,2,NULL),(2300,141,89,2,NULL),(2301,8,92,2,NULL),(2302,13,92,2,NULL),(2303,5,8,2,NULL),(2304,16,4,2,NULL),(2305,23,6,2,NULL),(2306,8,1,2,NULL),(2307,13,1,2,NULL),(2308,8,22,2,NULL),(2309,13,22,2,NULL),(2310,8,36,2,NULL),(2311,13,36,2,NULL),(2312,8,40,2,NULL),(2313,13,40,2,NULL),(2314,8,93,2,NULL),(2315,13,93,2,NULL),(2316,8,95,2,NULL),(2317,13,95,2,NULL),(2318,8,97,2,NULL),(2319,13,97,2,NULL),(2320,8,99,2,NULL),(2321,13,99,2,NULL),(2322,34,34,2,NULL),(2323,34,37,2,NULL),(2324,34,81,2,NULL),(2325,34,86,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:34
