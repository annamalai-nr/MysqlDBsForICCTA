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
) ENGINE=InnoDB AUTO_INCREMENT=2079 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,31,54,2,NULL),(2,33,54,2,NULL),(3,1,54,2,NULL),(4,2,54,2,NULL),(5,46,54,2,NULL),(6,132,54,2,NULL),(7,56,54,2,NULL),(8,59,54,2,NULL),(9,153,54,2,NULL),(10,155,54,2,NULL),(11,157,54,2,NULL),(12,53,54,2,NULL),(13,105,54,2,NULL),(14,111,54,2,NULL),(15,48,54,2,NULL),(16,49,54,2,NULL),(17,62,54,2,NULL),(18,64,54,2,NULL),(19,144,54,2,NULL),(20,145,54,2,NULL),(21,147,54,2,NULL),(22,148,54,2,NULL),(23,106,54,2,NULL),(24,109,54,2,NULL),(25,73,54,2,NULL),(26,188,54,2,NULL),(27,190,54,2,NULL),(28,191,54,2,NULL),(29,192,54,2,NULL),(30,31,58,2,NULL),(31,33,58,2,NULL),(32,1,58,2,NULL),(33,2,58,2,NULL),(34,46,58,2,NULL),(35,132,58,2,NULL),(36,56,58,2,NULL),(37,59,58,2,NULL),(38,153,58,2,NULL),(39,155,58,2,NULL),(40,157,58,2,NULL),(41,53,58,2,NULL),(42,105,58,2,NULL),(43,111,58,2,NULL),(44,48,58,2,NULL),(45,49,58,2,NULL),(46,62,58,2,NULL),(47,64,58,2,NULL),(48,144,58,2,NULL),(49,145,58,2,NULL),(50,147,58,2,NULL),(51,148,58,2,NULL),(52,106,58,2,NULL),(53,109,58,2,NULL),(54,73,58,2,NULL),(55,188,58,2,NULL),(56,190,58,2,NULL),(57,191,58,2,NULL),(58,192,58,2,NULL),(59,31,59,2,NULL),(60,33,59,2,NULL),(61,1,59,2,NULL),(62,2,59,2,NULL),(63,46,59,2,NULL),(64,132,59,2,NULL),(65,56,59,2,NULL),(66,59,59,2,NULL),(67,153,59,2,NULL),(68,155,59,2,NULL),(69,157,59,2,NULL),(70,53,59,2,NULL),(71,105,59,2,NULL),(72,111,59,2,NULL),(73,48,59,2,NULL),(74,49,59,2,NULL),(75,62,59,2,NULL),(76,64,59,2,NULL),(77,144,59,2,NULL),(78,145,59,2,NULL),(79,147,59,2,NULL),(80,148,59,2,NULL),(81,106,59,2,NULL),(82,109,59,2,NULL),(83,73,59,2,NULL),(84,188,59,2,NULL),(85,190,59,2,NULL),(86,191,59,2,NULL),(87,192,59,2,NULL),(88,31,60,2,NULL),(89,33,60,2,NULL),(90,1,60,2,NULL),(91,2,60,2,NULL),(92,46,60,2,NULL),(93,132,60,2,NULL),(94,56,60,2,NULL),(95,59,60,2,NULL),(96,153,60,2,NULL),(97,155,60,2,NULL),(98,157,60,2,NULL),(99,53,60,2,NULL),(100,105,60,2,NULL),(101,111,60,2,NULL),(102,48,60,2,NULL),(103,49,60,2,NULL),(104,62,60,2,NULL),(105,64,60,2,NULL),(106,144,60,2,NULL),(107,145,60,2,NULL),(108,147,60,2,NULL),(109,148,60,2,NULL),(110,106,60,2,NULL),(111,109,60,2,NULL),(112,73,60,2,NULL),(113,188,60,2,NULL),(114,190,60,2,NULL),(115,191,60,2,NULL),(116,192,60,2,NULL),(117,31,61,2,NULL),(118,33,61,2,NULL),(119,1,61,2,NULL),(120,2,61,2,NULL),(121,46,61,2,NULL),(122,132,61,2,NULL),(123,56,61,2,NULL),(124,59,61,2,NULL),(125,153,61,2,NULL),(126,155,61,2,NULL),(127,157,61,2,NULL),(128,53,61,2,NULL),(129,105,61,2,NULL),(130,111,61,2,NULL),(131,48,61,2,NULL),(132,49,61,2,NULL),(133,62,61,2,NULL),(134,64,61,2,NULL),(135,144,61,2,NULL),(136,145,61,2,NULL),(137,147,61,2,NULL),(138,148,61,2,NULL),(139,106,61,2,NULL),(140,109,61,2,NULL),(141,73,61,2,NULL),(142,188,61,2,NULL),(143,31,119,2,NULL),(144,190,61,2,NULL),(145,33,119,2,NULL),(146,191,61,2,NULL),(147,1,119,2,NULL),(148,192,61,2,NULL),(149,2,119,2,NULL),(150,31,62,2,NULL),(151,46,119,2,NULL),(152,33,62,2,NULL),(153,132,119,2,NULL),(154,1,62,2,NULL),(155,56,119,2,NULL),(156,2,62,2,NULL),(157,59,119,2,NULL),(158,46,62,2,NULL),(159,153,119,2,NULL),(160,132,62,2,NULL),(161,155,119,2,NULL),(162,56,62,2,NULL),(163,157,119,2,NULL),(164,59,62,2,NULL),(165,53,119,2,NULL),(166,153,62,2,NULL),(167,105,119,2,NULL),(168,155,62,2,NULL),(169,111,119,2,NULL),(170,157,62,2,NULL),(171,48,119,2,NULL),(172,53,62,2,NULL),(173,49,119,2,NULL),(174,105,62,2,NULL),(175,62,119,2,NULL),(176,111,62,2,NULL),(177,64,119,2,NULL),(178,48,62,2,NULL),(179,144,119,2,NULL),(180,49,62,2,NULL),(181,145,119,2,NULL),(182,62,62,2,NULL),(183,147,119,2,NULL),(184,64,62,2,NULL),(185,148,119,2,NULL),(186,144,62,2,NULL),(187,106,119,2,NULL),(188,145,62,2,NULL),(189,109,119,2,NULL),(190,147,62,2,NULL),(191,73,119,2,NULL),(192,148,62,2,NULL),(193,188,119,2,NULL),(194,106,62,2,NULL),(195,190,119,2,NULL),(196,78,25,2,NULL),(197,109,62,2,NULL),(198,191,119,2,NULL),(199,81,25,2,NULL),(200,73,62,2,NULL),(201,192,119,2,NULL),(202,135,25,2,NULL),(203,188,62,2,NULL),(204,31,120,2,NULL),(205,42,25,2,NULL),(206,190,62,2,NULL),(207,33,120,2,NULL),(208,44,25,2,NULL),(209,191,62,2,NULL),(210,1,120,2,NULL),(211,168,25,2,NULL),(212,192,62,2,NULL),(213,97,2,2,NULL),(214,2,120,2,NULL),(215,31,63,2,NULL),(216,46,120,2,NULL),(217,113,14,2,NULL),(218,33,63,2,NULL),(219,132,120,2,NULL),(220,132,1,2,NULL),(221,1,63,2,NULL),(222,56,120,2,NULL),(223,132,4,2,NULL),(224,2,63,2,NULL),(225,59,120,2,NULL),(226,132,7,2,NULL),(227,46,63,2,NULL),(228,153,120,2,NULL),(229,132,63,2,NULL),(230,132,11,2,NULL),(231,155,120,2,NULL),(232,56,63,2,NULL),(233,132,13,2,NULL),(234,157,120,2,NULL),(235,59,63,2,NULL),(236,132,8,2,NULL),(237,53,120,2,NULL),(238,153,63,2,NULL),(239,132,10,2,NULL),(240,105,120,2,NULL),(241,155,63,2,NULL),(242,132,12,2,NULL),(243,111,120,2,NULL),(244,157,63,2,NULL),(245,132,14,2,NULL),(246,48,120,2,NULL),(247,53,63,2,NULL),(248,132,15,2,NULL),(249,49,120,2,NULL),(250,105,63,2,NULL),(251,132,17,2,NULL),(252,62,120,2,NULL),(253,111,63,2,NULL),(254,132,20,2,NULL),(255,64,120,2,NULL),(256,48,63,2,NULL),(257,132,25,2,NULL),(258,144,120,2,NULL),(259,49,63,2,NULL),(260,132,28,2,NULL),(261,145,120,2,NULL),(262,62,63,2,NULL),(263,132,18,2,NULL),(264,147,120,2,NULL),(265,64,63,2,NULL),(266,132,27,2,NULL),(267,148,120,2,NULL),(268,144,63,2,NULL),(269,132,29,2,NULL),(270,106,120,2,NULL),(271,145,63,2,NULL),(272,132,41,2,NULL),(273,109,120,2,NULL),(274,147,63,2,NULL),(275,132,42,2,NULL),(276,73,120,2,NULL),(277,148,63,2,NULL),(278,132,43,2,NULL),(279,188,120,2,NULL),(280,106,63,2,NULL),(281,132,45,2,NULL),(282,190,120,2,NULL),(283,109,63,2,NULL),(284,132,46,2,NULL),(285,191,120,2,NULL),(286,73,63,2,NULL),(287,132,47,2,NULL),(288,192,120,2,NULL),(289,188,63,2,NULL),(290,132,50,2,NULL),(291,31,121,2,NULL),(292,190,63,2,NULL),(293,132,51,2,NULL),(294,33,121,2,NULL),(295,191,63,2,NULL),(296,132,73,2,NULL),(297,1,121,2,NULL),(298,192,63,2,NULL),(299,132,75,2,NULL),(300,2,121,2,NULL),(301,31,64,2,NULL),(302,132,64,2,NULL),(303,46,121,2,NULL),(304,33,64,2,NULL),(305,132,65,2,NULL),(306,132,121,2,NULL),(307,1,64,2,NULL),(308,132,66,2,NULL),(309,56,121,2,NULL),(310,2,64,2,NULL),(311,132,67,2,NULL),(312,59,121,2,NULL),(313,46,64,2,NULL),(314,132,68,2,NULL),(315,153,121,2,NULL),(316,56,64,2,NULL),(317,132,69,2,NULL),(318,155,121,2,NULL),(319,59,64,2,NULL),(320,132,72,2,NULL),(321,157,121,2,NULL),(322,153,64,2,NULL),(323,132,74,2,NULL),(324,53,121,2,NULL),(325,155,64,2,NULL),(326,132,76,2,NULL),(327,105,121,2,NULL),(328,157,64,2,NULL),(329,132,77,2,NULL),(330,111,121,2,NULL),(331,53,64,2,NULL),(332,132,78,2,NULL),(333,48,121,2,NULL),(334,105,64,2,NULL),(335,132,79,2,NULL),(336,49,121,2,NULL),(337,111,64,2,NULL),(338,132,80,2,NULL),(339,62,121,2,NULL),(340,48,64,2,NULL),(341,132,81,2,NULL),(342,64,121,2,NULL),(343,49,64,2,NULL),(344,132,82,2,NULL),(345,144,121,2,NULL),(346,62,64,2,NULL),(347,132,83,2,NULL),(348,145,121,2,NULL),(349,64,64,2,NULL),(350,132,84,2,NULL),(351,147,121,2,NULL),(352,144,64,2,NULL),(353,132,85,2,NULL),(354,148,121,2,NULL),(355,145,64,2,NULL),(356,132,86,2,NULL),(357,106,121,2,NULL),(358,147,64,2,NULL),(359,132,87,2,NULL),(360,109,121,2,NULL),(361,148,64,2,NULL),(362,132,90,2,NULL),(363,73,121,2,NULL),(364,106,64,2,NULL),(365,132,91,2,NULL),(366,188,121,2,NULL),(367,109,64,2,NULL),(368,132,92,2,NULL),(369,190,121,2,NULL),(370,73,64,2,NULL),(371,132,95,2,NULL),(372,191,121,2,NULL),(373,188,64,2,NULL),(374,132,108,2,NULL),(375,192,121,2,NULL),(376,190,64,2,NULL),(377,132,112,2,NULL),(378,31,122,2,NULL),(379,191,64,2,NULL),(380,132,113,2,NULL),(381,33,122,2,NULL),(382,192,64,2,NULL),(383,132,115,2,NULL),(384,1,122,2,NULL),(385,31,65,2,NULL),(386,132,122,2,NULL),(387,2,122,2,NULL),(388,33,65,2,NULL),(389,132,131,2,NULL),(390,46,122,2,NULL),(391,1,65,2,NULL),(392,132,134,2,NULL),(393,56,122,2,NULL),(394,2,65,2,NULL),(395,132,135,2,NULL),(396,59,122,2,NULL),(397,46,65,2,NULL),(398,132,136,2,NULL),(399,153,122,2,NULL),(400,56,65,2,NULL),(401,94,14,2,NULL),(402,155,122,2,NULL),(403,59,65,2,NULL),(404,172,25,2,NULL),(405,157,122,2,NULL),(406,153,65,2,NULL),(407,31,8,2,NULL),(408,53,122,2,NULL),(409,155,65,2,NULL),(410,33,8,2,NULL),(411,105,122,2,NULL),(412,157,65,2,NULL),(413,1,8,2,NULL),(414,111,122,2,NULL),(415,53,65,2,NULL),(416,2,8,2,NULL),(417,48,122,2,NULL),(418,105,65,2,NULL),(419,46,8,2,NULL),(420,49,122,2,NULL),(421,111,65,2,NULL),(422,56,8,2,NULL),(423,62,122,2,NULL),(424,48,65,2,NULL),(425,59,8,2,NULL),(426,64,122,2,NULL),(427,49,65,2,NULL),(428,153,8,2,NULL),(429,144,122,2,NULL),(430,62,65,2,NULL),(431,155,8,2,NULL),(432,145,122,2,NULL),(433,64,65,2,NULL),(434,147,122,2,NULL),(435,157,8,2,NULL),(436,144,65,2,NULL),(437,148,122,2,NULL),(438,53,8,2,NULL),(439,145,65,2,NULL),(440,106,122,2,NULL),(441,105,8,2,NULL),(442,147,65,2,NULL),(443,111,8,2,NULL),(444,109,122,2,NULL),(445,148,65,2,NULL),(446,73,122,2,NULL),(447,48,8,2,NULL),(448,106,65,2,NULL),(449,49,8,2,NULL),(450,188,122,2,NULL),(451,109,65,2,NULL),(452,62,8,2,NULL),(453,190,122,2,NULL),(454,73,65,2,NULL),(455,64,8,2,NULL),(456,191,122,2,NULL),(457,188,65,2,NULL),(458,144,8,2,NULL),(459,192,122,2,NULL),(460,190,65,2,NULL),(461,188,1,2,NULL),(462,145,8,2,NULL),(463,191,65,2,NULL),(464,190,1,2,NULL),(465,147,8,2,NULL),(466,192,65,2,NULL),(467,188,4,2,NULL),(468,148,8,2,NULL),(469,31,66,2,NULL),(470,106,8,2,NULL),(471,190,4,2,NULL),(472,33,66,2,NULL),(473,109,8,2,NULL),(474,188,7,2,NULL),(475,1,66,2,NULL),(476,190,7,2,NULL),(477,73,8,2,NULL),(478,2,66,2,NULL),(479,188,8,2,NULL),(480,188,11,2,NULL),(481,46,66,2,NULL),(482,190,8,2,NULL),(483,190,11,2,NULL),(484,56,66,2,NULL),(485,191,8,2,NULL),(486,188,13,2,NULL),(487,59,66,2,NULL),(488,192,8,2,NULL),(489,190,13,2,NULL),(490,153,66,2,NULL),(491,170,25,2,NULL),(492,188,10,2,NULL),(493,155,66,2,NULL),(494,173,14,2,NULL),(495,190,10,2,NULL),(496,157,66,2,NULL),(497,31,10,2,NULL),(498,188,12,2,NULL),(499,53,66,2,NULL),(500,33,10,2,NULL),(501,190,12,2,NULL),(502,105,66,2,NULL),(503,1,10,2,NULL),(504,188,14,2,NULL),(505,111,66,2,NULL),(506,2,10,2,NULL),(507,190,14,2,NULL),(508,48,66,2,NULL),(509,46,10,2,NULL),(510,188,15,2,NULL),(511,49,66,2,NULL),(512,56,10,2,NULL),(513,190,15,2,NULL),(514,62,66,2,NULL),(515,188,17,2,NULL),(516,59,10,2,NULL),(517,64,66,2,NULL),(518,190,17,2,NULL),(519,153,10,2,NULL),(520,144,66,2,NULL),(521,188,20,2,NULL),(522,155,10,2,NULL),(523,145,66,2,NULL),(524,190,20,2,NULL),(525,157,10,2,NULL),(526,147,66,2,NULL),(527,188,25,2,NULL),(528,53,10,2,NULL),(529,148,66,2,NULL),(530,105,10,2,NULL),(531,190,25,2,NULL),(532,106,66,2,NULL),(533,111,10,2,NULL),(534,188,28,2,NULL),(535,109,66,2,NULL),(536,190,28,2,NULL),(537,48,10,2,NULL),(538,73,66,2,NULL),(539,188,18,2,NULL),(540,49,10,2,NULL),(541,188,66,2,NULL),(542,190,18,2,NULL),(543,62,10,2,NULL),(544,190,66,2,NULL),(545,188,27,2,NULL),(546,64,10,2,NULL),(547,191,66,2,NULL),(548,190,27,2,NULL),(549,144,10,2,NULL),(550,192,66,2,NULL),(551,145,10,2,NULL),(552,188,29,2,NULL),(553,31,67,2,NULL),(554,147,10,2,NULL),(555,190,29,2,NULL),(556,33,67,2,NULL),(557,148,10,2,NULL),(558,188,41,2,NULL),(559,1,67,2,NULL),(560,190,41,2,NULL),(561,106,10,2,NULL),(562,2,67,2,NULL),(563,188,42,2,NULL),(564,109,10,2,NULL),(565,46,67,2,NULL),(566,73,10,2,NULL),(567,190,42,2,NULL),(568,56,67,2,NULL),(569,191,10,2,NULL),(570,188,43,2,NULL),(571,59,67,2,NULL),(572,192,10,2,NULL),(573,190,43,2,NULL),(574,153,67,2,NULL),(575,188,45,2,NULL),(576,137,25,2,NULL),(577,155,67,2,NULL),(578,190,45,2,NULL),(579,31,12,2,NULL),(580,157,67,2,NULL),(581,33,12,2,NULL),(582,188,46,2,NULL),(583,53,67,2,NULL),(584,1,12,2,NULL),(585,190,46,2,NULL),(586,105,67,2,NULL),(587,2,12,2,NULL),(588,188,47,2,NULL),(589,111,67,2,NULL),(590,46,12,2,NULL),(591,190,47,2,NULL),(592,48,67,2,NULL),(593,188,50,2,NULL),(594,56,12,2,NULL),(595,49,67,2,NULL),(596,59,12,2,NULL),(597,190,50,2,NULL),(598,62,67,2,NULL),(599,153,12,2,NULL),(600,188,51,2,NULL),(601,64,67,2,NULL),(602,155,12,2,NULL),(603,190,51,2,NULL),(604,144,67,2,NULL),(605,188,73,2,NULL),(606,157,12,2,NULL),(607,145,67,2,NULL),(608,190,73,2,NULL),(609,53,12,2,NULL),(610,147,67,2,NULL),(611,105,12,2,NULL),(612,188,75,2,NULL),(613,148,67,2,NULL),(614,111,12,2,NULL),(615,190,75,2,NULL),(616,106,67,2,NULL),(617,48,12,2,NULL),(618,188,67,2,NULL),(619,109,67,2,NULL),(620,190,67,2,NULL),(621,49,12,2,NULL),(622,73,67,2,NULL),(623,188,68,2,NULL),(624,62,12,2,NULL),(625,191,67,2,NULL),(626,190,68,2,NULL),(627,64,12,2,NULL),(628,192,67,2,NULL),(629,188,69,2,NULL),(630,144,12,2,NULL),(631,31,68,2,NULL),(632,190,69,2,NULL),(633,145,12,2,NULL),(634,33,68,2,NULL),(635,147,12,2,NULL),(636,188,72,2,NULL),(637,1,68,2,NULL),(638,148,12,2,NULL),(639,190,72,2,NULL),(640,2,68,2,NULL),(641,188,74,2,NULL),(642,106,12,2,NULL),(643,46,68,2,NULL),(644,190,74,2,NULL),(645,109,12,2,NULL),(646,56,68,2,NULL),(647,188,76,2,NULL),(648,73,12,2,NULL),(649,59,68,2,NULL),(650,190,76,2,NULL),(651,191,12,2,NULL),(652,153,68,2,NULL),(653,188,77,2,NULL),(654,192,12,2,NULL),(655,190,77,2,NULL),(656,155,68,2,NULL),(657,47,25,2,NULL),(658,188,78,2,NULL),(659,157,68,2,NULL),(660,166,2,2,NULL),(661,53,68,2,NULL),(662,190,78,2,NULL),(663,174,2,2,NULL),(664,105,68,2,NULL),(665,188,79,2,NULL),(666,31,14,2,NULL),(667,111,68,2,NULL),(668,190,79,2,NULL),(669,33,14,2,NULL),(670,188,80,2,NULL),(671,48,68,2,NULL),(672,1,14,2,NULL),(673,49,68,2,NULL),(674,190,80,2,NULL),(675,2,14,2,NULL),(676,188,81,2,NULL),(677,62,68,2,NULL),(678,46,14,2,NULL),(679,64,68,2,NULL),(680,190,81,2,NULL),(681,56,14,2,NULL),(682,188,82,2,NULL),(683,144,68,2,NULL),(684,59,14,2,NULL),(685,190,82,2,NULL),(686,145,68,2,NULL),(687,153,14,2,NULL),(688,147,68,2,NULL),(689,188,83,2,NULL),(690,155,14,2,NULL),(691,148,68,2,NULL),(692,190,83,2,NULL),(693,157,14,2,NULL),(694,106,68,2,NULL),(695,188,84,2,NULL),(696,53,14,2,NULL),(697,109,68,2,NULL),(698,190,84,2,NULL),(699,105,14,2,NULL),(700,188,85,2,NULL),(701,73,68,2,NULL),(702,111,14,2,NULL),(703,190,85,2,NULL),(704,191,68,2,NULL),(705,48,14,2,NULL),(706,192,68,2,NULL),(707,188,86,2,NULL),(708,49,14,2,NULL),(709,31,69,2,NULL),(710,190,86,2,NULL),(711,62,14,2,NULL),(712,33,69,2,NULL),(713,188,87,2,NULL),(714,64,14,2,NULL),(715,1,69,2,NULL),(716,190,87,2,NULL),(717,144,14,2,NULL),(718,2,69,2,NULL),(719,188,90,2,NULL),(720,145,14,2,NULL),(721,190,90,2,NULL),(722,46,69,2,NULL),(723,147,14,2,NULL),(724,56,69,2,NULL),(725,188,91,2,NULL),(726,148,14,2,NULL),(727,59,69,2,NULL),(728,190,91,2,NULL),(729,106,14,2,NULL),(730,153,69,2,NULL),(731,188,92,2,NULL),(732,109,14,2,NULL),(733,155,69,2,NULL),(734,190,92,2,NULL),(735,73,14,2,NULL),(736,188,95,2,NULL),(737,157,69,2,NULL),(738,191,14,2,NULL),(739,190,95,2,NULL),(740,53,69,2,NULL),(741,192,14,2,NULL),(742,188,108,2,NULL),(743,105,69,2,NULL),(744,141,14,2,NULL),(745,111,69,2,NULL),(746,190,108,2,NULL),(747,56,1,2,NULL),(748,48,69,2,NULL),(749,188,112,2,NULL),(750,59,1,2,NULL),(751,49,69,2,NULL),(752,190,112,2,NULL),(753,56,4,2,NULL),(754,188,113,2,NULL),(755,62,69,2,NULL),(756,59,4,2,NULL),(757,190,113,2,NULL),(758,64,69,2,NULL),(759,56,7,2,NULL),(760,144,69,2,NULL),(761,188,115,2,NULL),(762,59,7,2,NULL),(763,145,69,2,NULL),(764,190,115,2,NULL),(765,31,15,2,NULL),(766,147,69,2,NULL),(767,188,131,2,NULL),(768,33,15,2,NULL),(769,190,131,2,NULL),(770,148,69,2,NULL),(771,1,15,2,NULL),(772,188,134,2,NULL),(773,106,69,2,NULL),(774,2,15,2,NULL),(775,109,69,2,NULL),(776,190,134,2,NULL),(777,46,15,2,NULL),(778,188,135,2,NULL),(779,73,69,2,NULL),(780,56,11,2,NULL),(781,190,135,2,NULL),(782,191,69,2,NULL),(783,59,11,2,NULL),(784,188,136,2,NULL),(785,192,69,2,NULL),(786,56,13,2,NULL),(787,190,136,2,NULL),(788,31,72,2,NULL),(789,59,13,2,NULL),(790,33,72,2,NULL),(791,191,1,2,NULL),(792,153,15,2,NULL),(793,1,72,2,NULL),(794,192,1,2,NULL),(795,155,15,2,NULL),(796,2,72,2,NULL),(797,191,4,2,NULL),(798,157,15,2,NULL),(799,192,4,2,NULL),(800,46,72,2,NULL),(801,56,17,2,NULL),(802,191,7,2,NULL),(803,56,72,2,NULL),(804,59,17,2,NULL),(805,59,72,2,NULL),(806,192,7,2,NULL),(807,56,20,2,NULL),(808,153,72,2,NULL),(809,191,11,2,NULL),(810,59,20,2,NULL),(811,155,72,2,NULL),(812,192,11,2,NULL),(813,53,15,2,NULL),(814,191,13,2,NULL),(815,157,72,2,NULL),(816,56,25,2,NULL),(817,53,72,2,NULL),(818,192,13,2,NULL),(819,59,25,2,NULL),(820,105,72,2,NULL),(821,191,15,2,NULL),(822,56,28,2,NULL),(823,111,72,2,NULL),(824,192,15,2,NULL),(825,59,28,2,NULL),(826,48,72,2,NULL),(827,191,17,2,NULL),(828,56,18,2,NULL),(829,49,72,2,NULL),(830,192,17,2,NULL),(831,59,18,2,NULL),(832,62,72,2,NULL),(833,191,20,2,NULL),(834,56,27,2,NULL),(835,64,72,2,NULL),(836,192,20,2,NULL),(837,59,27,2,NULL),(838,144,72,2,NULL),(839,191,25,2,NULL),(840,56,29,2,NULL),(841,145,72,2,NULL),(842,192,25,2,NULL),(843,59,29,2,NULL),(844,147,72,2,NULL),(845,191,28,2,NULL),(846,105,15,2,NULL),(847,148,72,2,NULL),(848,192,28,2,NULL),(849,111,15,2,NULL),(850,106,72,2,NULL),(851,191,18,2,NULL),(852,56,41,2,NULL),(853,109,72,2,NULL),(854,192,18,2,NULL),(855,59,41,2,NULL),(856,73,72,2,NULL),(857,191,27,2,NULL),(858,56,42,2,NULL),(859,192,27,2,NULL),(860,191,72,2,NULL),(861,59,42,2,NULL),(862,192,72,2,NULL),(863,191,29,2,NULL),(864,56,43,2,NULL),(865,31,74,2,NULL),(866,192,29,2,NULL),(867,59,43,2,NULL),(868,33,74,2,NULL),(869,191,41,2,NULL),(870,56,45,2,NULL),(871,1,74,2,NULL),(872,59,45,2,NULL),(873,192,41,2,NULL),(874,2,74,2,NULL),(875,191,42,2,NULL),(876,48,15,2,NULL),(877,46,74,2,NULL),(878,49,15,2,NULL),(879,192,42,2,NULL),(880,56,74,2,NULL),(881,56,46,2,NULL),(882,191,43,2,NULL),(883,59,74,2,NULL),(884,59,46,2,NULL),(885,192,43,2,NULL),(886,153,74,2,NULL),(887,191,45,2,NULL),(888,62,15,2,NULL),(889,155,74,2,NULL),(890,64,15,2,NULL),(891,192,45,2,NULL),(892,157,74,2,NULL),(893,56,47,2,NULL),(894,191,46,2,NULL),(895,53,74,2,NULL),(896,192,46,2,NULL),(897,59,47,2,NULL),(898,105,74,2,NULL),(899,191,47,2,NULL),(900,144,15,2,NULL),(901,111,74,2,NULL),(902,145,15,2,NULL),(903,192,47,2,NULL),(904,48,74,2,NULL),(905,147,15,2,NULL),(906,191,50,2,NULL),(907,49,74,2,NULL),(908,192,50,2,NULL),(909,148,15,2,NULL),(910,62,74,2,NULL),(911,191,51,2,NULL),(912,106,15,2,NULL),(913,64,74,2,NULL),(914,109,15,2,NULL),(915,192,51,2,NULL),(916,144,74,2,NULL),(917,73,15,2,NULL),(918,191,73,2,NULL),(919,145,74,2,NULL),(920,192,73,2,NULL),(921,56,50,2,NULL),(922,147,74,2,NULL),(923,191,75,2,NULL),(924,59,50,2,NULL),(925,148,74,2,NULL),(926,192,75,2,NULL),(927,56,51,2,NULL),(928,106,74,2,NULL),(929,59,51,2,NULL),(930,191,74,2,NULL),(931,109,74,2,NULL),(932,192,74,2,NULL),(933,56,73,2,NULL),(934,73,74,2,NULL),(935,191,76,2,NULL),(936,59,73,2,NULL),(937,31,76,2,NULL),(938,192,76,2,NULL),(939,56,75,2,NULL),(940,33,76,2,NULL),(941,59,75,2,NULL),(942,191,77,2,NULL),(943,1,76,2,NULL),(944,192,77,2,NULL),(945,56,76,2,NULL),(946,2,76,2,NULL),(947,191,78,2,NULL),(948,59,76,2,NULL),(949,46,76,2,NULL),(950,192,78,2,NULL),(951,56,77,2,NULL),(952,153,76,2,NULL),(953,191,79,2,NULL),(954,59,77,2,NULL),(955,155,76,2,NULL),(956,192,79,2,NULL),(957,56,78,2,NULL),(958,157,76,2,NULL),(959,191,80,2,NULL),(960,59,78,2,NULL),(961,53,76,2,NULL),(962,56,79,2,NULL),(963,192,80,2,NULL),(964,105,76,2,NULL),(965,191,81,2,NULL),(966,59,79,2,NULL),(967,111,76,2,NULL),(968,192,81,2,NULL),(969,48,76,2,NULL),(970,56,80,2,NULL),(971,191,82,2,NULL),(972,49,76,2,NULL),(973,59,80,2,NULL),(974,192,82,2,NULL),(975,62,76,2,NULL),(976,56,81,2,NULL),(977,191,83,2,NULL),(978,64,76,2,NULL),(979,59,81,2,NULL),(980,192,83,2,NULL),(981,144,76,2,NULL),(982,56,82,2,NULL),(983,191,84,2,NULL),(984,145,76,2,NULL),(985,59,82,2,NULL),(986,192,84,2,NULL),(987,147,76,2,NULL),(988,56,83,2,NULL),(989,191,85,2,NULL),(990,148,76,2,NULL),(991,59,83,2,NULL),(992,192,85,2,NULL),(993,106,76,2,NULL),(994,56,84,2,NULL),(995,191,86,2,NULL),(996,109,76,2,NULL),(997,59,84,2,NULL),(998,192,86,2,NULL),(999,73,76,2,NULL),(1000,56,85,2,NULL),(1001,191,87,2,NULL),(1002,59,85,2,NULL),(1003,31,77,2,NULL),(1004,192,87,2,NULL),(1005,33,77,2,NULL),(1006,56,86,2,NULL),(1007,191,90,2,NULL),(1008,1,77,2,NULL),(1009,59,86,2,NULL),(1010,192,90,2,NULL),(1011,2,77,2,NULL),(1012,56,87,2,NULL),(1013,191,91,2,NULL),(1014,46,77,2,NULL),(1015,59,87,2,NULL),(1016,192,91,2,NULL),(1017,56,90,2,NULL),(1018,153,77,2,NULL),(1019,191,92,2,NULL),(1020,155,77,2,NULL),(1021,59,90,2,NULL),(1022,192,92,2,NULL),(1023,157,77,2,NULL),(1024,56,91,2,NULL),(1025,191,95,2,NULL),(1026,53,77,2,NULL),(1027,59,91,2,NULL),(1028,192,95,2,NULL),(1029,105,77,2,NULL),(1030,56,92,2,NULL),(1031,191,108,2,NULL),(1032,111,77,2,NULL),(1033,59,92,2,NULL),(1034,192,108,2,NULL),(1035,48,77,2,NULL),(1036,56,95,2,NULL),(1037,191,112,2,NULL),(1038,49,77,2,NULL),(1039,59,95,2,NULL),(1040,192,112,2,NULL),(1041,62,77,2,NULL),(1042,56,108,2,NULL),(1043,191,113,2,NULL),(1044,64,77,2,NULL),(1045,59,108,2,NULL),(1046,192,113,2,NULL),(1047,144,77,2,NULL),(1048,56,112,2,NULL),(1049,191,115,2,NULL),(1050,145,77,2,NULL),(1051,59,112,2,NULL),(1052,192,115,2,NULL),(1053,147,77,2,NULL),(1054,56,113,2,NULL),(1055,191,131,2,NULL),(1056,148,77,2,NULL),(1057,59,113,2,NULL),(1058,192,131,2,NULL),(1059,106,77,2,NULL),(1060,56,115,2,NULL),(1061,191,134,2,NULL),(1062,109,77,2,NULL),(1063,59,115,2,NULL),(1064,192,134,2,NULL),(1065,73,77,2,NULL),(1066,56,131,2,NULL),(1067,191,135,2,NULL),(1068,59,131,2,NULL),(1069,31,78,2,NULL),(1070,192,135,2,NULL),(1071,33,78,2,NULL),(1072,56,134,2,NULL),(1073,191,136,2,NULL),(1074,1,78,2,NULL),(1075,59,134,2,NULL),(1076,192,136,2,NULL),(1077,2,78,2,NULL),(1078,56,135,2,NULL),(1079,187,119,2,NULL),(1080,46,78,2,NULL),(1081,59,135,2,NULL),(1082,178,119,2,NULL),(1083,56,136,2,NULL),(1084,153,78,2,NULL),(1085,31,131,2,NULL),(1086,155,78,2,NULL),(1087,59,136,2,NULL),(1088,33,131,2,NULL),(1089,157,78,2,NULL),(1090,84,16,2,NULL),(1091,1,131,2,NULL),(1092,53,78,2,NULL),(1093,169,14,2,NULL),(1094,2,131,2,NULL),(1095,105,78,2,NULL),(1096,153,1,2,NULL),(1097,46,131,2,NULL),(1098,111,78,2,NULL),(1099,155,1,2,NULL),(1100,153,131,2,NULL),(1101,48,78,2,NULL),(1102,157,1,2,NULL),(1103,155,131,2,NULL),(1104,49,78,2,NULL),(1105,153,4,2,NULL),(1106,157,131,2,NULL),(1107,62,78,2,NULL),(1108,155,4,2,NULL),(1109,53,131,2,NULL),(1110,64,78,2,NULL),(1111,157,4,2,NULL),(1112,105,131,2,NULL),(1113,144,78,2,NULL),(1114,153,7,2,NULL),(1115,111,131,2,NULL),(1116,145,78,2,NULL),(1117,155,7,2,NULL),(1118,48,131,2,NULL),(1119,147,78,2,NULL),(1120,157,7,2,NULL),(1121,49,131,2,NULL),(1122,148,78,2,NULL),(1123,153,11,2,NULL),(1124,62,131,2,NULL),(1125,106,78,2,NULL),(1126,155,11,2,NULL),(1127,64,131,2,NULL),(1128,109,78,2,NULL),(1129,157,11,2,NULL),(1130,144,131,2,NULL),(1131,73,78,2,NULL),(1132,153,13,2,NULL),(1133,145,131,2,NULL),(1134,155,13,2,NULL),(1135,31,79,2,NULL),(1136,147,131,2,NULL),(1137,33,79,2,NULL),(1138,157,13,2,NULL),(1139,148,131,2,NULL),(1140,1,79,2,NULL),(1141,153,17,2,NULL),(1142,106,131,2,NULL),(1143,2,79,2,NULL),(1144,155,17,2,NULL),(1145,109,131,2,NULL),(1146,46,79,2,NULL),(1147,157,17,2,NULL),(1148,73,131,2,NULL),(1149,153,20,2,NULL),(1150,153,79,2,NULL),(1151,31,134,2,NULL),(1152,155,79,2,NULL),(1153,155,20,2,NULL),(1154,33,134,2,NULL),(1155,157,79,2,NULL),(1156,157,20,2,NULL),(1157,1,134,2,NULL),(1158,53,79,2,NULL),(1159,153,25,2,NULL),(1160,2,134,2,NULL),(1161,155,25,2,NULL),(1162,105,79,2,NULL),(1163,46,134,2,NULL),(1164,111,79,2,NULL),(1165,157,25,2,NULL),(1166,153,134,2,NULL),(1167,48,79,2,NULL),(1168,153,28,2,NULL),(1169,155,134,2,NULL),(1170,49,79,2,NULL),(1171,155,28,2,NULL),(1172,157,134,2,NULL),(1173,62,79,2,NULL),(1174,53,134,2,NULL),(1175,157,28,2,NULL),(1176,64,79,2,NULL),(1177,105,134,2,NULL),(1178,153,18,2,NULL),(1179,144,79,2,NULL),(1180,111,134,2,NULL),(1181,155,18,2,NULL),(1182,145,79,2,NULL),(1183,157,18,2,NULL),(1184,48,134,2,NULL),(1185,147,79,2,NULL),(1186,49,134,2,NULL),(1187,153,27,2,NULL),(1188,148,79,2,NULL),(1189,62,134,2,NULL),(1190,155,27,2,NULL),(1191,106,79,2,NULL),(1192,64,134,2,NULL),(1193,157,27,2,NULL),(1194,109,79,2,NULL),(1195,153,29,2,NULL),(1196,144,134,2,NULL),(1197,73,79,2,NULL),(1198,145,134,2,NULL),(1199,155,29,2,NULL),(1200,31,80,2,NULL),(1201,147,134,2,NULL),(1202,157,29,2,NULL),(1203,33,80,2,NULL),(1204,148,134,2,NULL),(1205,153,41,2,NULL),(1206,1,80,2,NULL),(1207,106,134,2,NULL),(1208,155,41,2,NULL),(1209,2,80,2,NULL),(1210,157,41,2,NULL),(1211,109,134,2,NULL),(1212,46,80,2,NULL),(1213,153,42,2,NULL),(1214,73,134,2,NULL),(1215,153,80,2,NULL),(1216,155,42,2,NULL),(1217,31,135,2,NULL),(1218,155,80,2,NULL),(1219,33,135,2,NULL),(1220,157,42,2,NULL),(1221,157,80,2,NULL),(1222,1,135,2,NULL),(1223,153,43,2,NULL),(1224,53,80,2,NULL),(1225,2,135,2,NULL),(1226,155,43,2,NULL),(1227,105,80,2,NULL),(1228,46,135,2,NULL),(1229,157,43,2,NULL),(1230,111,80,2,NULL),(1231,153,45,2,NULL),(1232,153,135,2,NULL),(1233,48,80,2,NULL),(1234,155,135,2,NULL),(1235,155,45,2,NULL),(1236,49,80,2,NULL),(1237,157,135,2,NULL),(1238,157,45,2,NULL),(1239,62,80,2,NULL),(1240,153,46,2,NULL),(1241,53,135,2,NULL),(1242,64,80,2,NULL),(1243,105,135,2,NULL),(1244,155,46,2,NULL),(1245,144,80,2,NULL),(1246,157,46,2,NULL),(1247,111,135,2,NULL),(1248,145,80,2,NULL),(1249,153,47,2,NULL),(1250,48,135,2,NULL),(1251,147,80,2,NULL),(1252,155,47,2,NULL),(1253,49,135,2,NULL),(1254,148,80,2,NULL),(1255,157,47,2,NULL),(1256,62,135,2,NULL),(1257,106,80,2,NULL),(1258,153,50,2,NULL),(1259,64,135,2,NULL),(1260,109,80,2,NULL),(1261,155,50,2,NULL),(1262,144,135,2,NULL),(1263,73,80,2,NULL),(1264,145,135,2,NULL),(1265,157,50,2,NULL),(1266,31,81,2,NULL),(1267,147,135,2,NULL),(1268,153,51,2,NULL),(1269,33,81,2,NULL),(1270,148,135,2,NULL),(1271,155,51,2,NULL),(1272,1,81,2,NULL),(1273,157,51,2,NULL),(1274,106,135,2,NULL),(1275,2,81,2,NULL),(1276,153,73,2,NULL),(1277,109,135,2,NULL),(1278,46,81,2,NULL),(1279,73,135,2,NULL),(1280,155,73,2,NULL),(1281,153,81,2,NULL),(1282,157,73,2,NULL),(1283,31,136,2,NULL),(1284,155,81,2,NULL),(1285,153,75,2,NULL),(1286,33,136,2,NULL),(1287,157,81,2,NULL),(1288,155,75,2,NULL),(1289,1,136,2,NULL),(1290,53,81,2,NULL),(1291,157,75,2,NULL),(1292,2,136,2,NULL),(1293,105,81,2,NULL),(1294,46,136,2,NULL),(1295,111,81,2,NULL),(1296,153,82,2,NULL),(1297,153,136,2,NULL),(1298,48,81,2,NULL),(1299,155,82,2,NULL),(1300,155,136,2,NULL),(1301,49,81,2,NULL),(1302,157,82,2,NULL),(1303,157,136,2,NULL),(1304,62,81,2,NULL),(1305,153,83,2,NULL),(1306,53,136,2,NULL),(1307,64,81,2,NULL),(1308,155,83,2,NULL),(1309,105,136,2,NULL),(1310,144,81,2,NULL),(1311,157,83,2,NULL),(1312,111,136,2,NULL),(1313,145,81,2,NULL),(1314,153,84,2,NULL),(1315,48,136,2,NULL),(1316,147,81,2,NULL),(1317,155,84,2,NULL),(1318,49,136,2,NULL),(1319,148,81,2,NULL),(1320,157,84,2,NULL),(1321,62,136,2,NULL),(1322,106,81,2,NULL),(1323,153,85,2,NULL),(1324,64,136,2,NULL),(1325,109,81,2,NULL),(1326,155,85,2,NULL),(1327,144,136,2,NULL),(1328,73,81,2,NULL),(1329,157,85,2,NULL),(1330,145,136,2,NULL),(1331,153,86,2,NULL),(1332,31,82,2,NULL),(1333,147,136,2,NULL),(1334,33,82,2,NULL),(1335,155,86,2,NULL),(1336,148,136,2,NULL),(1337,1,82,2,NULL),(1338,157,86,2,NULL),(1339,106,136,2,NULL),(1340,2,82,2,NULL),(1341,153,87,2,NULL),(1342,109,136,2,NULL),(1343,46,82,2,NULL),(1344,155,87,2,NULL),(1345,73,136,2,NULL),(1346,53,82,2,NULL),(1347,157,87,2,NULL),(1348,105,82,2,NULL),(1349,153,90,2,NULL),(1350,111,82,2,NULL),(1351,155,90,2,NULL),(1352,48,82,2,NULL),(1353,157,90,2,NULL),(1354,49,82,2,NULL),(1355,153,91,2,NULL),(1356,62,82,2,NULL),(1357,155,91,2,NULL),(1358,64,82,2,NULL),(1359,157,91,2,NULL),(1360,144,82,2,NULL),(1361,153,92,2,NULL),(1362,145,82,2,NULL),(1363,155,92,2,NULL),(1364,147,82,2,NULL),(1365,157,92,2,NULL),(1366,148,82,2,NULL),(1367,153,95,2,NULL),(1368,106,82,2,NULL),(1369,155,95,2,NULL),(1370,109,82,2,NULL),(1371,157,95,2,NULL),(1372,73,82,2,NULL),(1373,153,108,2,NULL),(1374,31,83,2,NULL),(1375,155,108,2,NULL),(1376,33,83,2,NULL),(1377,157,108,2,NULL),(1378,1,83,2,NULL),(1379,153,112,2,NULL),(1380,2,83,2,NULL),(1381,155,112,2,NULL),(1382,46,83,2,NULL),(1383,157,112,2,NULL),(1384,53,83,2,NULL),(1385,153,113,2,NULL),(1386,105,83,2,NULL),(1387,155,113,2,NULL),(1388,111,83,2,NULL),(1389,157,113,2,NULL),(1390,48,83,2,NULL),(1391,153,115,2,NULL),(1392,49,83,2,NULL),(1393,155,115,2,NULL),(1394,62,83,2,NULL),(1395,157,115,2,NULL),(1396,64,83,2,NULL),(1397,31,17,2,NULL),(1398,144,83,2,NULL),(1399,33,17,2,NULL),(1400,145,83,2,NULL),(1401,1,17,2,NULL),(1402,147,83,2,NULL),(1403,2,17,2,NULL),(1404,148,83,2,NULL),(1405,106,83,2,NULL),(1406,46,17,2,NULL),(1407,109,83,2,NULL),(1408,53,17,2,NULL),(1409,73,83,2,NULL),(1410,105,17,2,NULL),(1411,31,84,2,NULL),(1412,111,17,2,NULL),(1413,33,84,2,NULL),(1414,48,17,2,NULL),(1415,1,84,2,NULL),(1416,49,17,2,NULL),(1417,2,84,2,NULL),(1418,62,17,2,NULL),(1419,46,84,2,NULL),(1420,64,17,2,NULL),(1421,53,84,2,NULL),(1422,144,17,2,NULL),(1423,105,84,2,NULL),(1424,145,17,2,NULL),(1425,111,84,2,NULL),(1426,147,17,2,NULL),(1427,48,84,2,NULL),(1428,148,17,2,NULL),(1429,49,84,2,NULL),(1430,106,17,2,NULL),(1431,62,84,2,NULL),(1432,109,17,2,NULL),(1433,64,84,2,NULL),(1434,73,17,2,NULL),(1435,144,84,2,NULL),(1436,60,25,2,NULL),(1437,145,84,2,NULL),(1438,63,25,2,NULL),(1439,147,84,2,NULL),(1440,143,25,2,NULL),(1441,148,84,2,NULL),(1442,31,20,2,NULL),(1443,106,84,2,NULL),(1444,33,20,2,NULL),(1445,109,84,2,NULL),(1446,1,20,2,NULL),(1447,73,84,2,NULL),(1448,2,20,2,NULL),(1449,31,85,2,NULL),(1450,46,20,2,NULL),(1451,33,85,2,NULL),(1452,53,20,2,NULL),(1453,1,85,2,NULL),(1454,105,20,2,NULL),(1455,2,85,2,NULL),(1456,111,20,2,NULL),(1457,46,85,2,NULL),(1458,48,20,2,NULL),(1459,53,85,2,NULL),(1460,49,20,2,NULL),(1461,105,85,2,NULL),(1462,62,20,2,NULL),(1463,111,85,2,NULL),(1464,64,20,2,NULL),(1465,48,85,2,NULL),(1466,144,20,2,NULL),(1467,49,85,2,NULL),(1468,145,20,2,NULL),(1469,62,85,2,NULL),(1470,147,20,2,NULL),(1471,64,85,2,NULL),(1472,148,20,2,NULL),(1473,144,85,2,NULL),(1474,106,20,2,NULL),(1475,145,85,2,NULL),(1476,109,20,2,NULL),(1477,147,85,2,NULL),(1478,73,20,2,NULL),(1479,148,85,2,NULL),(1480,171,14,2,NULL),(1481,106,85,2,NULL),(1482,53,1,2,NULL),(1483,109,85,2,NULL),(1484,53,4,2,NULL),(1485,73,85,2,NULL),(1486,53,7,2,NULL),(1487,31,86,2,NULL),(1488,53,11,2,NULL),(1489,33,86,2,NULL),(1490,53,13,2,NULL),(1491,1,86,2,NULL),(1492,53,25,2,NULL),(1493,2,86,2,NULL),(1494,53,28,2,NULL),(1495,46,86,2,NULL),(1496,53,18,2,NULL),(1497,53,86,2,NULL),(1498,53,27,2,NULL),(1499,105,86,2,NULL),(1500,53,29,2,NULL),(1501,111,86,2,NULL),(1502,53,41,2,NULL),(1503,48,86,2,NULL),(1504,53,42,2,NULL),(1505,49,86,2,NULL),(1506,53,43,2,NULL),(1507,62,86,2,NULL),(1508,53,45,2,NULL),(1509,64,86,2,NULL),(1510,53,46,2,NULL),(1511,144,86,2,NULL),(1512,53,47,2,NULL),(1513,145,86,2,NULL),(1514,53,50,2,NULL),(1515,147,86,2,NULL),(1516,53,51,2,NULL),(1517,148,86,2,NULL),(1518,53,73,2,NULL),(1519,106,86,2,NULL),(1520,53,75,2,NULL),(1521,109,86,2,NULL),(1522,53,87,2,NULL),(1523,73,86,2,NULL),(1524,53,90,2,NULL),(1525,31,87,2,NULL),(1526,53,91,2,NULL),(1527,33,87,2,NULL),(1528,53,92,2,NULL),(1529,1,87,2,NULL),(1530,53,95,2,NULL),(1531,2,87,2,NULL),(1532,53,108,2,NULL),(1533,46,87,2,NULL),(1534,53,112,2,NULL),(1535,105,87,2,NULL),(1536,53,113,2,NULL),(1537,111,87,2,NULL),(1538,53,115,2,NULL),(1539,48,87,2,NULL),(1540,31,25,2,NULL),(1541,49,87,2,NULL),(1542,33,25,2,NULL),(1543,62,87,2,NULL),(1544,1,25,2,NULL),(1545,64,87,2,NULL),(1546,2,25,2,NULL),(1547,144,87,2,NULL),(1548,46,25,2,NULL),(1549,145,87,2,NULL),(1550,105,25,2,NULL),(1551,147,87,2,NULL),(1552,111,25,2,NULL),(1553,148,87,2,NULL),(1554,48,25,2,NULL),(1555,106,87,2,NULL),(1556,49,25,2,NULL),(1557,109,87,2,NULL),(1558,62,25,2,NULL),(1559,73,87,2,NULL),(1560,64,25,2,NULL),(1561,31,90,2,NULL),(1562,144,25,2,NULL),(1563,33,90,2,NULL),(1564,145,25,2,NULL),(1565,1,90,2,NULL),(1566,147,25,2,NULL),(1567,2,90,2,NULL),(1568,148,25,2,NULL),(1569,46,90,2,NULL),(1570,106,25,2,NULL),(1571,105,90,2,NULL),(1572,109,25,2,NULL),(1573,111,90,2,NULL),(1574,73,25,2,NULL),(1575,48,90,2,NULL),(1576,66,25,2,NULL),(1577,49,90,2,NULL),(1578,121,25,2,NULL),(1579,62,90,2,NULL),(1580,167,25,2,NULL),(1581,64,90,2,NULL),(1582,31,28,2,NULL),(1583,144,90,2,NULL),(1584,33,28,2,NULL),(1585,145,90,2,NULL),(1586,1,28,2,NULL),(1587,147,90,2,NULL),(1588,2,28,2,NULL),(1589,148,90,2,NULL),(1590,46,28,2,NULL),(1591,106,90,2,NULL),(1592,105,28,2,NULL),(1593,109,90,2,NULL),(1594,111,28,2,NULL),(1595,73,90,2,NULL),(1596,48,28,2,NULL),(1597,31,91,2,NULL),(1598,49,28,2,NULL),(1599,33,91,2,NULL),(1600,62,28,2,NULL),(1601,1,91,2,NULL),(1602,64,28,2,NULL),(1603,2,91,2,NULL),(1604,144,28,2,NULL),(1605,46,91,2,NULL),(1606,145,28,2,NULL),(1607,105,91,2,NULL),(1608,147,28,2,NULL),(1609,111,91,2,NULL),(1610,148,28,2,NULL),(1611,48,91,2,NULL),(1612,106,28,2,NULL),(1613,49,91,2,NULL),(1614,109,28,2,NULL),(1615,62,91,2,NULL),(1616,73,28,2,NULL),(1617,64,91,2,NULL),(1618,144,91,2,NULL),(1619,145,91,2,NULL),(1620,147,91,2,NULL),(1621,148,91,2,NULL),(1622,106,91,2,NULL),(1623,109,91,2,NULL),(1624,73,91,2,NULL),(1625,31,92,2,NULL),(1626,33,92,2,NULL),(1627,1,92,2,NULL),(1628,2,92,2,NULL),(1629,46,92,2,NULL),(1630,105,92,2,NULL),(1631,111,92,2,NULL),(1632,48,92,2,NULL),(1633,49,92,2,NULL),(1634,62,92,2,NULL),(1635,64,92,2,NULL),(1636,144,92,2,NULL),(1637,145,92,2,NULL),(1638,147,92,2,NULL),(1639,148,92,2,NULL),(1640,106,92,2,NULL),(1641,109,92,2,NULL),(1642,73,92,2,NULL),(1643,31,95,2,NULL),(1644,33,95,2,NULL),(1645,1,95,2,NULL),(1646,2,95,2,NULL),(1647,46,95,2,NULL),(1648,105,95,2,NULL),(1649,111,95,2,NULL),(1650,48,95,2,NULL),(1651,49,95,2,NULL),(1652,62,95,2,NULL),(1653,64,95,2,NULL),(1654,144,95,2,NULL),(1655,145,95,2,NULL),(1656,147,95,2,NULL),(1657,148,95,2,NULL),(1658,106,95,2,NULL),(1659,109,95,2,NULL),(1660,73,95,2,NULL),(1661,31,108,2,NULL),(1662,33,108,2,NULL),(1663,1,108,2,NULL),(1664,2,108,2,NULL),(1665,46,108,2,NULL),(1666,105,108,2,NULL),(1667,111,108,2,NULL),(1668,48,108,2,NULL),(1669,49,108,2,NULL),(1670,62,108,2,NULL),(1671,64,108,2,NULL),(1672,144,108,2,NULL),(1673,145,108,2,NULL),(1674,147,108,2,NULL),(1675,148,108,2,NULL),(1676,106,108,2,NULL),(1677,109,108,2,NULL),(1678,73,108,2,NULL),(1679,31,112,2,NULL),(1680,33,112,2,NULL),(1681,1,112,2,NULL),(1682,2,112,2,NULL),(1683,46,112,2,NULL),(1684,105,112,2,NULL),(1685,111,112,2,NULL),(1686,48,112,2,NULL),(1687,49,112,2,NULL),(1688,62,112,2,NULL),(1689,64,112,2,NULL),(1690,144,112,2,NULL),(1691,145,112,2,NULL),(1692,147,112,2,NULL),(1693,148,112,2,NULL),(1694,106,112,2,NULL),(1695,109,112,2,NULL),(1696,73,112,2,NULL),(1697,31,113,2,NULL),(1698,33,113,2,NULL),(1699,1,113,2,NULL),(1700,2,113,2,NULL),(1701,46,113,2,NULL),(1702,105,113,2,NULL),(1703,111,113,2,NULL),(1704,48,113,2,NULL),(1705,49,113,2,NULL),(1706,62,113,2,NULL),(1707,64,113,2,NULL),(1708,144,113,2,NULL),(1709,145,113,2,NULL),(1710,147,113,2,NULL),(1711,148,113,2,NULL),(1712,106,113,2,NULL),(1713,109,113,2,NULL),(1714,73,113,2,NULL),(1715,31,115,2,NULL),(1716,33,115,2,NULL),(1717,1,115,2,NULL),(1718,2,115,2,NULL),(1719,46,115,2,NULL),(1720,105,115,2,NULL),(1721,111,115,2,NULL),(1722,48,115,2,NULL),(1723,49,115,2,NULL),(1724,62,115,2,NULL),(1725,64,115,2,NULL),(1726,144,115,2,NULL),(1727,145,115,2,NULL),(1728,147,115,2,NULL),(1729,148,115,2,NULL),(1730,106,115,2,NULL),(1731,109,115,2,NULL),(1732,73,115,2,NULL),(1733,31,42,2,NULL),(1734,33,42,2,NULL),(1735,1,42,2,NULL),(1736,2,42,2,NULL),(1737,46,42,2,NULL),(1738,105,42,2,NULL),(1739,111,42,2,NULL),(1740,48,42,2,NULL),(1741,49,42,2,NULL),(1742,62,42,2,NULL),(1743,64,42,2,NULL),(1744,144,42,2,NULL),(1745,145,42,2,NULL),(1746,147,42,2,NULL),(1747,148,42,2,NULL),(1748,106,42,2,NULL),(1749,109,42,2,NULL),(1750,73,42,2,NULL),(1751,54,50,2,NULL),(1752,120,50,2,NULL),(1753,31,43,2,NULL),(1754,33,43,2,NULL),(1755,1,43,2,NULL),(1756,2,43,2,NULL),(1757,46,43,2,NULL),(1758,105,43,2,NULL),(1759,111,43,2,NULL),(1760,48,43,2,NULL),(1761,49,43,2,NULL),(1762,62,43,2,NULL),(1763,64,43,2,NULL),(1764,144,43,2,NULL),(1765,145,43,2,NULL),(1766,147,43,2,NULL),(1767,148,43,2,NULL),(1768,106,43,2,NULL),(1769,109,43,2,NULL),(1770,73,43,2,NULL),(1771,160,42,2,NULL),(1772,93,50,2,NULL),(1773,142,50,2,NULL),(1774,48,1,2,NULL),(1775,49,1,2,NULL),(1776,48,4,2,NULL),(1777,49,4,2,NULL),(1778,48,7,2,NULL),(1779,49,7,2,NULL),(1780,31,45,2,NULL),(1781,33,45,2,NULL),(1782,1,45,2,NULL),(1783,2,45,2,NULL),(1784,46,45,2,NULL),(1785,48,11,2,NULL),(1786,49,11,2,NULL),(1787,48,13,2,NULL),(1788,49,13,2,NULL),(1789,48,18,2,NULL),(1790,49,18,2,NULL),(1791,48,27,2,NULL),(1792,49,27,2,NULL),(1793,48,29,2,NULL),(1794,49,29,2,NULL),(1795,105,45,2,NULL),(1796,111,45,2,NULL),(1797,48,41,2,NULL),(1798,49,41,2,NULL),(1799,48,46,2,NULL),(1800,49,46,2,NULL),(1801,62,45,2,NULL),(1802,64,45,2,NULL),(1803,48,47,2,NULL),(1804,49,47,2,NULL),(1805,144,45,2,NULL),(1806,145,45,2,NULL),(1807,147,45,2,NULL),(1808,148,45,2,NULL),(1809,106,45,2,NULL),(1810,109,45,2,NULL),(1811,73,45,2,NULL),(1812,48,50,2,NULL),(1813,49,50,2,NULL),(1814,48,51,2,NULL),(1815,49,51,2,NULL),(1816,48,73,2,NULL),(1817,49,73,2,NULL),(1818,48,75,2,NULL),(1819,49,75,2,NULL),(1820,57,45,2,NULL),(1821,62,1,2,NULL),(1822,64,1,2,NULL),(1823,62,4,2,NULL),(1824,64,4,2,NULL),(1825,62,7,2,NULL),(1826,64,7,2,NULL),(1827,31,46,2,NULL),(1828,33,46,2,NULL),(1829,1,46,2,NULL),(1830,2,46,2,NULL),(1831,46,46,2,NULL),(1832,62,11,2,NULL),(1833,64,11,2,NULL),(1834,62,13,2,NULL),(1835,64,13,2,NULL),(1836,62,18,2,NULL),(1837,64,18,2,NULL),(1838,62,27,2,NULL),(1839,64,27,2,NULL),(1840,62,29,2,NULL),(1841,64,29,2,NULL),(1842,105,46,2,NULL),(1843,111,46,2,NULL),(1844,62,41,2,NULL),(1845,64,41,2,NULL),(1846,62,47,2,NULL),(1847,64,47,2,NULL),(1848,144,46,2,NULL),(1849,145,46,2,NULL),(1850,147,46,2,NULL),(1851,148,46,2,NULL),(1852,106,46,2,NULL),(1853,109,46,2,NULL),(1854,73,46,2,NULL),(1855,62,50,2,NULL),(1856,64,50,2,NULL),(1857,62,51,2,NULL),(1858,64,51,2,NULL),(1859,62,73,2,NULL),(1860,64,73,2,NULL),(1861,62,75,2,NULL),(1862,64,75,2,NULL),(1863,98,50,2,NULL),(1864,144,1,2,NULL),(1865,145,1,2,NULL),(1866,147,1,2,NULL),(1867,148,1,2,NULL),(1868,144,4,2,NULL),(1869,145,4,2,NULL),(1870,147,4,2,NULL),(1871,148,4,2,NULL),(1872,144,7,2,NULL),(1873,145,7,2,NULL),(1874,147,7,2,NULL),(1875,148,7,2,NULL),(1876,31,47,2,NULL),(1877,33,47,2,NULL),(1878,1,47,2,NULL),(1879,2,47,2,NULL),(1880,46,47,2,NULL),(1881,144,11,2,NULL),(1882,145,11,2,NULL),(1883,147,11,2,NULL),(1884,148,11,2,NULL),(1885,144,13,2,NULL),(1886,31,29,2,NULL),(1887,145,13,2,NULL),(1888,33,29,2,NULL),(1889,147,13,2,NULL),(1890,1,29,2,NULL),(1891,148,13,2,NULL),(1892,2,29,2,NULL),(1893,144,18,2,NULL),(1894,46,29,2,NULL),(1895,145,18,2,NULL),(1896,105,29,2,NULL),(1897,147,18,2,NULL),(1898,111,29,2,NULL),(1899,148,18,2,NULL),(1900,144,29,2,NULL),(1901,144,27,2,NULL),(1902,145,29,2,NULL),(1903,145,27,2,NULL),(1904,147,29,2,NULL),(1905,147,27,2,NULL),(1906,148,29,2,NULL),(1907,148,27,2,NULL),(1908,106,29,2,NULL),(1909,105,47,2,NULL),(1910,109,29,2,NULL),(1911,111,47,2,NULL),(1912,73,29,2,NULL),(1913,144,41,2,NULL),(1914,105,1,2,NULL),(1915,145,41,2,NULL),(1916,111,1,2,NULL),(1917,147,41,2,NULL),(1918,105,4,2,NULL),(1919,148,41,2,NULL),(1920,111,4,2,NULL),(1921,106,47,2,NULL),(1922,105,7,2,NULL),(1923,109,47,2,NULL),(1924,111,7,2,NULL),(1925,73,47,2,NULL),(1926,105,11,2,NULL),(1927,144,50,2,NULL),(1928,111,11,2,NULL),(1929,145,50,2,NULL),(1930,105,13,2,NULL),(1931,147,50,2,NULL),(1932,111,13,2,NULL),(1933,148,50,2,NULL),(1934,105,18,2,NULL),(1935,144,51,2,NULL),(1936,111,18,2,NULL),(1937,145,51,2,NULL),(1938,105,27,2,NULL),(1939,147,51,2,NULL),(1940,111,27,2,NULL),(1941,148,51,2,NULL),(1942,105,41,2,NULL),(1943,144,73,2,NULL),(1944,111,41,2,NULL),(1945,145,73,2,NULL),(1946,105,50,2,NULL),(1947,147,73,2,NULL),(1948,111,50,2,NULL),(1949,148,73,2,NULL),(1950,105,51,2,NULL),(1951,144,75,2,NULL),(1952,111,51,2,NULL),(1953,145,75,2,NULL),(1954,105,73,2,NULL),(1955,147,75,2,NULL),(1956,111,73,2,NULL),(1957,148,75,2,NULL),(1958,105,75,2,NULL),(1959,111,75,2,NULL),(1960,68,45,2,NULL),(1961,99,29,2,NULL),(1962,106,1,2,NULL),(1963,102,29,2,NULL),(1964,109,1,2,NULL),(1965,31,41,2,NULL),(1966,106,4,2,NULL),(1967,33,41,2,NULL),(1968,109,4,2,NULL),(1969,1,41,2,NULL),(1970,106,7,2,NULL),(1971,2,41,2,NULL),(1972,109,7,2,NULL),(1973,46,41,2,NULL),(1974,106,11,2,NULL),(1975,106,41,2,NULL),(1976,109,11,2,NULL),(1977,109,41,2,NULL),(1978,106,13,2,NULL),(1979,73,41,2,NULL),(1980,109,13,2,NULL),(1981,106,18,2,NULL),(1982,109,18,2,NULL),(1983,106,27,2,NULL),(1984,109,27,2,NULL),(1985,106,50,2,NULL),(1986,109,50,2,NULL),(1987,106,51,2,NULL),(1988,109,51,2,NULL),(1989,106,73,2,NULL),(1990,109,73,2,NULL),(1991,106,75,2,NULL),(1992,109,75,2,NULL),(1993,140,50,2,NULL),(1994,73,1,2,NULL),(1995,73,4,2,NULL),(1996,73,7,2,NULL),(1997,73,11,2,NULL),(1998,73,13,2,NULL),(1999,73,18,2,NULL),(2000,73,27,2,NULL),(2001,73,50,2,NULL),(2002,73,51,2,NULL),(2003,73,73,2,NULL),(2004,73,75,2,NULL),(2005,31,50,2,NULL),(2006,33,50,2,NULL),(2007,1,50,2,NULL),(2008,2,50,2,NULL),(2009,46,50,2,NULL),(2010,45,50,2,NULL),(2011,100,50,2,NULL),(2012,122,50,2,NULL),(2013,31,51,2,NULL),(2014,33,51,2,NULL),(2015,1,51,2,NULL),(2016,2,51,2,NULL),(2017,46,51,2,NULL),(2018,31,73,2,NULL),(2019,33,73,2,NULL),(2020,1,73,2,NULL),(2021,2,73,2,NULL),(2022,46,73,2,NULL),(2023,31,75,2,NULL),(2024,33,75,2,NULL),(2025,1,75,2,NULL),(2026,2,75,2,NULL),(2027,46,75,2,NULL),(2028,9,11,2,NULL),(2029,52,11,2,NULL),(2030,31,18,2,NULL),(2031,55,11,2,NULL),(2032,33,18,2,NULL),(2033,31,1,2,NULL),(2034,1,18,2,NULL),(2035,33,1,2,NULL),(2036,2,18,2,NULL),(2037,1,1,2,NULL),(2038,46,18,2,NULL),(2039,2,1,2,NULL),(2040,36,21,2,NULL),(2041,46,1,2,NULL),(2042,18,18,2,NULL),(2043,4,1,2,NULL),(2044,30,18,2,NULL),(2045,12,1,2,NULL),(2046,31,27,2,NULL),(2047,17,11,2,NULL),(2048,33,27,2,NULL),(2049,28,11,2,NULL),(2050,1,27,2,NULL),(2051,51,1,2,NULL),(2052,2,27,2,NULL),(2053,65,1,2,NULL),(2054,46,27,2,NULL),(2055,31,4,2,NULL),(2056,33,4,2,NULL),(2057,1,4,2,NULL),(2058,2,4,2,NULL),(2059,46,4,2,NULL),(2060,3,4,2,NULL),(2061,1,7,2,NULL),(2062,2,7,2,NULL),(2063,46,7,2,NULL),(2064,31,11,2,NULL),(2065,33,11,2,NULL),(2066,31,13,2,NULL),(2067,33,13,2,NULL),(2068,14,9,2,NULL),(2069,58,4,2,NULL),(2070,1,11,2,NULL),(2071,2,11,2,NULL),(2072,46,11,2,NULL),(2073,1,13,2,NULL),(2074,2,13,2,NULL),(2075,46,13,2,NULL),(2076,19,11,2,NULL),(2077,61,11,2,NULL),(2078,75,11,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:29
