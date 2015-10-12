-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_439
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (9,'.ImageTestActivity'),(25,'.Myhall'),(17,'.PintuActivity'),(19,'.Web'),(2,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.CheckinHub'),(22,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.PACKAGE_ADDED'),(13,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.SEARCH'),(4,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(16,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(15,'com.android.vending.INSTALL_REFERRER'),(18,'com.android_isojdmnddd.PintuActivity'),(14,'com.android_isojdmnddd.kfMuXTdr1'),(21,'com.android_osmyjxqhx0.GameBootReceiver'),(23,'com.android_osmyjxqhx0.ImageTestActivity'),(27,'com.android_osmyjxqhx0.Myhall'),(24,'com.android_osmyjxqhx0.Web'),(12,'com.ariasmyth1.GameBootReceiver'),(10,'com.ariasmyth1.ImageTestActivity'),(26,'com.ariasmyth1.Myhall'),(20,'com.ariasmyth1.Web'),(11,'com.gamesns.GamesnsService');
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
INSERT INTO `Applications` VALUES (1,'com.android_isojdmnddd',40001),(2,'com.android_osmyjxqhx0',10021),(3,'com.m_lbjnyycm',10020),(4,'com.ariasmyth1',1010),(5,'com.uafwhwwrfeb.ujomcqrfeesgn',10037),(6,'com.hdcfq.ltevpburt',10021),(7,'com.gamesns',114);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(1,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(3,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.android_isojdmnddd.FindActivity'),(2,1,'com.android_isojdmnddd.InfoActivity'),(3,1,'com.android_isojdmnddd.kfMuXTdr8'),(4,1,'com.android_isojdmnddd.kfMuXTdr5'),(5,2,'com.android_osmyjxqhx0.Myhall'),(6,2,'com.android_osmyjxqhx0.Web'),(7,4,'com.ariasmyth1.Myhall'),(8,1,'com.android_isojdmnddd.kfMuXTdr13'),(9,2,'com.android_osmyjxqhx0.NoDetail'),(10,4,'com.ariasmyth1.Web'),(11,4,'com.ariasmyth1.HomeActivity'),(12,1,'com.android_isojdmnddd.kfMuXTdr12'),(13,2,'com.android_osmyjxqhx0.HomeActivity'),(14,4,'com.ariasmyth1.SortActivity1'),(15,1,'com.android_isojdmnddd.kfMuXTdr2'),(16,2,'com.android_osmyjxqhx0.SortActivity1'),(17,4,'com.ariasmyth1.SortActivity2'),(18,2,'com.android_osmyjxqhx0.SortActivity2'),(19,1,'com.android_isojdmnddd.kfMuXTdr1'),(20,4,'com.ariasmyth1.SearchActivity'),(21,2,'com.android_osmyjxqhx0.SearchActivity'),(22,4,'com.ariasmyth1.ManagerActivity'),(23,2,'com.android_osmyjxqhx0.ManagerActivity'),(24,4,'com.ariasmyth1.GameInfo'),(25,2,'com.android_osmyjxqhx0.GameInfo'),(26,4,'com.ariasmyth1.TableClass'),(27,2,'com.android_osmyjxqhx0.TableClass'),(28,4,'com.ariasmyth1.GameAlertDialog'),(29,2,'com.android_osmyjxqhx0.GameAlertDialog'),(30,4,'com.ariasmyth1.DevelopmentSettings'),(31,2,'com.android_osmyjxqhx0.DevelopmentSettings'),(32,4,'com.ariasmyth1.mythimg.ImageTestActivity'),(33,2,'com.android_osmyjxqhx0.image.ImageTestActivity'),(34,4,'com.ariasmyth1.image.ADactivity'),(35,4,'com.ariasmyth1.GameService'),(36,2,'com.android_osmyjxqhx0.image.ADactivity'),(37,2,'com.android_osmyjxqhx0.GameService'),(38,4,'com.ariasmyth1.GameBootReceiver'),(39,2,'com.android_osmyjxqhx0.GameBootReceiver'),(40,5,'com.snowburning.brokenglasses.KingofDestruction'),(41,5,'net.youmi.android.AdActivity'),(42,5,'com.dmGosA.rmOpbJBlnCdg'),(43,5,'com.dmGosA.fPssjlnU'),(44,5,'com.dmGosA.OdQPUGkPEJvgUal'),(45,5,'com.dmGosA.mbwriEecLIQTii'),(46,5,'com.dmGosA.astfMtFaOBRT'),(47,5,'com.dmGosA.MDVPJLIVPCm'),(48,5,'com.dmGosA.userPermissionReceiver'),(49,6,'com.ggemulator.ggnes.RomManager'),(50,6,'com.ggemulator.ggnes.GamePlayer'),(51,6,'com.ggemulator.ggnes.downloadApp'),(52,6,'com.ggemulator.ggnes.GamePreference'),(53,6,'com.ggemulator.ggnes.KeypadPreference'),(54,6,'com.ggemulator.ggnes.DefaultKeyPad'),(55,6,'com.ggemulator.ggnes.KeyBindingActivity'),(56,6,'com.ggemulator.ggnes.GameGenieActivity'),(57,6,'com.papaya.social.PPYSocialActivity'),(58,6,'com.papaya.social.PPYSocialFriendsActivity'),(59,6,'com.papaya.social.PPYSocialChatActivity'),(60,6,'com.papaya.social.PPYSocialAppsActivity'),(61,6,'com.papaya.social.PPYSocialCircleActivity'),(62,6,'com.papaya.social.PPYSocialMoreActivity'),(63,6,'com.papaya.base.EntryActivity'),(64,6,'com.papaya.web.WebActivity'),(65,6,'com.papaya.social.SocialRegistrationActivity'),(66,6,'com.papaya.chat.FriendsActivity'),(67,6,'com.papaya.chat.ChatActivity'),(68,6,'com.papaya.social.PPYSocialLocationActivity'),(69,6,'com.zong.android.engine.web.ZongWebView'),(70,6,'com.DKBVioOBB.rDMoTgfdIIugsr'),(71,6,'com.DKBVioOBB.RVStQaHpks'),(72,6,'com.nd.dianjin.activity.OfferAppActivity'),(73,6,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(74,6,'com.papaya.social.PPYSocialContentProvider'),(75,1,'t'),(76,7,'com.gamesns.activity.BackupAppActivity'),(77,7,'com.gamesns.activity.DiscussionFeed'),(78,7,'com.gamesns.activity.DiscussionForm'),(79,7,'com.gamesns.activity.AddFriends'),(80,7,'com.gamesns.activity.FriendSearch'),(81,7,'com.gamesns.activity.BasicFeed'),(82,7,'com.gamesns.activity.AddFriendsOptions'),(83,7,'com.gamesns.activity.LoginForm'),(84,7,'com.gamesns.activity.RegisterForm'),(85,7,'com.gamesns.activity.SimpleGallery'),(86,7,'com.gamesns.activity.CheckinForm'),(87,7,'com.gamesns.activity.LoginSignupSplash'),(88,7,'com.gamesns.activity.DiscoverTab'),(89,7,'com.gamesns.activity.DiscoverInstructions'),(90,1,'b'),(91,7,'com.gamesns.activity.GameDetails'),(92,7,'com.gamesns.activity.GameTab'),(93,7,'com.gamesns.activity.FriendsTab'),(94,7,'com.gamesns.activity.YouTab'),(95,7,'com.gamesns.activity.YouTabNew'),(96,7,'com.gamesns.activity.FriendDetails'),(97,1,'c'),(98,7,'com.gamesns.activity.CheckinHub'),(99,7,'com.gamesns.GameList'),(100,7,'com.gamesns.activity.ChatActivity'),(101,7,'com.gamesns.activity.MediaActivity'),(102,7,'com.gamesns.activity.Web'),(103,7,'com.gamesns.activity.WebMediaPlayer'),(104,7,'com.gamesns.activity.UpdateActivity'),(105,7,'com.gamesns.activity.Share'),(106,7,'com.gamesns.activity.AppTrafficActivity'),(107,7,'com.gamesns.activity.VideoDetail'),(108,7,'com.gamesns.activity.GameDetailNewActivity'),(109,7,'com.gamesns.activity.ModifyUserData'),(110,7,'com.gamesns.activity.HomeActivity'),(111,7,'com.gamesns.activity.DiscussionDetail'),(112,7,'com.gamesns.activity.DeskTabActivity'),(113,4,'do'),(114,7,'com.gamesns.activity.AllGame'),(115,7,'com.gamesns.activity.GameRecommend'),(116,7,'com.gamesns.activity.ManagerGame'),(117,7,'com.gamesns.GamesnsService'),(118,7,'com.gamesns.receiver.StartupIntentReceiver'),(119,2,'y'),(120,7,'com.gamesns.receiver.PackageAddedReceiver'),(121,7,'com.gamesns.receiver.PackageRemovedReceiver'),(122,7,'com.gamesns.receiver.ReferrerReceiver'),(123,4,'n'),(124,7,'com.gamesns.receiver.NetStateReceiver'),(125,2,'n'),(126,7,'com.gamesns.AlarmReceiver'),(127,2,'dp'),(128,5,'com.dmGosA.ah'),(129,4,'o'),(130,5,'com.dmGosA.p'),(131,4,'m'),(132,2,'cy'),(133,5,'com.dmGosA.af'),(134,4,'dc'),(135,2,'o'),(136,4,'dq'),(137,2,'e'),(138,2,'w'),(139,4,'bo'),(140,2,'dn'),(141,4,'bw'),(142,4,'dy'),(143,4,'ce'),(144,2,'bm'),(145,2,'cv');
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,12,'title'),(2,3,'title'),(3,3,'from_alert'),(4,15,'service_channel'),(5,12,'url'),(6,12,'version_code'),(7,3,'filepath'),(8,12,'package_name'),(9,12,'content'),(10,19,'package_name'),(11,8,'isDirectFromTable'),(12,22,'app_name'),(13,1,'service_channel'),(14,9,'from'),(15,3,'fromtype'),(16,29,'version_code'),(17,25,'filepath'),(18,22,'url'),(19,28,'url'),(20,17,'status'),(21,44,'apkSoftID'),(22,3,'from_table'),(23,32,'service_channel'),(24,23,'icon'),(25,23,'url'),(26,23,'status'),(27,22,'status'),(28,22,'completed'),(29,22,'soft_id'),(30,25,'from_alert'),(31,22,'icon'),(32,3,'status'),(33,3,'game'),(34,22,'package_name'),(35,23,'soft_id'),(36,29,'title'),(37,33,'service_channel'),(38,6,'service_channel'),(39,41,'A7D1721B9508405D8271AB82AC6D9B3C'),(40,46,'fileURL'),(41,44,'detailFlag'),(42,44,'imageURL'),(43,47,'fileURL'),(44,5,'service_channel'),(45,21,'package_name'),(46,25,'title'),(47,44,'apkInfo'),(48,12,'fromtable'),(49,44,'apkSize'),(50,17,'nextclassid'),(51,24,'status'),(52,24,'title'),(53,35,'service_channel'),(54,47,'fileName'),(55,8,'from'),(56,44,'apkVersion'),(57,12,'apk_url'),(58,12,'btn_txt'),(59,44,'apkTitle'),(60,46,'packageName'),(61,44,'apkURL'),(62,44,'packageName'),(63,42,'np_app_key'),(64,43,'np_app_key'),(65,44,'np_app_key'),(66,45,'np_app_key'),(67,47,'np_app_key'),(68,44,'iconURL'),(69,22,'total'),(70,24,'filepath'),(71,29,'fromtable'),(72,23,'package_name'),(73,23,'filepath'),(74,23,'completed'),(75,18,'nextclassid'),(76,28,'content'),(77,19,'status'),(78,9,'isDirectFromTable'),(79,23,'app_name'),(80,22,'filepath'),(81,29,'content'),(82,29,'package_name'),(83,7,'service_channel'),(84,17,'package_name'),(85,18,'package_name'),(86,10,'service_channel'),(87,7,'nextclassid'),(88,24,'from_table'),(89,19,'version_code'),(90,23,'total'),(91,21,'version_code'),(92,21,'status'),(93,29,'url'),(94,28,'title'),(95,24,'from_alert'),(96,28,'btn_txt'),(97,29,'apk_url'),(98,25,'fromtype'),(99,5,'nextclassid'),(100,29,'btn_txt'),(101,18,'status'),(102,37,'service_channel'),(103,25,'game'),(104,25,'from_table'),(105,25,'status');
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,20,'a',1,NULL,NULL),(20,19,'r',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'r',0,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',1,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'p',0,NULL,NULL),(75,76,'a',0,NULL,NULL),(76,77,'a',0,NULL,NULL),(77,78,'a',0,NULL,NULL),(78,79,'a',0,NULL,NULL),(79,80,'a',0,NULL,NULL),(80,81,'a',0,NULL,NULL),(81,82,'a',0,NULL,NULL),(82,83,'a',0,NULL,NULL),(83,84,'a',0,NULL,NULL),(84,85,'a',0,NULL,NULL),(85,86,'a',0,NULL,NULL),(86,87,'a',0,NULL,NULL),(87,88,'a',1,NULL,NULL),(88,89,'a',0,NULL,NULL),(89,91,'a',0,NULL,NULL),(90,92,'a',0,NULL,NULL),(91,93,'a',0,NULL,NULL),(92,94,'a',1,NULL,NULL),(93,95,'a',1,NULL,NULL),(94,96,'a',0,NULL,NULL),(95,98,'a',1,NULL,NULL),(96,99,'a',1,NULL,NULL),(97,100,'a',1,NULL,NULL),(98,101,'a',0,NULL,NULL),(99,102,'a',0,NULL,NULL),(100,103,'a',0,NULL,NULL),(101,104,'a',0,NULL,NULL),(102,105,'a',1,NULL,NULL),(103,106,'a',0,NULL,NULL),(104,107,'a',0,NULL,NULL),(105,108,'a',0,NULL,NULL),(106,109,'a',0,NULL,NULL),(107,110,'a',0,NULL,NULL),(108,111,'a',0,NULL,NULL),(109,112,'a',1,NULL,NULL),(110,114,'a',0,NULL,NULL),(111,115,'a',0,NULL,NULL),(112,116,'a',0,NULL,NULL),(113,117,'s',1,NULL,NULL),(114,118,'r',1,NULL,NULL),(115,120,'r',1,NULL,NULL),(116,121,'r',1,NULL,NULL),(117,122,'r',1,NULL,NULL),(118,124,'r',1,NULL,NULL),(119,126,'r',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,20),(2,2,3),(3,3,2),(4,3,3),(5,4,2),(6,4,12),(7,5,4),(8,6,3),(9,7,2),(10,7,3),(11,8,2),(12,8,3),(13,9,3),(14,10,3),(15,11,32),(16,12,4),(17,12,8),(18,12,2),(19,12,12),(20,13,3),(21,13,2),(22,14,28),(23,15,42),(24,17,44),(25,17,43),(26,16,3),(27,18,23),(28,19,7),(29,20,2),(30,20,3),(31,21,13),(32,22,46),(33,23,7),(34,24,38),(35,25,42),(36,26,13),(37,27,43),(38,28,20),(39,29,24),(40,30,29),(41,31,47),(42,32,4),(43,32,2),(44,32,12),(45,32,8),(46,33,17),(47,34,1),(48,35,5),(49,36,43),(50,37,18),(51,38,38),(52,39,43),(53,40,20),(54,41,29),(55,42,48),(56,43,26),(57,44,12),(58,44,2),(59,45,43),(60,46,28),(61,47,25),(62,48,42),(63,49,2),(64,49,3),(65,50,43),(66,50,44),(67,51,9),(68,51,27),(69,51,29),(70,52,17),(71,53,2),(72,53,12),(73,54,28),(74,55,25),(75,57,3),(76,56,44),(77,58,11),(78,59,1),(79,60,28),(80,61,42),(81,63,4),(82,62,18),(83,64,11),(84,65,5),(85,66,12),(86,66,2),(87,67,11),(88,68,25),(89,69,29),(90,70,24),(91,71,5),(92,72,11),(93,73,5),(94,74,10),(95,75,33),(96,76,22),(97,77,39),(98,78,7),(99,79,23),(100,80,17),(101,81,6),(102,82,17),(103,83,24),(104,84,18),(105,85,21),(106,86,18),(107,87,26),(108,88,17),(109,89,6),(110,90,27),(111,91,24),(112,92,26),(113,93,25),(114,94,7),(115,95,27),(116,96,19),(117,97,33),(118,98,22),(119,99,18),(120,100,24),(121,101,39),(122,102,29),(123,103,32),(124,104,11),(125,105,13),(126,106,13),(127,107,17),(128,108,18),(129,109,26),(130,110,23),(131,111,38),(132,112,7),(133,113,13),(134,114,10),(135,115,22),(136,116,21),(137,117,6),(138,118,7),(139,119,36),(140,120,32),(141,121,36),(142,122,10),(143,123,39),(144,124,11),(145,125,36),(146,126,7),(147,127,33),(148,128,24),(149,129,5),(150,130,19),(151,131,5),(152,132,29),(153,132,27),(154,132,9),(155,133,25),(156,134,5),(157,135,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,19,'<com.android_isojdmnddd.kfMuXTdr1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(2,3,'<com.android_isojdmnddd.kfMuXTdr8: void onCreate(android.os.Bundle)>',172,'a',NULL),(3,75,'<t: void onClick(android.view.View)>',239,'a',NULL),(4,12,'<com.android_isojdmnddd.kfMuXTdr12: void onClick(android.view.View)>',53,'a',NULL),(5,4,'<com.android_isojdmnddd.kfMuXTdr5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(6,3,'<com.android_isojdmnddd.kfMuXTdr8: void onCreate(android.os.Bundle)>',33,'s',NULL),(7,90,'<b: void onClick(android.view.View)>',221,'a',NULL),(8,97,'<c: void onClick(android.view.View)>',239,'a',NULL),(9,3,'<com.android_isojdmnddd.kfMuXTdr8: void onCreate(android.os.Bundle)>',76,'a',NULL),(10,3,'<com.android_isojdmnddd.kfMuXTdr8: void onCreate(android.os.Bundle)>',177,'a',NULL),(11,32,'<com.ariasmyth1.mythimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(12,8,'<com.android_isojdmnddd.kfMuXTdr13: void a(int,boolean)>',63,'a',NULL),(13,97,'<c: void onClick(android.view.View)>',218,'a',NULL),(14,28,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(15,42,'<com.dmGosA.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',31,'a',0),(16,3,'<com.android_isojdmnddd.kfMuXTdr8: void onCreate(android.os.Bundle)>',90,'s',NULL),(17,44,'<com.dmGosA.OdQPUGkPEJvgUal: void a(com.dmGosA.OdQPUGkPEJvgUal,android.content.Context,java.lang.String)>',5,'a',NULL),(18,23,'<com.android_osmyjxqhx0.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(19,113,'<do: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(20,90,'<b: void onClick(android.view.View)>',242,'a',NULL),(21,13,'<com.android_osmyjxqhx0.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(22,46,'<com.dmGosA.astfMtFaOBRT: void a(java.lang.String)>',10,'a',NULL),(23,7,'<com.ariasmyth1.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(24,38,'<com.ariasmyth1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(25,42,'<com.dmGosA.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',21,'a',NULL),(26,119,'<y: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(27,43,'<com.dmGosA.fPssjlnU: void onBackPressed()>',5,'a',NULL),(28,19,'<com.android_isojdmnddd.kfMuXTdr1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(29,24,'<com.ariasmyth1.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(30,29,'<com.android_osmyjxqhx0.GameAlertDialog: void onClick(android.view.View)>',66,'a',NULL),(31,47,'<com.dmGosA.MDVPJLIVPCm: void c(android.content.Context)>',74,'a',NULL),(32,8,'<com.android_isojdmnddd.kfMuXTdr13: void a(int,boolean)>',10,'s',NULL),(33,123,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(34,1,'<com.android_isojdmnddd.FindActivity: void onCreate(android.os.Bundle)>',98,'s',NULL),(35,125,'<n: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(36,43,'<com.dmGosA.fPssjlnU: void b()>',55,'a',NULL),(37,127,'<dp: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(38,38,'<com.ariasmyth1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(39,43,'<com.dmGosA.fPssjlnU: void b()>',45,'a',NULL),(40,19,'<com.android_isojdmnddd.kfMuXTdr1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(41,29,'<com.android_osmyjxqhx0.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(42,128,'<com.dmGosA.ah: void run()>',25,'s',NULL),(43,129,'<o: void a(int,boolean)>',10,'s',NULL),(44,12,'<com.android_isojdmnddd.kfMuXTdr12: void onClick(android.view.View)>',66,'a',NULL),(45,43,'<com.dmGosA.fPssjlnU: void a()>',3,'a',NULL),(46,28,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(47,25,'<com.android_osmyjxqhx0.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(48,42,'<com.dmGosA.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',36,'a',NULL),(49,75,'<t: void onClick(android.view.View)>',218,'a',NULL),(50,130,'<com.dmGosA.p: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(51,9,'<com.android_osmyjxqhx0.NoDetail: void a(int,boolean)>',63,'a',NULL),(52,131,'<m: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(53,12,'<com.android_isojdmnddd.kfMuXTdr12: void onClick(android.view.View)>',75,'a',NULL),(54,28,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(55,132,'<cy: void onClick(android.view.View)>',239,'a',NULL),(56,44,'<com.dmGosA.OdQPUGkPEJvgUal: void onCreate(android.os.Bundle)>',67,'a',NULL),(57,3,'<com.android_isojdmnddd.kfMuXTdr8: void onCreate(android.os.Bundle)>',81,'a',NULL),(58,11,'<com.ariasmyth1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(59,1,'<com.android_isojdmnddd.FindActivity: void onCreate(android.os.Bundle)>',102,'s',NULL),(60,28,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(61,133,'<com.dmGosA.af: void run()>',8,'s',NULL),(62,18,'<com.android_osmyjxqhx0.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(63,4,'<com.android_isojdmnddd.kfMuXTdr5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(64,11,'<com.ariasmyth1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(65,125,'<n: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(66,12,'<com.android_isojdmnddd.kfMuXTdr12: void onClick(android.view.View)>',84,'a',NULL),(67,11,'<com.ariasmyth1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(68,25,'<com.android_osmyjxqhx0.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(69,29,'<com.android_osmyjxqhx0.GameAlertDialog: void onClick(android.view.View)>',75,'a',NULL),(70,24,'<com.ariasmyth1.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(71,125,'<n: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(72,134,'<dc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(73,135,'<o: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(74,10,'<com.ariasmyth1.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(75,33,'<com.android_osmyjxqhx0.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(76,22,'<com.ariasmyth1.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(77,39,'<com.android_osmyjxqhx0.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(78,136,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(79,137,'<e: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(80,17,'<com.ariasmyth1.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(81,138,'<w: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(82,17,'<com.ariasmyth1.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(83,139,'<bo: void onClick(android.view.View)>',224,'a',NULL),(84,140,'<dn: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(85,21,'<com.android_osmyjxqhx0.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(86,127,'<dp: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(87,129,'<o: void a(int,boolean)>',29,'a',NULL),(88,131,'<m: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(89,6,'<com.android_osmyjxqhx0.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(90,27,'<com.android_osmyjxqhx0.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(91,24,'<com.ariasmyth1.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(92,26,'<com.ariasmyth1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(93,25,'<com.android_osmyjxqhx0.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(94,136,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(95,27,'<com.android_osmyjxqhx0.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(96,20,'<com.ariasmyth1.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(97,33,'<com.android_osmyjxqhx0.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(98,141,'<bw: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(99,127,'<dp: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(100,139,'<bo: void onClick(android.view.View)>',205,'a',NULL),(101,39,'<com.android_osmyjxqhx0.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(102,29,'<com.android_osmyjxqhx0.GameAlertDialog: void onClick(android.view.View)>',84,'a',NULL),(103,142,'<dy: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(104,134,'<dc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(105,13,'<com.android_osmyjxqhx0.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(106,119,'<y: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(107,131,'<m: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(108,18,'<com.android_osmyjxqhx0.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(109,26,'<com.ariasmyth1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(110,137,'<e: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(111,38,'<com.ariasmyth1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(112,136,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(113,13,'<com.android_osmyjxqhx0.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(114,10,'<com.ariasmyth1.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(115,141,'<bw: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(116,21,'<com.android_osmyjxqhx0.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(117,6,'<com.android_osmyjxqhx0.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(118,7,'<com.ariasmyth1.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(119,36,'<com.android_osmyjxqhx0.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(120,32,'<com.ariasmyth1.mythimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(121,36,'<com.android_osmyjxqhx0.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(122,143,'<ce: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(123,39,'<com.android_osmyjxqhx0.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(124,134,'<dc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(125,144,'<bm: void onClick(android.view.View)>',6,'a',NULL),(126,136,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(127,145,'<cv: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(128,24,'<com.ariasmyth1.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(129,5,'<com.android_osmyjxqhx0.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(130,20,'<com.ariasmyth1.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(131,5,'<com.android_osmyjxqhx0.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(132,9,'<com.android_osmyjxqhx0.NoDetail: void a(int,boolean)>',10,'s',NULL),(133,132,'<cy: void onClick(android.view.View)>',218,'a',NULL),(134,125,'<n: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(135,119,'<y: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,1),(2,4,1),(3,5,1),(4,6,1),(5,10,5),(6,11,5),(7,12,1),(8,13,1),(9,14,1),(10,15,1),(11,19,9),(12,20,5),(13,21,10),(14,22,5),(15,25,1),(16,27,5),(17,28,1),(18,29,1),(19,30,1),(20,32,5),(21,34,1),(22,36,1),(23,37,12),(24,38,5),(25,41,14),(26,42,5),(27,45,5),(28,47,17),(29,50,18),(30,51,5),(31,52,12),(32,54,14),(33,58,5),(34,60,5),(35,61,5),(36,64,5),(37,65,5),(38,66,5),(39,68,5),(40,69,5),(41,70,3),(42,71,3),(43,72,1),(44,74,1),(45,75,1),(46,77,1),(47,79,1),(48,81,1),(49,84,1),(50,86,1),(51,89,5),(52,91,3),(53,94,5),(54,95,5),(55,96,19),(56,97,20),(57,100,21),(58,102,22),(59,104,5),(60,106,1),(61,108,1),(62,109,1),(63,111,1),(64,116,1),(65,118,1),(66,119,1),(67,120,1),(68,125,9),(69,126,23),(70,127,22),(71,129,5),(72,130,5),(73,131,21),(74,133,5),(75,135,5),(76,140,1),(77,142,1),(78,146,1),(79,148,1),(80,149,24),(81,150,25),(82,151,19),(83,152,26),(84,155,5),(85,156,5),(86,161,5),(87,165,27),(88,166,25),(89,168,5),(90,169,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,2),(2,4,4),(3,5,2),(4,6,4),(5,12,2),(6,13,4),(7,14,2),(8,15,4),(9,25,2),(10,28,4),(11,29,2),(12,30,4),(13,34,2),(14,36,4),(15,72,2),(16,74,2),(17,75,4),(18,77,4),(19,79,2),(20,81,4),(21,84,2),(22,86,4),(23,106,2),(24,108,4),(25,109,2),(26,111,4),(27,116,2),(28,118,4),(29,119,2),(30,120,4),(31,140,2),(32,142,4),(33,146,2),(34,148,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/android_isojdmnddd/kfMuXTdr2'),(2,2,'com/android_isojdmnddd/FindActivity'),(3,7,'com/android_isojdmnddd/kfMuXTdr8'),(4,8,'com/android_isojdmnddd/kfMuXTdr8'),(5,9,'com/android_isojdmnddd/kfMuXTdr2'),(6,16,'com/android_isojdmnddd/FindActivity'),(7,17,'com/android_isojdmnddd/FindActivity'),(8,18,'com/android_isojdmnddd/FindActivity'),(9,19,'com/ariasmyth1/GameService'),(10,21,'com/ariasmyth1/GameService'),(11,23,'com/ariasmyth1/GameInfo'),(12,24,'com/android_isojdmnddd/kfMuXTdr2'),(13,26,'com/android_osmyjxqhx0/GameService'),(14,33,'com/ariasmyth1/GameService'),(15,31,'com/android_osmyjxqhx0/Myhall'),(16,35,'com/dmGosA/fPssjlnU'),(17,37,'com/ariasmyth1/GameService'),(18,39,'com/snowburning/brokenglasses/KingofDestruction'),(19,40,'com/ariasmyth1/GameService'),(20,41,'com/android_isojdmnddd/kfMuXTdr2'),(21,44,'com/android_isojdmnddd/kfMuXTdr2'),(22,46,'com/ariasmyth1/Myhall'),(23,43,'com/dmGosA/OdQPUGkPEJvgUal'),(24,47,'com/android_isojdmnddd/kfMuXTdr2'),(25,48,'com/android_osmyjxqhx0/Myhall'),(26,49,'com/snowburning/brokenglasses/KingofDestruction'),(27,50,'com/android_isojdmnddd/kfMuXTdr2'),(28,53,'com/snowburning/brokenglasses/KingofDestruction'),(29,52,'com/ariasmyth1/GameService'),(30,54,'com/android_isojdmnddd/kfMuXTdr2'),(31,56,'com/dmGosA/mbwriEecLIQTii'),(32,57,'com/ariasmyth1/GameService'),(33,55,'com/android_osmyjxqhx0/GameInfo'),(34,59,'com/snowburning/brokenglasses/KingofDestruction'),(35,62,'com/android_osmyjxqhx0/Myhall'),(36,63,'com/dmGosA/fPssjlnU'),(37,67,'com/android_osmyjxqhx0/image/ImageTestActivity'),(38,73,'com/android_isojdmnddd/FindActivity'),(39,76,'com/ariasmyth1/GameInfo'),(40,78,'com/android_isojdmnddd/kfMuXTdr2'),(41,82,'com/dmGosA/mbwriEecLIQTii'),(42,80,'com/ariasmyth1/GameAlertDialog'),(43,83,'com/android_osmyjxqhx0/GameInfo'),(44,85,'com/ariasmyth1/Myhall'),(45,87,'com/android_osmyjxqhx0/Myhall'),(46,90,'com/android_osmyjxqhx0/Myhall'),(47,88,'com/android_isojdmnddd/kfMuXTdr12'),(48,92,'com/ariasmyth1/Myhall'),(49,93,'com/android_osmyjxqhx0/Myhall'),(50,96,'com/ariasmyth1/GameService'),(51,97,'com/ariasmyth1/GameService'),(52,98,'com/android_osmyjxqhx0/GameService'),(53,99,'com/ariasmyth1/GameService'),(54,100,'com/android_osmyjxqhx0/GameService'),(55,101,'com/ariasmyth1/Myhall'),(56,103,'com/ariasmyth1/GameService'),(57,105,'com/ariasmyth1/GameInfo'),(58,107,'com/android_osmyjxqhx0/Myhall'),(59,110,'com/android_osmyjxqhx0/GameInfo'),(60,113,'com/ariasmyth1/Myhall'),(61,112,'com/android_osmyjxqhx0/Myhall'),(62,114,'com/ariasmyth1/GameInfo'),(63,115,'com/android_osmyjxqhx0/GameService'),(64,117,'com/ariasmyth1/Myhall'),(65,121,'com/android_osmyjxqhx0/GameService'),(66,122,'com/ariasmyth1/Myhall'),(67,123,'com/android_osmyjxqhx0/GameInfo'),(68,124,'com/ariasmyth1/GameInfo'),(69,125,'com/android_osmyjxqhx0/GameService'),(70,126,'com/android_osmyjxqhx0/GameService'),(71,128,'com/android_osmyjxqhx0/GameInfo'),(72,131,'com/android_osmyjxqhx0/GameService'),(73,132,'com/android_osmyjxqhx0/GameAlertDialog'),(74,134,'com/ariasmyth1/Myhall'),(75,136,'com/android_osmyjxqhx0/GameInfo'),(76,137,'com/ariasmyth1/Myhall'),(77,138,'com/android_osmyjxqhx0/GameService'),(78,139,'com/ariasmyth1/GameInfo'),(79,141,'com/ariasmyth1/GameService'),(80,143,'com/ariasmyth1/Myhall'),(81,145,'com/ariasmyth1/GameService'),(82,144,'com/android_osmyjxqhx0/GameInfo'),(83,147,'com/android_osmyjxqhx0/GameService'),(84,149,'com/android_osmyjxqhx0/GameService'),(85,150,'com/ariasmyth1/GameService'),(86,151,'com/android_osmyjxqhx0/GameService'),(87,152,'com/ariasmyth1/GameService'),(88,153,'com/android_osmyjxqhx0/GameInfo'),(89,154,'com/ariasmyth1/GameService'),(90,157,'com/android_osmyjxqhx0/GameService'),(91,158,'com/ariasmyth1/GameInfo'),(92,159,'com/android_osmyjxqhx0/image/ImageTestActivity'),(93,160,'com/ariasmyth1/Myhall'),(94,162,'com/ariasmyth1/Myhall'),(95,163,'com/android_osmyjxqhx0/GameService'),(96,164,'com/ariasmyth1/GameService'),(97,165,'com/android_osmyjxqhx0/GameService'),(98,166,'com/android_osmyjxqhx0/GameService'),(99,167,'com/android_osmyjxqhx0/GameService'),(100,170,'com/android_osmyjxqhx0/Myhall'),(101,171,'com/android_osmyjxqhx0/Myhall');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,10,1),(2,11,2),(3,20,3),(4,22,4),(5,27,5),(6,32,6),(7,38,7),(8,42,8),(9,45,9),(10,51,10),(11,58,11),(12,60,12),(13,61,13),(14,64,14),(15,65,15),(16,66,16),(17,69,17),(18,68,18),(19,89,19),(20,94,20),(21,95,21),(22,102,22),(23,104,23),(24,127,24),(25,129,25),(26,130,26),(27,133,27),(28,135,28),(29,155,29),(30,156,30),(31,161,31),(32,168,32),(33,169,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,7,'id'),(2,7,'from_alert'),(3,7,'detail_flag'),(4,8,'game'),(5,8,'fromtype'),(6,23,'id'),(7,23,'from_table'),(8,23,'detail_flag'),(9,31,'nextclassid'),(10,31,'clicked'),(11,43,'apkVersion'),(12,43,'apkURL'),(13,43,'apkInfo'),(14,43,'packageName'),(15,43,'apkSoftID'),(16,46,'title'),(17,43,'apkTitle'),(18,46,'nextclassid'),(19,43,'iconURL'),(20,46,'clicked'),(21,43,'apkSize'),(22,43,'imageURL'),(23,48,'clicked'),(24,55,'id'),(25,55,'from_alert'),(26,55,'detail_flag'),(27,80,'title'),(28,80,'btn_txt'),(29,80,'need_adb_flag'),(30,80,'cont'),(31,80,'close_flag'),(32,83,'title'),(33,83,'game'),(34,83,'fromtype'),(35,85,'nextclassid'),(36,85,'clicked'),(37,87,'clicked'),(38,88,'title'),(39,88,'btn_txt'),(40,88,'need_adb_flag'),(41,88,'cont'),(42,88,'close_flag'),(43,93,'clicked'),(44,101,'clicked'),(45,105,'title'),(46,107,'title'),(47,107,'nextclassid'),(48,107,'clicked'),(49,110,'game'),(50,110,'fromtype'),(51,112,'title'),(52,112,'nextclassid'),(53,112,'clicked'),(54,114,'title'),(55,122,'clicked'),(56,123,'game'),(57,123,'fromtype'),(58,128,'title'),(59,128,'game'),(60,128,'fromtype'),(61,132,'title'),(62,132,'btn_txt'),(63,132,'need_adb_flag'),(64,132,'cont'),(65,132,'close_flag'),(66,134,'title'),(67,134,'nextclassid'),(68,134,'clicked'),(69,136,'title'),(70,137,'title'),(71,136,'game'),(72,137,'nextclassid'),(73,136,'fromtype'),(74,137,'clicked'),(75,143,'clicked'),(76,144,'game'),(77,144,'fromtype'),(78,153,'game'),(79,153,'fromtype'),(80,158,'title'),(81,160,'clicked'),(82,170,'clicked'),(83,171,'title'),(84,171,'nextclassid'),(85,171,'clicked');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,2),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,1),(19,19,3),(20,20,3),(21,21,1),(22,22,1),(23,23,1),(24,24,1),(25,25,2),(26,26,2),(27,28,1),(28,29,4),(29,31,5),(30,32,1),(31,33,6),(32,34,6),(33,35,7),(34,36,1),(35,37,1),(36,38,1),(37,39,8),(38,40,7),(39,41,1),(40,42,1),(41,43,5),(42,44,1),(43,45,6),(44,46,11),(45,47,2),(46,47,4),(47,48,6),(48,49,13),(49,50,15),(50,51,16),(51,52,6),(52,53,13),(53,54,13),(54,55,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,6,2),(4,21,2),(5,22,2),(6,23,2),(7,24,2),(8,28,2),(9,31,1),(10,32,2),(11,34,3),(12,38,2),(13,38,4),(14,39,1),(15,43,5),(16,43,1),(17,44,2),(18,45,3),(19,52,3),(20,53,3),(21,54,3),(22,55,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,31,NULL,NULL,NULL,NULL,'application','x-nes-rom'),(2,33,'package',NULL,NULL,NULL,NULL,NULL),(3,34,'package',NULL,NULL,NULL,NULL,NULL),(4,43,'gamesnsschema','GamesnsSinaActivity',NULL,NULL,NULL,NULL),(5,43,'gamesnsschema','GamesnsTencentActivity',NULL,NULL,NULL,NULL),(6,45,'package',NULL,NULL,NULL,NULL,NULL),(7,48,'package',NULL,NULL,NULL,NULL,NULL),(8,49,'package',NULL,NULL,NULL,NULL,NULL),(9,52,'package',NULL,NULL,NULL,NULL,NULL),(10,53,'package',NULL,NULL,NULL,NULL,NULL),(11,54,'package',NULL,NULL,NULL,NULL,NULL),(12,55,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,10,'application','vnd.android.package-archive'),(2,11,'application','vnd.android.package-archive'),(3,20,'application','vnd.android.package-archive'),(4,22,'application','vnd.android.package-archive'),(5,27,'application','vnd.android.package-archive'),(6,32,'application','vnd.android.package-archive'),(7,65,'application','vnd.android.package-archive'),(8,66,'application','vnd.android.package-archive'),(9,68,'application','vnd.android.package-archive'),(10,95,'application','vnd.android.package-archive'),(11,104,'application','vnd.android.package-archive'),(12,129,'application','vnd.android.package-archive'),(13,130,'application','vnd.android.package-archive'),(14,133,'application','vnd.android.package-archive'),(15,156,'application','vnd.android.package-archive'),(16,161,'application','vnd.android.package-archive'),(17,168,'application','vnd.android.package-archive'),(18,169,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.android_isojdmnddd'),(2,2,'com.android_isojdmnddd'),(3,3,'(.*)'),(4,4,''),(5,5,''),(6,6,'(.*)'),(7,7,'com.android_isojdmnddd'),(8,8,'com.android_isojdmnddd'),(9,9,'com.android_isojdmnddd'),(10,12,'(.*)'),(11,13,''),(12,14,''),(13,15,'(.*)'),(14,16,'com.android_isojdmnddd'),(15,17,'com.android_isojdmnddd'),(16,18,'com.android_isojdmnddd'),(17,19,'com.ariasmyth1'),(18,21,'com.ariasmyth1'),(19,23,'com.ariasmyth1'),(20,24,'com.android_isojdmnddd'),(21,25,'(.*)'),(22,26,'com.android_osmyjxqhx0'),(23,28,'(.*)'),(24,29,'(.*)'),(25,30,''),(26,33,'com.ariasmyth1'),(27,31,'com.android_osmyjxqhx0'),(28,34,''),(29,35,'com.uafwhwwrfeb.ujomcqrfeesgn'),(30,36,'(.*)'),(31,37,'com.ariasmyth1'),(32,39,'com.uafwhwwrfeb.ujomcqrfeesgn'),(33,40,'com.ariasmyth1'),(34,41,'com.android_isojdmnddd'),(35,44,'com.android_isojdmnddd'),(36,46,'com.ariasmyth1'),(37,43,'com.uafwhwwrfeb.ujomcqrfeesgn'),(38,47,'com.android_isojdmnddd'),(39,48,'com.android_osmyjxqhx0'),(40,49,'com.uafwhwwrfeb.ujomcqrfeesgn'),(41,50,'com.android_isojdmnddd'),(42,53,'com.uafwhwwrfeb.ujomcqrfeesgn'),(43,52,'com.ariasmyth1'),(44,54,'com.android_isojdmnddd'),(45,56,'com.uafwhwwrfeb.ujomcqrfeesgn'),(46,57,'com.ariasmyth1'),(47,55,'com.android_osmyjxqhx0'),(48,59,'com.uafwhwwrfeb.ujomcqrfeesgn'),(49,62,'com.android_osmyjxqhx0'),(50,63,'com.uafwhwwrfeb.ujomcqrfeesgn'),(51,67,'com.android_osmyjxqhx0'),(52,72,'(.*)'),(53,73,'com.android_isojdmnddd'),(54,74,'(.*)'),(55,76,'com.ariasmyth1'),(56,75,''),(57,77,'(.*)'),(58,78,'com.android_isojdmnddd'),(59,79,''),(60,81,'(.*)'),(61,82,'com.uafwhwwrfeb.ujomcqrfeesgn'),(62,80,'com.ariasmyth1'),(63,84,'(.*)'),(64,83,'com.android_osmyjxqhx0'),(65,86,'(.*)'),(66,85,'com.ariasmyth1'),(67,87,'com.android_osmyjxqhx0'),(68,90,'com.android_osmyjxqhx0'),(69,88,'com.android_isojdmnddd'),(70,92,'com.ariasmyth1'),(71,93,'com.android_osmyjxqhx0'),(72,96,'com.ariasmyth1'),(73,97,'com.ariasmyth1'),(74,98,'com.android_osmyjxqhx0'),(75,99,'com.ariasmyth1'),(76,100,'com.android_osmyjxqhx0'),(77,101,'com.ariasmyth1'),(78,103,'com.ariasmyth1'),(79,105,'com.ariasmyth1'),(80,106,'(.*)'),(81,107,'com.android_osmyjxqhx0'),(82,108,''),(83,109,''),(84,110,'com.android_osmyjxqhx0'),(85,111,'(.*)'),(86,113,'com.ariasmyth1'),(87,112,'com.android_osmyjxqhx0'),(88,114,'com.ariasmyth1'),(89,115,'com.android_osmyjxqhx0'),(90,117,'com.ariasmyth1'),(91,116,'(.*)'),(92,118,'(.*)'),(93,119,'(.*)'),(94,121,'com.android_osmyjxqhx0'),(95,120,'(.*)'),(96,122,'com.ariasmyth1'),(97,123,'com.android_osmyjxqhx0'),(98,124,'com.ariasmyth1'),(99,125,'com.android_osmyjxqhx0'),(100,126,'com.android_osmyjxqhx0'),(101,128,'com.android_osmyjxqhx0'),(102,131,'com.android_osmyjxqhx0'),(103,132,'com.android_osmyjxqhx0'),(104,134,'com.ariasmyth1'),(105,136,'com.android_osmyjxqhx0'),(106,137,'com.ariasmyth1'),(107,138,'com.android_osmyjxqhx0'),(108,139,'com.ariasmyth1'),(109,141,'com.ariasmyth1'),(110,140,'NULL-CONSTANT'),(111,142,'NULL-CONSTANT'),(112,143,'com.ariasmyth1'),(113,145,'com.ariasmyth1'),(114,144,'com.android_osmyjxqhx0'),(115,146,'NULL-CONSTANT'),(116,147,'com.android_osmyjxqhx0'),(117,148,'NULL-CONSTANT'),(118,149,'com.android_osmyjxqhx0'),(119,150,'com.ariasmyth1'),(120,151,'com.android_osmyjxqhx0'),(121,152,'com.ariasmyth1'),(122,153,'com.android_osmyjxqhx0'),(123,154,'com.ariasmyth1'),(124,157,'com.android_osmyjxqhx0'),(125,158,'com.ariasmyth1'),(126,159,'com.android_osmyjxqhx0'),(127,160,'com.ariasmyth1'),(128,162,'com.ariasmyth1'),(129,163,'com.android_osmyjxqhx0'),(130,164,'com.ariasmyth1'),(131,165,'com.android_osmyjxqhx0'),(132,166,'com.android_osmyjxqhx0'),(133,167,'com.android_osmyjxqhx0'),(134,170,'com.android_osmyjxqhx0'),(135,171,'com.android_osmyjxqhx0');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,4,0),(4,8,0),(5,9,0),(6,15,0),(7,17,0),(8,18,0),(9,19,0),(10,20,0),(11,21,0),(12,22,0),(13,23,0),(14,24,0),(15,25,0),(16,26,0),(17,27,0),(18,29,0),(19,30,0),(20,31,0),(21,32,0),(22,33,0),(23,35,0),(24,37,0),(25,38,0),(26,39,0),(27,40,0),(28,42,0),(29,48,0),(30,49,0),(31,50,0),(32,71,0),(33,73,0),(34,20,0),(35,87,0),(36,92,0),(37,93,0),(38,95,0),(39,95,0),(40,95,0),(41,96,0),(42,97,0),(43,102,0),(44,109,0),(45,39,0),(46,113,0),(47,114,0),(48,115,0),(49,116,0),(50,117,0),(51,118,0),(52,38,0),(53,39,0),(54,38,0),(55,20,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,3,1,0),(6,3,1,0),(7,4,0,0),(8,5,0,0),(9,6,0,0),(10,7,1,0),(11,7,1,0),(12,8,1,0),(13,8,1,0),(14,8,1,0),(15,8,1,0),(16,9,0,0),(17,10,0,0),(18,12,0,0),(19,11,0,0),(20,13,1,0),(21,11,0,0),(22,13,1,0),(23,14,0,0),(24,16,0,0),(25,17,1,0),(26,18,0,0),(27,19,1,0),(28,17,1,0),(29,20,1,0),(30,20,1,0),(31,21,0,0),(32,22,1,0),(33,23,0,0),(34,20,1,0),(35,25,0,0),(36,20,1,0),(37,24,0,0),(38,26,1,0),(39,27,0,0),(40,29,0,0),(41,28,0,0),(42,30,1,0),(43,31,0,0),(44,32,0,0),(45,30,1,0),(46,33,0,0),(47,34,0,0),(48,35,0,0),(49,36,0,0),(50,34,0,0),(51,37,1,0),(52,38,0,0),(53,39,0,0),(54,40,0,0),(55,41,0,0),(56,42,0,0),(57,43,0,0),(58,44,1,0),(59,45,0,0),(60,46,1,0),(61,44,1,0),(62,47,0,0),(63,48,0,0),(64,46,1,0),(65,49,1,0),(66,49,1,0),(67,51,0,0),(68,50,1,0),(69,52,1,0),(70,53,1,0),(71,54,1,0),(72,55,1,0),(73,57,0,0),(74,56,1,0),(75,55,1,0),(76,58,0,0),(77,56,1,0),(78,59,0,0),(79,55,1,0),(80,60,0,0),(81,55,1,0),(82,61,0,0),(83,62,0,0),(84,63,1,0),(85,64,0,0),(86,63,1,0),(87,65,0,0),(88,66,0,0),(89,67,1,0),(90,68,0,0),(91,69,1,0),(92,70,0,0),(93,71,0,0),(94,72,1,0),(95,73,1,0),(96,74,0,0),(97,74,0,0),(98,75,0,0),(99,76,0,0),(100,77,0,0),(101,78,0,0),(102,79,1,0),(103,80,0,0),(104,81,1,0),(105,82,0,0),(106,83,1,0),(107,84,0,0),(108,83,1,0),(109,83,1,0),(110,85,0,0),(111,83,1,0),(112,86,0,0),(113,87,0,0),(114,88,0,0),(115,89,0,0),(116,90,1,0),(117,91,0,0),(118,90,1,0),(119,92,1,0),(120,92,1,0),(121,93,0,0),(122,94,0,0),(123,95,0,0),(124,96,0,0),(125,97,0,0),(126,97,0,0),(127,98,1,0),(128,99,0,0),(129,100,1,0),(130,100,1,0),(131,101,0,0),(132,102,0,0),(133,103,1,0),(134,104,0,0),(135,105,1,0),(136,106,0,0),(137,107,0,0),(138,108,0,0),(139,109,0,0),(140,110,1,0),(141,111,0,0),(142,110,1,0),(143,112,0,0),(144,113,0,0),(145,114,0,0),(146,115,1,0),(147,116,0,0),(148,115,1,0),(149,117,0,0),(150,118,0,0),(151,117,0,0),(152,118,0,0),(153,119,0,0),(154,120,0,0),(155,121,1,0),(156,122,1,0),(157,123,0,0),(158,124,0,0),(159,125,0,0),(160,126,0,0),(161,127,1,0),(162,128,0,0),(163,129,0,0),(164,130,0,0),(165,131,0,0),(166,131,0,0),(167,132,0,0),(168,133,1,0),(169,133,1,0),(170,134,0,0),(171,135,0,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.ggnes.chipndale.ppy_cache');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_CACHE_FILESYSTEM'),(15,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(18,'android.permission.ACCESS_WIFI_STATE'),(22,'android.permission.CAMERA'),(25,'android.permission.CHANGE_CONFIGURATION'),(23,'android.permission.CHANGE_WIFI_STATE'),(8,'android.permission.DELETE_CACHE_FILES'),(21,'android.permission.GET_ACCOUNTS'),(14,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(19,'android.permission.RECEIVE_SMS'),(11,'android.permission.SET_WALLPAPER'),(13,'android.permission.SYSTEM_ALERT_WINDOW'),(24,'android.permission.WAKE_LOCK'),(20,'android.permission.WRITE_APN_SETTINGS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(17,'android.permission.WRITE_SMS'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(10,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
INSERT INTO `Providers` VALUES (1,74,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'file://',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'',NULL,NULL,NULL),(14,NULL,NULL,'',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://',NULL,NULL,NULL),(22,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'file://',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,2,2),(13,2,3),(14,4,1),(15,2,4),(16,4,2),(17,2,5),(18,4,3),(19,2,6),(20,4,4),(21,2,7),(22,4,5),(23,2,8),(24,4,6),(25,2,9),(26,4,7),(27,2,10),(28,4,8),(29,2,11),(30,4,9),(31,4,10),(32,4,11),(33,5,1),(34,5,2),(35,5,5),(36,5,6),(37,5,9),(38,5,13),(39,5,14),(40,5,15),(41,6,17),(42,6,16),(43,6,1),(44,6,19),(45,6,18),(46,6,5),(47,6,6),(48,6,9),(49,7,1),(50,7,2),(51,7,3),(52,7,5),(53,7,6),(54,7,9),(55,7,10),(56,7,14),(57,7,18),(58,7,21),(59,7,20),(60,7,23),(61,7,22),(62,7,25),(63,7,24);
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

-- Dump completed on 2015-10-09  0:39:41
