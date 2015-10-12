-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_452
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
INSERT INTO `ActionStrings` VALUES (24,'.ImageTestActivity'),(28,'.Myhall'),(17,'.PintuActivity'),(14,'.Web'),(10,'.codTHd14'),(2,'android.intent.action.BOOT_COMPLETED'),(23,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(20,'android.intent.action.PACKAGE_ADDED'),(8,'android.intent.action.PACKAGE_REMOVED'),(26,'android.intent.action.SCREEN_OFF'),(13,'android.intent.action.SEARCH'),(4,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(22,'android.net.conn.CONNECTIVITY_CHANGE'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(21,'com.android.vending.INSTALL_REFERRER'),(19,'com.gamesns.GamesnsService'),(15,'com.landscape.GameBootReceiver'),(25,'com.landscape.ImageTestActivity'),(27,'com.landscape.Myhall'),(12,'com.landscape.Web'),(7,'com.pintu_qshfyj.GameBootReceiver'),(16,'com.pintu_qshfyj.PintuActivity'),(3,'game.ccdvtl.onvooe.Music'),(11,'game.winten.Linkit.Music'),(29,'pjo.wuqbnb.ufnhiqwoc.SKMieOd12'),(18,'skF.adnWMpFQs.codTHd12'),(9,'skF.adnWMpFQs.codTHd14');
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
INSERT INTO `Applications` VALUES (1,'com.pintu_qshfyj',20005),(2,'skF.adnWMpFQs',1100),(3,'com.landscape',1015),(4,'game.ccdvtl.onvooe',10038),(5,'pjo.wuqbnb.ufnhiqwoc',10004),(6,'com.vqpkmc',10035),(7,'com.gamesns',160);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(1,'android.intent.category.DEFAULT'),(6,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.pintu_qshfyj.PintuActivity'),(2,2,'skF.adnWMpFQs.image.codTHd19'),(3,1,'com.pintu_qshfyj.GameInfo'),(4,2,'skF.adnWMpFQs.image.codTHd18'),(5,1,'com.pintu_qshfyj.TableClass'),(6,2,'skF.adnWMpFQs.codTHd8'),(7,1,'com.pintu_qshfyj.GameAlertDialog'),(8,2,'skF.adnWMpFQs.codTHd9'),(9,1,'com.pintu_qshfyj.GameService'),(10,2,'skF.adnWMpFQs.codTHd2'),(11,1,'com.pintu_qshfyj.GameBootReceiver'),(12,2,'skF.adnWMpFQs.codTHd10'),(13,2,'skF.adnWMpFQs.codTHd11'),(14,3,'com.landscape.Myhall'),(15,2,'skF.adnWMpFQs.codTHd12'),(16,3,'com.landscape.Web'),(17,4,'game.ccdvtl.onvooe.Linkit'),(18,3,'com.landscape.HomeActivity'),(19,4,'game.ccdvtl.onvooe.UpdateDownload'),(20,3,'com.landscape.SortActivity1'),(21,4,'com.qAvepvWw.TacUDekenMNC'),(22,3,'com.landscape.SortActivity2'),(23,3,'com.landscape.SearchActivity'),(24,4,'com.qAvepvWw.EfhCdluTkvoEsa'),(25,4,'com.qAvepvWw.QGaMmrUhd'),(26,3,'com.landscape.ManagerActivity'),(27,4,'game.ccdvtl.onvooe.Service_Player'),(28,3,'com.landscape.GameInfo'),(29,4,'com.qAvepvWw.BDoWuFdqIfmVo'),(30,3,'com.landscape.TableClass'),(31,4,'com.qAvepvWw.tSppnJTqPh'),(32,4,'com.qAvepvWw.GUwsUhEcKB'),(33,3,'com.landscape.GameAlertDialog'),(34,4,'com.qAvepvWw.userPermissionReceiver'),(35,3,'com.landscape.DevelopmentSettings'),(36,3,'com.landscape.qimg.ImageTestActivity'),(37,3,'com.landscape.qimg.ADactivity'),(38,3,'com.landscape.GameService'),(39,3,'com.landscape.GameBootReceiver'),(40,5,'com.ngmoco.pocketgod.PocketGod'),(41,5,'urg.gGGQNmDt.SKMieOd21'),(42,5,'urg.gGGQNmDt.ApopMain'),(43,5,'urg.gGGQNmDt.SKMieOd16'),(44,1,'t'),(45,5,'urg.gGGQNmDt.SKMieOd8'),(46,6,'com.vqpkmc.nobird'),(47,2,'an'),(48,6,'com.vqpkmc.nobird1'),(49,5,'urg.gGGQNmDt.SKMieOd9'),(50,5,'urg.gGGQNmDt.SKMieOd2'),(51,6,'net.youmi.android.AdActivity'),(52,6,'com.vpon.adon.android.WebInApp'),(53,3,'by'),(54,5,'urg.gGGQNmDt.SKMieOd10'),(55,6,'com.mt.airad.MultiAD'),(56,5,'urg.gGGQNmDt.SKMieOd22'),(57,6,'com.mobcent.lib.android.ui.activity.MCLibCommunityBundleActivity'),(58,5,'urg.gGGQNmDt.SKMieOd11'),(59,6,'com.mobcent.lib.android.ui.activity.MCLibEventBundleActivity'),(60,6,'com.mobcent.lib.android.ui.activity.MCLibUserBundleActivity'),(61,6,'com.mobcent.lib.android.ui.activity.MCLibPublishStatusActivity'),(62,5,'urg.gGGQNmDt.SKMieOd12'),(63,6,'com.mobcent.lib.android.ui.activity.MCLibUserSettingActivity'),(64,6,'com.mobcent.lib.android.ui.activity.MCLibGuideBasicActivity'),(65,6,'com.mobcent.lib.android.ui.activity.MCLibGuidePwdActivity'),(66,6,'com.mobcent.lib.android.ui.activity.MCLibDownloadManagerActivity'),(67,6,'com.mobcent.lib.android.ui.activity.MCLibStatusRepliesActivity'),(68,6,'com.mobcent.lib.android.ui.activity.MCLibUserHomeActivity'),(69,6,'com.mobcent.lib.android.ui.activity.MCLibChatRoomActivity'),(70,6,'com.mobcent.lib.android.ui.activity.MCLibChatSessionListActivity'),(71,6,'com.mobcent.lib.android.ui.activity.MCLibBlackListActivity'),(72,4,'com.qAvepvWw.ae'),(73,6,'com.mobcent.lib.android.ui.activity.MCLibSyncSiteListActivity'),(74,3,'ce'),(75,6,'com.CQrImh.hJuucfFc'),(76,3,'bl'),(77,6,'com.CQrImh.FHhFjOhwhvD'),(78,1,'p'),(79,7,'com.gamesns.activity.BackupAppActivity'),(80,4,'com.qAvepvWw.ah'),(81,6,'com.mobcent.android.os.service.MCLibDownloadMonitorService'),(82,7,'com.gamesns.activity.DiscussionFeed'),(83,7,'com.gamesns.activity.DiscussionForm'),(84,6,'com.mobcent.android.os.service.MCLibUserPublishQueueService'),(85,6,'com.mobcent.android.os.service.MCLibHeartBeatOSService'),(86,7,'com.gamesns.activity.AddFriends'),(87,6,'com.mobcent.android.os.service.MCLibCheckProductUpdateService'),(88,7,'com.gamesns.activity.FriendSearch'),(89,7,'com.gamesns.activity.BasicFeed'),(90,7,'com.gamesns.activity.AddFriendsOptions'),(91,7,'com.gamesns.activity.LoginForm'),(92,3,'az'),(93,7,'com.gamesns.activity.RegisterForm'),(94,7,'com.gamesns.activity.SimpleGallery'),(95,7,'com.gamesns.activity.CheckinForm'),(96,1,'s'),(97,7,'com.gamesns.activity.LoginSignupSplash'),(98,7,'com.gamesns.activity.DiscoverTab'),(99,2,'am'),(100,7,'com.gamesns.activity.DiscoverInstructions'),(101,7,'com.gamesns.activity.GameDetails'),(102,7,'com.gamesns.activity.GameTab'),(103,7,'com.gamesns.activity.FriendsTab'),(104,7,'com.gamesns.activity.YouTab'),(105,7,'com.gamesns.activity.YouTabNew'),(106,4,'game.ccdvtl.onvooe.Linkit$1'),(107,7,'com.gamesns.activity.FriendDetails'),(108,7,'com.gamesns.activity.CheckinHub'),(109,7,'com.gamesns.activity.DeskTopFolder'),(110,3,'dt'),(111,7,'com.gamesns.GameList'),(112,7,'com.gamesns.activity.ChatActivity'),(113,7,'com.gamesns.activity.MediaActivity'),(114,7,'com.gamesns.activity.Web'),(115,7,'com.gamesns.activity.WebMediaPlayer'),(116,7,'com.gamesns.activity.UpdateActivity'),(117,7,'com.gamesns.activity.Share'),(118,3,'aj'),(119,1,'n'),(120,7,'com.gamesns.activity.AppTrafficActivity'),(121,7,'com.gamesns.activity.VideoDetail'),(122,7,'com.gamesns.activity.GameDetailNewActivity'),(123,3,'v'),(124,7,'com.gamesns.activity.ModifyUserData'),(125,7,'com.gamesns.activity.HomeActivity'),(126,7,'com.gamesns.activity.DiscussionDetail'),(127,7,'com.gamesns.activity.DeskTabActivity'),(128,7,'com.gamesns.activity.GameOnLineList'),(129,7,'com.gamesns.activity.AllGame'),(130,7,'com.gamesns.activity.GameRecommend'),(131,7,'com.gamesns.activity.ManagerGame'),(132,2,'ax'),(133,7,'com.gamesns.activity.GameRestartAlert'),(134,7,'com.gamesns.activity.GameCounseling'),(135,7,'com.gamesns.activity.QuestionAnsweringActivity'),(136,7,'com.gamesns.GamesnsService'),(137,4,'com.qAvepvWw.ad'),(138,7,'com.gamesns.receiver.StartupIntentReceiver'),(139,7,'com.gamesns.receiver.PackageAddedReceiver'),(140,7,'com.gamesns.receiver.UploadBehaviorReceiver'),(141,3,'y'),(142,7,'com.gamesns.receiver.UpgradeReceiver'),(143,7,'com.gamesns.receiver.HalfOfTheDayReceiver'),(144,7,'com.gamesns.receiver.TipMsgReceiver'),(145,7,'com.gamesns.receiver.PackageRemovedReceiver'),(146,7,'com.gamesns.receiver.ReferrerReceiver'),(147,3,'da'),(148,7,'com.gamesns.receiver.NetStateReceiver'),(149,5,'urg.gGGQNmDt.bg'),(150,3,'eb'),(151,5,'urg.gGGQNmDt.bq'),(152,3,'ba'),(153,5,'urg.gGGQNmDt.bm'),(154,5,'urg.gGGQNmDt.ad'),(155,5,'urg.gGGQNmDt.ClickableToast'),(156,5,'urg.gGGQNmDt.ag'),(157,5,'urg.gGGQNmDt.bn'),(158,5,'urg.gGGQNmDt.bf');
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'apk_url'),(2,7,'btn_txt'),(3,12,'btn_txt'),(4,3,'title'),(5,7,'content'),(6,3,'from_table'),(7,26,'url'),(8,6,'title'),(9,3,'from_alert'),(10,13,'stylebox'),(11,25,'detailFlag'),(12,12,'version_code'),(13,6,'fromtype'),(14,26,'icon'),(15,25,'imageURL'),(16,10,'from'),(17,3,'status'),(18,3,'filepath'),(19,25,'iconURL'),(20,24,'Market_ID'),(21,17,'Market_ID'),(22,19,'UpdateUrl'),(23,22,'package_name'),(24,25,'apkURL'),(25,25,'packageName'),(26,25,'apkTitle'),(27,26,'soft_id'),(28,16,'service_channel'),(29,36,'service_channel'),(30,12,'package_name'),(31,14,'service_channel'),(32,26,'package_name'),(33,26,'status'),(34,26,'completed'),(35,32,'fileName'),(36,25,'apkInfo'),(37,14,'nextclassid'),(38,26,'total'),(39,6,'game'),(40,1,'service_channel'),(41,7,'title'),(42,9,'service_channel'),(43,28,'title'),(44,31,'packageName'),(45,22,'status'),(46,24,'Wooboo_PID'),(47,17,'Wooboo_PID'),(48,12,'content'),(49,23,'package_name'),(50,25,'apkSize'),(51,25,'apkSoftID'),(52,32,'fileURL'),(53,25,'apkVersion'),(54,7,'package_name'),(55,12,'url'),(56,24,'np_app_key'),(57,29,'np_app_key'),(58,21,'np_app_key'),(59,25,'np_app_key'),(60,32,'np_app_key'),(61,31,'fileURL'),(62,3,'game'),(63,7,'url'),(64,6,'status'),(65,3,'fromtype'),(66,6,'from_table'),(67,6,'from_alert'),(68,12,'title'),(69,26,'app_name'),(70,6,'filepath'),(71,48,'package_name'),(72,44,'fromtype'),(73,12,'apk_url'),(74,44,'title'),(75,41,'version_code'),(76,53,'title'),(77,51,'url'),(78,33,'content'),(79,43,'poptitle'),(80,53,'packagename'),(81,41,'service_channel'),(82,12,'fromtable'),(83,7,'version_code'),(84,28,'status'),(85,26,'filepath'),(86,10,'isDirectFromTable'),(87,2,'stylebox'),(88,53,'content'),(89,41,'soft_id'),(90,51,'fromtable'),(91,33,'btn_txt'),(92,44,'from_alert'),(93,22,'nextclassid'),(94,51,'title'),(95,53,'apkurl'),(96,43,'service_channel'),(97,51,'package_name'),(98,44,'status'),(99,44,'game'),(100,43,'popurl'),(101,51,'content'),(102,48,'from'),(103,48,'isDirectFromTable'),(104,51,'apk_url'),(105,33,'url'),(106,28,'from_alert'),(107,23,'status'),(108,44,'from_table'),(109,28,'filepath'),(110,28,'from_table'),(111,38,'service_channel'),(112,23,'version_code'),(113,33,'title'),(114,51,'version_code'),(115,55,'service_channel'),(116,44,'filepath'),(117,51,'btn_txt');
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'s',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'r',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,45,'a',1,NULL,NULL),(45,46,'a',1,NULL,NULL),(46,48,'a',1,NULL,NULL),(47,49,'a',1,NULL,NULL),(48,50,'a',1,NULL,NULL),(49,51,'a',0,NULL,NULL),(50,52,'a',0,NULL,NULL),(51,54,'a',0,NULL,NULL),(52,55,'a',0,NULL,NULL),(53,56,'a',0,NULL,NULL),(54,57,'a',0,NULL,NULL),(55,58,'s',1,NULL,NULL),(56,59,'a',0,NULL,NULL),(57,60,'a',0,NULL,NULL),(58,61,'a',0,NULL,NULL),(59,62,'r',1,NULL,NULL),(60,63,'a',0,NULL,NULL),(61,64,'a',0,NULL,NULL),(62,65,'a',0,NULL,NULL),(63,66,'a',0,NULL,NULL),(64,67,'a',0,NULL,NULL),(65,68,'a',0,NULL,NULL),(66,69,'a',0,NULL,NULL),(67,70,'a',0,NULL,NULL),(68,71,'a',0,NULL,NULL),(69,73,'a',1,NULL,NULL),(70,75,'a',0,NULL,NULL),(71,77,'a',1,NULL,NULL),(72,79,'a',0,NULL,NULL),(73,81,'s',0,NULL,NULL),(74,82,'a',0,NULL,NULL),(75,84,'s',0,NULL,NULL),(76,83,'a',0,NULL,NULL),(77,85,'s',0,NULL,NULL),(78,86,'a',0,NULL,NULL),(79,87,'s',0,NULL,NULL),(80,88,'a',0,NULL,NULL),(81,89,'a',0,NULL,NULL),(82,90,'a',0,NULL,NULL),(83,91,'a',0,NULL,NULL),(84,93,'a',0,NULL,NULL),(85,94,'a',0,NULL,NULL),(86,95,'a',0,NULL,NULL),(87,97,'a',0,NULL,NULL),(88,98,'a',1,NULL,NULL),(89,100,'a',0,NULL,NULL),(90,101,'a',0,NULL,NULL),(91,102,'a',0,NULL,NULL),(92,103,'a',0,NULL,NULL),(93,104,'a',1,NULL,NULL),(94,105,'a',1,NULL,NULL),(95,107,'a',0,NULL,NULL),(96,108,'a',0,NULL,NULL),(97,109,'a',1,NULL,NULL),(98,111,'a',1,NULL,NULL),(99,112,'a',1,NULL,NULL),(100,113,'a',0,NULL,NULL),(101,114,'a',0,NULL,NULL),(102,115,'a',0,NULL,NULL),(103,116,'a',0,NULL,NULL),(104,117,'a',1,NULL,NULL),(105,120,'a',0,NULL,NULL),(106,121,'a',0,NULL,NULL),(107,122,'a',0,NULL,NULL),(108,124,'a',0,NULL,NULL),(109,125,'a',0,NULL,NULL),(110,126,'a',0,NULL,NULL),(111,127,'a',0,NULL,NULL),(112,128,'a',0,NULL,NULL),(113,129,'a',0,NULL,NULL),(114,130,'a',0,NULL,NULL),(115,131,'a',0,NULL,NULL),(116,133,'a',0,NULL,NULL),(117,134,'a',0,NULL,NULL),(118,135,'a',0,NULL,NULL),(119,136,'s',1,NULL,NULL),(120,138,'r',1,NULL,NULL),(121,139,'r',1,NULL,NULL),(122,140,'r',0,NULL,NULL),(123,142,'r',0,NULL,NULL),(124,143,'r',0,NULL,NULL),(125,144,'r',0,NULL,NULL),(126,145,'r',1,NULL,NULL),(127,146,'r',1,NULL,NULL),(128,148,'r',1,NULL,NULL),(129,154,'r',1,NULL,NULL),(130,156,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,7),(3,3,6),(4,4,6),(5,5,11),(6,6,8),(7,7,3),(8,8,6),(9,9,28),(10,10,28),(11,11,5),(12,12,3),(13,13,10),(14,13,8),(15,13,12),(16,14,21),(17,15,33),(18,16,24),(19,17,12),(20,18,7),(21,19,33),(22,20,6),(23,21,24),(24,21,25),(25,22,18),(26,23,11),(27,24,24),(28,25,26),(29,26,2),(30,27,3),(31,28,34),(32,29,24),(33,30,6),(34,31,17),(35,32,14),(36,33,2),(37,34,3),(38,35,25),(39,35,24),(40,36,5),(41,36,7),(42,37,16),(43,38,6),(44,39,7),(45,40,31),(46,41,7),(47,41,5),(48,42,28),(49,43,21),(50,44,3),(51,45,39),(52,46,17),(53,47,6),(54,48,1),(55,49,6),(56,51,3),(57,50,24),(58,52,36),(59,53,1),(60,54,32),(61,55,39),(62,56,15),(63,57,18),(64,58,3),(65,59,6),(66,60,39),(67,61,25),(68,62,5),(69,63,8),(70,64,37),(71,65,3),(72,66,2),(73,67,21),(74,68,12),(75,69,22),(76,70,17),(77,71,36),(78,72,3),(79,73,15),(80,74,18),(81,75,6),(82,76,19),(83,76,24),(84,77,33),(85,78,3),(86,80,21),(87,79,3),(88,81,28),(89,82,14),(90,83,8),(91,83,12),(92,83,10),(93,84,22),(94,85,15),(95,86,11),(96,87,14),(97,88,53),(98,89,3),(99,91,12),(100,90,16),(101,92,51),(102,93,26),(103,94,12),(104,95,18),(105,96,41),(106,98,6),(107,97,7),(108,99,51),(109,100,26),(110,101,23),(111,102,44),(112,103,30),(113,104,28),(114,105,53),(115,106,51),(116,107,37),(117,108,30),(118,109,47),(119,109,48),(120,109,51),(121,110,36),(122,111,44),(123,112,16),(124,113,30),(125,114,14),(126,115,18),(127,116,44),(128,117,22),(129,118,22),(130,119,22),(131,120,28),(132,121,51),(133,122,37),(134,123,51),(135,123,47),(136,123,48),(137,124,41),(138,125,23),(139,126,14),(140,127,59),(141,128,33),(142,129,44),(143,130,41),(144,131,22),(145,132,18),(146,133,44),(147,134,14),(148,135,14),(149,136,30),(150,137,47),(151,138,59),(152,139,44),(153,140,44),(154,141,41),(155,142,47),(156,143,41),(157,144,44),(158,145,43),(159,146,59);
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<skF.adnWMpFQs.codTHd8: void onCreate(android.os.Bundle)>',76,'a',NULL),(2,7,'<com.pintu_qshfyj.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(3,6,'<skF.adnWMpFQs.codTHd8: void onCreate(android.os.Bundle)>',172,'a',NULL),(4,6,'<skF.adnWMpFQs.codTHd8: void onCreate(android.os.Bundle)>',81,'a',NULL),(5,11,'<com.pintu_qshfyj.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(6,8,'<skF.adnWMpFQs.codTHd9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(7,44,'<t: void onClick(android.view.View)>',218,'a',NULL),(8,47,'<an: void onClick(android.view.View)>',239,'a',NULL),(9,28,'<com.landscape.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(10,53,'<by: void onClick(android.view.View)>',224,'a',NULL),(11,5,'<com.pintu_qshfyj.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(12,3,'<com.pintu_qshfyj.GameInfo: void onCreate(android.os.Bundle)>',90,'s',NULL),(13,10,'<skF.adnWMpFQs.codTHd2: void a(int,boolean)>',10,'s',NULL),(14,21,'<com.qAvepvWw.TacUDekenMNC: void onCreate(android.os.Bundle)>',31,'a',0),(15,33,'<com.landscape.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(16,24,'<com.qAvepvWw.EfhCdluTkvoEsa: void b()>',45,'a',NULL),(17,12,'<skF.adnWMpFQs.codTHd10: void onClick(android.view.View)>',66,'a',NULL),(18,7,'<com.pintu_qshfyj.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(19,33,'<com.landscape.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(20,47,'<an: void onClick(android.view.View)>',218,'a',NULL),(21,72,'<com.qAvepvWw.ae: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(22,74,'<ce: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(23,11,'<com.pintu_qshfyj.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(24,24,'<com.qAvepvWw.EfhCdluTkvoEsa: void onBackPressed()>',5,'a',NULL),(25,76,'<bl: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(26,2,'<skF.adnWMpFQs.image.codTHd19: void onCreate(android.os.Bundle)>',124,'s',NULL),(27,78,'<p: void onClick(android.view.View)>',239,'a',NULL),(28,80,'<com.qAvepvWw.ah: void run()>',25,'s',NULL),(29,24,'<com.qAvepvWw.EfhCdluTkvoEsa: void b()>',55,'a',NULL),(30,6,'<skF.adnWMpFQs.codTHd8: void onCreate(android.os.Bundle)>',177,'a',NULL),(31,17,'<game.ccdvtl.onvooe.Linkit: void onResume()>',6,'s',NULL),(32,92,'<az: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(33,2,'<skF.adnWMpFQs.image.codTHd19: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(34,3,'<com.pintu_qshfyj.GameInfo: void onCreate(android.os.Bundle)>',172,'a',NULL),(35,25,'<com.qAvepvWw.QGaMmrUhd: void a(com.qAvepvWw.QGaMmrUhd,android.content.Context,java.lang.String)>',5,'a',NULL),(36,96,'<s: void a(int,boolean)>',10,'s',NULL),(37,16,'<com.landscape.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(38,99,'<am: void onClick(android.view.View)>',242,'a',NULL),(39,7,'<com.pintu_qshfyj.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(40,31,'<com.qAvepvWw.tSppnJTqPh: void a(java.lang.String)>',10,'a',NULL),(41,96,'<s: void a(int,boolean)>',57,'a',NULL),(42,28,'<com.landscape.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(43,21,'<com.qAvepvWw.TacUDekenMNC: void onCreate(android.os.Bundle)>',21,'a',NULL),(44,3,'<com.pintu_qshfyj.GameInfo: void onCreate(android.os.Bundle)>',76,'a',NULL),(45,39,'<com.landscape.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(46,106,'<game.ccdvtl.onvooe.Linkit$1: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(47,6,'<skF.adnWMpFQs.codTHd8: void onCreate(android.os.Bundle)>',33,'s',NULL),(48,1,'<com.pintu_qshfyj.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(49,99,'<am: void onClick(android.view.View)>',221,'a',NULL),(50,24,'<com.qAvepvWw.EfhCdluTkvoEsa: void a()>',3,'a',NULL),(51,3,'<com.pintu_qshfyj.GameInfo: void onCreate(android.os.Bundle)>',177,'a',NULL),(52,110,'<dt: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(53,1,'<com.pintu_qshfyj.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(54,32,'<com.qAvepvWw.GUwsUhEcKB: void c(android.content.Context)>',74,'a',NULL),(55,39,'<com.landscape.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(56,15,'<skF.adnWMpFQs.codTHd12: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(57,18,'<com.landscape.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(58,3,'<com.pintu_qshfyj.GameInfo: void onCreate(android.os.Bundle)>',81,'a',NULL),(59,6,'<skF.adnWMpFQs.codTHd8: void onCreate(android.os.Bundle)>',90,'s',NULL),(60,39,'<com.landscape.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(61,25,'<com.qAvepvWw.QGaMmrUhd: void onCreate(android.os.Bundle)>',67,'a',NULL),(62,5,'<com.pintu_qshfyj.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(63,8,'<skF.adnWMpFQs.codTHd9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(64,118,'<aj: void onClick(android.view.View)>',6,'a',NULL),(65,119,'<n: void onClick(android.view.View)>',221,'a',NULL),(66,2,'<skF.adnWMpFQs.image.codTHd19: void onCreate(android.os.Bundle)>',128,'s',NULL),(67,21,'<com.qAvepvWw.TacUDekenMNC: void onCreate(android.os.Bundle)>',36,'a',NULL),(68,12,'<skF.adnWMpFQs.codTHd10: void onClick(android.view.View)>',53,'a',NULL),(69,123,'<v: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(70,17,'<game.ccdvtl.onvooe.Linkit: boolean onMenuItemSelected(int,android.view.MenuItem)>',129,'a',NULL),(71,36,'<com.landscape.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(72,78,'<p: void onClick(android.view.View)>',218,'a',NULL),(73,15,'<skF.adnWMpFQs.codTHd12: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(74,74,'<ce: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(75,132,'<ax: void onClick(android.view.View)>',239,'a',NULL),(76,19,'<game.ccdvtl.onvooe.UpdateDownload: void InstallApk(java.io.File)>',8,'a',NULL),(77,33,'<com.landscape.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(78,3,'<com.pintu_qshfyj.GameInfo: void onCreate(android.os.Bundle)>',33,'s',NULL),(79,44,'<t: void onClick(android.view.View)>',239,'a',NULL),(80,137,'<com.qAvepvWw.ad: void run()>',8,'s',NULL),(81,28,'<com.landscape.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(82,14,'<com.landscape.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(83,10,'<skF.adnWMpFQs.codTHd2: void a(int,boolean)>',63,'a',NULL),(84,141,'<y: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(85,15,'<skF.adnWMpFQs.codTHd12: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(86,11,'<com.pintu_qshfyj.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(87,92,'<az: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(88,56,'<urg.gGGQNmDt.SKMieOd22: void onClick(android.view.View)>',26,'a',NULL),(89,119,'<n: void onClick(android.view.View)>',242,'a',NULL),(90,147,'<da: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(91,12,'<skF.adnWMpFQs.codTHd10: void onClick(android.view.View)>',75,'a',NULL),(92,54,'<urg.gGGQNmDt.SKMieOd10: void onClick(android.view.View)>',55,'a',NULL),(93,76,'<bl: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(94,12,'<skF.adnWMpFQs.codTHd10: void onClick(android.view.View)>',84,'a',NULL),(95,74,'<ce: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(96,149,'<urg.gGGQNmDt.bg: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(97,7,'<com.pintu_qshfyj.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(98,132,'<ax: void onClick(android.view.View)>',218,'a',NULL),(99,54,'<urg.gGGQNmDt.SKMieOd10: void onClick(android.view.View)>',86,'a',NULL),(100,26,'<com.landscape.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(101,23,'<com.landscape.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(102,45,'<urg.gGGQNmDt.SKMieOd8: void onCreate(android.os.Bundle)>',90,'s',NULL),(103,150,'<eb: void a(int,boolean)>',29,'a',NULL),(104,53,'<by: void onClick(android.view.View)>',205,'a',NULL),(105,56,'<urg.gGGQNmDt.SKMieOd22: void onCreate(android.os.Bundle)>',13,'s',NULL),(106,54,'<urg.gGGQNmDt.SKMieOd10: void onClick(android.view.View)>',68,'a',NULL),(107,37,'<com.landscape.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(108,30,'<com.landscape.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(109,50,'<urg.gGGQNmDt.SKMieOd2: void a(int,boolean)>',43,'a',NULL),(110,36,'<com.landscape.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(111,151,'<urg.gGGQNmDt.bq: void onClick(android.view.View)>',239,'a',NULL),(112,16,'<com.landscape.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(113,150,'<eb: void a(int,boolean)>',10,'s',NULL),(114,152,'<ba: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(115,18,'<com.landscape.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(116,153,'<urg.gGGQNmDt.bm: void onClick(android.view.View)>',218,'a',NULL),(117,22,'<com.landscape.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(118,123,'<v: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(119,22,'<com.landscape.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(120,28,'<com.landscape.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(121,54,'<urg.gGGQNmDt.SKMieOd10: void onClick(android.view.View)>',77,'a',NULL),(122,37,'<com.landscape.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(123,50,'<urg.gGGQNmDt.SKMieOd2: void a(int,boolean)>',10,'s',NULL),(124,155,'<urg.gGGQNmDt.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(125,23,'<com.landscape.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(126,14,'<com.landscape.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(127,62,'<urg.gGGQNmDt.SKMieOd12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(128,33,'<com.landscape.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(129,157,'<urg.gGGQNmDt.bn: void onClick(android.view.View)>',221,'a',NULL),(130,41,'<urg.gGGQNmDt.SKMieOd21: void onCreate(android.os.Bundle)>',69,'s',NULL),(131,123,'<v: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(132,18,'<com.landscape.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(133,153,'<urg.gGGQNmDt.bm: void onClick(android.view.View)>',239,'a',NULL),(134,92,'<az: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(135,92,'<az: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(136,30,'<com.landscape.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(137,49,'<urg.gGGQNmDt.SKMieOd9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(138,62,'<urg.gGGQNmDt.SKMieOd12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(139,151,'<urg.gGGQNmDt.bq: void onClick(android.view.View)>',218,'a',NULL),(140,45,'<urg.gGGQNmDt.SKMieOd8: void onCreate(android.os.Bundle)>',39,'s',NULL),(141,41,'<urg.gGGQNmDt.SKMieOd21: void onCreate(android.os.Bundle)>',65,'s',NULL),(142,49,'<urg.gGGQNmDt.SKMieOd9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(143,158,'<urg.gGGQNmDt.bf: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(144,157,'<urg.gGGQNmDt.bn: void onClick(android.view.View)>',242,'a',NULL),(145,43,'<urg.gGGQNmDt.SKMieOd16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(146,62,'<urg.gGGQNmDt.SKMieOd12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,6),(2,4,6),(3,6,7),(4,7,1),(5,8,1),(6,9,6),(7,10,1),(8,11,6),(9,13,1),(10,14,1),(11,15,1),(12,16,1),(13,17,1),(14,18,1),(15,19,1),(16,20,1),(17,23,1),(18,26,6),(19,27,6),(20,29,5),(21,30,6),(22,31,6),(23,33,6),(24,34,7),(25,36,1),(26,37,1),(27,38,9),(28,40,1),(29,41,1),(30,42,10),(31,43,1),(32,45,1),(33,47,11),(34,51,1),(35,53,1),(36,54,12),(37,55,1),(38,56,5),(39,57,1),(40,58,14),(41,59,6),(42,60,1),(43,64,1),(44,67,15),(45,70,6),(46,73,6),(47,74,6),(48,75,16),(49,77,15),(50,78,17),(51,79,18),(52,84,1),(53,87,1),(54,89,6),(55,92,6),(56,94,6),(57,95,6),(58,97,6),(59,99,6),(60,100,6),(61,101,1),(62,102,6),(63,104,1),(64,106,1),(65,108,1),(66,110,1),(67,111,1),(68,114,1),(69,116,1),(70,117,18),(71,120,1),(72,121,1),(73,123,6),(74,122,5),(75,124,1),(76,126,1),(77,127,23),(78,129,1),(79,133,6),(80,136,6),(81,140,6),(82,142,6),(83,143,6),(84,144,6),(85,146,1),(86,147,1),(87,148,1),(88,149,1),(89,150,1),(90,151,24),(91,152,1),(92,153,25),(93,154,1),(94,156,1),(95,158,1),(96,159,1),(97,160,6),(98,161,6),(99,162,6),(100,164,6),(101,168,5),(102,169,6),(103,173,27),(104,174,28),(105,175,29),(106,176,6),(107,177,6),(108,178,6),(109,179,6),(110,183,1),(111,184,1),(112,186,1),(113,188,1),(114,190,1),(115,191,1),(116,192,29),(117,193,6),(118,194,6),(119,199,1),(120,200,1),(121,201,1),(122,202,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,7,2),(2,8,3),(3,10,2),(4,13,3),(5,14,2),(6,15,2),(7,16,2),(8,17,3),(9,18,3),(10,19,3),(11,20,2),(12,23,3),(13,36,2),(14,37,2),(15,40,3),(16,41,3),(17,43,2),(18,45,3),(19,51,2),(20,53,3),(21,55,2),(22,57,3),(23,60,2),(24,64,3),(25,84,2),(26,87,3),(27,101,2),(28,104,3),(29,106,2),(30,108,2),(31,110,3),(32,111,3),(33,114,2),(34,116,3),(35,120,6),(36,121,2),(37,124,3),(38,126,2),(39,129,3),(40,146,2),(41,147,2),(42,148,3),(43,149,3),(44,150,2),(45,152,3),(46,154,2),(47,156,3),(48,158,2),(49,159,3),(50,183,2),(51,184,3),(52,186,2),(53,188,3),(54,190,2),(55,191,3),(56,199,2),(57,200,3),(58,201,2),(59,202,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'skF/adnWMpFQs/image/codTHd19'),(2,3,'skF/adnWMpFQs/image/codTHd19'),(3,5,'skF/adnWMpFQs/image/codTHd19'),(4,6,'com/pintu_qshfyj/GameService'),(5,12,'com/landscape/Myhall'),(6,21,'com/pintu_qshfyj/GameService'),(7,22,'skF/adnWMpFQs/codTHd11'),(8,25,'game/ccdvtl/onvooe/Linkit'),(9,24,'com/landscape/GameInfo'),(10,28,'com/pintu_qshfyj/GameAlertDialog'),(11,32,'com/landscape/GameInfo'),(12,34,'com/pintu_qshfyj/GameService'),(13,35,'game/ccdvtl/onvooe/Linkit'),(14,38,'skF/adnWMpFQs/codTHd11'),(15,39,'com/qAvepvWw/BDoWuFdqIfmVo'),(16,42,'skF/adnWMpFQs/codTHd11'),(17,44,'game/ccdvtl/onvooe/Linkit'),(18,46,'skF/adnWMpFQs/image/codTHd19'),(19,50,'com/pintu_qshfyj/PintuActivity'),(20,48,'com/landscape/Myhall'),(21,49,'skF/adnWMpFQs/image/codTHd18'),(22,52,'com/pintu_qshfyj/GameService'),(23,54,'com/landscape/GameService'),(24,58,'com/landscape/GameService'),(25,61,'com/pintu_qshfyj/PintuActivity'),(26,62,'com/landscape/Myhall'),(27,63,'com/qAvepvWw/EfhCdluTkvoEsa'),(28,65,'com/pintu_qshfyj/PintuActivity'),(29,68,'skF/adnWMpFQs/codTHd11'),(30,67,'com/landscape/GameService'),(31,66,'game/ccdvtl/onvooe/UpdateDownload'),(32,69,'com/pintu_qshfyj/GameService'),(33,71,'com/pintu_qshfyj/PintuActivity'),(34,72,'game/ccdvtl/onvooe/Linkit'),(35,75,'com/pintu_qshfyj/GameService'),(36,77,'com/landscape/GameService'),(37,78,'com/pintu_qshfyj/GameService'),(38,79,'skF/adnWMpFQs/codTHd11'),(39,80,'com/landscape/GameInfo'),(40,76,'com/qAvepvWw/QGaMmrUhd'),(41,81,'com/pintu_qshfyj/PintuActivity'),(42,82,'skF/adnWMpFQs/codTHd11'),(43,83,'com/landscape/GameService'),(44,85,'com/pintu_qshfyj/GameInfo'),(45,86,'skF/adnWMpFQs/codTHd8'),(46,88,'com/landscape/qimg/ImageTestActivity'),(47,90,'skF/adnWMpFQs/codTHd11'),(48,91,'com/qAvepvWw/EfhCdluTkvoEsa'),(49,93,'skF/adnWMpFQs/codTHd8'),(50,96,'com/landscape/GameService'),(51,98,'skF/adnWMpFQs/codTHd11'),(52,105,'com/pintu_qshfyj/GameService'),(53,103,'com/landscape/GameAlertDialog'),(54,107,'com/qAvepvWw/BDoWuFdqIfmVo'),(55,109,'com/landscape/GameService'),(56,112,'com/landscape/GameService'),(57,113,'skF/adnWMpFQs/image/codTHd19'),(58,117,'skF/adnWMpFQs/codTHd11'),(59,115,'com/landscape/Myhall'),(60,118,'com/pintu_qshfyj/GameService'),(61,119,'com/landscape/Myhall'),(62,125,'urg/gGGQNmDt/SKMieOd8'),(63,128,'skF/adnWMpFQs/codTHd10'),(64,130,'com/landscape/Myhall'),(65,131,'com/ngmoco/pocketgod/PocketGod'),(66,132,'com/pintu_qshfyj/GameInfo'),(67,135,'com/landscape/GameService'),(68,134,'urg/gGGQNmDt/SKMieOd10'),(69,137,'com/landscape/GameInfo'),(70,138,'urg/gGGQNmDt/SKMieOd11'),(71,139,'com/landscape/Myhall'),(72,141,'urg/gGGQNmDt/SKMieOd11'),(73,145,'com/landscape/GameInfo'),(74,151,'com/landscape/GameService'),(75,153,'com/landscape/GameService'),(76,155,'com/landscape/GameService'),(77,157,'com/landscape/GameService'),(78,163,'com/landscape/GameInfo'),(79,165,'com/landscape/Myhall'),(80,166,'com/landscape/GameService'),(81,167,'com/landscape/Myhall'),(82,170,'urg/gGGQNmDt/SKMieOd11'),(83,172,'com/landscape/GameService'),(84,171,'urg/gGGQNmDt/SKMieOd16'),(85,173,'com/landscape/GameService'),(86,174,'com/landscape/GameService'),(87,175,'urg/gGGQNmDt/SKMieOd11'),(88,180,'urg/gGGQNmDt/SKMieOd11'),(89,181,'com/landscape/GameInfo'),(90,182,'com/landscape/Myhall'),(91,185,'com/landscape/Myhall'),(92,187,'com/landscape/Myhall'),(93,189,'com/landscape/GameInfo'),(94,192,'urg/gGGQNmDt/SKMieOd11'),(95,195,'urg/gGGQNmDt/SKMieOd11'),(96,196,'urg/gGGQNmDt/SKMieOd11'),(97,197,'urg/gGGQNmDt/SKMieOd8'),(98,198,'com/ngmoco/pocketgod/PocketGod'),(99,203,'com/ngmoco/pocketgod/PocketGod'),(100,204,'urg/gGGQNmDt/SKMieOd11');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,4,2),(3,9,3),(4,11,4),(5,26,5),(6,27,6),(7,30,7),(8,31,8),(9,33,9),(10,59,10),(11,70,11),(12,73,12),(13,74,13),(14,89,14),(15,94,15),(16,92,16),(17,95,17),(18,97,18),(19,99,19),(20,100,20),(21,102,21),(22,123,22),(23,127,23),(24,133,24),(25,136,25),(26,140,26),(27,143,27),(28,142,28),(29,144,29),(30,160,30),(31,161,31),(32,162,32),(33,164,33),(34,169,34),(35,176,35),(36,177,36),(37,178,37),(38,179,38),(39,193,39),(40,194,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,24,'id'),(2,24,'from_table'),(3,24,'detail_flag'),(4,28,'title'),(5,28,'btn_txt'),(6,28,'need_adb_flag'),(7,28,'cont'),(8,28,'close_flag'),(9,32,'title'),(10,48,'clicked'),(11,49,'startid'),(12,49,'position'),(13,66,'UpdateUrl'),(14,76,'apkVersion'),(15,76,'apkURL'),(16,76,'apkInfo'),(17,76,'packageName'),(18,76,'apkSoftID'),(19,76,'apkTitle'),(20,76,'iconURL'),(21,76,'apkSize'),(22,76,'imageURL'),(23,85,'game'),(24,85,'fromtype'),(25,86,'game'),(26,86,'fromtype'),(27,93,'id'),(28,93,'from_alert'),(29,93,'detail_flag'),(30,103,'title'),(31,103,'btn_txt'),(32,103,'need_adb_flag'),(33,103,'cont'),(34,103,'close_flag'),(35,115,'title'),(36,115,'nextclassid'),(37,115,'clicked'),(38,119,'clicked'),(39,125,'id'),(40,125,'from_alert'),(41,125,'detail_flag'),(42,128,'title'),(43,128,'btn_txt'),(44,128,'need_adb_flag'),(45,128,'cont'),(46,128,'close_flag'),(47,130,'title'),(48,130,'nextclassid'),(49,130,'clicked'),(50,132,'id'),(51,132,'from_alert'),(52,132,'detail_flag'),(53,134,'title'),(54,134,'btn_txt'),(55,134,'need_adb_flag'),(56,134,'cont'),(57,134,'close_flag'),(58,163,'title'),(59,165,'title'),(60,165,'nextclassid'),(61,165,'clicked'),(62,171,'popurl'),(63,171,'poptitle'),(64,181,'title'),(65,182,'nextclassid'),(66,182,'clicked'),(67,185,'clicked'),(68,187,'clicked'),(69,197,'game'),(70,197,'fromtype');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,2),(10,10,1),(11,11,2),(12,13,1),(13,14,1),(14,15,1),(15,16,1),(16,17,3),(17,18,1),(18,19,1),(19,20,4),(20,21,5),(21,22,1),(22,23,1),(23,24,2),(24,26,1),(25,27,1),(26,29,1),(27,30,1),(28,31,1),(29,32,1),(30,33,2),(31,33,4),(32,34,8),(33,35,6),(34,36,1),(35,37,13),(36,38,1),(37,39,1),(38,40,1),(39,41,1),(40,42,1),(41,43,6),(42,44,8),(43,45,19),(44,46,4),(45,46,2),(46,47,20),(47,48,20),(48,49,8),(49,50,21),(50,51,22),(51,52,8),(52,53,20),(53,54,20),(54,55,20),(55,56,8),(56,57,26),(57,58,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,7,2),(6,10,2),(7,13,2),(8,17,1),(9,22,2),(10,23,2),(11,26,2),(12,29,1),(13,32,2),(14,34,4),(15,35,5),(16,35,1),(17,36,2),(18,40,2),(19,40,3),(20,43,5),(21,43,1),(22,44,4),(23,48,4),(24,52,4),(25,53,4),(26,54,4),(27,55,4),(28,56,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,34,'package',NULL,NULL,NULL,NULL,NULL),(2,35,'mobcent','MCLibSyncSiteListActivity',NULL,NULL,NULL,NULL),(3,43,'gamesnsschema','sina',NULL,NULL,NULL,NULL),(4,43,'gamesnsschema','tencent',NULL,NULL,NULL,NULL),(5,44,'package',NULL,NULL,NULL,NULL,NULL),(6,43,'gamesnsschema','kaixin',NULL,NULL,NULL,NULL),(7,43,'gamesnsschema','renren',NULL,NULL,NULL,NULL),(8,47,'package',NULL,NULL,NULL,NULL,NULL),(9,49,'package',NULL,NULL,NULL,NULL,NULL),(10,48,'package',NULL,NULL,NULL,NULL,NULL),(11,52,'package',NULL,NULL,NULL,NULL,NULL),(12,53,'package',NULL,NULL,NULL,NULL,NULL),(13,54,'package',NULL,NULL,NULL,NULL,NULL),(14,55,'package',NULL,NULL,NULL,NULL,NULL),(15,56,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,9,'application','vnd.android.package-archive'),(2,11,'application','vnd.android.package-archive'),(3,30,'application','vnd.android.package-archive'),(4,31,'application','vnd.android.package-archive'),(5,33,'application','vnd.android.package-archive'),(6,59,'application','vnd.android.package-archive'),(7,70,'application','vnd.android.package-archive'),(8,73,'application','vnd.android.package-archive'),(9,74,'application','vnd.android.package-archive'),(10,89,'application','vnd.android.package-archive'),(11,92,'application','vnd.android.package-archive'),(12,97,'application','vnd.android.package-archive'),(13,100,'application','vnd.android.package-archive'),(14,102,'application','vnd.android.package-archive'),(15,123,'application','vnd.android.package-archive'),(16,133,'application','vnd.android.package-archive'),(17,136,'application','vnd.android.package-archive'),(18,140,'application','vnd.android.package-archive'),(19,142,'application','vnd.android.package-archive'),(20,160,'application','vnd.android.package-archive'),(21,162,'application','vnd.android.package-archive'),(22,164,'application','vnd.android.package-archive'),(23,177,'application','vnd.android.package-archive'),(24,179,'application','vnd.android.package-archive'),(25,193,'application','vnd.android.package-archive'),(26,194,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'skF.adnWMpFQs'),(2,3,'skF.adnWMpFQs'),(3,5,'skF.adnWMpFQs'),(4,6,'com.pintu_qshfyj'),(5,7,'(.*)'),(6,8,'(.*)'),(7,10,'(.*)'),(8,12,'com.landscape'),(9,13,''),(10,14,''),(11,15,'(.*)'),(12,16,'(.*)'),(13,17,'(.*)'),(14,18,''),(15,19,'(.*)'),(16,20,''),(17,21,'com.pintu_qshfyj'),(18,22,'skF.adnWMpFQs'),(19,23,'(.*)'),(20,25,'game.ccdvtl.onvooe'),(21,24,'com.landscape'),(22,28,'com.pintu_qshfyj'),(23,32,'com.landscape'),(24,34,'com.pintu_qshfyj'),(25,35,'game.ccdvtl.onvooe'),(26,36,'NULL-CONSTANT'),(27,37,'(.*)'),(28,38,'skF.adnWMpFQs'),(29,39,'game.ccdvtl.onvooe'),(30,40,'NULL-CONSTANT'),(31,41,''),(32,42,'skF.adnWMpFQs'),(33,43,''),(34,44,'game.ccdvtl.onvooe'),(35,46,'skF.adnWMpFQs'),(36,45,'(.*)'),(37,50,'com.pintu_qshfyj'),(38,48,'com.landscape'),(39,49,'skF.adnWMpFQs'),(40,51,'(.*)'),(41,52,'com.pintu_qshfyj'),(42,53,'(.*)'),(43,54,'com.landscape'),(44,55,'(.*)'),(45,57,''),(46,58,'com.landscape'),(47,60,''),(48,61,'com.pintu_qshfyj'),(49,62,'com.landscape'),(50,63,'game.ccdvtl.onvooe'),(51,64,'(.*)'),(52,65,'com.pintu_qshfyj'),(53,68,'skF.adnWMpFQs'),(54,67,'com.landscape'),(55,66,'game.ccdvtl.onvooe'),(56,69,'com.pintu_qshfyj'),(57,72,'game.ccdvtl.onvooe'),(58,71,'com.pintu_qshfyj'),(59,75,'com.pintu_qshfyj'),(60,77,'com.landscape'),(61,78,'com.pintu_qshfyj'),(62,79,'skF.adnWMpFQs'),(63,80,'com.landscape'),(64,76,'game.ccdvtl.onvooe'),(65,81,'com.pintu_qshfyj'),(66,82,'skF.adnWMpFQs'),(67,83,'com.landscape'),(68,84,'(.*)'),(69,85,'com.pintu_qshfyj'),(70,86,'skF.adnWMpFQs'),(71,87,'(.*)'),(72,88,'com.landscape'),(73,90,'skF.adnWMpFQs'),(74,91,'game.ccdvtl.onvooe'),(75,93,'skF.adnWMpFQs'),(76,96,'com.landscape'),(77,98,'skF.adnWMpFQs'),(78,101,'(.*)'),(79,105,'com.pintu_qshfyj'),(80,104,''),(81,103,'com.landscape'),(82,106,''),(83,107,'game.ccdvtl.onvooe'),(84,108,'(.*)'),(85,109,'com.landscape'),(86,110,'(.*)'),(87,111,''),(88,112,'com.landscape'),(89,113,'skF.adnWMpFQs'),(90,114,''),(91,116,'(.*)'),(92,117,'skF.adnWMpFQs'),(93,115,'com.landscape'),(94,118,'com.pintu_qshfyj'),(95,119,'com.landscape'),(96,121,'(.*)'),(97,124,''),(98,125,'pjo.wuqbnb.ufnhiqwoc'),(99,126,''),(100,129,'(.*)'),(101,128,'skF.adnWMpFQs'),(102,130,'com.landscape'),(103,131,'pjo.wuqbnb.ufnhiqwoc'),(104,132,'com.pintu_qshfyj'),(105,135,'com.landscape'),(106,134,'pjo.wuqbnb.ufnhiqwoc'),(107,137,'com.landscape'),(108,138,'pjo.wuqbnb.ufnhiqwoc'),(109,139,'com.landscape'),(110,141,'pjo.wuqbnb.ufnhiqwoc'),(111,145,'com.landscape'),(112,146,'(.*)'),(113,147,'(.*)'),(114,148,'(.*)'),(115,149,''),(116,150,''),(117,151,'com.landscape'),(118,152,'(.*)'),(119,153,'com.landscape'),(120,154,'(.*)'),(121,155,'com.landscape'),(122,156,''),(123,157,'com.landscape'),(124,158,''),(125,159,'(.*)'),(126,163,'com.landscape'),(127,165,'com.landscape'),(128,166,'com.landscape'),(129,167,'com.landscape'),(130,170,'pjo.wuqbnb.ufnhiqwoc'),(131,172,'com.landscape'),(132,171,'pjo.wuqbnb.ufnhiqwoc'),(133,173,'com.landscape'),(134,174,'com.landscape'),(135,175,'pjo.wuqbnb.ufnhiqwoc'),(136,180,'pjo.wuqbnb.ufnhiqwoc'),(137,181,'com.landscape'),(138,182,'com.landscape'),(139,183,'(.*)'),(140,184,''),(141,185,'com.landscape'),(142,186,''),(143,187,'com.landscape'),(144,188,'(.*)'),(145,189,'com.landscape'),(146,190,'(.*)'),(147,191,'(.*)'),(148,192,'pjo.wuqbnb.ufnhiqwoc'),(149,195,'pjo.wuqbnb.ufnhiqwoc'),(150,196,'pjo.wuqbnb.ufnhiqwoc'),(151,197,'pjo.wuqbnb.ufnhiqwoc'),(152,198,'pjo.wuqbnb.ufnhiqwoc'),(153,199,'(.*)'),(154,200,''),(155,201,''),(156,202,'(.*)'),(157,203,'pjo.wuqbnb.ufnhiqwoc'),(158,204,'pjo.wuqbnb.ufnhiqwoc');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,6,0),(6,8,0),(7,9,0),(8,10,0),(9,11,0),(10,13,0),(11,15,0),(12,17,0),(13,21,0),(14,22,0),(15,23,0),(16,26,0),(17,27,0),(18,28,0),(19,30,0),(20,34,0),(21,35,0),(22,36,0),(23,38,0),(24,39,0),(25,40,0),(26,41,0),(27,44,0),(28,45,0),(29,46,0),(30,47,0),(31,48,0),(32,55,0),(33,59,0),(34,11,0),(35,69,0),(36,71,0),(37,88,0),(38,93,0),(39,94,0),(40,97,0),(41,98,0),(42,99,0),(43,104,0),(44,39,0),(45,119,0),(46,120,0),(47,121,0),(48,15,0),(49,126,0),(50,127,0),(51,128,0),(52,15,0),(53,11,0),(54,39,0),(55,59,0),(56,59,0),(57,129,0),(58,130,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,2,1,0),(5,4,0,0),(6,5,0,0),(7,6,1,0),(8,6,1,0),(9,7,1,0),(10,8,1,0),(11,7,1,0),(12,9,0,0),(13,8,1,0),(14,8,1,0),(15,10,1,0),(16,11,1,0),(17,8,1,0),(18,10,1,0),(19,11,1,0),(20,10,1,0),(21,12,0,0),(22,13,0,0),(23,10,1,0),(24,15,0,0),(25,16,0,0),(26,17,1,0),(27,17,1,0),(28,18,0,0),(29,19,1,0),(30,20,1,0),(31,21,1,0),(32,22,0,0),(33,20,1,0),(34,23,0,0),(35,24,0,0),(36,25,1,0),(37,27,1,0),(38,26,0,0),(39,28,0,0),(40,25,1,0),(41,27,1,0),(42,26,0,0),(43,27,1,0),(44,29,0,0),(45,27,1,0),(46,30,0,0),(47,31,1,0),(48,32,0,0),(49,33,0,0),(50,34,0,0),(51,35,1,0),(52,36,0,0),(53,35,1,0),(54,37,0,0),(55,38,1,0),(56,39,1,0),(57,38,1,0),(58,37,0,0),(59,40,1,0),(60,38,1,0),(61,41,0,0),(62,42,0,0),(63,43,0,0),(64,38,1,0),(65,44,0,0),(66,46,0,0),(67,45,0,0),(68,47,0,0),(69,48,0,0),(70,49,1,0),(71,51,0,0),(72,50,0,0),(73,52,1,0),(74,49,1,0),(75,53,0,0),(76,54,0,0),(77,55,0,0),(78,53,0,0),(79,56,0,0),(80,57,0,0),(81,58,0,0),(82,59,0,0),(83,60,0,0),(84,61,1,0),(85,62,0,0),(86,63,0,0),(87,61,1,0),(88,64,0,0),(89,65,1,0),(90,66,0,0),(91,67,0,0),(92,65,1,0),(93,68,0,0),(94,69,1,0),(95,70,1,0),(96,71,0,0),(97,72,1,0),(98,73,0,0),(99,74,1,0),(100,72,1,0),(101,75,1,0),(102,76,1,0),(103,77,0,0),(104,75,1,0),(105,78,0,0),(106,75,1,0),(107,80,0,0),(108,79,1,0),(109,81,0,0),(110,75,1,0),(111,79,1,0),(112,82,0,0),(113,83,0,0),(114,79,1,0),(115,84,0,0),(116,79,1,0),(117,85,0,0),(118,86,0,0),(119,87,0,0),(120,88,1,0),(121,89,1,0),(122,91,1,0),(123,90,1,0),(124,89,1,0),(125,92,0,0),(126,89,1,0),(127,93,1,0),(128,94,0,0),(129,89,1,0),(130,95,0,0),(131,96,0,0),(132,97,0,0),(133,98,1,0),(134,99,0,0),(135,100,0,0),(136,98,1,0),(137,101,0,0),(138,102,0,0),(139,103,0,0),(140,104,1,0),(141,105,0,0),(142,104,1,0),(143,106,1,0),(144,106,1,0),(145,107,0,0),(146,108,1,0),(147,109,1,0),(148,108,1,0),(149,109,1,0),(150,109,1,0),(151,110,0,0),(152,109,1,0),(153,110,0,0),(154,111,1,0),(155,112,0,0),(156,111,1,0),(157,113,0,0),(158,111,1,0),(159,111,1,0),(160,114,1,0),(161,115,1,0),(162,116,1,0),(163,117,0,0),(164,116,1,0),(165,118,0,0),(166,119,0,0),(167,120,0,0),(168,121,1,0),(169,122,1,0),(170,123,0,0),(171,124,0,0),(172,125,0,0),(173,126,0,0),(174,126,0,0),(175,127,0,0),(176,128,1,0),(177,129,1,0),(178,128,1,0),(179,129,1,0),(180,130,0,0),(181,131,0,0),(182,132,0,0),(183,133,1,0),(184,133,1,0),(185,134,0,0),(186,133,1,0),(187,135,0,0),(188,133,1,0),(189,136,0,0),(190,137,1,0),(191,137,1,0),(192,138,0,0),(193,139,1,0),(194,139,1,0),(195,140,0,0),(196,141,0,0),(197,142,0,0),(198,143,0,0),(199,144,1,0),(200,144,1,0),(201,144,1,0),(202,144,1,0),(203,145,0,0),(204,146,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1540 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,69,9,2,NULL),(2,75,9,2,NULL),(3,78,9,2,NULL),(4,16,1,2,NULL),(5,19,1,2,NULL),(6,2,1,2,NULL),(7,4,1,2,NULL),(8,56,1,2,NULL),(9,7,1,2,NULL),(10,8,1,2,NULL),(11,26,1,2,NULL),(12,27,1,2,NULL),(13,122,1,2,NULL),(14,161,1,2,NULL),(15,146,1,2,NULL),(16,148,1,2,NULL),(17,29,1,2,NULL),(18,176,1,2,NULL),(19,178,1,2,NULL),(20,169,1,2,NULL),(21,47,1,2,NULL),(22,51,1,2,NULL),(23,53,1,2,NULL),(24,84,1,2,NULL),(25,87,1,2,NULL),(26,190,1,2,NULL),(27,191,1,2,NULL),(28,147,1,2,NULL),(29,149,1,2,NULL),(30,150,1,2,NULL),(31,152,1,2,NULL),(32,143,1,2,NULL),(33,144,1,2,NULL),(34,168,1,2,NULL),(35,120,1,2,NULL),(36,21,9,2,NULL),(37,50,1,2,NULL),(38,65,1,2,NULL),(39,71,1,2,NULL),(40,81,1,2,NULL),(41,105,9,2,NULL),(42,16,3,2,NULL),(43,19,3,2,NULL),(44,2,3,2,NULL),(45,4,3,2,NULL),(46,56,3,2,NULL),(47,7,3,2,NULL),(48,8,3,2,NULL),(49,26,3,2,NULL),(50,27,3,2,NULL),(51,122,3,2,NULL),(52,161,3,2,NULL),(53,146,3,2,NULL),(54,148,3,2,NULL),(55,29,3,2,NULL),(56,176,3,2,NULL),(57,178,3,2,NULL),(58,169,3,2,NULL),(59,47,3,2,NULL),(60,51,3,2,NULL),(61,53,3,2,NULL),(62,84,3,2,NULL),(63,87,3,2,NULL),(64,190,3,2,NULL),(65,191,3,2,NULL),(66,147,3,2,NULL),(67,149,3,2,NULL),(68,150,3,2,NULL),(69,152,3,2,NULL),(70,143,3,2,NULL),(71,144,3,2,NULL),(72,168,3,2,NULL),(73,120,3,2,NULL),(74,85,3,2,NULL),(75,2,5,2,NULL),(76,4,5,2,NULL),(77,56,5,2,NULL),(78,16,9,2,NULL),(79,19,9,2,NULL),(80,16,11,2,NULL),(81,19,11,2,NULL),(82,16,2,2,NULL),(83,19,2,2,NULL),(84,16,6,2,NULL),(85,19,6,2,NULL),(86,16,8,2,NULL),(87,19,8,2,NULL),(88,7,5,2,NULL),(89,8,5,2,NULL),(90,16,10,2,NULL),(91,19,10,2,NULL),(92,26,5,2,NULL),(93,27,5,2,NULL),(94,122,5,2,NULL),(95,16,13,2,NULL),(96,19,13,2,NULL),(97,16,15,2,NULL),(98,19,15,2,NULL),(99,161,5,2,NULL),(100,16,22,2,NULL),(101,19,22,2,NULL),(102,16,23,2,NULL),(103,19,23,2,NULL),(104,16,26,2,NULL),(105,19,26,2,NULL),(106,16,28,2,NULL),(107,19,28,2,NULL),(108,16,30,2,NULL),(109,19,30,2,NULL),(110,146,5,2,NULL),(111,148,5,2,NULL),(112,29,5,2,NULL),(113,176,5,2,NULL),(114,178,5,2,NULL),(115,16,35,2,NULL),(116,19,35,2,NULL),(117,16,36,2,NULL),(118,19,36,2,NULL),(119,169,5,2,NULL),(120,16,38,2,NULL),(121,19,38,2,NULL),(122,16,39,2,NULL),(123,19,39,2,NULL),(124,16,17,2,NULL),(125,19,17,2,NULL),(126,47,5,2,NULL),(127,16,21,2,NULL),(128,19,21,2,NULL),(129,51,5,2,NULL),(130,53,5,2,NULL),(131,84,5,2,NULL),(132,87,5,2,NULL),(133,16,27,2,NULL),(134,19,27,2,NULL),(135,16,34,2,NULL),(136,19,34,2,NULL),(137,16,40,2,NULL),(138,19,40,2,NULL),(139,16,41,2,NULL),(140,19,41,2,NULL),(141,16,44,2,NULL),(142,19,44,2,NULL),(143,16,47,2,NULL),(144,19,47,2,NULL),(145,190,5,2,NULL),(146,191,5,2,NULL),(147,16,48,2,NULL),(148,19,48,2,NULL),(149,147,5,2,NULL),(150,149,5,2,NULL),(151,150,5,2,NULL),(152,152,5,2,NULL),(153,143,5,2,NULL),(154,144,5,2,NULL),(155,168,5,2,NULL),(156,120,5,2,NULL),(157,16,55,2,NULL),(158,19,55,2,NULL),(159,16,59,2,NULL),(160,19,59,2,NULL),(161,16,129,2,NULL),(162,19,129,2,NULL),(163,16,130,2,NULL),(164,19,130,2,NULL),(165,16,45,2,NULL),(166,19,45,2,NULL),(167,16,46,2,NULL),(168,19,46,2,NULL),(169,16,71,2,NULL),(170,19,71,2,NULL),(171,16,88,2,NULL),(172,19,88,2,NULL),(173,16,93,2,NULL),(174,19,93,2,NULL),(175,16,94,2,NULL),(176,19,94,2,NULL),(177,16,97,2,NULL),(178,19,97,2,NULL),(179,16,98,2,NULL),(180,19,98,2,NULL),(181,16,99,2,NULL),(182,19,99,2,NULL),(183,16,119,2,NULL),(184,19,119,2,NULL),(185,16,120,2,NULL),(186,19,120,2,NULL),(187,16,127,2,NULL),(188,19,127,2,NULL),(189,16,128,2,NULL),(190,19,128,2,NULL),(191,28,7,2,NULL),(192,132,3,2,NULL),(193,2,9,2,NULL),(194,4,9,2,NULL),(195,56,9,2,NULL),(196,2,11,2,NULL),(197,4,11,2,NULL),(198,56,11,2,NULL),(199,2,2,2,NULL),(200,4,2,2,NULL),(201,56,2,2,NULL),(202,2,6,2,NULL),(203,4,6,2,NULL),(204,56,6,2,NULL),(205,2,8,2,NULL),(206,4,8,2,NULL),(207,56,8,2,NULL),(208,2,10,2,NULL),(209,4,10,2,NULL),(210,56,10,2,NULL),(211,2,13,2,NULL),(212,4,13,2,NULL),(213,56,13,2,NULL),(214,2,15,2,NULL),(215,4,15,2,NULL),(216,56,15,2,NULL),(217,2,22,2,NULL),(218,4,22,2,NULL),(219,56,22,2,NULL),(220,2,23,2,NULL),(221,4,23,2,NULL),(222,56,23,2,NULL),(223,2,26,2,NULL),(224,4,26,2,NULL),(225,56,26,2,NULL),(226,2,28,2,NULL),(227,4,28,2,NULL),(228,56,28,2,NULL),(229,2,30,2,NULL),(230,4,30,2,NULL),(231,56,30,2,NULL),(232,2,35,2,NULL),(233,4,35,2,NULL),(234,56,35,2,NULL),(235,2,36,2,NULL),(236,4,36,2,NULL),(237,56,36,2,NULL),(238,2,38,2,NULL),(239,4,38,2,NULL),(240,56,38,2,NULL),(241,2,39,2,NULL),(242,4,39,2,NULL),(243,56,39,2,NULL),(244,2,17,2,NULL),(245,4,17,2,NULL),(246,56,17,2,NULL),(247,2,21,2,NULL),(248,4,21,2,NULL),(249,56,21,2,NULL),(250,2,27,2,NULL),(251,4,27,2,NULL),(252,56,27,2,NULL),(253,2,34,2,NULL),(254,4,34,2,NULL),(255,56,34,2,NULL),(256,2,40,2,NULL),(257,4,40,2,NULL),(258,56,40,2,NULL),(259,2,41,2,NULL),(260,4,41,2,NULL),(261,56,41,2,NULL),(262,2,44,2,NULL),(263,4,44,2,NULL),(264,56,44,2,NULL),(265,2,47,2,NULL),(266,4,47,2,NULL),(267,56,47,2,NULL),(268,2,48,2,NULL),(269,4,48,2,NULL),(270,56,48,2,NULL),(271,2,55,2,NULL),(272,4,55,2,NULL),(273,56,55,2,NULL),(274,2,59,2,NULL),(275,4,59,2,NULL),(276,56,59,2,NULL),(277,2,129,2,NULL),(278,4,129,2,NULL),(279,56,129,2,NULL),(280,2,130,2,NULL),(281,4,130,2,NULL),(282,56,130,2,NULL),(283,2,45,2,NULL),(284,4,45,2,NULL),(285,56,45,2,NULL),(286,2,46,2,NULL),(287,4,46,2,NULL),(288,56,46,2,NULL),(289,2,71,2,NULL),(290,4,71,2,NULL),(291,56,71,2,NULL),(292,2,88,2,NULL),(293,4,88,2,NULL),(294,56,88,2,NULL),(295,2,93,2,NULL),(296,4,93,2,NULL),(297,56,93,2,NULL),(298,2,94,2,NULL),(299,4,94,2,NULL),(300,56,94,2,NULL),(301,2,97,2,NULL),(302,4,97,2,NULL),(303,56,97,2,NULL),(304,2,98,2,NULL),(305,4,98,2,NULL),(306,56,98,2,NULL),(307,2,99,2,NULL),(308,4,99,2,NULL),(309,56,99,2,NULL),(310,2,119,2,NULL),(311,4,119,2,NULL),(312,56,119,2,NULL),(313,2,120,2,NULL),(314,4,120,2,NULL),(315,56,120,2,NULL),(316,2,127,2,NULL),(317,4,127,2,NULL),(318,56,127,2,NULL),(319,2,128,2,NULL),(320,4,128,2,NULL),(321,56,128,2,NULL),(322,7,9,2,NULL),(323,8,9,2,NULL),(324,26,9,2,NULL),(325,27,9,2,NULL),(326,122,9,2,NULL),(327,161,9,2,NULL),(328,146,9,2,NULL),(329,148,9,2,NULL),(330,29,9,2,NULL),(331,176,9,2,NULL),(332,178,9,2,NULL),(333,169,9,2,NULL),(334,47,9,2,NULL),(335,51,9,2,NULL),(336,53,9,2,NULL),(337,84,9,2,NULL),(338,87,9,2,NULL),(339,190,9,2,NULL),(340,191,9,2,NULL),(341,147,9,2,NULL),(342,149,9,2,NULL),(343,150,9,2,NULL),(344,152,9,2,NULL),(345,143,9,2,NULL),(346,144,9,2,NULL),(347,168,9,2,NULL),(348,120,9,2,NULL),(349,6,9,2,NULL),(350,34,9,2,NULL),(351,118,9,2,NULL),(352,7,11,2,NULL),(353,8,11,2,NULL),(354,26,11,2,NULL),(355,27,11,2,NULL),(356,122,11,2,NULL),(357,161,11,2,NULL),(358,146,11,2,NULL),(359,148,11,2,NULL),(360,29,11,2,NULL),(361,176,11,2,NULL),(362,178,11,2,NULL),(363,169,11,2,NULL),(364,47,11,2,NULL),(365,51,11,2,NULL),(366,53,11,2,NULL),(367,84,11,2,NULL),(368,87,11,2,NULL),(369,190,11,2,NULL),(370,191,11,2,NULL),(371,147,11,2,NULL),(372,149,11,2,NULL),(373,150,11,2,NULL),(374,152,11,2,NULL),(375,143,11,2,NULL),(376,144,11,2,NULL),(377,168,11,2,NULL),(378,120,11,2,NULL),(379,7,45,2,NULL),(380,8,45,2,NULL),(381,26,45,2,NULL),(382,27,45,2,NULL),(383,122,45,2,NULL),(384,161,45,2,NULL),(385,146,45,2,NULL),(386,148,45,2,NULL),(387,29,45,2,NULL),(388,176,45,2,NULL),(389,178,45,2,NULL),(390,169,45,2,NULL),(391,47,45,2,NULL),(392,51,45,2,NULL),(393,53,45,2,NULL),(394,84,45,2,NULL),(395,87,45,2,NULL),(396,190,45,2,NULL),(397,191,45,2,NULL),(398,147,45,2,NULL),(399,149,45,2,NULL),(400,150,45,2,NULL),(401,152,45,2,NULL),(402,143,45,2,NULL),(403,144,45,2,NULL),(404,168,45,2,NULL),(405,120,45,2,NULL),(406,7,46,2,NULL),(407,8,46,2,NULL),(408,26,46,2,NULL),(409,27,46,2,NULL),(410,122,46,2,NULL),(411,161,46,2,NULL),(412,146,46,2,NULL),(413,148,46,2,NULL),(414,29,46,2,NULL),(415,176,46,2,NULL),(416,178,46,2,NULL),(417,169,46,2,NULL),(418,47,46,2,NULL),(419,51,46,2,NULL),(420,53,46,2,NULL),(421,84,46,2,NULL),(422,87,46,2,NULL),(423,190,46,2,NULL),(424,191,46,2,NULL),(425,147,46,2,NULL),(426,149,46,2,NULL),(427,150,46,2,NULL),(428,152,46,2,NULL),(429,143,46,2,NULL),(430,144,46,2,NULL),(431,168,46,2,NULL),(432,120,46,2,NULL),(433,7,71,2,NULL),(434,8,71,2,NULL),(435,26,71,2,NULL),(436,27,71,2,NULL),(437,122,71,2,NULL),(438,161,71,2,NULL),(439,146,71,2,NULL),(440,148,71,2,NULL),(441,29,71,2,NULL),(442,176,71,2,NULL),(443,178,71,2,NULL),(444,169,71,2,NULL),(445,47,71,2,NULL),(446,51,71,2,NULL),(447,53,71,2,NULL),(448,84,71,2,NULL),(449,87,71,2,NULL),(450,190,71,2,NULL),(451,191,71,2,NULL),(452,147,71,2,NULL),(453,149,71,2,NULL),(454,150,71,2,NULL),(455,152,71,2,NULL),(456,143,71,2,NULL),(457,144,71,2,NULL),(458,168,71,2,NULL),(459,120,71,2,NULL),(460,7,40,2,NULL),(461,8,40,2,NULL),(462,26,40,2,NULL),(463,27,40,2,NULL),(464,122,40,2,NULL),(465,161,40,2,NULL),(466,146,40,2,NULL),(467,148,40,2,NULL),(468,29,40,2,NULL),(469,176,40,2,NULL),(470,178,40,2,NULL),(471,169,40,2,NULL),(472,47,40,2,NULL),(473,51,40,2,NULL),(474,53,40,2,NULL),(475,84,40,2,NULL),(476,87,40,2,NULL),(477,190,40,2,NULL),(478,191,40,2,NULL),(479,147,40,2,NULL),(480,149,40,2,NULL),(481,150,40,2,NULL),(482,152,40,2,NULL),(483,143,40,2,NULL),(484,144,40,2,NULL),(485,168,40,2,NULL),(486,120,40,2,NULL),(487,180,55,2,NULL),(488,196,55,2,NULL),(489,7,41,2,NULL),(490,8,41,2,NULL),(491,26,41,2,NULL),(492,27,41,2,NULL),(493,122,41,2,NULL),(494,161,41,2,NULL),(495,146,41,2,NULL),(496,148,41,2,NULL),(497,29,41,2,NULL),(498,176,41,2,NULL),(499,178,41,2,NULL),(500,169,41,2,NULL),(501,47,41,2,NULL),(502,51,41,2,NULL),(503,53,41,2,NULL),(504,84,41,2,NULL),(505,87,41,2,NULL),(506,190,41,2,NULL),(507,191,41,2,NULL),(508,147,41,2,NULL),(509,149,41,2,NULL),(510,150,41,2,NULL),(511,152,41,2,NULL),(512,143,41,2,NULL),(513,144,41,2,NULL),(514,168,41,2,NULL),(515,120,41,2,NULL),(516,203,40,2,NULL),(517,138,55,2,NULL),(518,195,55,2,NULL),(519,7,44,2,NULL),(520,8,44,2,NULL),(521,26,44,2,NULL),(522,27,44,2,NULL),(523,122,44,2,NULL),(524,161,44,2,NULL),(525,146,44,2,NULL),(526,148,44,2,NULL),(527,29,44,2,NULL),(528,176,44,2,NULL),(529,178,44,2,NULL),(530,169,44,2,NULL),(531,47,44,2,NULL),(532,51,44,2,NULL),(533,53,44,2,NULL),(534,84,44,2,NULL),(535,87,44,2,NULL),(536,190,44,2,NULL),(537,191,44,2,NULL),(538,147,44,2,NULL),(539,149,44,2,NULL),(540,150,44,2,NULL),(541,152,44,2,NULL),(542,143,44,2,NULL),(543,144,44,2,NULL),(544,168,44,2,NULL),(545,120,44,2,NULL),(546,197,44,2,NULL),(547,190,2,2,NULL),(548,191,2,2,NULL),(549,190,6,2,NULL),(550,191,6,2,NULL),(551,190,8,2,NULL),(552,191,8,2,NULL),(553,7,47,2,NULL),(554,8,47,2,NULL),(555,190,10,2,NULL),(556,191,10,2,NULL),(557,26,47,2,NULL),(558,27,47,2,NULL),(559,122,47,2,NULL),(560,190,13,2,NULL),(561,191,13,2,NULL),(562,190,15,2,NULL),(563,191,15,2,NULL),(564,161,47,2,NULL),(565,190,22,2,NULL),(566,191,22,2,NULL),(567,190,23,2,NULL),(568,191,23,2,NULL),(569,190,26,2,NULL),(570,191,26,2,NULL),(571,190,28,2,NULL),(572,191,28,2,NULL),(573,190,30,2,NULL),(574,191,30,2,NULL),(575,146,47,2,NULL),(576,148,47,2,NULL),(577,29,47,2,NULL),(578,176,47,2,NULL),(579,178,47,2,NULL),(580,190,35,2,NULL),(581,191,35,2,NULL),(582,190,36,2,NULL),(583,191,36,2,NULL),(584,169,47,2,NULL),(585,190,38,2,NULL),(586,191,38,2,NULL),(587,190,39,2,NULL),(588,191,39,2,NULL),(589,190,17,2,NULL),(590,191,17,2,NULL),(591,47,47,2,NULL),(592,190,21,2,NULL),(593,191,21,2,NULL),(594,51,47,2,NULL),(595,53,47,2,NULL),(596,84,47,2,NULL),(597,87,47,2,NULL),(598,190,27,2,NULL),(599,191,27,2,NULL),(600,190,34,2,NULL),(601,191,34,2,NULL),(602,190,48,2,NULL),(603,191,48,2,NULL),(604,147,47,2,NULL),(605,149,47,2,NULL),(606,150,47,2,NULL),(607,152,47,2,NULL),(608,143,47,2,NULL),(609,144,47,2,NULL),(610,168,47,2,NULL),(611,120,47,2,NULL),(612,190,55,2,NULL),(613,191,55,2,NULL),(614,190,59,2,NULL),(615,191,59,2,NULL),(616,190,129,2,NULL),(617,191,129,2,NULL),(618,190,130,2,NULL),(619,191,130,2,NULL),(620,190,88,2,NULL),(621,191,88,2,NULL),(622,190,93,2,NULL),(623,191,93,2,NULL),(624,190,94,2,NULL),(625,191,94,2,NULL),(626,190,97,2,NULL),(627,191,97,2,NULL),(628,190,98,2,NULL),(629,191,98,2,NULL),(630,190,99,2,NULL),(631,191,99,2,NULL),(632,190,119,2,NULL),(633,191,119,2,NULL),(634,190,120,2,NULL),(635,191,120,2,NULL),(636,190,127,2,NULL),(637,191,127,2,NULL),(638,190,128,2,NULL),(639,191,128,2,NULL),(640,170,55,2,NULL),(641,147,2,2,NULL),(642,149,2,2,NULL),(643,150,2,2,NULL),(644,152,2,2,NULL),(645,147,6,2,NULL),(646,149,6,2,NULL),(647,150,6,2,NULL),(648,152,6,2,NULL),(649,147,8,2,NULL),(650,149,8,2,NULL),(651,150,8,2,NULL),(652,152,8,2,NULL),(653,7,48,2,NULL),(654,8,48,2,NULL),(655,147,10,2,NULL),(656,149,10,2,NULL),(657,150,10,2,NULL),(658,152,10,2,NULL),(659,26,48,2,NULL),(660,27,48,2,NULL),(661,122,48,2,NULL),(662,147,13,2,NULL),(663,149,13,2,NULL),(664,150,13,2,NULL),(665,152,13,2,NULL),(666,147,15,2,NULL),(667,149,15,2,NULL),(668,150,15,2,NULL),(669,152,15,2,NULL),(670,161,48,2,NULL),(671,147,22,2,NULL),(672,149,22,2,NULL),(673,150,22,2,NULL),(674,152,22,2,NULL),(675,147,23,2,NULL),(676,149,23,2,NULL),(677,150,23,2,NULL),(678,152,23,2,NULL),(679,147,26,2,NULL),(680,149,26,2,NULL),(681,150,26,2,NULL),(682,152,26,2,NULL),(683,147,28,2,NULL),(684,149,28,2,NULL),(685,150,28,2,NULL),(686,152,28,2,NULL),(687,147,30,2,NULL),(688,149,30,2,NULL),(689,150,30,2,NULL),(690,152,30,2,NULL),(691,146,48,2,NULL),(692,148,48,2,NULL),(693,29,48,2,NULL),(694,176,48,2,NULL),(695,178,48,2,NULL),(696,147,35,2,NULL),(697,149,35,2,NULL),(698,150,35,2,NULL),(699,152,35,2,NULL),(700,147,36,2,NULL),(701,149,36,2,NULL),(702,150,36,2,NULL),(703,152,36,2,NULL),(704,169,48,2,NULL),(705,147,38,2,NULL),(706,149,38,2,NULL),(707,150,38,2,NULL),(708,152,38,2,NULL),(709,147,39,2,NULL),(710,149,39,2,NULL),(711,150,39,2,NULL),(712,152,39,2,NULL),(713,147,17,2,NULL),(714,149,17,2,NULL),(715,150,17,2,NULL),(716,152,17,2,NULL),(717,47,48,2,NULL),(718,147,21,2,NULL),(719,149,21,2,NULL),(720,150,21,2,NULL),(721,152,21,2,NULL),(722,51,48,2,NULL),(723,53,48,2,NULL),(724,84,48,2,NULL),(725,87,48,2,NULL),(726,147,27,2,NULL),(727,149,27,2,NULL),(728,150,27,2,NULL),(729,152,27,2,NULL),(730,147,34,2,NULL),(731,149,34,2,NULL),(732,150,34,2,NULL),(733,152,34,2,NULL),(734,143,48,2,NULL),(735,144,48,2,NULL),(736,168,48,2,NULL),(737,120,48,2,NULL),(738,147,55,2,NULL),(739,149,55,2,NULL),(740,150,55,2,NULL),(741,152,55,2,NULL),(742,147,59,2,NULL),(743,149,59,2,NULL),(744,150,59,2,NULL),(745,152,59,2,NULL),(746,147,129,2,NULL),(747,149,129,2,NULL),(748,150,129,2,NULL),(749,152,129,2,NULL),(750,147,130,2,NULL),(751,149,130,2,NULL),(752,150,130,2,NULL),(753,152,130,2,NULL),(754,147,88,2,NULL),(755,149,88,2,NULL),(756,150,88,2,NULL),(757,152,88,2,NULL),(758,147,93,2,NULL),(759,149,93,2,NULL),(760,150,93,2,NULL),(761,152,93,2,NULL),(762,147,94,2,NULL),(763,149,94,2,NULL),(764,150,94,2,NULL),(765,152,94,2,NULL),(766,147,97,2,NULL),(767,149,97,2,NULL),(768,150,97,2,NULL),(769,152,97,2,NULL),(770,147,98,2,NULL),(771,149,98,2,NULL),(772,150,98,2,NULL),(773,152,98,2,NULL),(774,147,99,2,NULL),(775,149,99,2,NULL),(776,150,99,2,NULL),(777,152,99,2,NULL),(778,147,119,2,NULL),(779,149,119,2,NULL),(780,150,119,2,NULL),(781,152,119,2,NULL),(782,147,120,2,NULL),(783,149,120,2,NULL),(784,150,120,2,NULL),(785,152,120,2,NULL),(786,147,127,2,NULL),(787,149,127,2,NULL),(788,150,127,2,NULL),(789,152,127,2,NULL),(790,147,128,2,NULL),(791,149,128,2,NULL),(792,150,128,2,NULL),(793,152,128,2,NULL),(794,125,44,2,NULL),(795,134,51,2,NULL),(796,143,2,2,NULL),(797,144,2,2,NULL),(798,168,2,2,NULL),(799,143,6,2,NULL),(800,144,6,2,NULL),(801,168,6,2,NULL),(802,143,8,2,NULL),(803,144,8,2,NULL),(804,168,8,2,NULL),(805,143,10,2,NULL),(806,144,10,2,NULL),(807,168,10,2,NULL),(808,143,13,2,NULL),(809,144,13,2,NULL),(810,168,13,2,NULL),(811,143,15,2,NULL),(812,144,15,2,NULL),(813,168,15,2,NULL),(814,143,22,2,NULL),(815,144,22,2,NULL),(816,168,22,2,NULL),(817,143,23,2,NULL),(818,144,23,2,NULL),(819,168,23,2,NULL),(820,143,26,2,NULL),(821,144,26,2,NULL),(822,168,26,2,NULL),(823,143,28,2,NULL),(824,144,28,2,NULL),(825,168,28,2,NULL),(826,143,30,2,NULL),(827,144,30,2,NULL),(828,168,30,2,NULL),(829,143,35,2,NULL),(830,144,35,2,NULL),(831,168,35,2,NULL),(832,143,36,2,NULL),(833,144,36,2,NULL),(834,168,36,2,NULL),(835,143,38,2,NULL),(836,144,38,2,NULL),(837,168,38,2,NULL),(838,143,39,2,NULL),(839,144,39,2,NULL),(840,168,39,2,NULL),(841,143,17,2,NULL),(842,144,17,2,NULL),(843,168,17,2,NULL),(844,143,21,2,NULL),(845,144,21,2,NULL),(846,168,21,2,NULL),(847,143,27,2,NULL),(848,144,27,2,NULL),(849,168,27,2,NULL),(850,143,34,2,NULL),(851,144,34,2,NULL),(852,168,34,2,NULL),(853,143,55,2,NULL),(854,144,55,2,NULL),(855,168,55,2,NULL),(856,143,59,2,NULL),(857,144,59,2,NULL),(858,168,59,2,NULL),(859,143,129,2,NULL),(860,144,129,2,NULL),(861,168,129,2,NULL),(862,143,130,2,NULL),(863,144,130,2,NULL),(864,168,130,2,NULL),(865,143,88,2,NULL),(866,144,88,2,NULL),(867,168,88,2,NULL),(868,143,93,2,NULL),(869,144,93,2,NULL),(870,168,93,2,NULL),(871,143,94,2,NULL),(872,144,94,2,NULL),(873,168,94,2,NULL),(874,143,97,2,NULL),(875,144,97,2,NULL),(876,168,97,2,NULL),(877,143,98,2,NULL),(878,144,98,2,NULL),(879,168,98,2,NULL),(880,143,99,2,NULL),(881,144,99,2,NULL),(882,168,99,2,NULL),(883,143,119,2,NULL),(884,144,119,2,NULL),(885,168,119,2,NULL),(886,143,120,2,NULL),(887,144,120,2,NULL),(888,168,120,2,NULL),(889,143,127,2,NULL),(890,144,127,2,NULL),(891,168,127,2,NULL),(892,143,128,2,NULL),(893,144,128,2,NULL),(894,168,128,2,NULL),(895,141,55,2,NULL),(896,120,2,2,NULL),(897,120,6,2,NULL),(898,120,8,2,NULL),(899,120,10,2,NULL),(900,120,13,2,NULL),(901,120,15,2,NULL),(902,120,22,2,NULL),(903,120,23,2,NULL),(904,120,26,2,NULL),(905,120,28,2,NULL),(906,120,30,2,NULL),(907,120,35,2,NULL),(908,120,36,2,NULL),(909,120,38,2,NULL),(910,120,39,2,NULL),(911,120,17,2,NULL),(912,120,21,2,NULL),(913,120,27,2,NULL),(914,120,34,2,NULL),(915,120,55,2,NULL),(916,120,59,2,NULL),(917,120,129,2,NULL),(918,120,130,2,NULL),(919,120,88,2,NULL),(920,120,93,2,NULL),(921,120,94,2,NULL),(922,120,97,2,NULL),(923,120,98,2,NULL),(924,120,99,2,NULL),(925,120,119,2,NULL),(926,120,120,2,NULL),(927,120,127,2,NULL),(928,120,128,2,NULL),(929,7,55,2,NULL),(930,8,55,2,NULL),(931,26,55,2,NULL),(932,27,55,2,NULL),(933,122,55,2,NULL),(934,161,55,2,NULL),(935,146,55,2,NULL),(936,148,55,2,NULL),(937,29,55,2,NULL),(938,176,55,2,NULL),(939,178,55,2,NULL),(940,169,55,2,NULL),(941,47,55,2,NULL),(942,51,55,2,NULL),(943,53,55,2,NULL),(944,84,55,2,NULL),(945,87,55,2,NULL),(946,175,55,2,NULL),(947,192,55,2,NULL),(948,204,55,2,NULL),(949,7,59,2,NULL),(950,8,59,2,NULL),(951,26,59,2,NULL),(952,27,59,2,NULL),(953,122,59,2,NULL),(954,161,59,2,NULL),(955,146,59,2,NULL),(956,148,59,2,NULL),(957,29,59,2,NULL),(958,176,59,2,NULL),(959,178,59,2,NULL),(960,169,59,2,NULL),(961,47,59,2,NULL),(962,51,59,2,NULL),(963,53,59,2,NULL),(964,84,59,2,NULL),(965,87,59,2,NULL),(966,7,129,2,NULL),(967,8,129,2,NULL),(968,26,129,2,NULL),(969,27,129,2,NULL),(970,122,129,2,NULL),(971,161,129,2,NULL),(972,146,129,2,NULL),(973,148,129,2,NULL),(974,29,129,2,NULL),(975,176,129,2,NULL),(976,178,129,2,NULL),(977,169,129,2,NULL),(978,47,129,2,NULL),(979,51,129,2,NULL),(980,53,129,2,NULL),(981,84,129,2,NULL),(982,87,129,2,NULL),(983,7,130,2,NULL),(984,8,130,2,NULL),(985,26,130,2,NULL),(986,27,130,2,NULL),(987,122,130,2,NULL),(988,161,130,2,NULL),(989,146,130,2,NULL),(990,148,130,2,NULL),(991,29,130,2,NULL),(992,176,130,2,NULL),(993,178,130,2,NULL),(994,169,130,2,NULL),(995,47,130,2,NULL),(996,51,130,2,NULL),(997,53,130,2,NULL),(998,84,130,2,NULL),(999,87,130,2,NULL),(1000,112,38,2,NULL),(1001,173,38,2,NULL),(1002,174,38,2,NULL),(1003,54,38,2,NULL),(1004,58,38,2,NULL),(1005,155,38,2,NULL),(1006,80,28,2,NULL),(1007,182,14,2,NULL),(1008,161,2,2,NULL),(1009,161,6,2,NULL),(1010,161,8,2,NULL),(1011,161,10,2,NULL),(1012,161,13,2,NULL),(1013,161,15,2,NULL),(1014,161,22,2,NULL),(1015,161,23,2,NULL),(1016,161,26,2,NULL),(1017,161,28,2,NULL),(1018,161,30,2,NULL),(1019,161,35,2,NULL),(1020,161,36,2,NULL),(1021,161,38,2,NULL),(1022,161,39,2,NULL),(1023,161,17,2,NULL),(1024,161,21,2,NULL),(1025,161,27,2,NULL),(1026,161,34,2,NULL),(1027,161,88,2,NULL),(1028,161,93,2,NULL),(1029,161,94,2,NULL),(1030,161,97,2,NULL),(1031,161,98,2,NULL),(1032,161,99,2,NULL),(1033,161,119,2,NULL),(1034,161,120,2,NULL),(1035,161,127,2,NULL),(1036,161,128,2,NULL),(1037,163,28,2,NULL),(1038,166,38,2,NULL),(1039,7,22,2,NULL),(1040,8,22,2,NULL),(1041,26,22,2,NULL),(1042,27,22,2,NULL),(1043,122,22,2,NULL),(1044,146,22,2,NULL),(1045,148,22,2,NULL),(1046,29,22,2,NULL),(1047,176,22,2,NULL),(1048,178,22,2,NULL),(1049,169,22,2,NULL),(1050,47,22,2,NULL),(1051,51,22,2,NULL),(1052,53,22,2,NULL),(1053,84,22,2,NULL),(1054,87,22,2,NULL),(1055,137,28,2,NULL),(1056,172,38,2,NULL),(1057,7,23,2,NULL),(1058,8,23,2,NULL),(1059,26,23,2,NULL),(1060,27,23,2,NULL),(1061,122,23,2,NULL),(1062,146,23,2,NULL),(1063,148,23,2,NULL),(1064,29,23,2,NULL),(1065,176,23,2,NULL),(1066,178,23,2,NULL),(1067,169,23,2,NULL),(1068,47,23,2,NULL),(1069,51,23,2,NULL),(1070,53,23,2,NULL),(1071,84,23,2,NULL),(1072,87,23,2,NULL),(1073,135,38,2,NULL),(1074,7,26,2,NULL),(1075,8,26,2,NULL),(1076,26,26,2,NULL),(1077,27,26,2,NULL),(1078,122,26,2,NULL),(1079,146,26,2,NULL),(1080,148,26,2,NULL),(1081,29,26,2,NULL),(1082,176,26,2,NULL),(1083,178,26,2,NULL),(1084,169,26,2,NULL),(1085,47,26,2,NULL),(1086,51,26,2,NULL),(1087,53,26,2,NULL),(1088,84,26,2,NULL),(1089,87,26,2,NULL),(1090,12,14,2,NULL),(1091,62,14,2,NULL),(1092,109,38,2,NULL),(1093,167,14,2,NULL),(1094,7,28,2,NULL),(1095,8,28,2,NULL),(1096,26,28,2,NULL),(1097,27,28,2,NULL),(1098,122,28,2,NULL),(1099,146,28,2,NULL),(1100,148,28,2,NULL),(1101,29,28,2,NULL),(1102,176,28,2,NULL),(1103,178,28,2,NULL),(1104,169,28,2,NULL),(1105,47,28,2,NULL),(1106,51,28,2,NULL),(1107,53,28,2,NULL),(1108,84,28,2,NULL),(1109,87,28,2,NULL),(1110,189,28,2,NULL),(1111,146,2,2,NULL),(1112,148,2,2,NULL),(1113,146,6,2,NULL),(1114,148,6,2,NULL),(1115,146,8,2,NULL),(1116,148,8,2,NULL),(1117,7,30,2,NULL),(1118,8,30,2,NULL),(1119,146,10,2,NULL),(1120,148,10,2,NULL),(1121,26,30,2,NULL),(1122,27,30,2,NULL),(1123,122,30,2,NULL),(1124,146,13,2,NULL),(1125,148,13,2,NULL),(1126,146,15,2,NULL),(1127,148,15,2,NULL),(1128,29,30,2,NULL),(1129,176,30,2,NULL),(1130,178,30,2,NULL),(1131,146,35,2,NULL),(1132,148,35,2,NULL),(1133,146,36,2,NULL),(1134,148,36,2,NULL),(1135,169,30,2,NULL),(1136,146,38,2,NULL),(1137,148,38,2,NULL),(1138,146,39,2,NULL),(1139,148,39,2,NULL),(1140,146,17,2,NULL),(1141,148,17,2,NULL),(1142,47,30,2,NULL),(1143,146,21,2,NULL),(1144,148,21,2,NULL),(1145,51,30,2,NULL),(1146,53,30,2,NULL),(1147,84,30,2,NULL),(1148,87,30,2,NULL),(1149,146,27,2,NULL),(1150,148,27,2,NULL),(1151,146,34,2,NULL),(1152,148,34,2,NULL),(1153,146,88,2,NULL),(1154,148,88,2,NULL),(1155,146,93,2,NULL),(1156,148,93,2,NULL),(1157,146,94,2,NULL),(1158,148,94,2,NULL),(1159,146,97,2,NULL),(1160,148,97,2,NULL),(1161,146,98,2,NULL),(1162,148,98,2,NULL),(1163,146,99,2,NULL),(1164,148,99,2,NULL),(1165,146,119,2,NULL),(1166,148,119,2,NULL),(1167,146,120,2,NULL),(1168,148,120,2,NULL),(1169,146,127,2,NULL),(1170,148,127,2,NULL),(1171,146,128,2,NULL),(1172,148,128,2,NULL),(1173,24,28,2,NULL),(1174,103,33,2,NULL),(1175,29,2,2,NULL),(1176,176,2,2,NULL),(1177,178,2,2,NULL),(1178,29,6,2,NULL),(1179,176,6,2,NULL),(1180,178,6,2,NULL),(1181,29,8,2,NULL),(1182,176,8,2,NULL),(1183,178,8,2,NULL),(1184,29,10,2,NULL),(1185,176,10,2,NULL),(1186,178,10,2,NULL),(1187,29,13,2,NULL),(1188,176,13,2,NULL),(1189,178,13,2,NULL),(1190,29,15,2,NULL),(1191,176,15,2,NULL),(1192,178,15,2,NULL),(1193,29,35,2,NULL),(1194,176,35,2,NULL),(1195,178,35,2,NULL),(1196,29,36,2,NULL),(1197,176,36,2,NULL),(1198,178,36,2,NULL),(1199,29,38,2,NULL),(1200,176,38,2,NULL),(1201,178,38,2,NULL),(1202,29,39,2,NULL),(1203,176,39,2,NULL),(1204,178,39,2,NULL),(1205,29,17,2,NULL),(1206,176,17,2,NULL),(1207,178,17,2,NULL),(1208,29,21,2,NULL),(1209,176,21,2,NULL),(1210,178,21,2,NULL),(1211,29,27,2,NULL),(1212,176,27,2,NULL),(1213,178,27,2,NULL),(1214,29,34,2,NULL),(1215,176,34,2,NULL),(1216,178,34,2,NULL),(1217,29,88,2,NULL),(1218,176,88,2,NULL),(1219,178,88,2,NULL),(1220,29,93,2,NULL),(1221,176,93,2,NULL),(1222,178,93,2,NULL),(1223,29,94,2,NULL),(1224,176,94,2,NULL),(1225,178,94,2,NULL),(1226,29,97,2,NULL),(1227,176,97,2,NULL),(1228,178,97,2,NULL),(1229,29,98,2,NULL),(1230,176,98,2,NULL),(1231,178,98,2,NULL),(1232,29,99,2,NULL),(1233,176,99,2,NULL),(1234,178,99,2,NULL),(1235,29,119,2,NULL),(1236,176,119,2,NULL),(1237,178,119,2,NULL),(1238,29,120,2,NULL),(1239,176,120,2,NULL),(1240,178,120,2,NULL),(1241,29,127,2,NULL),(1242,176,127,2,NULL),(1243,178,127,2,NULL),(1244,29,128,2,NULL),(1245,176,128,2,NULL),(1246,178,128,2,NULL),(1247,7,35,2,NULL),(1248,8,35,2,NULL),(1249,26,35,2,NULL),(1250,27,35,2,NULL),(1251,122,35,2,NULL),(1252,169,35,2,NULL),(1253,47,35,2,NULL),(1254,51,35,2,NULL),(1255,53,35,2,NULL),(1256,84,35,2,NULL),(1257,87,35,2,NULL),(1258,96,38,2,NULL),(1259,151,38,2,NULL),(1260,153,38,2,NULL),(1261,7,36,2,NULL),(1262,8,36,2,NULL),(1263,26,36,2,NULL),(1264,27,36,2,NULL),(1265,122,36,2,NULL),(1266,169,36,2,NULL),(1267,47,36,2,NULL),(1268,51,36,2,NULL),(1269,53,36,2,NULL),(1270,84,36,2,NULL),(1271,87,36,2,NULL),(1272,145,28,2,NULL),(1273,169,2,2,NULL),(1274,169,6,2,NULL),(1275,169,8,2,NULL),(1276,169,10,2,NULL),(1277,169,13,2,NULL),(1278,169,15,2,NULL),(1279,169,38,2,NULL),(1280,169,39,2,NULL),(1281,169,17,2,NULL),(1282,169,21,2,NULL),(1283,169,27,2,NULL),(1284,169,34,2,NULL),(1285,169,88,2,NULL),(1286,169,93,2,NULL),(1287,169,94,2,NULL),(1288,169,97,2,NULL),(1289,169,98,2,NULL),(1290,169,99,2,NULL),(1291,169,119,2,NULL),(1292,169,120,2,NULL),(1293,169,127,2,NULL),(1294,169,128,2,NULL),(1295,7,38,2,NULL),(1296,8,38,2,NULL),(1297,26,38,2,NULL),(1298,27,38,2,NULL),(1299,122,38,2,NULL),(1300,47,38,2,NULL),(1301,51,38,2,NULL),(1302,53,38,2,NULL),(1303,84,38,2,NULL),(1304,87,38,2,NULL),(1305,67,38,2,NULL),(1306,77,38,2,NULL),(1307,83,38,2,NULL),(1308,7,39,2,NULL),(1309,8,39,2,NULL),(1310,26,39,2,NULL),(1311,27,39,2,NULL),(1312,122,39,2,NULL),(1313,47,39,2,NULL),(1314,51,39,2,NULL),(1315,53,39,2,NULL),(1316,84,39,2,NULL),(1317,87,39,2,NULL),(1318,7,88,2,NULL),(1319,8,88,2,NULL),(1320,26,88,2,NULL),(1321,27,88,2,NULL),(1322,122,88,2,NULL),(1323,47,88,2,NULL),(1324,51,88,2,NULL),(1325,53,88,2,NULL),(1326,84,88,2,NULL),(1327,87,88,2,NULL),(1328,7,93,2,NULL),(1329,8,93,2,NULL),(1330,26,93,2,NULL),(1331,27,93,2,NULL),(1332,122,93,2,NULL),(1333,47,93,2,NULL),(1334,51,93,2,NULL),(1335,53,93,2,NULL),(1336,84,93,2,NULL),(1337,87,93,2,NULL),(1338,7,94,2,NULL),(1339,8,94,2,NULL),(1340,26,94,2,NULL),(1341,27,94,2,NULL),(1342,122,94,2,NULL),(1343,47,94,2,NULL),(1344,51,94,2,NULL),(1345,53,94,2,NULL),(1346,84,94,2,NULL),(1347,87,94,2,NULL),(1348,7,97,2,NULL),(1349,8,97,2,NULL),(1350,26,97,2,NULL),(1351,27,97,2,NULL),(1352,122,97,2,NULL),(1353,47,97,2,NULL),(1354,51,97,2,NULL),(1355,53,97,2,NULL),(1356,84,97,2,NULL),(1357,87,97,2,NULL),(1358,7,98,2,NULL),(1359,8,98,2,NULL),(1360,26,98,2,NULL),(1361,27,98,2,NULL),(1362,122,98,2,NULL),(1363,47,98,2,NULL),(1364,51,98,2,NULL),(1365,53,98,2,NULL),(1366,84,98,2,NULL),(1367,87,98,2,NULL),(1368,7,99,2,NULL),(1369,8,99,2,NULL),(1370,26,99,2,NULL),(1371,27,99,2,NULL),(1372,122,99,2,NULL),(1373,47,99,2,NULL),(1374,51,99,2,NULL),(1375,53,99,2,NULL),(1376,84,99,2,NULL),(1377,87,99,2,NULL),(1378,7,119,2,NULL),(1379,8,119,2,NULL),(1380,26,119,2,NULL),(1381,27,119,2,NULL),(1382,122,119,2,NULL),(1383,47,119,2,NULL),(1384,51,119,2,NULL),(1385,53,119,2,NULL),(1386,84,119,2,NULL),(1387,87,119,2,NULL),(1388,7,120,2,NULL),(1389,8,120,2,NULL),(1390,26,120,2,NULL),(1391,27,120,2,NULL),(1392,122,120,2,NULL),(1393,47,120,2,NULL),(1394,51,120,2,NULL),(1395,53,120,2,NULL),(1396,84,120,2,NULL),(1397,87,120,2,NULL),(1398,7,127,2,NULL),(1399,8,127,2,NULL),(1400,26,127,2,NULL),(1401,27,127,2,NULL),(1402,122,127,2,NULL),(1403,47,127,2,NULL),(1404,51,127,2,NULL),(1405,53,127,2,NULL),(1406,84,127,2,NULL),(1407,87,127,2,NULL),(1408,7,128,2,NULL),(1409,8,128,2,NULL),(1410,26,128,2,NULL),(1411,27,128,2,NULL),(1412,122,128,2,NULL),(1413,47,128,2,NULL),(1414,51,128,2,NULL),(1415,53,128,2,NULL),(1416,84,128,2,NULL),(1417,87,128,2,NULL),(1418,47,2,2,NULL),(1419,47,6,2,NULL),(1420,47,8,2,NULL),(1421,7,17,2,NULL),(1422,8,17,2,NULL),(1423,47,10,2,NULL),(1424,26,17,2,NULL),(1425,27,17,2,NULL),(1426,122,17,2,NULL),(1427,47,13,2,NULL),(1428,47,15,2,NULL),(1429,47,21,2,NULL),(1430,51,17,2,NULL),(1431,53,17,2,NULL),(1432,84,17,2,NULL),(1433,87,17,2,NULL),(1434,47,27,2,NULL),(1435,47,34,2,NULL),(1436,63,24,2,NULL),(1437,91,24,2,NULL),(1438,7,21,2,NULL),(1439,8,21,2,NULL),(1440,26,21,2,NULL),(1441,27,21,2,NULL),(1442,122,21,2,NULL),(1443,51,21,2,NULL),(1444,53,21,2,NULL),(1445,84,21,2,NULL),(1446,87,21,2,NULL),(1447,25,17,2,NULL),(1448,35,17,2,NULL),(1449,44,17,2,NULL),(1450,72,17,2,NULL),(1451,51,2,2,NULL),(1452,53,2,2,NULL),(1453,84,2,2,NULL),(1454,87,2,2,NULL),(1455,51,6,2,NULL),(1456,53,6,2,NULL),(1457,84,6,2,NULL),(1458,87,6,2,NULL),(1459,51,8,2,NULL),(1460,53,8,2,NULL),(1461,84,8,2,NULL),(1462,87,8,2,NULL),(1463,51,10,2,NULL),(1464,53,10,2,NULL),(1465,84,10,2,NULL),(1466,87,10,2,NULL),(1467,51,13,2,NULL),(1468,53,13,2,NULL),(1469,84,13,2,NULL),(1470,87,13,2,NULL),(1471,51,15,2,NULL),(1472,53,15,2,NULL),(1473,84,15,2,NULL),(1474,87,15,2,NULL),(1475,51,27,2,NULL),(1476,53,27,2,NULL),(1477,84,27,2,NULL),(1478,87,27,2,NULL),(1479,51,34,2,NULL),(1480,53,34,2,NULL),(1481,84,34,2,NULL),(1482,87,34,2,NULL),(1483,7,27,2,NULL),(1484,8,27,2,NULL),(1485,26,27,2,NULL),(1486,27,27,2,NULL),(1487,122,27,2,NULL),(1488,76,25,2,NULL),(1489,7,34,2,NULL),(1490,8,34,2,NULL),(1491,26,34,2,NULL),(1492,27,34,2,NULL),(1493,122,34,2,NULL),(1494,38,13,2,NULL),(1495,42,13,2,NULL),(1496,49,4,2,NULL),(1497,90,13,2,NULL),(1498,7,2,2,NULL),(1499,8,2,2,NULL),(1500,26,2,2,NULL),(1501,27,2,2,NULL),(1502,122,2,2,NULL),(1503,1,2,2,NULL),(1504,3,2,2,NULL),(1505,5,2,2,NULL),(1506,46,2,2,NULL),(1507,68,13,2,NULL),(1508,82,13,2,NULL),(1509,7,6,2,NULL),(1510,8,6,2,NULL),(1511,26,6,2,NULL),(1512,27,6,2,NULL),(1513,122,6,2,NULL),(1514,86,6,2,NULL),(1515,7,10,2,NULL),(1516,8,10,2,NULL),(1517,26,8,2,NULL),(1518,27,8,2,NULL),(1519,122,8,2,NULL),(1520,7,13,2,NULL),(1521,8,13,2,NULL),(1522,7,15,2,NULL),(1523,8,15,2,NULL),(1524,22,13,2,NULL),(1525,113,2,2,NULL),(1526,26,10,2,NULL),(1527,27,10,2,NULL),(1528,122,10,2,NULL),(1529,93,6,2,NULL),(1530,128,12,2,NULL),(1531,26,13,2,NULL),(1532,27,13,2,NULL),(1533,122,13,2,NULL),(1534,26,15,2,NULL),(1535,27,15,2,NULL),(1536,122,15,2,NULL),(1537,79,13,2,NULL),(1538,98,13,2,NULL),(1539,117,13,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_CACHE_FILESYSTEM'),(17,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.ACCESS_WIFI_STATE'),(22,'android.permission.CAMERA'),(26,'android.permission.CHANGE_CONFIGURATION'),(24,'android.permission.CHANGE_NETWORK_STATE'),(23,'android.permission.CHANGE_WIFI_STATE'),(8,'android.permission.DELETE_CACHE_FILES'),(13,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(21,'android.permission.KILL_BACKGROUND_PROCESSES'),(16,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.RECEIVE_SMS'),(18,'android.permission.RESTART_PACKAGES'),(11,'android.permission.SET_WALLPAPER'),(12,'android.permission.SYSTEM_ALERT_WINDOW'),(15,'android.permission.VIBRATE'),(25,'android.permission.WAKE_LOCK'),(19,'android.permission.WRITE_APN_SETTINGS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(10,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'http://www.winten-tech.com/wap/reg.htm',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://',NULL,NULL,NULL),(23,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://',NULL,NULL,NULL),(29,NULL,NULL,'',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'',NULL,NULL,NULL),(38,NULL,NULL,'file://',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,1,8),(10,2,2),(11,1,9),(12,2,3),(13,1,10),(14,2,5),(15,2,6),(16,2,9),(17,2,10),(18,2,11),(19,3,1),(20,3,2),(21,3,3),(22,3,4),(23,3,5),(24,3,6),(25,4,1),(26,3,7),(27,4,2),(28,3,8),(29,4,5),(30,3,9),(31,4,6),(32,3,10),(33,4,9),(34,3,11),(35,4,12),(36,4,13),(37,4,14),(38,5,1),(39,5,2),(40,5,3),(41,5,5),(42,5,6),(43,5,9),(44,5,10),(45,5,13),(46,5,14),(47,5,15),(48,6,17),(49,6,16),(50,6,1),(51,6,18),(52,6,5),(53,6,6),(54,6,9),(55,6,14),(56,6,15),(57,7,1),(58,7,2),(59,7,3),(60,7,5),(61,7,6),(62,7,9),(63,7,10),(64,7,12),(65,7,13),(66,7,14),(67,7,19),(68,7,21),(69,7,20),(70,7,23),(71,7,22),(72,7,25),(73,7,24),(74,7,26);
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

-- Dump completed on 2015-10-12  3:30:32
