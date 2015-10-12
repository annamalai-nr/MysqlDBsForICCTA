-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_425
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (20,'.ImageTestActivity'),(19,'.Myhall'),(28,'.UQHQX6'),(35,'.UQHQX7'),(25,'.Web'),(14,'.sMHkureeu6'),(32,'.sMHkureeu7'),(4,'android.intent.action.BOOT_COMPLETED'),(7,'android.intent.action.CheckinHub'),(22,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.PACKAGE_REMOVED'),(29,'android.intent.action.SCREEN_OFF'),(6,'android.intent.action.SEARCH'),(5,'android.intent.action.USER_PRESENT'),(2,'android.intent.action.VIEW'),(12,'android.net.conn.CONNECTIVITY_CHANGE'),(13,'android.provider.Telephony.SMS_RECEIVED'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(11,'com.android.vending.INSTALL_REFERRER'),(24,'com.android_oschmflm.ImageTestActivity'),(23,'com.android_oschmflm.UQHQX1'),(27,'com.android_oschmflm.UQHQX6'),(33,'com.android_oschmflm.UQHQX7'),(21,'com.android_osfqxnrxz.ImageTestActivity'),(17,'com.android_osfqxnrxz.sMHkureeu1'),(15,'com.android_osfqxnrxz.sMHkureeu6'),(34,'com.android_osfqxnrxz.sMHkureeu7'),(8,'com.gamesns.GamesnsService'),(16,'com.m_mnfxqh.GameBootReceiver'),(31,'com.m_mnfxqh.ImageTestActivity'),(18,'com.m_mnfxqh.Myhall'),(26,'com.m_mnfxqh.Web'),(30,'com.rqsoncbi.bjoa.ulsvt.BootReceiver');
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
INSERT INTO `Applications` VALUES (1,'com.rgupfmssjimrnwhh.owkshtketp',10021),(2,'com.android_osfqxnrxz',10022),(3,'com.m_mnfxqh',10020),(4,'com.android_oschmflm',10025),(5,'com.rqsoncbi.bjoa.ulsvt',10024),(6,'com.gamesns',151),(7,'pstjo.ebrimspubmea_pamw',10023);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(6,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.batteryacidgames.streetball.StreetballActivity'),(2,1,'com.uQiWUlIS.AkfUcwshMQDdQ'),(3,1,'com.uQiWUlIS.vEphGedQWhKRkQ'),(4,2,'com.android_osfqxnrxz.sMHkureeu7'),(5,2,'com.android_osfqxnrxz.sMHkureeu6'),(6,2,'com.android_osfqxnrxz.sMHkureeu13'),(7,2,'com.android_osfqxnrxz.sMHkureeu3'),(8,2,'com.android_osfqxnrxz.sMHkureeu9'),(9,3,'com.m_mnfxqh.Myhall'),(10,2,'com.android_osfqxnrxz.sMHkureeu10'),(11,3,'com.m_mnfxqh.Web'),(12,3,'com.m_mnfxqh.HomeActivity'),(13,2,'com.android_osfqxnrxz.sMHkureeu11'),(14,3,'com.m_mnfxqh.SortActivity1'),(15,3,'com.m_mnfxqh.SortActivity2'),(16,2,'com.android_osfqxnrxz.sMHkureeu4'),(17,3,'com.m_mnfxqh.SearchActivity'),(18,4,'com.android_oschmflm.UQHQX7'),(19,2,'com.android_osfqxnrxz.sMHkureeu8'),(20,4,'com.android_oschmflm.UQHQX6'),(21,3,'com.m_mnfxqh.ManagerActivity'),(22,4,'com.android_oschmflm.UQHQX13'),(23,2,'com.android_osfqxnrxz.sMHkureeu5'),(24,4,'com.android_oschmflm.UQHQX3'),(25,3,'com.m_mnfxqh.GameInfo'),(26,2,'com.android_osfqxnrxz.sMHkureeu12'),(27,4,'com.android_oschmflm.UQHQX9'),(28,3,'com.m_mnfxqh.TableClass'),(29,4,'com.android_oschmflm.UQHQX10'),(30,2,'com.android_osfqxnrxz.DevelopmentSettings'),(31,3,'com.m_mnfxqh.GameAlertDialog'),(32,4,'com.android_oschmflm.UQHQX11'),(33,2,'com.android_osfqxnrxz.image.ImageTestActivity'),(34,3,'com.m_mnfxqh.DevelopmentSettings'),(35,4,'com.android_oschmflm.UQHQX4'),(36,3,'com.m_mnfxqh.image.ImageTestActivity'),(37,2,'com.android_osfqxnrxz.image.ADactivity'),(38,4,'com.android_oschmflm.UQHQX8'),(39,2,'com.android_osfqxnrxz.sMHkureeu2'),(40,3,'com.m_mnfxqh.image.ADactivity'),(41,4,'com.android_oschmflm.UQHQX5'),(42,3,'com.m_mnfxqh.GameService'),(43,2,'com.android_osfqxnrxz.sMHkureeu1'),(44,4,'com.android_oschmflm.UQHQX12'),(45,3,'com.m_mnfxqh.GameBootReceiver'),(46,4,'com.android_oschmflm.DevelopmentSettings'),(47,4,'com.android_oschmflm.image.ImageTestActivity'),(48,4,'com.android_oschmflm.image.ADactivity'),(49,4,'com.android_oschmflm.image.ShowPopWeb'),(50,4,'com.android_oschmflm.UQHQX2'),(51,4,'com.android_oschmflm.UQHQX1'),(52,5,'com.rqsoncbi.bjoa.ulsvt.Splash'),(53,5,'com.rqsoncbi.bjoa.ulsvt.AgileBuddyActivity'),(54,5,'com.rqsoncbi.bjoa.ulsvt.Prefs'),(55,5,'com.rqsoncbi.bjoa.ulsvt.TipsActivity'),(56,5,'com.scoreloop.android.coreui.HighscoresActivity'),(57,5,'com.scoreloop.android.coreui.ProfileActivity'),(58,5,'com.rqsoncbi.bjoa.ulsvt.GameoverActivity'),(59,5,'com.pAfoifOMn.PGlvKJiwGWPK'),(60,5,'com.pAfoifOMn.NRorLrbWGUsQQpo'),(61,5,'com.pAfoifOMn.MyAppInfo'),(62,5,'com.pAfoifOMn.WalmUAkfNjmTKdg'),(63,5,'com.pAfoifOMn.AKUjSKLQKFdNN'),(64,5,'com.pAfoifOMn.MyAppAlertDialog'),(65,5,'com.pAfoifOMn.kiNrwKavdGufS'),(66,5,'com.pAfoifOMn.MyAppService'),(67,5,'com.pAfoifOMn.BootReceiverService'),(68,6,'com.gamesns.activity.BackupAppActivity'),(69,6,'com.gamesns.activity.DiscussionFeed'),(70,6,'com.gamesns.activity.DiscussionForm'),(71,6,'com.gamesns.activity.AddFriends'),(72,6,'com.gamesns.activity.FriendSearch'),(73,6,'com.gamesns.activity.BasicFeed'),(74,6,'com.gamesns.activity.AddFriendsOptions'),(75,6,'com.gamesns.activity.LoginForm'),(76,6,'com.gamesns.activity.RegisterForm'),(77,6,'com.gamesns.activity.SimpleGallery'),(78,6,'com.gamesns.activity.CheckinForm'),(79,6,'com.gamesns.activity.LoginSignupSplash'),(80,6,'com.gamesns.activity.DiscoverTab'),(81,6,'com.gamesns.activity.DiscoverInstructions'),(82,6,'com.gamesns.activity.GameDetails'),(83,6,'com.gamesns.activity.GameTab'),(84,6,'com.gamesns.activity.FriendsTab'),(85,6,'com.gamesns.activity.YouTab'),(86,6,'com.gamesns.activity.YouTabNew'),(87,6,'com.gamesns.activity.FriendDetails'),(88,6,'com.gamesns.activity.CheckinHub'),(89,6,'com.gamesns.GameList'),(90,6,'com.gamesns.activity.ChatActivity'),(91,6,'com.gamesns.activity.MediaActivity'),(92,6,'com.gamesns.activity.Web'),(93,6,'com.gamesns.activity.WebMediaPlayer'),(94,6,'com.gamesns.activity.UpdateActivity'),(95,6,'com.gamesns.activity.Share'),(96,6,'com.gamesns.activity.AppTrafficActivity'),(97,6,'com.gamesns.activity.VideoDetail'),(98,6,'com.gamesns.activity.GameDetailNewActivity'),(99,6,'com.gamesns.activity.ModifyUserData'),(100,6,'com.gamesns.activity.HomeActivity'),(101,6,'com.gamesns.activity.DiscussionDetail'),(102,6,'com.gamesns.activity.DeskTabActivity'),(103,6,'com.gamesns.activity.GameOnLineList'),(104,6,'com.gamesns.activity.AllGame'),(105,6,'com.gamesns.activity.GameRecommend'),(106,6,'com.gamesns.activity.ManagerGame'),(107,6,'com.gamesns.GamesnsService'),(108,6,'com.gamesns.receiver.StartupIntentReceiver'),(109,6,'com.gamesns.receiver.PackageAddedReceiver'),(110,3,'cs'),(111,6,'com.gamesns.receiver.PackageRemovedReceiver'),(112,6,'com.gamesns.receiver.ReferrerReceiver'),(113,6,'com.gamesns.receiver.NetStateReceiver'),(114,6,'com.gamesns.receiver.SMSReceiver'),(115,3,'c'),(116,2,'aj'),(117,4,'an'),(118,4,'ci'),(119,4,'s'),(120,3,'ca'),(121,2,'l'),(122,4,'cj'),(123,2,'an'),(124,3,'ct'),(125,3,'f'),(126,2,'cs'),(127,2,'dh'),(128,5,'com.pAfoifOMn.ac'),(129,3,'ch'),(130,3,'bh'),(131,4,'ca'),(132,3,'bt'),(133,5,'com.pAfoifOMn.y'),(134,3,'bk'),(135,5,'com.pAfoifOMn.be'),(136,3,'cd'),(137,5,'com.pAfoifOMn.af'),(138,2,'ao'),(139,2,'df'),(140,5,'com.pAfoifOMn.bp'),(141,4,'df'),(142,2,'cj'),(143,5,'com.pAfoifOMn.z'),(144,4,'ac'),(145,3,'an'),(146,2,'dy'),(147,5,'com.pAfoifOMn.ai'),(148,2,'ch'),(149,5,'com.pAfoifOMn.bf'),(150,4,'cr'),(151,4,'am'),(152,4,'ab'),(153,7,'pstjo.ebrimspubmea_pamw.main'),(154,7,'com.GUvJEN.OnjJGwiIhldTF'),(155,7,'com.waps.OffersWebView'),(156,7,'com.GUvJEN.wBLMIgblujMg');
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,21,'package_name'),(2,9,'service_channel'),(3,21,'app_name'),(4,36,'service_channel'),(5,21,'total'),(6,16,'completed'),(7,24,'status'),(8,21,'filepath'),(9,15,'nextclassid'),(10,16,'package_name'),(11,42,'service_channel'),(12,10,'nextclassid'),(13,32,'package_name'),(14,26,'url'),(15,21,'soft_id'),(16,16,'url'),(17,16,'icon'),(18,19,'title'),(19,17,'package_name'),(20,38,'title'),(21,38,'game'),(22,35,'soft_id'),(23,19,'filepath'),(24,44,'version_code'),(25,16,'total'),(26,16,'soft_id'),(27,35,'status'),(28,35,'package_name'),(29,33,'service_channel'),(30,16,'app_name'),(31,35,'url'),(32,35,'app_name'),(33,50,'service_channel'),(34,47,'service_channel'),(35,44,'url'),(36,31,'version_code'),(37,35,'icon'),(38,28,'package_name'),(39,24,'from_table'),(40,10,'package_name'),(41,21,'icon'),(42,32,'apk_url'),(43,18,'nextclassid'),(44,44,'btn_txt'),(45,44,'apk_url'),(46,61,'from_alert'),(47,59,'soft_id'),(48,65,'title'),(49,22,'isDirectFromTable'),(50,64,'title'),(51,38,'fromtype'),(52,35,'filepath'),(53,49,'poptitle'),(54,11,'service_channel'),(55,21,'url'),(56,24,'game'),(57,19,'status'),(58,20,'service_channel'),(59,15,'package_name'),(60,10,'status'),(61,4,'nextclassid'),(62,19,'fromtype'),(63,64,'apk_url'),(64,28,'nextclassid'),(65,21,'completed'),(66,17,'status'),(67,66,'NEW_APP_ID'),(68,35,'total'),(69,22,'from'),(70,61,'from_table'),(71,64,'fromtable'),(72,64,'package_name'),(73,53,'SENSOR_MODE'),(74,13,'status'),(75,24,'title'),(76,16,'filepath'),(77,32,'version_code'),(78,61,'fromtype'),(79,59,'NEW_APP_ID'),(80,60,'NEW_APP_ID'),(81,31,'package_name'),(82,61,'title'),(83,64,'version_code'),(84,13,'package_name'),(85,65,'packagename'),(86,58,'highScore'),(87,17,'version_code'),(88,15,'status'),(89,31,'status'),(90,26,'package_name'),(91,44,'fromtable'),(92,9,'nextclassid'),(93,26,'fromtable'),(94,6,'isDirectFromTable'),(95,63,'from'),(96,32,'btn_txt'),(97,26,'title'),(98,26,'content'),(99,32,'content'),(100,32,'title'),(101,21,'status'),(102,65,'apkurl'),(103,19,'game'),(104,60,'popurl'),(105,26,'version_code'),(106,61,'status'),(107,19,'from_table'),(108,65,'content'),(109,35,'completed'),(110,38,'from_alert'),(111,5,'service_channel'),(112,44,'title'),(113,44,'package_name'),(114,24,'fromtype'),(115,16,'status'),(116,6,'from'),(117,26,'apk_url'),(118,39,'service_channel'),(119,4,'service_channel'),(120,64,'content'),(121,24,'filepath'),(122,44,'content'),(123,64,'url'),(124,60,'poptitle'),(125,64,'btn_txt'),(126,61,'filepath'),(127,38,'filepath'),(128,19,'from_alert'),(129,18,'service_channel'),(130,26,'btn_txt'),(131,63,'isDirectFromTable'),(132,38,'status'),(133,59,'version_code'),(134,61,'game'),(135,38,'from_table'),(136,32,'url'),(137,24,'from_alert'),(138,63,'package_name'),(139,61,'package_name'),(140,58,'curScore'),(141,13,'version_code'),(142,28,'status'),(143,49,'popurl');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,25,'a',1,NULL,NULL),(25,24,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,29,'a',1,NULL,NULL),(29,28,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,32,'a',1,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'s',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'s',1,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',1,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',1,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,63,'a',1,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'s',1,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',1,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',1,NULL,NULL),(86,86,'a',1,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',1,NULL,NULL),(89,89,'a',1,NULL,NULL),(90,90,'a',1,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',1,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'a',1,NULL,NULL),(101,101,'a',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,107,'s',1,NULL,NULL),(108,108,'r',1,NULL,NULL),(109,109,'r',1,NULL,NULL),(110,111,'r',1,NULL,NULL),(111,112,'r',1,NULL,NULL),(112,113,'r',1,NULL,NULL),(113,114,'r',1,NULL,NULL),(114,137,'r',1,NULL,NULL),(115,147,'r',1,NULL,NULL),(116,153,'a',1,NULL,NULL),(117,154,'a',0,NULL,NULL),(118,155,'a',0,NULL,NULL),(119,156,'a',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,29),(4,3,32),(5,4,26),(6,5,15),(7,6,5),(8,7,15),(9,8,45),(10,9,7),(11,10,36),(12,11,23),(13,12,9),(14,13,18),(15,14,15),(16,15,43),(17,16,20),(18,17,9),(19,18,37),(20,19,33),(21,20,47),(22,21,24),(23,22,25),(24,23,38),(25,24,23),(26,24,26),(27,24,6),(28,25,18),(29,26,5),(30,27,40),(31,28,43),(32,29,44),(33,30,45),(34,31,43),(35,32,32),(36,33,44),(37,34,7),(38,35,33),(39,36,12),(40,37,18),(41,38,35),(42,39,4),(43,40,21),(44,41,7),(45,42,44),(46,42,22),(47,42,41),(48,43,15),(49,44,10),(50,45,35),(51,46,32),(52,47,19),(53,48,21),(54,49,65),(55,50,4),(56,51,25),(57,52,65),(58,53,29),(59,54,19),(60,55,18),(61,56,61),(62,57,38),(63,58,40),(64,59,25),(65,60,9),(66,61,28),(67,62,23),(68,62,6),(69,62,26),(70,63,32),(71,64,64),(72,65,51),(73,66,19),(74,67,11),(75,68,52),(76,69,41),(77,70,62),(78,71,29),(79,72,41),(80,72,44),(81,72,22),(82,73,26),(83,74,61),(84,75,24),(85,76,31),(86,77,55),(87,78,26),(88,79,25),(89,80,36),(90,81,61),(91,82,37),(92,83,51),(93,84,24),(94,85,10),(95,86,47),(96,87,17),(97,88,4),(98,89,9),(99,90,18),(100,91,10),(101,92,61),(102,93,11),(103,94,47),(104,95,7),(105,96,47),(106,97,4),(107,98,9),(108,99,20),(109,100,7),(110,101,59),(111,102,12),(112,103,7),(113,104,28),(114,105,61),(115,106,41),(116,107,24),(117,108,67),(118,109,10),(119,110,40),(120,111,48),(121,112,15),(122,113,62),(123,113,63),(124,113,64),(125,114,4),(126,115,48),(127,116,21),(128,117,67),(129,118,5),(130,119,24),(131,120,59),(132,121,38),(133,122,12),(134,123,13),(135,124,56),(136,125,12),(137,126,10),(138,128,28),(139,127,61),(140,129,11),(141,130,16),(142,131,25),(143,132,9),(144,133,4),(145,134,44),(146,135,45),(147,136,33),(148,137,59),(149,138,9),(150,139,28),(151,140,37),(152,141,36),(153,142,59),(154,143,16),(155,144,38),(156,145,57),(157,146,20),(158,147,32),(159,148,19),(160,149,59),(161,150,19),(162,151,48),(163,152,58),(164,153,15),(165,154,4),(166,155,18),(167,156,64),(168,157,17),(169,158,61),(170,159,10),(171,160,12),(172,161,44),(173,162,29),(174,162,32),(175,163,26),(176,164,35),(177,165,12),(178,166,18),(179,167,16),(180,168,62),(181,168,63),(182,168,64),(183,169,13),(184,170,28),(185,171,23),(186,172,38),(187,173,61),(188,174,51),(189,175,67),(190,176,25),(191,177,61),(192,178,31),(193,179,28),(194,180,60),(195,181,62),(196,182,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.uQiWUlIS.AkfUcwshMQDdQ: void a(java.lang.String)>',10,'a',NULL),(2,2,'<com.uQiWUlIS.AkfUcwshMQDdQ: void a()>',3,'a',NULL),(3,110,'<cs: void a(int,boolean)>',57,'a',NULL),(4,26,'<com.android_osfqxnrxz.sMHkureeu12: void onClick(android.view.View)>',75,'a',NULL),(5,115,'<c: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(6,5,'<com.android_osfqxnrxz.sMHkureeu6: void onCreate(android.os.Bundle)>',21,'s',NULL),(7,115,'<c: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(8,45,'<com.m_mnfxqh.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(9,116,'<aj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(10,36,'<com.m_mnfxqh.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(11,23,'<com.android_osfqxnrxz.sMHkureeu5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(12,9,'<com.m_mnfxqh.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(13,117,'<an: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(14,15,'<com.m_mnfxqh.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(15,43,'<com.android_osfqxnrxz.sMHkureeu1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(16,118,'<ci: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(17,9,'<com.m_mnfxqh.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(18,37,'<com.android_osfqxnrxz.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(19,33,'<com.android_osfqxnrxz.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(20,119,'<s: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(21,120,'<ca: void onClick(android.view.View)>',239,'a',NULL),(22,24,'<com.android_oschmflm.UQHQX3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(23,38,'<com.android_oschmflm.UQHQX8: void onCreate(android.os.Bundle)>',25,'s',NULL),(24,6,'<com.android_osfqxnrxz.sMHkureeu13: void a(int,boolean)>',10,'s',NULL),(25,117,'<an: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(26,5,'<com.android_osfqxnrxz.sMHkureeu6: void onCreate(android.os.Bundle)>',25,'s',NULL),(27,40,'<com.m_mnfxqh.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(28,43,'<com.android_osfqxnrxz.sMHkureeu1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(29,44,'<com.android_oschmflm.UQHQX12: void onClick(android.view.View)>',75,'a',NULL),(30,45,'<com.m_mnfxqh.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(31,43,'<com.android_osfqxnrxz.sMHkureeu1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(32,31,'<com.m_mnfxqh.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(33,44,'<com.android_oschmflm.UQHQX12: void onClick(android.view.View)>',84,'a',NULL),(34,7,'<com.android_osfqxnrxz.sMHkureeu3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(35,121,'<l: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(36,12,'<com.m_mnfxqh.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(37,18,'<com.android_oschmflm.UQHQX7: void onCreate(android.os.Bundle)>',103,'s',NULL),(38,122,'<cj: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(39,123,'<an: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(40,124,'<ct: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(41,7,'<com.android_osfqxnrxz.sMHkureeu3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(42,22,'<com.android_oschmflm.UQHQX13: void a(int,boolean)>',10,'s',NULL),(43,125,'<f: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(44,126,'<cs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(45,122,'<cj: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(46,31,'<com.m_mnfxqh.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(47,19,'<com.android_osfqxnrxz.sMHkureeu8: void onCreate(android.os.Bundle)>',113,'a',NULL),(48,124,'<ct: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(49,65,'<com.pAfoifOMn.kiNrwKavdGufS: void onClick(android.view.View)>',26,'a',NULL),(50,123,'<an: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(51,24,'<com.android_oschmflm.UQHQX3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(52,65,'<com.pAfoifOMn.kiNrwKavdGufS: void onCreate(android.os.Bundle)>',13,'s',NULL),(53,28,'<com.m_mnfxqh.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(54,127,'<dh: void onClick(android.view.View)>',239,'a',NULL),(55,117,'<an: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(56,128,'<com.pAfoifOMn.ac: void onClick(android.view.View)>',182,'a',NULL),(57,38,'<com.android_oschmflm.UQHQX8: void onCreate(android.os.Bundle)>',113,'a',NULL),(58,129,'<ch: void onClick(android.view.View)>',6,'a',NULL),(59,24,'<com.android_oschmflm.UQHQX3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(60,130,'<bh: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(61,29,'<com.android_oschmflm.UQHQX10: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(62,6,'<com.android_osfqxnrxz.sMHkureeu13: void a(int,boolean)>',63,'a',NULL),(63,31,'<com.m_mnfxqh.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(64,64,'<com.pAfoifOMn.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(65,51,'<com.android_oschmflm.UQHQX1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(66,127,'<dh: void onClick(android.view.View)>',218,'a',NULL),(67,11,'<com.m_mnfxqh.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(68,52,'<com.rqsoncbi.bjoa.ulsvt.Splash: void onClick(android.view.View)>',19,'a',NULL),(69,41,'<com.android_oschmflm.UQHQX5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(70,62,'<com.pAfoifOMn.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(71,28,'<com.m_mnfxqh.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(72,22,'<com.android_oschmflm.UQHQX13: void a(int,boolean)>',63,'a',NULL),(73,26,'<com.android_osfqxnrxz.sMHkureeu12: void onClick(android.view.View)>',53,'a',NULL),(74,61,'<com.pAfoifOMn.MyAppInfo: void onCreate(android.os.Bundle)>',91,'s',NULL),(75,120,'<ca: void onClick(android.view.View)>',218,'a',NULL),(76,32,'<com.android_oschmflm.UQHQX11: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(77,55,'<com.rqsoncbi.bjoa.ulsvt.TipsActivity: void onClick(android.view.View)>',10,'a',NULL),(78,26,'<com.android_osfqxnrxz.sMHkureeu12: void onClick(android.view.View)>',84,'a',NULL),(79,131,'<ca: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(80,132,'<bt: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(81,133,'<com.pAfoifOMn.y: void onClick(android.view.View)>',197,'a',NULL),(82,37,'<com.android_osfqxnrxz.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(83,51,'<com.android_oschmflm.UQHQX1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(84,25,'<com.m_mnfxqh.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(85,126,'<cs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(86,47,'<com.android_oschmflm.image.ImageTestActivity: void onCreate(android.os.Bundle)>',52,'s',NULL),(87,17,'<com.m_mnfxqh.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(88,123,'<an: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(89,130,'<bh: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(90,117,'<an: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(91,10,'<com.android_osfqxnrxz.sMHkureeu10: void onCreate(android.os.Bundle)>',13,'s',NULL),(92,133,'<com.pAfoifOMn.y: void onClick(android.view.View)>',182,'a',NULL),(93,11,'<com.m_mnfxqh.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(94,47,'<com.android_oschmflm.image.ImageTestActivity: void b()>',9,'a',NULL),(95,116,'<aj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(96,47,'<com.android_oschmflm.image.ImageTestActivity: void onCreate(android.os.Bundle)>',56,'s',NULL),(97,4,'<com.android_osfqxnrxz.sMHkureeu7: void onCreate(android.os.Bundle)>',103,'s',NULL),(98,134,'<bk: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(99,20,'<com.android_oschmflm.UQHQX6: void onCreate(android.os.Bundle)>',21,'s',NULL),(100,7,'<com.android_osfqxnrxz.sMHkureeu3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(101,135,'<com.pAfoifOMn.be: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(102,136,'<cd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(103,116,'<aj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(104,29,'<com.android_oschmflm.UQHQX10: void onCreate(android.os.Bundle)>',13,'s',NULL),(105,61,'<com.pAfoifOMn.MyAppInfo: void onCreate(android.os.Bundle)>',41,'s',NULL),(106,41,'<com.android_oschmflm.UQHQX5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(107,25,'<com.m_mnfxqh.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(108,67,'<com.pAfoifOMn.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(109,126,'<cs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(110,40,'<com.m_mnfxqh.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(111,48,'<com.android_oschmflm.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(112,15,'<com.m_mnfxqh.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(113,63,'<com.pAfoifOMn.AKUjSKLQKFdNN: void a(int,boolean)>',10,'s',NULL),(114,138,'<ao: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(115,48,'<com.android_oschmflm.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(116,21,'<com.m_mnfxqh.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(117,67,'<com.pAfoifOMn.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(118,139,'<df: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(119,25,'<com.m_mnfxqh.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(120,140,'<com.pAfoifOMn.bp: void onClick(android.view.View)>',106,'a',NULL),(121,141,'<df: void onClick(android.view.View)>',218,'a',NULL),(122,136,'<cd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(123,13,'<com.android_osfqxnrxz.sMHkureeu11: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(124,56,'<com.scoreloop.android.coreui.HighscoresActivity: void showProfile()>',3,'a',NULL),(125,12,'<com.m_mnfxqh.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(126,142,'<cj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(127,143,'<com.pAfoifOMn.z: void onClick(android.view.View)>',200,'a',NULL),(128,144,'<ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(129,145,'<an: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(130,16,'<com.android_osfqxnrxz.sMHkureeu4: void onCreate(android.os.Bundle)>',50,'s',NULL),(131,131,'<ca: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(132,130,'<bh: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(133,123,'<an: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(134,44,'<com.android_oschmflm.UQHQX12: void onClick(android.view.View)>',66,'a',NULL),(135,45,'<com.m_mnfxqh.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(136,33,'<com.android_osfqxnrxz.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(137,59,'<com.pAfoifOMn.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',61,'s',NULL),(138,130,'<bh: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(139,144,'<ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(140,146,'<dy: void onClick(android.view.View)>',6,'a',NULL),(141,36,'<com.m_mnfxqh.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(142,59,'<com.pAfoifOMn.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',57,'s',NULL),(143,148,'<ch: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(144,38,'<com.android_oschmflm.UQHQX8: void onCreate(android.os.Bundle)>',108,'a',NULL),(145,57,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',4,'a',NULL),(146,20,'<com.android_oschmflm.UQHQX6: void onCreate(android.os.Bundle)>',25,'s',NULL),(147,31,'<com.m_mnfxqh.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(148,19,'<com.android_osfqxnrxz.sMHkureeu8: void onCreate(android.os.Bundle)>',25,'s',NULL),(149,149,'<com.pAfoifOMn.bf: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(150,19,'<com.android_osfqxnrxz.sMHkureeu8: void onCreate(android.os.Bundle)>',108,'a',NULL),(151,150,'<cr: void onClick(android.view.View)>',6,'a',NULL),(152,58,'<com.rqsoncbi.bjoa.ulsvt.GameoverActivity: void onClick(android.view.View)>',11,'a',NULL),(153,115,'<c: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(154,4,'<com.android_osfqxnrxz.sMHkureeu7: void onCreate(android.os.Bundle)>',98,'s',NULL),(155,18,'<com.android_oschmflm.UQHQX7: void onCreate(android.os.Bundle)>',98,'s',NULL),(156,64,'<com.pAfoifOMn.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(157,17,'<com.m_mnfxqh.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(158,143,'<com.pAfoifOMn.z: void onClick(android.view.View)>',185,'a',NULL),(159,10,'<com.android_osfqxnrxz.sMHkureeu10: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(160,136,'<cd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(161,44,'<com.android_oschmflm.UQHQX12: void onClick(android.view.View)>',53,'a',NULL),(162,110,'<cs: void a(int,boolean)>',10,'s',NULL),(163,26,'<com.android_osfqxnrxz.sMHkureeu12: void onClick(android.view.View)>',66,'a',NULL),(164,35,'<com.android_oschmflm.UQHQX4: void onCreate(android.os.Bundle)>',50,'s',NULL),(165,12,'<com.m_mnfxqh.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(166,151,'<am: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(167,148,'<ch: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(168,63,'<com.pAfoifOMn.AKUjSKLQKFdNN: void a(int,boolean)>',42,'a',NULL),(169,13,'<com.android_osfqxnrxz.sMHkureeu11: void onCreate(android.os.Bundle)>',14,'s',NULL),(170,152,'<ab: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(171,23,'<com.android_osfqxnrxz.sMHkureeu5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(172,141,'<df: void onClick(android.view.View)>',239,'a',NULL),(173,128,'<com.pAfoifOMn.ac: void onClick(android.view.View)>',197,'a',NULL),(174,51,'<com.android_oschmflm.UQHQX1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(175,67,'<com.pAfoifOMn.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(176,131,'<ca: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(177,61,'<com.pAfoifOMn.MyAppInfo: void onCreate(android.os.Bundle)>',10,'a',NULL),(178,32,'<com.android_oschmflm.UQHQX11: void onCreate(android.os.Bundle)>',14,'s',NULL),(179,144,'<ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(180,60,'<com.pAfoifOMn.NRorLrbWGUsQQpo: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(181,62,'<com.pAfoifOMn.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(182,52,'<com.rqsoncbi.bjoa.ulsvt.Splash: void onClick(android.view.View)>',6,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,1,2),(2,4,3),(3,5,2),(4,6,14),(5,8,15),(6,10,16),(7,12,1),(8,14,1),(9,17,17),(10,18,2),(11,19,2),(12,20,18),(13,21,19),(14,22,2),(15,23,20),(16,24,1),(17,25,2),(18,26,21),(19,27,1),(20,29,1),(21,31,1),(22,35,17),(23,36,3),(24,41,2),(25,42,2),(26,43,2),(27,46,1),(28,47,22),(29,48,1),(30,53,1),(31,54,1),(32,55,3),(33,57,22),(34,58,1),(35,62,1),(36,63,1),(37,65,1),(38,66,2),(39,67,1),(40,69,2),(41,71,1),(42,72,2),(43,73,1),(44,76,2),(45,80,2),(46,81,2),(47,83,2),(48,87,2),(49,93,2),(50,97,2),(51,99,2),(52,100,1),(53,102,23),(54,103,1),(55,106,1),(56,107,20),(57,109,1),(58,110,24),(59,115,2),(60,116,25),(61,118,2),(62,120,26),(63,121,2),(64,124,2),(65,125,2),(66,126,27),(67,129,28),(68,131,2),(69,134,1),(70,136,1),(71,137,2),(72,138,30),(73,139,2),(74,140,2),(75,143,2),(76,148,2),(77,150,2),(78,153,2),(79,157,2),(80,158,1),(81,160,1),(82,159,2),(83,163,1),(84,165,1),(85,167,2),(86,168,16),(87,169,2),(88,176,31),(89,177,1),(90,179,20),(91,181,1),(92,183,2),(93,185,2),(94,191,32),(95,192,33),(96,194,34),(97,196,35),(98,197,2),(99,199,2),(100,201,2),(101,203,2),(102,204,2),(103,206,2),(104,207,2),(105,209,2),(106,210,22),(107,211,1),(108,214,1),(109,216,1),(110,217,1),(111,218,1),(112,219,1),(113,220,1),(114,221,1),(115,222,1),(116,223,1),(117,224,1),(118,225,1),(119,226,23),(120,227,30),(121,228,2),(122,229,1),(123,231,1),(124,234,1),(125,235,1),(126,238,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,12,1),(2,14,3),(3,24,1),(4,27,3),(5,29,1),(6,31,3),(7,46,1),(8,48,3),(9,53,1),(10,54,3),(11,58,6),(12,62,1),(13,63,1),(14,65,3),(15,67,3),(16,71,1),(17,73,3),(18,100,1),(19,103,3),(20,106,1),(21,109,3),(22,134,1),(23,136,3),(24,158,1),(25,160,3),(26,163,1),(27,165,3),(28,177,1),(29,181,3),(30,211,1),(31,214,3),(32,216,1),(33,217,3),(34,218,1),(35,219,1),(36,220,3),(37,221,3),(38,222,1),(39,223,1),(40,224,3),(41,225,3),(42,229,1),(43,231,3),(44,234,1),(45,235,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/batteryacidgames/streetball/StreetballActivity'),(2,3,'com/m_mnfxqh/image/ImageTestActivity'),(3,6,'com/android_osfqxnrxz/sMHkureeu2'),(4,8,'com/android_osfqxnrxz/sMHkureeu2'),(5,7,'com/m_mnfxqh/GameInfo'),(6,10,'com/m_mnfxqh/GameService'),(7,9,'com/android_osfqxnrxz/sMHkureeu7'),(8,11,'com/m_mnfxqh/GameService'),(9,13,'com/m_mnfxqh/GameService'),(10,15,'com/android_oschmflm/UQHQX7'),(11,16,'com/m_mnfxqh/GameInfo'),(12,17,'com/android_osfqxnrxz/sMHkureeu2'),(13,20,'com/m_mnfxqh/GameService'),(14,21,'com/m_mnfxqh/GameService'),(15,23,'com/android_osfqxnrxz/sMHkureeu2'),(16,26,'com/android_osfqxnrxz/sMHkureeu2'),(17,28,'com/android_oschmflm/UQHQX2'),(18,30,'com/android_osfqxnrxz/sMHkureeu2'),(19,32,'com/android_oschmflm/UQHQX7'),(20,33,'com/android_osfqxnrxz/sMHkureeu2'),(21,34,'com/m_mnfxqh/GameInfo'),(22,35,'com/android_osfqxnrxz/sMHkureeu2'),(23,37,'com/m_mnfxqh/GameService'),(24,38,'com/android_osfqxnrxz/sMHkureeu2'),(25,39,'com/m_mnfxqh/GameInfo'),(26,40,'com/android_oschmflm/UQHQX12'),(27,44,'com/android_oschmflm/UQHQX2'),(28,45,'com/android_osfqxnrxz/sMHkureeu7'),(29,49,'com/android_osfqxnrxz/sMHkureeu7'),(30,50,'com/android_oschmflm/UQHQX2'),(31,51,'com/m_mnfxqh/Myhall'),(32,52,'com/android_osfqxnrxz/sMHkureeu8'),(33,56,'com/android_osfqxnrxz/sMHkureeu7'),(34,59,'com/android_osfqxnrxz/sMHkureeu7'),(35,60,'com/android_oschmflm/UQHQX7'),(36,61,'com/pAfoifOMn/MyAppService'),(37,64,'com/android_oschmflm/UQHQX7'),(38,68,'com/android_oschmflm/UQHQX7'),(39,70,'com/m_mnfxqh/image/ImageTestActivity'),(40,74,'com/android_oschmflm/UQHQX8'),(41,75,'com/m_mnfxqh/Myhall'),(42,78,'com/android_osfqxnrxz/image/ImageTestActivity'),(43,77,'com/android_oschmflm/UQHQX8'),(44,79,'com/m_mnfxqh/GameAlertDialog'),(45,82,'com/android_oschmflm/UQHQX2'),(46,84,'com/m_mnfxqh/GameService'),(47,85,'com/scoreloop/android/coreui/HighscoresActivity'),(48,86,'com/android_oschmflm/UQHQX8'),(49,88,'com/pAfoifOMn/MyAppInfo'),(50,89,'com/m_mnfxqh/GameInfo'),(51,90,'com/android_oschmflm/image/ImageTestActivity'),(52,92,'com/pAfoifOMn/MyAppService'),(53,91,'com/android_osfqxnrxz/sMHkureeu8'),(54,94,'com/android_oschmflm/UQHQX8'),(55,95,'com/rqsoncbi/bjoa/ulsvt/AgileBuddyActivity'),(56,96,'com/android_osfqxnrxz/sMHkureeu12'),(57,98,'com/android_oschmflm/UQHQX7'),(58,101,'com/android_osfqxnrxz/sMHkureeu8'),(59,102,'com/android_oschmflm/UQHQX2'),(60,104,'com/m_mnfxqh/Myhall'),(61,105,'com/android_osfqxnrxz/sMHkureeu7'),(62,107,'com/android_oschmflm/UQHQX2'),(63,108,'com/m_mnfxqh/GameInfo'),(64,110,'com/android_oschmflm/UQHQX2'),(65,111,'com/android_osfqxnrxz/sMHkureeu7'),(66,112,'com/m_mnfxqh/Myhall'),(67,113,'com/android_oschmflm/UQHQX7'),(68,114,'com/android_osfqxnrxz/sMHkureeu2'),(69,116,'com/m_mnfxqh/GameService'),(70,117,'com/android_oschmflm/image/ShowPopWeb'),(71,119,'com/android_osfqxnrxz/sMHkureeu8'),(72,120,'com/m_mnfxqh/GameService'),(73,122,'com/android_oschmflm/UQHQX2'),(74,123,'com/android_osfqxnrxz/sMHkureeu2'),(75,126,'com/android_oschmflm/UQHQX2'),(76,127,'com/android_osfqxnrxz/sMHkureeu8'),(77,128,'com/rqsoncbi/bjoa/ulsvt/Splash'),(78,129,'com/android_oschmflm/UQHQX2'),(79,130,'com/m_mnfxqh/Myhall'),(80,132,'com/android_oschmflm/UQHQX2'),(81,133,'com/pAfoifOMn/MyAppService'),(82,135,'com/m_mnfxqh/GameService'),(83,138,'com/pAfoifOMn/MyAppService'),(84,141,'com/m_mnfxqh/GameService'),(85,142,'com/pAfoifOMn/MyAppService'),(86,145,'com/m_mnfxqh/GameService'),(87,144,'com/android_oschmflm/UQHQX8'),(88,146,'com/pAfoifOMn/MyAppService'),(89,147,'com/m_mnfxqh/Myhall'),(90,149,'com/pAfoifOMn/NRorLrbWGUsQQpo'),(91,151,'com/m_mnfxqh/GameInfo'),(92,152,'com/android_osfqxnrxz/sMHkureeu8'),(93,154,'com/scoreloop/android/coreui/ProfileActivity'),(94,155,'com/m_mnfxqh/Myhall'),(95,156,'com/android_osfqxnrxz/sMHkureeu7'),(96,161,'com/android_osfqxnrxz/sMHkureeu2'),(97,162,'com/android_oschmflm/UQHQX8'),(98,164,'com/m_mnfxqh/Myhall'),(99,166,'com/android_osfqxnrxz/sMHkureeu7'),(100,168,'com/m_mnfxqh/GameService'),(101,170,'com/android_osfqxnrxz/sMHkureeu2'),(102,171,'com/pAfoifOMn/MyAppService'),(103,172,'com/m_mnfxqh/Myhall'),(104,174,'com/android_osfqxnrxz/image/ImageTestActivity'),(105,173,'com/android_oschmflm/UQHQX7'),(106,175,'com/pAfoifOMn/MyAppService'),(107,176,'com/m_mnfxqh/GameService'),(108,178,'com/android_oschmflm/UQHQX7'),(109,179,'com/m_mnfxqh/GameService'),(110,180,'com/scoreloop/android/coreui/HighscoresActivity'),(111,182,'com/android_oschmflm/UQHQX2'),(112,184,'com/android_osfqxnrxz/sMHkureeu2'),(113,186,'com/rqsoncbi/bjoa/ulsvt/Splash'),(114,187,'com/android_osfqxnrxz/sMHkureeu7'),(115,188,'com/android_oschmflm/image/ImageTestActivity'),(116,189,'com/rqsoncbi/bjoa/ulsvt/TipsActivity'),(117,191,'com/android_osfqxnrxz/sMHkureeu2'),(118,190,'com/m_mnfxqh/Myhall'),(119,192,'com/android_oschmflm/UQHQX2'),(120,193,'com/pAfoifOMn/MyAppInfo'),(121,194,'com/android_osfqxnrxz/sMHkureeu2'),(122,195,'com/m_mnfxqh/GameService'),(123,196,'com/android_oschmflm/UQHQX2'),(124,198,'com/android_osfqxnrxz/sMHkureeu8'),(125,200,'com/android_oschmflm/UQHQX8'),(126,202,'com/m_mnfxqh/GameService'),(127,205,'com/android_oschmflm/UQHQX2'),(128,208,'com/m_mnfxqh/GameInfo'),(129,212,'com/android_osfqxnrxz/sMHkureeu2'),(130,213,'com/android_oschmflm/UQHQX7'),(131,215,'com/android_osfqxnrxz/sMHkureeu8'),(132,226,'com/android_oschmflm/UQHQX2'),(133,227,'com/pAfoifOMn/MyAppService'),(134,230,'com/android_oschmflm/UQHQX2'),(135,233,'com/rqsoncbi/bjoa/ulsvt/Splash'),(136,232,'com/android_oschmflm/UQHQX8'),(137,237,'com/rqsoncbi/bjoa/ulsvt/Prefs'),(138,239,'com/rqsoncbi/bjoa/ulsvt/TipsActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,5,2),(3,18,3),(4,19,4),(5,22,5),(6,25,6),(7,41,7),(8,43,8),(9,42,9),(10,47,10),(11,57,11),(12,66,12),(13,69,13),(14,72,14),(15,76,15),(16,80,16),(17,81,17),(18,83,18),(19,87,19),(20,93,20),(21,97,21),(22,99,22),(23,115,23),(24,118,24),(25,121,25),(26,124,26),(27,125,27),(28,131,28),(29,137,29),(30,139,30),(31,140,31),(32,143,32),(33,148,33),(34,150,34),(35,153,35),(36,157,36),(37,159,37),(38,167,38),(39,169,39),(40,183,40),(41,185,41),(42,197,42),(43,199,43),(44,201,44),(45,204,45),(46,203,46),(47,206,47),(48,207,48),(49,209,49),(50,210,50),(51,228,51),(52,238,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,7,'title'),(2,7,'game'),(3,7,'fromtype'),(4,9,'title'),(5,9,'nextclassid'),(6,9,'clicked'),(7,15,'clicked'),(8,16,'title'),(9,16,'game'),(10,16,'fromtype'),(11,32,'clicked'),(12,34,'game'),(13,34,'fromtype'),(14,39,'id'),(15,39,'from_alert'),(16,40,'title'),(17,39,'detail_flag'),(18,40,'btn_txt'),(19,40,'need_adb_flag'),(20,40,'cont'),(21,40,'close_flag'),(22,45,'clicked'),(23,49,'nextclassid'),(24,49,'clicked'),(25,51,'title'),(26,51,'nextclassid'),(27,51,'clicked'),(28,52,'title'),(29,52,'game'),(30,52,'fromtype'),(31,59,'clicked'),(32,60,'nextclassid'),(33,60,'clicked'),(34,64,'clicked'),(35,74,'game'),(36,74,'fromtype'),(37,75,'clicked'),(38,77,'title'),(39,77,'game'),(40,79,'title'),(41,77,'fromtype'),(42,79,'btn_txt'),(43,79,'need_adb_flag'),(44,79,'cont'),(45,79,'close_flag'),(46,86,'game'),(47,86,'fromtype'),(48,88,'game'),(49,88,'fromtype'),(50,89,'game'),(51,89,'fromtype'),(52,91,'id'),(53,91,'from_alert'),(54,91,'detail_flag'),(55,94,'game'),(56,94,'fromtype'),(57,95,'SENSOR_MODE'),(58,96,'title'),(59,96,'btn_txt'),(60,96,'need_adb_flag'),(61,96,'cont'),(62,96,'close_flag'),(63,98,'title'),(64,98,'nextclassid'),(65,98,'clicked'),(66,101,'game'),(67,101,'fromtype'),(68,105,'title'),(69,105,'nextclassid'),(70,105,'clicked'),(71,108,'game'),(72,108,'fromtype'),(73,111,'clicked'),(74,112,'clicked'),(75,113,'clicked'),(76,117,'popurl'),(77,119,'title'),(78,117,'poptitle'),(79,119,'game'),(80,119,'fromtype'),(81,127,'game'),(82,127,'fromtype'),(83,130,'title'),(84,130,'nextclassid'),(85,130,'clicked'),(86,144,'game'),(87,144,'fromtype'),(88,149,'popurl'),(89,149,'poptitle'),(90,151,'title'),(91,151,'game'),(92,152,'game'),(93,151,'fromtype'),(94,152,'fromtype'),(95,155,'nextclassid'),(96,155,'clicked'),(97,156,'title'),(98,156,'nextclassid'),(99,156,'clicked'),(100,162,'title'),(101,162,'game'),(102,162,'fromtype'),(103,164,'clicked'),(104,166,'clicked'),(105,172,'clicked'),(106,173,'title'),(107,173,'nextclassid'),(108,173,'clicked'),(109,190,'title'),(110,190,'nextclassid'),(111,190,'clicked'),(112,193,'id'),(113,193,'from_alert'),(114,193,'detail_flag'),(115,198,'title'),(116,198,'game'),(117,198,'fromtype'),(118,200,'id'),(119,200,'from_alert'),(120,200,'detail_flag'),(121,208,'game'),(122,208,'fromtype'),(123,213,'title'),(124,213,'nextclassid'),(125,213,'clicked'),(126,215,'game'),(127,215,'fromtype'),(128,232,'title'),(129,232,'game'),(130,232,'fromtype');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,8,1),(8,9,1),(9,11,1),(10,10,1),(11,12,1),(12,13,1),(13,14,1),(14,16,1),(15,15,1),(16,17,3),(17,18,1),(18,19,1),(19,20,3),(20,21,1),(21,22,1),(22,23,1),(23,24,1),(24,25,1),(25,26,1),(26,27,4),(27,28,1),(28,29,4),(29,30,3),(30,31,1),(31,32,1),(32,33,4),(33,35,1),(34,36,1),(35,37,1),(36,38,1),(37,39,1),(38,40,4),(39,40,5),(40,41,6),(41,42,1),(42,43,1),(43,44,7),(44,45,6),(45,46,1),(46,47,1),(47,48,1),(48,49,2),(49,50,1),(50,51,8),(51,52,4),(52,52,5),(53,53,9),(54,54,10),(55,55,10),(56,56,11),(57,57,12),(58,58,13),(59,59,9),(60,60,10),(61,61,29),(62,62,9),(63,63,10),(64,64,5),(65,65,9),(66,66,9),(67,67,10),(68,69,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,19,1),(3,22,1),(4,24,1),(5,26,1),(6,31,1),(7,32,1),(8,35,1),(9,39,1),(10,44,2),(11,46,3),(12,46,1),(13,49,2),(14,49,4),(15,50,1),(16,55,5),(17,59,5),(18,60,5),(19,62,5),(20,63,5),(21,65,5),(22,66,5),(23,67,5),(24,69,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,49,'gamesnsschema','sina',NULL,NULL,NULL,NULL),(2,49,'gamesnsschema','tencent',NULL,NULL,NULL,NULL),(3,49,'gamesnsschema','kaixin',NULL,NULL,NULL,NULL),(4,49,'gamesnsschema','renren',NULL,NULL,NULL,NULL),(5,53,'package',NULL,NULL,NULL,NULL,NULL),(6,54,'package',NULL,NULL,NULL,NULL,NULL),(7,55,'package',NULL,NULL,NULL,NULL,NULL),(8,59,'package',NULL,NULL,NULL,NULL,NULL),(9,60,'package',NULL,NULL,NULL,NULL,NULL),(10,62,'package',NULL,NULL,NULL,NULL,NULL),(11,63,'package',NULL,NULL,NULL,NULL,NULL),(12,65,'package',NULL,NULL,NULL,NULL,NULL),(13,66,'package',NULL,NULL,NULL,NULL,NULL),(14,67,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,1,'application','vnd.android.package-archive'),(2,18,'application','vnd.android.package-archive'),(3,22,'application','vnd.android.package-archive'),(4,42,'application','vnd.android.package-archive'),(5,72,'(.*)','(.*)'),(6,76,'(.*)','(.*)'),(7,83,'application','vnd.android.package-archive'),(8,87,'application','vnd.android.package-archive'),(9,93,'application','vnd.android.package-archive'),(10,97,'application','vnd.android.package-archive'),(11,99,'application','vnd.android.package-archive'),(12,121,'(.*)','(.*)'),(13,124,'(.*)','(.*)'),(14,125,'application','vnd.android.package-archive'),(15,143,'application','vnd.android.package-archive'),(16,148,'application','vnd.android.package-archive'),(17,150,'application','vnd.android.package-archive'),(18,153,'application','vnd.android.package-archive'),(19,159,'application','vnd.android.package-archive'),(20,203,'(.*)','(.*)'),(21,207,'(.*)','(.*)'),(22,209,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.rgupfmssjimrnwhh.owkshtketp'),(2,3,'com.m_mnfxqh'),(3,6,'com.android_osfqxnrxz'),(4,8,'com.android_osfqxnrxz'),(5,7,'com.m_mnfxqh'),(6,10,'com.m_mnfxqh'),(7,9,'com.android_osfqxnrxz'),(8,11,'com.m_mnfxqh'),(9,12,'(.*)'),(10,13,'com.m_mnfxqh'),(11,14,'(.*)'),(12,15,'com.android_oschmflm'),(13,16,'com.m_mnfxqh'),(14,17,'com.android_osfqxnrxz'),(15,20,'com.m_mnfxqh'),(16,21,'com.m_mnfxqh'),(17,23,'com.android_osfqxnrxz'),(18,24,'(.*)'),(19,26,'com.android_osfqxnrxz'),(20,27,''),(21,28,'com.android_oschmflm'),(22,29,''),(23,30,'com.android_osfqxnrxz'),(24,31,'(.*)'),(25,32,'com.android_oschmflm'),(26,33,'com.android_osfqxnrxz'),(27,34,'com.m_mnfxqh'),(28,35,'com.android_osfqxnrxz'),(29,37,'com.m_mnfxqh'),(30,38,'com.android_osfqxnrxz'),(31,39,'com.m_mnfxqh'),(32,40,'com.android_oschmflm'),(33,44,'com.android_oschmflm'),(34,46,'NULL-CONSTANT'),(35,45,'com.android_osfqxnrxz'),(36,48,'NULL-CONSTANT'),(37,49,'com.android_osfqxnrxz'),(38,50,'com.android_oschmflm'),(39,51,'com.m_mnfxqh'),(40,53,'NULL-CONSTANT'),(41,52,'com.android_osfqxnrxz'),(42,54,'NULL-CONSTANT'),(43,56,'com.android_osfqxnrxz'),(44,59,'com.android_osfqxnrxz'),(45,60,'com.android_oschmflm'),(46,61,'com.rqsoncbi.bjoa.ulsvt'),(47,62,'(.*)'),(48,63,'(.*)'),(49,64,'com.android_oschmflm'),(50,65,'(.*)'),(51,67,''),(52,68,'com.android_oschmflm'),(53,70,'com.m_mnfxqh'),(54,71,''),(55,73,'(.*)'),(56,74,'com.android_oschmflm'),(57,75,'com.m_mnfxqh'),(58,78,'com.android_osfqxnrxz'),(59,77,'com.android_oschmflm'),(60,79,'com.m_mnfxqh'),(61,82,'com.android_oschmflm'),(62,84,'com.m_mnfxqh'),(63,85,'com.rqsoncbi.bjoa.ulsvt'),(64,86,'com.android_oschmflm'),(65,88,'com.rqsoncbi.bjoa.ulsvt'),(66,89,'com.m_mnfxqh'),(67,90,'com.android_oschmflm'),(68,92,'com.rqsoncbi.bjoa.ulsvt'),(69,91,'com.android_osfqxnrxz'),(70,94,'com.android_oschmflm'),(71,95,'com.rqsoncbi.bjoa.ulsvt'),(72,96,'com.android_osfqxnrxz'),(73,98,'com.android_oschmflm'),(74,100,'(.*)'),(75,101,'com.android_osfqxnrxz'),(76,102,'com.android_oschmflm'),(77,103,''),(78,104,'com.m_mnfxqh'),(79,106,''),(80,105,'com.android_osfqxnrxz'),(81,107,'com.android_oschmflm'),(82,108,'com.m_mnfxqh'),(83,109,'(.*)'),(84,110,'com.android_oschmflm'),(85,111,'com.android_osfqxnrxz'),(86,112,'com.m_mnfxqh'),(87,113,'com.android_oschmflm'),(88,114,'com.android_osfqxnrxz'),(89,116,'com.m_mnfxqh'),(90,117,'com.android_oschmflm'),(91,119,'com.android_osfqxnrxz'),(92,120,'com.m_mnfxqh'),(93,122,'com.android_oschmflm'),(94,123,'com.android_osfqxnrxz'),(95,126,'com.android_oschmflm'),(96,127,'com.android_osfqxnrxz'),(97,128,'com.rqsoncbi.bjoa.ulsvt'),(98,129,'com.android_oschmflm'),(99,130,'com.m_mnfxqh'),(100,132,'com.android_oschmflm'),(101,133,'com.rqsoncbi.bjoa.ulsvt'),(102,134,'(.*)'),(103,135,'com.m_mnfxqh'),(104,136,'(.*)'),(105,138,'com.rqsoncbi.bjoa.ulsvt'),(106,141,'com.m_mnfxqh'),(107,142,'com.rqsoncbi.bjoa.ulsvt'),(108,145,'com.m_mnfxqh'),(109,144,'com.android_oschmflm'),(110,146,'com.rqsoncbi.bjoa.ulsvt'),(111,147,'com.m_mnfxqh'),(112,149,'com.rqsoncbi.bjoa.ulsvt'),(113,151,'com.m_mnfxqh'),(114,152,'com.android_osfqxnrxz'),(115,154,'com.rqsoncbi.bjoa.ulsvt'),(116,155,'com.m_mnfxqh'),(117,156,'com.android_osfqxnrxz'),(118,158,'(.*)'),(119,160,''),(120,161,'com.android_osfqxnrxz'),(121,163,''),(122,162,'com.android_oschmflm'),(123,165,'(.*)'),(124,164,'com.m_mnfxqh'),(125,166,'com.android_osfqxnrxz'),(126,168,'com.m_mnfxqh'),(127,170,'com.android_osfqxnrxz'),(128,171,'com.rqsoncbi.bjoa.ulsvt'),(129,172,'com.m_mnfxqh'),(130,174,'com.android_osfqxnrxz'),(131,173,'com.android_oschmflm'),(132,175,'com.rqsoncbi.bjoa.ulsvt'),(133,176,'com.m_mnfxqh'),(134,178,'com.android_oschmflm'),(135,177,'NULL-CONSTANT'),(136,179,'com.m_mnfxqh'),(137,180,'com.rqsoncbi.bjoa.ulsvt'),(138,181,'NULL-CONSTANT'),(139,182,'com.android_oschmflm'),(140,184,'com.android_osfqxnrxz'),(141,186,'com.rqsoncbi.bjoa.ulsvt'),(142,187,'com.android_osfqxnrxz'),(143,188,'com.android_oschmflm'),(144,189,'com.rqsoncbi.bjoa.ulsvt'),(145,191,'com.android_osfqxnrxz'),(146,190,'com.m_mnfxqh'),(147,192,'com.android_oschmflm'),(148,193,'com.rqsoncbi.bjoa.ulsvt'),(149,194,'com.android_osfqxnrxz'),(150,195,'com.m_mnfxqh'),(151,196,'com.android_oschmflm'),(152,198,'com.android_osfqxnrxz'),(153,200,'com.android_oschmflm'),(154,202,'com.m_mnfxqh'),(155,205,'com.android_oschmflm'),(156,208,'com.m_mnfxqh'),(157,211,'(.*)'),(158,212,'com.android_osfqxnrxz'),(159,214,''),(160,213,'com.android_oschmflm'),(161,216,''),(162,215,'com.android_osfqxnrxz'),(163,217,'(.*)'),(164,218,'(.*)'),(165,219,'(.*)'),(166,220,''),(167,221,''),(168,222,''),(169,223,''),(170,224,'(.*)'),(171,225,'(.*)'),(172,226,'com.android_oschmflm'),(173,227,'com.rqsoncbi.bjoa.ulsvt'),(174,229,'(.*)'),(175,230,'com.android_oschmflm'),(176,231,'(.*)'),(177,233,'com.rqsoncbi.bjoa.ulsvt'),(178,232,'com.android_oschmflm'),(179,234,'(.*)'),(180,235,'(.*)'),(181,237,'com.rqsoncbi.bjoa.ulsvt'),(182,239,'com.rqsoncbi.bjoa.ulsvt');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,6,0),(4,10,0),(5,13,0),(6,15,0),(7,16,0),(8,17,0),(9,19,0),(10,22,0),(11,21,0),(12,23,0),(13,24,0),(14,26,0),(15,29,0),(16,28,0),(17,30,0),(18,31,0),(19,33,0),(20,34,0),(21,35,0),(22,36,0),(23,38,0),(24,39,0),(25,41,0),(26,42,0),(27,43,0),(28,44,0),(29,45,0),(30,46,0),(31,47,0),(32,50,0),(33,51,0),(34,52,0),(35,59,0),(36,61,0),(37,62,0),(38,63,0),(39,66,0),(40,67,0),(41,80,0),(42,85,0),(43,86,0),(44,88,0),(45,88,0),(46,88,0),(47,89,0),(48,90,0),(49,95,0),(50,100,0),(51,107,0),(52,108,0),(53,109,0),(54,110,0),(55,45,0),(56,111,0),(57,112,0),(58,113,0),(59,67,0),(60,43,0),(61,114,0),(62,43,0),(63,67,0),(64,115,0),(65,51,0),(66,45,0),(67,51,0),(68,116,0),(69,119,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,6,0,0),(7,7,0,0),(8,6,0,0),(9,9,0,0),(10,8,0,0),(11,10,0,0),(12,11,1,0),(13,12,0,0),(14,11,1,0),(15,13,0,0),(16,14,0,0),(17,15,0,0),(18,16,1,0),(19,18,1,0),(20,17,0,0),(21,17,0,0),(22,20,1,0),(23,19,0,0),(24,21,1,0),(25,22,1,0),(26,19,0,0),(27,21,1,0),(28,23,0,0),(29,21,1,0),(30,24,0,0),(31,21,1,0),(32,25,0,0),(33,26,0,0),(34,27,0,0),(35,28,0,0),(36,29,1,0),(37,30,0,0),(38,31,0,0),(39,32,0,0),(40,33,0,0),(41,34,1,0),(42,35,1,0),(43,36,1,0),(44,37,0,0),(45,39,0,0),(46,40,1,0),(47,38,1,0),(48,40,1,0),(49,41,0,0),(50,42,0,0),(51,43,0,0),(52,44,0,0),(53,45,1,0),(54,45,1,0),(55,46,1,0),(56,47,0,0),(57,48,1,0),(58,49,1,0),(59,50,0,0),(60,51,0,0),(61,52,0,0),(62,53,1,0),(63,54,1,0),(64,55,0,0),(65,53,1,0),(66,56,1,0),(67,54,1,0),(68,57,0,0),(69,56,1,0),(70,58,0,0),(71,54,1,0),(72,56,1,0),(73,54,1,0),(74,59,0,0),(75,60,0,0),(76,56,1,0),(77,61,0,0),(78,62,0,0),(79,63,0,0),(80,64,1,0),(81,64,1,0),(82,65,0,0),(83,66,1,0),(84,67,0,0),(85,68,0,0),(86,69,0,0),(87,66,1,0),(88,70,0,0),(89,71,0,0),(90,72,0,0),(91,73,0,0),(92,74,0,0),(93,75,1,0),(94,76,0,0),(95,77,0,0),(96,78,0,0),(97,75,1,0),(98,79,0,0),(99,80,1,0),(100,81,1,0),(101,82,0,0),(102,83,0,0),(103,81,1,0),(104,84,0,0),(105,85,0,0),(106,81,1,0),(107,86,0,0),(108,87,0,0),(109,81,1,0),(110,86,0,0),(111,88,0,0),(112,89,0,0),(113,90,0,0),(114,91,0,0),(115,92,1,0),(116,93,0,0),(117,94,0,0),(118,92,1,0),(119,95,0,0),(120,93,0,0),(121,92,1,0),(122,96,0,0),(123,97,0,0),(124,92,1,0),(125,98,1,0),(126,99,0,0),(127,100,0,0),(128,101,0,0),(129,99,0,0),(130,102,0,0),(131,103,1,0),(132,104,0,0),(133,105,0,0),(134,106,1,0),(135,107,0,0),(136,106,1,0),(137,109,1,0),(138,108,0,0),(139,110,1,0),(140,111,1,0),(141,112,0,0),(142,113,0,0),(143,114,1,0),(144,115,0,0),(145,116,0,0),(146,117,0,0),(147,119,0,0),(148,118,1,0),(149,120,0,0),(150,121,1,0),(151,122,0,0),(152,123,0,0),(153,121,1,0),(154,124,0,0),(155,125,0,0),(156,126,0,0),(157,128,1,0),(158,127,1,0),(159,129,1,0),(160,127,1,0),(161,130,0,0),(162,131,0,0),(163,127,1,0),(164,132,0,0),(165,127,1,0),(166,133,0,0),(167,134,1,0),(168,135,0,0),(169,134,1,0),(170,136,0,0),(171,137,0,0),(172,138,0,0),(173,139,0,0),(174,140,0,0),(175,142,0,0),(176,141,0,0),(177,143,1,0),(178,144,0,0),(179,141,0,0),(180,145,0,0),(181,143,1,0),(182,146,0,0),(183,147,1,0),(184,148,0,0),(185,147,1,0),(186,149,0,0),(187,150,0,0),(188,151,0,0),(189,152,0,0),(190,153,0,0),(191,154,0,0),(192,155,0,0),(193,156,0,0),(194,154,0,0),(195,157,0,0),(196,155,0,0),(197,158,1,0),(198,159,0,0),(199,160,1,0),(200,161,0,0),(201,158,1,0),(202,162,0,0),(203,158,1,0),(204,163,1,0),(205,164,0,0),(206,163,1,0),(207,158,1,0),(208,165,0,0),(209,166,1,0),(210,167,1,0),(211,168,1,0),(212,169,0,0),(213,170,0,0),(214,168,1,0),(215,171,0,0),(216,168,1,0),(217,168,1,0),(218,172,1,0),(219,173,1,0),(220,172,1,0),(221,173,1,0),(222,172,1,0),(223,173,1,0),(224,172,1,0),(225,173,1,0),(226,174,0,0),(227,175,0,0),(228,176,1,0),(229,177,1,0),(230,178,0,0),(231,177,1,0),(232,179,0,0),(233,180,0,0),(234,181,1,0),(235,181,1,0),(236,182,1,0),(237,182,0,0),(238,182,1,0),(239,182,0,0);
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
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_CACHE_FILESYSTEM'),(5,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.CAMERA'),(23,'android.permission.CHANGE_CONFIGURATION'),(21,'android.permission.CHANGE_NETWORK_STATE'),(20,'android.permission.CHANGE_WIFI_STATE'),(11,'android.permission.DELETE_CACHE_FILES'),(13,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(17,'android.permission.KILL_BACKGROUND_PROCESSES'),(10,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(16,'android.permission.RECEIVE_SMS'),(7,'android.permission.SET_WALLPAPER'),(18,'android.permission.SYSTEM_ALERT_WINDOW'),(14,'android.permission.VIBRATE'),(22,'android.permission.WAKE_LOCK'),(15,'android.permission.WRITE_APN_SETTINGS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'com.android.launcher.permission.INSTALL_SHORTCUT'),(12,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'file://',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://',NULL,NULL,NULL),(22,NULL,NULL,'file://',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'file://',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'file://',NULL,NULL,NULL),(47,NULL,NULL,'',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,NULL,NULL,'file://',NULL,NULL,NULL),(50,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,5),(10,2,6),(11,2,7),(12,2,8),(13,2,9),(14,2,10),(15,2,11),(16,2,12),(17,3,1),(18,3,2),(19,3,3),(20,3,5),(21,3,6),(22,3,7),(23,3,8),(24,3,9),(25,3,10),(26,3,11),(27,3,12),(28,4,1),(29,4,2),(30,4,3),(31,4,5),(32,4,6),(33,4,7),(34,4,8),(35,4,12),(36,5,1),(37,5,2),(38,5,3),(39,5,4),(40,5,5),(41,5,6),(42,5,8),(43,5,12),(44,5,13),(45,5,14),(46,6,1),(47,6,2),(48,6,3),(49,6,4),(50,6,5),(51,6,6),(52,6,8),(53,6,12),(54,6,13),(55,6,15),(56,6,17),(57,6,16),(58,6,19),(59,6,18),(60,6,21),(61,6,20),(62,6,23),(63,6,22),(64,7,1),(65,7,2),(66,7,3),(67,7,4),(68,7,5),(69,7,13),(70,7,14);
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

-- Dump completed on 2015-10-09  0:39:37
