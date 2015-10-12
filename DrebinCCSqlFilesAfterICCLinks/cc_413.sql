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
) ENGINE=InnoDB AUTO_INCREMENT=1032 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,45,45,2,NULL),(2,49,45,2,NULL),(3,59,45,2,NULL),(4,63,45,2,NULL),(5,75,45,2,NULL),(6,34,45,2,NULL),(7,38,45,2,NULL),(8,103,45,2,NULL),(9,105,45,2,NULL),(10,120,45,2,NULL),(11,146,45,2,NULL),(12,147,45,2,NULL),(13,124,45,2,NULL),(14,126,45,2,NULL),(15,149,45,2,NULL),(16,150,45,2,NULL),(17,151,45,2,NULL),(18,152,45,2,NULL),(19,91,45,2,NULL),(20,96,45,2,NULL),(21,145,45,2,NULL),(22,53,45,2,NULL),(23,30,45,2,NULL),(24,32,45,2,NULL),(25,100,45,2,NULL),(26,104,45,2,NULL),(27,72,45,2,NULL),(28,68,45,2,NULL),(29,45,48,2,NULL),(30,49,48,2,NULL),(31,59,48,2,NULL),(32,63,48,2,NULL),(33,75,48,2,NULL),(34,34,48,2,NULL),(35,38,48,2,NULL),(36,103,48,2,NULL),(37,105,48,2,NULL),(38,120,48,2,NULL),(39,146,48,2,NULL),(40,147,48,2,NULL),(41,124,48,2,NULL),(42,126,48,2,NULL),(43,149,48,2,NULL),(44,150,48,2,NULL),(45,151,48,2,NULL),(46,152,48,2,NULL),(47,91,48,2,NULL),(48,96,48,2,NULL),(49,145,48,2,NULL),(50,53,48,2,NULL),(51,30,48,2,NULL),(52,32,48,2,NULL),(53,100,48,2,NULL),(54,104,48,2,NULL),(55,45,50,2,NULL),(56,49,50,2,NULL),(57,59,50,2,NULL),(58,63,50,2,NULL),(59,75,50,2,NULL),(60,34,50,2,NULL),(61,38,50,2,NULL),(62,103,50,2,NULL),(63,105,50,2,NULL),(64,120,50,2,NULL),(65,146,50,2,NULL),(66,147,50,2,NULL),(67,124,50,2,NULL),(68,126,50,2,NULL),(69,149,50,2,NULL),(70,150,50,2,NULL),(71,151,50,2,NULL),(72,152,50,2,NULL),(73,91,50,2,NULL),(74,96,50,2,NULL),(75,145,50,2,NULL),(76,53,50,2,NULL),(77,30,50,2,NULL),(78,32,50,2,NULL),(79,100,50,2,NULL),(80,104,50,2,NULL),(81,45,15,2,NULL),(82,49,15,2,NULL),(83,59,15,2,NULL),(84,63,15,2,NULL),(85,75,15,2,NULL),(86,34,15,2,NULL),(87,38,15,2,NULL),(88,103,15,2,NULL),(89,105,15,2,NULL),(90,120,15,2,NULL),(91,146,15,2,NULL),(92,147,15,2,NULL),(93,124,15,2,NULL),(94,126,15,2,NULL),(95,149,15,2,NULL),(96,150,15,2,NULL),(97,151,15,2,NULL),(98,152,15,2,NULL),(99,91,15,2,NULL),(100,96,15,2,NULL),(101,145,15,2,NULL),(102,53,15,2,NULL),(103,30,15,2,NULL),(104,32,15,2,NULL),(105,100,15,2,NULL),(106,104,15,2,NULL),(107,54,15,2,NULL),(108,27,15,2,NULL),(109,45,20,2,NULL),(110,49,20,2,NULL),(111,59,20,2,NULL),(112,63,20,2,NULL),(113,75,20,2,NULL),(114,34,20,2,NULL),(115,38,20,2,NULL),(116,103,20,2,NULL),(117,105,20,2,NULL),(118,120,20,2,NULL),(119,146,20,2,NULL),(120,147,20,2,NULL),(121,124,20,2,NULL),(122,126,20,2,NULL),(123,149,20,2,NULL),(124,150,20,2,NULL),(125,151,20,2,NULL),(126,152,20,2,NULL),(127,91,20,2,NULL),(128,96,20,2,NULL),(129,145,20,2,NULL),(130,53,20,2,NULL),(131,30,20,2,NULL),(132,32,20,2,NULL),(133,100,20,2,NULL),(134,104,20,2,NULL),(135,45,23,2,NULL),(136,49,23,2,NULL),(137,59,23,2,NULL),(138,63,23,2,NULL),(139,75,23,2,NULL),(140,34,23,2,NULL),(141,38,23,2,NULL),(142,103,23,2,NULL),(143,105,23,2,NULL),(144,120,23,2,NULL),(145,146,23,2,NULL),(146,147,23,2,NULL),(147,124,23,2,NULL),(148,126,23,2,NULL),(149,149,23,2,NULL),(150,150,23,2,NULL),(151,151,23,2,NULL),(152,152,23,2,NULL),(153,91,23,2,NULL),(154,96,23,2,NULL),(155,145,23,2,NULL),(156,53,23,2,NULL),(157,30,23,2,NULL),(158,32,23,2,NULL),(159,100,23,2,NULL),(160,104,23,2,NULL),(161,148,37,2,NULL),(162,171,37,2,NULL),(163,45,28,2,NULL),(164,49,28,2,NULL),(165,59,28,2,NULL),(166,63,28,2,NULL),(167,75,28,2,NULL),(168,34,28,2,NULL),(169,38,28,2,NULL),(170,103,28,2,NULL),(171,105,28,2,NULL),(172,120,28,2,NULL),(173,146,28,2,NULL),(174,147,28,2,NULL),(175,124,28,2,NULL),(176,126,28,2,NULL),(177,149,28,2,NULL),(178,150,28,2,NULL),(179,151,28,2,NULL),(180,152,28,2,NULL),(181,91,28,2,NULL),(182,96,28,2,NULL),(183,145,28,2,NULL),(184,53,28,2,NULL),(185,30,28,2,NULL),(186,32,28,2,NULL),(187,100,28,2,NULL),(188,104,28,2,NULL),(189,154,23,2,NULL),(190,107,37,2,NULL),(191,122,37,2,NULL),(192,146,1,2,NULL),(193,147,1,2,NULL),(194,146,2,2,NULL),(195,147,2,2,NULL),(196,146,4,2,NULL),(197,147,4,2,NULL),(198,45,30,2,NULL),(199,49,30,2,NULL),(200,59,30,2,NULL),(201,63,30,2,NULL),(202,75,30,2,NULL),(203,146,8,2,NULL),(204,147,8,2,NULL),(205,146,10,2,NULL),(206,147,10,2,NULL),(207,146,3,2,NULL),(208,147,3,2,NULL),(209,146,7,2,NULL),(210,147,7,2,NULL),(211,146,9,2,NULL),(212,147,9,2,NULL),(213,34,30,2,NULL),(214,38,30,2,NULL),(215,146,11,2,NULL),(216,147,11,2,NULL),(217,103,30,2,NULL),(218,105,30,2,NULL),(219,120,30,2,NULL),(220,146,13,2,NULL),(221,147,13,2,NULL),(222,146,14,2,NULL),(223,147,14,2,NULL),(224,146,31,2,NULL),(225,147,31,2,NULL),(226,124,30,2,NULL),(227,126,30,2,NULL),(228,146,32,2,NULL),(229,147,32,2,NULL),(230,149,30,2,NULL),(231,150,30,2,NULL),(232,151,30,2,NULL),(233,152,30,2,NULL),(234,91,30,2,NULL),(235,96,30,2,NULL),(236,145,30,2,NULL),(237,146,37,2,NULL),(238,147,37,2,NULL),(239,146,39,2,NULL),(240,147,39,2,NULL),(241,146,77,2,NULL),(242,147,77,2,NULL),(243,146,106,2,NULL),(244,45,64,2,NULL),(245,147,106,2,NULL),(246,49,64,2,NULL),(247,146,34,2,NULL),(248,59,64,2,NULL),(249,147,34,2,NULL),(250,63,64,2,NULL),(251,53,30,2,NULL),(252,75,64,2,NULL),(253,146,36,2,NULL),(254,34,64,2,NULL),(255,147,36,2,NULL),(256,38,64,2,NULL),(257,30,30,2,NULL),(258,103,64,2,NULL),(259,32,30,2,NULL),(260,105,64,2,NULL),(261,100,30,2,NULL),(262,120,64,2,NULL),(263,104,30,2,NULL),(264,146,64,2,NULL),(265,146,44,2,NULL),(266,147,64,2,NULL),(267,147,44,2,NULL),(268,124,64,2,NULL),(269,146,69,2,NULL),(270,126,64,2,NULL),(271,147,69,2,NULL),(272,149,64,2,NULL),(273,146,70,2,NULL),(274,150,64,2,NULL),(275,147,70,2,NULL),(276,151,64,2,NULL),(277,146,73,2,NULL),(278,152,64,2,NULL),(279,147,73,2,NULL),(280,91,64,2,NULL),(281,146,74,2,NULL),(282,96,64,2,NULL),(283,147,74,2,NULL),(284,145,64,2,NULL),(285,146,75,2,NULL),(286,53,64,2,NULL),(287,147,75,2,NULL),(288,30,64,2,NULL),(289,146,96,2,NULL),(290,32,64,2,NULL),(291,147,96,2,NULL),(292,100,64,2,NULL),(293,146,97,2,NULL),(294,104,64,2,NULL),(295,147,97,2,NULL),(296,45,69,2,NULL),(297,146,104,2,NULL),(298,49,69,2,NULL),(299,147,104,2,NULL),(300,59,69,2,NULL),(301,146,105,2,NULL),(302,63,69,2,NULL),(303,147,105,2,NULL),(304,75,69,2,NULL),(305,159,30,2,NULL),(306,34,69,2,NULL),(307,124,1,2,NULL),(308,38,69,2,NULL),(309,126,1,2,NULL),(310,103,69,2,NULL),(311,124,2,2,NULL),(312,105,69,2,NULL),(313,126,2,2,NULL),(314,120,69,2,NULL),(315,124,4,2,NULL),(316,124,69,2,NULL),(317,126,4,2,NULL),(318,126,69,2,NULL),(319,45,31,2,NULL),(320,149,69,2,NULL),(321,49,31,2,NULL),(322,150,69,2,NULL),(323,59,31,2,NULL),(324,151,69,2,NULL),(325,63,31,2,NULL),(326,152,69,2,NULL),(327,75,31,2,NULL),(328,91,69,2,NULL),(329,124,8,2,NULL),(330,96,69,2,NULL),(331,126,8,2,NULL),(332,145,69,2,NULL),(333,124,10,2,NULL),(334,53,69,2,NULL),(335,126,10,2,NULL),(336,30,69,2,NULL),(337,124,3,2,NULL),(338,32,69,2,NULL),(339,126,3,2,NULL),(340,100,69,2,NULL),(341,124,7,2,NULL),(342,104,69,2,NULL),(343,126,7,2,NULL),(344,45,70,2,NULL),(345,124,9,2,NULL),(346,49,70,2,NULL),(347,126,9,2,NULL),(348,59,70,2,NULL),(349,34,31,2,NULL),(350,63,70,2,NULL),(351,38,31,2,NULL),(352,75,70,2,NULL),(353,124,11,2,NULL),(354,34,70,2,NULL),(355,126,11,2,NULL),(356,38,70,2,NULL),(357,103,31,2,NULL),(358,103,70,2,NULL),(359,105,31,2,NULL),(360,105,70,2,NULL),(361,120,31,2,NULL),(362,120,70,2,NULL),(363,124,13,2,NULL),(364,124,70,2,NULL),(365,126,13,2,NULL),(366,126,70,2,NULL),(367,124,14,2,NULL),(368,149,70,2,NULL),(369,126,14,2,NULL),(370,150,70,2,NULL),(371,124,32,2,NULL),(372,151,70,2,NULL),(373,126,32,2,NULL),(374,152,70,2,NULL),(375,149,31,2,NULL),(376,91,70,2,NULL),(377,150,31,2,NULL),(378,96,70,2,NULL),(379,151,31,2,NULL),(380,145,70,2,NULL),(381,152,31,2,NULL),(382,53,70,2,NULL),(383,91,31,2,NULL),(384,30,70,2,NULL),(385,96,31,2,NULL),(386,32,70,2,NULL),(387,145,31,2,NULL),(388,100,70,2,NULL),(389,124,37,2,NULL),(390,104,70,2,NULL),(391,126,37,2,NULL),(392,45,73,2,NULL),(393,124,39,2,NULL),(394,49,73,2,NULL),(395,126,39,2,NULL),(396,59,73,2,NULL),(397,124,77,2,NULL),(398,53,1,2,NULL),(399,63,73,2,NULL),(400,126,77,2,NULL),(401,53,2,2,NULL),(402,75,73,2,NULL),(403,124,106,2,NULL),(404,53,4,2,NULL),(405,34,73,2,NULL),(406,126,106,2,NULL),(407,45,34,2,NULL),(408,38,73,2,NULL),(409,124,34,2,NULL),(410,49,34,2,NULL),(411,103,73,2,NULL),(412,126,34,2,NULL),(413,59,34,2,NULL),(414,105,73,2,NULL),(415,53,31,2,NULL),(416,63,34,2,NULL),(417,120,73,2,NULL),(418,124,36,2,NULL),(419,75,34,2,NULL),(420,124,73,2,NULL),(421,126,36,2,NULL),(422,126,73,2,NULL),(423,53,8,2,NULL),(424,30,31,2,NULL),(425,149,73,2,NULL),(426,53,10,2,NULL),(427,32,31,2,NULL),(428,150,73,2,NULL),(429,53,3,2,NULL),(430,100,31,2,NULL),(431,151,73,2,NULL),(432,104,31,2,NULL),(433,53,7,2,NULL),(434,152,73,2,NULL),(435,124,44,2,NULL),(436,53,9,2,NULL),(437,91,73,2,NULL),(438,126,44,2,NULL),(439,34,34,2,NULL),(440,96,73,2,NULL),(441,124,74,2,NULL),(442,38,34,2,NULL),(443,145,73,2,NULL),(444,126,74,2,NULL),(445,53,73,2,NULL),(446,53,11,2,NULL),(447,124,75,2,NULL),(448,30,73,2,NULL),(449,103,34,2,NULL),(450,126,75,2,NULL),(451,32,73,2,NULL),(452,105,34,2,NULL),(453,124,96,2,NULL),(454,100,73,2,NULL),(455,120,34,2,NULL),(456,126,96,2,NULL),(457,104,73,2,NULL),(458,53,13,2,NULL),(459,124,97,2,NULL),(460,45,74,2,NULL),(461,53,14,2,NULL),(462,126,97,2,NULL),(463,49,74,2,NULL),(464,124,104,2,NULL),(465,53,32,2,NULL),(466,59,74,2,NULL),(467,126,104,2,NULL),(468,149,34,2,NULL),(469,63,74,2,NULL),(470,124,105,2,NULL),(471,75,74,2,NULL),(472,150,34,2,NULL),(473,126,105,2,NULL),(474,34,74,2,NULL),(475,153,37,2,NULL),(476,151,34,2,NULL),(477,38,74,2,NULL),(478,149,1,2,NULL),(479,152,34,2,NULL),(480,103,74,2,NULL),(481,150,1,2,NULL),(482,91,34,2,NULL),(483,105,74,2,NULL),(484,151,1,2,NULL),(485,96,34,2,NULL),(486,120,74,2,NULL),(487,152,1,2,NULL),(488,145,34,2,NULL),(489,149,74,2,NULL),(490,149,2,2,NULL),(491,53,37,2,NULL),(492,150,74,2,NULL),(493,150,2,2,NULL),(494,53,39,2,NULL),(495,151,74,2,NULL),(496,151,2,2,NULL),(497,53,77,2,NULL),(498,152,74,2,NULL),(499,152,2,2,NULL),(500,53,106,2,NULL),(501,91,74,2,NULL),(502,149,4,2,NULL),(503,53,36,2,NULL),(504,96,74,2,NULL),(505,150,4,2,NULL),(506,30,34,2,NULL),(507,145,74,2,NULL),(508,151,4,2,NULL),(509,32,34,2,NULL),(510,53,74,2,NULL),(511,152,4,2,NULL),(512,100,34,2,NULL),(513,30,74,2,NULL),(514,45,32,2,NULL),(515,104,34,2,NULL),(516,32,74,2,NULL),(517,49,32,2,NULL),(518,53,44,2,NULL),(519,100,74,2,NULL),(520,59,32,2,NULL),(521,53,75,2,NULL),(522,104,74,2,NULL),(523,63,32,2,NULL),(524,53,96,2,NULL),(525,45,75,2,NULL),(526,53,97,2,NULL),(527,75,32,2,NULL),(528,49,75,2,NULL),(529,53,104,2,NULL),(530,149,8,2,NULL),(531,59,75,2,NULL),(532,150,8,2,NULL),(533,53,105,2,NULL),(534,63,75,2,NULL),(535,151,8,2,NULL),(536,37,38,2,NULL),(537,75,75,2,NULL),(538,152,8,2,NULL),(539,92,38,2,NULL),(540,34,75,2,NULL),(541,149,10,2,NULL),(542,45,36,2,NULL),(543,38,75,2,NULL),(544,49,36,2,NULL),(545,150,10,2,NULL),(546,103,75,2,NULL),(547,151,10,2,NULL),(548,59,36,2,NULL),(549,105,75,2,NULL),(550,152,10,2,NULL),(551,63,36,2,NULL),(552,120,75,2,NULL),(553,149,3,2,NULL),(554,75,36,2,NULL),(555,149,75,2,NULL),(556,34,36,2,NULL),(557,150,3,2,NULL),(558,150,75,2,NULL),(559,38,36,2,NULL),(560,151,3,2,NULL),(561,151,75,2,NULL),(562,152,3,2,NULL),(563,103,36,2,NULL),(564,152,75,2,NULL),(565,149,7,2,NULL),(566,105,36,2,NULL),(567,91,75,2,NULL),(568,120,36,2,NULL),(569,150,7,2,NULL),(570,96,75,2,NULL),(571,149,36,2,NULL),(572,151,7,2,NULL),(573,145,75,2,NULL),(574,150,36,2,NULL),(575,152,7,2,NULL),(576,30,75,2,NULL),(577,149,9,2,NULL),(578,151,36,2,NULL),(579,32,75,2,NULL),(580,150,9,2,NULL),(581,152,36,2,NULL),(582,100,75,2,NULL),(583,151,9,2,NULL),(584,91,36,2,NULL),(585,104,75,2,NULL),(586,96,36,2,NULL),(587,152,9,2,NULL),(588,45,96,2,NULL),(589,145,36,2,NULL),(590,34,32,2,NULL),(591,49,96,2,NULL),(592,38,32,2,NULL),(593,30,36,2,NULL),(594,59,96,2,NULL),(595,149,11,2,NULL),(596,32,36,2,NULL),(597,63,96,2,NULL),(598,150,11,2,NULL),(599,100,36,2,NULL),(600,75,96,2,NULL),(601,104,36,2,NULL),(602,151,11,2,NULL),(603,34,96,2,NULL),(604,152,11,2,NULL),(605,48,34,2,NULL),(606,38,96,2,NULL),(607,103,32,2,NULL),(608,61,34,2,NULL),(609,103,96,2,NULL),(610,105,32,2,NULL),(611,88,34,2,NULL),(612,105,96,2,NULL),(613,120,32,2,NULL),(614,110,34,2,NULL),(615,120,96,2,NULL),(616,149,13,2,NULL),(617,30,1,2,NULL),(618,149,96,2,NULL),(619,150,13,2,NULL),(620,32,1,2,NULL),(621,150,96,2,NULL),(622,100,1,2,NULL),(623,151,13,2,NULL),(624,151,96,2,NULL),(625,104,1,2,NULL),(626,152,13,2,NULL),(627,152,96,2,NULL),(628,149,14,2,NULL),(629,30,2,2,NULL),(630,91,96,2,NULL),(631,150,14,2,NULL),(632,32,2,2,NULL),(633,96,96,2,NULL),(634,151,14,2,NULL),(635,100,2,2,NULL),(636,145,96,2,NULL),(637,104,2,2,NULL),(638,152,14,2,NULL),(639,30,96,2,NULL),(640,30,4,2,NULL),(641,91,32,2,NULL),(642,32,96,2,NULL),(643,96,32,2,NULL),(644,32,4,2,NULL),(645,100,96,2,NULL),(646,145,32,2,NULL),(647,100,4,2,NULL),(648,104,96,2,NULL),(649,149,37,2,NULL),(650,104,4,2,NULL),(651,45,97,2,NULL),(652,30,8,2,NULL),(653,150,37,2,NULL),(654,49,97,2,NULL),(655,32,8,2,NULL),(656,151,37,2,NULL),(657,59,97,2,NULL),(658,152,37,2,NULL),(659,100,8,2,NULL),(660,63,97,2,NULL),(661,149,39,2,NULL),(662,104,8,2,NULL),(663,75,97,2,NULL),(664,150,39,2,NULL),(665,30,10,2,NULL),(666,34,97,2,NULL),(667,32,10,2,NULL),(668,151,39,2,NULL),(669,38,97,2,NULL),(670,100,10,2,NULL),(671,152,39,2,NULL),(672,103,97,2,NULL),(673,104,10,2,NULL),(674,149,77,2,NULL),(675,105,97,2,NULL),(676,30,3,2,NULL),(677,150,77,2,NULL),(678,120,97,2,NULL),(679,151,77,2,NULL),(680,32,3,2,NULL),(681,149,97,2,NULL),(682,152,77,2,NULL),(683,100,3,2,NULL),(684,150,97,2,NULL),(685,104,3,2,NULL),(686,149,106,2,NULL),(687,151,97,2,NULL),(688,150,106,2,NULL),(689,30,7,2,NULL),(690,152,97,2,NULL),(691,151,106,2,NULL),(692,32,7,2,NULL),(693,91,97,2,NULL),(694,152,106,2,NULL),(695,100,7,2,NULL),(696,96,97,2,NULL),(697,104,7,2,NULL),(698,30,32,2,NULL),(699,145,97,2,NULL),(700,30,9,2,NULL),(701,32,32,2,NULL),(702,30,97,2,NULL),(703,32,9,2,NULL),(704,100,32,2,NULL),(705,32,97,2,NULL),(706,104,32,2,NULL),(707,100,9,2,NULL),(708,100,97,2,NULL),(709,149,44,2,NULL),(710,104,9,2,NULL),(711,104,97,2,NULL),(712,150,44,2,NULL),(713,30,11,2,NULL),(714,45,104,2,NULL),(715,32,11,2,NULL),(716,151,44,2,NULL),(717,49,104,2,NULL),(718,100,11,2,NULL),(719,152,44,2,NULL),(720,59,104,2,NULL),(721,104,11,2,NULL),(722,149,104,2,NULL),(723,63,104,2,NULL),(724,150,104,2,NULL),(725,30,13,2,NULL),(726,75,104,2,NULL),(727,151,104,2,NULL),(728,32,13,2,NULL),(729,34,104,2,NULL),(730,152,104,2,NULL),(731,100,13,2,NULL),(732,38,104,2,NULL),(733,149,105,2,NULL),(734,104,13,2,NULL),(735,103,104,2,NULL),(736,30,14,2,NULL),(737,150,105,2,NULL),(738,105,104,2,NULL),(739,151,105,2,NULL),(740,32,14,2,NULL),(741,120,104,2,NULL),(742,152,105,2,NULL),(743,100,14,2,NULL),(744,91,104,2,NULL),(745,170,30,2,NULL),(746,104,14,2,NULL),(747,96,104,2,NULL),(748,91,1,2,NULL),(749,30,37,2,NULL),(750,145,104,2,NULL),(751,96,1,2,NULL),(752,32,37,2,NULL),(753,30,104,2,NULL),(754,91,2,2,NULL),(755,100,37,2,NULL),(756,32,104,2,NULL),(757,104,37,2,NULL),(758,96,2,2,NULL),(759,100,104,2,NULL),(760,30,39,2,NULL),(761,91,4,2,NULL),(762,104,104,2,NULL),(763,96,4,2,NULL),(764,32,39,2,NULL),(765,45,105,2,NULL),(766,91,8,2,NULL),(767,100,39,2,NULL),(768,49,105,2,NULL),(769,96,8,2,NULL),(770,104,39,2,NULL),(771,59,105,2,NULL),(772,30,77,2,NULL),(773,91,10,2,NULL),(774,63,105,2,NULL),(775,32,77,2,NULL),(776,96,10,2,NULL),(777,75,105,2,NULL),(778,91,3,2,NULL),(779,100,77,2,NULL),(780,34,105,2,NULL),(781,96,3,2,NULL),(782,104,77,2,NULL),(783,38,105,2,NULL),(784,91,7,2,NULL),(785,30,106,2,NULL),(786,103,105,2,NULL),(787,32,106,2,NULL),(788,96,7,2,NULL),(789,105,105,2,NULL),(790,100,106,2,NULL),(791,91,9,2,NULL),(792,120,105,2,NULL),(793,96,9,2,NULL),(794,104,106,2,NULL),(795,91,105,2,NULL),(796,91,11,2,NULL),(797,30,44,2,NULL),(798,96,105,2,NULL),(799,96,11,2,NULL),(800,32,44,2,NULL),(801,145,105,2,NULL),(802,100,44,2,NULL),(803,91,13,2,NULL),(804,30,105,2,NULL),(805,104,44,2,NULL),(806,96,13,2,NULL),(807,32,105,2,NULL),(808,91,14,2,NULL),(809,100,105,2,NULL),(810,104,105,2,NULL),(811,96,14,2,NULL),(812,80,40,2,NULL),(813,91,37,2,NULL),(814,45,44,2,NULL),(815,96,37,2,NULL),(816,49,44,2,NULL),(817,91,39,2,NULL),(818,59,44,2,NULL),(819,96,39,2,NULL),(820,63,44,2,NULL),(821,91,77,2,NULL),(822,75,44,2,NULL),(823,96,77,2,NULL),(824,34,44,2,NULL),(825,91,106,2,NULL),(826,38,44,2,NULL),(827,96,106,2,NULL),(828,103,44,2,NULL),(829,91,44,2,NULL),(830,105,44,2,NULL),(831,96,44,2,NULL),(832,120,44,2,NULL),(833,118,37,2,NULL),(834,145,44,2,NULL),(835,145,1,2,NULL),(836,145,2,2,NULL),(837,145,4,2,NULL),(838,145,8,2,NULL),(839,145,10,2,NULL),(840,145,3,2,NULL),(841,145,7,2,NULL),(842,145,9,2,NULL),(843,145,11,2,NULL),(844,145,13,2,NULL),(845,145,14,2,NULL),(846,145,37,2,NULL),(847,145,39,2,NULL),(848,145,77,2,NULL),(849,145,106,2,NULL),(850,45,37,2,NULL),(851,49,37,2,NULL),(852,59,37,2,NULL),(853,63,37,2,NULL),(854,75,37,2,NULL),(855,34,37,2,NULL),(856,38,37,2,NULL),(857,103,37,2,NULL),(858,105,37,2,NULL),(859,120,37,2,NULL),(860,101,37,2,NULL),(861,121,37,2,NULL),(862,172,37,2,NULL),(863,45,39,2,NULL),(864,49,39,2,NULL),(865,59,39,2,NULL),(866,63,39,2,NULL),(867,75,39,2,NULL),(868,34,39,2,NULL),(869,38,39,2,NULL),(870,103,39,2,NULL),(871,105,39,2,NULL),(872,120,39,2,NULL),(873,45,77,2,NULL),(874,49,77,2,NULL),(875,59,77,2,NULL),(876,63,77,2,NULL),(877,75,77,2,NULL),(878,34,77,2,NULL),(879,38,77,2,NULL),(880,103,77,2,NULL),(881,105,77,2,NULL),(882,120,77,2,NULL),(883,45,106,2,NULL),(884,49,106,2,NULL),(885,59,106,2,NULL),(886,63,106,2,NULL),(887,75,106,2,NULL),(888,34,106,2,NULL),(889,38,106,2,NULL),(890,103,106,2,NULL),(891,105,106,2,NULL),(892,120,106,2,NULL),(893,14,13,2,NULL),(894,16,13,2,NULL),(895,60,5,2,NULL),(896,123,13,2,NULL),(897,45,3,2,NULL),(898,49,3,2,NULL),(899,59,3,2,NULL),(900,63,3,2,NULL),(901,75,3,2,NULL),(902,34,3,2,NULL),(903,38,3,2,NULL),(904,103,3,2,NULL),(905,105,3,2,NULL),(906,120,3,2,NULL),(907,9,3,2,NULL),(908,51,13,2,NULL),(909,65,3,2,NULL),(910,70,13,2,NULL),(911,90,3,2,NULL),(912,95,3,2,NULL),(913,45,7,2,NULL),(914,49,7,2,NULL),(915,59,7,2,NULL),(916,63,7,2,NULL),(917,75,7,2,NULL),(918,34,7,2,NULL),(919,38,7,2,NULL),(920,103,7,2,NULL),(921,105,7,2,NULL),(922,120,7,2,NULL),(923,125,7,2,NULL),(924,34,1,2,NULL),(925,38,1,2,NULL),(926,34,2,2,NULL),(927,38,2,2,NULL),(928,34,4,2,NULL),(929,38,4,2,NULL),(930,45,9,2,NULL),(931,49,9,2,NULL),(932,59,9,2,NULL),(933,63,9,2,NULL),(934,75,9,2,NULL),(935,34,8,2,NULL),(936,38,8,2,NULL),(937,34,10,2,NULL),(938,38,10,2,NULL),(939,34,11,2,NULL),(940,38,11,2,NULL),(941,103,9,2,NULL),(942,105,9,2,NULL),(943,120,9,2,NULL),(944,34,13,2,NULL),(945,38,13,2,NULL),(946,34,14,2,NULL),(947,38,14,2,NULL),(948,97,13,2,NULL),(949,127,3,2,NULL),(950,45,11,2,NULL),(951,49,11,2,NULL),(952,59,11,2,NULL),(953,63,11,2,NULL),(954,75,11,2,NULL),(955,103,11,2,NULL),(956,105,11,2,NULL),(957,120,11,2,NULL),(958,23,12,2,NULL),(959,108,7,2,NULL),(960,103,1,2,NULL),(961,105,1,2,NULL),(962,120,1,2,NULL),(963,103,2,2,NULL),(964,105,2,2,NULL),(965,120,2,2,NULL),(966,103,4,2,NULL),(967,105,4,2,NULL),(968,120,4,2,NULL),(969,103,8,2,NULL),(970,105,8,2,NULL),(971,120,8,2,NULL),(972,103,10,2,NULL),(973,105,10,2,NULL),(974,120,10,2,NULL),(975,103,13,2,NULL),(976,105,13,2,NULL),(977,120,13,2,NULL),(978,103,14,2,NULL),(979,105,14,2,NULL),(980,120,14,2,NULL),(981,45,13,2,NULL),(982,49,13,2,NULL),(983,59,13,2,NULL),(984,63,13,2,NULL),(985,75,13,2,NULL),(986,18,13,2,NULL),(987,21,13,2,NULL),(988,55,13,2,NULL),(989,45,14,2,NULL),(990,49,14,2,NULL),(991,59,14,2,NULL),(992,63,14,2,NULL),(993,75,14,2,NULL),(994,56,8,2,NULL),(995,86,8,2,NULL),(996,89,8,2,NULL),(997,45,1,2,NULL),(998,49,1,2,NULL),(999,59,1,2,NULL),(1000,63,1,2,NULL),(1001,75,1,2,NULL),(1002,35,8,2,NULL),(1003,94,1,2,NULL),(1004,106,8,2,NULL),(1005,109,1,2,NULL),(1006,111,1,2,NULL),(1007,119,1,2,NULL),(1008,45,2,2,NULL),(1009,49,2,2,NULL),(1010,59,2,2,NULL),(1011,63,2,2,NULL),(1012,75,2,2,NULL),(1013,113,2,2,NULL),(1014,59,4,2,NULL),(1015,63,4,2,NULL),(1016,75,4,2,NULL),(1017,45,8,2,NULL),(1018,49,8,2,NULL),(1019,45,10,2,NULL),(1020,49,10,2,NULL),(1021,5,2,2,NULL),(1022,29,6,2,NULL),(1023,59,8,2,NULL),(1024,63,8,2,NULL),(1025,75,8,2,NULL),(1026,59,10,2,NULL),(1027,63,10,2,NULL),(1028,75,10,2,NULL),(1029,13,8,2,NULL),(1030,22,8,2,NULL),(1031,40,8,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:24
