-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_438
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
INSERT INTO `ActionStrings` VALUES (19,'(.*)'),(14,'.ImageTestActivity'),(17,'.Myhall'),(12,'.PintuActivity'),(9,'.Web'),(29,'NULL-CONSTANT'),(2,'android.intent.action.BOOT_COMPLETED'),(27,'android.intent.action.CHOOSER'),(21,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(11,'android.intent.action.PACKAGE_ADDED'),(7,'android.intent.action.PACKAGE_REMOVED'),(20,'android.intent.action.SCREEN_OFF'),(26,'android.intent.action.SCREEN_ON'),(25,'android.intent.action.SENDTO'),(4,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(24,'android.net.conn.CONNECTIVITY_CHANGE'),(28,'cn.jnagtio.aphvebenq_l.showAdFinish'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(16,'com.m_zxjbrqmn.GameBootReceiver'),(15,'com.m_zxjbrqmn.ImageTestActivity'),(18,'com.m_zxjbrqmn.Myhall'),(8,'com.m_zxjbrqmn.Web'),(6,'com.pintu_gtmtpt.GameBootReceiver'),(13,'com.pintu_gtmtpt.PintuActivity'),(10,'com.wsuuiib.eidsvqkha.BootReceiver'),(23,'intent.action.mobosquare.signin'),(22,'intent.action.mobosquare.signout');
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
INSERT INTO `Applications` VALUES (1,'com.pintu_gtmtpt',20007),(2,'com.m_zxjbrqmn',10019),(3,'park.deoulaffsg',10045),(4,'com.tkw.msha.oq.qqvdsduar',10041),(5,'com.wsuuiib.eidsvqkha',10024),(6,'com.awrlg.dbvmpg.rswo.chaqe.rtttw.rzqsg',10008),(7,'cn.jnagtio.aphvebenq_l',10020);
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
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(5,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.pintu_gtmtpt.PintuActivity'),(2,2,'com.m_zxjbrqmn.Myhall'),(3,2,'com.m_zxjbrqmn.Web'),(4,1,'com.pintu_gtmtpt.GameInfo'),(5,2,'com.m_zxjbrqmn.HomeActivity'),(6,2,'com.m_zxjbrqmn.SortActivity1'),(7,1,'com.pintu_gtmtpt.TableClass'),(8,2,'com.m_zxjbrqmn.SortActivity2'),(9,1,'com.pintu_gtmtpt.GameAlertDialog'),(10,2,'com.m_zxjbrqmn.SearchActivity'),(11,1,'com.pintu_gtmtpt.GameService'),(12,2,'com.m_zxjbrqmn.ManagerActivity'),(13,1,'com.pintu_gtmtpt.GameBootReceiver'),(14,2,'com.m_zxjbrqmn.GameInfo'),(15,2,'com.m_zxjbrqmn.TableClass'),(16,2,'com.m_zxjbrqmn.GameAlertDialog'),(17,2,'com.m_zxjbrqmn.DevelopmentSettings'),(18,3,'park.deoulaffsg.wallsport0221j'),(19,3,'park.deoulaffsg.asianbody'),(20,2,'com.m_zxjbrqmn.image.ImageTestActivity'),(21,3,'park.deoulaffsg.game.Main'),(22,3,'park.deoulaffsg.MyWebView'),(23,2,'com.m_zxjbrqmn.image.ADactivity'),(24,3,'com.mobclix.android.sdk.MobclixBrowserActivity'),(25,2,'com.m_zxjbrqmn.GameService'),(26,3,'com.PsVKD.WOeUCdjAnwnPdbP'),(27,3,'com.PsVKD.MGJTAQksastN'),(28,2,'com.m_zxjbrqmn.GameBootReceiver'),(29,4,'com.tkw.msha.oq.qqvdsduar.SplashActivity'),(30,4,'com.tkw.msha.oq.qqvdsduar.SettingActivity'),(31,4,'com.tkw.msha.oq.qqvdsduar.HighRecordActivity'),(32,4,'com.tkw.msha.oq.qqvdsduar.LevelViewActivity'),(33,4,'com.tkw.msha.oq.qqvdsduar.GameMainActivity'),(34,4,'com.tkw.msha.oq.qqvdsduar.MenuActivity'),(35,4,'com.guohead.sdk.GuoheAdActivity'),(36,4,'com.google.ads.AdActivity'),(37,4,'cn.domob.android.ads.DomobActivity'),(38,4,'com.vpon.adon.android.WebInApp'),(39,4,'com.rao.flyfish.moregames.MoreGamesActivity'),(40,4,'com.qoEJhluJ.oTokiUwvwpsPvTO'),(41,4,'com.qoEJhluJ.WFUabFkwCdhnINo'),(42,5,'com.wsuuiib.eidsvqkha.SkyBallActivity'),(43,5,'com.DkqiBeUcD.PGlvKJiwGWPK'),(44,5,'com.DkqiBeUcD.NRorLrbWGUsQQpo'),(45,5,'com.DkqiBeUcD.MyAppInfo'),(46,5,'com.DkqiBeUcD.WalmUAkfNjmTKdg'),(47,5,'com.DkqiBeUcD.AKUjSKLQKFdNN'),(48,5,'com.DkqiBeUcD.MyAppAlertDialog'),(49,5,'com.DkqiBeUcD.kiNrwKavdGufS'),(50,5,'com.DkqiBeUcD.MyAppService'),(51,5,'com.DkqiBeUcD.BootReceiverService'),(52,1,'ai'),(53,1,'m'),(54,1,'r'),(55,3,'park.deoulaffsg.wallsport0221j$1'),(56,3,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(57,3,'park.deoulaffsg.MyWebView$7'),(58,3,'park.deoulaffsg.asianbody$2'),(59,3,'park.deoulaffsg.asianbody$3'),(60,3,'park.deoulaffsg.DialogUtil$1'),(61,1,'ac'),(62,2,'al'),(63,4,'cn.domob.android.ads.DomobAdManager'),(64,4,'cn.domob.android.ads.o$5'),(65,2,'p'),(66,5,'com.DkqiBeUcD.z'),(67,4,'cn.domob.android.ads.g$1'),(68,4,'cn.domob.android.ads.o'),(69,5,'com.DkqiBeUcD.ac'),(70,4,'cn.domob.android.a.a$a'),(71,2,'ay'),(72,4,'cn.domob.android.ads.e'),(73,6,'com.game.activity.FruitNinjiaGL1Activity'),(74,6,'com.ninja.studio.game.fruit.ninja.kaka.StartActivity'),(75,5,'com.DkqiBeUcD.bp'),(76,6,'com.beta.ads.promote.UpdateActivity'),(77,6,'com.beta.ads.promote.PromoteActivity'),(78,6,'com.google.ads.AdActivity'),(79,6,'com.mobosquare.sdk.game.WelcomeActivity'),(80,6,'com.mobosquare.sdk.game.DashboardActivity'),(81,2,'v'),(82,6,'com.mobosquare.sdk.game.MainActivity'),(83,6,'com.mobosquare.sdk.game.MobosquareActivity'),(84,2,'cv'),(85,6,'com.mobosquare.sdk.game.TaplerAllMeActivity'),(86,5,'com.DkqiBeUcD.bf'),(87,6,'com.mobosquare.sdk.game.TaplerBadgeActivity'),(88,6,'com.mobosquare.sdk.game.TaplerFollowFollowerActivity'),(89,2,'g'),(90,6,'com.mobosquare.sdk.game.TaplerActivity'),(91,6,'com.mobosquare.sdk.game.FriendFollowFollowerActivity'),(92,5,'com.DkqiBeUcD.y'),(93,6,'com.mobosquare.sdk.game.FriendBadgeActivity'),(94,6,'com.mobosquare.sdk.game.FriendAllNewsActivity'),(95,6,'com.mobosquare.sdk.game.FollowDialogActivity'),(96,6,'com.mobosquare.sdk.game.TaplerBadgeDetailActivity'),(97,6,'com.mobosquare.sdk.game.FriendProfileActivity'),(98,2,'ap'),(99,6,'com.mobosquare.sdk.game.HotGamesActivity'),(100,5,'com.DkqiBeUcD.af'),(101,6,'com.mobosquare.sdk.game.LeaderboardActivity'),(102,5,'com.DkqiBeUcD.ai'),(103,6,'com.mobosquare.sdk.game.SignupActivity'),(104,6,'com.mobosquare.sdk.game.EditProfileActivity'),(105,6,'com.mobosquare.sdk.game.RetrievePwdActivity'),(106,6,'com.mobosquare.sdk.game.CreateNewAccountActivity'),(107,6,'com.mobosquare.sdk.game.RankListActivity'),(108,6,'com.mobosquare.sdk.game.GlobalLeaderboardActivity'),(109,6,'com.mobosquare.sdk.game.LocalLeaderboardActivity'),(110,6,'com.mobosquare.sdk.game.SwitchAccountActivity'),(111,6,'com.mobosquare.sdk.game.CheckinResultActivity'),(112,6,'com.mobosquare.sdk.game.ChangeAvatarActivity'),(113,6,'com.mobosquare.sdk.game.TwitterSigninActivity'),(114,6,'com.mobosquare.sdk.game.DownloadMobosuqareActivity'),(115,6,'com.aaCoTk.sRLigOCf'),(116,6,'com.aaCoTk.TougfrQg'),(117,6,'com.aaCoTk.BOutSedcugdb'),(118,2,'s'),(119,6,'com.aaCoTk.ibqDrkcJMFdADIq'),(120,6,'com.aaCoTk.QkscCvsucvf'),(121,6,'com.aaCoTk.MhkJUORwhqaRf'),(122,6,'com.aaCoTk.cIWISjrEwK'),(123,6,'com.apk.LoginActivity'),(124,6,'com.apk.ApplistActivity'),(125,6,'com.apk.GamelistActivity'),(126,6,'com.blyts.greedyspiders.activities.MainActivity'),(127,6,'net.youmi.android.appoffers.YoumiOffersActivity'),(128,6,'com.kuguo.ad.MainActivity'),(129,2,'y'),(130,6,'cn.domob.android.ads.DomobActivity'),(131,6,'com.tencent.mobwin.MobinWINBrowserActivity'),(132,6,'com.mobisage.android.MobiSageActivity'),(133,5,'com.DkqiBeUcD.be'),(134,2,'du'),(135,6,'com.beta.ads.view.AdService'),(136,6,'com.beta.ads.services.CheckUpdateService'),(137,6,'com.beta.ads.downloadhelper.DownloadService'),(138,6,'com.mobosquare.sdk.game.UrlSpanHandleService'),(139,6,'com.aaCoTk.hepfaRQsrC'),(140,6,'com.kuguo.ad.MainService'),(141,6,'com.admogo.UpdateService'),(142,6,'com.mobisage.android.MobiSageApkService'),(143,6,'com.mobosquare.sdk.game.AccountSynchronizer'),(144,6,'com.aaCoTk.kScKfndNEUHi'),(145,6,'com.apk.InstallReceiver'),(146,6,'com.kuguo.ad.MainReceiver'),(147,6,'com.mobosquare.database.SearchDataProvider'),(148,6,'com.mobosquare.database.TaplerDataProvider'),(149,6,'com.mobosquare.database.GameDataProvider'),(150,2,'cy'),(151,7,'cn.jnagtio.aphvebenq_l.Main'),(152,7,'cn.jnagtio.aphvebenq_l.Browser'),(153,7,'cn.jnagtio.aphvebenq_l.Searcher'),(154,7,'cn.jnagtio.aphvebenq_l.Helper'),(155,7,'com.google.ads.AdActivity'),(156,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(157,7,'com.millennialmedia.android.VideoPlayer'),(158,7,'net.youmi.android.AdActivity'),(159,7,'com.vpon.adon.android.WebInApp'),(160,7,'com.mt.airad.MultiAD'),(161,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(162,7,'com.kLwTBBuj.uGMjAeBEPAwF'),(163,7,'com.kLwTBBuj.GpQuBdHAqMJ'),(164,7,'com.nd.dianjin.activity.OfferAppActivity'),(165,7,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(166,7,'cn.jnagtio.aphvebenq_l.Tools'),(167,7,'com.mt.airad.IlllllIlIlllIIll'),(168,7,'com.nd.dianjin.DianJinPlatform'),(169,7,'com.mt.airad.lIIIIIIIlIlIIIIl'),(170,7,'com.mt.airad.IIlIIIIlIIlIIlII');
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,9,'title'),(2,9,'version_code'),(3,4,'from_alert'),(4,4,'fromtype'),(5,4,'status'),(6,4,'from_table'),(7,24,'park.deoulaffsg.type'),(8,11,'service_channel'),(9,24,'park.deoulaffsg.data'),(10,4,'title'),(11,24,'park.deoulaffsg.currency'),(12,9,'btn_txt'),(13,16,'version_code'),(14,9,'apk_url'),(15,45,'from_table'),(16,9,'package_name'),(17,45,'title'),(18,1,'service_channel'),(19,9,'url'),(20,8,'nextclassid'),(21,48,'content'),(22,43,'NEW_APP_ID'),(23,44,'NEW_APP_ID'),(24,49,'content'),(25,48,'fromtable'),(26,9,'content'),(27,48,'package_name'),(28,4,'game'),(29,33,'GH_APPKEY'),(30,49,'apkurl'),(31,39,'game_icon'),(32,16,'content'),(33,12,'icon'),(34,12,'total'),(35,4,'filepath'),(36,48,'version_code'),(37,12,'app_name'),(38,10,'status'),(39,12,'package_name'),(40,12,'soft_id'),(41,12,'status'),(42,39,'game_info'),(43,14,'fromtype'),(44,33,'level'),(45,14,'from_table'),(46,38,'url'),(47,35,'link'),(48,40,'DOMOB_TEST_MODE'),(49,41,'DOMOB_TEST_MODE'),(50,33,'DOMOB_TEST_MODE'),(51,39,'game_package'),(52,14,'filepath'),(53,49,'packagename'),(54,37,'appName'),(55,12,'filepath'),(56,38,'adWidth'),(57,45,'package_name'),(58,47,'package_name'),(59,48,'btn_txt'),(60,39,'game_name'),(61,10,'package_name'),(62,45,'fromtype'),(63,36,'params'),(64,36,'com.google.ads.AdOpener'),(65,37,'actType'),(66,40,'DOMOB_PID'),(67,41,'DOMOB_PID'),(68,33,'DOMOB_PID'),(69,47,'from'),(70,50,'NEW_APP_ID'),(71,36,'action'),(72,40,'DOMOB_ALLOW_LOCATION'),(73,41,'DOMOB_ALLOW_LOCATION'),(74,33,'DOMOB_ALLOW_LOCATION'),(75,48,'url'),(76,33,'isSaveLevelIndex'),(77,48,'title'),(78,43,'version_code'),(79,20,'service_channel'),(80,2,'service_channel'),(81,3,'service_channel'),(82,37,'appId'),(83,45,'filepath'),(84,44,'poptitle'),(85,8,'status'),(86,47,'isDirectFromTable'),(87,16,'title'),(88,45,'status'),(89,49,'title'),(90,48,'apk_url'),(91,12,'completed'),(92,14,'game'),(93,43,'soft_id'),(94,45,'from_alert'),(95,44,'popurl'),(96,14,'status'),(97,2,'nextclassid'),(98,45,'game'),(99,12,'url'),(100,16,'btn_txt'),(101,14,'title'),(102,14,'from_alert'),(103,8,'package_name'),(104,25,'service_channel'),(105,16,'apk_url'),(106,16,'package_name'),(107,10,'version_code'),(108,16,'url'),(109,127,'url'),(110,129,'url'),(111,129,'shouldShowBottomBar'),(112,124,'canAccelerate'),(113,124,'overlayTitle'),(114,124,'overlayTransition'),(115,123,'action'),(116,123,'com.google.ads.AdOpener'),(117,129,'transitionTime'),(118,124,'shouldShowTitlebar'),(119,129,'shouldEnableBottomBar'),(120,129,'shouldShowTitlebar'),(121,119,'UMENG_APPKEY'),(122,120,'UMENG_APPKEY'),(123,128,'adURL'),(124,129,'shouldMakeOverlayTransparent'),(125,126,'A7D1721B9508405D8271AB82AC6D9B3C'),(126,129,'overlayTitle'),(127,124,'transitionTime'),(128,127,'adWidth'),(129,120,'UMENG_CHANNEL'),(130,129,'shouldResizeOverlay'),(131,124,'shouldResizeOverlay'),(132,129,'overlayTransition'),(133,128,'adID'),(134,123,'params'),(135,124,'shouldShowNavbar');
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'s',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',1,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,72,'r',1,NULL,NULL),(53,73,'a',0,NULL,NULL),(54,74,'a',1,NULL,NULL),(55,76,'a',0,NULL,NULL),(56,77,'a',0,NULL,NULL),(57,78,'a',0,NULL,NULL),(58,79,'a',1,NULL,NULL),(59,80,'a',1,NULL,NULL),(60,82,'a',1,NULL,NULL),(61,83,'a',1,NULL,NULL),(62,85,'a',1,NULL,NULL),(63,87,'a',1,NULL,NULL),(64,88,'a',1,NULL,NULL),(65,90,'a',1,NULL,NULL),(66,91,'a',1,NULL,NULL),(67,93,'a',1,NULL,NULL),(68,94,'a',1,NULL,NULL),(69,95,'a',1,NULL,NULL),(70,96,'a',0,NULL,NULL),(71,97,'a',0,NULL,NULL),(72,99,'a',1,NULL,NULL),(73,100,'r',1,NULL,NULL),(74,101,'a',1,NULL,NULL),(75,102,'r',1,NULL,NULL),(76,103,'a',1,NULL,NULL),(77,104,'a',1,NULL,NULL),(78,105,'a',1,NULL,NULL),(79,106,'a',1,NULL,NULL),(80,107,'a',1,NULL,NULL),(81,108,'a',1,NULL,NULL),(82,109,'a',1,NULL,NULL),(83,110,'a',1,NULL,NULL),(84,111,'a',1,NULL,NULL),(85,112,'a',1,NULL,NULL),(86,113,'a',1,NULL,NULL),(87,114,'a',1,NULL,NULL),(88,115,'a',0,NULL,NULL),(89,116,'a',0,NULL,NULL),(90,117,'a',1,NULL,NULL),(91,119,'a',1,NULL,NULL),(92,120,'a',1,NULL,NULL),(93,121,'a',0,NULL,NULL),(94,122,'a',0,NULL,NULL),(95,123,'a',1,NULL,NULL),(96,124,'a',0,NULL,NULL),(97,125,'a',0,NULL,NULL),(98,126,'a',0,NULL,NULL),(99,127,'a',0,NULL,NULL),(100,128,'a',0,NULL,NULL),(101,130,'a',0,NULL,NULL),(102,131,'a',0,NULL,NULL),(103,132,'a',0,NULL,NULL),(104,135,'s',0,NULL,NULL),(105,136,'s',0,NULL,NULL),(106,137,'s',0,NULL,NULL),(107,138,'s',0,NULL,NULL),(108,139,'s',1,NULL,NULL),(109,140,'s',0,NULL,NULL),(110,141,'s',1,NULL,NULL),(111,142,'s',1,NULL,NULL),(112,143,'r',1,NULL,NULL),(113,144,'r',1,NULL,NULL),(114,145,'r',1,NULL,NULL),(115,146,'r',1,NULL,NULL),(116,147,'p',0,NULL,NULL),(117,148,'p',0,NULL,NULL),(118,149,'p',0,NULL,NULL),(119,151,'a',1,NULL,NULL),(120,152,'a',1,NULL,NULL),(121,153,'a',1,NULL,NULL),(122,154,'a',1,NULL,NULL),(123,155,'a',0,NULL,NULL),(124,156,'a',0,NULL,NULL),(125,157,'a',0,NULL,NULL),(126,158,'a',0,NULL,NULL),(127,159,'a',0,NULL,NULL),(128,160,'a',0,NULL,NULL),(129,161,'a',0,NULL,NULL),(130,162,'a',0,NULL,NULL),(131,163,'a',1,NULL,NULL),(132,164,'a',0,NULL,NULL),(133,165,'r',1,NULL,NULL),(134,167,'r',1,NULL,NULL),(135,169,'r',1,NULL,NULL),(136,170,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,9),(2,2,7),(3,3,4),(4,4,4),(5,5,1),(6,6,4),(7,7,4),(8,8,7),(9,8,9),(10,9,9),(11,10,18),(12,11,4),(13,12,26),(14,13,13),(15,14,24),(16,15,4),(17,16,22),(18,17,22),(19,18,4),(20,19,19),(21,20,27),(22,21,7),(23,22,19),(24,23,19),(25,24,4),(26,25,19),(27,26,4),(28,27,3),(29,28,7),(30,28,9),(31,29,51),(32,30,9),(33,31,14),(34,32,45),(35,33,20),(36,34,4),(37,35,1),(38,36,23),(39,37,43),(40,38,15),(41,39,46),(42,40,9),(43,41,20),(44,42,13),(45,43,46),(46,44,4),(47,46,28),(48,45,33),(49,45,41),(50,45,40),(51,47,4),(52,48,48),(53,49,40),(54,49,41),(55,50,49),(56,51,5),(57,52,13),(58,53,2),(59,54,45),(60,55,16),(61,56,33),(62,56,41),(63,56,40),(64,57,33),(65,57,40),(66,57,41),(67,58,45),(68,59,5),(69,60,33),(70,60,40),(71,60,41),(72,61,23),(73,62,45),(74,64,8),(75,63,39),(76,65,43),(77,66,5),(78,67,46),(79,67,47),(80,67,48),(81,68,40),(82,69,51),(83,70,2),(84,71,41),(85,72,8),(86,73,43),(87,74,36),(88,75,48),(89,76,12),(90,77,45),(91,78,5),(92,79,8),(93,80,14),(94,81,43),(95,82,28),(96,83,12),(97,84,51),(98,85,45),(99,86,14),(100,87,5),(101,88,45),(102,89,2),(103,90,12),(104,91,2),(105,92,49),(106,93,15),(107,94,45),(108,95,20),(109,96,47),(110,96,48),(111,96,46),(112,97,2),(113,98,16),(114,98,15),(115,99,43),(116,100,3),(117,101,45),(118,102,16),(119,103,16),(120,104,16),(121,104,15),(122,105,44),(123,106,8),(124,107,5),(125,108,2),(126,109,8),(127,110,2),(128,111,14),(129,112,28),(130,113,3),(131,114,16),(132,115,10),(133,116,23),(134,117,8),(135,118,10),(136,119,14),(137,120,120),(138,120,121),(139,121,131),(140,122,130),(141,123,131),(142,124,120),(143,125,130),(144,126,123),(145,127,128);
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,9,'<com.pintu_gtmtpt.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(2,7,'<com.pintu_gtmtpt.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(3,4,'<com.pintu_gtmtpt.GameInfo: void onCreate(android.os.Bundle)>',172,'a',NULL),(4,52,'<ai: void onClick(android.view.View)>',242,'a',NULL),(5,1,'<com.pintu_gtmtpt.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(6,53,'<m: void onClick(android.view.View)>',218,'a',NULL),(7,4,'<com.pintu_gtmtpt.GameInfo: void onCreate(android.os.Bundle)>',76,'a',NULL),(8,54,'<r: void a(int,boolean)>',10,'s',NULL),(9,9,'<com.pintu_gtmtpt.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(10,55,'<park.deoulaffsg.wallsport0221j$1: void run()>',21,'a',NULL),(11,4,'<com.pintu_gtmtpt.GameInfo: void onCreate(android.os.Bundle)>',33,'s',NULL),(12,26,'<com.PsVKD.WOeUCdjAnwnPdbP: void onRestart()>',7,'a',NULL),(13,13,'<com.pintu_gtmtpt.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(14,56,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(15,53,'<m: void onClick(android.view.View)>',239,'a',NULL),(16,57,'<park.deoulaffsg.MyWebView$7: void onClick(android.view.View)>',7,'a',NULL),(17,22,'<park.deoulaffsg.MyWebView: void openFile(java.lang.String)>',19,'a',NULL),(18,4,'<com.pintu_gtmtpt.GameInfo: void onCreate(android.os.Bundle)>',90,'s',NULL),(19,58,'<park.deoulaffsg.asianbody$2: void onClick(android.view.View)>',8,'a',NULL),(20,27,'<com.PsVKD.MGJTAQksastN: void onRestart()>',4,'a',NULL),(21,7,'<com.pintu_gtmtpt.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(22,59,'<park.deoulaffsg.asianbody$3: void onClick(android.view.View)>',11,'a',NULL),(23,60,'<park.deoulaffsg.DialogUtil$1: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(24,61,'<ac: void onClick(android.view.View)>',218,'a',NULL),(25,19,'<park.deoulaffsg.asianbody: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(26,61,'<ac: void onClick(android.view.View)>',239,'a',NULL),(27,3,'<com.m_zxjbrqmn.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(28,54,'<r: void a(int,boolean)>',57,'a',NULL),(29,51,'<com.DkqiBeUcD.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(30,9,'<com.pintu_gtmtpt.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(31,14,'<com.m_zxjbrqmn.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(32,45,'<com.DkqiBeUcD.MyAppInfo: void onCreate(android.os.Bundle)>',10,'a',NULL),(33,62,'<al: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(34,4,'<com.pintu_gtmtpt.GameInfo: void onCreate(android.os.Bundle)>',81,'a',NULL),(35,1,'<com.pintu_gtmtpt.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(36,23,'<com.m_zxjbrqmn.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(37,43,'<com.DkqiBeUcD.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',57,'s',NULL),(38,15,'<com.m_zxjbrqmn.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(39,46,'<com.DkqiBeUcD.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(40,9,'<com.pintu_gtmtpt.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(41,20,'<com.m_zxjbrqmn.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(42,13,'<com.pintu_gtmtpt.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(43,46,'<com.DkqiBeUcD.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(44,4,'<com.pintu_gtmtpt.GameInfo: void onCreate(android.os.Bundle)>',177,'a',NULL),(45,63,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(46,28,'<com.m_zxjbrqmn.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(47,52,'<ai: void onClick(android.view.View)>',221,'a',NULL),(48,48,'<com.DkqiBeUcD.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(49,64,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(50,49,'<com.DkqiBeUcD.kiNrwKavdGufS: void onClick(android.view.View)>',26,'a',NULL),(51,65,'<p: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(52,13,'<com.pintu_gtmtpt.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(53,2,'<com.m_zxjbrqmn.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(54,66,'<com.DkqiBeUcD.z: void onClick(android.view.View)>',185,'a',NULL),(55,16,'<com.m_zxjbrqmn.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(56,67,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(57,68,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(58,69,'<com.DkqiBeUcD.ac: void onClick(android.view.View)>',197,'a',NULL),(59,65,'<p: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(60,70,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(61,71,'<ay: void onClick(android.view.View)>',6,'a',NULL),(62,45,'<com.DkqiBeUcD.MyAppInfo: void onCreate(android.os.Bundle)>',91,'s',NULL),(63,39,'<com.rao.flyfish.moregames.MoreGamesActivity: void showGameInfo(java.lang.String)>',9,'a',NULL),(64,8,'<com.m_zxjbrqmn.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(65,75,'<com.DkqiBeUcD.bp: void onClick(android.view.View)>',106,'a',NULL),(66,5,'<com.m_zxjbrqmn.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(67,47,'<com.DkqiBeUcD.AKUjSKLQKFdNN: void a(int,boolean)>',10,'s',NULL),(68,40,'<com.qoEJhluJ.oTokiUwvwpsPvTO: void b()>',3,'a',NULL),(69,51,'<com.DkqiBeUcD.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(70,81,'<v: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(71,41,'<com.qoEJhluJ.WFUabFkwCdhnINo: void a()>',3,'a',NULL),(72,84,'<cv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(73,86,'<com.DkqiBeUcD.bf: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(74,36,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(75,48,'<com.DkqiBeUcD.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(76,89,'<g: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(77,92,'<com.DkqiBeUcD.y: void onClick(android.view.View)>',197,'a',NULL),(78,5,'<com.m_zxjbrqmn.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(79,84,'<cv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(80,98,'<ap: void onClick(android.view.View)>',218,'a',NULL),(81,43,'<com.DkqiBeUcD.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',61,'s',NULL),(82,28,'<com.m_zxjbrqmn.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(83,89,'<g: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(84,51,'<com.DkqiBeUcD.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(85,69,'<com.DkqiBeUcD.ac: void onClick(android.view.View)>',182,'a',NULL),(86,98,'<ap: void onClick(android.view.View)>',239,'a',NULL),(87,5,'<com.m_zxjbrqmn.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(88,66,'<com.DkqiBeUcD.z: void onClick(android.view.View)>',200,'a',NULL),(89,2,'<com.m_zxjbrqmn.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(90,12,'<com.m_zxjbrqmn.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(91,118,'<s: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(92,49,'<com.DkqiBeUcD.kiNrwKavdGufS: void onCreate(android.os.Bundle)>',13,'s',NULL),(93,15,'<com.m_zxjbrqmn.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(94,45,'<com.DkqiBeUcD.MyAppInfo: void onCreate(android.os.Bundle)>',41,'s',NULL),(95,20,'<com.m_zxjbrqmn.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(96,47,'<com.DkqiBeUcD.AKUjSKLQKFdNN: void a(int,boolean)>',42,'a',NULL),(97,118,'<s: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(98,129,'<y: void a(int,boolean)>',57,'a',NULL),(99,133,'<com.DkqiBeUcD.be: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(100,134,'<du: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(101,92,'<com.DkqiBeUcD.y: void onClick(android.view.View)>',182,'a',NULL),(102,16,'<com.m_zxjbrqmn.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(103,16,'<com.m_zxjbrqmn.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(104,129,'<y: void a(int,boolean)>',10,'s',NULL),(105,44,'<com.DkqiBeUcD.NRorLrbWGUsQQpo: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(106,84,'<cv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(107,65,'<p: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(108,118,'<s: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(109,150,'<cy: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(110,118,'<s: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(111,14,'<com.m_zxjbrqmn.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(112,28,'<com.m_zxjbrqmn.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(113,3,'<com.m_zxjbrqmn.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(114,16,'<com.m_zxjbrqmn.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(115,10,'<com.m_zxjbrqmn.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(116,23,'<com.m_zxjbrqmn.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(117,8,'<com.m_zxjbrqmn.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(118,10,'<com.m_zxjbrqmn.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(119,14,'<com.m_zxjbrqmn.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(120,166,'<cn.jnagtio.aphvebenq_l.Tools: void shareMsg(android.content.Context,java.lang.String)>',6,'a',NULL),(121,168,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(122,162,'<com.kLwTBBuj.uGMjAeBEPAwF: void a(java.lang.String)>',10,'a',NULL),(123,163,'<com.kLwTBBuj.GpQuBdHAqMJ: void a()>',3,'a',NULL),(124,166,'<cn.jnagtio.aphvebenq_l.Tools: void shareMsg_email(android.content.Context,java.lang.String)>',8,'a',NULL),(125,162,'<com.kLwTBBuj.uGMjAeBEPAwF: void a()>',3,'a',NULL),(126,155,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(127,160,'<com.mt.airad.MultiAD: void _$2()>',7,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,5),(2,2,5),(3,5,1),(4,6,1),(5,7,1),(6,8,1),(7,10,5),(8,11,5),(9,19,6),(10,20,5),(11,21,5),(12,22,1),(13,23,1),(14,25,1),(15,26,1),(16,27,5),(17,31,1),(18,32,5),(19,33,1),(20,34,5),(21,35,5),(22,37,5),(23,38,1),(24,39,1),(25,40,1),(26,41,1),(27,42,8),(28,44,9),(29,45,10),(30,46,3),(31,48,1),(32,49,1),(33,50,5),(34,52,12),(35,53,5),(36,55,13),(37,56,1),(38,59,1),(39,60,14),(40,62,1),(41,63,15),(42,64,1),(43,66,16),(44,67,5),(45,69,5),(46,70,5),(47,72,5),(48,73,1),(49,74,5),(50,75,6),(51,76,5),(52,77,5),(53,78,17),(54,79,5),(55,80,5),(56,81,18),(57,82,5),(58,83,5),(59,85,5),(60,86,5),(61,87,1),(62,88,1),(63,89,1),(64,91,1),(65,95,5),(66,100,10),(67,101,5),(68,105,5),(69,106,5),(70,108,1),(71,107,19),(72,109,5),(73,110,1),(74,111,19),(75,112,1),(76,114,1),(77,115,1),(78,116,5),(79,117,1),(80,118,5),(81,119,5),(82,121,16),(83,123,21),(84,124,5),(85,125,1),(86,126,5),(87,127,1),(88,128,5),(89,129,1),(90,130,5),(91,131,1),(92,132,5),(93,133,1),(94,134,1),(95,136,1),(96,138,1),(97,144,1),(98,145,1),(99,147,1),(100,148,1),(101,151,5),(102,152,5),(103,153,3),(104,154,5),(105,155,5),(106,156,5),(107,157,5),(108,158,5),(109,175,25),(110,177,5),(111,179,27),(112,180,27),(113,181,27),(114,182,27),(115,183,27),(116,184,27),(117,185,27),(118,186,27),(119,188,5),(120,189,19),(121,190,19),(122,191,28),(123,192,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,5,2),(2,6,3),(3,7,2),(4,8,3),(5,22,2),(6,23,3),(7,25,2),(8,26,3),(9,31,2),(10,33,3),(11,38,2),(12,39,3),(13,40,2),(14,41,3),(15,48,2),(16,49,3),(17,56,2),(18,59,3),(19,62,2),(20,64,3),(21,73,5),(22,87,2),(23,88,3),(24,89,2),(25,91,3),(26,108,2),(27,110,3),(28,112,2),(29,114,3),(30,115,2),(31,117,3),(32,125,2),(33,127,3),(34,129,2),(35,131,3),(36,133,2),(37,134,3),(38,136,2),(39,138,3),(40,144,2),(41,145,3),(42,147,2),(43,148,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/pintu_gtmtpt/GameInfo'),(2,4,'com/pintu_gtmtpt/PintuActivity'),(3,9,'com/pintu_gtmtpt/GameService'),(4,12,'com/pintu_gtmtpt/PintuActivity'),(5,13,'com/pintu_gtmtpt/GameService'),(6,14,'com/pintu_gtmtpt/GameAlertDialog'),(7,16,'park/deoulaffsg/asianbody'),(8,17,'com/pintu_gtmtpt/GameService'),(9,18,'park/deoulaffsg/wallsport0221j'),(10,19,'com/pintu_gtmtpt/GameService'),(11,24,'park/deoulaffsg/asianbody'),(12,28,'com/pintu_gtmtpt/GameService'),(13,29,'park/deoulaffsg/MyWebView'),(14,30,'park/deoulaffsg/wallsport0221j'),(15,36,'park/deoulaffsg/game/Main'),(16,42,'com/m_zxjbrqmn/GameService'),(17,43,'com/pintu_gtmtpt/PintuActivity'),(18,44,'com/m_zxjbrqmn/GameService'),(19,45,'com/DkqiBeUcD/MyAppService'),(20,47,'com/m_zxjbrqmn/GameService'),(21,51,'com/pintu_gtmtpt/PintuActivity'),(22,52,'com/pintu_gtmtpt/GameService'),(23,54,'com/DkqiBeUcD/MyAppService'),(24,55,'com/pintu_gtmtpt/GameService'),(25,57,'com/DkqiBeUcD/MyAppInfo'),(26,58,'com/pintu_gtmtpt/GameInfo'),(27,60,'com/m_zxjbrqmn/GameService'),(28,61,'com/pintu_gtmtpt/GameService'),(29,63,'com/m_zxjbrqmn/GameService'),(30,65,'com/pintu_gtmtpt/PintuActivity'),(31,66,'com/m_zxjbrqmn/GameService'),(32,68,'com/DkqiBeUcD/MyAppInfo'),(33,75,'com/pintu_gtmtpt/GameService'),(34,78,'com/m_zxjbrqmn/GameService'),(35,81,'com/m_zxjbrqmn/GameService'),(36,84,'com/m_zxjbrqmn/GameAlertDialog'),(37,90,'com/m_zxjbrqmn/Myhall'),(38,92,'com/m_zxjbrqmn/image/ImageTestActivity'),(39,93,'com/DkqiBeUcD/MyAppService'),(40,96,'com/DkqiBeUcD/NRorLrbWGUsQQpo'),(41,94,'com/m_zxjbrqmn/GameInfo'),(42,97,'com/m_zxjbrqmn/Myhall'),(43,98,'com/DkqiBeUcD/MyAppService'),(44,99,'com/tkw/msha/oq/qqvdsduar/SplashActivity'),(45,100,'com/DkqiBeUcD/MyAppService'),(46,102,'com/tkw/msha/oq/qqvdsduar/SplashActivity'),(47,104,'com/wsuuiib/eidsvqkha/SkyBallActivity'),(48,103,'com/m_zxjbrqmn/Myhall'),(49,113,'com/m_zxjbrqmn/GameInfo'),(50,120,'com/DkqiBeUcD/MyAppService'),(51,121,'com/m_zxjbrqmn/GameService'),(52,122,'com/DkqiBeUcD/MyAppService'),(53,135,'com/m_zxjbrqmn/GameService'),(54,137,'com/m_zxjbrqmn/GameService'),(55,139,'com/m_zxjbrqmn/Myhall'),(56,140,'com/DkqiBeUcD/MyAppService'),(57,142,'com/DkqiBeUcD/MyAppService'),(58,141,'com/m_zxjbrqmn/GameInfo'),(59,143,'com/m_zxjbrqmn/GameService'),(60,146,'com/m_zxjbrqmn/Myhall'),(61,149,'com/m_zxjbrqmn/image/ImageTestActivity'),(62,150,'com/wsuuiib/eidsvqkha/SkyBallActivity'),(63,159,'com/m_zxjbrqmn/GameService'),(64,160,'com/wsuuiib/eidsvqkha/SkyBallActivity'),(65,161,'com/m_zxjbrqmn/GameInfo'),(66,162,'com/m_zxjbrqmn/GameInfo'),(67,163,'com/m_zxjbrqmn/Myhall'),(68,164,'com/m_zxjbrqmn/Myhall'),(69,165,'com/m_zxjbrqmn/Myhall'),(70,166,'com/m_zxjbrqmn/Myhall'),(71,167,'com/m_zxjbrqmn/GameService'),(72,168,'com/m_zxjbrqmn/GameService'),(73,169,'com/m_zxjbrqmn/GameInfo'),(74,170,'com/m_zxjbrqmn/GameService'),(75,171,'com/m_zxjbrqmn/GameInfo'),(76,172,'com/m_zxjbrqmn/GameService'),(77,173,'com/m_zxjbrqmn/GameInfo'),(78,174,'com/m_zxjbrqmn/Myhall'),(79,176,'com/nd/dianjin/activity/OfferAppActivity'),(80,178,'cn/jnagtio/aphvebenq_l/Main'),(81,187,'cn/jnagtio/aphvebenq_l/Main');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,10,3),(4,11,4),(5,20,5),(6,21,6),(7,27,7),(8,32,8),(9,34,9),(10,35,10),(11,37,11),(12,50,12),(13,53,13),(14,67,15),(15,69,16),(16,70,17),(17,72,18),(18,74,19),(19,77,20),(20,76,21),(21,79,22),(22,80,23),(23,82,24),(24,83,25),(25,85,26),(26,86,27),(27,95,29),(28,101,30),(29,105,31),(30,106,32),(31,109,33),(32,107,34),(33,111,35),(34,116,36),(35,118,37),(36,119,38),(37,123,39),(38,124,40),(39,126,41),(40,128,42),(41,130,43),(42,132,44),(43,151,45),(44,152,46),(45,154,47),(46,155,48),(47,156,49),(48,157,50),(49,158,51),(50,175,52),(51,177,53),(52,188,54),(53,189,55),(54,190,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'game'),(2,3,'fromtype'),(3,14,'title'),(4,14,'btn_txt'),(5,14,'need_adb_flag'),(6,14,'cont'),(7,14,'close_flag'),(8,57,'game'),(9,58,'id'),(10,57,'fromtype'),(11,58,'from_alert'),(12,58,'detail_flag'),(13,68,'id'),(14,68,'from_alert'),(15,68,'detail_flag'),(16,84,'title'),(17,84,'btn_txt'),(18,84,'need_adb_flag'),(19,84,'cont'),(20,84,'close_flag'),(21,90,'title'),(22,90,'nextclassid'),(23,90,'clicked'),(24,94,'title'),(25,96,'popurl'),(26,94,'game'),(27,96,'poptitle'),(28,94,'fromtype'),(29,97,'nextclassid'),(30,97,'clicked'),(31,103,'title'),(32,103,'nextclassid'),(33,103,'clicked'),(34,113,'game'),(35,113,'fromtype'),(36,139,'clicked'),(37,141,'game'),(38,141,'fromtype'),(39,146,'clicked'),(40,161,'title'),(41,161,'game'),(42,161,'fromtype'),(43,162,'title'),(44,162,'game'),(45,162,'fromtype'),(46,163,'clicked'),(47,164,'title'),(48,164,'nextclassid'),(49,164,'clicked'),(50,165,'clicked'),(51,169,'id'),(52,169,'from_alert'),(53,169,'detail_flag'),(54,171,'game'),(55,171,'fromtype'),(56,173,'game'),(57,173,'fromtype'),(58,175,'sms_body'),(59,176,'oriention'),(60,179,'android.intent.extra.INTENT'),(61,180,'android.intent.extra.INTENT'),(62,181,'android.intent.extra.TITLE'),(63,181,'android.intent.extra.INTENT'),(64,182,'android.intent.extra.INTENT'),(65,183,'android.intent.extra.TITLE'),(66,183,'android.intent.extra.INTENT'),(67,184,'android.intent.extra.INTENT'),(68,185,'android.intent.extra.TITLE'),(69,185,'android.intent.extra.INTENT'),(70,186,'android.intent.extra.TITLE'),(71,186,'android.intent.extra.INTENT'),(72,191,'adViewLeaveParameter'),(73,192,'adViewLeaveParameter');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,9,1),(10,10,1),(11,11,3),(12,13,1),(13,14,1),(14,15,1),(15,16,2),(16,18,1),(17,20,1),(18,21,1),(19,22,1),(20,23,1),(21,24,1),(22,25,2),(23,25,4),(24,26,7),(25,27,7),(26,28,11),(27,29,11),(28,30,7),(29,31,11),(30,32,1),(31,33,11),(32,34,5),(33,35,5),(34,36,5),(35,37,5),(36,38,5),(37,39,5),(38,40,5),(39,41,5),(40,42,5),(41,43,5),(42,44,5),(43,45,5),(44,46,5),(45,47,5),(46,48,20),(47,49,5),(48,50,4),(49,51,5),(50,52,5),(51,53,5),(52,54,5),(53,55,5),(54,56,5),(55,57,5),(56,58,5),(57,59,5),(58,60,5),(59,61,5),(60,62,5),(61,63,1),(62,64,1),(63,65,1),(64,67,1),(65,68,22),(66,68,23),(67,69,2),(68,69,4),(69,70,11),(70,71,24),(71,72,11),(72,73,11),(73,78,1),(74,79,11),(75,80,26),(76,81,20),(77,82,28),(78,83,29);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,6,2),(4,13,2),(5,14,2),(6,15,2),(7,18,2),(8,20,2),(9,24,2),(10,26,4),(11,27,4),(12,28,4),(13,29,4),(14,30,4),(15,32,2),(16,67,2),(17,73,4),(18,75,2),(19,76,2),(20,77,2),(21,78,2);
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
INSERT INTO `IFData` VALUES (1,26,'package',NULL,NULL,NULL,NULL,NULL),(2,27,'package',NULL,NULL,NULL,NULL,NULL),(3,28,'package',NULL,NULL,NULL,NULL,NULL),(4,29,'package',NULL,NULL,NULL,NULL,NULL),(5,30,'package',NULL,NULL,NULL,NULL,NULL),(6,31,'package',NULL,NULL,NULL,NULL,NULL),(7,33,'package',NULL,NULL,NULL,NULL,NULL),(8,70,'package',NULL,NULL,NULL,NULL,NULL),(9,72,'package',NULL,NULL,NULL,NULL,NULL),(10,73,'package',NULL,NULL,NULL,NULL,NULL),(11,79,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,10,'application','vnd.android.package-archive'),(2,11,'application','vnd.android.package-archive'),(3,27,'application','vnd.android.package-archive'),(4,35,'application','vnd.android.package-archive'),(5,37,'application','vnd.android.package-archive'),(6,50,'application','vnd.android.package-archive'),(7,67,'application','vnd.android.package-archive'),(8,69,'application','vnd.android.package-archive'),(9,70,'application','vnd.android.package-archive'),(10,74,'application','vnd.android.package-archive'),(11,76,'application','vnd.android.package-archive'),(12,80,'application','vnd.android.package-archive'),(13,82,'(.*)','(.*)'),(14,83,'application','vnd.android.package-archive'),(15,85,'(.*)','(.*)'),(16,101,'application','vnd.android.package-archive'),(17,107,'(.*)','(.*)'),(18,118,'application','vnd.android.package-archive'),(19,119,'application','vnd.android.package-archive'),(20,128,'(.*)','(.*)'),(21,130,'(.*)','(.*)'),(22,151,'application','vnd.android.package-archive'),(23,156,'(.*)','(.*)'),(24,158,'(.*)','(.*)'),(25,177,'application','vnd.android.package-archive'),(26,189,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.pintu_gtmtpt'),(2,4,'com.pintu_gtmtpt'),(3,5,'(.*)'),(4,6,''),(5,7,''),(6,8,'(.*)'),(7,9,'com.pintu_gtmtpt'),(8,12,'com.pintu_gtmtpt'),(9,13,'com.pintu_gtmtpt'),(10,14,'com.pintu_gtmtpt'),(11,16,'park.deoulaffsg'),(12,17,'com.pintu_gtmtpt'),(13,18,'park.deoulaffsg'),(14,19,'com.pintu_gtmtpt'),(15,22,'(.*)'),(16,23,''),(17,24,'park.deoulaffsg'),(18,25,''),(19,26,'(.*)'),(20,28,'com.pintu_gtmtpt'),(21,29,'park.deoulaffsg'),(22,30,'park.deoulaffsg'),(23,31,'(.*)'),(24,33,'(.*)'),(25,36,'park.deoulaffsg'),(26,38,'(.*)'),(27,39,''),(28,40,''),(29,41,'(.*)'),(30,42,'com.m_zxjbrqmn'),(31,43,'com.pintu_gtmtpt'),(32,44,'com.m_zxjbrqmn'),(33,45,'com.wsuuiib.eidsvqkha'),(34,47,'com.m_zxjbrqmn'),(35,48,'(.*)'),(36,49,'(.*)'),(37,51,'com.pintu_gtmtpt'),(38,52,'com.pintu_gtmtpt'),(39,54,'com.wsuuiib.eidsvqkha'),(40,55,'com.pintu_gtmtpt'),(41,56,'(.*)'),(42,59,'(.*)'),(43,57,'com.wsuuiib.eidsvqkha'),(44,58,'com.pintu_gtmtpt'),(45,60,'com.m_zxjbrqmn'),(46,61,'com.pintu_gtmtpt'),(47,62,'(.*)'),(48,63,'com.m_zxjbrqmn'),(49,64,'(.*)'),(50,65,'com.pintu_gtmtpt'),(51,66,'com.m_zxjbrqmn'),(52,68,'com.wsuuiib.eidsvqkha'),(53,75,'com.pintu_gtmtpt'),(54,78,'com.m_zxjbrqmn'),(55,81,'com.m_zxjbrqmn'),(56,84,'com.m_zxjbrqmn'),(57,87,'(.*)'),(58,88,''),(59,89,''),(60,90,'com.m_zxjbrqmn'),(61,91,'(.*)'),(62,92,'com.m_zxjbrqmn'),(63,93,'com.wsuuiib.eidsvqkha'),(64,96,'com.wsuuiib.eidsvqkha'),(65,94,'com.m_zxjbrqmn'),(66,97,'com.m_zxjbrqmn'),(67,98,'com.wsuuiib.eidsvqkha'),(68,99,'com.tkw.msha.oq.qqvdsduar'),(69,100,'com.wsuuiib.eidsvqkha'),(70,102,'com.tkw.msha.oq.qqvdsduar'),(71,104,'com.wsuuiib.eidsvqkha'),(72,103,'com.m_zxjbrqmn'),(73,108,'NULL-CONSTANT'),(74,110,'NULL-CONSTANT'),(75,112,'(.*)'),(76,113,'com.m_zxjbrqmn'),(77,114,''),(78,115,''),(79,117,'(.*)'),(80,120,'com.wsuuiib.eidsvqkha'),(81,121,'com.m_zxjbrqmn'),(82,122,'com.wsuuiib.eidsvqkha'),(83,125,'(.*)'),(84,127,''),(85,129,''),(86,131,'(.*)'),(87,133,'(.*)'),(88,134,''),(89,135,'com.m_zxjbrqmn'),(90,136,''),(91,137,'com.m_zxjbrqmn'),(92,138,'(.*)'),(93,139,'com.m_zxjbrqmn'),(94,140,'com.wsuuiib.eidsvqkha'),(95,142,'com.wsuuiib.eidsvqkha'),(96,141,'com.m_zxjbrqmn'),(97,143,'com.m_zxjbrqmn'),(98,144,'(.*)'),(99,145,''),(100,146,'com.m_zxjbrqmn'),(101,147,''),(102,148,'(.*)'),(103,149,'com.m_zxjbrqmn'),(104,150,'com.wsuuiib.eidsvqkha'),(105,159,'com.m_zxjbrqmn'),(106,160,'com.wsuuiib.eidsvqkha'),(107,161,'com.m_zxjbrqmn'),(108,162,'com.m_zxjbrqmn'),(109,163,'com.m_zxjbrqmn'),(110,164,'com.m_zxjbrqmn'),(111,165,'com.m_zxjbrqmn'),(112,166,'com.m_zxjbrqmn'),(113,167,'com.m_zxjbrqmn'),(114,168,'com.m_zxjbrqmn'),(115,169,'com.m_zxjbrqmn'),(116,170,'com.m_zxjbrqmn'),(117,171,'com.m_zxjbrqmn'),(118,172,'com.m_zxjbrqmn'),(119,173,'com.m_zxjbrqmn'),(120,174,'com.m_zxjbrqmn'),(121,176,'cn.jnagtio.aphvebenq_l'),(122,178,'cn.jnagtio.aphvebenq_l'),(123,187,'cn.jnagtio.aphvebenq_l');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,7,0),(4,8,0),(5,10,0),(6,11,0),(7,12,0),(8,13,0),(9,14,0),(10,15,0),(11,17,0),(12,18,0),(13,20,0),(14,25,0),(15,27,0),(16,28,0),(17,29,0),(18,41,0),(19,42,0),(20,43,0),(21,45,0),(22,46,0),(23,47,0),(24,50,0),(25,51,0),(26,13,0),(27,51,0),(28,13,0),(29,51,0),(30,28,0),(31,52,0),(32,54,0),(33,52,0),(34,58,0),(35,59,0),(36,60,0),(37,61,0),(38,62,0),(39,63,0),(40,64,0),(41,65,0),(42,66,0),(43,67,0),(44,68,0),(45,69,0),(46,72,0),(47,61,0),(48,73,0),(49,74,0),(50,75,0),(51,76,0),(52,77,0),(53,78,0),(54,79,0),(55,80,0),(56,81,0),(57,82,0),(58,83,0),(59,84,0),(60,85,0),(61,86,0),(62,87,0),(63,90,0),(64,91,0),(65,92,0),(66,95,0),(67,108,0),(68,112,0),(69,113,0),(70,114,0),(71,115,0),(72,115,0),(73,28,0),(74,119,0),(75,120,0),(76,121,0),(77,122,0),(78,131,0),(79,133,0),(80,134,0),(81,135,0),(82,136,0),(83,136,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,3,0,0),(5,4,1,0),(6,4,1,0),(7,4,1,0),(8,4,1,0),(9,5,0,0),(10,6,1,0),(11,6,1,0),(12,7,0,0),(13,8,0,0),(14,9,0,0),(15,10,1,0),(16,10,0,0),(17,11,0,0),(18,12,0,0),(19,13,0,0),(20,14,1,0),(21,14,1,0),(22,15,1,0),(23,15,1,0),(24,16,0,0),(25,15,1,0),(26,15,1,0),(27,17,1,0),(28,18,0,0),(29,19,0,0),(30,20,0,0),(31,21,1,0),(32,22,1,0),(33,21,1,0),(34,23,1,0),(35,24,1,0),(36,25,0,0),(37,24,1,0),(38,26,1,0),(39,26,1,0),(40,26,1,0),(41,26,1,0),(42,27,0,0),(43,28,0,0),(44,27,0,0),(45,29,0,0),(46,30,1,0),(47,31,0,0),(48,32,1,0),(49,32,1,0),(50,33,1,0),(51,34,0,0),(52,35,0,0),(53,36,1,0),(54,37,0,0),(55,35,0,0),(56,38,1,0),(57,39,0,0),(58,40,0,0),(59,38,1,0),(60,41,0,0),(61,42,0,0),(62,43,1,0),(63,41,0,0),(64,43,1,0),(65,44,0,0),(66,46,0,0),(67,47,1,0),(68,48,0,0),(69,49,1,0),(70,47,1,0),(71,49,1,0),(72,51,1,0),(73,50,1,0),(74,49,1,0),(75,52,0,0),(76,49,1,0),(77,54,1,0),(78,53,0,0),(79,54,1,0),(80,49,1,0),(81,53,0,0),(82,54,1,0),(83,49,1,0),(84,55,0,0),(85,54,1,0),(86,57,1,0),(87,58,1,0),(88,58,1,0),(89,58,1,0),(90,59,0,0),(91,58,1,0),(92,61,0,0),(93,62,0,0),(94,64,0,0),(95,63,1,0),(96,65,0,0),(97,66,0,0),(98,67,0,0),(99,68,0,0),(100,69,0,0),(101,70,1,0),(102,71,0,0),(103,72,0,0),(104,73,0,0),(105,74,1,0),(106,75,1,0),(107,74,1,0),(108,76,1,0),(109,75,1,0),(110,76,1,0),(111,74,1,0),(112,77,1,0),(113,78,0,0),(114,77,1,0),(115,77,1,0),(116,79,1,0),(117,77,1,0),(118,80,1,0),(119,80,1,0),(120,81,0,0),(121,82,0,0),(122,84,0,0),(123,83,1,0),(124,85,1,0),(125,86,1,0),(126,85,1,0),(127,86,1,0),(128,85,1,0),(129,86,1,0),(130,85,1,0),(131,86,1,0),(132,87,1,0),(133,88,1,0),(134,88,1,0),(135,89,0,0),(136,88,1,0),(137,90,0,0),(138,88,1,0),(139,91,0,0),(140,92,0,0),(141,93,0,0),(142,94,0,0),(143,95,0,0),(144,96,1,0),(145,96,1,0),(146,97,0,0),(147,96,1,0),(148,96,1,0),(149,98,0,0),(150,99,0,0),(151,100,1,0),(152,101,1,0),(153,102,1,0),(154,101,1,0),(155,103,1,0),(156,101,1,0),(157,103,1,0),(158,101,1,0),(159,104,0,0),(160,105,0,0),(161,106,0,0),(162,107,0,0),(163,108,0,0),(164,109,0,0),(165,110,0,0),(166,111,0,0),(167,112,0,0),(168,113,0,0),(169,114,0,0),(170,115,0,0),(171,116,0,0),(172,117,0,0),(173,118,0,0),(174,119,0,0),(175,120,1,0),(176,121,0,0),(177,122,1,0),(178,123,0,0),(179,124,1,0),(180,124,1,0),(181,124,1,0),(182,124,1,0),(183,124,1,0),(184,124,1,0),(185,124,1,0),(186,124,1,0),(187,125,0,0),(188,126,1,0),(189,126,1,0),(190,126,1,0),(191,127,1,0),(192,127,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.mobosquare.search.ninjakakalite.v2'),(2,2,'com.mobosquare.square.ninjakakalite.v2'),(3,3,'com.mobosquare.game.ninjakakalite.v2');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_CACHE_FILESYSTEM'),(16,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.DELETE_CACHE_FILES'),(13,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(12,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(19,'android.permission.RESTART_PACKAGES'),(11,'android.permission.SET_WALLPAPER'),(17,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(10,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,116,0,NULL,NULL),(2,117,0,NULL,NULL),(3,118,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'http://market.android.com/search?q=pub:superpeterpan',NULL,NULL,NULL),(9,NULL,NULL,'http://market.android.com/search?q=pub:JohnHancock',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'file://',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(17,NULL,NULL,'file://',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(22,NULL,NULL,'file://',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(24,NULL,NULL,'file://',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(29,NULL,NULL,'market://details?id=(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://',NULL,NULL,NULL),(39,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'file://',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'file://',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(47,NULL,NULL,'file://',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'file://',NULL,NULL,NULL),(50,NULL,NULL,'',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(52,NULL,NULL,'smsto:',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,45,14),(2,60,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,1,4),(6,2,2),(7,1,5),(8,2,3),(9,1,6),(10,2,4),(11,1,7),(12,2,5),(13,1,8),(14,2,6),(15,1,9),(16,2,7),(17,1,10),(18,2,8),(19,2,9),(20,2,10),(21,2,11),(22,3,1),(23,3,5),(24,3,6),(25,3,9),(26,3,11),(27,3,12),(28,3,13),(29,3,14),(30,4,16),(31,4,1),(32,4,5),(33,4,6),(34,4,7),(35,4,9),(36,4,14),(37,4,15),(38,5,17),(39,5,1),(40,5,2),(41,5,18),(42,5,3),(43,5,5),(44,5,6),(45,5,9),(46,5,10),(47,5,13),(48,5,14),(49,6,1),(50,6,2),(51,6,3),(52,6,5),(53,6,6),(54,6,9),(55,6,10),(56,6,13),(57,6,14),(58,6,17),(59,6,16),(60,6,19),(61,6,18),(62,7,16),(63,7,1),(64,7,5),(65,7,6),(66,7,7),(67,7,9),(68,7,14),(69,7,15);
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

-- Dump completed on 2015-10-09  0:39:40
