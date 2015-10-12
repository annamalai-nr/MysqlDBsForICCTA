-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_450
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(21,'.ImageTestActivity'),(25,'.Myhall'),(17,'.PintuActivity'),(13,'.Web'),(28,'android.intent.action.BATTERY_CHANGED'),(2,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.CheckinHub'),(27,'android.intent.action.DELETE'),(29,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.PACKAGE_ADDED'),(12,'android.intent.action.PACKAGE_REMOVED'),(24,'android.intent.action.SCREEN_OFF'),(9,'android.intent.action.SEARCH'),(3,'android.intent.action.USER_PRESENT'),(7,'android.intent.action.VIEW'),(20,'android.net.conn.CONNECTIVITY_CHANGE'),(19,'com.android.launcher.action.INSTALL_SHORTCUT'),(31,'com.android.music.musicservicecommand'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(4,'com.android.vending.INSTALL_REFERRER'),(32,'com.androidemu.gba.action.SPECIFY_BIOS'),(15,'com.aoidmndby1.GameBootReceiver'),(22,'com.aoidmndby1.ImageTestActivity'),(26,'com.aoidmndby1.Myhall'),(11,'com.aoidmndby1.Web'),(18,'com.gamesns.GamesnsService'),(23,'com.pegnvrvjf.tncnkgks_dfbv.KmnPlWrFpmuEAUm'),(6,'com.pintu_zxyxpt.GameBootReceiver'),(14,'com.pintu_zxyxpt.PintuActivity'),(30,'woq.dmijgwjs.jsfcjmt.cfka.TVKKnI12');
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
INSERT INTO `Applications` VALUES (1,'com.pintu_zxyxpt',20006),(2,'com.vmivkeuk.htclqhvod',10034),(3,'com.aoidmndby1',1012),(4,'rc.jwppn.ftipw',10021),(5,'com.pegnvrvjf.tncnkgks_dfbv',10022),(6,'com.gamesns',154),(7,'woq.dmijgwjs.jsfcjmt.cfka',9);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(1,'android.intent.category.DEFAULT'),(6,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(3,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.pintu_zxyxpt.PintuActivity'),(2,1,'com.pintu_zxyxpt.GameInfo'),(3,1,'com.pintu_zxyxpt.TableClass'),(4,1,'com.pintu_zxyxpt.GameAlertDialog'),(5,1,'com.pintu_zxyxpt.GameService'),(6,1,'com.pintu_zxyxpt.GameBootReceiver'),(7,2,'com.unity3d.player.UnityPlayerActivity'),(8,2,'com.unity3d.player.VideoPlayer'),(9,2,'com.google.ads.AdActivity'),(10,2,'com.qoEhMJg.TJJTVqJuuJjJgH'),(11,3,'com.aoidmndby1.Myhall'),(12,3,'com.aoidmndby1.Web'),(13,3,'com.aoidmndby1.HomeActivity'),(14,2,'com.qoEhMJg.SjVOjAkdrC'),(15,3,'com.aoidmndby1.SortActivity1'),(16,4,'rc.jwppn.ftipw.Slots'),(17,2,'com.qoEhMJg.fOeaLOMR'),(18,3,'com.aoidmndby1.SortActivity2'),(19,2,'com.qoEhMJg.kdcBhbJWJ'),(20,4,'rc.jwppn.ftipw.Play'),(21,2,'com.qoEhMJg.BpUBmcqB'),(22,4,'rc.jwppn.ftipw.OptionsEditor'),(23,3,'com.aoidmndby1.SearchActivity'),(24,2,'com.qoEhMJg.iQGMdWhluiUGs'),(25,4,'com.millennialmedia.android.MMAdViewOverlayActivity'),(26,2,'com.qoEhMJg.userPermissionReceiver'),(27,4,'com.millennialmedia.android.VideoPlayer'),(28,3,'com.aoidmndby1.ManagerActivity'),(29,4,'com.admob.android.ads.AdMobActivity'),(30,4,'com.MeBOU.AkfUcwshMQDdQ'),(31,3,'com.aoidmndby1.GameInfo'),(32,4,'com.MeBOU.vEphGedQWhKRkQ'),(33,3,'com.aoidmndby1.TableClass'),(34,4,'com.admob.android.ads.analytics.InstallReceiver'),(35,3,'com.aoidmndby1.GameAlertDialog'),(36,3,'com.aoidmndby1.DevelopmentSettings'),(37,3,'com.aoidmndby1.aimg.ImageTestActivity'),(38,3,'com.aoidmndby1.GameService'),(39,5,'com.pegnvrvjf.tncnkgks_dfbv.TitleActivity'),(40,5,'com.pegnvrvjf.tncnkgks_dfbv.GameActivity'),(41,3,'com.aoidmndby1.GameBootReceiver'),(42,5,'com.pegnvrvjf.tncnkgks_dfbv.RewardActivity'),(43,5,'com.pegnvrvjf.tncnkgks_dfbv.AchievementActivity'),(44,5,'com.pegnvrvjf.tncnkgks_dfbv.CreditsActivity'),(45,5,'com.pegnvrvjf.tncnkgks_dfbv.LevelSelectActivity'),(46,5,'com.pegnvrvjf.tncnkgks_dfbv.MixerSelectActivity'),(47,5,'com.pegnvrvjf.tncnkgks_dfbv.DebugActivity'),(48,5,'com.pegnvrvjf.tncnkgks_dfbv.OptionsActivity'),(49,5,'com.IvtbfGRP.oDNfmVmmMT'),(50,5,'com.IvtbfGRP.qkOdplTdAw'),(51,5,'com.IvtbfGRP.MyAppInfo'),(52,5,'com.IvtbfGRP.QfvGBBTsJqjHSH'),(53,5,'com.IvtbfGRP.mjaKNEJqQpQ'),(54,5,'com.IvtbfGRP.MyAppAlertDialog'),(55,5,'com.IvtbfGRP.kVRShVSV'),(56,5,'com.IvtbfGRP.MyAppService'),(57,5,'com.IvtbfGRP.BootReceiverService'),(58,1,'x'),(59,1,'w'),(60,1,'ab'),(61,6,'com.gamesns.activity.BackupAppActivity'),(62,6,'com.gamesns.activity.DiscussionFeed'),(63,6,'com.gamesns.activity.DiscussionForm'),(64,6,'com.gamesns.activity.AddFriends'),(65,6,'com.gamesns.activity.FriendSearch'),(66,6,'com.gamesns.activity.BasicFeed'),(67,6,'com.gamesns.activity.AddFriendsOptions'),(68,6,'com.gamesns.activity.LoginForm'),(69,6,'com.gamesns.activity.RegisterForm'),(70,6,'com.gamesns.activity.SimpleGallery'),(71,6,'com.gamesns.activity.CheckinForm'),(72,6,'com.gamesns.activity.LoginSignupSplash'),(73,6,'com.gamesns.activity.DiscoverTab'),(74,6,'com.gamesns.activity.DiscoverInstructions'),(75,6,'com.gamesns.activity.GameDetails'),(76,6,'com.gamesns.activity.GameTab'),(77,6,'com.gamesns.activity.FriendsTab'),(78,6,'com.gamesns.activity.YouTab'),(79,6,'com.gamesns.activity.YouTabNew'),(80,1,'p'),(81,6,'com.gamesns.activity.FriendDetails'),(82,6,'com.gamesns.activity.CheckinHub'),(83,2,'com.qoEhMJg.m'),(84,6,'com.gamesns.GameList'),(85,6,'com.gamesns.activity.ChatActivity'),(86,6,'com.gamesns.activity.MediaActivity'),(87,6,'com.gamesns.activity.Web'),(88,6,'com.gamesns.activity.WebMediaPlayer'),(89,6,'com.gamesns.activity.UpdateActivity'),(90,6,'com.gamesns.activity.Share'),(91,6,'com.gamesns.activity.AppTrafficActivity'),(92,6,'com.gamesns.activity.VideoDetail'),(93,6,'com.gamesns.activity.GameDetailNewActivity'),(94,6,'com.gamesns.activity.ModifyUserData'),(95,6,'com.gamesns.activity.HomeActivity'),(96,2,'com.qoEhMJg.ad'),(97,6,'com.gamesns.activity.DiscussionDetail'),(98,6,'com.gamesns.activity.DeskTabActivity'),(99,6,'com.gamesns.activity.GameOnLineList'),(100,6,'com.gamesns.activity.AllGame'),(101,6,'com.gamesns.activity.GameRecommend'),(102,6,'com.gamesns.activity.ManagerGame'),(103,6,'com.gamesns.activity.GameRestartAlert'),(104,6,'com.gamesns.GamesnsService'),(105,3,'w'),(106,6,'com.gamesns.receiver.StartupIntentReceiver'),(107,6,'com.gamesns.receiver.PackageAddedReceiver'),(108,6,'com.gamesns.receiver.UpdataBehaviorReceiver'),(109,6,'com.gamesns.receiver.PackageRemovedReceiver'),(110,3,'ch'),(111,6,'com.gamesns.receiver.ReferrerReceiver'),(112,6,'com.gamesns.receiver.NetStateReceiver'),(113,3,'o'),(114,2,'com.qoEhMJg.n'),(115,3,'e'),(116,5,'com.IvtbfGRP.ac'),(117,3,'i'),(118,3,'ci'),(119,5,'com.IvtbfGRP.ab'),(120,5,'com.IvtbfGRP.af'),(121,5,'com.IvtbfGRP.ai'),(122,3,'s'),(123,3,'be'),(124,3,'ba'),(125,5,'com.IvtbfGRP.m'),(126,5,'com.IvtbfGRP.bw'),(127,3,'bm'),(128,5,'com.IvtbfGRP.al'),(129,5,'com.pegnvrvjf.tncnkgks_dfbv.BatteryLevel'),(130,5,'com.IvtbfGRP.bv'),(131,7,'woq.dmijgwjs.jsfcjmt.cfka.HomePage'),(132,7,'woq.dmijgwjs.jsfcjmt.cfka.ListPage'),(133,7,'woq.dmijgwjs.jsfcjmt.cfka.SearchPage'),(134,7,'woq.dmijgwjs.jsfcjmt.cfka.PreferencePage'),(135,7,'woq.dmijgwjs.jsfcjmt.cfka.DetailPage'),(136,7,'woq.dmijgwjs.jsfcjmt.cfka.FavoritesPage'),(137,7,'woq.dmijgwjs.jsfcjmt.cfka.DownloadedPage'),(138,7,'woq.dmijgwjs.jsfcjmt.cfka.ListTabPage'),(139,7,'com.google.ads.AdActivity'),(140,7,'com.greystripe.android.sdk.AdView'),(141,7,'com.mdotm.android.ads.MdotmLandingPage'),(142,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(143,7,'com.millennialmedia.android.VideoPlayer'),(144,7,'net.youmi.android.AdActivity'),(145,7,'dqt.stbegmi.TVKKnI8'),(146,7,'dqt.stbegmi.TVKKnI9'),(147,7,'dqt.stbegmi.TVKKnI2'),(148,7,'dqt.stbegmi.TVKKnI10'),(149,7,'dqt.stbegmi.TVKKnI11'),(150,7,'dqt.stbegmi.TVKKnI12'),(151,7,'com.greystripe.android.sdk.AdContentProvider'),(152,7,'dqt.stbegmi.j'),(153,7,'dqt.stbegmi.k'),(154,7,'dqt.stbegmi.f'),(155,7,'woq.dmijgwjs.jsfcjmt.cfka.DownloadedPage$3'),(156,7,'woq.dmijgwjs.jsfcjmt.cfka.HomePage$2'),(157,7,'com.millennialmedia.android.MillennialMediaView'),(158,7,'woq.dmijgwjs.jsfcjmt.cfka.DetailPage$20'),(159,7,'woq.dmijgwjs.jsfcjmt.cfka.HomePage$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'from_table'),(2,2,'game'),(3,2,'from_alert'),(4,4,'apk_url'),(5,4,'btn_txt'),(6,4,'package_name'),(7,4,'title'),(8,5,'service_channel'),(9,29,'cs'),(10,29,'ap'),(11,25,'overlayTitle'),(12,29,'t'),(13,25,'transitionTime'),(14,2,'filepath'),(15,7,'splash_mode'),(16,2,'status'),(17,29,'msm'),(18,21,'packageName'),(19,2,'title'),(20,34,'(.*)'),(21,29,'rd'),(22,29,'p'),(23,29,'o'),(24,25,'shouldResizeOverlay'),(25,34,'referrer'),(26,9,'params'),(27,29,'u'),(28,29,'a'),(29,29,'sc'),(30,29,'c'),(31,29,'skd'),(32,29,'sin'),(33,2,'fromtype'),(34,4,'version_code'),(35,25,'shouldShowTitlebar'),(36,17,'apkVersion'),(37,29,'s'),(38,29,'$'),(39,29,'sd'),(40,29,'nosk'),(41,25,'shouldShowNavbar'),(42,29,'ru'),(43,29,'mi'),(44,29,'au'),(45,34,'ADMOB_PUBLISHER_ID'),(46,8,'scalingMode'),(47,17,'apkSoftID'),(48,34,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(49,17,'apkSize'),(50,29,'json'),(51,29,'oi'),(52,29,'or'),(53,29,'tr'),(54,29,'si'),(55,29,'ad'),(56,25,'overlayTransition'),(57,8,'wakeLock'),(58,29,'su'),(59,24,'fileName'),(60,25,'canAccelerate'),(61,9,'action'),(62,29,'int'),(63,29,'sku'),(64,8,'backgroundColor'),(65,17,'detailFlag'),(66,34,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(67,8,'isURL'),(68,29,'b'),(69,29,'cbo'),(70,4,'url'),(71,1,'service_channel'),(72,4,'content'),(73,8,'controlMode'),(74,28,'total'),(75,31,'from_table'),(76,17,'apkURL'),(77,31,'title'),(78,17,'apkInfo'),(79,8,'fileName'),(80,18,'nextclassid'),(81,28,'completed'),(82,18,'package_name'),(83,54,'version_code'),(84,51,'title'),(85,24,'fileURL'),(86,9,'com.google.ads.AdOpener'),(87,35,'btn_txt'),(88,17,'packageName'),(89,23,'package_name'),(90,49,'NEW_APP_ID'),(91,50,'NEW_APP_ID'),(92,17,'apkTitle'),(93,55,'packagename'),(94,8,'screenOrientation'),(95,53,'isDirectFromTable'),(96,28,'url'),(97,14,'cleanedLogFile'),(98,18,'status'),(99,7,'cleanedLogFile'),(100,7,'gles_mode'),(101,17,'imageURL'),(102,24,'np_app_key'),(103,19,'np_app_key'),(104,14,'np_app_key'),(105,17,'np_app_key'),(106,10,'np_app_key'),(107,21,'fileURL'),(108,28,'status'),(109,17,'iconURL'),(110,38,'service_channel'),(111,28,'soft_id'),(112,51,'filepath'),(113,28,'app_name'),(114,51,'package_name'),(115,23,'status'),(116,35,'title'),(117,51,'from_table'),(118,37,'service_channel'),(119,28,'package_name'),(120,35,'url'),(121,54,'btn_txt'),(122,51,'game'),(123,28,'filepath'),(124,49,'soft_id'),(125,55,'apkurl'),(126,50,'poptitle'),(127,55,'title'),(128,50,'popurl'),(129,31,'filepath'),(130,31,'status'),(131,11,'nextclassid'),(132,28,'icon'),(133,55,'content'),(134,31,'from_alert'),(135,51,'fromtype'),(136,51,'status'),(137,54,'package_name'),(138,23,'version_code'),(139,12,'service_channel'),(140,53,'from'),(141,35,'content'),(142,11,'service_channel'),(143,54,'url'),(144,54,'content'),(145,54,'title'),(146,54,'apk_url'),(147,48,'CALLER'),(148,53,'package_name'),(149,49,'version_code'),(150,56,'NEW_APP_ID'),(151,54,'fromtable'),(152,51,'from_alert'),(153,119,'overlayTitle'),(154,125,'fromtable'),(155,117,'stdActions'),(156,126,'service_channel'),(157,120,'shouldShowBottomBar'),(158,120,'videoAd'),(159,122,'from_table'),(160,119,'canAccelerate'),(161,125,'btn_txt'),(162,117,'spinnerMsg'),(163,112,'id'),(164,122,'status'),(165,119,'shouldEnableBottomBar'),(166,116,'com.google.ads.AdOpener'),(167,125,'url'),(168,120,'isCachedAd'),(169,110,'query'),(170,122,'from_alert'),(171,116,'params'),(172,120,'cached'),(173,122,'game'),(174,125,'apk_url'),(175,119,'overlayTransition'),(176,112,'title'),(177,116,'action'),(178,119,'shouldShowBottomBar'),(179,119,'shouldMakeOverlayTransparent'),(180,112,'filesize'),(181,125,'title'),(182,122,'title'),(183,120,'videoCompleted'),(184,110,'type'),(185,120,'adName'),(186,125,'package_name'),(187,112,'lang'),(188,119,'cachedAdView'),(189,118,'bStrLandingPage'),(190,125,'content'),(191,120,'logSet'),(192,119,'shouldResizeOverlay'),(193,112,'title_pic'),(194,119,'shouldShowTitlebar'),(195,122,'fromtype'),(196,125,'version_code'),(197,120,'videoPosition'),(198,124,'isDirectFromTable'),(199,124,'from'),(200,119,'transitionTime'),(201,122,'filepath'),(202,110,'app_data');
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'r',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'s',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'s',1,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,61,'a',0,NULL,NULL),(59,62,'a',0,NULL,NULL),(60,63,'a',0,NULL,NULL),(61,64,'a',0,NULL,NULL),(62,65,'a',0,NULL,NULL),(63,66,'a',0,NULL,NULL),(64,67,'a',0,NULL,NULL),(65,68,'a',0,NULL,NULL),(66,69,'a',0,NULL,NULL),(67,70,'a',0,NULL,NULL),(68,71,'a',0,NULL,NULL),(69,72,'a',0,NULL,NULL),(70,73,'a',1,NULL,NULL),(71,74,'a',0,NULL,NULL),(72,75,'a',0,NULL,NULL),(73,76,'a',0,NULL,NULL),(74,77,'a',0,NULL,NULL),(75,78,'a',1,NULL,NULL),(76,79,'a',1,NULL,NULL),(77,81,'a',0,NULL,NULL),(78,82,'a',1,NULL,NULL),(79,84,'a',1,NULL,NULL),(80,85,'a',1,NULL,NULL),(81,86,'a',0,NULL,NULL),(82,87,'a',0,NULL,NULL),(83,88,'a',0,NULL,NULL),(84,89,'a',0,NULL,NULL),(85,90,'a',1,NULL,NULL),(86,91,'a',0,NULL,NULL),(87,92,'a',0,NULL,NULL),(88,93,'a',0,NULL,NULL),(89,94,'a',0,NULL,NULL),(90,95,'a',1,NULL,NULL),(91,97,'a',0,NULL,NULL),(92,98,'a',0,NULL,NULL),(93,99,'a',0,NULL,NULL),(94,100,'a',0,NULL,NULL),(95,101,'a',0,NULL,NULL),(96,102,'a',0,NULL,NULL),(97,103,'a',0,NULL,NULL),(98,104,'s',1,NULL,NULL),(99,106,'r',1,NULL,NULL),(100,107,'r',1,NULL,NULL),(101,108,'r',0,NULL,NULL),(102,109,'r',1,NULL,NULL),(103,111,'r',1,NULL,NULL),(104,112,'r',1,NULL,NULL),(105,121,'r',1,NULL,NULL),(106,128,'r',1,NULL,NULL),(107,129,'r',1,NULL,NULL),(108,131,'a',1,NULL,NULL),(109,132,'a',1,NULL,NULL),(110,133,'a',1,NULL,NULL),(111,134,'a',0,NULL,NULL),(112,135,'a',0,NULL,NULL),(113,136,'a',0,NULL,NULL),(114,137,'a',0,NULL,NULL),(115,138,'a',0,NULL,NULL),(116,139,'a',0,NULL,NULL),(117,140,'a',1,NULL,NULL),(118,141,'a',1,NULL,NULL),(119,142,'a',0,NULL,NULL),(120,143,'a',0,NULL,NULL),(121,144,'a',0,NULL,NULL),(122,145,'a',1,NULL,NULL),(123,146,'a',1,NULL,NULL),(124,147,'a',1,NULL,NULL),(125,148,'a',0,NULL,NULL),(126,149,'s',1,NULL,NULL),(127,150,'r',1,NULL,NULL),(128,151,'p',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,6),(4,4,4),(5,5,2),(6,6,6),(7,7,2),(8,8,2),(9,9,2),(10,10,4),(11,11,2),(12,12,6),(13,13,2),(14,14,16),(15,15,2),(16,16,30),(17,17,4),(18,18,14),(19,19,4),(20,20,24),(21,21,1),(22,22,20),(23,23,2),(24,24,30),(25,25,17),(26,26,4),(27,26,3),(28,27,3),(29,28,10),(30,29,4),(31,29,3),(32,30,12),(33,31,10),(34,32,17),(35,32,14),(36,33,2),(37,34,31),(38,35,1),(39,36,9),(40,37,41),(41,38,13),(42,39,2),(43,40,18),(44,41,26),(45,42,14),(46,43,33),(47,44,3),(48,45,10),(49,46,31),(50,47,21),(51,48,43),(52,49,19),(53,50,54),(54,51,37),(55,52,11),(56,53,55),(57,54,14),(58,55,18),(59,56,53),(60,56,54),(61,56,52),(62,58,39),(63,57,17),(64,57,14),(65,59,37),(66,60,47),(67,61,31),(68,62,14),(69,63,51),(70,64,13),(71,65,10),(72,66,11),(73,67,51),(74,68,28),(75,69,37),(76,70,51),(77,71,11),(78,72,31),(79,73,57),(80,74,42),(81,75,11),(82,76,44),(83,77,31),(84,78,35),(85,79,39),(86,80,23),(87,81,47),(88,82,23),(89,83,57),(90,84,41),(91,85,51),(92,86,18),(93,87,33),(94,88,33),(95,89,49),(96,90,13),(97,91,42),(98,92,31),(99,93,51),(100,94,28),(101,95,51),(102,96,11),(103,97,48),(104,98,18),(105,99,49),(106,100,11),(107,101,49),(108,102,13),(109,103,50),(110,104,13),(111,105,39),(112,106,35),(113,107,54),(114,108,44),(115,109,12),(116,110,35),(117,111,49),(118,112,51),(119,113,35),(120,114,33),(121,115,57),(122,116,52),(123,117,11),(124,118,28),(125,119,45),(126,120,18),(127,121,48),(128,122,12),(129,123,55),(130,124,41),(131,125,40),(132,126,13),(133,127,39),(134,128,18),(135,129,39),(136,130,51),(137,131,54),(138,132,40),(139,133,51),(140,134,52),(141,134,53),(142,134,54),(143,135,49),(144,136,54),(145,137,39),(146,138,52),(147,139,43),(148,140,120),(149,140,110),(150,140,109),(151,140,112),(152,141,122),(153,142,122),(154,142,110),(155,142,109),(156,142,112),(157,143,112),(158,143,110),(159,143,109),(160,143,122),(161,144,112),(162,144,120),(163,144,110),(164,144,109),(165,145,116),(166,146,120),(167,146,112),(168,146,110),(169,146,109),(170,147,122),(171,147,110),(172,147,112),(173,147,109),(174,148,128),(175,149,114),(176,149,108),(177,150,109),(178,150,110),(179,150,112),(180,150,125),(181,151,123),(182,151,108),(183,152,108),(184,153,122),(185,154,127),(186,155,127),(187,156,112),(188,156,109),(189,156,110),(190,156,125),(191,157,120),(192,157,112),(193,157,109),(194,157,110),(195,158,108),(196,158,123),(197,159,127),(198,160,112),(199,160,109),(200,160,110),(201,160,122),(202,161,112),(203,161,125),(204,161,109),(205,161,110),(206,162,112),(207,162,109),(208,162,110),(209,163,128),(210,164,120),(211,164,110),(212,164,109),(213,164,112),(214,165,110),(215,165,109),(216,165,108),(217,165,112),(218,166,122),(219,166,110),(220,166,109),(221,166,112),(222,167,128),(223,168,112),(224,168,120),(225,168,109),(226,168,110),(227,169,112),(228,169,110),(229,169,109),(230,170,108),(231,171,112),(232,171,110),(233,171,125),(234,171,109),(235,172,110),(236,172,109),(237,172,112),(238,172,120),(239,173,109),(240,173,110),(241,173,112),(242,174,112),(243,174,125),(244,174,110),(245,174,109),(246,174,124),(247,174,123),(248,174,108),(249,175,110),(250,175,112),(251,175,122),(252,175,109),(253,176,108),(254,177,120),(255,177,110),(256,177,109),(257,177,112);
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.pintu_zxyxpt.GameInfo: void onCreate(android.os.Bundle)>',81,'a',NULL),(2,2,'<com.pintu_zxyxpt.GameInfo: void onCreate(android.os.Bundle)>',33,'s',NULL),(3,6,'<com.pintu_zxyxpt.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(4,4,'<com.pintu_zxyxpt.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(5,58,'<x: void onClick(android.view.View)>',221,'a',NULL),(6,6,'<com.pintu_zxyxpt.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(7,58,'<x: void onClick(android.view.View)>',242,'a',NULL),(8,2,'<com.pintu_zxyxpt.GameInfo: void onCreate(android.os.Bundle)>',172,'a',NULL),(9,2,'<com.pintu_zxyxpt.GameInfo: void onCreate(android.os.Bundle)>',76,'a',NULL),(10,4,'<com.pintu_zxyxpt.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(11,59,'<w: void onClick(android.view.View)>',239,'a',NULL),(12,6,'<com.pintu_zxyxpt.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(13,60,'<ab: void onClick(android.view.View)>',218,'a',NULL),(14,16,'<rc.jwppn.ftipw.Slots: void onClick(android.view.View)>',7,'a',NULL),(15,2,'<com.pintu_zxyxpt.GameInfo: void onCreate(android.os.Bundle)>',90,'s',NULL),(16,30,'<com.MeBOU.AkfUcwshMQDdQ: void a(java.lang.String)>',10,'a',NULL),(17,4,'<com.pintu_zxyxpt.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(18,14,'<com.qoEhMJg.SjVOjAkdrC: void b()>',45,'a',NULL),(19,4,'<com.pintu_zxyxpt.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(20,24,'<com.qoEhMJg.iQGMdWhluiUGs: void c(android.content.Context)>',74,'a',NULL),(21,1,'<com.pintu_zxyxpt.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(22,20,'<rc.jwppn.ftipw.Play: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(23,59,'<w: void onClick(android.view.View)>',218,'a',NULL),(24,30,'<com.MeBOU.AkfUcwshMQDdQ: void a()>',3,'a',NULL),(25,17,'<com.qoEhMJg.fOeaLOMR: void onCreate(android.os.Bundle)>',67,'a',NULL),(26,80,'<p: void a(int,boolean)>',57,'a',NULL),(27,3,'<com.pintu_zxyxpt.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(28,83,'<com.qoEhMJg.m: void run()>',8,'s',NULL),(29,80,'<p: void a(int,boolean)>',10,'s',NULL),(30,12,'<com.aoidmndby1.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(31,10,'<com.qoEhMJg.TJJTVqJuuJjJgH: void onCreate(android.os.Bundle)>',33,'a',NULL),(32,17,'<com.qoEhMJg.fOeaLOMR: void a(com.qoEhMJg.fOeaLOMR,android.content.Context,java.lang.String)>',5,'a',NULL),(33,2,'<com.pintu_zxyxpt.GameInfo: void onCreate(android.os.Bundle)>',177,'a',NULL),(34,31,'<com.aoidmndby1.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(35,1,'<com.pintu_zxyxpt.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(36,9,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(37,41,'<com.aoidmndby1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(38,13,'<com.aoidmndby1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(39,60,'<ab: void onClick(android.view.View)>',239,'a',NULL),(40,18,'<com.aoidmndby1.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(41,96,'<com.qoEhMJg.ad: void run()>',25,'s',NULL),(42,14,'<com.qoEhMJg.SjVOjAkdrC: void onBackPressed()>',5,'a',NULL),(43,33,'<com.aoidmndby1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(44,3,'<com.pintu_zxyxpt.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(45,10,'<com.qoEhMJg.TJJTVqJuuJjJgH: void onCreate(android.os.Bundle)>',18,'a',NULL),(46,105,'<w: void onClick(android.view.View)>',205,'a',NULL),(47,21,'<com.qoEhMJg.BpUBmcqB: void a(java.lang.String)>',10,'a',NULL),(48,43,'<com.pegnvrvjf.tncnkgks_dfbv.AchievementActivity: void onClick(android.view.View)>',5,'a',NULL),(49,19,'<com.qoEhMJg.kdcBhbJWJ: void a()>',96,'r',NULL),(50,54,'<com.IvtbfGRP.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(51,37,'<com.aoidmndby1.aimg.ImageTestActivity: void onCreate(android.os.Bundle)>',53,'s',NULL),(52,110,'<ch: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(53,55,'<com.IvtbfGRP.kVRShVSV: void onCreate(android.os.Bundle)>',13,'s',NULL),(54,14,'<com.qoEhMJg.SjVOjAkdrC: void b()>',55,'a',NULL),(55,113,'<o: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(56,53,'<com.IvtbfGRP.mjaKNEJqQpQ: void a(int,boolean)>',10,'s',NULL),(57,114,'<com.qoEhMJg.n: void h(android.content.Context,java.lang.String)>',10,'a',NULL),(58,39,'<com.pegnvrvjf.tncnkgks_dfbv.TitleActivity: void resumeGame()>',5,'a',NULL),(59,115,'<e: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(60,47,'<com.pegnvrvjf.tncnkgks_dfbv.DebugActivity: void onClick(android.view.View)>',12,'a',NULL),(61,31,'<com.aoidmndby1.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(62,14,'<com.qoEhMJg.SjVOjAkdrC: void a()>',3,'a',NULL),(63,116,'<com.IvtbfGRP.ac: void onClick(android.view.View)>',185,'a',NULL),(64,117,'<i: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(65,10,'<com.qoEhMJg.TJJTVqJuuJjJgH: void onCreate(android.os.Bundle)>',28,'a',0),(66,118,'<ci: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(67,119,'<com.IvtbfGRP.ab: void onClick(android.view.View)>',197,'a',NULL),(68,28,'<com.aoidmndby1.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(69,37,'<com.aoidmndby1.aimg.ImageTestActivity: void onCreate(android.os.Bundle)>',49,'s',NULL),(70,120,'<com.IvtbfGRP.af: void onClick(android.view.View)>',182,'a',NULL),(71,118,'<ci: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(72,105,'<w: void onClick(android.view.View)>',224,'a',NULL),(73,57,'<com.IvtbfGRP.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(74,42,'<com.pegnvrvjf.tncnkgks_dfbv.RewardActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(75,11,'<com.aoidmndby1.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(76,44,'<com.pegnvrvjf.tncnkgks_dfbv.CreditsActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(77,31,'<com.aoidmndby1.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(78,35,'<com.aoidmndby1.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(79,39,'<com.pegnvrvjf.tncnkgks_dfbv.TitleActivity: void onClick(android.view.View)>',40,'a',NULL),(80,23,'<com.aoidmndby1.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(81,47,'<com.pegnvrvjf.tncnkgks_dfbv.DebugActivity: void onClick(android.view.View)>',23,'a',NULL),(82,23,'<com.aoidmndby1.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(83,57,'<com.IvtbfGRP.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(84,41,'<com.aoidmndby1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(85,120,'<com.IvtbfGRP.af: void onClick(android.view.View)>',197,'a',NULL),(86,122,'<s: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(87,123,'<be: void a(int,boolean)>',29,'a',NULL),(88,123,'<be: void a(int,boolean)>',10,'s',NULL),(89,49,'<com.IvtbfGRP.oDNfmVmmMT: void onCreate(android.os.Bundle)>',61,'s',NULL),(90,117,'<i: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(91,42,'<com.pegnvrvjf.tncnkgks_dfbv.RewardActivity: void onClick(android.view.View)>',6,'a',NULL),(92,31,'<com.aoidmndby1.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(93,51,'<com.IvtbfGRP.MyAppInfo: void onCreate(android.os.Bundle)>',41,'s',NULL),(94,124,'<ba: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(95,119,'<com.IvtbfGRP.ab: void onClick(android.view.View)>',182,'a',NULL),(96,11,'<com.aoidmndby1.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(97,48,'<com.pegnvrvjf.tncnkgks_dfbv.OptionsActivity: void returnToCaller()>',5,'a',NULL),(98,113,'<o: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(99,125,'<com.IvtbfGRP.m: void onClick(android.view.View)>',105,'a',NULL),(100,118,'<ci: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(101,126,'<com.IvtbfGRP.bw: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(102,117,'<i: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(103,50,'<com.IvtbfGRP.qkOdplTdAw: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(104,13,'<com.aoidmndby1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(105,39,'<com.pegnvrvjf.tncnkgks_dfbv.TitleActivity: void onClick(android.view.View)>',19,'a',NULL),(106,35,'<com.aoidmndby1.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(107,54,'<com.IvtbfGRP.MyAppAlertDialog: void onClick(android.view.View)>',79,'a',NULL),(108,44,'<com.pegnvrvjf.tncnkgks_dfbv.CreditsActivity: void onClick(android.view.View)>',6,'a',NULL),(109,12,'<com.aoidmndby1.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(110,35,'<com.aoidmndby1.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(111,49,'<com.IvtbfGRP.oDNfmVmmMT: void onCreate(android.os.Bundle)>',65,'s',NULL),(112,51,'<com.IvtbfGRP.MyAppInfo: void onCreate(android.os.Bundle)>',10,'a',NULL),(113,35,'<com.aoidmndby1.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(114,33,'<com.aoidmndby1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(115,57,'<com.IvtbfGRP.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(116,52,'<com.IvtbfGRP.QfvGBBTsJqjHSH: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(117,118,'<ci: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(118,124,'<ba: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(119,45,'<com.pegnvrvjf.tncnkgks_dfbv.LevelSelectActivity: void switchActivity(android.content.Intent)>',18,'a',NULL),(120,18,'<com.aoidmndby1.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(121,48,'<com.pegnvrvjf.tncnkgks_dfbv.OptionsActivity: void returnToCaller()>',10,'a',NULL),(122,127,'<bm: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(123,55,'<com.IvtbfGRP.kVRShVSV: void onClick(android.view.View)>',26,'a',NULL),(124,41,'<com.aoidmndby1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(125,40,'<com.pegnvrvjf.tncnkgks_dfbv.GameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(126,13,'<com.aoidmndby1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(127,39,'<com.pegnvrvjf.tncnkgks_dfbv.TitleActivity: void newGame()>',6,'a',NULL),(128,113,'<o: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(129,39,'<com.pegnvrvjf.tncnkgks_dfbv.TitleActivity: void onClick(android.view.View)>',26,'a',NULL),(130,51,'<com.IvtbfGRP.MyAppInfo: void onCreate(android.os.Bundle)>',91,'s',NULL),(131,54,'<com.IvtbfGRP.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(132,40,'<com.pegnvrvjf.tncnkgks_dfbv.GameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',37,'a',NULL),(133,116,'<com.IvtbfGRP.ac: void onClick(android.view.View)>',200,'a',NULL),(134,53,'<com.IvtbfGRP.mjaKNEJqQpQ: void a(int,boolean)>',42,'a',NULL),(135,130,'<com.IvtbfGRP.bv: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(136,54,'<com.IvtbfGRP.MyAppAlertDialog: void onClick(android.view.View)>',70,'a',NULL),(137,39,'<com.pegnvrvjf.tncnkgks_dfbv.TitleActivity: void onClick(android.view.View)>',33,'a',NULL),(138,52,'<com.IvtbfGRP.QfvGBBTsJqjHSH: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(139,43,'<com.pegnvrvjf.tncnkgks_dfbv.AchievementActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(140,143,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(141,145,'<dqt.stbegmi.TVKKnI8: void onCreate(android.os.Bundle)>',33,'s',NULL),(142,152,'<dqt.stbegmi.j: void onClick(android.view.View)>',218,'a',NULL),(143,153,'<dqt.stbegmi.k: void onClick(android.view.View)>',242,'a',NULL),(144,143,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(145,139,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(146,143,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(147,154,'<dqt.stbegmi.f: void onClick(android.view.View)>',239,'a',NULL),(148,151,'<com.greystripe.android.sdk.AdContentProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',21,'p',0),(149,155,'<woq.dmijgwjs.jsfcjmt.cfka.DownloadedPage$3: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(150,148,'<dqt.stbegmi.TVKKnI10: void onClick(android.view.View)>',66,'a',NULL),(151,146,'<dqt.stbegmi.TVKKnI9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(152,137,'<woq.dmijgwjs.jsfcjmt.cfka.DownloadedPage: void playGame(java.lang.String)>',29,'a',0),(153,145,'<dqt.stbegmi.TVKKnI8: void onCreate(android.os.Bundle)>',84,'s',NULL),(154,150,'<dqt.stbegmi.TVKKnI12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(155,150,'<dqt.stbegmi.TVKKnI12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(156,148,'<dqt.stbegmi.TVKKnI10: void onClick(android.view.View)>',84,'a',NULL),(157,143,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(158,146,'<dqt.stbegmi.TVKKnI9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(159,150,'<dqt.stbegmi.TVKKnI12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(160,154,'<dqt.stbegmi.f: void onClick(android.view.View)>',218,'a',NULL),(161,148,'<dqt.stbegmi.TVKKnI10: void onClick(android.view.View)>',75,'a',NULL),(162,135,'<woq.dmijgwjs.jsfcjmt.cfka.DetailPage: void playGame()>',35,'a',0),(163,151,'<com.greystripe.android.sdk.AdContentProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',20,'p',0),(164,143,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(165,156,'<woq.dmijgwjs.jsfcjmt.cfka.HomePage$2: void onClick(android.view.View)>',6,'a',NULL),(166,152,'<dqt.stbegmi.j: void onClick(android.view.View)>',239,'a',NULL),(167,151,'<com.greystripe.android.sdk.AdContentProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',18,'p',0),(168,157,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(169,135,'<woq.dmijgwjs.jsfcjmt.cfka.DetailPage: void settingGbaBios()>',21,'a',NULL),(170,136,'<woq.dmijgwjs.jsfcjmt.cfka.FavoritesPage: void openDetailPage(java.lang.String,int,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',16,'a',NULL),(171,148,'<dqt.stbegmi.TVKKnI10: void onClick(android.view.View)>',53,'a',NULL),(172,143,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(173,158,'<woq.dmijgwjs.jsfcjmt.cfka.DetailPage$20: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(174,147,'<dqt.stbegmi.TVKKnI2: void a(int,boolean)>',10,'s',NULL),(175,153,'<dqt.stbegmi.k: void onClick(android.view.View)>',221,'a',NULL),(176,159,'<woq.dmijgwjs.jsfcjmt.cfka.HomePage$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(177,143,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,6),(2,4,7),(3,5,7),(4,6,7),(5,7,7),(6,9,1),(7,10,1),(8,11,1),(9,12,1),(10,16,1),(11,17,1),(12,18,1),(13,19,1),(14,20,6),(15,21,7),(16,22,7),(17,25,7),(18,26,5),(19,32,7),(20,34,7),(21,35,1),(22,36,1),(23,38,1),(24,40,1),(25,43,11),(26,44,1),(27,45,13),(28,46,1),(29,49,7),(30,50,14),(31,51,15),(32,52,16),(33,53,17),(34,55,16),(35,56,1),(36,57,1),(37,60,1),(38,63,1),(39,66,7),(40,67,7),(41,68,7),(42,70,19),(43,71,7),(44,73,7),(45,74,7),(46,80,7),(47,81,7),(48,85,7),(49,86,7),(50,88,7),(51,89,7),(52,91,1),(53,92,1),(54,94,1),(55,95,21),(56,96,1),(57,97,22),(58,98,7),(59,100,7),(60,101,7),(61,102,1),(62,103,1),(63,104,7),(64,105,1),(65,106,1),(66,107,23),(67,117,23),(68,118,15),(69,119,1),(70,121,1),(71,122,1),(72,124,1),(73,131,1),(74,132,7),(75,133,1),(76,134,7),(77,135,7),(78,136,25),(79,137,7),(80,138,26),(81,144,7),(82,152,7),(83,154,7),(84,155,1),(85,156,5),(86,157,1),(87,158,1),(88,160,1),(89,161,1),(90,163,1),(91,165,27),(92,170,7),(93,171,1),(94,174,7),(95,176,7),(96,181,1),(97,182,1),(98,183,1),(99,184,1),(100,185,1),(101,186,1),(102,187,1),(103,188,1),(104,190,5),(105,194,7),(106,196,7),(107,197,7),(108,198,1),(109,199,1),(110,200,1),(111,201,1),(112,202,29),(113,203,16),(114,204,7),(115,205,16),(116,206,7),(117,207,1),(118,208,1),(119,209,1),(120,210,1),(121,211,7),(122,212,7),(123,213,7),(124,214,7),(125,215,7),(126,216,7),(127,217,7),(128,218,7),(129,219,7),(130,220,7),(131,221,7),(132,222,7),(133,223,7),(134,224,7),(135,225,7),(136,226,7),(137,227,7),(138,228,7),(139,229,1),(140,230,1),(141,232,30),(142,233,30),(143,238,7),(144,239,7),(145,240,5),(146,241,7),(147,243,1),(148,244,1),(149,245,1),(150,246,1),(151,247,31),(152,248,32),(153,252,7),(154,253,7),(155,254,7),(156,255,7),(157,256,7),(158,257,7),(159,258,7),(160,259,7),(161,260,7),(162,261,7),(163,262,7),(164,263,7),(165,264,7),(166,265,7),(167,266,7),(168,267,7),(169,269,7),(170,270,7),(171,272,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,9,2),(2,10,4),(3,11,2),(4,12,4),(5,16,2),(6,17,4),(7,18,2),(8,19,4),(9,35,2),(10,36,4),(11,38,2),(12,40,4),(13,44,2),(14,46,4),(15,56,2),(16,57,4),(17,60,2),(18,63,4),(19,91,2),(20,92,4),(21,94,2),(22,96,4),(23,102,2),(24,103,4),(25,105,2),(26,106,4),(27,119,2),(28,121,4),(29,122,2),(30,124,4),(31,131,2),(32,133,4),(33,155,2),(34,157,4),(35,158,2),(36,160,4),(37,161,2),(38,163,4),(39,171,6),(40,181,2),(41,182,4),(42,183,2),(43,184,4),(44,185,2),(45,186,4),(46,187,2),(47,188,4),(48,198,2),(49,199,4),(50,200,2),(51,201,4),(52,203,5),(53,204,5),(54,205,5),(55,207,2),(56,208,4),(57,209,2),(58,210,4),(59,229,2),(60,230,4),(61,243,2),(62,244,4),(63,245,2),(64,246,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/pintu_zxyxpt/PintuActivity'),(2,2,'com/pintu_zxyxpt/GameService'),(3,3,'com/pintu_zxyxpt/GameService'),(4,8,'com/pintu_zxyxpt/GameService'),(5,13,'com/pintu_zxyxpt/PintuActivity'),(6,14,'com/pintu_zxyxpt/PintuActivity'),(7,15,'com/pintu_zxyxpt/GameAlertDialog'),(8,20,'com/pintu_zxyxpt/GameService'),(9,23,'rc/jwppn/ftipw/Play'),(10,24,'com/pintu_zxyxpt/GameService'),(11,27,'com/unity3d/player/UnityPlayerActivity'),(12,28,'com/pintu_zxyxpt/GameInfo'),(13,30,'com/pintu_zxyxpt/GameService'),(14,31,'rc/jwppn/ftipw/OptionsEditor'),(15,29,'com/qoEhMJg/fOeaLOMR'),(16,33,'rc/jwppn/ftipw/Slots'),(17,37,'com/pintu_zxyxpt/PintuActivity'),(18,39,'com/qoEhMJg/kdcBhbJWJ'),(19,41,'com/pintu_zxyxpt/GameService'),(20,42,'com/qoEhMJg/SjVOjAkdrC'),(21,43,'com/aoidmndby1/GameService'),(22,45,'com/aoidmndby1/GameService'),(23,47,'com/pintu_zxyxpt/PintuActivity'),(24,48,'com/aoidmndby1/GameService'),(25,50,'com/pintu_zxyxpt/GameService'),(26,51,'com/aoidmndby1/GameService'),(27,53,'com/pintu_zxyxpt/GameService'),(28,54,'com/aoidmndby1/Myhall'),(29,59,'com/qoEhMJg/kdcBhbJWJ'),(30,58,'com/aoidmndby1/GameInfo'),(31,61,'com/unity3d/player/UnityPlayerActivity'),(32,62,'com/aoidmndby1/GameInfo'),(33,65,'com/qoEhMJg/SjVOjAkdrC'),(34,64,'com/pintu_zxyxpt/GameInfo'),(35,69,'com/pegnvrvjf/tncnkgks_dfbv/TitleActivity'),(36,72,'com/aoidmndby1/GameService'),(37,75,'com/IvtbfGRP/MyAppService'),(38,76,'com/unity3d/player/UnityPlayerActivity'),(39,78,'com/IvtbfGRP/MyAppService'),(40,77,'com/aoidmndby1/GameInfo'),(41,79,'com/pegnvrvjf/tncnkgks_dfbv/GameActivity'),(42,82,'com/pegnvrvjf/tncnkgks_dfbv/TitleActivity'),(43,83,'com/aoidmndby1/Myhall'),(44,84,'com/unity3d/player/UnityPlayerActivity'),(45,87,'com/aoidmndby1/Myhall'),(46,90,'com/aoidmndby1/Myhall'),(47,93,'com/aoidmndby1/GameService'),(48,95,'com/aoidmndby1/GameService'),(49,97,'com/aoidmndby1/GameService'),(50,99,'com/aoidmndby1/Myhall'),(51,107,'com/IvtbfGRP/MyAppService'),(52,108,'com/pegnvrvjf/tncnkgks_dfbv/TitleActivity'),(53,109,'com/aoidmndby1/GameService'),(54,110,'com/pegnvrvjf/tncnkgks_dfbv/TitleActivity'),(55,111,'com/aoidmndby1/Myhall'),(56,112,'com/aoidmndby1/GameInfo'),(57,113,'com/pegnvrvjf/tncnkgks_dfbv/DebugActivity'),(58,114,'com/aoidmndby1/GameService'),(59,115,'com/pegnvrvjf/tncnkgks_dfbv/GameActivity'),(60,116,'com/aoidmndby1/GameInfo'),(61,117,'com/IvtbfGRP/MyAppService'),(62,118,'com/aoidmndby1/GameService'),(63,120,'com/aoidmndby1/Myhall'),(64,123,'com/aoidmndby1/Myhall'),(65,125,'com/aoidmndby1/GameService'),(66,126,'com/IvtbfGRP/MyAppService'),(67,127,'com/aoidmndby1/GameInfo'),(68,128,'com/pegnvrvjf/tncnkgks_dfbv/TitleActivity'),(69,129,'com/aoidmndby1/Myhall'),(70,130,'com/IvtbfGRP/MyAppService'),(71,136,'com/aoidmndby1/GameService'),(72,138,'com/aoidmndby1/GameService'),(73,139,'com/pegnvrvjf/tncnkgks_dfbv/LevelSelectActivity'),(74,140,'com/aoidmndby1/Myhall'),(75,141,'com/IvtbfGRP/qkOdplTdAw'),(76,142,'com/aoidmndby1/Myhall'),(77,143,'com/pegnvrvjf/tncnkgks_dfbv/TitleActivity'),(78,145,'com/pegnvrvjf/tncnkgks_dfbv/TitleActivity'),(79,146,'com/aoidmndby1/GameInfo'),(80,147,'com/pegnvrvjf/tncnkgks_dfbv/RewardActivity'),(81,148,'com/aoidmndby1/GameAlertDialog'),(82,149,'com/IvtbfGRP/MyAppAlertDialog'),(83,150,'com/pegnvrvjf/tncnkgks_dfbv/TitleActivity'),(84,151,'com/aoidmndby1/GameService'),(85,153,'com/IvtbfGRP/MyAppService'),(86,159,'com/IvtbfGRP/MyAppService'),(87,162,'com/aoidmndby1/Myhall'),(88,164,'com/pegnvrvjf/tncnkgks_dfbv/OptionsActivity'),(89,166,'com/pegnvrvjf/tncnkgks_dfbv/GameActivity'),(90,167,'com/pegnvrvjf/tncnkgks_dfbv/TitleActivity'),(91,168,'com/aoidmndby1/GameService'),(92,169,'com/pegnvrvjf/tncnkgks_dfbv/GameActivity'),(93,172,'com/aoidmndby1/GameService'),(94,173,'com/pegnvrvjf/tncnkgks_dfbv/OptionsActivity'),(95,175,'com/pegnvrvjf/tncnkgks_dfbv/LevelSelectActivity'),(96,177,'com/pegnvrvjf/tncnkgks_dfbv/AchievementActivity'),(97,178,'com/IvtbfGRP/MyAppService'),(98,179,'com/IvtbfGRP/MyAppInfo'),(99,180,'com/pegnvrvjf/tncnkgks_dfbv/TitleActivity'),(100,189,'com/pegnvrvjf/tncnkgks_dfbv/TitleActivity'),(101,191,'com/pegnvrvjf/tncnkgks_dfbv/CreditsActivity'),(102,192,'com/IvtbfGRP/MyAppInfo'),(103,193,'com/pegnvrvjf/tncnkgks_dfbv/TitleActivity'),(104,195,'dqt/stbegmi/TVKKnI11'),(105,231,'dqt/stbegmi/TVKKnI11'),(106,232,'dqt/stbegmi/TVKKnI11'),(107,233,'dqt/stbegmi/TVKKnI11'),(108,234,'dqt/stbegmi/TVKKnI10'),(109,235,'com/millennialmedia/android/MMAdViewOverlayActivity'),(110,236,'dqt/stbegmi/TVKKnI8'),(111,237,'dqt/stbegmi/TVKKnI11'),(112,242,'woq/dmijgwjs/jsfcjmt/cfka/PreferencePage'),(113,249,'woq/dmijgwjs/jsfcjmt/cfka/DetailPage'),(114,250,'dqt/stbegmi/TVKKnI8'),(115,251,'com/millennialmedia/android/MMAdViewOverlayActivity'),(116,268,'dqt/stbegmi/TVKKnI11'),(117,271,'woq/dmijgwjs/jsfcjmt/cfka/ListTabPage');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,5,2),(3,6,3),(4,7,4),(5,21,5),(6,22,6),(7,25,7),(8,32,8),(9,34,9),(10,49,10),(11,52,11),(12,55,12),(13,66,13),(14,67,14),(15,68,15),(16,71,16),(17,73,17),(18,74,18),(19,81,20),(20,80,19),(21,85,21),(22,86,22),(23,88,23),(24,89,24),(25,98,25),(26,100,26),(27,101,27),(28,104,28),(29,132,29),(30,134,30),(31,135,31),(32,137,32),(33,144,33),(34,152,34),(35,154,35),(36,165,36),(37,170,37),(38,174,38),(39,176,39),(40,194,40),(41,196,41),(42,197,42),(43,202,43),(44,203,44),(45,204,45),(46,205,46),(47,206,47),(48,211,48),(49,212,49),(50,213,50),(51,214,51),(52,215,52),(53,216,53),(54,217,54),(55,218,55),(56,219,56),(57,220,57),(58,221,58),(59,222,59),(60,223,60),(61,224,61),(62,225,62),(63,226,63),(64,227,64),(65,228,65),(66,235,66),(67,238,67),(68,239,68),(69,241,69),(70,248,70),(71,251,71),(72,252,72),(73,253,73),(74,254,74),(75,255,75),(76,256,76),(77,257,77),(78,258,78),(79,259,79),(80,260,80),(81,261,81),(82,262,82),(83,263,83),(84,264,84),(85,265,85),(86,266,86),(87,267,87),(88,269,88),(89,270,89),(90,272,90);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,15,'title'),(2,15,'btn_txt'),(3,15,'need_adb_flag'),(4,15,'cont'),(5,15,'close_flag'),(6,28,'id'),(7,28,'from_alert'),(8,28,'detail_flag'),(9,29,'apkVersion'),(10,29,'apkURL'),(11,29,'apkInfo'),(12,29,'packageName'),(13,29,'apkSoftID'),(14,29,'apkTitle'),(15,29,'iconURL'),(16,29,'apkSize'),(17,29,'imageURL'),(18,54,'nextclassid'),(19,54,'clicked'),(20,58,'title'),(21,64,'game'),(22,64,'fromtype'),(23,70,'apkURL'),(24,70,'duplicate'),(25,70,'packageName'),(26,70,'android.intent.extra.shortcut.NAME'),(27,70,'apkSoftID'),(28,70,'apkTitle'),(29,70,'apkVersion'),(30,70,'apkInfo'),(31,70,'android.intent.extra.shortcut.ICON'),(32,70,'iconURL'),(33,70,'apkSize'),(34,70,'imageURL'),(35,70,'android.intent.extra.shortcut.INTENT'),(36,77,'title'),(37,87,'title'),(38,87,'nextclassid'),(39,87,'clicked'),(40,90,'clicked'),(41,99,'clicked'),(42,112,'id'),(43,112,'from_table'),(44,112,'detail_flag'),(45,120,'title'),(46,120,'nextclassid'),(47,120,'clicked'),(48,127,'title'),(49,140,'title'),(50,140,'nextclassid'),(51,140,'clicked'),(52,141,'popurl'),(53,141,'poptitle'),(54,142,'clicked'),(55,148,'title'),(56,148,'btn_txt'),(57,148,'need_adb_flag'),(58,148,'cont'),(59,149,'title'),(60,148,'close_flag'),(61,149,'btn_txt'),(62,149,'need_adb_flag'),(63,149,'cont'),(64,149,'close_flag'),(65,162,'clicked'),(66,164,'CALLER'),(67,173,'CALLER'),(68,179,'id'),(69,179,'from_alert'),(70,179,'detail_flag'),(71,192,'game'),(72,192,'fromtype'),(73,234,'title'),(74,234,'btn_txt'),(75,234,'need_adb_flag'),(76,234,'cont'),(77,234,'close_flag'),(78,235,'cachedAdView'),(79,236,'game'),(80,236,'fromtype'),(81,247,'command'),(82,249,'id'),(83,249,'filesize'),(84,249,'title'),(85,249,'title_pic'),(86,249,'type'),(87,249,'lang'),(88,250,'id'),(89,250,'from_alert'),(90,250,'detail_flag'),(91,251,'cachedAdView'),(92,271,'type');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,7,1),(7,9,1),(8,10,1),(9,11,3),(10,12,1),(11,13,1),(12,14,1),(13,15,1),(14,16,4),(15,17,5),(16,18,1),(17,19,1),(18,21,2),(19,22,1),(20,23,1),(21,24,1),(22,25,1),(23,26,1),(24,27,2),(25,27,3),(26,28,8),(27,29,9),(28,30,1),(29,31,1),(30,32,1),(31,33,10),(32,34,9),(33,35,1),(34,36,1),(35,37,12),(36,38,7),(37,39,1),(38,40,8),(39,41,18),(40,42,2),(41,42,3),(42,43,8),(43,44,12),(44,45,4),(45,46,20),(46,47,24),(47,48,8),(48,49,12),(49,50,12),(50,51,3),(51,52,28),(52,53,1),(53,54,7),(54,55,7),(55,56,9),(56,59,1),(57,60,1),(58,61,1),(59,62,1),(60,63,2),(61,63,3),(62,64,12),(63,65,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,4,2),(4,7,2),(5,14,2),(6,18,2),(7,19,2),(8,22,2),(9,26,2),(10,28,3),(11,32,4),(12,32,2),(13,33,1),(14,37,3),(15,38,5),(16,38,1),(17,39,2),(18,40,3),(19,48,3),(20,49,3),(21,50,3),(22,53,2),(23,54,5),(24,54,1),(25,55,1),(26,55,5),(27,57,2),(28,58,5),(29,62,2),(30,64,3),(31,65,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,28,'package',NULL,NULL,NULL,NULL,NULL),(2,37,'package',NULL,NULL,NULL,NULL,NULL),(3,38,'gamesnsschema','sina',NULL,NULL,NULL,NULL),(4,38,'gamesnsschema','tencent',NULL,NULL,NULL,NULL),(5,38,'gamesnsschema','kaixin',NULL,NULL,NULL,NULL),(6,38,'gamesnsschema','renren',NULL,NULL,NULL,NULL),(7,40,'package',NULL,NULL,NULL,NULL,NULL),(8,43,'package',NULL,NULL,NULL,NULL,NULL),(9,44,'package',NULL,NULL,NULL,NULL,NULL),(10,48,'package',NULL,NULL,NULL,NULL,NULL),(11,49,'package',NULL,NULL,NULL,NULL,NULL),(12,50,'package',NULL,NULL,NULL,NULL,NULL),(13,54,'emuroms','category',NULL,NULL,NULL,NULL),(14,54,'emuroms','list',NULL,NULL,NULL,NULL),(15,55,'emuroms','search',NULL,NULL,NULL,NULL),(16,64,'package',NULL,NULL,NULL,NULL,NULL),(17,65,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,6,'application','vnd.android.package-archive'),(2,7,'application','vnd.android.package-archive'),(3,21,'application','vnd.android.package-archive'),(4,22,'application','vnd.android.package-archive'),(5,25,'application','vnd.android.package-archive'),(6,32,'application','vnd.android.package-archive'),(7,34,'application','vnd.android.package-archive'),(8,52,'(.*)','(.*)'),(9,66,'application','vnd.android.package-archive'),(10,67,'application','vnd.android.package-archive'),(11,68,'application','vnd.android.package-archive'),(12,74,'application','vnd.android.package-archive'),(13,80,'application','vnd.android.package-archive'),(14,81,'application','vnd.android.package-archive'),(15,88,'(.*)','(.*)'),(16,89,'(.*)','(.*)'),(17,101,'(.*)','(.*)'),(18,104,'(.*)','(.*)'),(19,135,'(.*)','(.*)'),(20,137,'(.*)','(.*)'),(21,170,'application','vnd.android.package-archive'),(22,196,'application','vnd.android.package-archive'),(23,197,'application','vnd.android.package-archive'),(24,205,'(.*)','(.*)'),(25,238,'application','vnd.android.package-archive'),(26,239,'application','vnd.android.package-archive'),(27,248,'application','x-gba-rom'),(28,269,'application','vnd.android.package-archive'),(29,270,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.pintu_zxyxpt'),(2,2,'com.pintu_zxyxpt'),(3,3,'com.pintu_zxyxpt'),(4,8,'com.pintu_zxyxpt'),(5,9,'(.*)'),(6,10,''),(7,11,''),(8,12,'(.*)'),(9,13,'com.pintu_zxyxpt'),(10,14,'com.pintu_zxyxpt'),(11,15,'com.pintu_zxyxpt'),(12,16,'(.*)'),(13,17,''),(14,18,''),(15,19,'(.*)'),(16,20,'com.pintu_zxyxpt'),(17,23,'rc.jwppn.ftipw'),(18,24,'com.pintu_zxyxpt'),(19,27,'com.vmivkeuk.htclqhvod'),(20,28,'com.pintu_zxyxpt'),(21,30,'com.pintu_zxyxpt'),(22,31,'rc.jwppn.ftipw'),(23,29,'com.vmivkeuk.htclqhvod'),(24,33,'rc.jwppn.ftipw'),(25,35,'(.*)'),(26,36,'(.*)'),(27,37,'com.pintu_zxyxpt'),(28,38,'(.*)'),(29,39,'com.vmivkeuk.htclqhvod'),(30,40,'(.*)'),(31,41,'com.pintu_zxyxpt'),(32,42,'com.vmivkeuk.htclqhvod'),(33,43,'com.aoidmndby1'),(34,44,'(.*)'),(35,45,'com.aoidmndby1'),(36,46,'(.*)'),(37,47,'com.pintu_zxyxpt'),(38,48,'com.aoidmndby1'),(39,50,'com.pintu_zxyxpt'),(40,51,'com.aoidmndby1'),(41,53,'com.pintu_zxyxpt'),(42,54,'com.aoidmndby1'),(43,56,'(.*)'),(44,57,''),(45,59,'com.vmivkeuk.htclqhvod'),(46,58,'com.aoidmndby1'),(47,60,''),(48,61,'com.vmivkeuk.htclqhvod'),(49,62,'com.aoidmndby1'),(50,63,'(.*)'),(51,65,'com.vmivkeuk.htclqhvod'),(52,64,'com.pintu_zxyxpt'),(53,69,'com.pegnvrvjf.tncnkgks_dfbv'),(54,72,'com.aoidmndby1'),(55,75,'com.pegnvrvjf.tncnkgks_dfbv'),(56,76,'com.vmivkeuk.htclqhvod'),(57,78,'com.pegnvrvjf.tncnkgks_dfbv'),(58,77,'com.aoidmndby1'),(59,79,'com.pegnvrvjf.tncnkgks_dfbv'),(60,82,'com.pegnvrvjf.tncnkgks_dfbv'),(61,83,'com.aoidmndby1'),(62,84,'com.vmivkeuk.htclqhvod'),(63,87,'com.aoidmndby1'),(64,90,'com.aoidmndby1'),(65,91,'(.*)'),(66,93,'com.aoidmndby1'),(67,92,''),(68,94,''),(69,95,'com.aoidmndby1'),(70,96,'(.*)'),(71,97,'com.aoidmndby1'),(72,99,'com.aoidmndby1'),(73,102,'(.*)'),(74,103,''),(75,105,''),(76,106,'(.*)'),(77,107,'com.pegnvrvjf.tncnkgks_dfbv'),(78,108,'com.pegnvrvjf.tncnkgks_dfbv'),(79,109,'com.aoidmndby1'),(80,110,'com.pegnvrvjf.tncnkgks_dfbv'),(81,111,'com.aoidmndby1'),(82,112,'com.aoidmndby1'),(83,113,'com.pegnvrvjf.tncnkgks_dfbv'),(84,114,'com.aoidmndby1'),(85,115,'com.pegnvrvjf.tncnkgks_dfbv'),(86,116,'com.aoidmndby1'),(87,117,'com.pegnvrvjf.tncnkgks_dfbv'),(88,118,'com.aoidmndby1'),(89,119,'(.*)'),(90,120,'com.aoidmndby1'),(91,121,''),(92,122,''),(93,123,'com.aoidmndby1'),(94,124,'(.*)'),(95,125,'com.aoidmndby1'),(96,126,'com.pegnvrvjf.tncnkgks_dfbv'),(97,127,'com.aoidmndby1'),(98,128,'com.pegnvrvjf.tncnkgks_dfbv'),(99,129,'com.aoidmndby1'),(100,130,'com.pegnvrvjf.tncnkgks_dfbv'),(101,131,'NULL-CONSTANT'),(102,133,'NULL-CONSTANT'),(103,136,'com.aoidmndby1'),(104,138,'com.aoidmndby1'),(105,139,'com.pegnvrvjf.tncnkgks_dfbv'),(106,140,'com.aoidmndby1'),(107,141,'com.pegnvrvjf.tncnkgks_dfbv'),(108,142,'com.aoidmndby1'),(109,143,'com.pegnvrvjf.tncnkgks_dfbv'),(110,145,'com.pegnvrvjf.tncnkgks_dfbv'),(111,146,'com.aoidmndby1'),(112,147,'com.pegnvrvjf.tncnkgks_dfbv'),(113,148,'com.aoidmndby1'),(114,149,'com.pegnvrvjf.tncnkgks_dfbv'),(115,150,'com.pegnvrvjf.tncnkgks_dfbv'),(116,151,'com.aoidmndby1'),(117,153,'com.pegnvrvjf.tncnkgks_dfbv'),(118,155,'(.*)'),(119,157,'(.*)'),(120,158,'(.*)'),(121,159,'com.pegnvrvjf.tncnkgks_dfbv'),(122,160,'(.*)'),(123,161,'(.*)'),(124,162,'com.aoidmndby1'),(125,163,'(.*)'),(126,164,'com.pegnvrvjf.tncnkgks_dfbv'),(127,166,'com.pegnvrvjf.tncnkgks_dfbv'),(128,167,'com.pegnvrvjf.tncnkgks_dfbv'),(129,168,'com.aoidmndby1'),(130,169,'com.pegnvrvjf.tncnkgks_dfbv'),(131,172,'com.aoidmndby1'),(132,173,'com.pegnvrvjf.tncnkgks_dfbv'),(133,175,'com.pegnvrvjf.tncnkgks_dfbv'),(134,177,'com.pegnvrvjf.tncnkgks_dfbv'),(135,178,'com.pegnvrvjf.tncnkgks_dfbv'),(136,179,'com.pegnvrvjf.tncnkgks_dfbv'),(137,180,'com.pegnvrvjf.tncnkgks_dfbv'),(138,181,'(.*)'),(139,182,''),(140,183,''),(141,184,'(.*)'),(142,185,'(.*)'),(143,186,''),(144,187,''),(145,188,'(.*)'),(146,189,'com.pegnvrvjf.tncnkgks_dfbv'),(147,191,'com.pegnvrvjf.tncnkgks_dfbv'),(148,192,'com.pegnvrvjf.tncnkgks_dfbv'),(149,193,'com.pegnvrvjf.tncnkgks_dfbv'),(150,195,'woq.dmijgwjs.jsfcjmt.cfka'),(151,198,'(.*)'),(152,199,''),(153,200,''),(154,201,'(.*)'),(155,207,'(.*)'),(156,208,''),(157,209,''),(158,210,'(.*)'),(159,229,'(.*)'),(160,230,'(.*)'),(161,231,'woq.dmijgwjs.jsfcjmt.cfka'),(162,232,'woq.dmijgwjs.jsfcjmt.cfka'),(163,233,'woq.dmijgwjs.jsfcjmt.cfka'),(164,234,'woq.dmijgwjs.jsfcjmt.cfka'),(165,235,'woq.dmijgwjs.jsfcjmt.cfka'),(166,236,'woq.dmijgwjs.jsfcjmt.cfka'),(167,237,'woq.dmijgwjs.jsfcjmt.cfka'),(168,242,'woq.dmijgwjs.jsfcjmt.cfka'),(169,243,'(.*)'),(170,244,''),(171,245,''),(172,246,'(.*)'),(173,249,'woq.dmijgwjs.jsfcjmt.cfka'),(174,250,'woq.dmijgwjs.jsfcjmt.cfka'),(175,251,'woq.dmijgwjs.jsfcjmt.cfka'),(176,268,'woq.dmijgwjs.jsfcjmt.cfka'),(177,271,'woq.dmijgwjs.jsfcjmt.cfka');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,6,0),(6,7,0),(7,10,0),(8,16,0),(9,18,0),(10,23,0),(11,26,0),(12,28,0),(13,31,0),(14,32,0),(15,33,0),(16,34,0),(17,36,0),(18,37,0),(19,38,0),(20,39,0),(21,41,0),(22,49,0),(23,51,0),(24,52,0),(25,53,0),(26,56,0),(27,57,0),(28,6,0),(29,70,0),(30,75,0),(31,76,0),(32,78,0),(33,78,0),(34,78,0),(35,79,0),(36,80,0),(37,6,0),(38,85,0),(39,90,0),(40,41,0),(41,98,0),(42,99,0),(43,100,0),(44,102,0),(45,103,0),(46,104,0),(47,105,0),(48,57,0),(49,41,0),(50,57,0),(51,106,0),(52,107,0),(53,108,0),(54,109,0),(55,110,0),(56,110,0),(57,117,0),(58,118,0),(59,122,0),(60,123,0),(61,124,0),(62,126,0),(63,127,0),(64,127,0),(65,127,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,4,1,0),(6,5,1,0),(7,5,1,0),(8,6,0,0),(9,7,1,0),(10,7,1,0),(11,7,1,0),(12,7,1,0),(13,8,0,0),(14,9,0,0),(15,10,0,0),(16,11,1,0),(17,11,1,0),(18,11,1,0),(19,11,1,0),(20,12,0,0),(21,13,1,0),(22,13,1,0),(23,14,0,0),(24,15,0,0),(25,16,1,0),(26,17,1,0),(27,18,0,0),(28,19,0,0),(29,20,0,0),(30,21,0,0),(31,22,0,0),(32,23,1,0),(33,24,0,0),(34,23,1,0),(35,25,1,0),(36,25,1,0),(37,26,0,0),(38,27,1,0),(39,28,0,0),(40,27,1,0),(41,29,0,0),(42,31,0,0),(43,30,0,0),(44,32,1,0),(45,30,0,0),(46,32,1,0),(47,33,0,0),(48,34,0,0),(49,36,1,0),(50,35,0,0),(51,37,0,0),(52,36,1,0),(53,35,0,0),(54,38,0,0),(55,36,1,0),(56,39,1,0),(57,39,1,0),(58,40,0,0),(59,41,0,0),(60,39,1,0),(61,42,0,0),(62,43,0,0),(63,39,1,0),(64,44,0,0),(65,45,0,0),(66,46,1,0),(67,47,1,0),(68,46,1,0),(69,48,0,0),(70,49,1,0),(71,50,1,0),(72,51,0,0),(73,50,1,0),(74,52,1,0),(75,53,0,0),(76,54,0,0),(77,55,0,0),(78,56,0,0),(79,58,0,0),(80,57,1,0),(81,59,1,0),(82,60,0,0),(83,61,0,0),(84,62,0,0),(85,63,1,0),(86,63,1,0),(87,64,0,0),(88,63,1,0),(89,63,1,0),(90,66,0,0),(91,67,1,0),(92,67,1,0),(93,68,0,0),(94,67,1,0),(95,69,0,0),(96,67,1,0),(97,69,0,0),(98,70,1,0),(99,71,0,0),(100,70,1,0),(101,70,1,0),(102,72,1,0),(103,72,1,0),(104,70,1,0),(105,72,1,0),(106,72,1,0),(107,73,0,0),(108,74,0,0),(109,75,0,0),(110,76,0,0),(111,77,0,0),(112,78,0,0),(113,79,0,0),(114,80,0,0),(115,81,0,0),(116,82,0,0),(117,83,0,0),(118,84,0,0),(119,85,1,0),(120,86,0,0),(121,85,1,0),(122,85,1,0),(123,87,0,0),(124,85,1,0),(125,88,0,0),(126,89,0,0),(127,90,0,0),(128,91,0,0),(129,92,0,0),(130,93,0,0),(131,94,1,0),(132,95,1,0),(133,94,1,0),(134,95,1,0),(135,95,1,0),(136,96,0,0),(137,95,1,0),(138,96,0,0),(139,97,0,0),(140,98,0,0),(141,99,0,0),(142,100,0,0),(143,101,0,0),(144,102,1,0),(145,103,0,0),(146,104,0,0),(147,105,0,0),(148,106,0,0),(149,107,0,0),(150,108,0,0),(151,109,0,0),(152,110,1,0),(153,111,0,0),(154,110,1,0),(155,112,1,0),(156,113,1,0),(157,112,1,0),(158,114,1,0),(159,115,0,0),(160,114,1,0),(161,116,1,0),(162,117,0,0),(163,116,1,0),(164,119,0,0),(165,118,1,0),(166,119,0,0),(167,119,0,0),(168,120,0,0),(169,121,0,0),(170,122,1,0),(171,123,1,0),(172,124,0,0),(173,125,0,0),(174,126,1,0),(175,127,0,0),(176,128,1,0),(177,129,0,0),(178,130,0,0),(179,131,0,0),(180,132,0,0),(181,133,1,0),(182,133,1,0),(183,133,1,0),(184,133,1,0),(185,134,1,0),(186,134,1,0),(187,134,1,0),(188,134,1,0),(189,135,0,0),(190,136,1,0),(191,137,0,0),(192,138,0,0),(193,139,0,0),(194,140,1,0),(195,141,0,0),(196,142,1,0),(197,142,1,0),(198,143,1,0),(199,143,1,0),(200,143,1,0),(201,143,1,0),(202,144,1,0),(203,145,1,0),(204,145,1,0),(205,145,1,0),(206,146,1,0),(207,147,1,0),(208,147,1,0),(209,147,1,0),(210,147,1,0),(211,149,1,0),(212,149,1,0),(213,149,1,0),(214,149,1,0),(215,149,1,0),(216,149,1,0),(217,149,1,0),(218,149,1,0),(219,149,1,0),(220,149,1,0),(221,149,1,0),(222,149,1,0),(223,149,1,0),(224,149,1,0),(225,149,1,0),(226,149,1,0),(227,150,1,0),(228,150,1,0),(229,151,1,0),(230,151,1,0),(231,153,0,0),(232,154,0,0),(233,155,0,0),(234,156,0,0),(235,157,0,0),(236,158,0,0),(237,159,0,0),(238,160,1,0),(239,160,1,0),(240,161,1,0),(241,164,1,0),(242,165,0,0),(243,166,1,0),(244,166,1,0),(245,166,1,0),(246,166,1,0),(247,168,1,0),(248,169,1,0),(249,170,0,0),(250,171,0,0),(251,172,0,0),(252,173,1,0),(253,173,1,0),(254,173,1,0),(255,173,1,0),(256,173,1,0),(257,173,1,0),(258,173,1,0),(259,173,1,0),(260,173,1,0),(261,173,1,0),(262,173,1,0),(263,173,1,0),(264,173,1,0),(265,173,1,0),(266,173,1,0),(267,173,1,0),(268,174,0,0),(269,175,1,0),(270,175,1,0),(271,176,0,0),(272,177,1,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'org.coolcode.emuroms.plus');
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
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_CACHE_FILESYSTEM'),(17,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(16,'android.permission.ACCESS_WIFI_STATE'),(22,'android.permission.CAMERA'),(25,'android.permission.CHANGE_CONFIGURATION'),(24,'android.permission.CHANGE_NETWORK_STATE'),(23,'android.permission.CHANGE_WIFI_STATE'),(8,'android.permission.DELETE_CACHE_FILES'),(12,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(21,'android.permission.KILL_BACKGROUND_PROCESSES'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.RECEIVE_SMS'),(14,'android.permission.SET_WALLPAPER'),(11,'android.permission.SYSTEM_ALERT_WINDOW'),(13,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(19,'android.permission.WRITE_APN_SETTINGS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(10,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
INSERT INTO `Providers` VALUES (1,128,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'file://',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'',NULL,NULL,NULL),(36,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'file://',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'file://',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gens.apk',NULL,NULL,NULL),(49,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.nes.apk',NULL,NULL,NULL),(50,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.nds.apk',NULL,NULL,NULL),(51,NULL,NULL,'http://coolcode.org/android/emulators/com.zodttd.psx4droid.apk',NULL,NULL,NULL),(52,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.n64.apk',NULL,NULL,NULL),(53,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.gens.apk',NULL,NULL,NULL),(54,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.gbc.apk',NULL,NULL,NULL),(55,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gba.apk',NULL,NULL,NULL),(56,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gbc.apk',NULL,NULL,NULL),(57,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.game.arcade2.apk',NULL,NULL,NULL),(58,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.nes.apk',NULL,NULL,NULL),(59,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.snes.apk',NULL,NULL,NULL),(60,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.snes.apk',NULL,NULL,NULL),(61,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gg.apk',NULL,NULL,NULL),(62,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.atari.apk',NULL,NULL,NULL),(63,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.gba.apk',NULL,NULL,NULL),(64,NULL,NULL,'(.*)',NULL,NULL,NULL),(65,NULL,NULL,'',NULL,NULL,NULL),(66,NULL,NULL,'(.*)',NULL,NULL,NULL),(67,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(68,NULL,NULL,'file://',NULL,NULL,NULL),(69,NULL,NULL,'(.*)',NULL,NULL,NULL),(70,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(71,NULL,NULL,'(.*)',NULL,NULL,NULL),(72,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gens.apk',NULL,NULL,NULL),(73,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.nes.apk',NULL,NULL,NULL),(74,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.nds.apk',NULL,NULL,NULL),(75,NULL,NULL,'http://coolcode.org/android/emulators/com.zodttd.psx4droid.apk',NULL,NULL,NULL),(76,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.n64.apk',NULL,NULL,NULL),(77,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.gens.apk',NULL,NULL,NULL),(78,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.gbc.apk',NULL,NULL,NULL),(79,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gba.apk',NULL,NULL,NULL),(80,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gbc.apk',NULL,NULL,NULL),(81,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.game.arcade2.apk',NULL,NULL,NULL),(82,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.nes.apk',NULL,NULL,NULL),(83,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.snes.apk',NULL,NULL,NULL),(84,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.snes.apk',NULL,NULL,NULL),(85,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.gg.apk',NULL,NULL,NULL),(86,NULL,NULL,'http://coolcode.org/android/emulators/com.androidemu.atari.apk',NULL,NULL,NULL),(87,NULL,NULL,'http://coolcode.org/android/emulators/com.tiger.gba.apk',NULL,NULL,NULL),(88,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(89,NULL,NULL,'file://',NULL,NULL,NULL),(90,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,2,2),(13,2,5),(14,2,6),(15,2,9),(16,3,1),(17,2,11),(18,3,2),(19,2,12),(20,3,3),(21,2,13),(22,3,4),(23,3,5),(24,3,6),(25,3,7),(26,3,8),(27,3,9),(28,3,10),(29,4,17),(30,4,16),(31,3,14),(32,4,1),(33,4,5),(34,4,6),(35,4,9),(36,4,13),(37,4,15),(38,5,16),(39,5,1),(40,5,2),(41,5,18),(42,5,3),(43,5,5),(44,5,6),(45,5,9),(46,5,10),(47,5,12),(48,6,1),(49,6,2),(50,6,3),(51,6,5),(52,6,6),(53,6,9),(54,6,10),(55,6,11),(56,6,12),(57,6,16),(58,6,19),(59,6,18),(60,6,21),(61,6,20),(62,6,23),(63,6,22),(64,6,25),(65,6,24),(66,7,16),(67,7,1),(68,7,2),(69,7,3),(70,7,5),(71,7,6),(72,7,9),(73,7,10);
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

-- Dump completed on 2015-10-09  0:39:44
