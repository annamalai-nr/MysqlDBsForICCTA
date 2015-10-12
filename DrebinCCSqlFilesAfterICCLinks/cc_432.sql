-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_432
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (24,'(.*)'),(17,'.ImageTestActivity'),(16,'.Myhall'),(6,'.PintuActivity'),(13,'.Web'),(2,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.DELETE'),(25,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.PACKAGE_REMOVED'),(8,'android.intent.action.USER_PRESENT'),(7,'android.intent.action.VIEW'),(23,'com.android.music.musicservicecommand'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(9,'com.android_isoznyyji.CpIQP1'),(5,'com.android_isoznyyji.PintuActivity'),(11,'com.ariasmyth1.GameBootReceiver'),(19,'com.ariasmyth1.ImageTestActivity'),(20,'com.ariasmyth1.Myhall'),(14,'com.ariasmyth1.Web'),(21,'com.sportscar1.GameBootReceiver'),(18,'com.sportscar1.ImageTestActivity'),(15,'com.sportscar1.Myhall'),(22,'com.sportscar1.Web');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.android_isoznyyji',20009),(2,'com.sportscar1',1013),(3,'com.ariasmyth1',1010),(4,'hww.wiv.qnst',10020),(5,'rkg.lahlksnb.wjubmrwego',10006),(6,'com.elkcmhi.jbkrjctlspv.prerlorw',10023);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(1,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.android_isoznyyji.PintuActivity'),(2,1,'com.android_isoznyyji.CpIQP8'),(3,1,'com.android_isoznyyji.CpIQP5'),(4,1,'com.android_isoznyyji.CpIQP13'),(5,1,'com.android_isoznyyji.CpIQP12'),(6,1,'com.android_isoznyyji.CpIQP2'),(7,1,'com.android_isoznyyji.CpIQP1'),(8,2,'com.sportscar1.Myhall'),(9,2,'com.sportscar1.Web'),(10,2,'com.sportscar1.HomeActivity'),(11,2,'com.sportscar1.SortActivity1'),(12,2,'com.sportscar1.SortActivity2'),(13,2,'com.sportscar1.SearchActivity'),(14,3,'com.ariasmyth1.Myhall'),(15,2,'com.sportscar1.ManagerActivity'),(16,4,'hww.wiv.qnst.main'),(17,3,'com.ariasmyth1.Web'),(18,3,'com.ariasmyth1.HomeActivity'),(19,4,'hww.wiv.qnst.SelectLevel'),(20,2,'com.sportscar1.GameInfo'),(21,3,'com.ariasmyth1.SortActivity1'),(22,4,'hww.wiv.qnst.gameActivity'),(23,3,'com.ariasmyth1.SortActivity2'),(24,4,'com.wUwvFTAm.uGMjAeBEPAwF'),(25,2,'com.sportscar1.TableClass'),(26,4,'com.wUwvFTAm.GpQuBdHAqMJ'),(27,3,'com.ariasmyth1.SearchActivity'),(28,2,'com.sportscar1.GameAlertDialog'),(29,2,'com.sportscar1.DevelopmentSettings'),(30,4,'com.nd.dianjin.activity.OfferAppActivity'),(31,3,'com.ariasmyth1.ManagerActivity'),(32,4,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(33,2,'com.sportscar1.qimg.ImageTestActivity'),(34,3,'com.ariasmyth1.GameInfo'),(35,3,'com.ariasmyth1.TableClass'),(36,2,'com.sportscar1.qimg.ADactivity'),(37,2,'com.sportscar1.GameService'),(38,3,'com.ariasmyth1.GameAlertDialog'),(39,3,'com.ariasmyth1.DevelopmentSettings'),(40,2,'com.sportscar1.GameBootReceiver'),(41,3,'com.ariasmyth1.mythimg.ImageTestActivity'),(42,3,'com.ariasmyth1.image.ADactivity'),(43,3,'com.ariasmyth1.GameService'),(44,3,'com.ariasmyth1.GameBootReceiver'),(45,5,'rkg.lahlksnb.wjubmrwego.MenuActivity'),(46,5,'rkg.lahlksnb.wjubmrwego.GameActivity'),(47,5,'com.scoreloop.client.android.ui.EntryScreenActivity'),(48,5,'com.scoreloop.client.android.ui.PostScoreOverlayActivity'),(49,5,'com.scoreloop.client.android.ui.ShowResultOverlayActivity'),(50,5,'com.scoreloop.client.android.ui.BuddiesScreenActivity'),(51,5,'com.scoreloop.client.android.ui.LeaderboardsScreenActivity'),(52,5,'com.scoreloop.client.android.ui.ChallengesScreenActivity'),(53,5,'com.scoreloop.client.android.ui.AchievementsScreenActivity'),(54,5,'com.scoreloop.client.android.ui.SocialMarketScreenActivity'),(55,5,'com.scoreloop.client.android.ui.ProfileScreenActivity'),(56,5,'com.scoreloop.client.android.ui.component.market.MarketHeaderActivity'),(57,5,'com.scoreloop.client.android.ui.component.market.MarketListActivity'),(58,5,'com.scoreloop.client.android.ui.component.entry.EntryListActivity'),(59,5,'com.scoreloop.client.android.ui.component.post.PostOverlayActivity'),(60,5,'com.scoreloop.client.android.ui.component.score.ScoreHeaderActivity'),(61,5,'com.scoreloop.client.android.ui.component.score.ScoreListActivity'),(62,5,'com.scoreloop.client.android.ui.component.user.UserAddBuddyListActivity'),(63,1,'at'),(64,5,'com.scoreloop.client.android.ui.component.user.UserHeaderActivity'),(65,5,'com.scoreloop.client.android.ui.component.user.UserDetailListActivity'),(66,5,'com.scoreloop.client.android.ui.component.user.UserListActivity'),(67,5,'com.scoreloop.client.android.ui.component.game.GameDetailHeaderActivity'),(68,5,'com.scoreloop.client.android.ui.component.game.GameDetailListActivity'),(69,5,'com.scoreloop.client.android.ui.component.game.GameListActivity'),(70,5,'com.scoreloop.client.android.ui.component.achievement.AchievementHeaderActivity'),(71,5,'com.scoreloop.client.android.ui.component.achievement.AchievementListActivity'),(72,5,'com.scoreloop.client.android.ui.component.news.NewsHeaderActivity'),(73,5,'com.scoreloop.client.android.ui.component.news.NewsListActivity'),(74,5,'com.scoreloop.client.android.ui.component.challenge.ChallengeHeaderActivity'),(75,5,'com.scoreloop.client.android.ui.component.challenge.ChallengeListActivity'),(76,5,'com.scoreloop.client.android.ui.component.challenge.ChallengeAcceptListActivity'),(77,5,'com.scoreloop.client.android.ui.component.challenge.ChallengeCreateListActivity'),(78,5,'com.scoreloop.client.android.ui.component.challenge.ChallengePaymentActivity'),(79,5,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsListActivity'),(80,5,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsPictureListActivity'),(81,5,'com.scoreloop.client.android.ui.framework.ScreenActivity'),(82,5,'com.scoreloop.client.android.ui.framework.TabsActivity'),(83,5,'com.google.ads.AdActivity'),(84,5,'com.rtWcg.qonaDEWsJ21'),(85,5,'com.rtWcg.ApopMain'),(86,5,'com.rtWcg.qonaDEWsJ16'),(87,5,'com.rtWcg.qonaDEWsJ8'),(88,5,'com.rtWcg.qonaDEWsJ9'),(89,1,'ba'),(90,4,'com.nd.dianjin.DianJinPlatform'),(91,5,'com.rtWcg.qonaDEWsJ2'),(92,5,'com.rtWcg.qonaDEWsJ10'),(93,5,'com.rtWcg.qonaDEWsJ22'),(94,5,'com.nd.dianjin.activity.OfferAppActivity'),(95,5,'com.rtWcg.qonaDEWsJ11'),(96,5,'com.rtWcg.qonaDEWsJ12'),(97,5,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(98,1,'ax'),(99,3,'bo'),(100,2,'bo'),(101,3,'do'),(102,2,'an'),(103,2,'j'),(104,2,'bb'),(105,3,'m'),(106,2,'dx'),(107,2,'bv'),(108,2,'o'),(109,3,'o'),(110,3,'ce'),(111,3,'dc'),(112,3,'n'),(113,3,'dy'),(114,3,'bw'),(115,2,'q'),(116,3,'dq'),(117,2,'bs'),(118,2,'bc'),(119,2,'ec'),(120,6,'com.elkcmhi.jbkrjctlspv.prerlorw.MainActivity'),(121,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity'),(122,6,'com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity'),(123,6,'com.elkcmhi.jbkrjctlspv.prerlorw.HelpActivity'),(124,6,'whu.iss.sric.android.WelActivity'),(125,6,'net.youmi.android.AdActivity'),(126,6,'cn.domob.android.ads.DomobActivity'),(127,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(128,6,'com.vpon.adon.android.WebInApp'),(129,6,'com.google.ads.AdActivity'),(130,6,'com.adchina.android.ads.views.AdBrowserView'),(131,6,'com.greystripe.android.sdk.AdView'),(132,6,'com.mdotm.android.ads.MdotmLandingPage'),(133,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(134,6,'com.millennialmedia.android.VideoPlayer'),(135,6,'com.VBlmSM.VemfFBVA'),(136,6,'com.VBlmSM.wwltBMCp'),(137,6,'com.nd.dianjin.activity.OfferAppActivity'),(138,6,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(139,6,'com.greystripe.android.sdk.AdContentProvider'),(140,6,'com.elkcmhi.jbkrjctlspv.prerlorw.MainActivity$2'),(141,6,'com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$10'),(142,6,'com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$5'),(143,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$16'),(144,6,'cn.domob.android.ads.DomobAdManager'),(145,6,'com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$6'),(146,6,'com.elkcmhi.jbkrjctlspv.prerlorw.MainActivity$1'),(147,6,'cn.domob.android.ads.i$6'),(148,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$9'),(149,6,'com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$12'),(150,6,'com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$11'),(151,6,'com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$7'),(152,6,'com.millennialmedia.android.MillennialMediaView'),(153,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$2'),(154,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$13'),(155,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$4'),(156,6,'com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$2'),(157,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$17'),(158,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$14'),(159,6,'com.nd.dianjin.DianJinPlatform'),(160,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$1'),(161,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$15'),(162,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$3'),(163,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$10'),(164,6,'com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$1'),(165,6,'com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$3'),(166,6,'com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$8'),(167,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$7'),(168,6,'cn.domob.android.ads.DomobAdEngine$2'),(169,6,'cn.domob.android.ads.DomobActionReceiver'),(170,6,'com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$9'),(171,6,'com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$4'),(172,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$5'),(173,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$11'),(174,6,'cn.domob.android.ads.i'),(175,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$12'),(176,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$8'),(177,6,'com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$6');
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'btn_txt'),(2,5,'package_name'),(3,2,'title'),(4,2,'filepath'),(5,22,'level'),(6,2,'game'),(7,2,'from_table'),(8,1,'service_channel'),(9,4,'from'),(10,4,'isDirectFromTable'),(11,5,'fromtable'),(12,5,'url'),(13,5,'apk_url'),(14,27,'package_name'),(15,14,'nextclassid'),(16,31,'soft_id'),(17,34,'from_alert'),(18,15,'url'),(19,31,'package_name'),(20,15,'app_name'),(21,31,'icon'),(22,15,'soft_id'),(23,13,'package_name'),(24,15,'status'),(25,23,'nextclassid'),(26,5,'content'),(27,6,'service_channel'),(28,20,'title'),(29,2,'fromtype'),(30,31,'completed'),(31,28,'url'),(32,12,'nextclassid'),(33,15,'completed'),(34,2,'from_alert'),(35,31,'filepath'),(36,2,'status'),(37,34,'title'),(38,31,'total'),(39,43,'service_channel'),(40,8,'service_channel'),(41,20,'status'),(42,5,'title'),(43,15,'total'),(44,41,'service_channel'),(45,15,'filepath'),(46,5,'version_code'),(47,27,'version_code'),(48,20,'from_alert'),(49,8,'nextclassid'),(50,12,'package_name'),(51,12,'status'),(52,31,'url'),(53,31,'status'),(54,14,'service_channel'),(55,23,'status'),(56,13,'version_code'),(57,17,'service_channel'),(58,33,'service_channel'),(59,38,'content'),(60,15,'icon'),(61,9,'service_channel'),(62,13,'status'),(63,31,'app_name'),(64,34,'filepath'),(65,34,'from_table'),(66,15,'package_name'),(67,38,'btn_txt'),(68,34,'status'),(69,28,'btn_txt'),(70,38,'title'),(71,37,'service_channel'),(72,23,'package_name'),(73,20,'from_table'),(74,28,'content'),(75,38,'url'),(76,20,'filepath'),(77,27,'status'),(78,28,'title'),(79,109,'adName'),(80,106,'stdActions'),(81,102,'shouldResizeOverlay'),(82,103,'url'),(83,99,'lanmu'),(84,107,'bStrLandingPage'),(85,108,'transitionTime'),(86,105,'browserurl'),(87,111,'DOMOB_TEST_MODE'),(88,109,'DOMOB_TEST_MODE'),(89,108,'DOMOB_TEST_MODE'),(90,102,'DOMOB_TEST_MODE'),(91,100,'DOMOB_TEST_MODE'),(92,102,'url'),(93,108,'shouldShowTitlebar'),(94,102,'shouldShowBottomBar'),(95,104,'com.google.ads.AdOpener'),(96,108,'cachedAdView'),(97,102,'shouldShowTitlebar'),(98,109,'shouldShowBottomBar'),(99,109,'logSet'),(100,101,'appId'),(101,104,'action'),(102,102,'shouldEnableBottomBar'),(103,108,'shouldMakeOverlayTransparent'),(104,101,'appName'),(105,108,'shouldEnableBottomBar'),(106,108,'overlayTransition'),(107,108,'shouldResizeOverlay'),(108,103,'adWidth'),(109,109,'videoCompleted'),(110,101,'actType'),(111,99,'bid'),(112,97,'lanmu'),(113,100,'A7D1721B9508405D8271AB82AC6D9B3C'),(114,109,'videoAd'),(115,109,'videoPosition'),(116,102,'overlayTitle'),(117,102,'transitionTime'),(118,108,'overlayTitle'),(119,108,'canAccelerate'),(120,108,'shouldShowBottomBar'),(121,109,'isCachedAd'),(122,104,'params'),(123,109,'cached'),(124,111,'DOMOB_ALLOW_LOCATION'),(125,109,'DOMOB_ALLOW_LOCATION'),(126,108,'DOMOB_ALLOW_LOCATION'),(127,102,'DOMOB_ALLOW_LOCATION'),(128,100,'DOMOB_ALLOW_LOCATION'),(129,106,'spinnerMsg'),(130,102,'shouldMakeOverlayTransparent'),(131,111,'DOMOB_PID'),(132,109,'DOMOB_PID'),(133,108,'DOMOB_PID'),(134,102,'DOMOB_PID'),(135,100,'DOMOB_PID'),(136,102,'overlayTransition');
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,19,'a',0,NULL,NULL),(19,18,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,65,'a',0,NULL,NULL),(65,66,'a',0,NULL,NULL),(66,67,'a',0,NULL,NULL),(67,68,'a',0,NULL,NULL),(68,69,'a',0,NULL,NULL),(69,70,'a',0,NULL,NULL),(70,71,'a',0,NULL,NULL),(71,72,'a',0,NULL,NULL),(72,73,'a',0,NULL,NULL),(73,74,'a',0,NULL,NULL),(74,75,'a',0,NULL,NULL),(75,76,'a',0,NULL,NULL),(76,77,'a',0,NULL,NULL),(77,78,'a',0,NULL,NULL),(78,79,'a',0,NULL,NULL),(79,80,'a',0,NULL,NULL),(80,81,'a',0,NULL,NULL),(81,82,'a',0,NULL,NULL),(82,83,'a',0,NULL,NULL),(83,84,'a',1,NULL,NULL),(84,85,'a',0,NULL,NULL),(85,86,'a',0,NULL,NULL),(86,87,'a',1,NULL,NULL),(87,88,'a',1,NULL,NULL),(88,91,'a',1,NULL,NULL),(89,92,'a',0,NULL,NULL),(90,93,'a',0,NULL,NULL),(91,94,'a',0,NULL,NULL),(92,95,'s',1,NULL,NULL),(93,96,'r',1,NULL,NULL),(94,97,'r',1,NULL,NULL),(95,120,'a',1,NULL,NULL),(96,121,'a',0,NULL,NULL),(97,122,'a',0,NULL,NULL),(98,123,'a',0,NULL,NULL),(99,124,'a',0,NULL,NULL),(100,125,'a',0,NULL,NULL),(101,126,'a',0,NULL,NULL),(102,127,'a',0,NULL,NULL),(103,128,'a',0,NULL,NULL),(104,129,'a',0,NULL,NULL),(105,130,'a',0,NULL,NULL),(106,131,'a',1,NULL,NULL),(107,132,'a',1,NULL,NULL),(108,133,'a',0,NULL,NULL),(109,134,'a',0,NULL,NULL),(110,135,'a',0,NULL,NULL),(111,136,'a',1,NULL,NULL),(112,137,'a',0,NULL,NULL),(113,138,'r',1,NULL,NULL),(114,139,'p',0,NULL,NULL),(115,169,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,24),(4,4,5),(5,5,16),(6,6,1),(7,7,16),(8,8,1),(9,9,26),(10,10,24),(11,12,2),(12,11,26),(13,13,3),(14,14,7),(15,15,2),(16,16,2),(17,17,3),(18,18,2),(19,19,2),(20,20,5),(21,20,4),(22,20,3),(23,21,7),(24,22,7),(25,23,2),(26,24,34),(27,25,27),(28,26,5),(29,27,38),(30,28,5),(31,29,36),(32,30,25),(33,31,34),(34,32,5),(35,33,44),(36,34,20),(37,35,34),(38,36,20),(39,37,14),(40,38,10),(41,39,2),(42,40,44),(43,41,3),(44,41,4),(45,41,5),(46,42,15),(47,43,2),(48,44,38),(49,45,33),(50,46,23),(51,47,8),(52,48,2),(53,49,34),(54,50,9),(55,51,34),(56,52,28),(57,53,23),(58,54,2),(59,55,14),(60,56,12),(61,57,19),(62,58,12),(63,59,38),(64,60,20),(65,61,17),(66,62,25),(67,63,38),(68,64,8),(69,65,35),(70,66,36),(71,67,17),(72,68,8),(73,69,19),(74,70,28),(75,71,41),(76,72,10),(77,73,20),(78,74,19),(79,75,8),(80,76,23),(81,77,12),(82,78,31),(83,79,33),(84,80,17),(85,81,13),(86,82,41),(87,83,33),(88,84,27),(89,85,31),(90,86,9),(91,87,14),(92,88,13),(93,89,36),(94,90,35),(95,91,10),(96,92,23),(97,93,40),(98,94,19),(99,95,15),(100,96,23),(101,97,12),(102,98,31),(103,99,10),(104,100,14),(105,101,8),(106,102,41),(107,103,10),(108,104,35),(109,105,8),(110,106,23),(111,107,10),(112,108,14),(113,109,25),(114,110,8),(115,111,19),(116,112,28),(117,113,14),(118,114,28),(119,115,14),(120,116,20),(121,117,34),(122,118,12),(123,119,35),(124,120,20),(125,121,44),(126,122,12),(127,123,19),(128,124,15),(129,125,25),(130,126,40),(131,127,9),(132,128,40),(133,129,95),(134,130,97),(135,131,97),(136,132,96),(137,133,109),(138,133,108),(139,133,111),(140,133,100),(141,133,102),(142,134,97),(143,135,95),(144,136,114),(145,137,108),(146,137,109),(147,137,111),(148,137,102),(149,137,100),(150,138,96),(151,139,97),(152,140,114),(153,141,97),(154,142,97),(155,143,109),(156,144,96),(157,145,96),(158,146,96),(159,147,109),(160,148,97),(161,149,114),(162,150,96),(163,151,110),(164,152,96),(165,153,111),(166,154,96),(167,155,96),(168,156,96),(169,157,111),(170,158,109),(171,159,96),(172,160,97),(173,161,97),(174,162,109),(175,163,97),(176,164,96),(177,165,109),(178,166,109),(179,167,109),(180,167,108),(181,167,102),(182,167,100),(183,167,111),(184,168,104),(185,169,97),(186,170,110),(187,171,109),(188,172,97),(189,173,96),(190,174,96),(191,175,100),(192,175,111),(193,175,108),(194,175,109),(195,175,102),(196,176,96),(197,177,109),(198,178,96),(199,179,96),(200,180,105);
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
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,63,'<at: void onClick(android.view.View)>',242,'a',NULL),(2,2,'<com.android_isoznyyji.CpIQP8: void onCreate(android.os.Bundle)>',172,'a',NULL),(3,24,'<com.wUwvFTAm.uGMjAeBEPAwF: void a()>',3,'a',NULL),(4,5,'<com.android_isoznyyji.CpIQP12: void onClick(android.view.View)>',75,'a',NULL),(5,16,'<hww.wiv.qnst.main: boolean onTouchEvent(android.view.MotionEvent)>',21,'a',NULL),(6,1,'<com.android_isoznyyji.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(7,16,'<hww.wiv.qnst.main: void toGameActivity()>',8,'a',NULL),(8,1,'<com.android_isoznyyji.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(9,26,'<com.wUwvFTAm.GpQuBdHAqMJ: void a()>',3,'a',NULL),(10,24,'<com.wUwvFTAm.uGMjAeBEPAwF: void a(java.lang.String)>',10,'a',NULL),(11,90,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(12,89,'<ba: void onClick(android.view.View)>',218,'a',NULL),(13,3,'<com.android_isoznyyji.CpIQP5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(14,7,'<com.android_isoznyyji.CpIQP1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(15,2,'<com.android_isoznyyji.CpIQP8: void onCreate(android.os.Bundle)>',33,'s',NULL),(16,63,'<at: void onClick(android.view.View)>',221,'a',NULL),(17,3,'<com.android_isoznyyji.CpIQP5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(18,2,'<com.android_isoznyyji.CpIQP8: void onCreate(android.os.Bundle)>',90,'s',NULL),(19,2,'<com.android_isoznyyji.CpIQP8: void onCreate(android.os.Bundle)>',76,'a',NULL),(20,4,'<com.android_isoznyyji.CpIQP13: void a(int,boolean)>',63,'a',NULL),(21,7,'<com.android_isoznyyji.CpIQP1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(22,7,'<com.android_isoznyyji.CpIQP1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(23,98,'<ax: void onClick(android.view.View)>',239,'a',NULL),(24,99,'<bo: void onClick(android.view.View)>',205,'a',NULL),(25,27,'<com.ariasmyth1.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(26,5,'<com.android_isoznyyji.CpIQP12: void onClick(android.view.View)>',66,'a',NULL),(27,38,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(28,5,'<com.android_isoznyyji.CpIQP12: void onClick(android.view.View)>',84,'a',NULL),(29,100,'<bo: void onClick(android.view.View)>',6,'a',NULL),(30,25,'<com.sportscar1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(31,34,'<com.ariasmyth1.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(32,5,'<com.android_isoznyyji.CpIQP12: void onClick(android.view.View)>',53,'a',NULL),(33,44,'<com.ariasmyth1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(34,20,'<com.sportscar1.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(35,34,'<com.ariasmyth1.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(36,20,'<com.sportscar1.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(37,101,'<do: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(38,10,'<com.sportscar1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(39,2,'<com.android_isoznyyji.CpIQP8: void onCreate(android.os.Bundle)>',81,'a',NULL),(40,44,'<com.ariasmyth1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(41,4,'<com.android_isoznyyji.CpIQP13: void a(int,boolean)>',10,'s',NULL),(42,102,'<an: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(43,89,'<ba: void onClick(android.view.View)>',239,'a',NULL),(44,38,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(45,103,'<j: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(46,23,'<com.ariasmyth1.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(47,104,'<bb: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(48,98,'<ax: void onClick(android.view.View)>',218,'a',NULL),(49,34,'<com.ariasmyth1.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(50,9,'<com.sportscar1.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(51,34,'<com.ariasmyth1.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(52,28,'<com.sportscar1.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(53,105,'<m: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(54,2,'<com.android_isoznyyji.CpIQP8: void onCreate(android.os.Bundle)>',177,'a',NULL),(55,14,'<com.ariasmyth1.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(56,106,'<dx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(57,18,'<com.ariasmyth1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(58,12,'<com.sportscar1.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(59,38,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(60,107,'<bv: void onClick(android.view.View)>',205,'a',NULL),(61,17,'<com.ariasmyth1.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(62,108,'<o: void a(int,boolean)>',10,'s',NULL),(63,38,'<com.ariasmyth1.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(64,8,'<com.sportscar1.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(65,109,'<o: void a(int,boolean)>',29,'a',NULL),(66,36,'<com.sportscar1.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(67,110,'<ce: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(68,104,'<bb: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(69,18,'<com.ariasmyth1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(70,28,'<com.sportscar1.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(71,41,'<com.ariasmyth1.mythimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(72,10,'<com.sportscar1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(73,20,'<com.sportscar1.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(74,111,'<dc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(75,104,'<bb: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(76,112,'<n: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(77,12,'<com.sportscar1.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(78,31,'<com.ariasmyth1.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(79,33,'<com.sportscar1.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(80,17,'<com.ariasmyth1.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(81,13,'<com.sportscar1.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(82,113,'<dy: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(83,33,'<com.sportscar1.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(84,27,'<com.ariasmyth1.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(85,114,'<bw: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(86,115,'<q: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(87,116,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(88,13,'<com.sportscar1.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(89,36,'<com.sportscar1.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(90,35,'<com.ariasmyth1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(91,10,'<com.sportscar1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(92,105,'<m: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(93,40,'<com.sportscar1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(94,18,'<com.ariasmyth1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(95,102,'<an: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(96,23,'<com.ariasmyth1.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(97,106,'<dx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(98,114,'<bw: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(99,117,'<bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(100,116,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(101,118,'<bc: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(102,41,'<com.ariasmyth1.mythimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(103,117,'<bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(104,109,'<o: void a(int,boolean)>',10,'s',NULL),(105,8,'<com.sportscar1.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(106,105,'<m: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(107,117,'<bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(108,14,'<com.ariasmyth1.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(109,108,'<o: void a(int,boolean)>',29,'a',NULL),(110,104,'<bb: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(111,111,'<dc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(112,28,'<com.sportscar1.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(113,116,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(114,28,'<com.sportscar1.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(115,116,'<dq: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(116,107,'<bv: void onClick(android.view.View)>',224,'a',NULL),(117,99,'<bo: void onClick(android.view.View)>',224,'a',NULL),(118,106,'<dx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(119,35,'<com.ariasmyth1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(120,20,'<com.sportscar1.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(121,44,'<com.ariasmyth1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(122,119,'<ec: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(123,111,'<dc: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(124,15,'<com.sportscar1.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(125,25,'<com.sportscar1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(126,40,'<com.sportscar1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(127,9,'<com.sportscar1.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(128,40,'<com.sportscar1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(129,140,'<com.elkcmhi.jbkrjctlspv.prerlorw.MainActivity$2: void onClick(android.view.View)>',6,'a',NULL),(130,141,'<com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$10: void onClick(android.view.View)>',10,'a',NULL),(131,142,'<com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$5: void onClick(android.view.View)>',10,'a',NULL),(132,143,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$16: void onClick(android.view.View)>',7,'a',NULL),(133,144,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(134,145,'<com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$6: void onClick(android.view.View)>',10,'a',NULL),(135,146,'<com.elkcmhi.jbkrjctlspv.prerlorw.MainActivity$1: void onClick(android.view.View)>',6,'a',NULL),(136,139,'<com.greystripe.android.sdk.AdContentProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',20,'p',0),(137,147,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(138,148,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$9: void onClick(android.view.View)>',7,'a',NULL),(139,149,'<com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$12: void onClick(android.view.View)>',10,'a',NULL),(140,139,'<com.greystripe.android.sdk.AdContentProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',21,'p',0),(141,150,'<com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$11: void onClick(android.view.View)>',10,'a',NULL),(142,151,'<com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$7: void onClick(android.view.View)>',10,'a',NULL),(143,152,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(144,153,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$2: void onClick(android.view.View)>',7,'a',NULL),(145,154,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$13: void onClick(android.view.View)>',7,'a',NULL),(146,155,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$4: void onClick(android.view.View)>',7,'a',NULL),(147,134,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(148,156,'<com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$2: void onClick(android.view.View)>',10,'a',NULL),(149,139,'<com.greystripe.android.sdk.AdContentProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',18,'p',0),(150,157,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$17: void onClick(android.view.View)>',7,'a',NULL),(151,135,'<com.VBlmSM.VemfFBVA: void a()>',3,'a',NULL),(152,158,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$14: void onClick(android.view.View)>',7,'a',NULL),(153,159,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(154,160,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$1: void onClick(android.view.View)>',7,'a',NULL),(155,161,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$15: void onClick(android.view.View)>',7,'a',NULL),(156,162,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$3: void onClick(android.view.View)>',7,'a',NULL),(157,136,'<com.VBlmSM.wwltBMCp: void a()>',3,'a',NULL),(158,134,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(159,163,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$10: void onClick(android.view.View)>',7,'a',NULL),(160,164,'<com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$1: void onClick(android.view.View)>',10,'a',NULL),(161,165,'<com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$3: void onClick(android.view.View)>',10,'a',NULL),(162,134,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(163,166,'<com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$8: void onClick(android.view.View)>',10,'a',NULL),(164,167,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$7: void onClick(android.view.View)>',7,'a',NULL),(165,134,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(166,134,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(167,168,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(168,129,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(169,170,'<com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$9: void onClick(android.view.View)>',10,'a',NULL),(170,135,'<com.VBlmSM.VemfFBVA: void a(java.lang.String)>',10,'a',NULL),(171,134,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(172,171,'<com.elkcmhi.jbkrjctlspv.prerlorw.BntListActivity$4: void onClick(android.view.View)>',10,'a',NULL),(173,172,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$5: void onClick(android.view.View)>',7,'a',NULL),(174,173,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$11: void onClick(android.view.View)>',7,'a',NULL),(175,174,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(176,175,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$12: void onClick(android.view.View)>',7,'a',NULL),(177,134,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(178,176,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$8: void onClick(android.view.View)>',7,'a',NULL),(179,177,'<com.elkcmhi.jbkrjctlspv.prerlorw.ListActivity$6: void onClick(android.view.View)>',7,'a',NULL),(180,130,'<com.adchina.android.ads.views.AdBrowserView: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',12,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,7,3),(6,11,5),(7,13,6),(8,14,7),(9,16,7),(10,17,7),(11,19,9),(12,21,7),(13,22,7),(14,23,1),(15,24,1),(16,28,9),(17,30,1),(18,31,1),(19,32,7),(20,33,1),(21,34,7),(22,35,1),(23,37,7),(24,38,7),(25,49,7),(26,53,11),(27,54,12),(28,55,1),(29,56,7),(30,57,1),(31,58,7),(32,59,7),(33,60,1),(34,61,1),(35,65,7),(36,68,7),(37,69,7),(38,72,7),(39,78,7),(40,79,7),(41,80,13),(42,81,14),(43,83,3),(44,84,15),(45,85,16),(46,87,7),(47,88,7),(48,91,3),(49,103,7),(50,104,17),(51,105,18),(52,107,12),(53,108,7),(54,113,7),(55,116,7),(56,117,1),(57,119,1),(58,121,1),(59,122,1),(60,125,7),(61,126,17),(62,127,7),(63,128,19),(64,131,7),(65,133,16),(66,135,20),(67,142,1),(68,143,1),(69,144,1),(70,145,1),(71,146,1),(72,147,1),(73,148,1),(74,149,1),(75,150,7),(76,151,1),(77,152,1),(78,154,11),(79,156,7),(80,158,1),(81,159,1),(82,160,21),(83,161,22),(84,162,13),(85,163,21),(86,170,7),(87,172,7),(88,173,7),(89,174,7),(90,175,7),(91,180,23),(92,184,7),(93,201,7),(94,202,7),(95,203,7),(96,204,24),(97,205,24),(98,207,7),(99,208,7),(100,212,7),(101,214,25),(102,217,7),(103,218,7);
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
INSERT INTO `ICategories` VALUES (1,1,2),(2,2,3),(3,3,2),(4,4,3),(5,23,2),(6,24,3),(7,30,2),(8,31,3),(9,33,2),(10,35,3),(11,55,2),(12,57,3),(13,60,2),(14,61,3),(15,117,2),(16,119,3),(17,121,2),(18,122,3),(19,142,2),(20,143,2),(21,144,3),(22,145,3),(23,146,2),(24,147,2),(25,148,3),(26,149,3),(27,151,2),(28,152,3),(29,158,2),(30,159,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,5,'com/android_isoznyyji/PintuActivity'),(2,6,'hww/wiv/qnst/main'),(3,9,'com/android_isoznyyji/CpIQP2'),(4,8,'hww/wiv/qnst/SelectLevel'),(5,10,'hww/wiv/qnst/gameActivity'),(6,11,'com/android_isoznyyji/CpIQP2'),(7,12,'hww/wiv/qnst/main'),(8,13,'com/android_isoznyyji/CpIQP2'),(9,15,'com/nd/dianjin/activity/OfferAppActivity'),(10,18,'com/android_isoznyyji/CpIQP8'),(11,19,'com/android_isoznyyji/CpIQP2'),(12,20,'com/android_isoznyyji/CpIQP2'),(13,25,'com/android_isoznyyji/CpIQP2'),(14,26,'com/android_isoznyyji/PintuActivity'),(15,27,'com/android_isoznyyji/PintuActivity'),(16,28,'com/android_isoznyyji/CpIQP2'),(17,29,'com/android_isoznyyji/CpIQP2'),(18,36,'com/ariasmyth1/GameInfo'),(19,41,'com/sportscar1/qimg/ImageTestActivity'),(20,39,'com/ariasmyth1/GameInfo'),(21,40,'com/android_isoznyyji/CpIQP12'),(22,42,'com/sportscar1/GameInfo'),(23,43,'com/ariasmyth1/Myhall'),(24,45,'com/ariasmyth1/GameService'),(25,46,'com/sportscar1/Myhall'),(26,44,'com/android_isoznyyji/CpIQP8'),(27,47,'com/ariasmyth1/Myhall'),(28,48,'com/sportscar1/GameService'),(29,51,'com/android_isoznyyji/PintuActivity'),(30,50,'com/sportscar1/Myhall'),(31,52,'com/android_isoznyyji/CpIQP2'),(32,53,'com/ariasmyth1/GameService'),(33,62,'com/ariasmyth1/GameService'),(34,63,'com/sportscar1/Myhall'),(35,64,'com/ariasmyth1/GameService'),(36,66,'com/sportscar1/GameService'),(37,67,'com/ariasmyth1/Myhall'),(38,71,'com/android_isoznyyji/PintuActivity'),(39,70,'com/ariasmyth1/Myhall'),(40,73,'com/ariasmyth1/GameService'),(41,74,'com/sportscar1/Myhall'),(42,75,'com/ariasmyth1/Myhall'),(43,76,'com/sportscar1/GameService'),(44,77,'com/ariasmyth1/GameAlertDialog'),(45,80,'com/ariasmyth1/GameService'),(46,81,'com/ariasmyth1/GameService'),(47,82,'com/sportscar1/GameService'),(48,84,'com/sportscar1/GameService'),(49,85,'com/sportscar1/GameService'),(50,86,'com/ariasmyth1/Myhall'),(51,89,'com/sportscar1/Myhall'),(52,90,'com/ariasmyth1/GameInfo'),(53,92,'com/ariasmyth1/GameService'),(54,93,'com/sportscar1/GameInfo'),(55,94,'com/sportscar1/Myhall'),(56,95,'com/ariasmyth1/GameInfo'),(57,96,'com/sportscar1/Myhall'),(58,97,'com/ariasmyth1/Myhall'),(59,98,'com/sportscar1/GameInfo'),(60,99,'com/ariasmyth1/GameService'),(61,100,'com/sportscar1/GameService'),(62,101,'com/ariasmyth1/GameService'),(63,102,'com/sportscar1/GameService'),(64,104,'com/sportscar1/GameService'),(65,106,'com/ariasmyth1/GameService'),(66,105,'com/sportscar1/GameService'),(67,110,'com/sportscar1/GameInfo'),(68,109,'com/ariasmyth1/Myhall'),(69,111,'com/sportscar1/GameInfo'),(70,112,'com/ariasmyth1/GameInfo'),(71,114,'com/ariasmyth1/GameInfo'),(72,115,'com/sportscar1/GameService'),(73,118,'com/ariasmyth1/GameInfo'),(74,120,'com/sportscar1/GameInfo'),(75,123,'com/sportscar1/GameInfo'),(76,124,'com/ariasmyth1/Myhall'),(77,126,'com/ariasmyth1/GameService'),(78,128,'com/ariasmyth1/GameService'),(79,129,'com/ariasmyth1/GameService'),(80,130,'com/sportscar1/GameService'),(81,132,'com/sportscar1/Myhall'),(82,133,'com/ariasmyth1/GameService'),(83,134,'com/sportscar1/Myhall'),(84,135,'com/ariasmyth1/GameService'),(85,136,'com/sportscar1/Myhall'),(86,137,'com/ariasmyth1/Myhall'),(87,138,'com/sportscar1/GameInfo'),(88,139,'com/ariasmyth1/Myhall'),(89,140,'com/sportscar1/GameAlertDialog'),(90,141,'com/ariasmyth1/Myhall'),(91,153,'com/sportscar1/Myhall'),(92,154,'com/ariasmyth1/GameService'),(93,155,'com/sportscar1/Myhall'),(94,157,'com/sportscar1/GameService'),(95,160,'com/sportscar1/GameService'),(96,161,'com/sportscar1/GameService'),(97,162,'com/sportscar1/GameService'),(98,163,'com/sportscar1/GameService'),(99,164,'com/elkcmhi/jbkrjctlspv/prerlorw/HelpActivity'),(100,165,'whu/iss/sric/android/WelActivity'),(101,166,'whu/iss/sric/android/WelActivity'),(102,167,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(103,168,'whu/iss/sric/android/WelActivity'),(104,169,'com/elkcmhi/jbkrjctlspv/prerlorw/ListActivity'),(105,176,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(106,177,'whu/iss/sric/android/WelActivity'),(107,178,'whu/iss/sric/android/WelActivity'),(108,179,'whu/iss/sric/android/WelActivity'),(109,181,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(110,182,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(111,183,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(112,185,'whu/iss/sric/android/WelActivity'),(113,186,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(114,187,'com/elkcmhi/jbkrjctlspv/prerlorw/MainActivity'),(115,188,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(116,189,'com/nd/dianjin/activity/OfferAppActivity'),(117,190,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(118,191,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(119,192,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(120,193,'com/elkcmhi/jbkrjctlspv/prerlorw/MainActivity'),(121,194,'com/millennialmedia/android/MMAdViewOverlayActivity'),(122,195,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(123,196,'whu/iss/sric/android/WelActivity'),(124,197,'whu/iss/sric/android/WelActivity'),(125,198,'com/millennialmedia/android/MMAdViewOverlayActivity'),(126,199,'whu/iss/sric/android/WelActivity'),(127,200,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(128,206,'whu/iss/sric/android/WelActivity'),(129,209,'whu/iss/sric/android/WelActivity'),(130,210,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(131,211,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(132,213,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(133,215,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity'),(134,216,'com/elkcmhi/jbkrjctlspv/prerlorw/BntListActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,14,1),(2,16,2),(3,17,3),(4,21,4),(5,22,5),(6,32,6),(7,34,7),(8,37,8),(9,38,9),(10,49,10),(11,54,11),(12,56,12),(13,58,13),(14,59,14),(15,65,15),(16,68,16),(17,69,17),(18,72,18),(19,78,19),(20,79,20),(21,87,21),(22,88,22),(23,103,23),(24,107,24),(25,108,25),(26,113,26),(27,116,27),(28,125,28),(29,127,29),(30,131,30),(31,150,31),(32,156,32),(33,170,34),(34,172,35),(35,173,36),(36,174,37),(37,175,38),(38,184,39),(39,194,40),(40,198,41),(41,201,42),(42,202,43),(43,203,44),(44,204,45),(45,205,46),(46,207,47),(47,208,48),(48,212,49),(49,214,50),(50,217,51),(51,218,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,8,'maxLevel'),(2,10,'level'),(3,15,'oriention'),(4,18,'game'),(5,18,'fromtype'),(6,39,'id'),(7,39,'from_table'),(8,40,'title'),(9,39,'detail_flag'),(10,40,'btn_txt'),(11,40,'need_adb_flag'),(12,40,'cont'),(13,40,'close_flag'),(14,44,'id'),(15,44,'from_alert'),(16,44,'detail_flag'),(17,50,'nextclassid'),(18,50,'clicked'),(19,63,'clicked'),(20,70,'title'),(21,70,'nextclassid'),(22,70,'clicked'),(23,74,'title'),(24,74,'nextclassid'),(25,75,'nextclassid'),(26,74,'clicked'),(27,75,'clicked'),(28,77,'title'),(29,77,'btn_txt'),(30,77,'need_adb_flag'),(31,77,'cont'),(32,77,'close_flag'),(33,89,'clicked'),(34,95,'title'),(35,96,'clicked'),(36,97,'title'),(37,97,'nextclassid'),(38,97,'clicked'),(39,98,'title'),(40,109,'clicked'),(41,114,'title'),(42,118,'title'),(43,120,'title'),(44,123,'title'),(45,124,'clicked'),(46,132,'title'),(47,132,'nextclassid'),(48,132,'clicked'),(49,136,'clicked'),(50,137,'title'),(51,137,'nextclassid'),(52,137,'clicked'),(53,138,'id'),(54,138,'from_table'),(55,138,'detail_flag'),(56,139,'clicked'),(57,140,'title'),(58,140,'btn_txt'),(59,140,'need_adb_flag'),(60,140,'cont'),(61,140,'close_flag'),(62,141,'clicked'),(63,155,'title'),(64,155,'nextclassid'),(65,155,'clicked'),(66,165,'lanmu'),(67,165,'bid'),(68,166,'lanmu'),(69,166,'bid'),(70,167,'lanmu'),(71,168,'lanmu'),(72,168,'bid'),(73,176,'lanmu'),(74,177,'lanmu'),(75,177,'bid'),(76,178,'lanmu'),(77,178,'bid'),(78,179,'lanmu'),(79,179,'bid'),(80,180,'command'),(81,181,'lanmu'),(82,182,'lanmu'),(83,183,'lanmu'),(84,185,'lanmu'),(85,185,'bid'),(86,186,'lanmu'),(87,188,'lanmu'),(88,189,'oriention'),(89,190,'lanmu'),(90,191,'lanmu'),(91,192,'lanmu'),(92,194,'cachedAdView'),(93,195,'lanmu'),(94,196,'lanmu'),(95,196,'bid'),(96,197,'lanmu'),(97,197,'bid'),(98,198,'cachedAdView'),(99,199,'lanmu'),(100,199,'bid'),(101,200,'lanmu'),(102,206,'lanmu'),(103,206,'bid'),(104,209,'lanmu'),(105,209,'bid'),(106,210,'lanmu'),(107,211,'lanmu'),(108,213,'lanmu'),(109,215,'lanmu'),(110,216,'lanmu');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,1),(8,8,1),(9,9,1),(10,11,1),(11,12,1),(12,13,1),(13,14,1),(14,15,1),(15,16,3),(16,17,1),(17,18,4),(18,19,1),(19,20,1),(20,21,1),(21,22,1),(22,23,3),(23,24,2),(24,25,1),(25,26,1),(26,27,2),(27,29,1),(28,30,4),(29,31,1),(30,32,1),(31,33,1),(32,34,1),(33,35,2),(34,35,8),(35,36,4),(36,37,10),(37,38,4),(38,39,4),(39,40,10),(40,41,10),(41,45,1),(42,46,4),(43,47,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,5,2),(4,14,2),(5,19,2),(6,22,2),(7,25,2),(8,26,2),(9,29,2),(10,30,4),(11,34,2),(12,37,4),(13,38,4),(14,39,4),(15,40,4),(16,41,4),(17,43,2),(18,44,5),(19,45,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,18,'package',NULL,NULL,NULL,NULL,NULL),(2,30,'package',NULL,NULL,NULL,NULL,NULL),(3,36,'package',NULL,NULL,NULL,NULL,NULL),(4,37,'package',NULL,NULL,NULL,NULL,NULL),(5,38,'package',NULL,NULL,NULL,NULL,NULL),(6,39,'package',NULL,NULL,NULL,NULL,NULL),(7,40,'package',NULL,NULL,NULL,NULL,NULL),(8,41,'package',NULL,NULL,NULL,NULL,NULL),(9,46,'package',NULL,NULL,NULL,NULL,NULL),(10,47,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,14,'application','vnd.android.package-archive'),(2,16,'application','vnd.android.package-archive'),(3,17,'application','vnd.android.package-archive'),(4,21,'application','vnd.android.package-archive'),(5,22,'application','vnd.android.package-archive'),(6,32,'application','vnd.android.package-archive'),(7,34,'application','vnd.android.package-archive'),(8,49,'application','vnd.android.package-archive'),(9,59,'application','vnd.android.package-archive'),(10,65,'application','vnd.android.package-archive'),(11,68,'application','vnd.android.package-archive'),(12,78,'application','vnd.android.package-archive'),(13,79,'application','vnd.android.package-archive'),(14,88,'application','vnd.android.package-archive'),(15,103,'application','vnd.android.package-archive'),(16,108,'application','vnd.android.package-archive'),(17,125,'application','vnd.android.package-archive'),(18,170,'application','vnd.android.package-archive'),(19,172,'application','vnd.android.package-archive'),(20,173,'application','vnd.android.package-archive'),(21,174,'application','vnd.android.package-archive'),(22,175,'application','vnd.android.package-archive'),(23,204,'(.*)','(.*)'),(24,207,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'(.*)'),(2,2,''),(3,3,''),(4,4,'(.*)'),(5,5,'com.android_isoznyyji'),(6,6,'hww.wiv.qnst'),(7,9,'com.android_isoznyyji'),(8,8,'hww.wiv.qnst'),(9,10,'hww.wiv.qnst'),(10,11,'com.android_isoznyyji'),(11,12,'hww.wiv.qnst'),(12,13,'com.android_isoznyyji'),(13,15,'hww.wiv.qnst'),(14,18,'com.android_isoznyyji'),(15,19,'com.android_isoznyyji'),(16,20,'com.android_isoznyyji'),(17,23,'(.*)'),(18,24,'(.*)'),(19,25,'com.android_isoznyyji'),(20,26,'com.android_isoznyyji'),(21,27,'com.android_isoznyyji'),(22,28,'com.android_isoznyyji'),(23,29,'com.android_isoznyyji'),(24,30,'(.*)'),(25,31,''),(26,33,''),(27,35,'(.*)'),(28,36,'com.ariasmyth1'),(29,41,'com.sportscar1'),(30,39,'com.ariasmyth1'),(31,40,'com.android_isoznyyji'),(32,42,'com.sportscar1'),(33,43,'com.ariasmyth1'),(34,45,'com.ariasmyth1'),(35,46,'com.sportscar1'),(36,44,'com.android_isoznyyji'),(37,47,'com.ariasmyth1'),(38,48,'com.sportscar1'),(39,51,'com.android_isoznyyji'),(40,50,'com.sportscar1'),(41,52,'com.android_isoznyyji'),(42,53,'com.ariasmyth1'),(43,55,'(.*)'),(44,57,''),(45,60,''),(46,61,'(.*)'),(47,62,'com.ariasmyth1'),(48,63,'com.sportscar1'),(49,64,'com.ariasmyth1'),(50,66,'com.sportscar1'),(51,67,'com.ariasmyth1'),(52,71,'com.android_isoznyyji'),(53,70,'com.ariasmyth1'),(54,73,'com.ariasmyth1'),(55,74,'com.sportscar1'),(56,75,'com.ariasmyth1'),(57,76,'com.sportscar1'),(58,77,'com.ariasmyth1'),(59,80,'com.ariasmyth1'),(60,81,'com.ariasmyth1'),(61,82,'com.sportscar1'),(62,84,'com.sportscar1'),(63,85,'com.sportscar1'),(64,86,'com.ariasmyth1'),(65,89,'com.sportscar1'),(66,90,'com.ariasmyth1'),(67,92,'com.ariasmyth1'),(68,93,'com.sportscar1'),(69,94,'com.sportscar1'),(70,95,'com.ariasmyth1'),(71,96,'com.sportscar1'),(72,97,'com.ariasmyth1'),(73,98,'com.sportscar1'),(74,99,'com.ariasmyth1'),(75,100,'com.sportscar1'),(76,101,'com.ariasmyth1'),(77,102,'com.sportscar1'),(78,104,'com.sportscar1'),(79,106,'com.ariasmyth1'),(80,105,'com.sportscar1'),(81,110,'com.sportscar1'),(82,109,'com.ariasmyth1'),(83,111,'com.sportscar1'),(84,112,'com.ariasmyth1'),(85,114,'com.ariasmyth1'),(86,115,'com.sportscar1'),(87,117,'NULL-CONSTANT'),(88,118,'com.ariasmyth1'),(89,119,'NULL-CONSTANT'),(90,120,'com.sportscar1'),(91,121,'NULL-CONSTANT'),(92,122,'NULL-CONSTANT'),(93,123,'com.sportscar1'),(94,124,'com.ariasmyth1'),(95,126,'com.ariasmyth1'),(96,128,'com.ariasmyth1'),(97,129,'com.ariasmyth1'),(98,130,'com.sportscar1'),(99,132,'com.sportscar1'),(100,133,'com.ariasmyth1'),(101,134,'com.sportscar1'),(102,135,'com.ariasmyth1'),(103,136,'com.sportscar1'),(104,137,'com.ariasmyth1'),(105,138,'com.sportscar1'),(106,139,'com.ariasmyth1'),(107,140,'com.sportscar1'),(108,141,'com.ariasmyth1'),(109,142,'(.*)'),(110,143,'(.*)'),(111,144,''),(112,145,''),(113,146,''),(114,147,''),(115,148,'(.*)'),(116,149,'(.*)'),(117,151,'(.*)'),(118,152,'(.*)'),(119,153,'com.sportscar1'),(120,154,'com.ariasmyth1'),(121,155,'com.sportscar1'),(122,157,'com.sportscar1'),(123,158,'(.*)'),(124,159,'(.*)'),(125,160,'com.sportscar1'),(126,161,'com.sportscar1'),(127,162,'com.sportscar1'),(128,163,'com.sportscar1'),(129,164,'com.elkcmhi.jbkrjctlspv.prerlorw'),(130,165,'com.elkcmhi.jbkrjctlspv.prerlorw'),(131,166,'com.elkcmhi.jbkrjctlspv.prerlorw'),(132,167,'com.elkcmhi.jbkrjctlspv.prerlorw'),(133,168,'com.elkcmhi.jbkrjctlspv.prerlorw'),(134,169,'com.elkcmhi.jbkrjctlspv.prerlorw'),(135,176,'com.elkcmhi.jbkrjctlspv.prerlorw'),(136,177,'com.elkcmhi.jbkrjctlspv.prerlorw'),(137,178,'com.elkcmhi.jbkrjctlspv.prerlorw'),(138,179,'com.elkcmhi.jbkrjctlspv.prerlorw'),(139,181,'com.elkcmhi.jbkrjctlspv.prerlorw'),(140,182,'com.elkcmhi.jbkrjctlspv.prerlorw'),(141,183,'com.elkcmhi.jbkrjctlspv.prerlorw'),(142,185,'com.elkcmhi.jbkrjctlspv.prerlorw'),(143,186,'com.elkcmhi.jbkrjctlspv.prerlorw'),(144,187,'com.elkcmhi.jbkrjctlspv.prerlorw'),(145,188,'com.elkcmhi.jbkrjctlspv.prerlorw'),(146,189,'com.elkcmhi.jbkrjctlspv.prerlorw'),(147,190,'com.elkcmhi.jbkrjctlspv.prerlorw'),(148,191,'com.elkcmhi.jbkrjctlspv.prerlorw'),(149,192,'com.elkcmhi.jbkrjctlspv.prerlorw'),(150,193,'com.elkcmhi.jbkrjctlspv.prerlorw'),(151,194,'com.elkcmhi.jbkrjctlspv.prerlorw'),(152,195,'com.elkcmhi.jbkrjctlspv.prerlorw'),(153,196,'com.elkcmhi.jbkrjctlspv.prerlorw'),(154,197,'com.elkcmhi.jbkrjctlspv.prerlorw'),(155,198,'com.elkcmhi.jbkrjctlspv.prerlorw'),(156,199,'com.elkcmhi.jbkrjctlspv.prerlorw'),(157,200,'com.elkcmhi.jbkrjctlspv.prerlorw'),(158,206,'com.elkcmhi.jbkrjctlspv.prerlorw'),(159,209,'com.elkcmhi.jbkrjctlspv.prerlorw'),(160,210,'com.elkcmhi.jbkrjctlspv.prerlorw'),(161,211,'com.elkcmhi.jbkrjctlspv.prerlorw'),(162,213,'com.elkcmhi.jbkrjctlspv.prerlorw'),(163,215,'com.elkcmhi.jbkrjctlspv.prerlorw'),(164,216,'com.elkcmhi.jbkrjctlspv.prerlorw');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,6,0),(6,7,0),(7,12,0),(8,13,0),(9,15,0),(10,16,0),(11,20,0),(12,23,0),(13,25,0),(14,26,0),(15,27,0),(16,29,0),(17,31,0),(18,32,0),(19,33,0),(20,34,0),(21,35,0),(22,37,0),(23,39,0),(24,40,0),(25,41,0),(26,43,0),(27,44,0),(28,45,0),(29,83,0),(30,7,0),(31,86,0),(32,87,0),(33,88,0),(34,92,0),(35,93,0),(36,94,0),(37,7,0),(38,40,0),(39,44,0),(40,44,0),(41,40,0),(42,95,0),(43,106,0),(44,107,0),(45,111,0),(46,113,0),(47,115,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,1,1,0),(5,2,0,0),(6,3,0,0),(7,4,1,0),(8,5,0,0),(9,6,0,0),(10,7,0,0),(11,8,0,0),(12,9,0,0),(13,8,0,0),(14,10,1,0),(15,11,0,0),(16,12,1,0),(17,12,1,0),(18,13,0,0),(19,14,0,0),(20,15,0,0),(21,16,1,0),(22,16,1,0),(23,17,1,0),(24,17,1,0),(25,18,0,0),(26,19,0,0),(27,20,0,0),(28,21,0,0),(29,22,0,0),(30,23,1,0),(31,23,1,0),(32,24,1,0),(33,23,1,0),(34,24,1,0),(35,23,1,0),(36,25,0,0),(37,26,1,0),(38,26,1,0),(39,27,0,0),(40,28,0,0),(41,29,0,0),(42,30,0,0),(43,31,0,0),(44,32,0,0),(45,33,0,0),(46,34,0,0),(47,35,0,0),(48,36,0,0),(49,37,1,0),(50,38,0,0),(51,39,0,0),(52,41,0,0),(53,40,0,0),(54,42,1,0),(55,43,1,0),(56,44,1,0),(57,43,1,0),(58,44,1,0),(59,45,1,0),(60,43,1,0),(61,43,1,0),(62,46,0,0),(63,47,0,0),(64,49,0,0),(65,48,1,0),(66,50,0,0),(67,51,0,0),(68,48,1,0),(69,52,1,0),(70,53,0,0),(71,54,0,0),(72,52,1,0),(73,55,0,0),(74,56,0,0),(75,57,0,0),(76,58,0,0),(77,59,0,0),(78,60,1,0),(79,60,1,0),(80,61,0,0),(81,61,0,0),(82,62,0,0),(83,63,1,0),(84,64,0,0),(85,64,0,0),(86,65,0,0),(87,66,1,0),(88,67,1,0),(89,68,0,0),(90,69,0,0),(91,70,1,0),(92,71,0,0),(93,72,0,0),(94,73,0,0),(95,74,0,0),(96,75,0,0),(97,76,0,0),(98,77,0,0),(99,78,0,0),(100,79,0,0),(101,80,0,0),(102,81,0,0),(103,82,1,0),(104,83,0,0),(105,83,0,0),(106,84,0,0),(107,85,1,0),(108,86,1,0),(109,87,0,0),(110,88,0,0),(111,89,0,0),(112,90,0,0),(113,91,1,0),(114,92,0,0),(115,93,0,0),(116,94,1,0),(117,95,1,0),(118,96,0,0),(119,95,1,0),(120,97,0,0),(121,98,1,0),(122,98,1,0),(123,99,0,0),(124,100,0,0),(125,101,1,0),(126,102,0,0),(127,103,1,0),(128,102,0,0),(129,104,0,0),(130,105,0,0),(131,106,1,0),(132,107,0,0),(133,108,0,0),(134,109,0,0),(135,108,0,0),(136,110,0,0),(137,111,0,0),(138,112,0,0),(139,113,0,0),(140,114,0,0),(141,115,0,0),(142,116,1,0),(143,117,1,0),(144,116,1,0),(145,117,1,0),(146,116,1,0),(147,117,1,0),(148,116,1,0),(149,117,1,0),(150,118,1,0),(151,119,1,0),(152,119,1,0),(153,120,0,0),(154,121,0,0),(155,122,0,0),(156,123,1,0),(157,124,0,0),(158,125,1,0),(159,125,1,0),(160,126,0,0),(161,127,0,0),(162,127,0,0),(163,128,0,0),(164,129,0,0),(165,130,0,0),(166,131,0,0),(167,132,0,0),(168,134,0,0),(169,135,0,0),(170,137,1,0),(171,137,1,0),(172,137,1,0),(173,137,1,0),(174,137,1,0),(175,137,1,0),(176,138,0,0),(177,139,0,0),(178,141,0,0),(179,142,0,0),(180,143,1,0),(181,144,0,0),(182,145,0,0),(183,146,0,0),(184,147,1,0),(185,148,0,0),(186,150,0,0),(187,151,0,0),(188,152,0,0),(189,153,0,0),(190,154,0,0),(191,155,0,0),(192,156,0,0),(193,157,0,0),(194,158,0,0),(195,159,0,0),(196,160,0,0),(197,161,0,0),(198,162,0,0),(199,163,0,0),(200,164,0,0),(201,165,1,0),(202,166,1,0),(203,168,1,0),(204,168,1,0),(205,168,1,0),(206,169,0,0),(207,170,1,0),(208,171,1,0),(209,172,0,0),(210,173,0,0),(211,174,0,0),(212,175,1,0),(213,176,0,0),(214,177,1,0),(215,178,0,0),(216,179,0,0),(217,180,1,0),(218,180,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1072 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,8,18,2,NULL),(2,10,22,2,NULL),(3,23,16,2,NULL),(4,24,16,2,NULL),(5,7,16,2,NULL),(6,37,16,2,NULL),(7,38,16,2,NULL),(8,113,16,2,NULL),(9,73,43,2,NULL),(10,158,16,2,NULL),(11,133,43,2,NULL),(12,159,16,2,NULL),(13,135,43,2,NULL),(14,69,16,2,NULL),(15,80,43,2,NULL),(16,72,16,2,NULL),(17,81,43,2,NULL),(18,91,16,2,NULL),(19,101,43,2,NULL),(20,87,16,2,NULL),(21,75,14,2,NULL),(22,116,16,2,NULL),(23,90,34,2,NULL),(24,151,16,2,NULL),(25,116,1,2,NULL),(26,152,16,2,NULL),(27,116,2,2,NULL),(28,56,16,2,NULL),(29,116,3,2,NULL),(30,58,16,2,NULL),(31,116,4,2,NULL),(32,83,16,2,NULL),(33,116,6,2,NULL),(34,203,16,2,NULL),(35,116,7,2,NULL),(36,205,16,2,NULL),(37,116,12,2,NULL),(38,217,16,2,NULL),(39,218,16,2,NULL),(40,116,13,2,NULL),(41,184,16,2,NULL),(42,116,15,2,NULL),(43,201,16,2,NULL),(44,116,20,2,NULL),(45,202,16,2,NULL),(46,116,25,2,NULL),(47,208,16,2,NULL),(48,116,29,2,NULL),(49,214,16,2,NULL),(50,116,33,2,NULL),(51,6,16,2,NULL),(52,116,37,2,NULL),(53,12,16,2,NULL),(54,116,40,2,NULL),(55,23,26,2,NULL),(56,116,23,2,NULL),(57,24,26,2,NULL),(58,116,27,2,NULL),(59,7,26,2,NULL),(60,116,31,2,NULL),(61,37,26,2,NULL),(62,116,34,2,NULL),(63,38,26,2,NULL),(64,116,35,2,NULL),(65,113,26,2,NULL),(66,116,39,2,NULL),(67,158,26,2,NULL),(68,116,41,2,NULL),(69,159,26,2,NULL),(70,116,43,2,NULL),(71,69,26,2,NULL),(72,116,44,2,NULL),(73,72,26,2,NULL),(74,116,26,2,NULL),(75,91,26,2,NULL),(76,116,45,2,NULL),(77,87,26,2,NULL),(78,116,83,2,NULL),(79,151,26,2,NULL),(80,116,86,2,NULL),(81,152,26,2,NULL),(82,116,87,2,NULL),(83,56,26,2,NULL),(84,116,88,2,NULL),(85,58,26,2,NULL),(86,116,92,2,NULL),(87,83,26,2,NULL),(88,116,93,2,NULL),(89,203,26,2,NULL),(90,116,95,2,NULL),(91,205,26,2,NULL),(92,116,106,2,NULL),(93,217,26,2,NULL),(94,116,107,2,NULL),(95,218,26,2,NULL),(96,116,111,2,NULL),(97,184,26,2,NULL),(98,62,43,2,NULL),(99,201,26,2,NULL),(100,118,34,2,NULL),(101,202,26,2,NULL),(102,23,23,2,NULL),(103,208,26,2,NULL),(104,24,23,2,NULL),(105,214,26,2,NULL),(106,7,23,2,NULL),(107,37,23,2,NULL),(108,38,23,2,NULL),(109,113,23,2,NULL),(110,158,23,2,NULL),(111,159,23,2,NULL),(112,69,23,2,NULL),(113,72,23,2,NULL),(114,91,23,2,NULL),(115,87,23,2,NULL),(116,151,23,2,NULL),(117,152,23,2,NULL),(118,56,23,2,NULL),(119,58,23,2,NULL),(120,83,23,2,NULL),(121,203,23,2,NULL),(122,205,23,2,NULL),(123,217,23,2,NULL),(124,218,23,2,NULL),(125,184,23,2,NULL),(126,201,23,2,NULL),(127,202,23,2,NULL),(128,208,23,2,NULL),(129,214,23,2,NULL),(130,36,34,2,NULL),(131,106,43,2,NULL),(132,23,27,2,NULL),(133,24,27,2,NULL),(134,7,27,2,NULL),(135,37,27,2,NULL),(136,38,27,2,NULL),(137,113,27,2,NULL),(138,158,27,2,NULL),(139,159,27,2,NULL),(140,69,27,2,NULL),(141,72,27,2,NULL),(142,91,27,2,NULL),(143,87,27,2,NULL),(144,151,27,2,NULL),(145,152,27,2,NULL),(146,56,27,2,NULL),(147,58,27,2,NULL),(148,83,27,2,NULL),(149,203,27,2,NULL),(150,205,27,2,NULL),(151,217,27,2,NULL),(152,218,27,2,NULL),(153,184,27,2,NULL),(154,201,27,2,NULL),(155,202,27,2,NULL),(156,208,27,2,NULL),(157,214,27,2,NULL),(158,99,43,2,NULL),(159,23,31,2,NULL),(160,24,31,2,NULL),(161,7,31,2,NULL),(162,37,31,2,NULL),(163,38,31,2,NULL),(164,113,31,2,NULL),(165,158,31,2,NULL),(166,159,31,2,NULL),(167,69,31,2,NULL),(168,72,31,2,NULL),(169,91,31,2,NULL),(170,87,31,2,NULL),(171,151,31,2,NULL),(172,152,31,2,NULL),(173,56,31,2,NULL),(174,58,31,2,NULL),(175,83,31,2,NULL),(176,203,31,2,NULL),(177,205,31,2,NULL),(178,217,31,2,NULL),(179,218,31,2,NULL),(180,184,31,2,NULL),(181,201,31,2,NULL),(182,202,31,2,NULL),(183,208,31,2,NULL),(184,214,31,2,NULL),(185,43,14,2,NULL),(186,47,14,2,NULL),(187,64,43,2,NULL),(188,67,14,2,NULL),(189,23,34,2,NULL),(190,24,34,2,NULL),(191,7,34,2,NULL),(192,37,34,2,NULL),(193,38,34,2,NULL),(194,113,34,2,NULL),(195,158,34,2,NULL),(196,159,34,2,NULL),(197,69,34,2,NULL),(198,72,34,2,NULL),(199,91,34,2,NULL),(200,87,34,2,NULL),(201,151,34,2,NULL),(202,152,34,2,NULL),(203,56,34,2,NULL),(204,58,34,2,NULL),(205,83,34,2,NULL),(206,203,34,2,NULL),(207,205,34,2,NULL),(208,217,34,2,NULL),(209,218,34,2,NULL),(210,184,34,2,NULL),(211,201,34,2,NULL),(212,202,34,2,NULL),(213,208,34,2,NULL),(214,214,34,2,NULL),(215,112,34,2,NULL),(216,151,1,2,NULL),(217,152,1,2,NULL),(218,151,2,2,NULL),(219,152,2,2,NULL),(220,151,3,2,NULL),(221,152,3,2,NULL),(222,23,35,2,NULL),(223,24,35,2,NULL),(224,151,4,2,NULL),(225,152,4,2,NULL),(226,7,35,2,NULL),(227,37,35,2,NULL),(228,38,35,2,NULL),(229,151,6,2,NULL),(230,152,6,2,NULL),(231,151,7,2,NULL),(232,152,7,2,NULL),(233,113,35,2,NULL),(234,151,12,2,NULL),(235,152,12,2,NULL),(236,151,13,2,NULL),(237,152,13,2,NULL),(238,151,15,2,NULL),(239,152,15,2,NULL),(240,151,20,2,NULL),(241,152,20,2,NULL),(242,151,25,2,NULL),(243,152,25,2,NULL),(244,158,35,2,NULL),(245,159,35,2,NULL),(246,69,35,2,NULL),(247,72,35,2,NULL),(248,91,35,2,NULL),(249,151,29,2,NULL),(250,152,29,2,NULL),(251,151,33,2,NULL),(252,152,33,2,NULL),(253,87,35,2,NULL),(254,151,37,2,NULL),(255,152,37,2,NULL),(256,151,40,2,NULL),(257,152,40,2,NULL),(258,56,35,2,NULL),(259,58,35,2,NULL),(260,83,35,2,NULL),(261,151,39,2,NULL),(262,152,39,2,NULL),(263,151,41,2,NULL),(264,152,41,2,NULL),(265,151,43,2,NULL),(266,152,43,2,NULL),(267,151,44,2,NULL),(268,152,44,2,NULL),(269,151,45,2,NULL),(270,152,45,2,NULL),(271,151,83,2,NULL),(272,152,83,2,NULL),(273,151,86,2,NULL),(274,152,86,2,NULL),(275,151,87,2,NULL),(276,152,87,2,NULL),(277,151,88,2,NULL),(278,152,88,2,NULL),(279,151,92,2,NULL),(280,152,92,2,NULL),(281,151,93,2,NULL),(282,152,93,2,NULL),(283,151,95,2,NULL),(284,152,95,2,NULL),(285,203,35,2,NULL),(286,205,35,2,NULL),(287,217,35,2,NULL),(288,218,35,2,NULL),(289,151,106,2,NULL),(290,152,106,2,NULL),(291,151,107,2,NULL),(292,152,107,2,NULL),(293,184,35,2,NULL),(294,201,35,2,NULL),(295,202,35,2,NULL),(296,208,35,2,NULL),(297,214,35,2,NULL),(298,151,111,2,NULL),(299,152,111,2,NULL),(300,39,34,2,NULL),(301,77,38,2,NULL),(302,56,1,2,NULL),(303,58,1,2,NULL),(304,83,1,2,NULL),(305,56,2,2,NULL),(306,58,2,2,NULL),(307,83,2,2,NULL),(308,56,3,2,NULL),(309,58,3,2,NULL),(310,83,3,2,NULL),(311,56,4,2,NULL),(312,58,4,2,NULL),(313,83,4,2,NULL),(314,56,6,2,NULL),(315,58,6,2,NULL),(316,83,6,2,NULL),(317,56,7,2,NULL),(318,58,7,2,NULL),(319,83,7,2,NULL),(320,56,12,2,NULL),(321,58,12,2,NULL),(322,83,12,2,NULL),(323,56,13,2,NULL),(324,58,13,2,NULL),(325,83,13,2,NULL),(326,56,15,2,NULL),(327,58,15,2,NULL),(328,83,15,2,NULL),(329,56,20,2,NULL),(330,58,20,2,NULL),(331,83,20,2,NULL),(332,56,25,2,NULL),(333,58,25,2,NULL),(334,83,25,2,NULL),(335,56,29,2,NULL),(336,58,29,2,NULL),(337,83,29,2,NULL),(338,56,33,2,NULL),(339,58,33,2,NULL),(340,83,33,2,NULL),(341,56,37,2,NULL),(342,58,37,2,NULL),(343,83,37,2,NULL),(344,56,40,2,NULL),(345,58,40,2,NULL),(346,83,40,2,NULL),(347,56,39,2,NULL),(348,58,39,2,NULL),(349,83,39,2,NULL),(350,56,41,2,NULL),(351,58,41,2,NULL),(352,83,41,2,NULL),(353,56,43,2,NULL),(354,58,43,2,NULL),(355,83,43,2,NULL),(356,56,44,2,NULL),(357,58,44,2,NULL),(358,83,44,2,NULL),(359,56,45,2,NULL),(360,58,45,2,NULL),(361,83,45,2,NULL),(362,56,83,2,NULL),(363,58,83,2,NULL),(364,83,83,2,NULL),(365,56,86,2,NULL),(366,58,86,2,NULL),(367,83,86,2,NULL),(368,56,87,2,NULL),(369,58,87,2,NULL),(370,83,87,2,NULL),(371,56,88,2,NULL),(372,58,88,2,NULL),(373,83,88,2,NULL),(374,56,92,2,NULL),(375,58,92,2,NULL),(376,83,92,2,NULL),(377,56,93,2,NULL),(378,58,93,2,NULL),(379,83,93,2,NULL),(380,56,95,2,NULL),(381,58,95,2,NULL),(382,83,95,2,NULL),(383,56,106,2,NULL),(384,58,106,2,NULL),(385,83,106,2,NULL),(386,56,107,2,NULL),(387,58,107,2,NULL),(388,83,107,2,NULL),(389,56,111,2,NULL),(390,58,111,2,NULL),(391,83,111,2,NULL),(392,23,39,2,NULL),(393,24,39,2,NULL),(394,7,39,2,NULL),(395,37,39,2,NULL),(396,38,39,2,NULL),(397,113,39,2,NULL),(398,158,39,2,NULL),(399,159,39,2,NULL),(400,69,39,2,NULL),(401,72,39,2,NULL),(402,91,39,2,NULL),(403,87,39,2,NULL),(404,203,39,2,NULL),(405,205,39,2,NULL),(406,217,39,2,NULL),(407,218,39,2,NULL),(408,184,39,2,NULL),(409,201,39,2,NULL),(410,202,39,2,NULL),(411,208,39,2,NULL),(412,214,39,2,NULL),(413,92,43,2,NULL),(414,126,43,2,NULL),(415,128,43,2,NULL),(416,23,41,2,NULL),(417,24,41,2,NULL),(418,7,41,2,NULL),(419,37,41,2,NULL),(420,38,41,2,NULL),(421,113,41,2,NULL),(422,158,41,2,NULL),(423,159,41,2,NULL),(424,69,41,2,NULL),(425,72,41,2,NULL),(426,91,41,2,NULL),(427,87,41,2,NULL),(428,203,41,2,NULL),(429,205,41,2,NULL),(430,217,41,2,NULL),(431,218,41,2,NULL),(432,184,41,2,NULL),(433,201,41,2,NULL),(434,202,41,2,NULL),(435,208,41,2,NULL),(436,214,41,2,NULL),(437,23,43,2,NULL),(438,24,43,2,NULL),(439,7,43,2,NULL),(440,37,43,2,NULL),(441,38,43,2,NULL),(442,113,43,2,NULL),(443,158,43,2,NULL),(444,159,43,2,NULL),(445,69,43,2,NULL),(446,72,43,2,NULL),(447,91,43,2,NULL),(448,87,43,2,NULL),(449,203,43,2,NULL),(450,205,43,2,NULL),(451,217,43,2,NULL),(452,218,43,2,NULL),(453,184,43,2,NULL),(454,201,43,2,NULL),(455,202,43,2,NULL),(456,208,43,2,NULL),(457,214,43,2,NULL),(458,45,43,2,NULL),(459,53,43,2,NULL),(460,154,43,2,NULL),(461,23,44,2,NULL),(462,24,44,2,NULL),(463,7,44,2,NULL),(464,37,44,2,NULL),(465,38,44,2,NULL),(466,113,44,2,NULL),(467,158,44,2,NULL),(468,159,44,2,NULL),(469,69,44,2,NULL),(470,72,44,2,NULL),(471,91,44,2,NULL),(472,87,44,2,NULL),(473,203,44,2,NULL),(474,205,44,2,NULL),(475,217,44,2,NULL),(476,218,44,2,NULL),(477,184,44,2,NULL),(478,201,44,2,NULL),(479,202,44,2,NULL),(480,208,44,2,NULL),(481,214,44,2,NULL),(482,23,95,2,NULL),(483,24,95,2,NULL),(484,7,95,2,NULL),(485,37,95,2,NULL),(486,38,95,2,NULL),(487,113,95,2,NULL),(488,84,37,2,NULL),(489,158,95,2,NULL),(490,85,37,2,NULL),(491,159,95,2,NULL),(492,130,37,2,NULL),(493,69,95,2,NULL),(494,66,37,2,NULL),(495,72,95,2,NULL),(496,161,37,2,NULL),(497,91,95,2,NULL),(498,162,37,2,NULL),(499,87,95,2,NULL),(500,50,8,2,NULL),(501,203,95,2,NULL),(502,93,20,2,NULL),(503,205,95,2,NULL),(504,113,1,2,NULL),(505,217,95,2,NULL),(506,113,2,2,NULL),(507,218,95,2,NULL),(508,113,3,2,NULL),(509,184,95,2,NULL),(510,113,4,2,NULL),(511,201,95,2,NULL),(512,113,6,2,NULL),(513,202,95,2,NULL),(514,113,7,2,NULL),(515,208,95,2,NULL),(516,113,12,2,NULL),(517,214,95,2,NULL),(518,113,13,2,NULL),(519,203,1,2,NULL),(520,113,15,2,NULL),(521,205,1,2,NULL),(522,113,20,2,NULL),(523,203,2,2,NULL),(524,113,25,2,NULL),(525,205,2,2,NULL),(526,113,29,2,NULL),(527,203,3,2,NULL),(528,113,33,2,NULL),(529,205,3,2,NULL),(530,113,37,2,NULL),(531,203,4,2,NULL),(532,113,40,2,NULL),(533,205,4,2,NULL),(534,113,45,2,NULL),(535,203,6,2,NULL),(536,113,83,2,NULL),(537,205,6,2,NULL),(538,113,86,2,NULL),(539,203,7,2,NULL),(540,113,87,2,NULL),(541,205,7,2,NULL),(542,113,88,2,NULL),(543,203,12,2,NULL),(544,113,92,2,NULL),(545,205,12,2,NULL),(546,113,93,2,NULL),(547,203,13,2,NULL),(548,113,106,2,NULL),(549,205,13,2,NULL),(550,113,107,2,NULL),(551,203,15,2,NULL),(552,113,111,2,NULL),(553,205,15,2,NULL),(554,76,37,2,NULL),(555,203,20,2,NULL),(556,98,20,2,NULL),(557,205,20,2,NULL),(558,23,12,2,NULL),(559,203,25,2,NULL),(560,24,12,2,NULL),(561,205,25,2,NULL),(562,7,12,2,NULL),(563,203,29,2,NULL),(564,37,12,2,NULL),(565,205,29,2,NULL),(566,38,12,2,NULL),(567,203,33,2,NULL),(568,158,12,2,NULL),(569,205,33,2,NULL),(570,159,12,2,NULL),(571,203,37,2,NULL),(572,69,12,2,NULL),(573,205,37,2,NULL),(574,72,12,2,NULL),(575,203,40,2,NULL),(576,91,12,2,NULL),(577,205,40,2,NULL),(578,87,12,2,NULL),(579,203,45,2,NULL),(580,217,12,2,NULL),(581,205,45,2,NULL),(582,218,12,2,NULL),(583,203,83,2,NULL),(584,184,12,2,NULL),(585,205,83,2,NULL),(586,201,12,2,NULL),(587,203,86,2,NULL),(588,202,12,2,NULL),(589,205,86,2,NULL),(590,208,12,2,NULL),(591,203,87,2,NULL),(592,214,12,2,NULL),(593,205,87,2,NULL),(594,102,37,2,NULL),(595,203,88,2,NULL),(596,110,20,2,NULL),(597,205,88,2,NULL),(598,23,13,2,NULL),(599,203,92,2,NULL),(600,24,13,2,NULL),(601,205,92,2,NULL),(602,7,13,2,NULL),(603,203,93,2,NULL),(604,37,13,2,NULL),(605,205,93,2,NULL),(606,38,13,2,NULL),(607,203,106,2,NULL),(608,158,13,2,NULL),(609,205,106,2,NULL),(610,159,13,2,NULL),(611,203,107,2,NULL),(612,69,13,2,NULL),(613,205,107,2,NULL),(614,72,13,2,NULL),(615,203,111,2,NULL),(616,91,13,2,NULL),(617,205,111,2,NULL),(618,87,13,2,NULL),(619,217,1,2,NULL),(620,217,13,2,NULL),(621,218,1,2,NULL),(622,218,13,2,NULL),(623,217,2,2,NULL),(624,184,13,2,NULL),(625,218,2,2,NULL),(626,201,13,2,NULL),(627,217,3,2,NULL),(628,202,13,2,NULL),(629,218,3,2,NULL),(630,208,13,2,NULL),(631,217,4,2,NULL),(632,214,13,2,NULL),(633,218,4,2,NULL),(634,157,37,2,NULL),(635,217,6,2,NULL),(636,23,15,2,NULL),(637,218,6,2,NULL),(638,24,15,2,NULL),(639,217,7,2,NULL),(640,7,15,2,NULL),(641,218,7,2,NULL),(642,37,15,2,NULL),(643,217,15,2,NULL),(644,38,15,2,NULL),(645,218,15,2,NULL),(646,158,15,2,NULL),(647,217,20,2,NULL),(648,159,15,2,NULL),(649,218,20,2,NULL),(650,69,15,2,NULL),(651,217,25,2,NULL),(652,72,15,2,NULL),(653,218,25,2,NULL),(654,91,15,2,NULL),(655,217,29,2,NULL),(656,87,15,2,NULL),(657,218,29,2,NULL),(658,184,15,2,NULL),(659,217,33,2,NULL),(660,201,15,2,NULL),(661,218,33,2,NULL),(662,202,15,2,NULL),(663,217,37,2,NULL),(664,208,15,2,NULL),(665,218,37,2,NULL),(666,214,15,2,NULL),(667,217,40,2,NULL),(668,46,8,2,NULL),(669,218,40,2,NULL),(670,48,37,2,NULL),(671,217,45,2,NULL),(672,94,8,2,NULL),(673,218,45,2,NULL),(674,153,8,2,NULL),(675,217,83,2,NULL),(676,23,20,2,NULL),(677,218,83,2,NULL),(678,24,20,2,NULL),(679,217,86,2,NULL),(680,7,20,2,NULL),(681,218,86,2,NULL),(682,37,20,2,NULL),(683,217,87,2,NULL),(684,38,20,2,NULL),(685,218,87,2,NULL),(686,158,20,2,NULL),(687,217,88,2,NULL),(688,159,20,2,NULL),(689,218,88,2,NULL),(690,69,20,2,NULL),(691,217,92,2,NULL),(692,72,20,2,NULL),(693,218,92,2,NULL),(694,91,20,2,NULL),(695,217,93,2,NULL),(696,87,20,2,NULL),(697,218,93,2,NULL),(698,184,20,2,NULL),(699,217,106,2,NULL),(700,201,20,2,NULL),(701,218,106,2,NULL),(702,202,20,2,NULL),(703,217,107,2,NULL),(704,208,20,2,NULL),(705,218,107,2,NULL),(706,214,20,2,NULL),(707,217,111,2,NULL),(708,42,20,2,NULL),(709,218,111,2,NULL),(710,158,1,2,NULL),(711,23,106,2,NULL),(712,159,1,2,NULL),(713,24,106,2,NULL),(714,158,2,2,NULL),(715,7,106,2,NULL),(716,159,2,2,NULL),(717,37,106,2,NULL),(718,158,3,2,NULL),(719,38,106,2,NULL),(720,159,3,2,NULL),(721,158,106,2,NULL),(722,23,25,2,NULL),(723,159,106,2,NULL),(724,24,25,2,NULL),(725,69,106,2,NULL),(726,158,4,2,NULL),(727,72,106,2,NULL),(728,159,4,2,NULL),(729,91,106,2,NULL),(730,7,25,2,NULL),(731,87,106,2,NULL),(732,37,25,2,NULL),(733,184,106,2,NULL),(734,38,25,2,NULL),(735,201,106,2,NULL),(736,158,6,2,NULL),(737,202,106,2,NULL),(738,159,6,2,NULL),(739,208,106,2,NULL),(740,158,7,2,NULL),(741,214,106,2,NULL),(742,159,7,2,NULL),(743,23,107,2,NULL),(744,69,25,2,NULL),(745,24,107,2,NULL),(746,72,25,2,NULL),(747,7,107,2,NULL),(748,91,25,2,NULL),(749,37,107,2,NULL),(750,158,29,2,NULL),(751,38,107,2,NULL),(752,159,29,2,NULL),(753,158,107,2,NULL),(754,158,33,2,NULL),(755,159,107,2,NULL),(756,159,33,2,NULL),(757,69,107,2,NULL),(758,87,25,2,NULL),(759,72,107,2,NULL),(760,158,37,2,NULL),(761,91,107,2,NULL),(762,159,37,2,NULL),(763,87,107,2,NULL),(764,158,40,2,NULL),(765,184,107,2,NULL),(766,159,40,2,NULL),(767,201,107,2,NULL),(768,158,45,2,NULL),(769,202,107,2,NULL),(770,159,45,2,NULL),(771,208,107,2,NULL),(772,158,83,2,NULL),(773,214,107,2,NULL),(774,159,83,2,NULL),(775,194,108,2,NULL),(776,158,86,2,NULL),(777,198,108,2,NULL),(778,159,86,2,NULL),(779,184,1,2,NULL),(780,158,87,2,NULL),(781,201,1,2,NULL),(782,159,87,2,NULL),(783,202,1,2,NULL),(784,158,88,2,NULL),(785,208,1,2,NULL),(786,159,88,2,NULL),(787,214,1,2,NULL),(788,158,92,2,NULL),(789,184,2,2,NULL),(790,159,92,2,NULL),(791,201,2,2,NULL),(792,158,93,2,NULL),(793,202,2,2,NULL),(794,159,93,2,NULL),(795,208,2,2,NULL),(796,184,25,2,NULL),(797,214,2,2,NULL),(798,201,25,2,NULL),(799,184,3,2,NULL),(800,202,25,2,NULL),(801,201,3,2,NULL),(802,208,25,2,NULL),(803,202,3,2,NULL),(804,214,25,2,NULL),(805,208,3,2,NULL),(806,158,111,2,NULL),(807,214,3,2,NULL),(808,159,111,2,NULL),(809,184,4,2,NULL),(810,138,20,2,NULL),(811,201,4,2,NULL),(812,140,28,2,NULL),(813,202,4,2,NULL),(814,69,1,2,NULL),(815,208,4,2,NULL),(816,72,1,2,NULL),(817,214,4,2,NULL),(818,91,1,2,NULL),(819,184,6,2,NULL),(820,69,2,2,NULL),(821,201,6,2,NULL),(822,72,2,2,NULL),(823,202,6,2,NULL),(824,91,2,2,NULL),(825,208,6,2,NULL),(826,69,3,2,NULL),(827,214,6,2,NULL),(828,72,3,2,NULL),(829,184,7,2,NULL),(830,91,3,2,NULL),(831,201,7,2,NULL),(832,69,4,2,NULL),(833,202,7,2,NULL),(834,72,4,2,NULL),(835,208,7,2,NULL),(836,91,4,2,NULL),(837,214,7,2,NULL),(838,69,6,2,NULL),(839,184,29,2,NULL),(840,72,6,2,NULL),(841,201,29,2,NULL),(842,91,6,2,NULL),(843,202,29,2,NULL),(844,69,7,2,NULL),(845,208,29,2,NULL),(846,72,7,2,NULL),(847,214,29,2,NULL),(848,91,7,2,NULL),(849,184,33,2,NULL),(850,69,29,2,NULL),(851,201,33,2,NULL),(852,72,29,2,NULL),(853,202,33,2,NULL),(854,91,29,2,NULL),(855,208,33,2,NULL),(856,69,33,2,NULL),(857,214,33,2,NULL),(858,72,33,2,NULL),(859,184,37,2,NULL),(860,91,33,2,NULL),(861,201,37,2,NULL),(862,69,37,2,NULL),(863,202,37,2,NULL),(864,72,37,2,NULL),(865,208,37,2,NULL),(866,91,37,2,NULL),(867,214,37,2,NULL),(868,69,40,2,NULL),(869,184,40,2,NULL),(870,72,40,2,NULL),(871,201,40,2,NULL),(872,91,40,2,NULL),(873,202,40,2,NULL),(874,69,45,2,NULL),(875,208,40,2,NULL),(876,72,45,2,NULL),(877,214,40,2,NULL),(878,91,45,2,NULL),(879,184,45,2,NULL),(880,69,83,2,NULL),(881,201,45,2,NULL),(882,72,83,2,NULL),(883,202,45,2,NULL),(884,91,83,2,NULL),(885,208,45,2,NULL),(886,69,86,2,NULL),(887,214,45,2,NULL),(888,72,86,2,NULL),(889,184,83,2,NULL),(890,91,86,2,NULL),(891,201,83,2,NULL),(892,69,87,2,NULL),(893,202,83,2,NULL),(894,72,87,2,NULL),(895,208,83,2,NULL),(896,91,87,2,NULL),(897,214,83,2,NULL),(898,69,88,2,NULL),(899,184,86,2,NULL),(900,72,88,2,NULL),(901,201,86,2,NULL),(902,91,88,2,NULL),(903,202,86,2,NULL),(904,69,92,2,NULL),(905,208,86,2,NULL),(906,72,92,2,NULL),(907,214,86,2,NULL),(908,91,92,2,NULL),(909,184,87,2,NULL),(910,69,93,2,NULL),(911,201,87,2,NULL),(912,72,93,2,NULL),(913,202,87,2,NULL),(914,91,93,2,NULL),(915,208,87,2,NULL),(916,69,111,2,NULL),(917,214,87,2,NULL),(918,72,111,2,NULL),(919,184,88,2,NULL),(920,91,111,2,NULL),(921,201,88,2,NULL),(922,23,29,2,NULL),(923,202,88,2,NULL),(924,24,29,2,NULL),(925,208,88,2,NULL),(926,7,29,2,NULL),(927,214,88,2,NULL),(928,37,29,2,NULL),(929,184,92,2,NULL),(930,38,29,2,NULL),(931,201,92,2,NULL),(932,87,29,2,NULL),(933,202,92,2,NULL),(934,100,37,2,NULL),(935,208,92,2,NULL),(936,104,37,2,NULL),(937,214,92,2,NULL),(938,105,37,2,NULL),(939,184,93,2,NULL),(940,23,33,2,NULL),(941,201,93,2,NULL),(942,24,33,2,NULL),(943,202,93,2,NULL),(944,7,33,2,NULL),(945,208,93,2,NULL),(946,37,33,2,NULL),(947,214,93,2,NULL),(948,38,33,2,NULL),(949,184,111,2,NULL),(950,87,33,2,NULL),(951,201,111,2,NULL),(952,111,20,2,NULL),(953,202,111,2,NULL),(954,87,1,2,NULL),(955,208,111,2,NULL),(956,87,2,2,NULL),(957,214,111,2,NULL),(958,87,3,2,NULL),(959,187,95,2,NULL),(960,87,4,2,NULL),(961,193,95,2,NULL),(962,87,6,2,NULL),(963,23,111,2,NULL),(964,87,7,2,NULL),(965,24,111,2,NULL),(966,87,37,2,NULL),(967,7,111,2,NULL),(968,87,40,2,NULL),(969,37,111,2,NULL),(970,87,45,2,NULL),(971,38,111,2,NULL),(972,87,83,2,NULL),(973,87,111,2,NULL),(974,87,86,2,NULL),(975,87,87,2,NULL),(976,87,88,2,NULL),(977,87,92,2,NULL),(978,87,93,2,NULL),(979,23,37,2,NULL),(980,24,37,2,NULL),(981,7,37,2,NULL),(982,37,37,2,NULL),(983,38,37,2,NULL),(984,115,37,2,NULL),(985,160,37,2,NULL),(986,163,37,2,NULL),(987,23,40,2,NULL),(988,24,40,2,NULL),(989,7,40,2,NULL),(990,37,40,2,NULL),(991,38,40,2,NULL),(992,23,45,2,NULL),(993,24,45,2,NULL),(994,7,45,2,NULL),(995,37,45,2,NULL),(996,38,45,2,NULL),(997,23,83,2,NULL),(998,24,83,2,NULL),(999,7,83,2,NULL),(1000,37,83,2,NULL),(1001,38,83,2,NULL),(1002,23,86,2,NULL),(1003,24,86,2,NULL),(1004,7,86,2,NULL),(1005,37,86,2,NULL),(1006,38,86,2,NULL),(1007,23,87,2,NULL),(1008,24,87,2,NULL),(1009,7,87,2,NULL),(1010,37,87,2,NULL),(1011,38,87,2,NULL),(1012,23,88,2,NULL),(1013,24,88,2,NULL),(1014,7,88,2,NULL),(1015,37,88,2,NULL),(1016,38,88,2,NULL),(1017,23,92,2,NULL),(1018,24,92,2,NULL),(1019,7,92,2,NULL),(1020,37,92,2,NULL),(1021,38,92,2,NULL),(1022,23,93,2,NULL),(1023,24,93,2,NULL),(1024,7,93,2,NULL),(1025,37,93,2,NULL),(1026,38,93,2,NULL),(1027,9,6,2,NULL),(1028,11,6,2,NULL),(1029,13,6,2,NULL),(1030,23,1,2,NULL),(1031,24,1,2,NULL),(1032,7,1,2,NULL),(1033,37,1,2,NULL),(1034,38,1,2,NULL),(1035,5,1,2,NULL),(1036,20,6,2,NULL),(1037,25,6,2,NULL),(1038,26,1,2,NULL),(1039,51,1,2,NULL),(1040,71,1,2,NULL),(1041,23,2,2,NULL),(1042,24,2,2,NULL),(1043,7,2,2,NULL),(1044,37,2,2,NULL),(1045,38,2,2,NULL),(1046,18,2,2,NULL),(1047,23,4,2,NULL),(1048,24,4,2,NULL),(1049,7,3,2,NULL),(1050,37,3,2,NULL),(1051,38,3,2,NULL),(1052,23,6,2,NULL),(1053,24,6,2,NULL),(1054,23,7,2,NULL),(1055,24,7,2,NULL),(1056,27,1,2,NULL),(1057,52,6,2,NULL),(1058,7,4,2,NULL),(1059,37,4,2,NULL),(1060,38,4,2,NULL),(1061,40,5,2,NULL),(1062,44,2,2,NULL),(1063,7,6,2,NULL),(1064,37,6,2,NULL),(1065,38,6,2,NULL),(1066,7,7,2,NULL),(1067,37,7,2,NULL),(1068,38,7,2,NULL),(1069,19,6,2,NULL),(1070,28,6,2,NULL),(1071,29,6,2,NULL);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.zhangda.lianliankan.xiaoniao.AdContentProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_CACHE_FILESYSTEM'),(18,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.DELETE_CACHE_FILES'),(13,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(15,'android.permission.READ_EXTERNAL_STORAGE'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.SET_WALLPAPER'),(14,'android.permission.VIBRATE'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(10,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
INSERT INTO `Providers` VALUES (1,114,0,NULL,NULL);
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'file://',NULL,NULL,NULL),(11,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'',NULL,NULL,NULL),(14,NULL,NULL,'file://',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(35,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(38,NULL,NULL,'file://',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'',NULL,NULL,NULL),(52,NULL,NULL,'',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,133,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,2,2),(13,2,3),(14,2,4),(15,2,5),(16,2,6),(17,2,7),(18,2,8),(19,2,9),(20,2,10),(21,2,11),(22,3,1),(23,3,2),(24,3,3),(25,3,4),(26,3,5),(27,3,6),(28,3,7),(29,3,8),(30,4,1),(31,3,9),(32,4,5),(33,3,10),(34,4,6),(35,3,11),(36,4,9),(37,4,12),(38,5,1),(39,5,2),(40,5,3),(41,5,5),(42,5,6),(43,5,9),(44,5,10),(45,5,12),(46,5,13),(47,5,14),(48,6,17),(49,6,16),(50,6,1),(51,6,18),(52,6,5),(53,6,6),(54,6,9),(55,6,12),(56,6,15);
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

-- Dump completed on 2015-10-12  3:30:28
