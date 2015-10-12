-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_420
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (8,'(.*)'),(23,'.ImageTestActivity'),(20,'.Myhall'),(13,'.Web'),(5,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.CheckinHub'),(11,'android.intent.action.DELETE'),(29,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.PACKAGE_ADDED'),(17,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.SCREEN_OFF'),(9,'android.intent.action.SEARCH'),(15,'android.intent.action.SEND'),(2,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(19,'android.net.conn.CONNECTIVITY_CHANGE'),(28,'com.android.music.musicservicecommand'),(4,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(18,'com.android.vending.INSTALL_REFERRER'),(24,'com.fbbwallpaper.GameBootReceiver'),(27,'com.fbbwallpaper.ImageTestActivity'),(21,'com.fbbwallpaper.Myhall'),(12,'com.fbbwallpaper.Web'),(16,'com.gamesns.GamesnsService'),(22,'com.prototypecar.GameBootReceiver'),(25,'com.prototypecar.ImageTestActivity'),(26,'com.prototypecar.Myhall'),(14,'com.prototypecar.Web');
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
INSERT INTO `Applications` VALUES (1,'owa.bdbcesmdqu.hwmrssc',10041),(2,'com.fbbwallpaper',10019),(3,'com.prototypecar',1014),(4,'ibell.ewvpe',10027),(5,'mit.pdlo',10033),(6,'com.gamesns',154),(7,'com.hoehwquneh.qdbttpnrigofbo',10037);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.BROWSABLE'),(4,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'owa.bdbcesmdqu.hwmrssc.mkmoves'),(2,1,'owa.bdbcesmdqu.hwmrssc.mk1win'),(3,1,'owa.bdbcesmdqu.hwmrssc.mk2win'),(4,1,'owa.bdbcesmdqu.hwmrssc.mk3win'),(5,1,'owa.bdbcesmdqu.hwmrssc.mktwin'),(6,1,'owa.bdbcesmdqu.hwmrssc.mk4win'),(7,1,'owa.bdbcesmdqu.hwmrssc.mkdawin'),(8,1,'owa.bdbcesmdqu.hwmrssc.mkdecwin'),(9,1,'owa.bdbcesmdqu.hwmrssc.mkarmwin'),(10,1,'owa.bdbcesmdqu.hwmrssc.mkvsdcuwin'),(11,1,'owa.bdbcesmdqu.hwmrssc.mk9win'),(12,1,'owa.bdbcesmdqu.hwmrssc.helpwin'),(13,1,'owa.bdbcesmdqu.hwmrssc.aboutwin'),(14,1,'com.google.ads.AdActivity'),(15,1,'com.JFTEAJi.mHrQiHmbMaTrqBe'),(16,3,'com.prototypecar.Myhall'),(17,2,'com.fbbwallpaper.Myhall'),(18,3,'com.prototypecar.Web'),(19,2,'com.fbbwallpaper.Web'),(20,1,'com.JFTEAJi.SbtiFbdhlhCUndj'),(21,4,'ibell.ewvpe.SchottGunn'),(22,3,'com.prototypecar.HomeActivity'),(23,2,'com.fbbwallpaper.HomeActivity'),(24,1,'com.JFTEAJi.kmVbCcQrcd'),(25,3,'com.prototypecar.SortActivity1'),(26,2,'com.fbbwallpaper.SortActivity1'),(27,4,'com.google.ads.AdActivity'),(28,1,'com.JFTEAJi.nrvNjmviLplCU'),(29,3,'com.prototypecar.SortActivity2'),(30,2,'com.fbbwallpaper.SortActivity2'),(31,4,'com.POSsNTwNe.eUPAtpcidi'),(32,1,'com.JFTEAJi.PqILtNeLIU'),(33,4,'com.POSsNTwNe.BTjHoAMAnvRdPhg'),(34,1,'com.JFTEAJi.IeHvRsssaUqJ'),(35,3,'com.prototypecar.SearchActivity'),(36,2,'com.fbbwallpaper.SearchActivity'),(37,1,'com.JFTEAJi.userPermissionReceiver'),(38,4,'com.nd.dianjin.activity.OfferAppActivity'),(39,3,'com.prototypecar.ManagerActivity'),(40,2,'com.fbbwallpaper.ManagerActivity'),(41,4,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(42,3,'com.prototypecar.GameInfo'),(43,2,'com.fbbwallpaper.GameInfo'),(44,5,'mit.pdlo.minesweeperActivity'),(45,3,'com.prototypecar.TableClass'),(46,2,'com.fbbwallpaper.TableClass'),(47,5,'com.FArlmvmm.qsnCfjkBru'),(48,3,'com.prototypecar.GameAlertDialog'),(49,2,'com.fbbwallpaper.GameAlertDialog'),(50,3,'com.prototypecar.DevelopmentSettings'),(51,5,'com.FArlmvmm.akqlsUJkseCiE'),(52,2,'com.fbbwallpaper.DevelopmentSettings'),(53,5,'com.FArlmvmm.ntpDurIhbwNACpL'),(54,2,'com.fbbwallpaper.qimg.ImageTestActivity'),(55,5,'com.FArlmvmm.phDWdatTa'),(56,3,'com.prototypecar.qimg.ImageTestActivity'),(57,5,'com.FArlmvmm.MsVNDlkAlpwabB'),(58,5,'com.FArlmvmm.QBgCWkoDesFPUg'),(59,2,'com.fbbwallpaper.qimg.ADactivity'),(60,3,'com.prototypecar.image.ADactivity'),(61,5,'com.FArlmvmm.userPermissionReceiver'),(62,2,'com.fbbwallpaper.GameService'),(63,3,'com.prototypecar.GameService'),(64,2,'com.fbbwallpaper.GameBootReceiver'),(65,3,'com.prototypecar.GameBootReceiver'),(66,4,'com.nd.dianjin.DianJinPlatform'),(67,4,'u$b'),(68,6,'com.gamesns.activity.BackupAppActivity'),(69,6,'com.gamesns.activity.DiscussionFeed'),(70,6,'com.gamesns.activity.DiscussionForm'),(71,6,'com.gamesns.activity.AddFriends'),(72,6,'com.gamesns.activity.FriendSearch'),(73,6,'com.gamesns.activity.BasicFeed'),(74,6,'com.gamesns.activity.AddFriendsOptions'),(75,6,'com.gamesns.activity.LoginForm'),(76,6,'com.gamesns.activity.RegisterForm'),(77,6,'com.gamesns.activity.SimpleGallery'),(78,6,'com.gamesns.activity.CheckinForm'),(79,6,'com.gamesns.activity.LoginSignupSplash'),(80,6,'com.gamesns.activity.DiscoverTab'),(81,3,'cs'),(82,6,'com.gamesns.activity.DiscoverInstructions'),(83,6,'com.gamesns.activity.GameDetails'),(84,6,'com.gamesns.activity.GameTab'),(85,6,'com.gamesns.activity.FriendsTab'),(86,6,'com.gamesns.activity.YouTab'),(87,6,'com.gamesns.activity.YouTabNew'),(88,3,'cf'),(89,6,'com.gamesns.activity.FriendDetails'),(90,6,'com.gamesns.activity.CheckinHub'),(91,3,'cc'),(92,2,'dl'),(93,5,'com.qwapi.adclient.android.utils.Utils'),(94,6,'com.gamesns.GameList'),(95,6,'com.gamesns.activity.ChatActivity'),(96,6,'com.gamesns.activity.MediaActivity'),(97,6,'com.gamesns.activity.Web'),(98,6,'com.gamesns.activity.WebMediaPlayer'),(99,6,'com.gamesns.activity.UpdateActivity'),(100,6,'com.gamesns.activity.Share'),(101,2,'l'),(102,6,'com.gamesns.activity.AppTrafficActivity'),(103,6,'com.gamesns.activity.VideoDetail'),(104,6,'com.gamesns.activity.GameDetailNewActivity'),(105,2,'ae'),(106,6,'com.gamesns.activity.ModifyUserData'),(107,6,'com.gamesns.activity.HomeActivity'),(108,6,'com.gamesns.activity.DiscussionDetail'),(109,5,'com.FArlmvmm.ab'),(110,6,'com.gamesns.activity.DeskTabActivity'),(111,6,'com.gamesns.activity.GameOnLineList'),(112,3,'ca'),(113,6,'com.gamesns.activity.AllGame'),(114,5,'com.scoreninja.adapter.ScoreNinjaAdapter'),(115,6,'com.gamesns.activity.GameRecommend'),(116,6,'com.gamesns.activity.ManagerGame'),(117,6,'com.nd.dianjin.activity.OfferAppActivity'),(118,6,'com.gamesns.activity.GameRestartAlert'),(119,6,'com.gamesns.GamesnsService'),(120,6,'com.gamesns.receiver.StartupIntentReceiver'),(121,6,'com.gamesns.receiver.PackageAddedReceiver'),(122,3,'af'),(123,6,'com.gamesns.receiver.UpdataBehaviorReceiver'),(124,6,'com.gamesns.receiver.PackageRemovedReceiver'),(125,6,'com.gamesns.receiver.ReferrerReceiver'),(126,2,'ch'),(127,1,'com.JFTEAJi.aa'),(128,6,'com.gamesns.receiver.NetStateReceiver'),(129,3,'ad'),(130,2,'ap'),(131,2,'q'),(132,5,'com.FArlmvmm.ad'),(133,5,'com.FArlmvmm.j'),(134,1,'owa.bdbcesmdqu.hwmrssc.mkmoves$5'),(135,3,'cv'),(136,1,'owa.bdbcesmdqu.hwmrssc.mkmoves$7'),(137,1,'owa.bdbcesmdqu.hwmrssc.mkmoves$2'),(138,3,'ds'),(139,1,'owa.bdbcesmdqu.hwmrssc.mkmoves$10'),(140,2,'co'),(141,1,'owa.bdbcesmdqu.hwmrssc.mkmoves$4'),(142,1,'owa.bdbcesmdqu.hwmrssc.mkmoves$6'),(143,2,'v'),(144,2,'du'),(145,3,'ce'),(146,1,'com.JFTEAJi.ah'),(147,1,'owa.bdbcesmdqu.hwmrssc.mkmoves$8'),(148,1,'owa.bdbcesmdqu.hwmrssc.mkmoves$9'),(149,2,'h'),(150,3,'al'),(151,1,'owa.bdbcesmdqu.hwmrssc.mkmoves$3'),(152,2,'at'),(153,1,'owa.bdbcesmdqu.hwmrssc.mkmoves$1'),(154,1,'com.JFTEAJi.s'),(155,7,'com.hoehwquneh.qdbttpnrigofbo.AppActivity'),(156,7,'com.google.ads.AdActivity'),(157,7,'net.youmi.android.AdActivity'),(158,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(159,7,'com.millennialmedia.android.VideoPlayer'),(160,7,'com.guohead.sdk.GuoheAdActivity'),(161,7,'com.qLABlNu.qTKDeheiWPsiQ'),(162,7,'com.qLABlNu.jGwHcWMJOAop'),(163,7,'com.millennialmedia.android.MillennialMediaView');
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,27,'action'),(2,27,'com.google.ads.AdOpener'),(3,27,'params'),(4,53,'detailFlag'),(5,18,'service_channel'),(6,48,'title'),(7,39,'app_name'),(8,39,'url'),(9,58,'fileName'),(10,49,'content'),(11,53,'apkSize'),(12,53,'apkSoftID'),(13,53,'apkVersion'),(14,39,'status'),(15,53,'apkTitle'),(16,44,'name'),(17,56,'service_channel'),(18,57,'fileURL'),(19,39,'icon'),(20,16,'service_channel'),(21,39,'total'),(22,42,'title'),(23,39,'package_name'),(24,17,'nextclassid'),(25,39,'filepath'),(26,39,'soft_id'),(27,53,'apkURL'),(28,35,'version_code'),(29,58,'fileURL'),(30,53,'iconURL'),(31,44,'comments'),(32,39,'completed'),(33,42,'status'),(34,29,'status'),(35,53,'imageURL'),(36,54,'service_channel'),(37,35,'package_name'),(38,42,'from_table'),(39,36,'package_name'),(40,40,'icon'),(41,30,'nextclassid'),(42,42,'filepath'),(43,40,'filepath'),(44,40,'package_name'),(45,40,'soft_id'),(46,30,'package_name'),(47,32,'fileURL'),(48,57,'packageName'),(49,53,'apkInfo'),(50,52,'np_app_key'),(51,53,'np_app_key'),(52,58,'np_app_key'),(53,47,'np_app_key'),(54,55,'np_app_key'),(55,48,'content'),(56,53,'packageName'),(57,44,'subboard'),(58,24,'imageURL'),(59,40,'completed'),(60,44,'signature'),(61,32,'packageName'),(62,40,'url'),(63,24,'apkSize'),(64,40,'app_name'),(65,24,'apkVersion'),(66,14,'action'),(67,42,'from_alert'),(68,62,'service_channel'),(69,40,'status'),(70,49,'package_name'),(71,24,'detailFlag'),(72,48,'btn_txt'),(73,36,'status'),(74,43,'title'),(75,29,'nextclassid'),(76,49,'btn_txt'),(77,43,'status'),(78,34,'fileURL'),(79,24,'packageName'),(80,40,'total'),(81,29,'package_name'),(82,24,'apkTitle'),(83,30,'status'),(84,43,'game'),(85,35,'status'),(86,24,'iconURL'),(87,43,'fromtype'),(88,49,'title'),(89,24,'apkSoftID'),(90,14,'params'),(91,63,'service_channel'),(92,43,'filepath'),(93,34,'fileName'),(94,24,'apkInfo'),(95,14,'com.google.ads.AdOpener'),(96,43,'from_table'),(97,16,'nextclassid'),(98,48,'url'),(99,17,'service_channel'),(100,19,'service_channel'),(101,36,'version_code'),(102,24,'np_app_key'),(103,20,'np_app_key'),(104,28,'np_app_key'),(105,34,'np_app_key'),(106,15,'np_app_key'),(107,49,'url'),(108,43,'from_alert'),(109,24,'apkURL'),(110,49,'apk_url'),(111,49,'version_code'),(112,118,'canAccelerate'),(113,116,'action'),(114,118,'cachedAdView'),(115,118,'overlayTitle'),(116,116,'com.google.ads.AdOpener'),(117,118,'overlayTransition'),(118,119,'cached'),(119,118,'shouldResizeOverlay'),(120,116,'params'),(121,118,'shouldShowBottomBar'),(122,119,'logSet'),(123,119,'videoPosition'),(124,119,'shouldShowBottomBar'),(125,119,'videoCompleted'),(126,118,'shouldMakeOverlayTransparent'),(127,118,'shouldShowTitlebar'),(128,119,'videoAd'),(129,120,'link'),(130,119,'isCachedAd'),(131,118,'transitionTime'),(132,118,'shouldEnableBottomBar'),(133,117,'A7D1721B9508405D8271AB82AC6D9B3C'),(134,119,'adName');
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,52,'a',1,NULL,NULL),(52,51,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'r',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'s',1,NULL,NULL),(63,63,'s',1,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,67,'r',1,NULL,NULL),(67,68,'a',0,NULL,NULL),(68,69,'a',0,NULL,NULL),(69,70,'a',0,NULL,NULL),(70,71,'a',0,NULL,NULL),(71,72,'a',0,NULL,NULL),(72,73,'a',0,NULL,NULL),(73,74,'a',0,NULL,NULL),(74,75,'a',0,NULL,NULL),(75,76,'a',0,NULL,NULL),(76,77,'a',0,NULL,NULL),(77,78,'a',0,NULL,NULL),(78,79,'a',0,NULL,NULL),(79,80,'a',1,NULL,NULL),(80,82,'a',0,NULL,NULL),(81,83,'a',0,NULL,NULL),(82,84,'a',0,NULL,NULL),(83,85,'a',0,NULL,NULL),(84,86,'a',1,NULL,NULL),(85,87,'a',1,NULL,NULL),(86,89,'a',0,NULL,NULL),(87,90,'a',1,NULL,NULL),(88,94,'a',1,NULL,NULL),(89,95,'a',1,NULL,NULL),(90,96,'a',0,NULL,NULL),(91,97,'a',0,NULL,NULL),(92,98,'a',0,NULL,NULL),(93,99,'a',0,NULL,NULL),(94,100,'a',1,NULL,NULL),(95,102,'a',0,NULL,NULL),(96,103,'a',0,NULL,NULL),(97,104,'a',0,NULL,NULL),(98,106,'a',0,NULL,NULL),(99,107,'a',1,NULL,NULL),(100,108,'a',0,NULL,NULL),(101,110,'a',0,NULL,NULL),(102,111,'a',0,NULL,NULL),(103,113,'a',0,NULL,NULL),(104,115,'a',0,NULL,NULL),(105,116,'a',0,NULL,NULL),(106,117,'a',0,NULL,NULL),(107,118,'a',0,NULL,NULL),(108,119,'s',1,NULL,NULL),(109,120,'r',1,NULL,NULL),(110,121,'r',1,NULL,NULL),(111,123,'r',0,NULL,NULL),(112,124,'r',1,NULL,NULL),(113,125,'r',1,NULL,NULL),(114,128,'r',1,NULL,NULL),(115,155,'a',1,NULL,NULL),(116,156,'a',0,NULL,NULL),(117,157,'a',0,NULL,NULL),(118,158,'a',0,NULL,NULL),(119,159,'a',0,NULL,NULL),(120,160,'a',0,NULL,NULL),(121,161,'a',0,NULL,NULL),(122,162,'a',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,33),(2,2,31),(3,3,31),(4,4,33),(5,5,27),(6,6,53),(7,6,52),(8,7,57),(9,8,16),(10,9,58),(11,10,29),(12,11,42),(13,12,47),(14,13,29),(15,14,40),(16,15,52),(17,16,45),(18,17,59),(19,18,29),(20,19,19),(21,20,52),(22,21,17),(23,22,47),(24,23,18),(25,24,47),(26,25,30),(27,26,52),(28,27,42),(29,28,59),(30,29,47),(31,30,43),(32,31,39),(33,32,44),(34,33,36),(35,34,48),(36,35,30),(37,36,40),(38,37,42),(39,38,19),(40,39,15),(41,40,52),(42,41,3),(43,43,22),(44,42,46),(45,42,49),(46,44,52),(47,45,4),(48,47,42),(49,46,43),(50,48,6),(51,49,61),(52,50,2),(53,51,17),(54,52,35),(55,53,4),(56,54,52),(57,54,53),(58,55,17),(59,56,22),(60,57,8),(61,58,53),(62,59,18),(63,60,20),(64,61,65),(65,62,2),(66,63,23),(67,64,65),(68,65,6),(69,66,64),(70,67,42),(71,68,1),(72,68,20),(73,69,30),(74,70,16),(75,71,9),(76,72,22),(77,73,49),(78,74,7),(79,75,16),(80,76,10),(81,77,23),(82,79,48),(83,78,20),(84,78,1),(85,80,30),(86,81,1),(87,81,20),(88,82,56),(89,83,20),(90,84,30),(91,85,1),(92,85,20),(93,86,22),(94,87,17),(95,88,7),(96,89,56),(97,90,24),(98,91,59),(99,92,56),(100,93,64),(101,94,24),(102,94,20),(103,95,46),(104,96,16),(105,97,20),(106,97,1),(107,98,49),(108,99,3),(109,100,35),(110,101,16),(111,102,20),(112,102,1),(113,103,30),(114,104,29),(115,105,11),(116,106,29),(117,107,15),(118,108,46),(119,108,49),(120,109,22),(121,110,8),(122,111,23),(123,112,15),(124,113,45),(125,114,5),(126,115,65),(127,116,37),(128,117,17),(129,118,45),(130,119,20),(131,119,1),(132,120,43),(133,121,11),(134,122,54),(135,123,45),(136,124,14),(137,125,48),(138,126,17),(139,127,42),(140,128,46),(141,129,39),(142,130,43),(143,131,22),(144,132,1),(145,132,20),(146,133,23),(147,134,20),(148,135,29),(149,136,34),(150,137,40),(151,138,48),(152,139,17),(153,140,15),(154,141,23),(155,142,39),(156,143,1),(157,144,16),(158,145,20),(159,146,64),(160,147,16),(161,148,9),(162,149,43),(163,150,18),(164,151,5),(165,152,32),(166,153,1),(167,154,36),(168,155,49),(169,156,10),(170,157,19),(171,158,20),(172,158,1),(173,159,54),(174,160,20),(175,160,1),(176,161,49),(177,162,20),(178,162,24),(179,163,54),(180,164,23),(181,165,119),(182,166,119),(183,167,119),(184,168,119),(185,169,116),(186,170,119),(187,171,119),(188,172,119),(189,173,119),(190,174,121),(191,175,121);
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
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,66,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(2,31,'<com.POSsNTwNe.eUPAtpcidi: void a()>',3,'a',NULL),(3,31,'<com.POSsNTwNe.eUPAtpcidi: void a(java.lang.String)>',11,'a',NULL),(4,33,'<com.POSsNTwNe.BTjHoAMAnvRdPhg: void a()>',3,'a',NULL),(5,27,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(6,53,'<com.FArlmvmm.ntpDurIhbwNACpL: void a(com.FArlmvmm.ntpDurIhbwNACpL,android.content.Context,java.lang.String)>',5,'a',NULL),(7,57,'<com.FArlmvmm.MsVNDlkAlpwabB: void a(java.lang.String)>',10,'a',NULL),(8,81,'<cs: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(9,58,'<com.FArlmvmm.QBgCWkoDesFPUg: void a(android.content.Context)>',76,'a',NULL),(10,88,'<cf: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(11,42,'<com.prototypecar.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(12,47,'<com.FArlmvmm.qsnCfjkBru: void onCreate(android.os.Bundle)>',33,'a',NULL),(13,91,'<cc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(14,92,'<dl: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(15,93,'<com.qwapi.adclient.android.utils.Utils: void invokeLandingPage(android.view.View,java.lang.String)>',10,'a',NULL),(16,45,'<com.prototypecar.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(17,59,'<com.fbbwallpaper.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(18,88,'<cf: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(19,19,'<com.fbbwallpaper.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(20,51,'<com.FArlmvmm.akqlsUJkseCiE: void a()>',3,'a',NULL),(21,101,'<l: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(22,47,'<com.FArlmvmm.qsnCfjkBru: void onCreate(android.os.Bundle)>',18,'a',NULL),(23,18,'<com.prototypecar.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(24,47,'<com.FArlmvmm.qsnCfjkBru: void onCreate(android.os.Bundle)>',28,'a',0),(25,105,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(26,51,'<com.FArlmvmm.akqlsUJkseCiE: void onBackPressed()>',5,'a',NULL),(27,42,'<com.prototypecar.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(28,59,'<com.fbbwallpaper.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(29,109,'<com.FArlmvmm.ab: void run()>',8,'s',NULL),(30,43,'<com.fbbwallpaper.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(31,112,'<ca: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(32,114,'<com.scoreninja.adapter.ScoreNinjaAdapter: void onActivityResult(int,int,android.content.Intent)>',58,'s',NULL),(33,36,'<com.fbbwallpaper.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(34,48,'<com.prototypecar.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(35,30,'<com.fbbwallpaper.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(36,92,'<dl: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(37,122,'<af: void onClick(android.view.View)>',224,'a',NULL),(38,126,'<ch: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(39,127,'<com.JFTEAJi.aa: void run()>',8,'s',NULL),(40,51,'<com.FArlmvmm.akqlsUJkseCiE: void b()>',45,'a',NULL),(41,3,'<owa.bdbcesmdqu.hwmrssc.mk2win: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(42,130,'<ap: void a(int,boolean)>',10,'s',NULL),(43,129,'<ad: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(44,51,'<com.FArlmvmm.akqlsUJkseCiE: void b()>',55,'a',NULL),(45,4,'<owa.bdbcesmdqu.hwmrssc.mk3win: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(46,131,'<q: void onClick(android.view.View)>',218,'a',NULL),(47,122,'<af: void onClick(android.view.View)>',205,'a',NULL),(48,6,'<owa.bdbcesmdqu.hwmrssc.mk4win: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(49,132,'<com.FArlmvmm.ad: void run()>',25,'s',NULL),(50,2,'<owa.bdbcesmdqu.hwmrssc.mk1win: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(51,17,'<com.fbbwallpaper.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(52,35,'<com.prototypecar.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(53,4,'<owa.bdbcesmdqu.hwmrssc.mk3win: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(54,133,'<com.FArlmvmm.j: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(55,17,'<com.fbbwallpaper.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(56,22,'<com.prototypecar.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(57,8,'<owa.bdbcesmdqu.hwmrssc.mkdecwin: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(58,53,'<com.FArlmvmm.ntpDurIhbwNACpL: void onCreate(android.os.Bundle)>',74,'a',NULL),(59,18,'<com.prototypecar.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(60,20,'<com.JFTEAJi.SbtiFbdhlhCUndj: void a()>',3,'a',NULL),(61,65,'<com.prototypecar.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(62,2,'<owa.bdbcesmdqu.hwmrssc.mk1win: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(63,23,'<com.fbbwallpaper.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(64,65,'<com.prototypecar.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(65,6,'<owa.bdbcesmdqu.hwmrssc.mk4win: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(66,64,'<com.fbbwallpaper.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(67,42,'<com.prototypecar.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(68,134,'<owa.bdbcesmdqu.hwmrssc.mkmoves$5: void onClick(android.view.View)>',6,'a',NULL),(69,30,'<com.fbbwallpaper.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(70,135,'<cv: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(71,9,'<owa.bdbcesmdqu.hwmrssc.mkarmwin: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(72,129,'<ad: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(73,49,'<com.fbbwallpaper.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(74,7,'<owa.bdbcesmdqu.hwmrssc.mkdawin: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(75,135,'<cv: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(76,10,'<owa.bdbcesmdqu.hwmrssc.mkvsdcuwin: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(77,23,'<com.fbbwallpaper.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(78,136,'<owa.bdbcesmdqu.hwmrssc.mkmoves$7: void onClick(android.view.View)>',6,'a',NULL),(79,48,'<com.prototypecar.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(80,105,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(81,137,'<owa.bdbcesmdqu.hwmrssc.mkmoves$2: void onClick(android.view.View)>',6,'a',NULL),(82,138,'<ds: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(83,20,'<com.JFTEAJi.SbtiFbdhlhCUndj: void b()>',55,'a',NULL),(84,105,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(85,139,'<owa.bdbcesmdqu.hwmrssc.mkmoves$10: void onClick(android.view.View)>',6,'a',NULL),(86,22,'<com.prototypecar.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(87,101,'<l: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(88,7,'<owa.bdbcesmdqu.hwmrssc.mkdawin: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(89,56,'<com.prototypecar.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(90,24,'<com.JFTEAJi.kmVbCcQrcd: void onCreate(android.os.Bundle)>',67,'a',NULL),(91,140,'<co: void onClick(android.view.View)>',6,'a',NULL),(92,56,'<com.prototypecar.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(93,64,'<com.fbbwallpaper.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(94,24,'<com.JFTEAJi.kmVbCcQrcd: void a(com.JFTEAJi.kmVbCcQrcd,android.content.Context,java.lang.String)>',5,'a',NULL),(95,46,'<com.fbbwallpaper.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(96,16,'<com.prototypecar.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(97,141,'<owa.bdbcesmdqu.hwmrssc.mkmoves$4: void onClick(android.view.View)>',6,'a',NULL),(98,49,'<com.fbbwallpaper.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(99,3,'<owa.bdbcesmdqu.hwmrssc.mk2win: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(100,35,'<com.prototypecar.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(101,16,'<com.prototypecar.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(102,142,'<owa.bdbcesmdqu.hwmrssc.mkmoves$6: void onClick(android.view.View)>',6,'a',NULL),(103,143,'<v: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(104,29,'<com.prototypecar.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(105,11,'<owa.bdbcesmdqu.hwmrssc.mk9win: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(106,29,'<com.prototypecar.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(107,15,'<com.JFTEAJi.mHrQiHmbMaTrqBe: void onCreate(android.os.Bundle)>',36,'a',NULL),(108,130,'<ap: void a(int,boolean)>',57,'a',NULL),(109,22,'<com.prototypecar.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(110,8,'<owa.bdbcesmdqu.hwmrssc.mkdecwin: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(111,144,'<du: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(112,15,'<com.JFTEAJi.mHrQiHmbMaTrqBe: void onCreate(android.os.Bundle)>',31,'a',0),(113,145,'<ce: void a(int,boolean)>',10,'s',NULL),(114,5,'<owa.bdbcesmdqu.hwmrssc.mktwin: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(115,65,'<com.prototypecar.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(116,146,'<com.JFTEAJi.ah: void run()>',25,'s',NULL),(117,101,'<l: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(118,45,'<com.prototypecar.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(119,147,'<owa.bdbcesmdqu.hwmrssc.mkmoves$8: void onClick(android.view.View)>',6,'a',NULL),(120,43,'<com.fbbwallpaper.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(121,11,'<owa.bdbcesmdqu.hwmrssc.mk9win: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(122,54,'<com.fbbwallpaper.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(123,145,'<ce: void a(int,boolean)>',29,'a',NULL),(124,14,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(125,48,'<com.prototypecar.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(126,101,'<l: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(127,42,'<com.prototypecar.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(128,46,'<com.fbbwallpaper.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(129,112,'<ca: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(130,43,'<com.fbbwallpaper.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(131,129,'<ad: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(132,148,'<owa.bdbcesmdqu.hwmrssc.mkmoves$9: void onClick(android.view.View)>',6,'a',NULL),(133,23,'<com.fbbwallpaper.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(134,20,'<com.JFTEAJi.SbtiFbdhlhCUndj: void b()>',45,'a',NULL),(135,88,'<cf: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(136,34,'<com.JFTEAJi.IeHvRsssaUqJ: void c(android.content.Context)>',74,'a',NULL),(137,40,'<com.fbbwallpaper.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(138,48,'<com.prototypecar.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(139,149,'<h: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(140,15,'<com.JFTEAJi.mHrQiHmbMaTrqBe: void onCreate(android.os.Bundle)>',21,'a',NULL),(141,144,'<du: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(142,39,'<com.prototypecar.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(143,1,'<owa.bdbcesmdqu.hwmrssc.mkmoves: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(144,135,'<cv: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(145,20,'<com.JFTEAJi.SbtiFbdhlhCUndj: void onBackPressed()>',5,'a',NULL),(146,64,'<com.fbbwallpaper.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(147,135,'<cv: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(148,9,'<owa.bdbcesmdqu.hwmrssc.mkarmwin: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(149,131,'<q: void onClick(android.view.View)>',239,'a',NULL),(150,150,'<al: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(151,5,'<owa.bdbcesmdqu.hwmrssc.mktwin: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(152,32,'<com.JFTEAJi.PqILtNeLIU: void a(java.lang.String)>',10,'a',NULL),(153,1,'<owa.bdbcesmdqu.hwmrssc.mkmoves: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(154,36,'<com.fbbwallpaper.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(155,49,'<com.fbbwallpaper.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(156,10,'<owa.bdbcesmdqu.hwmrssc.mkvsdcuwin: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(157,19,'<com.fbbwallpaper.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(158,151,'<owa.bdbcesmdqu.hwmrssc.mkmoves$3: void onClick(android.view.View)>',6,'a',NULL),(159,152,'<at: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(160,153,'<owa.bdbcesmdqu.hwmrssc.mkmoves$1: void onClick(android.view.View)>',6,'a',NULL),(161,49,'<com.fbbwallpaper.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(162,154,'<com.JFTEAJi.s: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(163,54,'<com.fbbwallpaper.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(164,144,'<du: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(165,159,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',188,'a',NULL),(166,159,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',180,'a',NULL),(167,159,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',217,'a',NULL),(168,159,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',228,'a',NULL),(169,156,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(170,163,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(171,159,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',159,'a',NULL),(172,159,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',236,'a',NULL),(173,159,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',208,'a',NULL),(174,161,'<com.qLABlNu.qTKDeheiWPsiQ: void a()>',3,'a',NULL),(175,161,'<com.qLABlNu.qTKDeheiWPsiQ: void a(java.lang.String)>',11,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,6),(2,4,6),(3,6,8),(4,7,6),(5,8,8),(6,9,1),(7,10,1),(8,11,6),(9,12,6),(10,14,6),(11,18,11),(12,19,6),(13,21,6),(14,22,6),(15,24,6),(16,25,12),(17,26,13),(18,30,13),(19,31,14),(20,32,6),(21,38,1),(22,39,15),(23,40,1),(24,42,15),(25,43,6),(26,45,6),(27,46,15),(28,47,1),(29,48,1),(30,49,1),(31,51,1),(32,50,15),(33,52,1),(34,53,6),(35,54,1),(36,63,6),(37,62,6),(38,65,6),(39,66,6),(40,72,6),(41,74,20),(42,77,21),(43,78,1),(44,80,1),(45,84,22),(46,92,6),(47,97,6),(48,103,6),(49,110,1),(50,112,1),(51,113,23),(52,114,24),(53,115,25),(54,116,1),(55,117,1),(56,118,1),(57,119,20),(58,120,1),(59,122,26),(60,134,6),(61,136,6),(62,139,22),(63,142,1),(64,144,1),(65,148,27),(66,149,8),(67,150,23),(68,151,4),(69,152,6),(70,155,8),(71,157,11),(72,167,6),(73,174,24),(74,177,1),(75,179,6),(76,180,1),(77,181,6),(78,182,1),(79,183,1),(80,186,4),(81,190,6),(82,192,6),(83,193,6),(84,194,6),(85,197,6),(86,200,6),(87,201,6),(88,202,8),(89,203,8),(90,204,28),(91,205,6),(92,206,6),(93,207,29),(94,209,6),(95,210,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,6,2),(2,7,2),(3,8,2),(4,9,1),(5,10,3),(6,38,1),(7,40,3),(8,47,1),(9,49,3),(10,48,1),(11,51,3),(12,52,1),(13,54,3),(14,78,1),(15,80,3),(16,110,1),(17,112,3),(18,116,1),(19,117,3),(20,118,1),(21,120,3),(22,142,1),(23,144,3),(24,149,2),(25,152,2),(26,155,2),(27,177,1),(28,180,3),(29,182,1),(30,183,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/nd/dianjin/activity/OfferAppActivity'),(2,2,'ibell/ewvpe/SchottGunn'),(3,5,'ibell/ewvpe/SchottGunn'),(4,13,'com/FArlmvmm/ntpDurIhbwNACpL'),(5,15,'com/prototypecar/Myhall'),(6,16,'com/FArlmvmm/akqlsUJkseCiE'),(7,17,'com/prototypecar/Myhall'),(8,20,'com/prototypecar/GameInfo'),(9,23,'com/prototypecar/Myhall'),(10,25,'com/fbbwallpaper/GameService'),(11,26,'com/fbbwallpaper/GameService'),(12,27,'mit/pdlo/minesweeperActivity'),(13,28,'com/fbbwallpaper/Myhall'),(14,29,'com/FArlmvmm/akqlsUJkseCiE'),(15,30,'com/prototypecar/GameService'),(16,31,'com/prototypecar/GameService'),(17,33,'mit/pdlo/minesweeperActivity'),(18,34,'com/prototypecar/Myhall'),(19,35,'com/fbbwallpaper/GameInfo'),(20,36,'com/FArlmvmm/phDWdatTa'),(21,37,'com/fbbwallpaper/Myhall'),(22,41,'com/fbbwallpaper/GameInfo'),(23,39,'com.scoreninja.ScoreNinjaService'),(24,44,'com/fbbwallpaper/GameService'),(25,42,'com.scoreninja.ScoreNinjaService'),(26,46,'com.scoreninja.ScoreNinjaService'),(27,50,'com.scoreninja.ScoreNinjaService'),(28,55,'com/JFTEAJi/nrvNjmviLplCU'),(29,56,'mit/pdlo/minesweeperActivity'),(30,57,'owa/bdbcesmdqu/hwmrssc/aboutwin'),(31,59,'com/fbbwallpaper/GameService'),(32,58,'com/prototypecar/GameInfo'),(33,60,'mit/pdlo/minesweeperActivity'),(34,61,'owa/bdbcesmdqu/hwmrssc/aboutwin'),(35,64,'owa/bdbcesmdqu/hwmrssc/helpwin'),(36,67,'com/FArlmvmm/phDWdatTa'),(37,68,'owa/bdbcesmdqu/hwmrssc/helpwin'),(38,69,'com/prototypecar/GameService'),(39,70,'com/fbbwallpaper/GameService'),(40,71,'owa/bdbcesmdqu/hwmrssc/helpwin'),(41,73,'com/prototypecar/GameInfo'),(42,75,'owa/bdbcesmdqu/hwmrssc/aboutwin'),(43,74,'com/fbbwallpaper/GameService'),(44,76,'com/prototypecar/GameService'),(45,79,'owa/bdbcesmdqu/hwmrssc/mkmoves'),(46,77,'com/fbbwallpaper/GameService'),(47,81,'com/prototypecar/GameService'),(48,82,'owa/bdbcesmdqu/hwmrssc/aboutwin'),(49,83,'com/fbbwallpaper/Myhall'),(50,84,'com/prototypecar/GameService'),(51,85,'owa/bdbcesmdqu/hwmrssc/aboutwin'),(52,86,'com/fbbwallpaper/GameService'),(53,87,'com/prototypecar/Myhall'),(54,88,'owa/bdbcesmdqu/hwmrssc/mk4win'),(55,91,'owa/bdbcesmdqu/hwmrssc/helpwin'),(56,89,'com/fbbwallpaper/GameInfo'),(57,90,'com/prototypecar/Myhall'),(58,94,'owa/bdbcesmdqu/hwmrssc/aboutwin'),(59,93,'com/fbbwallpaper/GameInfo'),(60,96,'owa/bdbcesmdqu/hwmrssc/helpwin'),(61,95,'com/prototypecar/Myhall'),(62,98,'owa/bdbcesmdqu/hwmrssc/mkdecwin'),(63,99,'com/prototypecar/GameAlertDialog'),(64,101,'owa/bdbcesmdqu/hwmrssc/mk2win'),(65,100,'com/fbbwallpaper/Myhall'),(66,102,'owa/bdbcesmdqu/hwmrssc/mkmoves'),(67,104,'com/fbbwallpaper/GameInfo'),(68,105,'owa/bdbcesmdqu/hwmrssc/mk9win'),(69,106,'com/prototypecar/Myhall'),(70,108,'owa/bdbcesmdqu/hwmrssc/helpwin'),(71,107,'com/fbbwallpaper/Myhall'),(72,109,'com/prototypecar/GameService'),(73,111,'com/fbbwallpaper/qimg/ImageTestActivity'),(74,113,'com/prototypecar/GameService'),(75,114,'com/fbbwallpaper/GameService'),(76,115,'com/prototypecar/GameService'),(77,119,'com/prototypecar/GameService'),(78,121,'owa/bdbcesmdqu/hwmrssc/mktwin'),(79,122,'com/prototypecar/GameService'),(80,124,'owa/bdbcesmdqu/hwmrssc/helpwin'),(81,125,'com/prototypecar/GameInfo'),(82,123,'com/fbbwallpaper/GameAlertDialog'),(83,126,'com/prototypecar/GameService'),(84,127,'owa/bdbcesmdqu/hwmrssc/mkdawin'),(85,129,'com/prototypecar/GameInfo'),(86,130,'owa/bdbcesmdqu/hwmrssc/aboutwin'),(87,128,'com/fbbwallpaper/Myhall'),(88,131,'com/prototypecar/GameService'),(89,132,'com/JFTEAJi/SbtiFbdhlhCUndj'),(90,133,'com/fbbwallpaper/qimg/ImageTestActivity'),(91,135,'owa/bdbcesmdqu/hwmrssc/helpwin'),(92,137,'com/prototypecar/GameService'),(93,138,'owa/bdbcesmdqu/hwmrssc/aboutwin'),(94,139,'com/prototypecar/GameService'),(95,140,'com/JFTEAJi/nrvNjmviLplCU'),(96,141,'com/fbbwallpaper/Myhall'),(97,143,'owa/bdbcesmdqu/hwmrssc/mkarmwin'),(98,145,'com/fbbwallpaper/Myhall'),(99,146,'owa/bdbcesmdqu/hwmrssc/helpwin'),(100,147,'com/prototypecar/Myhall'),(101,148,'com/fbbwallpaper/GameService'),(102,150,'com/fbbwallpaper/GameService'),(103,153,'com/fbbwallpaper/Myhall'),(104,154,'com/prototypecar/GameService'),(105,156,'com/fbbwallpaper/GameInfo'),(106,158,'com/fbbwallpaper/GameService'),(107,160,'owa/bdbcesmdqu/hwmrssc/mkvsdcuwin'),(108,159,'com/prototypecar/Myhall'),(109,162,'owa/bdbcesmdqu/hwmrssc/mkmoves'),(110,161,'com/fbbwallpaper/GameInfo'),(111,163,'com/prototypecar/GameInfo'),(112,165,'com/fbbwallpaper/GameService'),(113,166,'com/prototypecar/GameInfo'),(114,164,'com/JFTEAJi/kmVbCcQrcd'),(115,168,'com/JFTEAJi/SbtiFbdhlhCUndj'),(116,170,'com/prototypecar/GameService'),(117,169,'com/fbbwallpaper/Myhall'),(118,171,'owa/bdbcesmdqu/hwmrssc/aboutwin'),(119,172,'com/prototypecar/Myhall'),(120,173,'owa/bdbcesmdqu/hwmrssc/mkmoves'),(121,174,'com/fbbwallpaper/GameService'),(122,175,'com/prototypecar/Myhall'),(123,176,'owa/bdbcesmdqu/hwmrssc/aboutwin'),(124,178,'owa/bdbcesmdqu/hwmrssc/helpwin'),(125,184,'owa/bdbcesmdqu/hwmrssc/helpwin'),(126,185,'com/fbbwallpaper/GameService'),(127,187,'owa/bdbcesmdqu/hwmrssc/aboutwin'),(128,188,'com/fbbwallpaper/GameService'),(129,189,'owa/bdbcesmdqu/hwmrssc/mk3win'),(130,191,'owa/bdbcesmdqu/hwmrssc/mk1win'),(131,195,'com/fbbwallpaper/GameService'),(132,196,'com/fbbwallpaper/GameInfo'),(133,198,'com/millennialmedia/android/MMAdViewOverlayActivity'),(134,199,'com/millennialmedia/android/MMAdViewOverlayActivity'),(135,208,'com/hoehwquneh/qdbttpnrigofbo/AppActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,6,3),(4,7,4),(5,8,5),(6,11,6),(7,12,7),(8,14,8),(9,18,9),(10,19,10),(11,21,11),(12,22,12),(13,24,13),(14,32,14),(15,43,15),(16,45,16),(17,53,17),(18,62,19),(19,63,18),(20,66,20),(21,65,21),(22,72,22),(23,92,23),(24,97,24),(25,103,25),(26,134,26),(27,136,27),(28,149,28),(29,152,29),(30,155,30),(31,157,31),(32,167,32),(33,179,33),(34,181,34),(35,190,35),(36,192,36),(37,193,37),(38,194,38),(39,197,39),(40,198,40),(41,199,41),(42,200,42),(43,201,43),(44,202,44),(45,203,45),(46,205,46),(47,206,47),(48,207,48),(49,209,49),(50,210,50);
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
INSERT INTO `IExtras` VALUES (1,1,'oriention'),(2,13,'apkVersion'),(3,13,'apkURL'),(4,13,'apkInfo'),(5,13,'packageName'),(6,13,'apkSoftID'),(7,13,'apkTitle'),(8,13,'iconURL'),(9,13,'apkSize'),(10,13,'imageURL'),(11,17,'title'),(12,17,'nextclassid'),(13,17,'clicked'),(14,23,'title'),(15,23,'nextclassid'),(16,23,'clicked'),(17,28,'clicked'),(18,35,'game'),(19,35,'fromtype'),(20,39,'newscore'),(21,39,'appid'),(22,41,'game'),(23,39,'signature'),(24,41,'fromtype'),(25,42,'newscore'),(26,42,'name'),(27,42,'appid'),(28,42,'subboard'),(29,42,'signature'),(30,42,'comments'),(31,46,'newscore'),(32,46,'appid'),(33,46,'subboard'),(34,46,'signature'),(35,50,'newscore'),(36,50,'name'),(37,50,'appid'),(38,50,'signature'),(39,50,'comments'),(40,58,'title'),(41,83,'nextclassid'),(42,83,'clicked'),(43,89,'title'),(44,89,'game'),(45,89,'fromtype'),(46,90,'clicked'),(47,93,'id'),(48,93,'from_alert'),(49,93,'detail_flag'),(50,95,'clicked'),(51,99,'title'),(52,99,'btn_txt'),(53,99,'need_adb_flag'),(54,99,'cont'),(55,99,'close_flag'),(56,100,'title'),(57,100,'nextclassid'),(58,100,'clicked'),(59,104,'title'),(60,104,'game'),(61,104,'fromtype'),(62,106,'nextclassid'),(63,106,'clicked'),(64,107,'clicked'),(65,123,'title'),(66,123,'btn_txt'),(67,123,'need_adb_flag'),(68,123,'cont'),(69,123,'close_flag'),(70,128,'title'),(71,129,'title'),(72,128,'nextclassid'),(73,128,'clicked'),(74,141,'clicked'),(75,153,'clicked'),(76,156,'game'),(77,156,'fromtype'),(78,159,'title'),(79,159,'nextclassid'),(80,159,'clicked'),(81,161,'game'),(82,161,'fromtype'),(83,163,'title'),(84,164,'apkVersion'),(85,164,'apkURL'),(86,164,'apkInfo'),(87,164,'packageName'),(88,164,'apkSoftID'),(89,166,'id'),(90,166,'from_table'),(91,164,'apkTitle'),(92,166,'detail_flag'),(93,164,'iconURL'),(94,164,'apkSize'),(95,164,'imageURL'),(96,169,'title'),(97,169,'nextclassid'),(98,169,'clicked'),(99,172,'clicked'),(100,175,'clicked'),(101,196,'title'),(102,196,'game'),(103,196,'fromtype'),(104,198,'cachedAdView'),(105,199,'cachedAdView'),(106,204,'command');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,4,1),(3,5,1),(4,6,1),(5,7,1),(6,8,1),(7,9,2),(8,10,1),(9,11,1),(10,12,3),(11,13,1),(12,14,1),(13,16,1),(14,17,1),(15,18,1),(16,19,4),(17,20,4),(18,21,1),(19,22,1),(20,23,2),(21,24,1),(22,25,1),(23,26,5),(24,27,5),(25,28,7),(26,28,2),(27,29,9),(28,30,1),(29,31,1),(30,32,1),(31,33,10),(32,34,9),(33,35,1),(34,36,1),(35,37,6),(36,38,1),(37,39,16),(38,40,2),(39,40,5),(40,41,3),(41,42,17),(42,43,18),(43,44,19),(44,45,3),(45,46,17),(46,47,3),(47,48,17),(48,50,1);
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
INSERT INTO `IFCategories` VALUES (1,2,1),(2,6,1),(3,18,1),(4,21,1),(5,22,1),(6,24,1),(7,25,1),(8,32,3),(9,32,1),(10,33,4),(11,37,4),(12,37,2),(13,38,1),(14,45,5),(15,46,5),(16,47,5),(17,48,5),(18,50,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,12,'package',NULL,NULL,NULL,NULL,NULL),(2,37,'gamesnsschema','sina',NULL,NULL,NULL,NULL),(3,37,'gamesnsschema','tencent',NULL,NULL,NULL,NULL),(4,37,'gamesnsschema','kaixin',NULL,NULL,NULL,NULL),(5,37,'gamesnsschema','renren',NULL,NULL,NULL,NULL),(6,41,'package',NULL,NULL,NULL,NULL,NULL),(7,42,'package',NULL,NULL,NULL,NULL,NULL),(8,45,'package',NULL,NULL,NULL,NULL,NULL),(9,46,'package',NULL,NULL,NULL,NULL,NULL),(10,47,'package',NULL,NULL,NULL,NULL,NULL),(11,48,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,4,'(.*)','(.*)'),(2,8,'(.*)','(.*)'),(3,11,'application','vnd.android.package-archive'),(4,12,'application','vnd.android.package-archive'),(5,53,'application','vnd.android.package-archive'),(6,63,'application','vnd.android.package-archive'),(7,62,'application','vnd.android.package-archive'),(8,66,'application','vnd.android.package-archive'),(9,65,'application','vnd.android.package-archive'),(10,72,'application','vnd.android.package-archive'),(11,103,'application','vnd.android.package-archive'),(12,155,'(.*)','(.*)'),(13,167,'application','vnd.android.package-archive'),(14,179,'application','vnd.android.package-archive'),(15,181,'application','vnd.android.package-archive'),(16,190,'application','vnd.android.package-archive'),(17,193,'application','vnd.android.package-archive'),(18,202,'(.*)','(.*)'),(19,210,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'ibell.ewvpe'),(2,2,'ibell.ewvpe'),(3,5,'ibell.ewvpe'),(4,9,'(.*)'),(5,10,'(.*)'),(6,13,'mit.pdlo'),(7,15,'com.prototypecar'),(8,16,'mit.pdlo'),(9,17,'com.prototypecar'),(10,20,'com.prototypecar'),(11,23,'com.prototypecar'),(12,25,'com.fbbwallpaper'),(13,26,'com.fbbwallpaper'),(14,27,'mit.pdlo'),(15,28,'com.fbbwallpaper'),(16,29,'mit.pdlo'),(17,30,'com.prototypecar'),(18,31,'com.prototypecar'),(19,33,'mit.pdlo'),(20,34,'com.prototypecar'),(21,35,'com.fbbwallpaper'),(22,36,'mit.pdlo'),(23,37,'com.fbbwallpaper'),(24,38,'NULL-CONSTANT'),(25,40,'NULL-CONSTANT'),(26,41,'com.fbbwallpaper'),(27,39,'com.scoreninja'),(28,44,'com.fbbwallpaper'),(29,42,'com.scoreninja'),(30,47,'NULL-CONSTANT'),(31,49,'NULL-CONSTANT'),(32,46,'com.scoreninja'),(33,48,'(.*)'),(34,51,''),(35,52,''),(36,50,'com.scoreninja'),(37,55,'owa.bdbcesmdqu.hwmrssc'),(38,54,'(.*)'),(39,56,'mit.pdlo'),(40,57,'owa.bdbcesmdqu.hwmrssc'),(41,59,'com.fbbwallpaper'),(42,58,'com.prototypecar'),(43,60,'mit.pdlo'),(44,61,'owa.bdbcesmdqu.hwmrssc'),(45,64,'owa.bdbcesmdqu.hwmrssc'),(46,67,'mit.pdlo'),(47,68,'owa.bdbcesmdqu.hwmrssc'),(48,70,'com.fbbwallpaper'),(49,69,'com.prototypecar'),(50,71,'owa.bdbcesmdqu.hwmrssc'),(51,73,'com.prototypecar'),(52,75,'owa.bdbcesmdqu.hwmrssc'),(53,74,'com.fbbwallpaper'),(54,76,'com.prototypecar'),(55,79,'owa.bdbcesmdqu.hwmrssc'),(56,78,'(.*)'),(57,77,'com.fbbwallpaper'),(58,80,'(.*)'),(59,81,'com.prototypecar'),(60,82,'owa.bdbcesmdqu.hwmrssc'),(61,83,'com.fbbwallpaper'),(62,84,'com.prototypecar'),(63,85,'owa.bdbcesmdqu.hwmrssc'),(64,86,'com.fbbwallpaper'),(65,87,'com.prototypecar'),(66,88,'owa.bdbcesmdqu.hwmrssc'),(67,91,'owa.bdbcesmdqu.hwmrssc'),(68,89,'com.fbbwallpaper'),(69,90,'com.prototypecar'),(70,94,'owa.bdbcesmdqu.hwmrssc'),(71,93,'com.fbbwallpaper'),(72,96,'owa.bdbcesmdqu.hwmrssc'),(73,95,'com.prototypecar'),(74,98,'owa.bdbcesmdqu.hwmrssc'),(75,99,'com.prototypecar'),(76,101,'owa.bdbcesmdqu.hwmrssc'),(77,100,'com.fbbwallpaper'),(78,102,'owa.bdbcesmdqu.hwmrssc'),(79,104,'com.fbbwallpaper'),(80,105,'owa.bdbcesmdqu.hwmrssc'),(81,106,'com.prototypecar'),(82,108,'owa.bdbcesmdqu.hwmrssc'),(83,107,'com.fbbwallpaper'),(84,109,'com.prototypecar'),(85,110,'(.*)'),(86,111,'com.fbbwallpaper'),(87,112,'(.*)'),(88,113,'com.prototypecar'),(89,114,'com.fbbwallpaper'),(90,116,'(.*)'),(91,115,'com.prototypecar'),(92,117,'(.*)'),(93,118,'(.*)'),(94,119,'com.prototypecar'),(95,120,'(.*)'),(96,121,'owa.bdbcesmdqu.hwmrssc'),(97,122,'com.prototypecar'),(98,124,'owa.bdbcesmdqu.hwmrssc'),(99,125,'com.prototypecar'),(100,123,'com.fbbwallpaper'),(101,126,'com.prototypecar'),(102,127,'owa.bdbcesmdqu.hwmrssc'),(103,130,'owa.bdbcesmdqu.hwmrssc'),(104,129,'com.prototypecar'),(105,128,'com.fbbwallpaper'),(106,131,'com.prototypecar'),(107,132,'owa.bdbcesmdqu.hwmrssc'),(108,133,'com.fbbwallpaper'),(109,135,'owa.bdbcesmdqu.hwmrssc'),(110,137,'com.prototypecar'),(111,138,'owa.bdbcesmdqu.hwmrssc'),(112,139,'com.prototypecar'),(113,140,'owa.bdbcesmdqu.hwmrssc'),(114,141,'com.fbbwallpaper'),(115,142,'(.*)'),(116,143,'owa.bdbcesmdqu.hwmrssc'),(117,145,'com.fbbwallpaper'),(118,144,'(.*)'),(119,146,'owa.bdbcesmdqu.hwmrssc'),(120,147,'com.prototypecar'),(121,148,'com.fbbwallpaper'),(122,150,'com.fbbwallpaper'),(123,153,'com.fbbwallpaper'),(124,154,'com.prototypecar'),(125,156,'com.fbbwallpaper'),(126,158,'com.fbbwallpaper'),(127,160,'owa.bdbcesmdqu.hwmrssc'),(128,159,'com.prototypecar'),(129,162,'owa.bdbcesmdqu.hwmrssc'),(130,161,'com.fbbwallpaper'),(131,163,'com.prototypecar'),(132,165,'com.fbbwallpaper'),(133,166,'com.prototypecar'),(134,164,'owa.bdbcesmdqu.hwmrssc'),(135,168,'owa.bdbcesmdqu.hwmrssc'),(136,170,'com.prototypecar'),(137,169,'com.fbbwallpaper'),(138,171,'owa.bdbcesmdqu.hwmrssc'),(139,172,'com.prototypecar'),(140,173,'owa.bdbcesmdqu.hwmrssc'),(141,174,'com.fbbwallpaper'),(142,175,'com.prototypecar'),(143,176,'owa.bdbcesmdqu.hwmrssc'),(144,177,'(.*)'),(145,178,'owa.bdbcesmdqu.hwmrssc'),(146,180,''),(147,182,''),(148,183,'(.*)'),(149,184,'owa.bdbcesmdqu.hwmrssc'),(150,185,'com.fbbwallpaper'),(151,187,'owa.bdbcesmdqu.hwmrssc'),(152,188,'com.fbbwallpaper'),(153,189,'owa.bdbcesmdqu.hwmrssc'),(154,191,'owa.bdbcesmdqu.hwmrssc'),(155,195,'com.fbbwallpaper'),(156,196,'com.fbbwallpaper'),(157,198,'com.hoehwquneh.qdbttpnrigofbo'),(158,199,'com.hoehwquneh.qdbttpnrigofbo'),(159,208,'com.hoehwquneh.qdbttpnrigofbo');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,15,0),(3,21,0),(4,29,0),(5,30,0),(6,33,0),(7,35,0),(8,36,0),(9,37,0),(10,39,0),(11,40,0),(12,41,0),(13,42,0),(14,43,0),(15,44,0),(16,45,0),(17,46,0),(18,47,0),(19,51,0),(20,50,0),(21,54,0),(22,56,0),(23,61,0),(24,62,0),(25,63,0),(26,65,0),(27,64,0),(28,66,0),(29,79,0),(30,84,0),(31,85,0),(32,87,0),(33,87,0),(34,87,0),(35,88,0),(36,89,0),(37,94,0),(38,99,0),(39,108,0),(40,109,0),(41,110,0),(42,112,0),(43,113,0),(44,114,0),(45,64,0),(46,65,0),(47,65,0),(48,64,0),(49,115,0),(50,122,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,4,0,0),(6,5,1,0),(7,5,1,0),(8,5,1,0),(9,6,1,0),(10,6,1,0),(11,7,1,0),(12,8,1,0),(13,9,0,0),(14,10,1,0),(15,11,0,0),(16,12,0,0),(17,13,0,0),(18,14,1,0),(19,15,1,0),(20,16,0,0),(21,17,1,0),(22,15,1,0),(23,18,0,0),(24,15,1,0),(25,19,0,0),(26,19,0,0),(27,20,0,0),(28,21,0,0),(29,22,0,0),(30,23,0,0),(31,23,0,0),(32,25,1,0),(33,26,0,0),(34,27,0,0),(35,28,0,0),(36,29,0,0),(37,30,0,0),(38,31,1,0),(39,32,0,0),(40,31,1,0),(41,33,0,0),(42,32,0,0),(43,34,1,0),(44,35,0,0),(45,34,1,0),(46,32,0,0),(47,36,1,0),(48,37,1,0),(49,36,1,0),(50,32,0,0),(51,37,1,0),(52,37,1,0),(53,38,1,0),(54,37,1,0),(55,39,0,0),(56,40,0,0),(57,41,0,0),(58,43,0,0),(59,42,0,0),(60,44,0,0),(61,45,0,0),(62,47,1,0),(63,46,1,0),(64,48,0,0),(65,47,1,0),(66,46,1,0),(67,49,0,0),(68,50,0,0),(69,52,0,0),(70,51,0,0),(71,53,0,0),(72,54,1,0),(73,56,0,0),(74,55,0,0),(75,57,0,0),(76,59,0,0),(77,55,0,0),(78,58,1,0),(79,60,0,0),(80,58,1,0),(81,61,0,0),(82,62,0,0),(83,63,0,0),(84,64,0,0),(85,65,0,0),(86,66,0,0),(87,67,0,0),(88,68,0,0),(89,69,0,0),(90,70,0,0),(91,71,0,0),(92,72,1,0),(93,73,0,0),(94,74,0,0),(95,75,0,0),(96,76,0,0),(97,77,1,0),(98,78,0,0),(99,79,0,0),(100,80,0,0),(101,81,0,0),(102,83,0,0),(103,82,1,0),(104,84,0,0),(105,85,0,0),(106,86,0,0),(107,87,0,0),(108,88,0,0),(109,89,0,0),(110,90,1,0),(111,91,0,0),(112,90,1,0),(113,92,0,0),(114,93,0,0),(115,92,0,0),(116,94,1,0),(117,94,1,0),(118,95,1,0),(119,96,0,0),(120,95,1,0),(121,97,0,0),(122,96,0,0),(123,98,0,0),(124,99,0,0),(125,100,0,0),(126,101,0,0),(127,102,0,0),(128,103,0,0),(129,104,0,0),(130,105,0,0),(131,106,0,0),(132,107,0,0),(133,108,0,0),(134,109,1,0),(135,110,0,0),(136,111,1,0),(137,113,0,0),(138,114,0,0),(139,115,0,0),(140,116,0,0),(141,117,0,0),(142,118,1,0),(143,119,0,0),(144,118,1,0),(145,120,0,0),(146,121,0,0),(147,123,0,0),(148,122,0,0),(149,124,1,0),(150,122,0,0),(151,125,1,0),(152,124,1,0),(153,126,0,0),(154,127,0,0),(155,124,1,0),(156,128,0,0),(157,129,1,0),(158,130,0,0),(159,131,0,0),(160,132,0,0),(161,133,0,0),(162,134,0,0),(163,135,0,0),(164,136,0,0),(165,137,0,0),(166,138,0,0),(167,139,1,0),(168,140,0,0),(169,141,0,0),(170,142,0,0),(171,143,0,0),(172,144,0,0),(173,145,0,0),(174,146,0,0),(175,147,0,0),(176,148,0,0),(177,149,1,0),(178,151,0,0),(179,150,1,0),(180,149,1,0),(181,152,1,0),(182,149,1,0),(183,149,1,0),(184,153,0,0),(185,154,0,0),(186,155,1,0),(187,156,0,0),(188,157,0,0),(189,158,0,0),(190,159,1,0),(191,160,0,0),(192,161,1,0),(193,162,1,0),(194,161,1,0),(195,163,0,0),(196,164,0,0),(197,165,1,0),(198,166,0,0),(199,167,0,0),(200,168,1,0),(201,169,1,0),(202,169,1,0),(203,169,1,0),(204,170,1,0),(205,171,1,0),(206,172,1,0),(207,173,1,0),(208,174,0,0),(209,175,1,0),(210,175,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1370 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,149,79,2,NULL),(2,152,79,2,NULL),(3,110,79,2,NULL),(4,112,79,2,NULL),(5,116,79,2,NULL),(6,117,79,2,NULL),(7,97,79,2,NULL),(8,118,79,2,NULL),(9,120,79,2,NULL),(10,186,79,2,NULL),(11,192,79,2,NULL),(12,194,79,2,NULL),(13,21,79,2,NULL),(14,134,79,2,NULL),(15,142,79,2,NULL),(16,144,79,2,NULL),(17,43,79,2,NULL),(18,45,79,2,NULL),(19,151,79,2,NULL),(20,6,79,2,NULL),(21,7,79,2,NULL),(22,9,79,2,NULL),(23,10,79,2,NULL),(24,78,79,2,NULL),(25,80,79,2,NULL),(26,201,79,2,NULL),(27,203,79,2,NULL),(28,197,79,2,NULL),(29,200,79,2,NULL),(30,205,79,2,NULL),(31,206,79,2,NULL),(32,207,79,2,NULL),(33,149,84,2,NULL),(34,152,84,2,NULL),(35,110,84,2,NULL),(36,112,84,2,NULL),(37,116,84,2,NULL),(38,117,84,2,NULL),(39,97,84,2,NULL),(40,118,84,2,NULL),(41,120,84,2,NULL),(42,186,84,2,NULL),(43,192,84,2,NULL),(44,194,84,2,NULL),(45,21,84,2,NULL),(46,134,84,2,NULL),(47,142,84,2,NULL),(48,144,84,2,NULL),(49,43,84,2,NULL),(50,45,84,2,NULL),(51,151,84,2,NULL),(52,6,84,2,NULL),(53,7,84,2,NULL),(54,9,84,2,NULL),(55,10,84,2,NULL),(56,78,84,2,NULL),(57,80,84,2,NULL),(58,201,84,2,NULL),(59,203,84,2,NULL),(60,197,84,2,NULL),(61,200,84,2,NULL),(62,205,84,2,NULL),(63,206,84,2,NULL),(64,207,84,2,NULL),(65,149,85,2,NULL),(66,152,85,2,NULL),(67,110,85,2,NULL),(68,112,85,2,NULL),(69,116,85,2,NULL),(70,117,85,2,NULL),(71,97,85,2,NULL),(72,118,85,2,NULL),(73,120,85,2,NULL),(74,186,85,2,NULL),(75,192,85,2,NULL),(76,194,85,2,NULL),(77,21,85,2,NULL),(78,134,85,2,NULL),(79,142,85,2,NULL),(80,144,85,2,NULL),(81,43,85,2,NULL),(82,45,85,2,NULL),(83,151,85,2,NULL),(84,6,85,2,NULL),(85,7,85,2,NULL),(86,9,85,2,NULL),(87,10,85,2,NULL),(88,78,85,2,NULL),(89,80,85,2,NULL),(90,201,85,2,NULL),(91,203,85,2,NULL),(92,197,85,2,NULL),(93,200,85,2,NULL),(94,205,85,2,NULL),(95,206,85,2,NULL),(96,207,85,2,NULL),(97,149,87,2,NULL),(98,152,87,2,NULL),(99,110,87,2,NULL),(100,112,87,2,NULL),(101,116,87,2,NULL),(102,117,87,2,NULL),(103,97,87,2,NULL),(104,118,87,2,NULL),(105,120,87,2,NULL),(106,186,87,2,NULL),(107,192,87,2,NULL),(108,194,87,2,NULL),(109,21,87,2,NULL),(110,134,87,2,NULL),(111,142,87,2,NULL),(112,144,87,2,NULL),(113,43,87,2,NULL),(114,45,87,2,NULL),(115,151,87,2,NULL),(116,6,87,2,NULL),(117,7,87,2,NULL),(118,9,87,2,NULL),(119,10,87,2,NULL),(120,78,87,2,NULL),(121,80,87,2,NULL),(122,201,87,2,NULL),(123,203,87,2,NULL),(124,197,87,2,NULL),(125,200,87,2,NULL),(126,205,87,2,NULL),(127,206,87,2,NULL),(128,207,87,2,NULL),(129,149,88,2,NULL),(130,152,88,2,NULL),(131,110,88,2,NULL),(132,112,88,2,NULL),(133,116,88,2,NULL),(134,117,88,2,NULL),(135,97,88,2,NULL),(136,118,88,2,NULL),(137,120,88,2,NULL),(138,186,88,2,NULL),(139,192,88,2,NULL),(140,194,88,2,NULL),(141,21,88,2,NULL),(142,134,88,2,NULL),(143,142,88,2,NULL),(144,144,88,2,NULL),(145,43,88,2,NULL),(146,45,88,2,NULL),(147,151,88,2,NULL),(148,6,88,2,NULL),(149,7,88,2,NULL),(150,9,88,2,NULL),(151,10,88,2,NULL),(152,78,88,2,NULL),(153,80,88,2,NULL),(154,201,88,2,NULL),(155,203,88,2,NULL),(156,197,88,2,NULL),(157,200,88,2,NULL),(158,205,88,2,NULL),(159,206,88,2,NULL),(160,207,88,2,NULL),(161,149,89,2,NULL),(162,152,89,2,NULL),(163,110,89,2,NULL),(164,112,89,2,NULL),(165,116,89,2,NULL),(166,117,89,2,NULL),(167,97,89,2,NULL),(168,118,89,2,NULL),(169,120,89,2,NULL),(170,186,89,2,NULL),(171,192,89,2,NULL),(172,194,89,2,NULL),(173,21,89,2,NULL),(174,134,89,2,NULL),(175,142,89,2,NULL),(176,144,89,2,NULL),(177,43,89,2,NULL),(178,45,89,2,NULL),(179,151,89,2,NULL),(180,6,89,2,NULL),(181,7,89,2,NULL),(182,9,89,2,NULL),(183,10,89,2,NULL),(184,78,89,2,NULL),(185,80,89,2,NULL),(186,201,89,2,NULL),(187,203,89,2,NULL),(188,197,89,2,NULL),(189,200,89,2,NULL),(190,205,89,2,NULL),(191,206,89,2,NULL),(192,207,89,2,NULL),(193,149,99,2,NULL),(194,152,99,2,NULL),(195,110,99,2,NULL),(196,112,99,2,NULL),(197,116,99,2,NULL),(198,117,99,2,NULL),(199,97,99,2,NULL),(200,118,99,2,NULL),(201,120,99,2,NULL),(202,186,99,2,NULL),(203,192,99,2,NULL),(204,194,99,2,NULL),(205,21,99,2,NULL),(206,134,99,2,NULL),(207,142,99,2,NULL),(208,144,99,2,NULL),(209,43,99,2,NULL),(210,45,99,2,NULL),(211,151,99,2,NULL),(212,6,99,2,NULL),(213,7,99,2,NULL),(214,9,99,2,NULL),(215,10,99,2,NULL),(216,78,99,2,NULL),(217,80,99,2,NULL),(218,201,99,2,NULL),(219,203,99,2,NULL),(220,197,99,2,NULL),(221,200,99,2,NULL),(222,205,99,2,NULL),(223,206,99,2,NULL),(224,207,99,2,NULL),(225,149,108,2,NULL),(226,152,108,2,NULL),(227,110,108,2,NULL),(228,112,108,2,NULL),(229,116,108,2,NULL),(230,117,108,2,NULL),(231,97,108,2,NULL),(232,118,108,2,NULL),(233,120,108,2,NULL),(234,186,108,2,NULL),(235,192,108,2,NULL),(236,194,108,2,NULL),(237,21,108,2,NULL),(238,134,108,2,NULL),(239,142,108,2,NULL),(240,144,108,2,NULL),(241,43,108,2,NULL),(242,45,108,2,NULL),(243,151,108,2,NULL),(244,6,108,2,NULL),(245,7,108,2,NULL),(246,9,108,2,NULL),(247,10,108,2,NULL),(248,78,108,2,NULL),(249,80,108,2,NULL),(250,201,108,2,NULL),(251,203,108,2,NULL),(252,197,108,2,NULL),(253,200,108,2,NULL),(254,205,108,2,NULL),(255,206,108,2,NULL),(256,207,108,2,NULL),(257,149,109,2,NULL),(258,152,109,2,NULL),(259,110,109,2,NULL),(260,112,109,2,NULL),(261,116,109,2,NULL),(262,117,109,2,NULL),(263,97,109,2,NULL),(264,118,109,2,NULL),(265,120,109,2,NULL),(266,186,109,2,NULL),(267,192,109,2,NULL),(268,194,109,2,NULL),(269,21,109,2,NULL),(270,134,109,2,NULL),(271,142,109,2,NULL),(272,144,109,2,NULL),(273,43,109,2,NULL),(274,45,109,2,NULL),(275,151,109,2,NULL),(276,6,109,2,NULL),(277,7,109,2,NULL),(278,9,109,2,NULL),(279,10,109,2,NULL),(280,78,109,2,NULL),(281,80,109,2,NULL),(282,201,109,2,NULL),(283,203,109,2,NULL),(284,197,109,2,NULL),(285,200,109,2,NULL),(286,205,109,2,NULL),(287,206,109,2,NULL),(288,207,109,2,NULL),(289,149,113,2,NULL),(290,152,113,2,NULL),(291,110,113,2,NULL),(292,112,113,2,NULL),(293,116,113,2,NULL),(294,117,113,2,NULL),(295,97,113,2,NULL),(296,118,113,2,NULL),(297,120,113,2,NULL),(298,186,113,2,NULL),(299,192,113,2,NULL),(300,194,113,2,NULL),(301,21,113,2,NULL),(302,134,113,2,NULL),(303,142,113,2,NULL),(304,144,113,2,NULL),(305,43,113,2,NULL),(306,45,113,2,NULL),(307,151,113,2,NULL),(308,6,113,2,NULL),(309,7,113,2,NULL),(310,9,113,2,NULL),(311,10,113,2,NULL),(312,78,113,2,NULL),(313,80,113,2,NULL),(314,201,113,2,NULL),(315,203,113,2,NULL),(316,197,113,2,NULL),(317,200,113,2,NULL),(318,205,113,2,NULL),(319,206,113,2,NULL),(320,207,113,2,NULL),(321,149,114,2,NULL),(322,152,114,2,NULL),(323,110,114,2,NULL),(324,112,114,2,NULL),(325,116,114,2,NULL),(326,117,114,2,NULL),(327,97,114,2,NULL),(328,118,114,2,NULL),(329,120,114,2,NULL),(330,186,114,2,NULL),(331,192,114,2,NULL),(332,194,114,2,NULL),(333,21,114,2,NULL),(334,134,114,2,NULL),(335,142,114,2,NULL),(336,144,114,2,NULL),(337,43,114,2,NULL),(338,45,114,2,NULL),(339,151,114,2,NULL),(340,6,114,2,NULL),(341,7,114,2,NULL),(342,9,114,2,NULL),(343,10,114,2,NULL),(344,78,114,2,NULL),(345,80,114,2,NULL),(346,201,114,2,NULL),(347,203,114,2,NULL),(348,197,114,2,NULL),(349,200,114,2,NULL),(350,205,114,2,NULL),(351,206,114,2,NULL),(352,207,114,2,NULL),(353,119,63,2,NULL),(354,122,63,2,NULL),(355,126,63,2,NULL),(356,30,63,2,NULL),(357,31,63,2,NULL),(358,76,63,2,NULL),(359,73,42,2,NULL),(360,106,16,2,NULL),(361,134,1,2,NULL),(362,134,15,2,NULL),(363,134,37,2,NULL),(364,134,30,2,NULL),(365,134,36,2,NULL),(366,134,40,2,NULL),(367,134,43,2,NULL),(368,134,46,2,NULL),(369,134,51,2,NULL),(370,134,54,2,NULL),(371,134,62,2,NULL),(372,134,64,2,NULL),(373,134,29,2,NULL),(374,134,35,2,NULL),(375,134,39,2,NULL),(376,134,42,2,NULL),(377,134,45,2,NULL),(378,134,50,2,NULL),(379,134,56,2,NULL),(380,134,63,2,NULL),(381,134,65,2,NULL),(382,134,21,2,NULL),(383,134,33,2,NULL),(384,134,66,2,NULL),(385,134,44,2,NULL),(386,134,47,2,NULL),(387,134,61,2,NULL),(388,134,115,2,NULL),(389,134,122,2,NULL),(390,129,42,2,NULL),(391,131,63,2,NULL),(392,149,29,2,NULL),(393,152,29,2,NULL),(394,110,29,2,NULL),(395,112,29,2,NULL),(396,116,29,2,NULL),(397,117,29,2,NULL),(398,97,29,2,NULL),(399,118,29,2,NULL),(400,120,29,2,NULL),(401,186,29,2,NULL),(402,192,29,2,NULL),(403,194,29,2,NULL),(404,21,29,2,NULL),(405,142,29,2,NULL),(406,144,29,2,NULL),(407,43,29,2,NULL),(408,45,29,2,NULL),(409,151,29,2,NULL),(410,6,29,2,NULL),(411,7,29,2,NULL),(412,9,29,2,NULL),(413,10,29,2,NULL),(414,78,29,2,NULL),(415,80,29,2,NULL),(416,201,29,2,NULL),(417,203,29,2,NULL),(418,197,29,2,NULL),(419,200,29,2,NULL),(420,205,29,2,NULL),(421,206,29,2,NULL),(422,207,29,2,NULL),(423,69,63,2,NULL),(424,125,42,2,NULL),(425,149,35,2,NULL),(426,152,35,2,NULL),(427,110,35,2,NULL),(428,112,35,2,NULL),(429,116,35,2,NULL),(430,117,35,2,NULL),(431,97,35,2,NULL),(432,118,35,2,NULL),(433,120,35,2,NULL),(434,186,35,2,NULL),(435,192,35,2,NULL),(436,194,35,2,NULL),(437,21,35,2,NULL),(438,142,35,2,NULL),(439,144,35,2,NULL),(440,43,35,2,NULL),(441,45,35,2,NULL),(442,151,35,2,NULL),(443,6,35,2,NULL),(444,7,35,2,NULL),(445,9,35,2,NULL),(446,10,35,2,NULL),(447,78,35,2,NULL),(448,80,35,2,NULL),(449,201,35,2,NULL),(450,203,35,2,NULL),(451,197,35,2,NULL),(452,200,35,2,NULL),(453,205,35,2,NULL),(454,206,35,2,NULL),(455,207,35,2,NULL),(456,170,63,2,NULL),(457,149,39,2,NULL),(458,152,39,2,NULL),(459,110,39,2,NULL),(460,112,39,2,NULL),(461,116,39,2,NULL),(462,117,39,2,NULL),(463,97,39,2,NULL),(464,118,39,2,NULL),(465,120,39,2,NULL),(466,186,39,2,NULL),(467,192,39,2,NULL),(468,194,39,2,NULL),(469,21,39,2,NULL),(470,142,39,2,NULL),(471,144,39,2,NULL),(472,43,39,2,NULL),(473,45,39,2,NULL),(474,151,39,2,NULL),(475,6,39,2,NULL),(476,7,39,2,NULL),(477,9,39,2,NULL),(478,10,39,2,NULL),(479,78,39,2,NULL),(480,80,39,2,NULL),(481,201,39,2,NULL),(482,203,39,2,NULL),(483,197,39,2,NULL),(484,200,39,2,NULL),(485,205,39,2,NULL),(486,206,39,2,NULL),(487,207,39,2,NULL),(488,15,16,2,NULL),(489,34,16,2,NULL),(490,87,16,2,NULL),(491,154,63,2,NULL),(492,149,42,2,NULL),(493,152,42,2,NULL),(494,110,42,2,NULL),(495,112,42,2,NULL),(496,116,42,2,NULL),(497,117,42,2,NULL),(498,97,42,2,NULL),(499,118,42,2,NULL),(500,120,42,2,NULL),(501,186,42,2,NULL),(502,192,42,2,NULL),(503,194,42,2,NULL),(504,21,42,2,NULL),(505,142,42,2,NULL),(506,144,42,2,NULL),(507,43,42,2,NULL),(508,45,42,2,NULL),(509,151,42,2,NULL),(510,6,42,2,NULL),(511,7,42,2,NULL),(512,9,42,2,NULL),(513,10,42,2,NULL),(514,78,42,2,NULL),(515,80,42,2,NULL),(516,201,42,2,NULL),(517,203,42,2,NULL),(518,197,42,2,NULL),(519,200,42,2,NULL),(520,205,42,2,NULL),(521,206,42,2,NULL),(522,207,42,2,NULL),(523,20,42,2,NULL),(524,142,1,2,NULL),(525,144,1,2,NULL),(526,149,45,2,NULL),(527,152,45,2,NULL),(528,142,15,2,NULL),(529,144,15,2,NULL),(530,110,45,2,NULL),(531,112,45,2,NULL),(532,116,45,2,NULL),(533,117,45,2,NULL),(534,142,37,2,NULL),(535,144,37,2,NULL),(536,97,45,2,NULL),(537,142,30,2,NULL),(538,144,30,2,NULL),(539,142,36,2,NULL),(540,144,36,2,NULL),(541,142,40,2,NULL),(542,144,40,2,NULL),(543,142,43,2,NULL),(544,144,43,2,NULL),(545,142,46,2,NULL),(546,144,46,2,NULL),(547,118,45,2,NULL),(548,120,45,2,NULL),(549,186,45,2,NULL),(550,192,45,2,NULL),(551,194,45,2,NULL),(552,142,51,2,NULL),(553,144,51,2,NULL),(554,142,54,2,NULL),(555,144,54,2,NULL),(556,21,45,2,NULL),(557,142,62,2,NULL),(558,144,62,2,NULL),(559,142,64,2,NULL),(560,144,64,2,NULL),(561,43,45,2,NULL),(562,45,45,2,NULL),(563,151,45,2,NULL),(564,142,50,2,NULL),(565,144,50,2,NULL),(566,142,56,2,NULL),(567,144,56,2,NULL),(568,142,63,2,NULL),(569,144,63,2,NULL),(570,142,65,2,NULL),(571,144,65,2,NULL),(572,142,21,2,NULL),(573,144,21,2,NULL),(574,6,45,2,NULL),(575,7,45,2,NULL),(576,142,33,2,NULL),(577,144,33,2,NULL),(578,142,66,2,NULL),(579,144,66,2,NULL),(580,142,44,2,NULL),(581,144,44,2,NULL),(582,142,47,2,NULL),(583,144,47,2,NULL),(584,9,45,2,NULL),(585,10,45,2,NULL),(586,78,45,2,NULL),(587,80,45,2,NULL),(588,142,61,2,NULL),(589,144,61,2,NULL),(590,142,115,2,NULL),(591,144,115,2,NULL),(592,201,45,2,NULL),(593,203,45,2,NULL),(594,197,45,2,NULL),(595,200,45,2,NULL),(596,205,45,2,NULL),(597,206,45,2,NULL),(598,207,45,2,NULL),(599,142,122,2,NULL),(600,144,122,2,NULL),(601,99,48,2,NULL),(602,166,42,2,NULL),(603,43,1,2,NULL),(604,45,1,2,NULL),(605,151,1,2,NULL),(606,43,15,2,NULL),(607,45,15,2,NULL),(608,151,15,2,NULL),(609,43,37,2,NULL),(610,45,37,2,NULL),(611,151,37,2,NULL),(612,43,30,2,NULL),(613,45,30,2,NULL),(614,151,30,2,NULL),(615,43,36,2,NULL),(616,45,36,2,NULL),(617,151,36,2,NULL),(618,43,40,2,NULL),(619,45,40,2,NULL),(620,151,40,2,NULL),(621,43,43,2,NULL),(622,45,43,2,NULL),(623,151,43,2,NULL),(624,43,46,2,NULL),(625,45,46,2,NULL),(626,151,46,2,NULL),(627,43,51,2,NULL),(628,45,51,2,NULL),(629,151,51,2,NULL),(630,43,54,2,NULL),(631,45,54,2,NULL),(632,151,54,2,NULL),(633,43,62,2,NULL),(634,45,62,2,NULL),(635,151,62,2,NULL),(636,43,64,2,NULL),(637,45,64,2,NULL),(638,151,64,2,NULL),(639,43,50,2,NULL),(640,45,50,2,NULL),(641,151,50,2,NULL),(642,43,56,2,NULL),(643,45,56,2,NULL),(644,151,56,2,NULL),(645,43,63,2,NULL),(646,45,63,2,NULL),(647,151,63,2,NULL),(648,43,65,2,NULL),(649,45,65,2,NULL),(650,151,65,2,NULL),(651,43,21,2,NULL),(652,45,21,2,NULL),(653,151,21,2,NULL),(654,43,33,2,NULL),(655,45,33,2,NULL),(656,151,33,2,NULL),(657,43,66,2,NULL),(658,45,66,2,NULL),(659,151,66,2,NULL),(660,43,44,2,NULL),(661,45,44,2,NULL),(662,151,44,2,NULL),(663,43,47,2,NULL),(664,45,47,2,NULL),(665,151,47,2,NULL),(666,43,61,2,NULL),(667,45,61,2,NULL),(668,151,61,2,NULL),(669,43,115,2,NULL),(670,45,115,2,NULL),(671,151,115,2,NULL),(672,43,122,2,NULL),(673,45,122,2,NULL),(674,151,122,2,NULL),(675,149,50,2,NULL),(676,152,50,2,NULL),(677,110,50,2,NULL),(678,112,50,2,NULL),(679,116,50,2,NULL),(680,117,50,2,NULL),(681,97,50,2,NULL),(682,118,50,2,NULL),(683,120,50,2,NULL),(684,186,50,2,NULL),(685,192,50,2,NULL),(686,194,50,2,NULL),(687,21,50,2,NULL),(688,6,50,2,NULL),(689,7,50,2,NULL),(690,9,50,2,NULL),(691,10,50,2,NULL),(692,78,50,2,NULL),(693,80,50,2,NULL),(694,201,50,2,NULL),(695,203,50,2,NULL),(696,197,50,2,NULL),(697,200,50,2,NULL),(698,205,50,2,NULL),(699,206,50,2,NULL),(700,207,50,2,NULL),(701,109,63,2,NULL),(702,113,63,2,NULL),(703,115,63,2,NULL),(704,149,56,2,NULL),(705,152,56,2,NULL),(706,110,56,2,NULL),(707,112,56,2,NULL),(708,116,56,2,NULL),(709,117,56,2,NULL),(710,97,56,2,NULL),(711,118,56,2,NULL),(712,120,56,2,NULL),(713,186,56,2,NULL),(714,192,56,2,NULL),(715,194,56,2,NULL),(716,21,56,2,NULL),(717,6,56,2,NULL),(718,7,56,2,NULL),(719,9,56,2,NULL),(720,10,56,2,NULL),(721,78,56,2,NULL),(722,80,56,2,NULL),(723,201,56,2,NULL),(724,203,56,2,NULL),(725,197,56,2,NULL),(726,200,56,2,NULL),(727,205,56,2,NULL),(728,206,56,2,NULL),(729,207,56,2,NULL),(730,149,63,2,NULL),(731,152,63,2,NULL),(732,110,63,2,NULL),(733,112,63,2,NULL),(734,116,63,2,NULL),(735,117,63,2,NULL),(736,97,63,2,NULL),(737,118,63,2,NULL),(738,120,63,2,NULL),(739,186,63,2,NULL),(740,192,63,2,NULL),(741,194,63,2,NULL),(742,21,63,2,NULL),(743,6,63,2,NULL),(744,7,63,2,NULL),(745,9,63,2,NULL),(746,10,63,2,NULL),(747,78,63,2,NULL),(748,80,63,2,NULL),(749,201,63,2,NULL),(750,203,63,2,NULL),(751,197,63,2,NULL),(752,200,63,2,NULL),(753,205,63,2,NULL),(754,206,63,2,NULL),(755,207,63,2,NULL),(756,81,63,2,NULL),(757,84,63,2,NULL),(758,139,63,2,NULL),(759,149,65,2,NULL),(760,152,65,2,NULL),(761,110,65,2,NULL),(762,112,65,2,NULL),(763,116,65,2,NULL),(764,117,65,2,NULL),(765,97,65,2,NULL),(766,118,65,2,NULL),(767,120,65,2,NULL),(768,186,65,2,NULL),(769,192,65,2,NULL),(770,194,65,2,NULL),(771,21,65,2,NULL),(772,6,65,2,NULL),(773,7,65,2,NULL),(774,9,65,2,NULL),(775,10,65,2,NULL),(776,78,65,2,NULL),(777,80,65,2,NULL),(778,201,65,2,NULL),(779,203,65,2,NULL),(780,197,65,2,NULL),(781,200,65,2,NULL),(782,205,65,2,NULL),(783,206,65,2,NULL),(784,207,65,2,NULL),(785,149,115,2,NULL),(786,152,115,2,NULL),(787,110,115,2,NULL),(788,112,115,2,NULL),(789,116,115,2,NULL),(790,117,115,2,NULL),(791,97,115,2,NULL),(792,118,115,2,NULL),(793,120,115,2,NULL),(794,186,115,2,NULL),(795,192,115,2,NULL),(796,194,115,2,NULL),(797,21,115,2,NULL),(798,6,115,2,NULL),(799,7,115,2,NULL),(800,9,115,2,NULL),(801,10,115,2,NULL),(802,78,115,2,NULL),(803,80,115,2,NULL),(804,201,115,2,NULL),(805,203,115,2,NULL),(806,197,115,2,NULL),(807,200,115,2,NULL),(808,205,115,2,NULL),(809,206,115,2,NULL),(810,207,115,2,NULL),(811,201,1,2,NULL),(812,203,1,2,NULL),(813,201,15,2,NULL),(814,203,15,2,NULL),(815,201,37,2,NULL),(816,203,37,2,NULL),(817,201,30,2,NULL),(818,203,30,2,NULL),(819,201,36,2,NULL),(820,203,36,2,NULL),(821,201,40,2,NULL),(822,203,40,2,NULL),(823,201,43,2,NULL),(824,203,43,2,NULL),(825,201,46,2,NULL),(826,203,46,2,NULL),(827,201,51,2,NULL),(828,203,51,2,NULL),(829,201,54,2,NULL),(830,203,54,2,NULL),(831,201,62,2,NULL),(832,203,62,2,NULL),(833,201,64,2,NULL),(834,203,64,2,NULL),(835,201,21,2,NULL),(836,203,21,2,NULL),(837,201,33,2,NULL),(838,203,33,2,NULL),(839,201,66,2,NULL),(840,203,66,2,NULL),(841,201,44,2,NULL),(842,203,44,2,NULL),(843,201,47,2,NULL),(844,203,47,2,NULL),(845,201,61,2,NULL),(846,203,61,2,NULL),(847,201,122,2,NULL),(848,203,122,2,NULL),(849,198,118,2,NULL),(850,199,118,2,NULL),(851,197,1,2,NULL),(852,200,1,2,NULL),(853,205,1,2,NULL),(854,206,1,2,NULL),(855,207,1,2,NULL),(856,197,15,2,NULL),(857,200,15,2,NULL),(858,205,15,2,NULL),(859,206,15,2,NULL),(860,207,15,2,NULL),(861,197,37,2,NULL),(862,200,37,2,NULL),(863,205,37,2,NULL),(864,206,37,2,NULL),(865,207,37,2,NULL),(866,197,30,2,NULL),(867,200,30,2,NULL),(868,205,30,2,NULL),(869,206,30,2,NULL),(870,207,30,2,NULL),(871,197,36,2,NULL),(872,200,36,2,NULL),(873,205,36,2,NULL),(874,206,36,2,NULL),(875,207,36,2,NULL),(876,197,40,2,NULL),(877,200,40,2,NULL),(878,205,40,2,NULL),(879,206,40,2,NULL),(880,207,40,2,NULL),(881,197,43,2,NULL),(882,200,43,2,NULL),(883,205,43,2,NULL),(884,206,43,2,NULL),(885,207,43,2,NULL),(886,197,46,2,NULL),(887,200,46,2,NULL),(888,205,46,2,NULL),(889,206,46,2,NULL),(890,207,46,2,NULL),(891,197,51,2,NULL),(892,200,51,2,NULL),(893,205,51,2,NULL),(894,206,51,2,NULL),(895,207,51,2,NULL),(896,197,54,2,NULL),(897,200,54,2,NULL),(898,205,54,2,NULL),(899,206,54,2,NULL),(900,207,54,2,NULL),(901,197,62,2,NULL),(902,200,62,2,NULL),(903,205,62,2,NULL),(904,206,62,2,NULL),(905,207,62,2,NULL),(906,197,64,2,NULL),(907,200,64,2,NULL),(908,205,64,2,NULL),(909,206,64,2,NULL),(910,207,64,2,NULL),(911,197,21,2,NULL),(912,200,21,2,NULL),(913,205,21,2,NULL),(914,206,21,2,NULL),(915,207,21,2,NULL),(916,197,33,2,NULL),(917,200,33,2,NULL),(918,205,33,2,NULL),(919,206,33,2,NULL),(920,207,33,2,NULL),(921,197,66,2,NULL),(922,200,66,2,NULL),(923,205,66,2,NULL),(924,206,66,2,NULL),(925,207,66,2,NULL),(926,197,44,2,NULL),(927,200,44,2,NULL),(928,205,44,2,NULL),(929,206,44,2,NULL),(930,207,44,2,NULL),(931,197,47,2,NULL),(932,200,47,2,NULL),(933,205,47,2,NULL),(934,206,47,2,NULL),(935,207,47,2,NULL),(936,197,61,2,NULL),(937,200,61,2,NULL),(938,205,61,2,NULL),(939,206,61,2,NULL),(940,207,61,2,NULL),(941,197,122,2,NULL),(942,200,122,2,NULL),(943,205,122,2,NULL),(944,206,122,2,NULL),(945,207,122,2,NULL),(946,208,115,2,NULL),(947,149,122,2,NULL),(948,152,122,2,NULL),(949,110,122,2,NULL),(950,112,122,2,NULL),(951,116,122,2,NULL),(952,117,122,2,NULL),(953,97,122,2,NULL),(954,118,122,2,NULL),(955,120,122,2,NULL),(956,186,122,2,NULL),(957,192,122,2,NULL),(958,194,122,2,NULL),(959,21,122,2,NULL),(960,6,122,2,NULL),(961,7,122,2,NULL),(962,9,122,2,NULL),(963,10,122,2,NULL),(964,78,122,2,NULL),(965,80,122,2,NULL),(966,149,44,2,NULL),(967,152,44,2,NULL),(968,110,44,2,NULL),(969,112,44,2,NULL),(970,116,44,2,NULL),(971,117,44,2,NULL),(972,97,44,2,NULL),(973,118,44,2,NULL),(974,120,44,2,NULL),(975,186,44,2,NULL),(976,192,44,2,NULL),(977,194,44,2,NULL),(978,21,44,2,NULL),(979,6,44,2,NULL),(980,7,44,2,NULL),(981,9,44,2,NULL),(982,10,44,2,NULL),(983,78,44,2,NULL),(984,80,44,2,NULL),(985,16,52,2,NULL),(986,29,52,2,NULL),(987,149,47,2,NULL),(988,152,47,2,NULL),(989,110,47,2,NULL),(990,112,47,2,NULL),(991,116,47,2,NULL),(992,117,47,2,NULL),(993,97,47,2,NULL),(994,118,47,2,NULL),(995,120,47,2,NULL),(996,186,47,2,NULL),(997,192,47,2,NULL),(998,194,47,2,NULL),(999,21,47,2,NULL),(1000,6,47,2,NULL),(1001,7,47,2,NULL),(1002,9,47,2,NULL),(1003,10,47,2,NULL),(1004,78,47,2,NULL),(1005,80,47,2,NULL),(1006,27,44,2,NULL),(1007,33,44,2,NULL),(1008,56,44,2,NULL),(1009,60,44,2,NULL),(1010,9,1,2,NULL),(1011,10,1,2,NULL),(1012,78,1,2,NULL),(1013,80,1,2,NULL),(1014,9,15,2,NULL),(1015,10,15,2,NULL),(1016,78,15,2,NULL),(1017,80,15,2,NULL),(1018,9,37,2,NULL),(1019,10,37,2,NULL),(1020,78,37,2,NULL),(1021,80,37,2,NULL),(1022,9,30,2,NULL),(1023,10,30,2,NULL),(1024,78,30,2,NULL),(1025,80,30,2,NULL),(1026,9,36,2,NULL),(1027,10,36,2,NULL),(1028,78,36,2,NULL),(1029,80,36,2,NULL),(1030,9,40,2,NULL),(1031,10,40,2,NULL),(1032,78,40,2,NULL),(1033,80,40,2,NULL),(1034,9,43,2,NULL),(1035,10,43,2,NULL),(1036,78,43,2,NULL),(1037,80,43,2,NULL),(1038,9,46,2,NULL),(1039,10,46,2,NULL),(1040,78,46,2,NULL),(1041,80,46,2,NULL),(1042,9,51,2,NULL),(1043,10,51,2,NULL),(1044,78,51,2,NULL),(1045,80,51,2,NULL),(1046,9,54,2,NULL),(1047,10,54,2,NULL),(1048,78,54,2,NULL),(1049,80,54,2,NULL),(1050,9,62,2,NULL),(1051,10,62,2,NULL),(1052,78,62,2,NULL),(1053,80,62,2,NULL),(1054,9,64,2,NULL),(1055,10,64,2,NULL),(1056,78,64,2,NULL),(1057,80,64,2,NULL),(1058,9,21,2,NULL),(1059,10,21,2,NULL),(1060,78,21,2,NULL),(1061,80,21,2,NULL),(1062,9,33,2,NULL),(1063,10,33,2,NULL),(1064,78,33,2,NULL),(1065,80,33,2,NULL),(1066,9,66,2,NULL),(1067,10,66,2,NULL),(1068,78,66,2,NULL),(1069,80,66,2,NULL),(1070,9,61,2,NULL),(1071,10,61,2,NULL),(1072,78,61,2,NULL),(1073,80,61,2,NULL),(1074,13,53,2,NULL),(1075,149,61,2,NULL),(1076,152,61,2,NULL),(1077,110,61,2,NULL),(1078,112,61,2,NULL),(1079,116,61,2,NULL),(1080,117,61,2,NULL),(1081,97,61,2,NULL),(1082,118,61,2,NULL),(1083,120,61,2,NULL),(1084,186,61,2,NULL),(1085,192,61,2,NULL),(1086,194,61,2,NULL),(1087,21,61,2,NULL),(1088,6,61,2,NULL),(1089,7,61,2,NULL),(1090,149,21,2,NULL),(1091,152,21,2,NULL),(1092,110,21,2,NULL),(1093,112,21,2,NULL),(1094,116,21,2,NULL),(1095,117,21,2,NULL),(1096,97,21,2,NULL),(1097,118,21,2,NULL),(1098,120,21,2,NULL),(1099,186,21,2,NULL),(1100,192,21,2,NULL),(1101,194,21,2,NULL),(1102,21,21,2,NULL),(1103,6,21,2,NULL),(1104,7,21,2,NULL),(1105,6,1,2,NULL),(1106,7,1,2,NULL),(1107,6,15,2,NULL),(1108,7,15,2,NULL),(1109,6,37,2,NULL),(1110,7,37,2,NULL),(1111,6,30,2,NULL),(1112,7,30,2,NULL),(1113,6,36,2,NULL),(1114,7,36,2,NULL),(1115,6,40,2,NULL),(1116,7,40,2,NULL),(1117,6,43,2,NULL),(1118,7,43,2,NULL),(1119,6,46,2,NULL),(1120,7,46,2,NULL),(1121,6,51,2,NULL),(1122,7,51,2,NULL),(1123,6,54,2,NULL),(1124,7,54,2,NULL),(1125,6,62,2,NULL),(1126,7,62,2,NULL),(1127,6,64,2,NULL),(1128,7,64,2,NULL),(1129,6,33,2,NULL),(1130,7,33,2,NULL),(1131,6,66,2,NULL),(1132,7,66,2,NULL),(1133,2,21,2,NULL),(1134,5,21,2,NULL),(1135,149,33,2,NULL),(1136,152,33,2,NULL),(1137,110,33,2,NULL),(1138,112,33,2,NULL),(1139,116,33,2,NULL),(1140,117,33,2,NULL),(1141,97,33,2,NULL),(1142,118,33,2,NULL),(1143,120,33,2,NULL),(1144,186,33,2,NULL),(1145,192,33,2,NULL),(1146,194,33,2,NULL),(1147,21,33,2,NULL),(1148,149,66,2,NULL),(1149,152,66,2,NULL),(1150,110,66,2,NULL),(1151,112,66,2,NULL),(1152,116,66,2,NULL),(1153,117,66,2,NULL),(1154,97,66,2,NULL),(1155,118,66,2,NULL),(1156,120,66,2,NULL),(1157,186,66,2,NULL),(1158,192,66,2,NULL),(1159,194,66,2,NULL),(1160,21,66,2,NULL),(1161,171,13,2,NULL),(1162,184,12,2,NULL),(1163,149,1,2,NULL),(1164,152,1,2,NULL),(1165,110,1,2,NULL),(1166,112,1,2,NULL),(1167,116,1,2,NULL),(1168,117,1,2,NULL),(1169,97,1,2,NULL),(1170,118,1,2,NULL),(1171,120,1,2,NULL),(1172,186,1,2,NULL),(1173,192,1,2,NULL),(1174,194,1,2,NULL),(1175,21,1,2,NULL),(1176,68,12,2,NULL),(1177,82,13,2,NULL),(1178,57,13,2,NULL),(1179,124,12,2,NULL),(1180,61,13,2,NULL),(1181,71,12,2,NULL),(1182,138,13,2,NULL),(1183,178,12,2,NULL),(1184,64,12,2,NULL),(1185,85,13,2,NULL),(1186,94,13,2,NULL),(1187,108,12,2,NULL),(1188,75,13,2,NULL),(1189,135,12,2,NULL),(1190,91,12,2,NULL),(1191,176,13,2,NULL),(1192,96,12,2,NULL),(1193,187,13,2,NULL),(1194,130,13,2,NULL),(1195,146,12,2,NULL),(1196,149,15,2,NULL),(1197,152,15,2,NULL),(1198,149,37,2,NULL),(1199,152,37,2,NULL),(1200,149,30,2,NULL),(1201,152,30,2,NULL),(1202,149,36,2,NULL),(1203,152,36,2,NULL),(1204,149,40,2,NULL),(1205,152,40,2,NULL),(1206,149,43,2,NULL),(1207,152,43,2,NULL),(1208,149,46,2,NULL),(1209,152,46,2,NULL),(1210,149,51,2,NULL),(1211,152,51,2,NULL),(1212,149,54,2,NULL),(1213,152,54,2,NULL),(1214,149,62,2,NULL),(1215,152,62,2,NULL),(1216,149,64,2,NULL),(1217,152,64,2,NULL),(1218,132,20,2,NULL),(1219,168,20,2,NULL),(1220,110,15,2,NULL),(1221,112,15,2,NULL),(1222,116,15,2,NULL),(1223,117,15,2,NULL),(1224,97,15,2,NULL),(1225,118,15,2,NULL),(1226,120,15,2,NULL),(1227,186,15,2,NULL),(1228,192,15,2,NULL),(1229,194,15,2,NULL),(1230,21,15,2,NULL),(1231,79,1,2,NULL),(1232,102,1,2,NULL),(1233,162,1,2,NULL),(1234,173,1,2,NULL),(1235,110,37,2,NULL),(1236,112,37,2,NULL),(1237,116,37,2,NULL),(1238,117,37,2,NULL),(1239,110,30,2,NULL),(1240,112,30,2,NULL),(1241,116,30,2,NULL),(1242,117,30,2,NULL),(1243,110,36,2,NULL),(1244,112,36,2,NULL),(1245,116,36,2,NULL),(1246,117,36,2,NULL),(1247,110,40,2,NULL),(1248,112,40,2,NULL),(1249,116,40,2,NULL),(1250,117,40,2,NULL),(1251,110,43,2,NULL),(1252,112,43,2,NULL),(1253,116,43,2,NULL),(1254,117,43,2,NULL),(1255,110,46,2,NULL),(1256,112,46,2,NULL),(1257,116,46,2,NULL),(1258,117,46,2,NULL),(1259,110,51,2,NULL),(1260,112,51,2,NULL),(1261,116,51,2,NULL),(1262,117,51,2,NULL),(1263,110,54,2,NULL),(1264,112,54,2,NULL),(1265,116,54,2,NULL),(1266,117,54,2,NULL),(1267,110,62,2,NULL),(1268,112,62,2,NULL),(1269,116,62,2,NULL),(1270,117,62,2,NULL),(1271,110,64,2,NULL),(1272,112,64,2,NULL),(1273,116,64,2,NULL),(1274,117,64,2,NULL),(1275,164,24,2,NULL),(1276,97,37,2,NULL),(1277,118,37,2,NULL),(1278,120,37,2,NULL),(1279,186,37,2,NULL),(1280,192,37,2,NULL),(1281,194,37,2,NULL),(1282,21,37,2,NULL),(1283,70,62,2,NULL),(1284,74,62,2,NULL),(1285,77,62,2,NULL),(1286,25,62,2,NULL),(1287,26,62,2,NULL),(1288,188,62,2,NULL),(1289,83,17,2,NULL),(1290,161,43,2,NULL),(1291,97,30,2,NULL),(1292,97,36,2,NULL),(1293,97,40,2,NULL),(1294,97,43,2,NULL),(1295,97,46,2,NULL),(1296,97,51,2,NULL),(1297,97,54,2,NULL),(1298,97,62,2,NULL),(1299,97,64,2,NULL),(1300,44,62,2,NULL),(1301,89,43,2,NULL),(1302,118,30,2,NULL),(1303,120,30,2,NULL),(1304,186,30,2,NULL),(1305,192,30,2,NULL),(1306,194,30,2,NULL),(1307,21,30,2,NULL),(1308,41,43,2,NULL),(1309,185,62,2,NULL),(1310,118,36,2,NULL),(1311,120,36,2,NULL),(1312,186,36,2,NULL),(1313,192,36,2,NULL),(1314,194,36,2,NULL),(1315,21,36,2,NULL),(1316,165,62,2,NULL),(1317,118,40,2,NULL),(1318,120,40,2,NULL),(1319,186,40,2,NULL),(1320,192,40,2,NULL),(1321,194,40,2,NULL),(1322,21,40,2,NULL),(1323,37,17,2,NULL),(1324,145,17,2,NULL),(1325,158,62,2,NULL),(1326,118,43,2,NULL),(1327,120,43,2,NULL),(1328,186,43,2,NULL),(1329,192,43,2,NULL),(1330,194,43,2,NULL),(1331,21,43,2,NULL),(1332,156,43,2,NULL),(1333,186,46,2,NULL),(1334,192,46,2,NULL),(1335,194,46,2,NULL),(1336,118,51,2,NULL),(1337,120,51,2,NULL),(1338,118,54,2,NULL),(1339,120,54,2,NULL),(1340,21,46,2,NULL),(1341,118,62,2,NULL),(1342,120,62,2,NULL),(1343,118,64,2,NULL),(1344,120,64,2,NULL),(1345,93,43,2,NULL),(1346,123,49,2,NULL),(1347,186,51,2,NULL),(1348,192,51,2,NULL),(1349,194,51,2,NULL),(1350,186,54,2,NULL),(1351,192,54,2,NULL),(1352,194,54,2,NULL),(1353,186,62,2,NULL),(1354,192,62,2,NULL),(1355,194,62,2,NULL),(1356,186,64,2,NULL),(1357,192,64,2,NULL),(1358,194,64,2,NULL),(1359,21,51,2,NULL),(1360,148,62,2,NULL),(1361,150,62,2,NULL),(1362,195,62,2,NULL),(1363,21,54,2,NULL),(1364,35,43,2,NULL),(1365,21,62,2,NULL),(1366,21,64,2,NULL),(1367,86,62,2,NULL),(1368,114,62,2,NULL),(1369,174,62,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_CACHE_FILESYSTEM'),(26,'android.permission.ACCESS_COARSE_LOCATION'),(24,'android.permission.ACCESS_FINE_LOCATION'),(8,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.CAMERA'),(23,'android.permission.CHANGE_CONFIGURATION'),(21,'android.permission.CHANGE_NETWORK_STATE'),(20,'android.permission.CHANGE_WIFI_STATE'),(13,'android.permission.DELETE_CACHE_FILES'),(4,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(18,'android.permission.KILL_BACKGROUND_PROCESSES'),(12,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.RECEIVE_SMS'),(9,'android.permission.SET_WALLPAPER'),(3,'android.permission.SYSTEM_ALERT_WINDOW'),(15,'android.permission.VIBRATE'),(22,'android.permission.WAKE_LOCK'),(16,'android.permission.WRITE_APN_SETTINGS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(14,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(25,'rockchip.permission.FULL_SCREEN');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'',NULL,NULL,NULL),(17,NULL,NULL,'file://',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'file://',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'file://',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,3,1),(10,2,1),(11,3,2),(12,2,2),(13,3,5),(14,2,5),(15,3,6),(16,2,6),(17,3,8),(18,2,8),(19,3,9),(20,2,9),(21,3,10),(22,2,10),(23,3,11),(24,2,11),(25,3,12),(26,2,12),(27,4,1),(28,3,13),(29,2,13),(30,4,5),(31,3,14),(32,2,14),(33,4,6),(34,4,7),(35,4,8),(36,4,15),(37,5,1),(38,5,2),(39,5,3),(40,5,4),(41,5,5),(42,5,6),(43,5,8),(44,5,15),(45,6,1),(46,6,2),(47,6,3),(48,6,4),(49,6,5),(50,6,6),(51,6,7),(52,6,8),(53,6,10),(54,6,14),(55,6,17),(56,6,16),(57,6,19),(58,6,18),(59,6,21),(60,6,20),(61,6,23),(62,6,22),(63,7,1),(64,7,5),(65,7,6),(66,7,22),(67,7,7),(68,7,25),(69,7,8),(70,7,24),(71,7,26),(72,7,12),(73,7,15);
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

-- Dump completed on 2015-10-12  3:30:26
