-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_413
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (10,'.ImageTestActivity'),(15,'.PintuActivity'),(2,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.PACKAGE_ADDED'),(7,'android.intent.action.PACKAGE_REMOVED'),(20,'android.intent.action.SCREEN_OFF'),(13,'android.intent.action.SEARCH'),(4,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(19,'android.net.conn.CONNECTIVITY_CHANGE'),(14,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(5,'com.android.vending.INSTALL_REFERRER'),(18,'com.gamesns.GamesnsService'),(8,'com.pintu_zqbbpt.GameBootReceiver'),(16,'com.pintu_zqbbpt.PintuActivity'),(17,'com.rmktkrl.cvhokdaov.BootReceiver'),(11,'org.android_iomscmz.CMWfife1'),(9,'org.android_iomscmz.ImageTestActivity');
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
INSERT INTO `Applications` VALUES (1,'com.pintu_zqbbpt',20006),(2,'org.android_iomscmz',1100),(3,'com.dfkjefo.wnracdu',10026),(4,'com.rmktkrl.cvhokdaov',10024),(5,'com.tqc.udgtctu.mhlltj',10038),(6,'com.sthibfnmvdsa.rkejnslle',10020),(7,'com.gamesns',164);
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
INSERT INTO `CategoryStrings` VALUES (6,'android.intent.category.BROWSABLE'),(1,'android.intent.category.DEFAULT'),(5,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.pintu_zqbbpt.PintuActivity'),(2,1,'com.pintu_zqbbpt.GameInfo'),(3,2,'org.android_iomscmz.image.PhotoGrid'),(4,1,'com.pintu_zqbbpt.TableClass'),(5,2,'org.android_iomscmz.image.ShowImage'),(6,1,'com.pintu_zqbbpt.GameAlertDialog'),(7,2,'org.android_iomscmz.CMWfife8'),(8,1,'com.pintu_zqbbpt.GameService'),(9,2,'org.android_iomscmz.CMWfife5'),(10,1,'com.pintu_zqbbpt.GameBootReceiver'),(11,2,'org.android_iomscmz.CMWfife13'),(12,2,'org.android_iomscmz.CMWfife12'),(13,2,'org.android_iomscmz.CMWfife2'),(14,2,'org.android_iomscmz.CMWfife1'),(15,3,'com.dfkjefo.wnracdu.GirlDiz'),(16,3,'com.dfkjefo.wnracdu.GirlGame'),(17,3,'net.youmi.android.appoffers.YoumiOffersActivity'),(18,3,'net.youmi.android.AdActivity'),(19,3,'com.coKgceJB.ToLfMCuwehGNtc'),(20,3,'com.coKgceJB.ukfJcLptQgJjml'),(21,3,'com.nd.dianjin.activity.OfferAppActivity'),(22,3,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(23,4,'com.funsuma.starpagga.StarPaggaApp'),(24,4,'com.openfeint.internal.ui.IntroFlow'),(25,4,'com.openfeint.api.ui.Dashboard'),(26,4,'com.openfeint.internal.ui.Settings'),(27,4,'com.openfeint.internal.ui.NativeBrowser'),(28,4,'com.TkKea.PGlvKJiwGWPK'),(29,4,'com.TkKea.NRorLrbWGUsQQpo'),(30,4,'com.TkKea.MyAppInfo'),(31,4,'com.TkKea.WalmUAkfNjmTKdg'),(32,4,'com.TkKea.AKUjSKLQKFdNN'),(33,4,'com.TkKea.MyAppAlertDialog'),(34,5,'com.tqc.udgtctu.mhlltj.FamilyGuy'),(35,4,'com.TkKea.kiNrwKavdGufS'),(36,5,'com.feQTMop.TacUDekenMNC'),(37,4,'com.TkKea.MyAppService'),(38,5,'com.feQTMop.EfhCdluTkvoEsa'),(39,4,'com.TkKea.BootReceiverService'),(40,5,'com.feQTMop.QGaMmrUhd'),(41,5,'com.feQTMop.BDoWuFdqIfmVo'),(42,5,'com.feQTMop.tSppnJTqPh'),(43,5,'com.feQTMop.GUwsUhEcKB'),(44,5,'com.feQTMop.userPermissionReceiver'),(45,6,'com.sthibfnmvdsa.rkejnslle.GloftREDRActivity'),(46,6,'com.admob.android.ads.AdMobActivity'),(47,6,'com.oTvuht.uGMjAeBEPAwF'),(48,6,'com.oTvuht.GpQuBdHAqMJ'),(49,6,'com.nd.dianjin.activity.OfferAppActivity'),(50,6,'com.admob.android.ads.analytics.InstallReceiver'),(51,6,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(52,1,'b'),(53,1,'d'),(54,2,'j'),(55,1,'q'),(56,2,'k'),(57,3,'net.youmi.android.w'),(58,2,'bi'),(59,5,'com.feQTMop.ah'),(60,7,'com.gamesns.activity.BackupAppActivity'),(61,7,'com.gamesns.activity.DiscussionFeed'),(62,7,'com.gamesns.activity.DiscussionForm'),(63,7,'com.gamesns.activity.AddFriends'),(64,7,'com.gamesns.activity.FriendSearch'),(65,7,'com.gamesns.activity.BasicFeed'),(66,7,'com.gamesns.activity.AddFriendsOptions'),(67,7,'com.gamesns.activity.LoginForm'),(68,7,'com.gamesns.activity.RegisterForm'),(69,5,'com.feQTMop.ad'),(70,7,'com.gamesns.activity.SimpleGallery'),(71,3,'net.youmi.android.bj'),(72,7,'com.gamesns.activity.CheckinForm'),(73,7,'com.gamesns.activity.LoginSignupSplash'),(74,7,'com.gamesns.activity.DiscoverTab'),(75,6,'com.nd.dianjin.DianJinPlatform'),(76,7,'com.gamesns.activity.DiscoverInstructions'),(77,7,'com.gamesns.activity.GameDetails'),(78,7,'com.gamesns.activity.GameTab'),(79,1,'ac'),(80,7,'com.gamesns.activity.FriendsTab'),(81,7,'com.gamesns.activity.YouTab'),(82,5,'com.feQTMop.ae'),(83,7,'com.gamesns.activity.YouTabNew'),(84,7,'com.gamesns.activity.FriendDetails'),(85,7,'com.gamesns.activity.CheckinHub'),(86,7,'com.gamesns.activity.DeskTopFolder'),(87,7,'com.gamesns.GameList'),(88,7,'com.gamesns.activity.ChatActivity'),(89,7,'com.gamesns.activity.MediaActivity'),(90,4,'com.TkKea.ai'),(91,7,'com.gamesns.activity.Web'),(92,7,'com.gamesns.activity.WebMediaPlayer'),(93,7,'com.gamesns.activity.UpdateActivity'),(94,7,'com.gamesns.activity.Share'),(95,3,'com.nd.dianjin.DianJinPlatform'),(96,7,'com.gamesns.activity.AppTrafficActivity'),(97,7,'com.gamesns.activity.VideoDetail'),(98,7,'com.gamesns.activity.GameDetailNewActivity'),(99,7,'com.gamesns.activity.ModifyUserData'),(100,7,'com.gamesns.activity.HomeActivity'),(101,7,'com.gamesns.activity.DiscussionDetail'),(102,7,'com.gamesns.activity.DeskTabActivity'),(103,7,'com.gamesns.activity.GameOnLineList'),(104,7,'com.gamesns.activity.AllGame'),(105,7,'com.gamesns.activity.GameRecommend'),(106,7,'com.gamesns.activity.ManagerGame'),(107,7,'com.gamesns.activity.GameRestartAlert'),(108,7,'com.gamesns.activity.GameCounseling'),(109,7,'com.gamesns.activity.QuestionAnsweringActivity'),(110,7,'com.gamesns.GamesnsService'),(111,7,'com.gamesns.receiver.StartupIntentReceiver'),(112,7,'com.gamesns.receiver.PackageAddedReceiver'),(113,7,'com.gamesns.receiver.UploadBehaviorReceiver'),(114,7,'com.gamesns.receiver.UpgradeReceiver'),(115,7,'com.gamesns.receiver.HalfOfTheDayReceiver'),(116,7,'com.gamesns.receiver.TipMsgReceiver'),(117,7,'com.gamesns.receiver.PackageRemovedReceiver'),(118,7,'com.gamesns.receiver.ReferrerReceiver'),(119,7,'com.gamesns.receiver.NetStateReceiver'),(120,4,'com.TkKea.z'),(121,4,'com.TkKea.y'),(122,4,'com.TkKea.ac'),(123,4,'com.TkKea.bp'),(124,4,'com.TkKea.bf'),(125,4,'com.TkKea.be'),(126,4,'com.openfeint.internal.ImagePicker'),(127,4,'com.TkKea.af');
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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'title'),(2,7,'title'),(3,2,'fromtype'),(4,8,'service_channel'),(5,1,'service_channel'),(6,6,'btn_txt'),(7,16,'NextName'),(8,18,'D50EF1926ADD471892E72BCE6D7E032C'),(9,16,'YOUMI_CHANNEL'),(10,18,'YOUMI_CHANNEL'),(11,7,'status'),(12,3,'stylebox'),(13,6,'version_code'),(14,6,'package_name'),(15,40,'detailFlag'),(16,42,'packageName'),(17,2,'from_alert'),(18,34,'0'),(19,46,'u'),(20,50,'(.*)'),(21,46,'json'),(22,46,'sin'),(23,46,'rd'),(24,40,'apkInfo'),(25,46,'c'),(26,18,'172C94EDC717477aBF600D7898A64A8E'),(27,16,'LastName'),(28,6,'title'),(29,12,'title'),(30,6,'url'),(31,46,'cs'),(32,46,'ap'),(33,46,'a'),(34,46,'tr'),(35,46,'t'),(36,7,'game'),(37,46,'cbo'),(38,40,'apkURL'),(39,46,'su'),(40,40,'iconURL'),(41,46,'$'),(42,34,'1'),(43,43,'fileName'),(44,2,'game'),(45,46,'p'),(46,2,'status'),(47,12,'package_name'),(48,46,'sku'),(49,46,'s'),(50,2,'filepath'),(51,46,'ru'),(52,46,'ad'),(53,46,'int'),(54,46,'mi'),(55,46,'skd'),(56,46,'o'),(57,50,'referrer'),(58,46,'sd'),(59,46,'or'),(60,46,'au'),(61,46,'nosk'),(62,46,'msm'),(63,46,'si'),(64,46,'b'),(65,7,'from_table'),(66,26,'mDeviceSessionCreated'),(67,46,'oi'),(68,25,'mDeviceSessionCreated'),(69,7,'from_alert'),(70,40,'apkTitle'),(71,50,'ADMOB_PUBLISHER_ID'),(72,24,'mDeviceSessionCreated'),(73,11,'isDirectFromTable'),(74,50,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(75,33,'url'),(76,12,'content'),(77,45,'ADMOB_PUBLISHER_ID'),(78,12,'url'),(79,45,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(80,13,'stylebox'),(81,50,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(82,45,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(83,43,'fileURL'),(84,46,'sc'),(85,18,'EB80F3291A8E469c962CA133BDC549D7'),(86,18,'D780FBF4215247bcBB1AC0AD33C474FE'),(87,40,'packageName'),(88,40,'apkSoftID'),(89,40,'imageURL'),(90,6,'apk_url'),(91,7,'fromtype'),(92,40,'apkVersion'),(93,26,'mCurrentUser'),(94,25,'mCurrentUser'),(95,24,'mCurrentUser'),(96,12,'apk_url'),(97,35,'apkurl'),(98,34,'2'),(99,40,'apkSize'),(100,42,'fileURL'),(101,43,'np_app_key'),(102,36,'np_app_key'),(103,26,'_of_cookie_(.*)path'),(104,41,'np_app_key'),(105,25,'_of_cookie_(.*)path'),(106,40,'np_app_key'),(107,24,'_of_cookie_(.*)path'),(108,38,'np_app_key'),(109,2,'from_table'),(110,33,'package_name'),(111,35,'content'),(112,11,'from'),(113,26,'mCreatingDeviceSession'),(114,12,'btn_txt'),(115,25,'mCreatingDeviceSession'),(116,24,'mCreatingDeviceSession'),(117,26,'_of_cookie_(.*)value'),(118,25,'_of_cookie_(.*)value'),(119,24,'_of_cookie_(.*)value'),(120,26,'mBanned'),(121,25,'mBanned'),(122,24,'mBanned'),(123,33,'apk_url'),(124,30,'game'),(125,30,'from_table'),(126,6,'content'),(127,30,'title'),(128,33,'fromtable'),(129,33,'btn_txt'),(130,7,'filepath'),(131,30,'filepath'),(132,12,'fromtable'),(133,12,'version_code'),(134,33,'version_code'),(135,28,'NEW_APP_ID'),(136,27,'com.openfeint.internal.ui.NativeBrowser.argument.timeout'),(137,33,'content'),(138,27,'com.openfeint.internal.ui.NativeBrowser.argument.src'),(139,26,'mDeclined'),(140,25,'mDeclined'),(141,24,'mDeclined'),(142,26,'content_name'),(143,25,'content_name'),(144,24,'content_name'),(145,30,'from_alert'),(146,35,'packagename'),(147,26,'com.openfeint.internal.ui.NativeBrowser.argument.result'),(148,26,'com.openfeint.internal.ui.NativeBrowser.argument.failure_desc'),(149,26,'mApproved'),(150,25,'mApproved'),(151,24,'mApproved'),(152,29,'popurl'),(153,28,'version_code'),(154,35,'title'),(155,30,'package_name'),(156,26,'screenName'),(157,25,'screenName'),(158,24,'screenName'),(159,26,'mCurrentlyLoggingIn'),(160,25,'mCurrentlyLoggingIn'),(161,24,'mCurrentlyLoggingIn'),(162,30,'status'),(163,26,'mForceOffline'),(164,25,'mForceOffline'),(165,24,'mForceOffline'),(166,33,'title'),(167,30,'fromtype'),(168,32,'isDirectFromTable'),(169,29,'poptitle'),(170,32,'from'),(171,37,'NEW_APP_ID'),(172,26,'_of_cookie_(.*)domain'),(173,25,'_of_cookie_(.*)domain'),(174,24,'_of_cookie_(.*)domain'),(175,32,'package_name'),(176,29,'NEW_APP_ID'),(177,28,'soft_id'),(178,26,'com.openfeint.internal.ui.NativeBrowser.argument.failed'),(179,26,'_of_cookie_(.*)expiry'),(180,25,'_of_cookie_(.*)expiry'),(181,24,'_of_cookie_(.*)expiry');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'s',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'r',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,60,'a',0,NULL,NULL),(53,61,'a',0,NULL,NULL),(54,62,'a',0,NULL,NULL),(55,63,'a',0,NULL,NULL),(56,64,'a',0,NULL,NULL),(57,65,'a',0,NULL,NULL),(58,66,'a',0,NULL,NULL),(59,67,'a',0,NULL,NULL),(60,68,'a',0,NULL,NULL),(61,70,'a',0,NULL,NULL),(62,72,'a',0,NULL,NULL),(63,73,'a',0,NULL,NULL),(64,74,'a',1,NULL,NULL),(65,76,'a',0,NULL,NULL),(66,77,'a',0,NULL,NULL),(67,78,'a',0,NULL,NULL),(68,80,'a',0,NULL,NULL),(69,81,'a',1,NULL,NULL),(70,83,'a',1,NULL,NULL),(71,84,'a',0,NULL,NULL),(72,85,'a',0,NULL,NULL),(73,86,'a',1,NULL,NULL),(74,87,'a',1,NULL,NULL),(75,88,'a',1,NULL,NULL),(76,89,'a',0,NULL,NULL),(77,90,'r',1,NULL,NULL),(78,91,'a',0,NULL,NULL),(79,92,'a',0,NULL,NULL),(80,93,'a',0,NULL,NULL),(81,94,'a',1,NULL,NULL),(82,96,'a',0,NULL,NULL),(83,97,'a',0,NULL,NULL),(84,98,'a',0,NULL,NULL),(85,99,'a',0,NULL,NULL),(86,100,'a',0,NULL,NULL),(87,101,'a',0,NULL,NULL),(88,102,'a',0,NULL,NULL),(89,103,'a',0,NULL,NULL),(90,104,'a',0,NULL,NULL),(91,105,'a',0,NULL,NULL),(92,106,'a',0,NULL,NULL),(93,107,'a',0,NULL,NULL),(94,108,'a',0,NULL,NULL),(95,109,'a',0,NULL,NULL),(96,110,'s',1,NULL,NULL),(97,111,'r',1,NULL,NULL),(98,112,'r',1,NULL,NULL),(99,113,'r',0,NULL,NULL),(100,114,'r',0,NULL,NULL),(101,115,'r',0,NULL,NULL),(102,116,'r',0,NULL,NULL),(103,117,'r',1,NULL,NULL),(104,118,'r',1,NULL,NULL),(105,119,'r',1,NULL,NULL),(106,127,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,6),(3,3,2),(4,4,7),(5,5,7),(6,6,10),(7,7,3),(8,8,2),(9,9,14),(10,10,14),(11,11,10),(12,12,12),(13,13,2),(14,14,7),(15,15,20),(16,16,6),(17,17,40),(18,18,18),(19,19,9),(20,20,2),(21,21,36),(22,22,10),(23,23,7),(24,24,44),(25,25,4),(26,26,38),(27,27,7),(28,28,34),(29,29,47),(30,30,19),(31,31,14),(32,32,1),(33,33,36),(34,34,18),(35,35,6),(36,36,3),(37,37,38),(38,38,48),(39,39,7),(40,40,42),(41,41,48),(42,42,6),(43,42,4),(44,43,7),(45,44,47),(46,45,40),(47,45,38),(48,46,6),(49,47,7),(50,48,2),(51,49,43),(52,50,1),(53,51,38),(54,52,7),(55,53,33),(56,54,36),(57,55,19),(58,57,2),(59,56,7),(60,58,2),(61,59,9),(62,59,12),(63,59,11),(64,60,36),(65,61,20),(66,62,38),(67,62,40),(68,63,39),(69,64,12),(70,66,2),(71,65,30),(72,67,12),(73,68,2),(74,69,38),(75,70,2),(76,71,7),(77,72,4),(78,73,4),(79,73,6),(80,74,35),(81,75,2),(82,76,12),(83,77,39),(84,78,30),(85,79,3),(86,80,31),(87,81,9),(88,82,9),(89,82,11),(90,82,12),(91,83,7),(92,84,30),(93,85,30),(94,86,30),(95,87,28),(96,88,35),(97,89,30),(98,90,28),(99,91,33),(100,91,32),(101,91,31),(102,92,33),(103,92,31),(104,92,32),(105,93,29),(106,94,30),(107,95,31),(108,96,30),(109,97,30),(110,98,28),(111,99,28),(112,100,24),(113,100,26),(114,101,33),(115,102,28),(116,103,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,52,'<b: void onClick(android.view.View)>',242,'a',NULL),(2,6,'<com.pintu_zqbbpt.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(3,53,'<d: void onClick(android.view.View)>',239,'a',NULL),(4,7,'<org.android_iomscmz.CMWfife8: void onCreate(android.os.Bundle)>',172,'a',NULL),(5,54,'<j: void onClick(android.view.View)>',218,'a',NULL),(6,10,'<com.pintu_zqbbpt.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(7,3,'<org.android_iomscmz.image.PhotoGrid: void onCreate(android.os.Bundle)>',122,'s',NULL),(8,55,'<q: void onClick(android.view.View)>',239,'a',NULL),(9,14,'<org.android_iomscmz.CMWfife1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(10,14,'<org.android_iomscmz.CMWfife1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(11,10,'<com.pintu_zqbbpt.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(12,12,'<org.android_iomscmz.CMWfife12: void onClick(android.view.View)>',84,'a',NULL),(13,55,'<q: void onClick(android.view.View)>',218,'a',NULL),(14,56,'<k: void onClick(android.view.View)>',221,'a',NULL),(15,20,'<com.coKgceJB.ukfJcLptQgJjml: void a()>',3,'a',NULL),(16,6,'<com.pintu_zqbbpt.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(17,40,'<com.feQTMop.QGaMmrUhd: void onCreate(android.os.Bundle)>',67,'a',NULL),(18,57,'<net.youmi.android.w: void onClick(android.view.View)>',48,'a',NULL),(19,9,'<org.android_iomscmz.CMWfife5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(20,2,'<com.pintu_zqbbpt.GameInfo: void onCreate(android.os.Bundle)>',33,'s',NULL),(21,36,'<com.feQTMop.TacUDekenMNC: void onCreate(android.os.Bundle)>',36,'a',NULL),(22,10,'<com.pintu_zqbbpt.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(23,58,'<bi: void onClick(android.view.View)>',218,'a',NULL),(24,59,'<com.feQTMop.ah: void run()>',25,'s',NULL),(25,4,'<com.pintu_zqbbpt.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(26,38,'<com.feQTMop.EfhCdluTkvoEsa: void a()>',3,'a',NULL),(27,7,'<org.android_iomscmz.CMWfife8: void onCreate(android.os.Bundle)>',90,'s',NULL),(28,34,'<com.tqc.udgtctu.mhlltj.FamilyGuy: void onPause()>',24,'a',NULL),(29,47,'<com.oTvuht.uGMjAeBEPAwF: void a(java.lang.String)>',10,'a',NULL),(30,19,'<com.coKgceJB.ToLfMCuwehGNtc: void a()>',3,'a',NULL),(31,14,'<org.android_iomscmz.CMWfife1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(32,1,'<com.pintu_zqbbpt.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(33,69,'<com.feQTMop.ad: void run()>',8,'s',NULL),(34,71,'<net.youmi.android.bj: void a(android.content.Context,java.lang.String)>',7,'a',NULL),(35,6,'<com.pintu_zqbbpt.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(36,3,'<org.android_iomscmz.image.PhotoGrid: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(37,38,'<com.feQTMop.EfhCdluTkvoEsa: void onBackPressed()>',5,'a',NULL),(38,75,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(39,7,'<org.android_iomscmz.CMWfife8: void onCreate(android.os.Bundle)>',76,'a',NULL),(40,42,'<com.feQTMop.tSppnJTqPh: void a(java.lang.String)>',10,'a',NULL),(41,48,'<com.oTvuht.GpQuBdHAqMJ: void a()>',3,'a',NULL),(42,79,'<ac: void a(int,boolean)>',10,'s',NULL),(43,7,'<org.android_iomscmz.CMWfife8: void onCreate(android.os.Bundle)>',33,'s',NULL),(44,47,'<com.oTvuht.uGMjAeBEPAwF: void a()>',3,'a',NULL),(45,82,'<com.feQTMop.ae: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(46,6,'<com.pintu_zqbbpt.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(47,54,'<j: void onClick(android.view.View)>',239,'a',NULL),(48,52,'<b: void onClick(android.view.View)>',221,'a',NULL),(49,43,'<com.feQTMop.GUwsUhEcKB: void c(android.content.Context)>',74,'a',NULL),(50,1,'<com.pintu_zqbbpt.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(51,38,'<com.feQTMop.EfhCdluTkvoEsa: void b()>',45,'a',NULL),(52,7,'<org.android_iomscmz.CMWfife8: void onCreate(android.os.Bundle)>',177,'a',NULL),(53,33,'<com.TkKea.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(54,36,'<com.feQTMop.TacUDekenMNC: void onCreate(android.os.Bundle)>',21,'a',NULL),(55,19,'<com.coKgceJB.ToLfMCuwehGNtc: void a(java.lang.String)>',10,'a',NULL),(56,7,'<org.android_iomscmz.CMWfife8: void onCreate(android.os.Bundle)>',81,'a',NULL),(57,2,'<com.pintu_zqbbpt.GameInfo: void onCreate(android.os.Bundle)>',76,'a',NULL),(58,53,'<d: void onClick(android.view.View)>',218,'a',NULL),(59,11,'<org.android_iomscmz.CMWfife13: void a(int,boolean)>',10,'s',NULL),(60,36,'<com.feQTMop.TacUDekenMNC: void onCreate(android.os.Bundle)>',31,'a',0),(61,95,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(62,40,'<com.feQTMop.QGaMmrUhd: void a(com.feQTMop.QGaMmrUhd,android.content.Context,java.lang.String)>',5,'a',NULL),(63,39,'<com.TkKea.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(64,12,'<org.android_iomscmz.CMWfife12: void onClick(android.view.View)>',66,'a',NULL),(65,30,'<com.TkKea.MyAppInfo: void onCreate(android.os.Bundle)>',91,'s',NULL),(66,2,'<com.pintu_zqbbpt.GameInfo: void onCreate(android.os.Bundle)>',90,'s',NULL),(67,12,'<org.android_iomscmz.CMWfife12: void onClick(android.view.View)>',53,'a',NULL),(68,2,'<com.pintu_zqbbpt.GameInfo: void onCreate(android.os.Bundle)>',81,'a',NULL),(69,38,'<com.feQTMop.EfhCdluTkvoEsa: void b()>',55,'a',NULL),(70,2,'<com.pintu_zqbbpt.GameInfo: void onCreate(android.os.Bundle)>',177,'a',NULL),(71,56,'<k: void onClick(android.view.View)>',242,'a',NULL),(72,4,'<com.pintu_zqbbpt.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(73,79,'<ac: void a(int,boolean)>',57,'a',NULL),(74,35,'<com.TkKea.kiNrwKavdGufS: void onCreate(android.os.Bundle)>',13,'s',NULL),(75,2,'<com.pintu_zqbbpt.GameInfo: void onCreate(android.os.Bundle)>',172,'a',NULL),(76,12,'<org.android_iomscmz.CMWfife12: void onClick(android.view.View)>',75,'a',NULL),(77,39,'<com.TkKea.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(78,30,'<com.TkKea.MyAppInfo: void onCreate(android.os.Bundle)>',41,'s',NULL),(79,3,'<org.android_iomscmz.image.PhotoGrid: void onCreate(android.os.Bundle)>',126,'s',NULL),(80,31,'<com.TkKea.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(81,9,'<org.android_iomscmz.CMWfife5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(82,11,'<org.android_iomscmz.CMWfife13: void a(int,boolean)>',63,'a',NULL),(83,58,'<bi: void onClick(android.view.View)>',239,'a',NULL),(84,120,'<com.TkKea.z: void onClick(android.view.View)>',185,'a',NULL),(85,121,'<com.TkKea.y: void onClick(android.view.View)>',197,'a',NULL),(86,122,'<com.TkKea.ac: void onClick(android.view.View)>',197,'a',NULL),(87,123,'<com.TkKea.bp: void onClick(android.view.View)>',106,'a',NULL),(88,35,'<com.TkKea.kiNrwKavdGufS: void onClick(android.view.View)>',26,'a',NULL),(89,30,'<com.TkKea.MyAppInfo: void onCreate(android.os.Bundle)>',10,'a',NULL),(90,28,'<com.TkKea.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',61,'s',NULL),(91,32,'<com.TkKea.AKUjSKLQKFdNN: void a(int,boolean)>',42,'a',NULL),(92,32,'<com.TkKea.AKUjSKLQKFdNN: void a(int,boolean)>',10,'s',NULL),(93,29,'<com.TkKea.NRorLrbWGUsQQpo: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(94,122,'<com.TkKea.ac: void onClick(android.view.View)>',182,'a',NULL),(95,31,'<com.TkKea.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(96,121,'<com.TkKea.y: void onClick(android.view.View)>',182,'a',NULL),(97,120,'<com.TkKea.z: void onClick(android.view.View)>',200,'a',NULL),(98,124,'<com.TkKea.bf: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(99,125,'<com.TkKea.be: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(100,126,'<com.openfeint.internal.ImagePicker: android.graphics.Bitmap onImagePickerActivityResult(android.app.Activity,int,int,android.content.Intent)>',10,'p',0),(101,33,'<com.TkKea.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(102,28,'<com.TkKea.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',57,'s',NULL),(103,39,'<com.TkKea.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,6,1),(6,7,1),(7,8,1),(8,10,1),(9,11,6),(10,12,6),(11,13,8),(12,14,9),(13,15,1),(14,16,10),(15,17,1),(16,19,1),(17,20,1),(18,21,11),(19,24,6),(20,25,6),(21,26,6),(22,28,6),(23,30,1),(24,31,12),(25,32,1),(26,33,12),(27,34,1),(28,36,12),(29,38,1),(30,39,12),(31,40,8),(32,41,12),(33,42,6),(34,44,12),(35,45,1),(36,46,12),(37,47,6),(38,49,1),(39,50,12),(40,52,6),(41,53,1),(42,55,11),(43,58,6),(44,59,6),(45,62,6),(46,63,6),(47,66,6),(48,67,6),(49,71,6),(50,73,6),(51,74,6),(52,75,14),(53,76,1),(54,77,6),(55,78,1),(56,79,6),(57,81,1),(58,82,6),(59,83,6),(60,84,1),(61,85,6),(62,86,15),(63,87,6),(64,89,16),(65,91,6),(66,93,6),(67,96,6),(68,98,6),(69,100,1),(70,101,17),(71,102,6),(72,103,6),(73,104,1),(74,105,6),(75,112,1),(76,114,1),(77,115,1),(78,117,1),(79,120,14),(80,121,17),(81,124,1),(82,126,1),(83,128,1),(84,129,1),(85,130,6),(86,131,1),(87,132,6),(88,133,1),(89,134,6),(90,135,6),(91,136,1),(92,137,1),(93,138,1),(94,139,1),(95,140,1),(96,141,1),(97,142,1),(98,143,1),(99,145,1),(100,146,1),(101,147,1),(102,149,1),(103,150,1),(104,151,1),(105,152,1),(106,155,6),(107,156,6),(108,157,6),(109,158,6),(110,160,6),(111,161,6),(112,162,6),(113,163,6),(114,164,1),(115,165,1),(116,166,1),(117,167,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,2),(2,2,3),(3,3,2),(4,4,3),(5,6,2),(6,7,3),(7,8,2),(8,10,3),(9,15,2),(10,17,3),(11,19,2),(12,20,3),(13,30,2),(14,32,3),(15,34,2),(16,38,3),(17,45,2),(18,49,3),(19,53,5),(20,76,2),(21,78,3),(22,81,2),(23,84,3),(24,100,2),(25,104,3),(26,112,2),(27,114,3),(28,115,2),(29,117,3),(30,124,2),(31,126,3),(32,128,2),(33,129,3),(34,131,2),(35,133,3),(36,136,2),(37,137,3),(38,138,2),(39,139,3),(40,140,2),(41,141,3),(42,142,2),(43,143,3),(44,145,5),(45,146,2),(46,147,3),(47,149,2),(48,150,3),(49,151,2),(50,152,3),(51,164,2),(52,165,3),(53,166,2),(54,167,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,5,'com/pintu_zqbbpt/GameInfo'),(2,9,'org/android_iomscmz/image/PhotoGrid'),(3,13,'com/pintu_zqbbpt/GameService'),(4,14,'org/android_iomscmz/CMWfife2'),(5,16,'org/android_iomscmz/CMWfife2'),(6,18,'org/android_iomscmz/CMWfife2'),(7,21,'org/android_iomscmz/CMWfife2'),(8,22,'com/pintu_zqbbpt/GameService'),(9,23,'org/android_iomscmz/CMWfife12'),(10,27,'com/dfkjefo/wnracdu/GirlDiz'),(11,29,'com/pintu_zqbbpt/GameAlertDialog'),(12,35,'com/pintu_zqbbpt/GameService'),(13,37,'com/feQTMop/EfhCdluTkvoEsa'),(14,40,'com/pintu_zqbbpt/GameService'),(15,43,'com/feQTMop/BDoWuFdqIfmVo'),(16,48,'com/tqc/udgtctu/mhlltj/FamilyGuy'),(17,51,'org/android_iomscmz/CMWfife2'),(18,54,'com/dfkjefo/wnracdu/GirlDiz'),(19,55,'org/android_iomscmz/CMWfife2'),(20,56,'com/pintu_zqbbpt/GameService'),(21,57,'com/feQTMop/BDoWuFdqIfmVo'),(22,61,'com/tqc/udgtctu/mhlltj/FamilyGuy'),(23,60,'org/android_iomscmz/image/ShowImage'),(24,64,'com/nd/dianjin/activity/OfferAppActivity'),(25,65,'org/android_iomscmz/image/PhotoGrid'),(26,68,'com/sthibfnmvdsa/rkejnslle/GloftREDRActivity'),(27,69,'com/pintu_zqbbpt/GameService'),(28,70,'org/android_iomscmz/CMWfife2'),(29,72,'com/sthibfnmvdsa/rkejnslle/GloftREDRActivity'),(30,80,'com/feQTMop/QGaMmrUhd'),(31,86,'com/pintu_zqbbpt/GameService'),(32,88,'com/tqc/udgtctu/mhlltj/FamilyGuy'),(33,89,'com/pintu_zqbbpt/GameService'),(34,90,'org/android_iomscmz/image/PhotoGrid'),(35,92,'com/feQTMop/EfhCdluTkvoEsa'),(36,94,'com/pintu_zqbbpt/PintuActivity'),(37,95,'org/android_iomscmz/image/PhotoGrid'),(38,97,'org/android_iomscmz/CMWfife2'),(39,99,'com/nd/dianjin/activity/OfferAppActivity'),(40,101,'com/TkKea/MyAppService'),(41,106,'com/pintu_zqbbpt/GameService'),(42,107,'com/TkKea/MyAppService'),(43,109,'com/pintu_zqbbpt/PintuActivity'),(44,108,'org/android_iomscmz/CMWfife8'),(45,110,'com/tqc/udgtctu/mhlltj/FamilyGuy'),(46,111,'com/pintu_zqbbpt/PintuActivity'),(47,113,'com/pintu_zqbbpt/GameInfo'),(48,116,'com/pintu_zqbbpt/PintuActivity'),(49,118,'com/TkKea/MyAppService'),(50,119,'com/pintu_zqbbpt/PintuActivity'),(51,121,'com/TkKea/MyAppService'),(52,122,'com/TkKea/MyAppService'),(53,123,'org/android_iomscmz/CMWfife2'),(54,125,'org/android_iomscmz/CMWfife8'),(55,127,'org/android_iomscmz/image/PhotoGrid'),(56,144,'com/TkKea/NRorLrbWGUsQQpo'),(57,148,'com/TkKea/MyAppService'),(58,153,'com/TkKea/MyAppService'),(59,154,'com/funsuma/starpagga/StarPaggaApp'),(60,159,'com/TkKea/MyAppInfo'),(61,168,'com/funsuma/starpagga/StarPaggaApp'),(62,169,'com/funsuma/starpagga/StarPaggaApp'),(63,170,'com/TkKea/MyAppInfo'),(64,171,'com/TkKea/MyAppService'),(65,172,'com/TkKea/MyAppService');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,11,1),(2,12,2),(3,24,3),(4,25,4),(5,26,5),(6,28,6),(7,42,7),(8,47,8),(9,52,9),(10,58,10),(11,59,11),(12,63,12),(13,62,13),(14,66,14),(15,67,15),(16,71,16),(17,73,17),(18,74,18),(19,77,19),(20,79,20),(21,82,21),(22,83,22),(23,85,23),(24,87,24),(25,91,25),(26,93,26),(27,96,27),(28,98,28),(29,103,29),(30,102,30),(31,105,31),(32,130,32),(33,132,33),(34,134,34),(35,135,35),(36,155,36),(37,156,37),(38,157,38),(39,158,39),(40,160,40),(41,161,41),(42,162,42),(43,163,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'id'),(2,5,'from_alert'),(3,5,'detail_flag'),(4,23,'title'),(5,23,'btn_txt'),(6,23,'need_adb_flag'),(7,23,'cont'),(8,23,'close_flag'),(9,29,'title'),(10,29,'btn_txt'),(11,29,'need_adb_flag'),(12,29,'cont'),(13,29,'close_flag'),(14,31,'android.intent.extra.INTENT'),(15,33,'android.intent.extra.INTENT'),(16,36,'android.intent.extra.TITLE'),(17,36,'android.intent.extra.INTENT'),(18,39,'android.intent.extra.INTENT'),(19,41,'android.intent.extra.TITLE'),(20,41,'android.intent.extra.INTENT'),(21,44,'android.intent.extra.INTENT'),(22,46,'android.intent.extra.TITLE'),(23,46,'android.intent.extra.INTENT'),(24,50,'android.intent.extra.TITLE'),(25,50,'android.intent.extra.INTENT'),(26,60,'startid'),(27,60,'position'),(28,64,'oriention'),(29,80,'apkVersion'),(30,80,'apkURL'),(31,80,'apkInfo'),(32,80,'packageName'),(33,80,'apkSoftID'),(34,80,'apkTitle'),(35,80,'iconURL'),(36,80,'apkSize'),(37,80,'imageURL'),(38,99,'oriention'),(39,108,'id'),(40,108,'from_alert'),(41,108,'detail_flag'),(42,113,'game'),(43,113,'fromtype'),(44,125,'game'),(45,125,'fromtype'),(46,144,'popurl'),(47,144,'poptitle'),(48,159,'game'),(49,159,'fromtype'),(50,170,'id'),(51,170,'from_alert'),(52,170,'detail_flag');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,9,1),(10,10,1),(11,11,2),(12,13,1),(13,14,3),(14,16,1),(15,17,1),(16,18,1),(17,19,1),(18,21,1),(19,22,1),(20,23,2),(21,23,4),(22,24,4),(23,26,1),(24,27,5),(25,28,3),(26,29,7),(27,30,3),(28,31,3),(29,32,13),(30,33,1),(31,34,1),(32,35,1),(33,36,1),(34,37,1),(35,38,4),(36,39,6),(37,40,18),(38,41,2),(39,41,4),(40,42,3),(41,43,7),(42,44,7),(43,45,5),(44,46,19),(45,47,3),(46,48,7),(47,49,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,3,1),(4,3,2),(5,6,2),(6,10,2),(7,13,2),(8,16,2),(9,21,2),(10,22,2),(11,26,2),(12,29,4),(13,30,4),(14,31,4),(15,35,2),(16,35,3),(17,39,6),(18,39,1),(19,43,4),(20,47,4),(21,48,4);
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
INSERT INTO `IFData` VALUES (1,14,'package',NULL,NULL,NULL,NULL,NULL),(2,28,'package',NULL,NULL,NULL,NULL,NULL),(3,29,'package',NULL,NULL,NULL,NULL,NULL),(4,30,'package',NULL,NULL,NULL,NULL,NULL),(5,31,'package',NULL,NULL,NULL,NULL,NULL),(6,39,'gamesnsschema','sina',NULL,NULL,NULL,NULL),(7,39,'gamesnsschema','tencent',NULL,NULL,NULL,NULL),(8,39,'gamesnsschema','kaixin',NULL,NULL,NULL,NULL),(9,39,'gamesnsschema','renren',NULL,NULL,NULL,NULL),(10,42,'package',NULL,NULL,NULL,NULL,NULL),(11,43,'package',NULL,NULL,NULL,NULL,NULL),(12,44,'package',NULL,NULL,NULL,NULL,NULL),(13,47,'package',NULL,NULL,NULL,NULL,NULL),(14,48,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,11,'application','vnd.android.package-archive'),(2,12,'application','vnd.android.package-archive'),(3,24,'application','vnd.android.package-archive'),(4,25,'application','vnd.android.package-archive'),(5,26,'application','vnd.android.package-archive'),(6,28,'application','vnd.android.package-archive'),(7,42,'application','vnd.android.package-archive'),(8,47,'application','vnd.android.package-archive'),(9,52,'application','vnd.android.package-archive'),(10,58,'application','vnd.android.package-archive'),(11,62,'application','vnd.android.package-archive'),(12,66,'application','vnd.android.package-archive'),(13,67,'application','vnd.android.package-archive'),(14,71,'application','vnd.android.package-archive'),(15,73,'application','vnd.android.package-archive'),(16,74,'application','vnd.android.package-archive'),(17,77,'application','vnd.android.package-archive'),(18,79,'application','vnd.android.package-archive'),(19,82,'application','vnd.android.package-archive'),(20,83,'application','vnd.android.package-archive'),(21,85,'application','vnd.android.package-archive'),(22,87,'application','vnd.android.package-archive'),(23,93,'application','vnd.android.package-archive'),(24,98,'application','vnd.android.package-archive'),(25,102,'application','vnd.android.package-archive'),(26,134,'(.*)','(.*)'),(27,135,'(.*)','(.*)'),(28,157,'(.*)','(.*)'),(29,158,'(.*)','(.*)'),(30,162,'(.*)','(.*)'),(31,163,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'(.*)'),(2,2,''),(3,3,''),(4,4,'(.*)'),(5,5,'com.pintu_zqbbpt'),(6,6,'(.*)'),(7,7,''),(8,8,''),(9,9,'org.android_iomscmz'),(10,10,'(.*)'),(11,13,'com.pintu_zqbbpt'),(12,14,'org.android_iomscmz'),(13,15,'(.*)'),(14,16,'org.android_iomscmz'),(15,17,''),(16,18,'org.android_iomscmz'),(17,19,''),(18,20,'(.*)'),(19,21,'org.android_iomscmz'),(20,22,'com.pintu_zqbbpt'),(21,23,'org.android_iomscmz'),(22,27,'com.dfkjefo.wnracdu'),(23,30,'(.*)'),(24,29,'com.pintu_zqbbpt'),(25,32,'(.*)'),(26,34,'(.*)'),(27,35,'com.pintu_zqbbpt'),(28,37,'com.tqc.udgtctu.mhlltj'),(29,38,'(.*)'),(30,40,'com.pintu_zqbbpt'),(31,43,'com.tqc.udgtctu.mhlltj'),(32,45,'(.*)'),(33,48,'com.tqc.udgtctu.mhlltj'),(34,49,'(.*)'),(35,51,'org.android_iomscmz'),(36,54,'com.dfkjefo.wnracdu'),(37,55,'org.android_iomscmz'),(38,56,'com.pintu_zqbbpt'),(39,57,'com.tqc.udgtctu.mhlltj'),(40,61,'com.tqc.udgtctu.mhlltj'),(41,60,'org.android_iomscmz'),(42,64,'com.sthibfnmvdsa.rkejnslle'),(43,65,'org.android_iomscmz'),(44,68,'com.sthibfnmvdsa.rkejnslle'),(45,69,'com.pintu_zqbbpt'),(46,70,'org.android_iomscmz'),(47,72,'com.sthibfnmvdsa.rkejnslle'),(48,76,'(.*)'),(49,78,''),(50,81,''),(51,84,'(.*)'),(52,80,'com.tqc.udgtctu.mhlltj'),(53,86,'com.pintu_zqbbpt'),(54,88,'com.tqc.udgtctu.mhlltj'),(55,90,'org.android_iomscmz'),(56,89,'com.pintu_zqbbpt'),(57,92,'com.tqc.udgtctu.mhlltj'),(58,94,'com.pintu_zqbbpt'),(59,95,'org.android_iomscmz'),(60,97,'org.android_iomscmz'),(61,99,'com.dfkjefo.wnracdu'),(62,100,'(.*)'),(63,101,'com.rmktkrl.cvhokdaov'),(64,104,'(.*)'),(65,106,'com.pintu_zqbbpt'),(66,107,'com.rmktkrl.cvhokdaov'),(67,109,'com.pintu_zqbbpt'),(68,108,'org.android_iomscmz'),(69,110,'com.tqc.udgtctu.mhlltj'),(70,111,'com.pintu_zqbbpt'),(71,112,'(.*)'),(72,114,''),(73,113,'com.pintu_zqbbpt'),(74,115,''),(75,116,'com.pintu_zqbbpt'),(76,117,'(.*)'),(77,118,'com.rmktkrl.cvhokdaov'),(78,119,'com.pintu_zqbbpt'),(79,121,'com.rmktkrl.cvhokdaov'),(80,122,'com.rmktkrl.cvhokdaov'),(81,123,'org.android_iomscmz'),(82,124,'(.*)'),(83,125,'org.android_iomscmz'),(84,126,'(.*)'),(85,127,'org.android_iomscmz'),(86,128,'(.*)'),(87,129,''),(88,131,''),(89,133,'(.*)'),(90,136,'(.*)'),(91,137,''),(92,138,''),(93,139,'(.*)'),(94,140,'(.*)'),(95,141,''),(96,142,''),(97,143,'(.*)'),(98,144,'com.rmktkrl.cvhokdaov'),(99,146,'(.*)'),(100,147,'(.*)'),(101,148,'com.rmktkrl.cvhokdaov'),(102,149,'(.*)'),(103,150,''),(104,151,''),(105,152,'(.*)'),(106,153,'com.rmktkrl.cvhokdaov'),(107,154,'com.rmktkrl.cvhokdaov'),(108,159,'com.rmktkrl.cvhokdaov'),(109,164,'(.*)'),(110,165,''),(111,166,''),(112,167,'(.*)'),(113,168,'com.rmktkrl.cvhokdaov'),(114,169,'com.rmktkrl.cvhokdaov'),(115,170,'com.rmktkrl.cvhokdaov'),(116,171,'com.rmktkrl.cvhokdaov'),(117,172,'com.rmktkrl.cvhokdaov');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,7,0),(6,8,0),(7,9,0),(8,10,0),(9,11,0),(10,13,0),(11,14,0),(12,15,0),(13,20,0),(14,22,0),(15,23,0),(16,28,0),(17,30,0),(18,31,0),(19,32,0),(20,34,0),(21,36,0),(22,37,0),(23,39,0),(24,44,0),(25,45,0),(26,48,0),(27,50,0),(28,51,0),(29,10,0),(30,14,0),(31,10,0),(32,64,0),(33,69,0),(34,70,0),(35,73,0),(36,74,0),(37,75,0),(38,77,0),(39,81,0),(40,96,0),(41,97,0),(42,98,0),(43,14,0),(44,103,0),(45,104,0),(46,105,0),(47,39,0),(48,39,0),(49,106,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,1,1,0),(5,2,0,0),(6,3,1,0),(7,3,1,0),(8,3,1,0),(9,4,0,0),(10,3,1,0),(11,5,1,0),(12,5,1,0),(13,6,0,0),(14,7,0,0),(15,8,1,0),(16,7,0,0),(17,8,1,0),(18,9,0,0),(19,8,1,0),(20,8,1,0),(21,10,0,0),(22,11,0,0),(23,12,0,0),(24,13,1,0),(25,14,1,0),(26,13,1,0),(27,15,0,0),(28,14,1,0),(29,16,0,0),(30,17,1,0),(31,18,1,0),(32,17,1,0),(33,18,1,0),(34,19,1,0),(35,20,0,0),(36,18,1,0),(37,21,0,0),(38,19,1,0),(39,18,1,0),(40,22,0,0),(41,18,1,0),(42,23,1,0),(43,24,0,0),(44,18,1,0),(45,25,1,0),(46,18,1,0),(47,23,1,0),(48,26,0,0),(49,25,1,0),(50,18,1,0),(51,27,0,0),(52,29,1,0),(53,28,1,0),(54,30,0,0),(55,31,0,0),(56,32,0,0),(57,33,0,0),(58,34,1,0),(59,35,1,0),(60,36,0,0),(61,37,0,0),(62,34,1,0),(63,35,1,0),(64,38,0,0),(65,39,0,0),(66,34,1,0),(67,40,1,0),(68,41,0,0),(69,42,0,0),(70,43,0,0),(71,34,1,0),(72,44,0,0),(73,45,1,0),(74,34,1,0),(75,46,1,0),(76,47,1,0),(77,34,1,0),(78,47,1,0),(79,48,1,0),(80,49,0,0),(81,47,1,0),(82,34,1,0),(83,48,1,0),(84,47,1,0),(85,34,1,0),(86,50,0,0),(87,34,1,0),(88,51,0,0),(89,50,0,0),(90,52,0,0),(91,53,1,0),(92,54,0,0),(93,55,1,0),(94,57,0,0),(95,56,0,0),(96,53,1,0),(97,59,0,0),(98,58,1,0),(99,61,0,0),(100,62,1,0),(101,63,0,0),(102,58,1,0),(103,64,1,0),(104,62,1,0),(105,64,1,0),(106,66,0,0),(107,65,0,0),(108,67,0,0),(109,68,0,0),(110,69,0,0),(111,70,0,0),(112,71,1,0),(113,72,0,0),(114,71,1,0),(115,71,1,0),(116,73,0,0),(117,71,1,0),(118,74,0,0),(119,75,0,0),(120,76,1,0),(121,77,0,0),(122,78,0,0),(123,79,0,0),(124,80,1,0),(125,81,0,0),(126,80,1,0),(127,82,0,0),(128,83,1,0),(129,83,1,0),(130,84,1,0),(131,83,1,0),(132,84,1,0),(133,83,1,0),(134,84,1,0),(135,84,1,0),(136,85,1,0),(137,85,1,0),(138,85,1,0),(139,85,1,0),(140,86,1,0),(141,86,1,0),(142,86,1,0),(143,86,1,0),(144,87,0,0),(145,88,1,0),(146,89,1,0),(147,89,1,0),(148,90,0,0),(149,91,1,0),(150,91,1,0),(151,91,1,0),(152,91,1,0),(153,92,0,0),(154,93,0,0),(155,94,1,0),(156,94,1,0),(157,94,1,0),(158,94,1,0),(159,95,0,0),(160,96,1,0),(161,96,1,0),(162,96,1,0),(163,96,1,0),(164,97,1,0),(165,97,1,0),(166,97,1,0),(167,97,1,0),(168,98,0,0),(169,99,0,0),(170,101,0,0),(171,102,0,0),(172,103,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_CACHE_FILESYSTEM'),(13,'android.permission.ACCESS_COARSE_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(22,'android.permission.CAMERA'),(25,'android.permission.CHANGE_CONFIGURATION'),(24,'android.permission.CHANGE_NETWORK_STATE'),(23,'android.permission.CHANGE_WIFI_STATE'),(8,'android.permission.DELETE_CACHE_FILES'),(15,'android.permission.GET_ACCOUNTS'),(14,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(21,'android.permission.KILL_BACKGROUND_PROCESSES'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.RECEIVE_SMS'),(11,'android.permission.SET_WALLPAPER'),(17,'android.permission.SYSTEM_ALERT_WINDOW'),(18,'android.permission.VIBRATE'),(16,'android.permission.WAKE_LOCK'),(19,'android.permission.WRITE_APN_SETTINGS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(10,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://',NULL,NULL,NULL),(6,NULL,NULL,'file://',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'file://',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'file://',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://',NULL,NULL,NULL),(38,NULL,NULL,'file://',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'file://',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,1,9),(11,2,2),(12,1,10),(13,2,3),(14,2,4),(15,2,5),(16,2,6),(17,2,7),(18,2,8),(19,2,9),(20,2,10),(21,2,11),(22,3,1),(23,3,5),(24,3,6),(25,3,9),(26,3,12),(27,3,13),(28,4,16),(29,4,1),(30,4,2),(31,4,3),(32,4,5),(33,4,6),(34,4,9),(35,4,10),(36,4,12),(37,4,14),(38,4,15),(39,5,17),(40,5,1),(41,5,2),(42,5,18),(43,5,5),(44,5,6),(45,5,9),(46,5,12),(47,5,14),(48,6,1),(49,6,18),(50,6,5),(51,6,6),(52,6,9),(53,6,12),(54,7,1),(55,7,2),(56,7,3),(57,7,5),(58,7,6),(59,7,9),(60,7,10),(61,7,12),(62,7,14),(63,7,17),(64,7,16),(65,7,19),(66,7,21),(67,7,20),(68,7,23),(69,7,22),(70,7,25),(71,7,24);
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

-- Dump completed on 2015-10-09  0:39:34
