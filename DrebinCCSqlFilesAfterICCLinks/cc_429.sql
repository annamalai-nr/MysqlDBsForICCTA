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
) ENGINE=InnoDB AUTO_INCREMENT=1525 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,199,121,2,NULL),(2,153,86,2,NULL),(3,153,120,2,NULL),(4,156,86,2,NULL),(5,156,120,2,NULL),(6,91,86,2,NULL),(7,91,120,2,NULL),(8,94,86,2,NULL),(9,94,120,2,NULL),(10,104,86,2,NULL),(11,104,120,2,NULL),(12,107,86,2,NULL),(13,107,120,2,NULL),(14,25,86,2,NULL),(15,25,120,2,NULL),(16,167,86,2,NULL),(17,167,120,2,NULL),(18,168,86,2,NULL),(19,168,120,2,NULL),(20,95,86,2,NULL),(21,95,120,2,NULL),(22,98,86,2,NULL),(23,98,120,2,NULL),(24,194,86,2,NULL),(25,194,120,2,NULL),(26,137,86,2,NULL),(27,137,120,2,NULL),(28,183,86,2,NULL),(29,183,120,2,NULL),(30,70,86,2,NULL),(31,70,120,2,NULL),(32,72,86,2,NULL),(33,72,120,2,NULL),(34,59,86,2,NULL),(35,59,120,2,NULL),(36,126,86,2,NULL),(37,126,120,2,NULL),(38,128,86,2,NULL),(39,128,120,2,NULL),(40,6,86,2,NULL),(41,6,120,2,NULL),(42,7,86,2,NULL),(43,7,120,2,NULL),(44,8,86,2,NULL),(45,8,120,2,NULL),(46,9,86,2,NULL),(47,9,120,2,NULL),(48,10,86,2,NULL),(49,10,120,2,NULL),(50,11,86,2,NULL),(51,11,120,2,NULL),(52,12,86,2,NULL),(53,12,120,2,NULL),(54,13,86,2,NULL),(55,13,120,2,NULL),(56,24,86,2,NULL),(57,24,120,2,NULL),(58,26,86,2,NULL),(59,26,120,2,NULL),(60,27,86,2,NULL),(61,27,120,2,NULL),(62,30,86,2,NULL),(63,30,120,2,NULL),(64,31,86,2,NULL),(65,31,120,2,NULL),(66,34,86,2,NULL),(67,34,120,2,NULL),(68,35,86,2,NULL),(69,35,120,2,NULL),(70,38,86,2,NULL),(71,38,120,2,NULL),(72,206,86,2,NULL),(73,206,120,2,NULL),(74,208,86,2,NULL),(75,208,120,2,NULL),(76,200,86,2,NULL),(77,200,120,2,NULL),(78,153,91,2,NULL),(79,206,1,2,NULL),(80,156,91,2,NULL),(81,208,1,2,NULL),(82,91,91,2,NULL),(83,206,34,2,NULL),(84,94,91,2,NULL),(85,208,34,2,NULL),(86,104,91,2,NULL),(87,206,55,2,NULL),(88,107,91,2,NULL),(89,208,55,2,NULL),(90,25,91,2,NULL),(91,206,12,2,NULL),(92,167,91,2,NULL),(93,208,12,2,NULL),(94,168,91,2,NULL),(95,206,18,2,NULL),(96,95,91,2,NULL),(97,208,18,2,NULL),(98,98,91,2,NULL),(99,206,23,2,NULL),(100,194,91,2,NULL),(101,208,23,2,NULL),(102,137,91,2,NULL),(103,206,30,2,NULL),(104,183,91,2,NULL),(105,208,30,2,NULL),(106,70,91,2,NULL),(107,206,35,2,NULL),(108,72,91,2,NULL),(109,208,35,2,NULL),(110,59,91,2,NULL),(111,206,43,2,NULL),(112,126,91,2,NULL),(113,208,43,2,NULL),(114,128,91,2,NULL),(115,206,51,2,NULL),(116,6,91,2,NULL),(117,208,51,2,NULL),(118,7,91,2,NULL),(119,206,60,2,NULL),(120,8,91,2,NULL),(121,208,60,2,NULL),(122,9,91,2,NULL),(123,206,66,2,NULL),(124,10,91,2,NULL),(125,208,66,2,NULL),(126,11,91,2,NULL),(127,206,11,2,NULL),(128,12,91,2,NULL),(129,208,11,2,NULL),(130,13,91,2,NULL),(131,206,28,2,NULL),(132,24,91,2,NULL),(133,208,28,2,NULL),(134,26,91,2,NULL),(135,206,36,2,NULL),(136,27,91,2,NULL),(137,208,36,2,NULL),(138,30,91,2,NULL),(139,206,42,2,NULL),(140,31,91,2,NULL),(141,208,42,2,NULL),(142,34,91,2,NULL),(143,206,48,2,NULL),(144,35,91,2,NULL),(145,208,48,2,NULL),(146,38,91,2,NULL),(147,206,54,2,NULL),(148,206,91,2,NULL),(149,208,54,2,NULL),(150,208,91,2,NULL),(151,206,59,2,NULL),(152,200,91,2,NULL),(153,208,59,2,NULL),(154,153,92,2,NULL),(155,206,64,2,NULL),(156,156,92,2,NULL),(157,208,64,2,NULL),(158,91,92,2,NULL),(159,206,68,2,NULL),(160,94,92,2,NULL),(161,208,68,2,NULL),(162,104,92,2,NULL),(163,206,72,2,NULL),(164,107,92,2,NULL),(165,208,72,2,NULL),(166,25,92,2,NULL),(167,206,73,2,NULL),(168,167,92,2,NULL),(169,208,73,2,NULL),(170,168,92,2,NULL),(171,206,40,2,NULL),(172,95,92,2,NULL),(173,208,40,2,NULL),(174,98,92,2,NULL),(175,206,67,2,NULL),(176,194,92,2,NULL),(177,208,67,2,NULL),(178,137,92,2,NULL),(179,206,92,2,NULL),(180,183,92,2,NULL),(181,208,92,2,NULL),(182,70,92,2,NULL),(183,206,94,2,NULL),(184,72,92,2,NULL),(185,208,94,2,NULL),(186,59,92,2,NULL),(187,206,95,2,NULL),(188,126,92,2,NULL),(189,208,95,2,NULL),(190,128,92,2,NULL),(191,206,96,2,NULL),(192,6,92,2,NULL),(193,208,96,2,NULL),(194,7,92,2,NULL),(195,206,106,2,NULL),(196,8,92,2,NULL),(197,208,106,2,NULL),(198,9,92,2,NULL),(199,206,113,2,NULL),(200,10,92,2,NULL),(201,208,113,2,NULL),(202,11,92,2,NULL),(203,206,114,2,NULL),(204,12,92,2,NULL),(205,208,114,2,NULL),(206,13,92,2,NULL),(207,206,117,2,NULL),(208,24,92,2,NULL),(209,208,117,2,NULL),(210,26,92,2,NULL),(211,206,118,2,NULL),(212,27,92,2,NULL),(213,208,118,2,NULL),(214,30,92,2,NULL),(215,206,137,2,NULL),(216,31,92,2,NULL),(217,208,137,2,NULL),(218,34,92,2,NULL),(219,200,1,2,NULL),(220,35,92,2,NULL),(221,200,34,2,NULL),(222,38,92,2,NULL),(223,200,55,2,NULL),(224,200,92,2,NULL),(225,200,12,2,NULL),(226,153,94,2,NULL),(227,200,18,2,NULL),(228,156,94,2,NULL),(229,200,23,2,NULL),(230,91,94,2,NULL),(231,200,30,2,NULL),(232,94,94,2,NULL),(233,200,35,2,NULL),(234,104,94,2,NULL),(235,200,43,2,NULL),(236,107,94,2,NULL),(237,200,51,2,NULL),(238,25,94,2,NULL),(239,200,60,2,NULL),(240,167,94,2,NULL),(241,200,66,2,NULL),(242,168,94,2,NULL),(243,200,11,2,NULL),(244,95,94,2,NULL),(245,200,28,2,NULL),(246,98,94,2,NULL),(247,200,36,2,NULL),(248,194,94,2,NULL),(249,200,42,2,NULL),(250,137,94,2,NULL),(251,200,48,2,NULL),(252,183,94,2,NULL),(253,200,54,2,NULL),(254,70,94,2,NULL),(255,200,59,2,NULL),(256,72,94,2,NULL),(257,200,64,2,NULL),(258,59,94,2,NULL),(259,200,68,2,NULL),(260,126,94,2,NULL),(261,200,72,2,NULL),(262,128,94,2,NULL),(263,200,73,2,NULL),(264,6,94,2,NULL),(265,200,40,2,NULL),(266,7,94,2,NULL),(267,200,67,2,NULL),(268,8,94,2,NULL),(269,200,94,2,NULL),(270,9,94,2,NULL),(271,200,95,2,NULL),(272,10,94,2,NULL),(273,200,96,2,NULL),(274,11,94,2,NULL),(275,200,106,2,NULL),(276,12,94,2,NULL),(277,200,113,2,NULL),(278,13,94,2,NULL),(279,200,114,2,NULL),(280,24,94,2,NULL),(281,200,117,2,NULL),(282,26,94,2,NULL),(283,200,118,2,NULL),(284,27,94,2,NULL),(285,200,137,2,NULL),(286,30,94,2,NULL),(287,209,120,2,NULL),(288,31,94,2,NULL),(289,201,120,2,NULL),(290,34,94,2,NULL),(291,153,137,2,NULL),(292,35,94,2,NULL),(293,156,137,2,NULL),(294,38,94,2,NULL),(295,91,137,2,NULL),(296,153,95,2,NULL),(297,94,137,2,NULL),(298,156,95,2,NULL),(299,104,137,2,NULL),(300,91,95,2,NULL),(301,107,137,2,NULL),(302,94,95,2,NULL),(303,25,137,2,NULL),(304,104,95,2,NULL),(305,167,137,2,NULL),(306,107,95,2,NULL),(307,168,137,2,NULL),(308,25,95,2,NULL),(309,95,137,2,NULL),(310,167,95,2,NULL),(311,98,137,2,NULL),(312,168,95,2,NULL),(313,194,137,2,NULL),(314,95,95,2,NULL),(315,137,137,2,NULL),(316,98,95,2,NULL),(317,183,137,2,NULL),(318,194,95,2,NULL),(319,70,137,2,NULL),(320,137,95,2,NULL),(321,72,137,2,NULL),(322,183,95,2,NULL),(323,59,137,2,NULL),(324,70,95,2,NULL),(325,126,137,2,NULL),(326,72,95,2,NULL),(327,128,137,2,NULL),(328,59,95,2,NULL),(329,6,137,2,NULL),(330,126,95,2,NULL),(331,7,137,2,NULL),(332,128,95,2,NULL),(333,8,137,2,NULL),(334,6,95,2,NULL),(335,9,137,2,NULL),(336,7,95,2,NULL),(337,10,137,2,NULL),(338,8,95,2,NULL),(339,11,137,2,NULL),(340,9,95,2,NULL),(341,12,137,2,NULL),(342,10,95,2,NULL),(343,13,137,2,NULL),(344,11,95,2,NULL),(345,24,137,2,NULL),(346,12,95,2,NULL),(347,26,137,2,NULL),(348,13,95,2,NULL),(349,27,137,2,NULL),(350,24,95,2,NULL),(351,30,137,2,NULL),(352,26,95,2,NULL),(353,31,137,2,NULL),(354,27,95,2,NULL),(355,34,137,2,NULL),(356,30,95,2,NULL),(357,35,137,2,NULL),(358,31,95,2,NULL),(359,38,137,2,NULL),(360,34,95,2,NULL),(361,35,95,2,NULL),(362,38,95,2,NULL),(363,153,96,2,NULL),(364,156,96,2,NULL),(365,91,96,2,NULL),(366,94,96,2,NULL),(367,104,96,2,NULL),(368,107,96,2,NULL),(369,25,96,2,NULL),(370,167,96,2,NULL),(371,168,96,2,NULL),(372,95,96,2,NULL),(373,98,96,2,NULL),(374,194,96,2,NULL),(375,137,96,2,NULL),(376,183,96,2,NULL),(377,70,96,2,NULL),(378,72,96,2,NULL),(379,59,96,2,NULL),(380,126,96,2,NULL),(381,128,96,2,NULL),(382,6,96,2,NULL),(383,7,96,2,NULL),(384,8,96,2,NULL),(385,9,96,2,NULL),(386,10,96,2,NULL),(387,11,96,2,NULL),(388,12,96,2,NULL),(389,13,96,2,NULL),(390,24,96,2,NULL),(391,26,96,2,NULL),(392,27,96,2,NULL),(393,30,96,2,NULL),(394,31,96,2,NULL),(395,34,96,2,NULL),(396,35,96,2,NULL),(397,38,96,2,NULL),(398,153,106,2,NULL),(399,156,106,2,NULL),(400,91,106,2,NULL),(401,94,106,2,NULL),(402,104,106,2,NULL),(403,107,106,2,NULL),(404,25,106,2,NULL),(405,167,106,2,NULL),(406,168,106,2,NULL),(407,95,106,2,NULL),(408,98,106,2,NULL),(409,194,106,2,NULL),(410,137,106,2,NULL),(411,183,106,2,NULL),(412,70,106,2,NULL),(413,72,106,2,NULL),(414,59,106,2,NULL),(415,126,106,2,NULL),(416,128,106,2,NULL),(417,6,106,2,NULL),(418,7,106,2,NULL),(419,8,106,2,NULL),(420,9,106,2,NULL),(421,10,106,2,NULL),(422,11,106,2,NULL),(423,12,106,2,NULL),(424,13,106,2,NULL),(425,24,106,2,NULL),(426,26,106,2,NULL),(427,27,106,2,NULL),(428,30,106,2,NULL),(429,31,106,2,NULL),(430,34,106,2,NULL),(431,35,106,2,NULL),(432,38,106,2,NULL),(433,153,113,2,NULL),(434,156,113,2,NULL),(435,91,113,2,NULL),(436,94,113,2,NULL),(437,104,113,2,NULL),(438,107,113,2,NULL),(439,25,113,2,NULL),(440,167,113,2,NULL),(441,168,113,2,NULL),(442,95,113,2,NULL),(443,98,113,2,NULL),(444,194,113,2,NULL),(445,137,113,2,NULL),(446,183,113,2,NULL),(447,70,113,2,NULL),(448,72,113,2,NULL),(449,59,113,2,NULL),(450,126,113,2,NULL),(451,128,113,2,NULL),(452,6,113,2,NULL),(453,7,113,2,NULL),(454,8,113,2,NULL),(455,9,113,2,NULL),(456,10,113,2,NULL),(457,11,113,2,NULL),(458,12,113,2,NULL),(459,13,113,2,NULL),(460,24,113,2,NULL),(461,26,113,2,NULL),(462,27,113,2,NULL),(463,30,113,2,NULL),(464,31,113,2,NULL),(465,34,113,2,NULL),(466,35,113,2,NULL),(467,38,113,2,NULL),(468,153,114,2,NULL),(469,156,114,2,NULL),(470,91,114,2,NULL),(471,94,114,2,NULL),(472,104,114,2,NULL),(473,107,114,2,NULL),(474,25,114,2,NULL),(475,167,114,2,NULL),(476,168,114,2,NULL),(477,95,114,2,NULL),(478,98,114,2,NULL),(479,194,114,2,NULL),(480,137,114,2,NULL),(481,183,114,2,NULL),(482,70,114,2,NULL),(483,72,114,2,NULL),(484,59,114,2,NULL),(485,126,114,2,NULL),(486,128,114,2,NULL),(487,6,114,2,NULL),(488,7,114,2,NULL),(489,8,114,2,NULL),(490,9,114,2,NULL),(491,10,114,2,NULL),(492,11,114,2,NULL),(493,12,114,2,NULL),(494,13,114,2,NULL),(495,24,114,2,NULL),(496,26,114,2,NULL),(497,27,114,2,NULL),(498,30,114,2,NULL),(499,31,114,2,NULL),(500,34,114,2,NULL),(501,35,114,2,NULL),(502,38,114,2,NULL),(503,153,117,2,NULL),(504,156,117,2,NULL),(505,91,117,2,NULL),(506,94,117,2,NULL),(507,104,117,2,NULL),(508,107,117,2,NULL),(509,25,117,2,NULL),(510,167,117,2,NULL),(511,168,117,2,NULL),(512,95,117,2,NULL),(513,98,117,2,NULL),(514,194,117,2,NULL),(515,137,117,2,NULL),(516,183,117,2,NULL),(517,70,117,2,NULL),(518,72,117,2,NULL),(519,59,117,2,NULL),(520,126,117,2,NULL),(521,128,117,2,NULL),(522,6,117,2,NULL),(523,7,117,2,NULL),(524,8,117,2,NULL),(525,9,117,2,NULL),(526,10,117,2,NULL),(527,11,117,2,NULL),(528,12,117,2,NULL),(529,13,117,2,NULL),(530,24,117,2,NULL),(531,26,117,2,NULL),(532,27,117,2,NULL),(533,30,117,2,NULL),(534,31,117,2,NULL),(535,34,117,2,NULL),(536,35,117,2,NULL),(537,38,117,2,NULL),(538,153,118,2,NULL),(539,156,118,2,NULL),(540,91,118,2,NULL),(541,94,118,2,NULL),(542,104,118,2,NULL),(543,107,118,2,NULL),(544,25,118,2,NULL),(545,167,118,2,NULL),(546,168,118,2,NULL),(547,95,118,2,NULL),(548,98,118,2,NULL),(549,194,118,2,NULL),(550,137,118,2,NULL),(551,183,118,2,NULL),(552,70,118,2,NULL),(553,72,118,2,NULL),(554,59,118,2,NULL),(555,126,118,2,NULL),(556,128,118,2,NULL),(557,6,118,2,NULL),(558,7,118,2,NULL),(559,8,118,2,NULL),(560,9,118,2,NULL),(561,10,118,2,NULL),(562,11,118,2,NULL),(563,12,118,2,NULL),(564,13,118,2,NULL),(565,24,118,2,NULL),(566,26,118,2,NULL),(567,27,118,2,NULL),(568,30,118,2,NULL),(569,31,118,2,NULL),(570,34,118,2,NULL),(571,35,118,2,NULL),(572,38,118,2,NULL),(573,153,11,2,NULL),(574,156,11,2,NULL),(575,91,11,2,NULL),(576,94,11,2,NULL),(577,104,11,2,NULL),(578,107,11,2,NULL),(579,25,11,2,NULL),(580,167,11,2,NULL),(581,168,11,2,NULL),(582,95,11,2,NULL),(583,98,11,2,NULL),(584,194,11,2,NULL),(585,137,11,2,NULL),(586,183,11,2,NULL),(587,70,11,2,NULL),(588,72,11,2,NULL),(589,59,11,2,NULL),(590,126,11,2,NULL),(591,128,11,2,NULL),(592,6,11,2,NULL),(593,7,11,2,NULL),(594,8,11,2,NULL),(595,9,11,2,NULL),(596,10,11,2,NULL),(597,11,11,2,NULL),(598,12,11,2,NULL),(599,13,11,2,NULL),(600,24,11,2,NULL),(601,26,11,2,NULL),(602,27,11,2,NULL),(603,30,11,2,NULL),(604,31,11,2,NULL),(605,34,11,2,NULL),(606,35,11,2,NULL),(607,38,11,2,NULL),(608,1,11,2,NULL),(609,153,28,2,NULL),(610,156,28,2,NULL),(611,91,28,2,NULL),(612,94,28,2,NULL),(613,104,28,2,NULL),(614,107,28,2,NULL),(615,25,28,2,NULL),(616,167,28,2,NULL),(617,168,28,2,NULL),(618,95,28,2,NULL),(619,98,28,2,NULL),(620,194,28,2,NULL),(621,137,28,2,NULL),(622,183,28,2,NULL),(623,70,28,2,NULL),(624,72,28,2,NULL),(625,59,28,2,NULL),(626,126,28,2,NULL),(627,128,28,2,NULL),(628,6,28,2,NULL),(629,7,28,2,NULL),(630,8,28,2,NULL),(631,9,28,2,NULL),(632,10,28,2,NULL),(633,11,28,2,NULL),(634,12,28,2,NULL),(635,13,28,2,NULL),(636,24,28,2,NULL),(637,26,28,2,NULL),(638,27,28,2,NULL),(639,30,28,2,NULL),(640,31,28,2,NULL),(641,34,28,2,NULL),(642,35,28,2,NULL),(643,38,28,2,NULL),(644,81,29,2,NULL),(645,102,26,2,NULL),(646,153,1,2,NULL),(647,156,1,2,NULL),(648,91,1,2,NULL),(649,94,1,2,NULL),(650,104,1,2,NULL),(651,107,1,2,NULL),(652,25,1,2,NULL),(653,167,1,2,NULL),(654,168,1,2,NULL),(655,95,1,2,NULL),(656,98,1,2,NULL),(657,194,1,2,NULL),(658,137,1,2,NULL),(659,183,1,2,NULL),(660,70,1,2,NULL),(661,72,1,2,NULL),(662,59,1,2,NULL),(663,126,1,2,NULL),(664,128,1,2,NULL),(665,6,1,2,NULL),(666,7,1,2,NULL),(667,8,1,2,NULL),(668,9,1,2,NULL),(669,10,1,2,NULL),(670,11,1,2,NULL),(671,12,1,2,NULL),(672,13,1,2,NULL),(673,24,1,2,NULL),(674,26,1,2,NULL),(675,27,1,2,NULL),(676,30,1,2,NULL),(677,31,1,2,NULL),(678,34,1,2,NULL),(679,35,1,2,NULL),(680,38,1,2,NULL),(681,97,29,2,NULL),(682,149,26,2,NULL),(683,68,26,2,NULL),(684,124,29,2,NULL),(685,71,26,2,NULL),(686,140,29,2,NULL),(687,133,26,2,NULL),(688,173,29,2,NULL),(689,162,26,2,NULL),(690,189,29,2,NULL),(691,114,29,2,NULL),(692,151,26,2,NULL),(693,111,26,2,NULL),(694,165,29,2,NULL),(695,121,26,2,NULL),(696,197,29,2,NULL),(697,108,26,2,NULL),(698,195,29,2,NULL),(699,169,26,2,NULL),(700,170,29,2,NULL),(701,153,34,2,NULL),(702,156,34,2,NULL),(703,153,55,2,NULL),(704,156,55,2,NULL),(705,153,12,2,NULL),(706,156,12,2,NULL),(707,153,18,2,NULL),(708,156,18,2,NULL),(709,153,23,2,NULL),(710,156,23,2,NULL),(711,153,30,2,NULL),(712,156,30,2,NULL),(713,153,35,2,NULL),(714,156,35,2,NULL),(715,153,43,2,NULL),(716,156,43,2,NULL),(717,153,51,2,NULL),(718,156,51,2,NULL),(719,153,60,2,NULL),(720,156,60,2,NULL),(721,153,66,2,NULL),(722,156,66,2,NULL),(723,153,36,2,NULL),(724,156,36,2,NULL),(725,153,42,2,NULL),(726,156,42,2,NULL),(727,153,48,2,NULL),(728,156,48,2,NULL),(729,153,54,2,NULL),(730,156,54,2,NULL),(731,153,59,2,NULL),(732,156,59,2,NULL),(733,153,64,2,NULL),(734,156,64,2,NULL),(735,153,68,2,NULL),(736,156,68,2,NULL),(737,153,72,2,NULL),(738,156,72,2,NULL),(739,153,73,2,NULL),(740,156,73,2,NULL),(741,153,40,2,NULL),(742,156,40,2,NULL),(743,153,67,2,NULL),(744,156,67,2,NULL),(745,78,41,2,NULL),(746,184,41,2,NULL),(747,91,34,2,NULL),(748,94,34,2,NULL),(749,104,34,2,NULL),(750,107,34,2,NULL),(751,25,34,2,NULL),(752,167,34,2,NULL),(753,168,34,2,NULL),(754,95,34,2,NULL),(755,98,34,2,NULL),(756,194,34,2,NULL),(757,137,34,2,NULL),(758,183,34,2,NULL),(759,70,34,2,NULL),(760,72,34,2,NULL),(761,59,34,2,NULL),(762,126,34,2,NULL),(763,128,34,2,NULL),(764,6,34,2,NULL),(765,7,34,2,NULL),(766,8,34,2,NULL),(767,9,34,2,NULL),(768,10,34,2,NULL),(769,11,34,2,NULL),(770,12,34,2,NULL),(771,13,34,2,NULL),(772,24,34,2,NULL),(773,26,34,2,NULL),(774,27,34,2,NULL),(775,30,34,2,NULL),(776,31,34,2,NULL),(777,34,34,2,NULL),(778,35,34,2,NULL),(779,38,34,2,NULL),(780,63,1,2,NULL),(781,127,1,2,NULL),(782,143,1,2,NULL),(783,196,1,2,NULL),(784,91,55,2,NULL),(785,94,55,2,NULL),(786,104,55,2,NULL),(787,107,55,2,NULL),(788,91,12,2,NULL),(789,94,12,2,NULL),(790,104,12,2,NULL),(791,107,12,2,NULL),(792,91,18,2,NULL),(793,94,18,2,NULL),(794,104,18,2,NULL),(795,107,18,2,NULL),(796,91,23,2,NULL),(797,94,23,2,NULL),(798,104,23,2,NULL),(799,107,23,2,NULL),(800,91,30,2,NULL),(801,94,30,2,NULL),(802,104,30,2,NULL),(803,107,30,2,NULL),(804,91,35,2,NULL),(805,94,35,2,NULL),(806,104,35,2,NULL),(807,107,35,2,NULL),(808,91,43,2,NULL),(809,94,43,2,NULL),(810,104,43,2,NULL),(811,107,43,2,NULL),(812,91,51,2,NULL),(813,94,51,2,NULL),(814,104,51,2,NULL),(815,107,51,2,NULL),(816,91,60,2,NULL),(817,94,60,2,NULL),(818,104,60,2,NULL),(819,107,60,2,NULL),(820,91,66,2,NULL),(821,94,66,2,NULL),(822,104,66,2,NULL),(823,107,66,2,NULL),(824,91,36,2,NULL),(825,94,36,2,NULL),(826,104,36,2,NULL),(827,107,36,2,NULL),(828,91,42,2,NULL),(829,94,42,2,NULL),(830,104,42,2,NULL),(831,107,42,2,NULL),(832,91,48,2,NULL),(833,94,48,2,NULL),(834,104,48,2,NULL),(835,107,48,2,NULL),(836,91,54,2,NULL),(837,94,54,2,NULL),(838,104,54,2,NULL),(839,107,54,2,NULL),(840,91,59,2,NULL),(841,94,59,2,NULL),(842,104,59,2,NULL),(843,107,59,2,NULL),(844,91,64,2,NULL),(845,94,64,2,NULL),(846,104,64,2,NULL),(847,107,64,2,NULL),(848,91,68,2,NULL),(849,94,68,2,NULL),(850,104,68,2,NULL),(851,107,68,2,NULL),(852,91,72,2,NULL),(853,94,72,2,NULL),(854,104,72,2,NULL),(855,107,72,2,NULL),(856,91,73,2,NULL),(857,94,73,2,NULL),(858,104,73,2,NULL),(859,107,73,2,NULL),(860,91,40,2,NULL),(861,94,40,2,NULL),(862,104,40,2,NULL),(863,107,40,2,NULL),(864,91,67,2,NULL),(865,94,67,2,NULL),(866,104,67,2,NULL),(867,107,67,2,NULL),(868,87,44,2,NULL),(869,25,55,2,NULL),(870,167,55,2,NULL),(871,168,55,2,NULL),(872,95,55,2,NULL),(873,98,55,2,NULL),(874,194,55,2,NULL),(875,137,55,2,NULL),(876,183,55,2,NULL),(877,70,55,2,NULL),(878,72,55,2,NULL),(879,59,55,2,NULL),(880,126,55,2,NULL),(881,128,55,2,NULL),(882,6,55,2,NULL),(883,7,55,2,NULL),(884,8,55,2,NULL),(885,9,55,2,NULL),(886,10,55,2,NULL),(887,11,55,2,NULL),(888,12,55,2,NULL),(889,13,55,2,NULL),(890,24,55,2,NULL),(891,26,55,2,NULL),(892,27,55,2,NULL),(893,30,55,2,NULL),(894,31,55,2,NULL),(895,34,55,2,NULL),(896,35,55,2,NULL),(897,38,55,2,NULL),(898,5,53,2,NULL),(899,15,56,2,NULL),(900,44,50,2,NULL),(901,46,45,2,NULL),(902,50,45,2,NULL),(903,25,40,2,NULL),(904,6,12,2,NULL),(905,7,12,2,NULL),(906,8,12,2,NULL),(907,9,12,2,NULL),(908,10,12,2,NULL),(909,11,12,2,NULL),(910,12,12,2,NULL),(911,13,12,2,NULL),(912,6,18,2,NULL),(913,7,18,2,NULL),(914,8,18,2,NULL),(915,9,18,2,NULL),(916,10,18,2,NULL),(917,11,18,2,NULL),(918,12,18,2,NULL),(919,13,18,2,NULL),(920,6,23,2,NULL),(921,7,23,2,NULL),(922,8,23,2,NULL),(923,9,23,2,NULL),(924,10,23,2,NULL),(925,11,23,2,NULL),(926,12,23,2,NULL),(927,13,23,2,NULL),(928,6,30,2,NULL),(929,7,30,2,NULL),(930,8,30,2,NULL),(931,9,30,2,NULL),(932,10,30,2,NULL),(933,11,30,2,NULL),(934,12,30,2,NULL),(935,13,30,2,NULL),(936,6,35,2,NULL),(937,7,35,2,NULL),(938,8,35,2,NULL),(939,9,35,2,NULL),(940,10,35,2,NULL),(941,11,35,2,NULL),(942,12,35,2,NULL),(943,13,35,2,NULL),(944,167,40,2,NULL),(945,168,40,2,NULL),(946,95,40,2,NULL),(947,98,40,2,NULL),(948,194,40,2,NULL),(949,6,43,2,NULL),(950,7,43,2,NULL),(951,8,43,2,NULL),(952,9,43,2,NULL),(953,10,43,2,NULL),(954,11,43,2,NULL),(955,12,43,2,NULL),(956,13,43,2,NULL),(957,6,51,2,NULL),(958,7,51,2,NULL),(959,8,51,2,NULL),(960,9,51,2,NULL),(961,10,51,2,NULL),(962,11,51,2,NULL),(963,12,51,2,NULL),(964,13,51,2,NULL),(965,137,40,2,NULL),(966,6,60,2,NULL),(967,7,60,2,NULL),(968,8,60,2,NULL),(969,9,60,2,NULL),(970,10,60,2,NULL),(971,11,60,2,NULL),(972,12,60,2,NULL),(973,13,60,2,NULL),(974,6,66,2,NULL),(975,7,66,2,NULL),(976,8,66,2,NULL),(977,9,66,2,NULL),(978,10,66,2,NULL),(979,11,66,2,NULL),(980,12,66,2,NULL),(981,13,66,2,NULL),(982,183,40,2,NULL),(983,6,36,2,NULL),(984,7,36,2,NULL),(985,8,36,2,NULL),(986,9,36,2,NULL),(987,10,36,2,NULL),(988,11,36,2,NULL),(989,12,36,2,NULL),(990,13,36,2,NULL),(991,6,42,2,NULL),(992,7,42,2,NULL),(993,8,42,2,NULL),(994,9,42,2,NULL),(995,10,42,2,NULL),(996,11,42,2,NULL),(997,12,42,2,NULL),(998,13,42,2,NULL),(999,6,48,2,NULL),(1000,7,48,2,NULL),(1001,8,48,2,NULL),(1002,9,48,2,NULL),(1003,10,48,2,NULL),(1004,11,48,2,NULL),(1005,12,48,2,NULL),(1006,13,48,2,NULL),(1007,6,54,2,NULL),(1008,7,54,2,NULL),(1009,8,54,2,NULL),(1010,9,54,2,NULL),(1011,10,54,2,NULL),(1012,11,54,2,NULL),(1013,12,54,2,NULL),(1014,13,54,2,NULL),(1015,6,59,2,NULL),(1016,7,59,2,NULL),(1017,8,59,2,NULL),(1018,9,59,2,NULL),(1019,10,59,2,NULL),(1020,11,59,2,NULL),(1021,12,59,2,NULL),(1022,13,59,2,NULL),(1023,70,40,2,NULL),(1024,72,40,2,NULL),(1025,59,40,2,NULL),(1026,126,40,2,NULL),(1027,128,40,2,NULL),(1028,6,64,2,NULL),(1029,7,64,2,NULL),(1030,8,64,2,NULL),(1031,9,64,2,NULL),(1032,10,64,2,NULL),(1033,11,64,2,NULL),(1034,12,64,2,NULL),(1035,13,64,2,NULL),(1036,6,68,2,NULL),(1037,7,68,2,NULL),(1038,8,68,2,NULL),(1039,9,68,2,NULL),(1040,10,68,2,NULL),(1041,11,68,2,NULL),(1042,12,68,2,NULL),(1043,13,68,2,NULL),(1044,6,72,2,NULL),(1045,7,72,2,NULL),(1046,8,72,2,NULL),(1047,9,72,2,NULL),(1048,10,72,2,NULL),(1049,11,72,2,NULL),(1050,12,72,2,NULL),(1051,13,72,2,NULL),(1052,6,73,2,NULL),(1053,7,73,2,NULL),(1054,8,73,2,NULL),(1055,9,73,2,NULL),(1056,10,73,2,NULL),(1057,11,73,2,NULL),(1058,12,73,2,NULL),(1059,13,73,2,NULL),(1060,24,40,2,NULL),(1061,26,40,2,NULL),(1062,27,40,2,NULL),(1063,30,40,2,NULL),(1064,31,40,2,NULL),(1065,34,40,2,NULL),(1066,35,40,2,NULL),(1067,38,40,2,NULL),(1068,6,67,2,NULL),(1069,7,67,2,NULL),(1070,8,67,2,NULL),(1071,9,67,2,NULL),(1072,10,67,2,NULL),(1073,11,67,2,NULL),(1074,12,67,2,NULL),(1075,13,67,2,NULL),(1076,24,12,2,NULL),(1077,26,12,2,NULL),(1078,27,12,2,NULL),(1079,30,12,2,NULL),(1080,31,12,2,NULL),(1081,34,12,2,NULL),(1082,35,12,2,NULL),(1083,38,12,2,NULL),(1084,24,18,2,NULL),(1085,26,18,2,NULL),(1086,27,18,2,NULL),(1087,30,18,2,NULL),(1088,31,18,2,NULL),(1089,34,18,2,NULL),(1090,35,18,2,NULL),(1091,38,18,2,NULL),(1092,24,23,2,NULL),(1093,26,23,2,NULL),(1094,27,23,2,NULL),(1095,30,23,2,NULL),(1096,31,23,2,NULL),(1097,34,23,2,NULL),(1098,35,23,2,NULL),(1099,38,23,2,NULL),(1100,24,30,2,NULL),(1101,26,30,2,NULL),(1102,27,30,2,NULL),(1103,30,30,2,NULL),(1104,31,30,2,NULL),(1105,34,30,2,NULL),(1106,35,30,2,NULL),(1107,38,30,2,NULL),(1108,24,35,2,NULL),(1109,26,35,2,NULL),(1110,27,35,2,NULL),(1111,30,35,2,NULL),(1112,31,35,2,NULL),(1113,34,35,2,NULL),(1114,35,35,2,NULL),(1115,38,35,2,NULL),(1116,24,43,2,NULL),(1117,26,43,2,NULL),(1118,27,43,2,NULL),(1119,30,43,2,NULL),(1120,31,43,2,NULL),(1121,34,43,2,NULL),(1122,35,43,2,NULL),(1123,38,43,2,NULL),(1124,24,51,2,NULL),(1125,26,51,2,NULL),(1126,27,51,2,NULL),(1127,30,51,2,NULL),(1128,31,51,2,NULL),(1129,34,51,2,NULL),(1130,35,51,2,NULL),(1131,38,51,2,NULL),(1132,24,60,2,NULL),(1133,26,60,2,NULL),(1134,27,60,2,NULL),(1135,30,60,2,NULL),(1136,31,60,2,NULL),(1137,34,60,2,NULL),(1138,35,60,2,NULL),(1139,38,60,2,NULL),(1140,24,66,2,NULL),(1141,26,66,2,NULL),(1142,27,66,2,NULL),(1143,30,66,2,NULL),(1144,31,66,2,NULL),(1145,34,66,2,NULL),(1146,35,66,2,NULL),(1147,38,66,2,NULL),(1148,24,36,2,NULL),(1149,26,36,2,NULL),(1150,27,36,2,NULL),(1151,30,36,2,NULL),(1152,31,36,2,NULL),(1153,34,36,2,NULL),(1154,35,36,2,NULL),(1155,38,36,2,NULL),(1156,24,42,2,NULL),(1157,26,42,2,NULL),(1158,27,42,2,NULL),(1159,30,42,2,NULL),(1160,31,42,2,NULL),(1161,34,42,2,NULL),(1162,35,42,2,NULL),(1163,38,42,2,NULL),(1164,24,48,2,NULL),(1165,26,48,2,NULL),(1166,27,48,2,NULL),(1167,30,48,2,NULL),(1168,31,48,2,NULL),(1169,34,48,2,NULL),(1170,35,48,2,NULL),(1171,38,48,2,NULL),(1172,24,54,2,NULL),(1173,26,54,2,NULL),(1174,27,54,2,NULL),(1175,30,54,2,NULL),(1176,31,54,2,NULL),(1177,34,54,2,NULL),(1178,35,54,2,NULL),(1179,38,54,2,NULL),(1180,24,59,2,NULL),(1181,26,59,2,NULL),(1182,27,59,2,NULL),(1183,30,59,2,NULL),(1184,31,59,2,NULL),(1185,34,59,2,NULL),(1186,35,59,2,NULL),(1187,38,59,2,NULL),(1188,24,64,2,NULL),(1189,26,64,2,NULL),(1190,27,64,2,NULL),(1191,30,64,2,NULL),(1192,31,64,2,NULL),(1193,34,64,2,NULL),(1194,35,64,2,NULL),(1195,38,64,2,NULL),(1196,24,68,2,NULL),(1197,26,68,2,NULL),(1198,27,68,2,NULL),(1199,30,68,2,NULL),(1200,31,68,2,NULL),(1201,34,68,2,NULL),(1202,35,68,2,NULL),(1203,38,68,2,NULL),(1204,24,72,2,NULL),(1205,26,72,2,NULL),(1206,27,72,2,NULL),(1207,30,72,2,NULL),(1208,31,72,2,NULL),(1209,34,72,2,NULL),(1210,35,72,2,NULL),(1211,38,72,2,NULL),(1212,24,73,2,NULL),(1213,26,73,2,NULL),(1214,27,73,2,NULL),(1215,30,73,2,NULL),(1216,31,73,2,NULL),(1217,34,73,2,NULL),(1218,35,73,2,NULL),(1219,38,73,2,NULL),(1220,24,67,2,NULL),(1221,26,67,2,NULL),(1222,27,67,2,NULL),(1223,30,67,2,NULL),(1224,31,67,2,NULL),(1225,34,67,2,NULL),(1226,35,67,2,NULL),(1227,38,67,2,NULL),(1228,14,40,2,NULL),(1229,25,67,2,NULL),(1230,167,67,2,NULL),(1231,168,67,2,NULL),(1232,95,67,2,NULL),(1233,98,67,2,NULL),(1234,194,67,2,NULL),(1235,137,67,2,NULL),(1236,183,67,2,NULL),(1237,70,67,2,NULL),(1238,72,67,2,NULL),(1239,59,67,2,NULL),(1240,126,67,2,NULL),(1241,128,67,2,NULL),(1242,79,72,2,NULL),(1243,82,72,2,NULL),(1244,132,72,2,NULL),(1245,61,72,2,NULL),(1246,64,72,2,NULL),(1247,115,72,2,NULL),(1248,92,54,2,NULL),(1249,163,24,2,NULL),(1250,183,12,2,NULL),(1251,183,18,2,NULL),(1252,183,23,2,NULL),(1253,183,30,2,NULL),(1254,183,35,2,NULL),(1255,183,43,2,NULL),(1256,183,51,2,NULL),(1257,183,60,2,NULL),(1258,183,66,2,NULL),(1259,183,36,2,NULL),(1260,183,42,2,NULL),(1261,183,48,2,NULL),(1262,183,54,2,NULL),(1263,183,59,2,NULL),(1264,183,64,2,NULL),(1265,183,68,2,NULL),(1266,183,72,2,NULL),(1267,183,73,2,NULL),(1268,96,72,2,NULL),(1269,122,54,2,NULL),(1270,25,36,2,NULL),(1271,167,36,2,NULL),(1272,168,36,2,NULL),(1273,95,36,2,NULL),(1274,98,36,2,NULL),(1275,194,36,2,NULL),(1276,137,36,2,NULL),(1277,70,36,2,NULL),(1278,72,36,2,NULL),(1279,59,36,2,NULL),(1280,126,36,2,NULL),(1281,128,36,2,NULL),(1282,17,72,2,NULL),(1283,67,54,2,NULL),(1284,25,42,2,NULL),(1285,167,42,2,NULL),(1286,168,42,2,NULL),(1287,95,42,2,NULL),(1288,98,42,2,NULL),(1289,194,42,2,NULL),(1290,137,42,2,NULL),(1291,70,42,2,NULL),(1292,72,42,2,NULL),(1293,59,42,2,NULL),(1294,126,42,2,NULL),(1295,128,42,2,NULL),(1296,103,72,2,NULL),(1297,25,48,2,NULL),(1298,167,48,2,NULL),(1299,168,48,2,NULL),(1300,95,48,2,NULL),(1301,98,48,2,NULL),(1302,194,48,2,NULL),(1303,137,48,2,NULL),(1304,70,48,2,NULL),(1305,72,48,2,NULL),(1306,59,48,2,NULL),(1307,126,48,2,NULL),(1308,128,48,2,NULL),(1309,47,24,2,NULL),(1310,148,24,2,NULL),(1311,160,72,2,NULL),(1312,171,24,2,NULL),(1313,25,54,2,NULL),(1314,167,54,2,NULL),(1315,168,54,2,NULL),(1316,95,54,2,NULL),(1317,98,54,2,NULL),(1318,194,54,2,NULL),(1319,137,54,2,NULL),(1320,70,54,2,NULL),(1321,72,54,2,NULL),(1322,59,54,2,NULL),(1323,126,54,2,NULL),(1324,128,54,2,NULL),(1325,51,54,2,NULL),(1326,25,59,2,NULL),(1327,70,12,2,NULL),(1328,72,12,2,NULL),(1329,70,18,2,NULL),(1330,72,18,2,NULL),(1331,70,23,2,NULL),(1332,72,23,2,NULL),(1333,70,30,2,NULL),(1334,72,30,2,NULL),(1335,70,35,2,NULL),(1336,72,35,2,NULL),(1337,167,59,2,NULL),(1338,168,59,2,NULL),(1339,95,59,2,NULL),(1340,98,59,2,NULL),(1341,194,59,2,NULL),(1342,70,43,2,NULL),(1343,72,43,2,NULL),(1344,70,51,2,NULL),(1345,72,51,2,NULL),(1346,137,59,2,NULL),(1347,70,60,2,NULL),(1348,72,60,2,NULL),(1349,70,66,2,NULL),(1350,72,66,2,NULL),(1351,59,59,2,NULL),(1352,126,59,2,NULL),(1353,128,59,2,NULL),(1354,70,64,2,NULL),(1355,72,64,2,NULL),(1356,70,68,2,NULL),(1357,72,68,2,NULL),(1358,70,72,2,NULL),(1359,72,72,2,NULL),(1360,70,73,2,NULL),(1361,72,73,2,NULL),(1362,43,54,2,NULL),(1363,166,62,2,NULL),(1364,59,12,2,NULL),(1365,126,12,2,NULL),(1366,128,12,2,NULL),(1367,59,18,2,NULL),(1368,126,18,2,NULL),(1369,128,18,2,NULL),(1370,59,23,2,NULL),(1371,126,23,2,NULL),(1372,128,23,2,NULL),(1373,59,30,2,NULL),(1374,126,30,2,NULL),(1375,128,30,2,NULL),(1376,59,35,2,NULL),(1377,126,35,2,NULL),(1378,128,35,2,NULL),(1379,59,43,2,NULL),(1380,126,43,2,NULL),(1381,128,43,2,NULL),(1382,59,51,2,NULL),(1383,126,51,2,NULL),(1384,128,51,2,NULL),(1385,59,60,2,NULL),(1386,126,60,2,NULL),(1387,128,60,2,NULL),(1388,59,66,2,NULL),(1389,126,66,2,NULL),(1390,128,66,2,NULL),(1391,59,64,2,NULL),(1392,126,64,2,NULL),(1393,128,64,2,NULL),(1394,59,68,2,NULL),(1395,126,68,2,NULL),(1396,128,68,2,NULL),(1397,59,72,2,NULL),(1398,126,72,2,NULL),(1399,128,72,2,NULL),(1400,59,73,2,NULL),(1401,126,73,2,NULL),(1402,128,73,2,NULL),(1403,25,64,2,NULL),(1404,167,64,2,NULL),(1405,168,64,2,NULL),(1406,95,64,2,NULL),(1407,98,64,2,NULL),(1408,194,64,2,NULL),(1409,137,64,2,NULL),(1410,20,72,2,NULL),(1411,23,72,2,NULL),(1412,135,72,2,NULL),(1413,25,68,2,NULL),(1414,167,68,2,NULL),(1415,168,68,2,NULL),(1416,95,68,2,NULL),(1417,98,68,2,NULL),(1418,194,68,2,NULL),(1419,137,68,2,NULL),(1420,25,72,2,NULL),(1421,167,72,2,NULL),(1422,168,72,2,NULL),(1423,95,72,2,NULL),(1424,98,72,2,NULL),(1425,194,72,2,NULL),(1426,137,72,2,NULL),(1427,28,72,2,NULL),(1428,110,72,2,NULL),(1429,152,72,2,NULL),(1430,25,73,2,NULL),(1431,167,73,2,NULL),(1432,168,73,2,NULL),(1433,95,73,2,NULL),(1434,98,73,2,NULL),(1435,194,73,2,NULL),(1436,137,73,2,NULL),(1437,116,60,2,NULL),(1438,120,60,2,NULL),(1439,131,60,2,NULL),(1440,36,60,2,NULL),(1441,39,60,2,NULL),(1442,42,60,2,NULL),(1443,32,30,2,NULL),(1444,90,3,2,NULL),(1445,25,12,2,NULL),(1446,25,18,2,NULL),(1447,25,23,2,NULL),(1448,25,30,2,NULL),(1449,25,35,2,NULL),(1450,25,43,2,NULL),(1451,25,51,2,NULL),(1452,25,60,2,NULL),(1453,25,66,2,NULL),(1454,80,30,2,NULL),(1455,129,60,2,NULL),(1456,167,12,2,NULL),(1457,168,12,2,NULL),(1458,95,12,2,NULL),(1459,98,12,2,NULL),(1460,194,12,2,NULL),(1461,137,12,2,NULL),(1462,45,30,2,NULL),(1463,125,60,2,NULL),(1464,167,18,2,NULL),(1465,168,18,2,NULL),(1466,95,18,2,NULL),(1467,98,18,2,NULL),(1468,194,18,2,NULL),(1469,137,18,2,NULL),(1470,134,60,2,NULL),(1471,167,23,2,NULL),(1472,168,23,2,NULL),(1473,95,23,2,NULL),(1474,98,23,2,NULL),(1475,194,23,2,NULL),(1476,137,23,2,NULL),(1477,69,60,2,NULL),(1478,93,3,2,NULL),(1479,150,3,2,NULL),(1480,161,3,2,NULL),(1481,167,30,2,NULL),(1482,168,30,2,NULL),(1483,95,30,2,NULL),(1484,98,30,2,NULL),(1485,194,30,2,NULL),(1486,137,30,2,NULL),(1487,188,30,2,NULL),(1488,95,35,2,NULL),(1489,98,35,2,NULL),(1490,194,35,2,NULL),(1491,167,43,2,NULL),(1492,168,43,2,NULL),(1493,167,51,2,NULL),(1494,168,51,2,NULL),(1495,137,35,2,NULL),(1496,167,60,2,NULL),(1497,168,60,2,NULL),(1498,167,66,2,NULL),(1499,168,66,2,NULL),(1500,57,30,2,NULL),(1501,101,39,2,NULL),(1502,95,43,2,NULL),(1503,98,43,2,NULL),(1504,194,43,2,NULL),(1505,95,51,2,NULL),(1506,98,51,2,NULL),(1507,194,51,2,NULL),(1508,95,60,2,NULL),(1509,98,60,2,NULL),(1510,194,60,2,NULL),(1511,95,66,2,NULL),(1512,98,66,2,NULL),(1513,194,66,2,NULL),(1514,137,43,2,NULL),(1515,21,60,2,NULL),(1516,179,60,2,NULL),(1517,182,60,2,NULL),(1518,137,51,2,NULL),(1519,77,30,2,NULL),(1520,137,60,2,NULL),(1521,137,66,2,NULL),(1522,74,60,2,NULL),(1523,88,60,2,NULL),(1524,164,60,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:27
