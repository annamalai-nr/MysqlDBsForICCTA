-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_429
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (26,'(.*)'),(10,'.ImageTestActivity'),(23,'.Myhall'),(20,'.Web'),(28,'NULL-CONSTANT'),(5,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.CHOOSER'),(9,'android.intent.action.CheckinHub'),(18,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.PACKAGE_ADDED'),(14,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.SEARCH'),(19,'android.intent.action.SEND'),(4,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(16,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(15,'com.android.vending.INSTALL_REFERRER'),(13,'com.beautywall.GameBootReceiver'),(11,'com.beautywall.ImageTestActivity'),(24,'com.beautywall.Myhall'),(21,'com.beautywall.Web'),(12,'com.gamesns.GamesnsService'),(22,'com.nbadunkwonderful.GameBootReceiver'),(27,'com.nbadunkwonderful.ImageTestActivity'),(25,'com.nbadunkwonderful.Myhall'),(17,'com.nbadunkwonderful.Web');
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
INSERT INTO `Applications` VALUES (1,'com.dqivbfhifq.wafnvjq',10037),(2,'com.nbadunkwonderful',1016),(3,'com.dvqoqkag.ssqugttlls',106),(4,'com.beautywall',10018),(5,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk',106),(6,'com.gamesns',120),(7,'com.htgvrmmhu.vmwghcscp',10026);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.dqivbfhifq.wafnvjq.mkmoves'),(2,1,'com.dqivbfhifq.wafnvjq.mk1win'),(3,2,'com.nbadunkwonderful.Myhall'),(4,1,'com.dqivbfhifq.wafnvjq.mk2win'),(5,2,'com.nbadunkwonderful.Web'),(6,1,'com.dqivbfhifq.wafnvjq.mk3win'),(7,2,'com.nbadunkwonderful.HomeActivity'),(8,1,'com.dqivbfhifq.wafnvjq.mktwin'),(9,2,'com.nbadunkwonderful.SortActivity1'),(10,1,'com.dqivbfhifq.wafnvjq.mk4win'),(11,3,'com.dvqoqkag.ssqugttlls.Main'),(12,2,'com.nbadunkwonderful.SortActivity2'),(13,1,'com.dqivbfhifq.wafnvjq.mkdawin'),(14,1,'com.dqivbfhifq.wafnvjq.mkdecwin'),(15,3,'com.moreheat.game.deathdiary.CoverActivity'),(16,1,'com.dqivbfhifq.wafnvjq.mkarmwin'),(17,3,'com.admob.android.ads.AdMobActivity'),(18,2,'com.nbadunkwonderful.SearchActivity'),(19,1,'com.dqivbfhifq.wafnvjq.mkvsdcuwin'),(20,3,'com.moreheat.game.deathdiary.GameActivity'),(21,1,'com.dqivbfhifq.wafnvjq.mk9win'),(22,3,'com.moreheat.game.deathdiary.SettingsActivity'),(23,2,'com.nbadunkwonderful.ManagerActivity'),(24,4,'com.beautywall.Myhall'),(25,1,'com.dqivbfhifq.wafnvjq.helpwin'),(26,3,'com.HpciRIj.ErPJpRCtE'),(27,4,'com.beautywall.Web'),(28,3,'com.HpciRIj.PlKbBJSE'),(29,1,'com.dqivbfhifq.wafnvjq.aboutwin'),(30,2,'com.nbadunkwonderful.GameInfo'),(31,4,'com.beautywall.HomeActivity'),(32,1,'com.google.ads.AdActivity'),(33,4,'com.beautywall.SortActivity1'),(34,1,'com.qWMNqqfr.rmOpbJBlnCdg'),(35,2,'com.nbadunkwonderful.TableClass'),(36,4,'com.beautywall.SortActivity2'),(37,3,'com.nd.dianjin.activity.OfferAppActivity'),(38,3,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(39,2,'com.nbadunkwonderful.GameAlertDialog'),(40,5,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk.StartScreenActivity'),(41,1,'com.qWMNqqfr.fPssjlnU'),(42,4,'com.beautywall.SearchActivity'),(43,2,'com.nbadunkwonderful.DevelopmentSettings'),(44,1,'com.qWMNqqfr.OdQPUGkPEJvgUal'),(45,5,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk.CraigsRaceLandscapeActivity'),(46,1,'com.qWMNqqfr.mbwriEecLIQTii'),(47,4,'com.beautywall.ManagerActivity'),(48,5,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk.RaceAFriendDialog'),(49,1,'com.qWMNqqfr.astfMtFaOBRT'),(50,2,'com.nbadunkwonderful.qimg.ImageTestActivity'),(51,5,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk.PreferencesDialog'),(52,1,'com.qWMNqqfr.MDVPJLIVPCm'),(53,4,'com.beautywall.GameInfo'),(54,5,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk.NameEntryActivity'),(55,1,'com.qWMNqqfr.userPermissionReceiver'),(56,5,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk.RaceFinishedSendMessageDialog'),(57,2,'com.nbadunkwonderful.qimg.ADactivity'),(58,4,'com.beautywall.TableClass'),(59,5,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk.WebPageActivity'),(60,2,'com.nbadunkwonderful.GameService'),(61,5,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk.SaveFailedActivity'),(62,4,'com.beautywall.GameAlertDialog'),(63,5,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk.TestingActivity'),(64,4,'com.beautywall.DevelopmentSettings'),(65,2,'com.nbadunkwonderful.GameBootReceiver'),(66,5,'com.bBsastoQ.ErPJpRCtE'),(67,5,'com.bBsastoQ.PlKbBJSE'),(68,4,'com.beautywall.qimg.ImageTestActivity'),(69,5,'com.nd.dianjin.activity.OfferAppActivity'),(70,4,'com.beautywall.image.ADactivity'),(71,5,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(72,4,'com.beautywall.GameService'),(73,4,'com.beautywall.GameBootReceiver'),(74,3,'com.nd.dianjin.DianJinPlatform'),(75,3,'com.moreheat.game.deathdiary.CoverActivity$1'),(76,6,'com.gamesns.activity.BackupAppActivity'),(77,6,'com.gamesns.activity.DiscussionFeed'),(78,6,'com.gamesns.activity.DiscussionForm'),(79,6,'com.gamesns.activity.AddFriends'),(80,6,'com.gamesns.activity.FriendSearch'),(81,6,'com.gamesns.activity.BasicFeed'),(82,6,'com.gamesns.activity.AddFriendsOptions'),(83,6,'com.gamesns.activity.LoginForm'),(84,6,'com.gamesns.activity.RegisterForm'),(85,6,'com.gamesns.activity.SimpleGallery'),(86,6,'com.gamesns.activity.CheckinForm'),(87,6,'com.gamesns.activity.LoginSignupSplash'),(88,6,'com.gamesns.activity.DiscoverTab'),(89,6,'com.gamesns.activity.DiscoverInstructions'),(90,6,'com.gamesns.activity.GameDetails'),(91,6,'com.gamesns.activity.GameTab'),(92,6,'com.gamesns.activity.FriendsTab'),(93,6,'com.gamesns.activity.YouTab'),(94,6,'com.gamesns.activity.YouTabNew'),(95,6,'com.gamesns.activity.FriendDetails'),(96,6,'com.gamesns.activity.CheckinHub'),(97,6,'com.gamesns.GameList'),(98,6,'com.gamesns.activity.ChatActivity'),(99,6,'com.gamesns.activity.MediaActivity'),(100,6,'com.gamesns.activity.Web'),(101,6,'com.gamesns.activity.WebMediaPlayer'),(102,6,'com.gamesns.activity.UpdateActivity'),(103,6,'com.gamesns.activity.Share'),(104,6,'com.gamesns.activity.AppTrafficActivity'),(105,6,'com.gamesns.activity.VideoDetail'),(106,6,'com.gamesns.activity.GameDetailNewActivity'),(107,6,'com.gamesns.activity.ModifyUserData'),(108,2,'cc'),(109,6,'com.gamesns.activity.HomeActivity'),(110,6,'com.gamesns.activity.DiscussionDetail'),(111,2,'bj'),(112,6,'com.gamesns.activity.DeskTabActivity'),(113,6,'com.gamesns.activity.GameOnLineList'),(114,6,'com.gamesns.activity.AllGame'),(115,5,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk.StartScreenActivity$5'),(116,6,'com.gamesns.activity.GameRecommend'),(117,6,'com.gamesns.activity.ManagerGame'),(118,6,'com.gamesns.GamesnsService'),(119,6,'com.gamesns.receiver.StartupIntentReceiver'),(120,6,'com.gamesns.receiver.PackageAddedReceiver'),(121,2,'ak'),(122,6,'com.gamesns.receiver.PackageRemovedReceiver'),(123,4,'ca'),(124,6,'com.gamesns.receiver.ReferrerReceiver'),(125,6,'com.gamesns.receiver.NetStateReceiver'),(126,6,'com.gamesns.AlarmReceiver'),(127,4,'cx'),(128,2,'j'),(129,4,'dd'),(130,5,'com.nd.dianjin.DianJinPlatform'),(131,4,'de'),(132,2,'aj'),(133,1,'com.dqivbfhifq.wafnvjq.mkmoves$7'),(134,1,'com.dqivbfhifq.wafnvjq.mkmoves$4'),(135,4,'au'),(136,1,'com.qWMNqqfr.ah'),(137,1,'com.qWMNqqfr.af'),(138,2,'ba'),(139,4,'cp'),(140,4,'dc'),(141,1,'com.dqivbfhifq.wafnvjq.mkmoves$8'),(142,4,'at'),(143,2,'al'),(144,1,'com.qWMNqqfr.p'),(145,1,'com.dqivbfhifq.wafnvjq.mkmoves$1'),(146,1,'com.dqivbfhifq.wafnvjq.mkmoves$10'),(147,2,'bn'),(148,1,'com.dqivbfhifq.wafnvjq.mkmoves$3'),(149,4,'bl'),(150,2,'cg'),(151,1,'com.dqivbfhifq.wafnvjq.mkmoves$9'),(152,2,'dt'),(153,1,'com.dqivbfhifq.wafnvjq.mkmoves$2'),(154,4,'ck'),(155,2,'cd'),(156,1,'com.dqivbfhifq.wafnvjq.mkmoves$6'),(157,1,'com.dqivbfhifq.wafnvjq.mkmoves$5'),(158,7,'com.bringmore.xiongying.mainA'),(159,7,'pl.idreams.skyforcereloaded.game'),(160,7,'com.bringmore.xiongying.LeaderboardExplorer'),(161,7,'com.bringmore.xiongying.ScoreExplorer'),(162,7,'com.bringmore.xiongying.ScorePoster'),(163,7,'com.bringmore.xiongying.AchievementExplorer'),(164,7,'com.bringmore.xiongying.AchievementInvestigator'),(165,7,'com.openfeint.internal.ui.IntroFlow'),(166,7,'com.openfeint.api.ui.Dashboard'),(167,7,'com.openfeint.internal.ui.Settings'),(168,7,'com.google.ads.AdActivity'),(169,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(170,7,'com.millennialmedia.android.VideoPlayer'),(171,7,'net.youmi.android.AdActivity'),(172,7,'com.vpon.adon.android.WebInApp'),(173,7,'com.mt.airad.MultiAD'),(174,7,'com.tAkKa.ToLfMCuwehGNtc'),(175,7,'com.tAkKa.ukfJcLptQgJjml'),(176,7,'com.nd.dianjin.activity.OfferAppActivity'),(177,7,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(178,7,'pl.idreams.skyforcereloaded.d'),(179,7,'com.nd.dianjin.DianJinPlatform');
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,15,'UMENG_APPKEY'),(2,20,'UMENG_APPKEY'),(3,15,'UMENG_CHANNEL'),(4,20,'UMENG_CHANNEL'),(5,17,'o'),(6,56,'weWon'),(7,40,'timeDifference'),(8,45,'raceAgainstFriend'),(9,56,'opponentName'),(10,45,'friendIsLocalRace'),(11,58,'webSiteAddress'),(12,45,'friendCreateRace'),(13,23,'status'),(14,48,'completed'),(15,56,'timeDifference'),(16,40,'opponentName'),(17,23,'icon'),(18,48,'icon'),(19,12,'status'),(20,23,'soft_id'),(21,24,'nextclassid'),(22,42,'status'),(23,48,'soft_id'),(24,30,'filepath'),(25,30,'title'),(26,40,'weWon'),(27,54,'from_alert'),(28,54,'from_table'),(29,23,'package_name'),(30,3,'service_channel'),(31,40,'friendIsLocalRace'),(32,48,'filepath'),(33,23,'total'),(34,62,'title'),(35,36,'nextclassid'),(36,48,'package_name'),(37,23,'url'),(38,54,'status'),(39,62,'package_name'),(40,60,'service_channel'),(41,72,'service_channel'),(42,23,'app_name'),(43,62,'apk_url'),(44,44,'apkSize'),(45,44,'apkInfo'),(46,18,'version_code'),(47,48,'url'),(48,42,'package_name'),(49,18,'package_name'),(50,23,'completed'),(51,12,'package_name'),(52,30,'status'),(53,39,'btn_txt'),(54,36,'status'),(55,30,'from_table'),(56,62,'content'),(57,48,'status'),(58,3,'nextclassid'),(59,54,'title'),(60,44,'packageName'),(61,51,'service_channel'),(62,5,'service_channel'),(63,48,'app_name'),(64,48,'total'),(65,52,'fileName'),(66,62,'btn_txt'),(67,39,'url'),(68,12,'nextclassid'),(69,23,'filepath'),(70,62,'url'),(71,44,'apkTitle'),(72,44,'detailFlag'),(73,52,'fileURL'),(74,36,'package_name'),(75,27,'service_channel'),(76,24,'service_channel'),(77,68,'service_channel'),(78,44,'apkSoftID'),(79,54,'filepath'),(80,62,'version_code'),(81,44,'imageURL'),(82,39,'content'),(83,30,'from_alert'),(84,44,'apkVersion'),(85,42,'version_code'),(86,49,'packageName'),(87,32,'com.google.ads.AdOpener'),(88,44,'iconURL'),(89,32,'action'),(90,18,'status'),(91,39,'title'),(92,49,'fileURL'),(93,44,'apkURL'),(94,32,'params'),(95,46,'np_app_key'),(96,34,'np_app_key'),(97,44,'np_app_key'),(98,52,'np_app_key'),(99,41,'np_app_key'),(100,131,'shouldShowNavbar'),(101,134,'adWidth'),(102,130,'params'),(103,129,'content_name'),(104,128,'content_name'),(105,127,'content_name'),(106,131,'shouldResizeOverlay'),(107,131,'shouldShowTitlebar'),(108,133,'A7D1721B9508405D8271AB82AC6D9B3C'),(109,130,'com.google.ads.AdOpener'),(110,131,'overlayTransition'),(111,134,'url'),(112,131,'overlayTitle'),(113,131,'transitionTime'),(114,131,'canAccelerate'),(115,130,'action'),(116,135,'adID'),(117,135,'adURL'),(118,129,'screenName'),(119,128,'screenName'),(120,127,'screenName');
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,22,'a',0,NULL,NULL),(22,21,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,26,'a',0,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,48,'a',0,NULL,NULL),(48,47,'a',1,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,51,'a',0,NULL,NULL),(51,50,'a',1,NULL,NULL),(52,52,'r',0,NULL,NULL),(53,54,'a',0,NULL,NULL),(54,53,'a',1,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,59,'a',0,NULL,NULL),(59,58,'a',1,NULL,NULL),(60,60,'s',1,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,66,'a',0,NULL,NULL),(66,65,'r',1,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'a',1,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'s',1,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,76,'a',0,NULL,NULL),(75,77,'a',0,NULL,NULL),(76,78,'a',0,NULL,NULL),(77,79,'a',0,NULL,NULL),(78,80,'a',0,NULL,NULL),(79,81,'a',0,NULL,NULL),(80,82,'a',0,NULL,NULL),(81,83,'a',0,NULL,NULL),(82,84,'a',0,NULL,NULL),(83,85,'a',0,NULL,NULL),(84,86,'a',0,NULL,NULL),(85,87,'a',0,NULL,NULL),(86,88,'a',1,NULL,NULL),(87,89,'a',0,NULL,NULL),(88,90,'a',0,NULL,NULL),(89,91,'a',0,NULL,NULL),(90,92,'a',0,NULL,NULL),(91,93,'a',1,NULL,NULL),(92,94,'a',1,NULL,NULL),(93,95,'a',0,NULL,NULL),(94,96,'a',1,NULL,NULL),(95,97,'a',1,NULL,NULL),(96,98,'a',1,NULL,NULL),(97,99,'a',0,NULL,NULL),(98,100,'a',0,NULL,NULL),(99,101,'a',0,NULL,NULL),(100,102,'a',0,NULL,NULL),(101,103,'a',1,NULL,NULL),(102,104,'a',0,NULL,NULL),(103,105,'a',0,NULL,NULL),(104,106,'a',0,NULL,NULL),(105,107,'a',0,NULL,NULL),(106,109,'a',1,NULL,NULL),(107,110,'a',0,NULL,NULL),(108,112,'a',0,NULL,NULL),(109,113,'a',0,NULL,NULL),(110,114,'a',0,NULL,NULL),(111,116,'a',0,NULL,NULL),(112,117,'a',0,NULL,NULL),(113,118,'s',1,NULL,NULL),(114,119,'r',1,NULL,NULL),(115,120,'r',1,NULL,NULL),(116,122,'r',1,NULL,NULL),(117,124,'r',1,NULL,NULL),(118,125,'r',1,NULL,NULL),(119,126,'r',0,NULL,NULL),(120,158,'a',1,NULL,NULL),(121,159,'a',0,NULL,NULL),(122,160,'a',0,NULL,NULL),(123,161,'a',0,NULL,NULL),(124,162,'a',0,NULL,NULL),(125,163,'a',0,NULL,NULL),(126,164,'a',0,NULL,NULL),(127,165,'a',0,NULL,NULL),(128,166,'a',0,NULL,NULL),(129,167,'a',0,NULL,NULL),(130,168,'a',0,NULL,NULL),(131,169,'a',0,NULL,NULL),(132,170,'a',0,NULL,NULL),(133,171,'a',0,NULL,NULL),(134,172,'a',0,NULL,NULL),(135,173,'a',0,NULL,NULL),(136,174,'a',0,NULL,NULL),(137,175,'a',1,NULL,NULL),(138,176,'a',0,NULL,NULL),(139,177,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,28),(2,2,28),(3,3,15),(4,4,25),(5,5,40),(6,6,40),(7,7,67),(8,8,40),(9,9,3),(10,10,42),(11,11,7),(12,12,40),(13,13,68),(14,14,51),(15,15,40),(16,16,56),(17,17,7),(18,18,73),(19,19,39),(20,19,35),(21,20,7),(22,21,54),(23,22,5),(24,23,5),(25,24,48),(26,25,40),(27,26,62),(28,27,40),(29,28,18),(30,29,40),(31,31,54),(32,30,30),(33,32,59),(34,33,59),(35,33,62),(36,34,67),(37,35,24),(38,36,39),(39,37,65),(40,38,62),(41,39,35),(42,39,39),(43,40,27),(44,41,12),(45,42,41),(46,43,1),(47,43,41),(48,44,12),(49,45,42),(50,46,4),(51,47,30),(52,48,59),(53,49,6),(54,50,41),(55,50,1),(56,51,66),(57,52,36),(58,53,55),(59,54,34),(60,55,57),(61,57,24),(62,56,34),(63,58,12),(64,59,1),(65,60,34),(66,61,23),(67,62,31),(68,63,52),(69,64,66),(70,65,36),(71,66,7),(72,67,44),(73,68,31),(74,69,30),(75,70,39),(76,71,36),(77,72,2),(78,73,24),(79,74,41),(80,74,1),(81,75,39),(82,76,1),(83,77,48),(84,78,44),(85,78,41),(86,79,36),(87,80,12),(88,81,19),(89,82,3),(90,83,73),(91,84,14),(92,85,62),(93,85,59),(94,86,12),(95,87,13),(96,88,27),(97,89,3),(98,90,48),(99,91,44),(100,91,41),(101,92,16),(102,93,36),(103,94,3),(104,95,4),(105,96,18),(106,97,62),(107,98,41),(108,99,12),(109,100,41),(110,100,1),(111,101,3),(112,102,24),(113,103,8),(114,104,23),(115,105,68),(116,107,57),(117,106,1),(118,106,41),(119,108,31),(120,109,57),(121,110,6),(122,111,7),(123,112,24),(124,113,41),(125,114,30),(126,115,31),(127,116,1),(128,116,41),(129,118,54),(130,117,2),(131,119,30),(132,121,73),(133,120,13),(134,122,32),(135,123,27),(136,124,7),(137,125,36),(138,126,3),(139,127,54),(140,128,30),(141,129,10),(142,130,31),(143,131,66),(144,132,14),(145,133,62),(146,134,35),(147,135,22),(148,136,54),(149,137,22),(150,138,5),(151,140,54),(152,139,8),(153,141,23),(154,142,1),(155,142,41),(156,143,51),(157,144,49),(158,145,31),(159,146,34),(160,147,51),(161,149,68),(162,148,41),(163,148,1),(164,150,35),(165,151,10),(166,152,24),(167,153,3),(168,154,1),(169,154,41),(170,155,24),(171,156,39),(172,157,19),(173,158,41),(174,159,16),(175,160,41),(176,160,1),(177,161,120),(178,162,135),(179,163,137),(180,164,136),(181,165,121),(182,166,137),(183,167,121),(184,168,130),(185,169,136);
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,28,'<com.HpciRIj.PlKbBJSE: void a()>',3,'a',NULL),(2,74,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(3,75,'<com.moreheat.game.deathdiary.CoverActivity$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(4,26,'<com.HpciRIj.ErPJpRCtE: void a(java.lang.String)>',10,'a',NULL),(5,40,'<com.eihrphrhim.nuneuwhsorrdejdk_sbfk.StartScreenActivity: void onActivityResult(int,int,android.content.Intent)>',8,'a',NULL),(6,40,'<com.eihrphrhim.nuneuwhsorrdejdk_sbfk.StartScreenActivity: void sendGeneric()>',20,'a',NULL),(7,67,'<com.bBsastoQ.PlKbBJSE: void a()>',3,'a',NULL),(8,40,'<com.eihrphrhim.nuneuwhsorrdejdk_sbfk.StartScreenActivity: void onActivityResult(int,int,android.content.Intent)>',43,'a',NULL),(9,108,'<cc: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(10,42,'<com.beautywall.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(11,111,'<bj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(12,40,'<com.eihrphrhim.nuneuwhsorrdejdk_sbfk.StartScreenActivity: void sendSMS()>',15,'a',NULL),(13,68,'<com.beautywall.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(14,50,'<com.nbadunkwonderful.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(15,115,'<com.eihrphrhim.nuneuwhsorrdejdk_sbfk.StartScreenActivity$5: void onClick(android.view.View)>',21,'a',NULL),(16,56,'<com.eihrphrhim.nuneuwhsorrdejdk_sbfk.RaceFinishedSendMessageDialog: void sendMessage(java.lang.String,int,int,boolean,java.lang.String)>',32,'a',NULL),(17,7,'<com.nbadunkwonderful.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(18,73,'<com.beautywall.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(19,121,'<ak: void a(int,boolean)>',29,'a',NULL),(20,7,'<com.nbadunkwonderful.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(21,123,'<ca: void onClick(android.view.View)>',205,'a',NULL),(22,5,'<com.nbadunkwonderful.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(23,5,'<com.nbadunkwonderful.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(24,127,'<cx: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(25,40,'<com.eihrphrhim.nuneuwhsorrdejdk_sbfk.StartScreenActivity: void sendEmail()>',19,'a',NULL),(26,62,'<com.beautywall.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(27,40,'<com.eihrphrhim.nuneuwhsorrdejdk_sbfk.StartScreenActivity: boolean onPrepareOptionsMenu(android.view.Menu)>',4,'a',NULL),(28,18,'<com.nbadunkwonderful.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(29,40,'<com.eihrphrhim.nuneuwhsorrdejdk_sbfk.StartScreenActivity: void startGame()>',17,'a',NULL),(30,128,'<j: void onClick(android.view.View)>',224,'a',NULL),(31,53,'<com.beautywall.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(32,58,'<com.beautywall.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(33,129,'<dd: void a(int,boolean)>',57,'a',NULL),(34,130,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(35,131,'<de: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(36,39,'<com.nbadunkwonderful.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(37,66,'<com.bBsastoQ.ErPJpRCtE: void a(java.lang.String)>',10,'a',NULL),(38,62,'<com.beautywall.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(39,121,'<ak: void a(int,boolean)>',10,'s',NULL),(40,27,'<com.beautywall.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(41,132,'<aj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(42,41,'<com.qWMNqqfr.fPssjlnU: void onBackPressed()>',5,'a',NULL),(43,133,'<com.dqivbfhifq.wafnvjq.mkmoves$7: void onClick(android.view.View)>',6,'a',NULL),(44,132,'<aj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(45,42,'<com.beautywall.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(46,4,'<com.dqivbfhifq.wafnvjq.mk2win: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(47,30,'<com.nbadunkwonderful.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(48,58,'<com.beautywall.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(49,6,'<com.dqivbfhifq.wafnvjq.mk3win: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(50,134,'<com.dqivbfhifq.wafnvjq.mkmoves$4: void onClick(android.view.View)>',6,'a',NULL),(51,65,'<com.nbadunkwonderful.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(52,135,'<au: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(53,136,'<com.qWMNqqfr.ah: void run()>',25,'s',NULL),(54,34,'<com.qWMNqqfr.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',31,'a',0),(55,57,'<com.nbadunkwonderful.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(56,34,'<com.qWMNqqfr.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',36,'a',NULL),(57,24,'<com.beautywall.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(58,12,'<com.nbadunkwonderful.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(59,1,'<com.dqivbfhifq.wafnvjq.mkmoves: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(60,137,'<com.qWMNqqfr.af: void run()>',8,'s',NULL),(61,138,'<ba: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(62,139,'<cp: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(63,52,'<com.qWMNqqfr.MDVPJLIVPCm: void c(android.content.Context)>',74,'a',NULL),(64,65,'<com.nbadunkwonderful.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(65,135,'<au: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(66,7,'<com.nbadunkwonderful.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(67,44,'<com.qWMNqqfr.OdQPUGkPEJvgUal: void onCreate(android.os.Bundle)>',67,'a',NULL),(68,31,'<com.beautywall.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(69,30,'<com.nbadunkwonderful.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(70,39,'<com.nbadunkwonderful.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(71,36,'<com.beautywall.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(72,2,'<com.dqivbfhifq.wafnvjq.mk1win: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(73,140,'<dc: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(74,141,'<com.dqivbfhifq.wafnvjq.mkmoves$8: void onClick(android.view.View)>',6,'a',NULL),(75,39,'<com.nbadunkwonderful.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL),(76,1,'<com.dqivbfhifq.wafnvjq.mkmoves: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(77,47,'<com.beautywall.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(78,44,'<com.qWMNqqfr.OdQPUGkPEJvgUal: void a(com.qWMNqqfr.OdQPUGkPEJvgUal,android.content.Context,java.lang.String)>',5,'a',NULL),(79,142,'<at: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(80,132,'<aj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(81,19,'<com.dqivbfhifq.wafnvjq.mkvsdcuwin: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(82,108,'<cc: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(83,73,'<com.beautywall.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(84,14,'<com.dqivbfhifq.wafnvjq.mkdecwin: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(85,129,'<dd: void a(int,boolean)>',10,'s',NULL),(86,143,'<al: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(87,13,'<com.dqivbfhifq.wafnvjq.mkdawin: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(88,27,'<com.beautywall.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(89,3,'<com.nbadunkwonderful.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(90,127,'<cx: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(91,144,'<com.qWMNqqfr.p: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(92,16,'<com.dqivbfhifq.wafnvjq.mkarmwin: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(93,36,'<com.beautywall.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(94,108,'<cc: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(95,4,'<com.dqivbfhifq.wafnvjq.mk2win: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(96,18,'<com.nbadunkwonderful.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(97,62,'<com.beautywall.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(98,41,'<com.qWMNqqfr.fPssjlnU: void b()>',45,'a',NULL),(99,12,'<com.nbadunkwonderful.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(100,145,'<com.dqivbfhifq.wafnvjq.mkmoves$1: void onClick(android.view.View)>',6,'a',NULL),(101,3,'<com.nbadunkwonderful.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(102,24,'<com.beautywall.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(103,8,'<com.dqivbfhifq.wafnvjq.mktwin: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(104,23,'<com.nbadunkwonderful.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(105,68,'<com.beautywall.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(106,146,'<com.dqivbfhifq.wafnvjq.mkmoves$10: void onClick(android.view.View)>',6,'a',NULL),(107,57,'<com.nbadunkwonderful.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(108,139,'<cp: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(109,147,'<bn: void onClick(android.view.View)>',6,'a',NULL),(110,6,'<com.dqivbfhifq.wafnvjq.mk3win: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(111,111,'<bj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(112,131,'<de: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(113,41,'<com.qWMNqqfr.fPssjlnU: void a()>',3,'a',NULL),(114,128,'<j: void onClick(android.view.View)>',205,'a',NULL),(115,139,'<cp: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(116,148,'<com.dqivbfhifq.wafnvjq.mkmoves$3: void onClick(android.view.View)>',6,'a',NULL),(117,2,'<com.dqivbfhifq.wafnvjq.mk1win: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(118,53,'<com.beautywall.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(119,30,'<com.nbadunkwonderful.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(120,13,'<com.dqivbfhifq.wafnvjq.mkdawin: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(121,73,'<com.beautywall.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(122,32,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(123,149,'<bl: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(124,111,'<bj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(125,135,'<au: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(126,108,'<cc: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(127,53,'<com.beautywall.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(128,30,'<com.nbadunkwonderful.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(129,10,'<com.dqivbfhifq.wafnvjq.mk4win: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(130,31,'<com.beautywall.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(131,65,'<com.nbadunkwonderful.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(132,14,'<com.dqivbfhifq.wafnvjq.mkdecwin: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(133,62,'<com.beautywall.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(134,35,'<com.nbadunkwonderful.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(135,21,'<com.dqivbfhifq.wafnvjq.mk9win: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(136,53,'<com.beautywall.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(137,21,'<com.dqivbfhifq.wafnvjq.mk9win: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(138,150,'<cg: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(139,8,'<com.dqivbfhifq.wafnvjq.mktwin: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(140,123,'<ca: void onClick(android.view.View)>',224,'a',NULL),(141,138,'<ba: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(142,151,'<com.dqivbfhifq.wafnvjq.mkmoves$9: void onClick(android.view.View)>',6,'a',NULL),(143,50,'<com.nbadunkwonderful.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(144,49,'<com.qWMNqqfr.astfMtFaOBRT: void a(java.lang.String)>',10,'a',NULL),(145,31,'<com.beautywall.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(146,34,'<com.qWMNqqfr.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',21,'a',NULL),(147,152,'<dt: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(148,153,'<com.dqivbfhifq.wafnvjq.mkmoves$2: void onClick(android.view.View)>',6,'a',NULL),(149,154,'<ck: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(150,35,'<com.nbadunkwonderful.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(151,10,'<com.dqivbfhifq.wafnvjq.mk4win: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(152,131,'<de: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(153,155,'<cd: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(154,156,'<com.dqivbfhifq.wafnvjq.mkmoves$6: void onClick(android.view.View)>',6,'a',NULL),(155,131,'<de: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(156,39,'<com.nbadunkwonderful.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(157,19,'<com.dqivbfhifq.wafnvjq.mkvsdcuwin: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(158,41,'<com.qWMNqqfr.fPssjlnU: void b()>',55,'a',NULL),(159,16,'<com.dqivbfhifq.wafnvjq.mkarmwin: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(160,157,'<com.dqivbfhifq.wafnvjq.mkmoves$5: void onClick(android.view.View)>',6,'a',NULL),(161,158,'<com.bringmore.xiongying.mainA: void onCreate(android.os.Bundle)>',5,'a',NULL),(162,173,'<com.mt.airad.MultiAD: void _$2()>',7,'r',NULL),(163,175,'<com.tAkKa.ukfJcLptQgJjml: void a()>',3,'a',NULL),(164,174,'<com.tAkKa.ToLfMCuwehGNtc: void a(java.lang.String)>',10,'a',NULL),(165,178,'<pl.idreams.skyforcereloaded.d: void run()>',58,'a',NULL),(166,179,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(167,178,'<pl.idreams.skyforcereloaded.d: void run()>',203,'a',NULL),(168,168,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(169,174,'<com.tAkKa.ToLfMCuwehGNtc: void a()>',3,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,6),(2,6,8),(3,7,8),(4,8,8),(5,9,8),(6,10,8),(7,11,8),(8,12,8),(9,13,8),(10,19,6),(11,20,10),(12,23,11),(13,24,8),(14,25,6),(15,26,8),(16,27,8),(17,28,13),(18,30,8),(19,31,8),(20,33,6),(21,34,8),(22,35,8),(23,37,6),(24,38,8),(25,39,17),(26,40,18),(27,41,19),(28,42,20),(29,48,1),(30,49,1),(31,52,1),(32,54,1),(33,58,6),(34,59,3),(35,61,20),(36,64,21),(37,70,1),(38,72,1),(39,74,22),(40,79,23),(41,82,24),(42,84,1),(43,86,1),(44,91,1),(45,94,1),(46,95,6),(47,98,6),(48,99,6),(49,104,1),(50,106,6),(51,107,1),(52,116,23),(53,117,1),(54,118,6),(55,119,1),(56,120,25),(57,126,6),(58,128,6),(59,137,6),(60,138,6),(61,141,6),(62,144,6),(63,147,6),(64,152,13),(65,153,26),(66,154,6),(67,156,6),(68,157,6),(69,159,26),(70,164,22),(71,167,1),(72,168,1),(73,172,6),(74,174,1),(75,175,18),(76,176,1),(77,178,1),(78,179,27),(79,180,6),(80,181,1),(81,182,10),(82,183,6),(83,185,6),(84,187,6),(85,191,6),(86,194,3),(87,200,28),(88,202,6),(89,203,6),(90,205,6),(91,206,6),(92,207,26),(93,208,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,48,1),(2,49,2),(3,52,1),(4,54,2),(5,70,1),(6,72,2),(7,84,1),(8,86,2),(9,91,1),(10,94,2),(11,104,1),(12,107,2),(13,117,1),(14,119,2),(15,153,4),(16,156,4),(17,159,4),(18,167,1),(19,168,2),(20,174,1),(21,176,2),(22,178,1),(23,181,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/dvqoqkag/ssqugttlls/Main'),(2,2,'com/nd/dianjin/activity/OfferAppActivity'),(3,3,'com/moreheat/game/deathdiary/GameActivity'),(4,5,'com/eihrphrhim/nuneuwhsorrdejdk_sbfk/NameEntryActivity'),(5,14,'com/eihrphrhim/nuneuwhsorrdejdk_sbfk/StartScreenActivity'),(6,15,'com/eihrphrhim/nuneuwhsorrdejdk_sbfk/RaceFinishedSendMessageDialog'),(7,16,'com/nbadunkwonderful/Myhall'),(8,17,'com/beautywall/GameService'),(9,18,'com/nbadunkwonderful/GameInfo'),(10,20,'com/beautywall/GameService'),(11,21,'com/nbadunkwonderful/GameService'),(12,22,'com/eihrphrhim/nuneuwhsorrdejdk_sbfk/RaceAFriendDialog'),(13,23,'com/beautywall/GameService'),(14,28,'com/beautywall/GameService'),(15,29,'com/nbadunkwonderful/Myhall'),(16,32,'com/nbadunkwonderful/GameInfo'),(17,36,'com/nbadunkwonderful/GameService'),(18,39,'com/nbadunkwonderful/GameService'),(19,42,'com/nbadunkwonderful/GameService'),(20,44,'com/eihrphrhim/nuneuwhsorrdejdk_sbfk/PreferencesDialog'),(21,45,'com/nbadunkwonderful/GameInfo'),(22,43,'com/beautywall/GameInfo'),(23,47,'com/beautywall/Myhall'),(24,46,'com/eihrphrhim/nuneuwhsorrdejdk_sbfk/CraigsRaceLandscapeActivity'),(25,51,'com/beautywall/GameInfo'),(26,50,'com/eihrphrhim/nuneuwhsorrdejdk_sbfk/CraigsRaceLandscapeActivity'),(27,53,'com/beautywall/qimg/ImageTestActivity'),(28,55,'com/nd/dianjin/activity/OfferAppActivity'),(29,56,'com/beautywall/Myhall'),(30,57,'com/nbadunkwonderful/GameInfo'),(31,60,'com/nbadunkwonderful/GameService'),(32,61,'com/beautywall/GameService'),(33,63,'com/dqivbfhifq/wafnvjq/mkmoves'),(34,62,'com/nbadunkwonderful/Myhall'),(35,64,'com/beautywall/GameService'),(36,65,'com/dqivbfhifq/wafnvjq/mkdecwin'),(37,66,'com/nbadunkwonderful/GameInfo'),(38,67,'com/beautywall/GameInfo'),(39,68,'com/dqivbfhifq/wafnvjq/helpwin'),(40,69,'com/nbadunkwonderful/GameService'),(41,71,'com/dqivbfhifq/wafnvjq/helpwin'),(42,73,'com/dqivbfhifq/wafnvjq/mktwin'),(43,74,'com/nbadunkwonderful/GameService'),(44,76,'com/qWMNqqfr/mbwriEecLIQTii'),(45,75,'com/beautywall/Myhall'),(46,77,'com/nbadunkwonderful/GameInfo'),(47,78,'com/qWMNqqfr/fPssjlnU'),(48,79,'com/beautywall/GameService'),(49,80,'com/nbadunkwonderful/GameInfo'),(50,81,'com/dqivbfhifq/wafnvjq/aboutwin'),(51,82,'com/beautywall/GameService'),(52,83,'com/qWMNqqfr/mbwriEecLIQTii'),(53,85,'com/beautywall/Myhall'),(54,88,'com/nbadunkwonderful/GameService'),(55,89,'com/beautywall/GameInfo'),(56,87,'com/qWMNqqfr/OdQPUGkPEJvgUal'),(57,90,'com/nbadunkwonderful/Myhall'),(58,92,'com/beautywall/GameInfo'),(59,93,'com/nbadunkwonderful/Myhall'),(60,96,'com/beautywall/GameService'),(61,97,'com/dqivbfhifq/wafnvjq/aboutwin'),(62,100,'com/dqivbfhifq/wafnvjq/mkarmwin'),(63,102,'com/dqivbfhifq/wafnvjq/helpwin'),(64,103,'com/beautywall/GameService'),(65,101,'com/nbadunkwonderful/GameAlertDialog'),(66,105,'com/beautywall/Myhall'),(67,108,'com/dqivbfhifq/wafnvjq/helpwin'),(68,110,'com/beautywall/GameService'),(69,109,'com/nbadunkwonderful/Myhall'),(70,111,'com/dqivbfhifq/wafnvjq/helpwin'),(71,112,'com/beautywall/GameService'),(72,114,'com/dqivbfhifq/wafnvjq/aboutwin'),(73,113,'com/nbadunkwonderful/Myhall'),(74,115,'com/beautywall/GameService'),(75,116,'com/nbadunkwonderful/GameService'),(76,120,'com/nbadunkwonderful/GameService'),(77,121,'com/dqivbfhifq/wafnvjq/helpwin'),(78,122,'com/beautywall/GameInfo'),(79,123,'com/nbadunkwonderful/Myhall'),(80,124,'com/dqivbfhifq/wafnvjq/aboutwin'),(81,125,'com/nbadunkwonderful/GameService'),(82,127,'com/dqivbfhifq/wafnvjq/mkmoves'),(83,129,'com/nbadunkwonderful/GameService'),(84,130,'com/dqivbfhifq/wafnvjq/mk1win'),(85,131,'com/nbadunkwonderful/GameService'),(86,132,'com/beautywall/GameService'),(87,133,'com/dqivbfhifq/wafnvjq/helpwin'),(88,134,'com/nbadunkwonderful/GameService'),(89,135,'com/beautywall/GameService'),(90,136,'com/dqivbfhifq/wafnvjq/mk9win'),(91,139,'com/nbadunkwonderful/qimg/ImageTestActivity'),(92,140,'com/dqivbfhifq/wafnvjq/aboutwin'),(93,143,'com/dqivbfhifq/wafnvjq/mkmoves'),(94,142,'com/beautywall/Myhall'),(95,146,'com/dqivbfhifq/wafnvjq/mk3win'),(96,145,'com/beautywall/GameInfo'),(97,148,'com/beautywall/Myhall'),(98,149,'com/dqivbfhifq/wafnvjq/helpwin'),(99,150,'com/nbadunkwonderful/Myhall'),(100,151,'com/dqivbfhifq/wafnvjq/helpwin'),(101,152,'com/beautywall/GameService'),(102,155,'com/nbadunkwonderful/Myhall'),(103,158,'com/nbadunkwonderful/Myhall'),(104,160,'com/beautywall/GameService'),(105,161,'com/nbadunkwonderful/Myhall'),(106,162,'com/dqivbfhifq/wafnvjq/helpwin'),(107,163,'com/beautywall/Myhall'),(108,164,'com/nbadunkwonderful/GameService'),(109,165,'com/dqivbfhifq/wafnvjq/aboutwin'),(110,166,'com/beautywall/GameAlertDialog'),(111,169,'com/dqivbfhifq/wafnvjq/helpwin'),(112,170,'com/dqivbfhifq/wafnvjq/aboutwin'),(113,171,'com/beautywall/Myhall'),(114,173,'com/dqivbfhifq/wafnvjq/aboutwin'),(115,177,'com/dqivbfhifq/wafnvjq/mkvsdcuwin'),(116,179,'com/nbadunkwonderful/GameService'),(117,182,'com/nbadunkwonderful/GameService'),(118,184,'com/qWMNqqfr/fPssjlnU'),(119,186,'com/dqivbfhifq/wafnvjq/mk2win'),(120,188,'com/nbadunkwonderful/GameInfo'),(121,189,'com/dqivbfhifq/wafnvjq/aboutwin'),(122,190,'com/beautywall/Myhall'),(123,192,'com/dqivbfhifq/wafnvjq/mkdawin'),(124,193,'com/beautywall/Myhall'),(125,195,'com/dqivbfhifq/wafnvjq/aboutwin'),(126,196,'com/dqivbfhifq/wafnvjq/mkmoves'),(127,197,'com/dqivbfhifq/wafnvjq/aboutwin'),(128,198,'com/dqivbfhifq/wafnvjq/mk4win'),(129,199,'pl/idreams/skyforcereloaded/game'),(130,201,'com/bringmore/xiongying/mainA'),(131,204,'com/nd/dianjin/activity/OfferAppActivity'),(132,209,'com/bringmore/xiongying/mainA');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,25,2),(3,33,3),(4,37,4),(5,40,5),(6,58,6),(7,95,7),(8,98,8),(9,99,9),(10,106,10),(11,118,11),(12,126,12),(13,128,13),(14,137,14),(15,138,15),(16,141,16),(17,144,17),(18,147,18),(19,153,19),(20,154,20),(21,156,21),(22,157,22),(23,159,23),(24,172,24),(25,175,25),(26,180,26),(27,183,27),(28,185,28),(29,187,29),(30,191,30),(31,202,31),(32,203,32),(33,205,33),(34,206,34),(35,207,35),(36,208,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'oriention'),(2,6,'android.intent.extra.INTENT'),(3,7,'android.intent.extra.INTENT'),(4,8,'android.intent.extra.TITLE'),(5,8,'android.intent.extra.INTENT'),(6,9,'android.intent.extra.INTENT'),(7,10,'android.intent.extra.TITLE'),(8,10,'android.intent.extra.INTENT'),(9,11,'android.intent.extra.INTENT'),(10,12,'android.intent.extra.TITLE'),(11,12,'android.intent.extra.INTENT'),(12,13,'android.intent.extra.TITLE'),(13,13,'android.intent.extra.INTENT'),(14,15,'ourScore'),(15,15,'weWon'),(16,15,'timeDifference'),(17,15,'opponentScore'),(18,15,'opponentName'),(19,16,'clicked'),(20,18,'title'),(21,19,'sms_body'),(22,24,'android.intent.extra.INTENT'),(23,26,'android.intent.extra.INTENT'),(24,27,'android.intent.extra.TITLE'),(25,27,'android.intent.extra.INTENT'),(26,30,'android.intent.extra.INTENT'),(27,31,'android.intent.extra.TITLE'),(28,31,'android.intent.extra.INTENT'),(29,34,'android.intent.extra.INTENT'),(30,35,'android.intent.extra.TITLE'),(31,35,'android.intent.extra.INTENT'),(32,38,'android.intent.extra.TITLE'),(33,38,'android.intent.extra.INTENT'),(34,41,'android.intent.extra.TEXT'),(35,41,'android.intent.extra.SUBJECT'),(36,43,'id'),(37,43,'from_alert'),(38,43,'detail_flag'),(39,46,'carType'),(40,46,'trackNum'),(41,46,'raceAgainstFriend'),(42,50,'trackNum'),(43,50,'carType'),(44,50,'friendIsLocalRace'),(45,50,'raceAgainstFriend'),(46,50,'friendId'),(47,50,'friendCreateRace'),(48,55,'oriention'),(49,56,'clicked'),(50,57,'id'),(51,57,'from_alert'),(52,57,'detail_flag'),(53,62,'title'),(54,62,'nextclassid'),(55,62,'clicked'),(56,66,'title'),(57,75,'title'),(58,75,'nextclassid'),(59,75,'clicked'),(60,80,'title'),(61,85,'title'),(62,87,'apkVersion'),(63,85,'nextclassid'),(64,87,'apkURL'),(65,85,'clicked'),(66,87,'apkInfo'),(67,87,'packageName'),(68,87,'apkSoftID'),(69,87,'apkTitle'),(70,87,'iconURL'),(71,87,'apkSize'),(72,89,'title'),(73,87,'imageURL'),(74,90,'nextclassid'),(75,90,'clicked'),(76,101,'title'),(77,101,'btn_txt'),(78,101,'need_adb_flag'),(79,101,'cont'),(80,101,'close_flag'),(81,105,'title'),(82,105,'nextclassid'),(83,105,'clicked'),(84,109,'clicked'),(85,113,'title'),(86,113,'nextclassid'),(87,113,'clicked'),(88,122,'title'),(89,123,'clicked'),(90,142,'clicked'),(91,145,'title'),(92,155,'title'),(93,155,'nextclassid'),(94,155,'clicked'),(95,158,'clicked'),(96,163,'nextclassid'),(97,163,'clicked'),(98,166,'title'),(99,166,'btn_txt'),(100,166,'need_adb_flag'),(101,166,'cont'),(102,166,'close_flag'),(103,190,'clicked'),(104,193,'clicked'),(105,200,'adViewLeaveParameter'),(106,204,'oriention');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,3,1),(2,4,1),(3,5,1),(4,6,1),(5,7,1),(6,8,1),(7,9,1),(8,10,1),(9,12,2),(10,13,1),(11,14,3),(12,15,1),(13,16,1),(14,17,1),(15,18,4),(16,19,1),(17,20,1),(18,21,3),(19,22,5),(20,23,1),(21,24,1),(22,25,2),(23,26,1),(24,27,5),(25,28,7),(26,29,1),(27,30,1),(28,31,1),(29,32,9),(30,33,7),(31,34,1),(32,35,1),(33,36,6),(34,37,2),(35,38,1),(36,39,12),(37,40,4),(38,40,5),(39,41,2),(40,42,14),(41,43,15),(42,44,16),(43,45,2),(44,46,14),(45,47,14),(46,49,1),(47,50,2);
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
INSERT INTO `IFCategories` VALUES (1,7,1),(2,8,1),(3,16,1),(4,20,1),(5,23,1),(6,24,1),(7,26,1),(8,31,2),(9,31,1),(10,32,3),(11,36,3),(12,36,4),(13,37,5),(14,38,1),(15,45,5),(16,46,5),(17,47,5),(18,49,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,12,'package',NULL,NULL,NULL,NULL,NULL),(2,25,'package',NULL,NULL,NULL,NULL,NULL),(3,36,'gamesnsschema','sina',NULL,NULL,NULL,NULL),(4,36,'gamesnsschema','tencent',NULL,NULL,NULL,NULL),(5,36,'gamesnsschema','kaixin',NULL,NULL,NULL,NULL),(6,36,'gamesnsschema','renren',NULL,NULL,NULL,NULL),(7,37,'package',NULL,NULL,NULL,NULL,NULL),(8,41,'package',NULL,NULL,NULL,NULL,NULL),(9,42,'package',NULL,NULL,NULL,NULL,NULL),(10,45,'package',NULL,NULL,NULL,NULL,NULL),(11,46,'package',NULL,NULL,NULL,NULL,NULL),(12,47,'package',NULL,NULL,NULL,NULL,NULL),(13,50,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,4,'application','vnd.android.package-archive'),(2,19,'vnd.android-dir','mms-sms'),(3,33,'application','vnd.android.package-archive'),(4,37,'application','vnd.android.package-archive'),(5,41,'message','rfc822'),(6,58,'application','vnd.android.package-archive'),(7,99,'application','vnd.android.package-archive'),(8,118,'application','vnd.android.package-archive'),(9,144,'application','vnd.android.package-archive'),(10,147,'application','vnd.android.package-archive'),(11,154,'application','vnd.android.package-archive'),(12,159,'(.*)','(.*)'),(13,172,'application','vnd.android.package-archive'),(14,180,'application','vnd.android.package-archive'),(15,185,'application','vnd.android.package-archive'),(16,187,'application','vnd.android.package-archive'),(17,191,'application','vnd.android.package-archive'),(18,202,'application','vnd.android.package-archive'),(19,207,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.dvqoqkag.ssqugttlls'),(2,2,'com.dvqoqkag.ssqugttlls'),(3,3,'com.dvqoqkag.ssqugttlls'),(4,5,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk'),(5,14,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk'),(6,15,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk'),(7,16,'com.nbadunkwonderful'),(8,17,'com.beautywall'),(9,18,'com.nbadunkwonderful'),(10,21,'com.nbadunkwonderful'),(11,20,'com.beautywall'),(12,22,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk'),(13,23,'com.beautywall'),(14,28,'com.beautywall'),(15,29,'com.nbadunkwonderful'),(16,32,'com.nbadunkwonderful'),(17,36,'com.nbadunkwonderful'),(18,39,'com.nbadunkwonderful'),(19,42,'com.nbadunkwonderful'),(20,44,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk'),(21,45,'com.nbadunkwonderful'),(22,43,'com.beautywall'),(23,47,'com.beautywall'),(24,48,'(.*)'),(25,46,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk'),(26,49,''),(27,51,'com.beautywall'),(28,52,''),(29,50,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk'),(30,53,'com.beautywall'),(31,54,'(.*)'),(32,55,'com.eihrphrhim.nuneuwhsorrdejdk_sbfk'),(33,56,'com.beautywall'),(34,57,'com.nbadunkwonderful'),(35,60,'com.nbadunkwonderful'),(36,61,'com.beautywall'),(37,63,'com.dqivbfhifq.wafnvjq'),(38,62,'com.nbadunkwonderful'),(39,64,'com.beautywall'),(40,65,'com.dqivbfhifq.wafnvjq'),(41,66,'com.nbadunkwonderful'),(42,67,'com.beautywall'),(43,68,'com.dqivbfhifq.wafnvjq'),(44,69,'com.nbadunkwonderful'),(45,70,'(.*)'),(46,71,'com.dqivbfhifq.wafnvjq'),(47,72,'(.*)'),(48,73,'com.dqivbfhifq.wafnvjq'),(49,74,'com.nbadunkwonderful'),(50,76,'com.dqivbfhifq.wafnvjq'),(51,75,'com.beautywall'),(52,77,'com.nbadunkwonderful'),(53,78,'com.dqivbfhifq.wafnvjq'),(54,79,'com.beautywall'),(55,80,'com.nbadunkwonderful'),(56,81,'com.dqivbfhifq.wafnvjq'),(57,82,'com.beautywall'),(58,83,'com.dqivbfhifq.wafnvjq'),(59,84,'NULL-CONSTANT'),(60,86,'NULL-CONSTANT'),(61,85,'com.beautywall'),(62,88,'com.nbadunkwonderful'),(63,89,'com.beautywall'),(64,87,'com.dqivbfhifq.wafnvjq'),(65,90,'com.nbadunkwonderful'),(66,91,'(.*)'),(67,92,'com.beautywall'),(68,93,'com.nbadunkwonderful'),(69,94,'(.*)'),(70,96,'com.beautywall'),(71,97,'com.dqivbfhifq.wafnvjq'),(72,100,'com.dqivbfhifq.wafnvjq'),(73,102,'com.dqivbfhifq.wafnvjq'),(74,103,'com.beautywall'),(75,101,'com.nbadunkwonderful'),(76,104,'(.*)'),(77,107,'(.*)'),(78,105,'com.beautywall'),(79,108,'com.dqivbfhifq.wafnvjq'),(80,110,'com.beautywall'),(81,109,'com.nbadunkwonderful'),(82,111,'com.dqivbfhifq.wafnvjq'),(83,112,'com.beautywall'),(84,114,'com.dqivbfhifq.wafnvjq'),(85,113,'com.nbadunkwonderful'),(86,115,'com.beautywall'),(87,116,'com.nbadunkwonderful'),(88,117,'NULL-CONSTANT'),(89,119,'NULL-CONSTANT'),(90,120,'com.nbadunkwonderful'),(91,121,'com.dqivbfhifq.wafnvjq'),(92,122,'com.beautywall'),(93,123,'com.nbadunkwonderful'),(94,124,'com.dqivbfhifq.wafnvjq'),(95,125,'com.nbadunkwonderful'),(96,127,'com.dqivbfhifq.wafnvjq'),(97,129,'com.nbadunkwonderful'),(98,130,'com.dqivbfhifq.wafnvjq'),(99,131,'com.nbadunkwonderful'),(100,132,'com.beautywall'),(101,133,'com.dqivbfhifq.wafnvjq'),(102,134,'com.nbadunkwonderful'),(103,135,'com.beautywall'),(104,136,'com.dqivbfhifq.wafnvjq'),(105,139,'com.nbadunkwonderful'),(106,140,'com.dqivbfhifq.wafnvjq'),(107,143,'com.dqivbfhifq.wafnvjq'),(108,142,'com.beautywall'),(109,145,'com.beautywall'),(110,146,'com.dqivbfhifq.wafnvjq'),(111,148,'com.beautywall'),(112,149,'com.dqivbfhifq.wafnvjq'),(113,150,'com.nbadunkwonderful'),(114,151,'com.dqivbfhifq.wafnvjq'),(115,152,'com.beautywall'),(116,155,'com.nbadunkwonderful'),(117,158,'com.nbadunkwonderful'),(118,160,'com.beautywall'),(119,161,'com.nbadunkwonderful'),(120,162,'com.dqivbfhifq.wafnvjq'),(121,163,'com.beautywall'),(122,164,'com.nbadunkwonderful'),(123,165,'com.dqivbfhifq.wafnvjq'),(124,167,'(.*)'),(125,166,'com.beautywall'),(126,169,'com.dqivbfhifq.wafnvjq'),(127,168,'(.*)'),(128,171,'com.beautywall'),(129,170,'com.dqivbfhifq.wafnvjq'),(130,173,'com.dqivbfhifq.wafnvjq'),(131,174,'(.*)'),(132,176,''),(133,177,'com.dqivbfhifq.wafnvjq'),(134,178,''),(135,179,'com.nbadunkwonderful'),(136,181,'(.*)'),(137,182,'com.nbadunkwonderful'),(138,184,'com.dqivbfhifq.wafnvjq'),(139,186,'com.dqivbfhifq.wafnvjq'),(140,188,'com.nbadunkwonderful'),(141,189,'com.dqivbfhifq.wafnvjq'),(142,190,'com.beautywall'),(143,192,'com.dqivbfhifq.wafnvjq'),(144,193,'com.beautywall'),(145,195,'com.dqivbfhifq.wafnvjq'),(146,196,'com.dqivbfhifq.wafnvjq'),(147,197,'com.dqivbfhifq.wafnvjq'),(148,198,'com.dqivbfhifq.wafnvjq'),(149,199,'com.htgvrmmhu.vmwghcscp'),(150,201,'com.htgvrmmhu.vmwghcscp'),(151,204,'com.htgvrmmhu.vmwghcscp'),(152,209,'com.htgvrmmhu.vmwghcscp');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,11,0),(3,12,0),(4,18,0),(5,23,0),(6,30,0),(7,28,0),(8,34,0),(9,35,0),(10,36,0),(11,40,0),(12,38,0),(13,42,0),(14,43,0),(15,48,0),(16,51,0),(17,54,0),(18,55,0),(19,59,0),(20,60,0),(21,64,0),(22,66,0),(23,67,0),(24,68,0),(25,71,0),(26,72,0),(27,73,0),(28,86,0),(29,91,0),(30,92,0),(31,94,0),(32,94,0),(33,94,0),(34,95,0),(35,96,0),(36,101,0),(37,73,0),(38,106,0),(39,113,0),(40,114,0),(41,115,0),(42,116,0),(43,117,0),(44,118,0),(45,66,0),(46,73,0),(47,66,0),(48,120,0),(49,137,0),(50,139,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,1,0),(7,6,1,0),(8,6,1,0),(9,6,1,0),(10,6,1,0),(11,6,1,0),(12,6,1,0),(13,6,1,0),(14,7,0,0),(15,8,0,0),(16,9,0,0),(17,10,0,0),(18,11,0,0),(19,12,1,0),(20,13,0,0),(21,14,0,0),(22,15,0,0),(23,13,0,0),(24,16,1,0),(25,17,1,0),(26,16,1,0),(27,16,1,0),(28,18,0,0),(29,19,0,0),(30,16,1,0),(31,16,1,0),(32,20,0,0),(33,21,1,0),(34,16,1,0),(35,16,1,0),(36,22,0,0),(37,21,1,0),(38,16,1,0),(39,23,0,0),(40,24,1,0),(41,25,1,0),(42,23,0,0),(43,26,0,0),(44,27,0,0),(45,28,0,0),(46,29,0,0),(47,31,0,0),(48,30,1,0),(49,30,1,0),(50,29,0,0),(51,32,0,0),(52,30,1,0),(53,33,0,0),(54,30,1,0),(55,34,0,0),(56,35,0,0),(57,36,0,0),(58,37,1,0),(59,38,1,0),(60,39,0,0),(61,40,0,0),(62,41,0,0),(63,42,0,0),(64,40,0,0),(65,43,0,0),(66,44,0,0),(67,45,0,0),(68,46,0,0),(69,47,0,0),(70,48,1,0),(71,49,0,0),(72,48,1,0),(73,50,0,0),(74,51,0,0),(75,52,0,0),(76,53,0,0),(77,55,0,0),(78,56,0,0),(79,57,0,0),(80,58,0,0),(81,59,0,0),(82,57,0,0),(83,60,0,0),(84,61,1,0),(85,62,0,0),(86,61,1,0),(87,63,0,0),(88,64,0,0),(89,65,0,0),(90,66,0,0),(91,67,1,0),(92,68,0,0),(93,69,0,0),(94,67,1,0),(95,70,1,0),(96,71,0,0),(97,72,0,0),(98,70,1,0),(99,73,1,0),(100,74,0,0),(101,75,0,0),(102,76,0,0),(103,77,0,0),(104,78,1,0),(105,79,0,0),(106,80,1,0),(107,78,1,0),(108,81,0,0),(109,82,0,0),(110,83,0,0),(111,84,0,0),(112,85,0,0),(113,86,0,0),(114,87,0,0),(115,88,0,0),(116,89,0,0),(117,90,1,0),(118,91,1,0),(119,90,1,0),(120,89,0,0),(121,92,0,0),(122,93,0,0),(123,94,0,0),(124,95,0,0),(125,96,0,0),(126,97,1,0),(127,98,0,0),(128,97,1,0),(129,99,0,0),(130,100,0,0),(131,101,0,0),(132,102,0,0),(133,103,0,0),(134,104,0,0),(135,105,0,0),(136,106,0,0),(137,107,1,0),(138,108,1,0),(139,109,0,0),(140,110,0,0),(141,111,1,0),(142,112,0,0),(143,113,0,0),(144,114,1,0),(145,115,0,0),(146,116,0,0),(147,114,1,0),(148,118,0,0),(149,117,0,0),(150,119,0,0),(151,120,0,0),(152,121,0,0),(153,122,1,0),(154,123,1,0),(155,124,0,0),(156,122,1,0),(157,125,1,0),(158,126,0,0),(159,122,1,0),(160,127,0,0),(161,128,0,0),(162,129,0,0),(163,130,0,0),(164,131,0,0),(165,132,0,0),(166,133,0,0),(167,134,1,0),(168,134,1,0),(169,135,0,0),(170,137,0,0),(171,136,0,0),(172,138,1,0),(173,139,0,0),(174,140,1,0),(175,141,1,0),(176,140,1,0),(177,142,0,0),(178,140,1,0),(179,143,0,0),(180,144,1,0),(181,140,1,0),(182,143,0,0),(183,145,1,0),(184,146,0,0),(185,147,1,0),(186,148,0,0),(187,149,1,0),(188,150,0,0),(189,151,0,0),(190,152,0,0),(191,153,1,0),(192,154,0,0),(193,155,0,0),(194,156,1,0),(195,157,0,0),(196,158,0,0),(197,159,0,0),(198,160,0,0),(199,161,0,0),(200,162,1,0),(201,163,0,0),(202,164,1,0),(203,165,1,0),(204,166,0,0),(205,167,1,0),(206,168,1,0),(207,168,1,0),(208,168,1,0),(209,169,0,0);
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
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_CACHE_FILESYSTEM'),(16,'android.permission.ACCESS_FINE_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(15,'android.permission.ACCESS_WIFI_STATE'),(21,'android.permission.CAMERA'),(23,'android.permission.CHANGE_CONFIGURATION'),(22,'android.permission.CHANGE_WIFI_STATE'),(12,'android.permission.DELETE_CACHE_FILES'),(19,'android.permission.GET_ACCOUNTS'),(4,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(20,'android.permission.KILL_BACKGROUND_PROCESSES'),(11,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.SET_WALLPAPER'),(3,'android.permission.SYSTEM_ALERT_WINDOW'),(14,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(18,'android.permission.WRITE_APN_SETTINGS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(13,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://',NULL,NULL,NULL),(25,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://',NULL,NULL,NULL),(29,NULL,NULL,'file://',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'http://www.idreams.pl/redirect/id_skyforcereloaded_android_full.html',NULL,NULL,NULL),(33,NULL,NULL,'http://www.idreams.pl/redirect/id_skyforcereloaded_android_market.html',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,1,2),(4,2,2),(5,1,3),(6,2,5),(7,1,4),(8,2,6),(9,1,5),(10,2,7),(11,1,6),(12,2,8),(13,1,7),(14,2,9),(15,2,10),(16,2,11),(17,2,12),(18,2,13),(19,3,5),(20,3,6),(21,3,7),(22,3,14),(23,3,15),(24,4,1),(25,4,2),(26,4,5),(27,4,6),(28,4,7),(29,4,8),(30,4,9),(31,4,10),(32,4,11),(33,4,12),(34,4,13),(35,5,17),(36,5,16),(37,5,5),(38,5,6),(39,5,7),(40,5,14),(41,5,15),(42,6,1),(43,6,2),(44,6,4),(45,6,5),(46,6,6),(47,6,7),(48,6,9),(49,6,13),(50,6,15),(51,6,17),(52,6,19),(53,6,18),(54,6,21),(55,6,20),(56,6,23),(57,6,22),(58,7,17),(59,7,1),(60,7,5),(61,7,6),(62,7,7),(63,7,14),(64,7,15);
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

-- Dump completed on 2015-10-09  0:39:38
