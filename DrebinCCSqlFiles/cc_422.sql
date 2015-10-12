-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_422
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (6,'(.*)'),(4,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.PACKAGE_ADDED'),(13,'android.intent.action.PACKAGE_REMOVED'),(8,'android.intent.action.SCREEN_OFF'),(2,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(9,'com.android.music.musicservicecommand'),(12,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(7,'com.android.vending.INSTALL_REFERRER'),(11,'eik.avg.hftkwm.uikfbkiiwir.AsVOPnvfA12');
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
INSERT INTO `Applications` VALUES (1,'umecbso.upmiscfjk',10035),(2,'com.djiqiot.mttqabjiolnpljw',10032),(3,'com.olonigfm.hqgpra',10020),(4,'eik.avg.hftkwm.uikfbkiiwir',10001),(5,'com.wkikdngsk.qskvt.sgvlva',10020),(6,'com.fdldupd.efipb.nibamfhc.q_fcufeidqal',10038),(7,'com.hoehwquneh.qdbttpnrigofbo',10041);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.categroy.DEFUAULT');
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
INSERT INTO `Classes` VALUES (1,1,'umecbso.upmiscfjk.MemoryActivity'),(2,1,'com.google.ads.AdActivity'),(3,1,'com.esPJUSq.DebsjghfHVCrKIH'),(4,1,'com.esPJUSq.mGavvohs'),(5,1,'com.esPJUSq.mNQQilkd'),(6,1,'com.esPJUSq.RheHSiAKIceJnIi'),(7,1,'com.esPJUSq.cGgcKnTQuCM'),(8,1,'com.esPJUSq.SLkkpiWeGrSj'),(9,1,'com.esPJUSq.userPermissionReceiver'),(10,2,'com.djiqiot.mttqabjiolnpljw.Main'),(11,2,'com.google.ads.AdActivity'),(12,2,'com.CewoOFqSh.ujQQLoKHkeFa'),(13,2,'com.CewoOFqSh.IQCLFEHFOSUMb'),(14,2,'com.CewoOFqSh.nubFUsvB'),(15,2,'com.CewoOFqSh.jcEFEUtvmEBl'),(16,2,'com.CewoOFqSh.GHJklgGLsNQr'),(17,2,'com.CewoOFqSh.CiBEpgWfr'),(18,2,'com.CewoOFqSh.userPermissionReceiver'),(19,3,'com.olonigfm.hqgpra.ISniperActivity'),(20,3,'com.scoreloop.android.coreui.HighscoresActivity'),(21,3,'com.scoreloop.android.coreui.ProfileActivity'),(22,3,'com.scoreloop.android.coreui.AccountActivity'),(23,3,'com.scoreloop.android.coreui.BuddiesActivity'),(24,3,'com.scoreloop.android.coreui.BuddiesAddActivity'),(25,3,'com.scoreloop.android.coreui.GameActivity'),(26,3,'com.scoreloop.android.coreui.GamesActivity'),(27,3,'com.scoreloop.android.coreui.UserActivity'),(28,3,'com.scoreloop.android.coreui.PostScoreActivity'),(29,3,'com.olonigfm.hqgpra.moreGameActivity'),(30,3,'com.olonigfm.hqgpra.SoundOptionActivity'),(31,3,'com.olonigfm.hqgpra.DifficultOptionActivity'),(32,3,'com.olonigfm.hqgpra.OptionList'),(33,3,'com.google.ads.AdActivity'),(34,3,'com.FTqEqSI.uGMjAeBEPAwF'),(35,3,'com.FTqEqSI.GpQuBdHAqMJ'),(36,3,'com.nd.dianjin.activity.OfferAppActivity'),(37,3,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(38,4,'eik.avg.hftkwm.uikfbkiiwir.SplashActivity'),(39,4,'eik.avg.hftkwm.uikfbkiiwir.MenuActivity'),(40,4,'eik.avg.hftkwm.uikfbkiiwir.SettingActivity'),(41,4,'eik.avg.hftkwm.uikfbkiiwir.MillionaireActivity'),(42,4,'eik.avg.hftkwm.uikfbkiiwir.HighRecordActivity'),(43,4,'com.openfeint.internal.ui.IntroFlow'),(44,4,'com.openfeint.api.ui.Dashboard'),(45,4,'com.openfeint.internal.ui.Settings'),(46,4,'com.openfeint.internal.ui.NativeBrowser'),(47,4,'com.google.ads.AdActivity'),(48,4,'cn.domob.android.ads.DomobActivity'),(49,4,'com.vpon.adon.android.WebInApp'),(50,4,'com.rao.flyfish.moregames.MoreGamesActivity'),(51,4,'kwm.qUVsf.MyActivity'),(52,4,'kwm.qUVsf.ApopMain'),(53,4,'kwm.qUVsf.AsVOPnvfA16'),(54,4,'kwm.qUVsf.AsVOPnvfA8'),(55,4,'kwm.qUVsf.AsVOPnvfA9'),(56,4,'kwm.qUVsf.AsVOPnvfA2'),(57,4,'kwm.qUVsf.AsVOPnvfA10'),(58,4,'kwm.qUVsf.UpdateActivity'),(59,4,'kwm.qUVsf.AsVOPnvfA11'),(60,4,'kwm.qUVsf.AsVOPnvfA12'),(61,1,'com.esPJUSq.ah'),(62,5,'com.wkikdngsk.qskvt.sgvlva.GearActivity'),(63,6,'com.fdldupd.efipb.nibamfhc.q_fcufeidqal.GameMIDlet'),(64,5,'com.wkikdngsk.qskvt.sgvlva.GearedPostScoreActivity'),(65,5,'com.scoreloop.client.android.ui.EntryScreenActivity'),(66,6,'com.MnghM.upEgogCasW'),(67,5,'com.scoreloop.client.android.ui.ShowResultOverlayActivity'),(68,6,'com.waps.OffersWebView'),(69,5,'com.scoreloop.client.android.ui.BuddiesScreenActivity'),(70,6,'com.MnghM.NhtsiupRDimjr'),(71,5,'com.scoreloop.client.android.ui.LeaderboardsScreenActivity'),(72,5,'com.scoreloop.client.android.ui.SocialMarketScreenActivity'),(73,6,'com.uucun.adsdk.OfferActivity'),(74,5,'com.scoreloop.client.android.ui.ProfileScreenActivity'),(75,5,'com.scoreloop.client.android.ui.component.market.MarketHeaderActivity'),(76,5,'com.scoreloop.client.android.ui.component.market.MarketListActivity'),(77,5,'com.scoreloop.client.android.ui.component.entry.EntryListActivity'),(78,5,'com.scoreloop.client.android.ui.component.post.PostOverlayActivity'),(79,5,'com.scoreloop.client.android.ui.component.score.ScoreHeaderActivity'),(80,5,'com.scoreloop.client.android.ui.component.score.ScoreListActivity'),(81,5,'com.scoreloop.client.android.ui.component.user.UserAddBuddyListActivity'),(82,5,'com.scoreloop.client.android.ui.component.user.UserHeaderActivity'),(83,5,'com.scoreloop.client.android.ui.component.user.UserDetailListActivity'),(84,1,'com.esPJUSq.v'),(85,5,'com.scoreloop.client.android.ui.component.user.UserListActivity'),(86,5,'com.scoreloop.client.android.ui.component.game.GameDetailHeaderActivity'),(87,5,'com.scoreloop.client.android.ui.component.game.GameDetailListActivity'),(88,5,'com.scoreloop.client.android.ui.component.game.GameListActivity'),(89,5,'com.scoreloop.client.android.ui.component.news.NewsHeaderActivity'),(90,5,'com.scoreloop.client.android.ui.component.news.NewsListActivity'),(91,5,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsListActivity'),(92,5,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsPictureListActivity'),(93,5,'com.scoreloop.client.android.ui.framework.ScreenActivity'),(94,5,'com.scoreloop.client.android.ui.framework.TabsActivity'),(95,5,'com.admob.android.ads.AdMobActivity'),(96,5,'com.millennialmedia.android.MMAdViewOverlayActivity'),(97,5,'com.millennialmedia.android.VideoPlayer'),(98,5,'com.ReTChq.mFetbufsBRNj'),(99,5,'com.ReTChq.VMvpnWiScf'),(100,5,'com.ReTChq.CNBIuwOwsDT'),(101,5,'com.ReTChq.RtMIeGPHHopaF'),(102,5,'com.ReTChq.KjMMSLIscaCDf'),(103,5,'com.ReTChq.dKCFaKkJ'),(104,5,'com.ReTChq.ORMsHcMjc'),(105,5,'com.ReTChq.QPVqwTLKHMo'),(106,5,'com.admob.android.ads.analytics.InstallReceiver'),(107,5,'com.ReTChq.fmdhFGPN'),(108,1,'com.esPJUSq.i'),(109,2,'com.djiqiot.mttqabjiolnpljw.x'),(110,2,'com.CewoOFqSh.o'),(111,2,'com.CewoOFqSh.ad'),(112,2,'com.CewoOFqSh.ab'),(113,6,'com.netmite.andme.launcher.Launcher'),(114,6,'com.uucun.adsdk.UUAppConnect'),(115,3,'com.olonigfm.hqgpra.moreGameActivity$1'),(116,3,'com.scoreloop.android.coreui.GameActivity$1'),(117,3,'com.scoreloop.client.android.core.controller.AddressBook'),(118,3,'com.olonigfm.hqgpra.MyView'),(119,3,'com.scoreloop.android.coreui.HighscoresActivity$2'),(120,3,'com.olonigfm.hqgpra.OptionList$1'),(121,3,'com.olonigfm.hqgpra.MyView$1'),(122,3,'com.google.ads.util.AdUtil$UserActivityReceiver'),(123,3,'com.scoreloop.android.coreui.AccountActivity$2'),(124,3,'com.scoreloop.android.coreui.GamesActivity$2'),(125,3,'com.scoreloop.android.coreui.BuddiesActivity$1'),(126,3,'com.scoreloop.android.coreui.GamesActivity$1'),(127,3,'com.olonigfm.hqgpra.MyView$2'),(128,3,'com.nd.dianjin.DianJinPlatform'),(129,7,'com.hoehwquneh.qdbttpnrigofbo.AppActivity'),(130,7,'com.google.ads.AdActivity'),(131,7,'net.youmi.android.AdActivity'),(132,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(133,7,'com.millennialmedia.android.VideoPlayer'),(134,7,'com.guohead.sdk.GuoheAdActivity'),(135,7,'com.bvOjJgwMP.oTokiUwvwpsPvTO'),(136,7,'com.bvOjJgwMP.WFUabFkwCdhnINo'),(137,7,'com.millennialmedia.android.MillennialMediaView'),(138,4,'kwm.qUVsf.f'),(139,4,'kwm.qUVsf.bb'),(140,4,'kwm.qUVsf.ab'),(141,4,'cn.domob.android.ads.DomobAdManager'),(142,4,'cn.domob.android.ads.o$5'),(143,4,'kwm.qUVsf.ay'),(144,4,'cn.domob.android.ads.g$1'),(145,4,'kwm.qUVsf.e'),(146,4,'com.openfeint.internal.ImagePicker'),(147,4,'kwm.qUVsf.ae'),(148,4,'eik.avg.hftkwm.uikfbkiiwir.MenuActivity$2'),(149,4,'kwm.qUVsf.ClickableToast'),(150,4,'cn.domob.android.a.a$a'),(151,4,'com.rao.flyfish.moregames.FlyfishMoreGames'),(152,4,'kwm.qUVsf.aa'),(153,4,'eik.avg.hftkwm.uikfbkiiwir.MenuActivity$3'),(154,4,'cn.domob.android.ads.e'),(155,4,'eik.avg.hftkwm.uikfbkiiwir.MenuActivity$1'),(156,4,'cn.domob.android.ads.o');
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'action'),(2,8,'fileURL'),(3,2,'params'),(4,7,'packageName'),(5,5,'iconURL'),(6,5,'apkSize'),(7,5,'np_app_key'),(8,8,'np_app_key'),(9,3,'np_app_key'),(10,6,'np_app_key'),(11,4,'np_app_key'),(12,7,'fileURL'),(13,5,'apkURL'),(14,5,'packageName'),(15,8,'fileName'),(16,5,'apkVersion'),(17,5,'apkSoftID'),(18,5,'detailFlag'),(19,5,'apkTitle'),(20,11,'action'),(21,14,'packageName'),(22,14,'apkSize'),(23,5,'apkInfo'),(24,16,'packageName'),(25,11,'params'),(26,5,'imageURL'),(27,14,'apkURL'),(28,2,'com.google.ads.AdOpener'),(29,14,'apkTitle'),(30,14,'apkSoftID'),(31,17,'fileName'),(32,16,'fileURL'),(33,14,'apkInfo'),(34,14,'imageURL'),(35,15,'np_app_key'),(36,12,'np_app_key'),(37,17,'np_app_key'),(38,13,'np_app_key'),(39,14,'np_app_key'),(40,17,'fileURL'),(41,14,'apkVersion'),(42,11,'com.google.ads.AdOpener'),(43,14,'detailFlag'),(44,14,'iconURL'),(45,72,'UU_APP_KEY'),(46,72,'UU_CHANNEL_ID'),(47,69,'UU_APP_KEY'),(48,69,'UU_CHANNEL_ID'),(49,72,'banner_detail'),(50,33,'com.google.ads.AdOpener'),(51,33,'action'),(52,33,'params'),(53,110,'overlayTransition'),(54,112,'link'),(55,111,'videoPosition'),(56,110,'shouldShowBottomBar'),(57,111,'videoAd'),(58,111,'shouldShowBottomBar'),(59,109,'A7D1721B9508405D8271AB82AC6D9B3C'),(60,110,'overlayTitle'),(61,110,'cachedAdView'),(62,111,'cached'),(63,111,'logSet'),(64,110,'shouldShowTitlebar'),(65,110,'shouldEnableBottomBar'),(66,111,'adName'),(67,110,'shouldMakeOverlayTransparent'),(68,110,'shouldResizeOverlay'),(69,111,'isCachedAd'),(70,111,'videoCompleted'),(71,108,'action'),(72,110,'canAccelerate'),(73,110,'transitionTime'),(74,108,'params'),(75,108,'com.google.ads.AdOpener'),(76,58,'apkurl'),(77,56,'isDirectFromTable'),(78,57,'apk_url'),(79,57,'title'),(80,58,'title'),(81,57,'package_name'),(82,45,'content_name'),(83,44,'content_name'),(84,43,'content_name'),(85,54,'game'),(86,57,'btn_txt'),(87,54,'fromtype'),(88,48,'appName'),(89,41,'intent_money_data'),(90,54,'filepath'),(91,46,'com.openfeint.internal.ui.NativeBrowser.argument.timeout'),(92,59,'service_channel'),(93,46,'com.openfeint.internal.ui.NativeBrowser.argument.src'),(94,50,'game_icon'),(95,41,'DOMOB_TEST_MODE'),(96,56,'DOMOB_TEST_MODE'),(97,57,'DOMOB_TEST_MODE'),(98,54,'DOMOB_TEST_MODE'),(99,55,'DOMOB_TEST_MODE'),(100,59,'DOMOB_TEST_MODE'),(101,51,'DOMOB_TEST_MODE'),(102,58,'DOMOB_TEST_MODE'),(103,48,'actType'),(104,45,'com.openfeint.internal.ui.NativeBrowser.argument.failure_desc'),(105,57,'content'),(106,54,'title'),(107,49,'url'),(108,47,'params'),(109,48,'appId'),(110,51,'version_code'),(111,57,'url'),(112,56,'package_name'),(113,54,'from_alert'),(114,58,'content'),(115,54,'from_table'),(116,53,'poptitle'),(117,49,'adWidth'),(118,41,'DOMOB_ALLOW_LOCATION'),(119,56,'DOMOB_ALLOW_LOCATION'),(120,57,'DOMOB_ALLOW_LOCATION'),(121,54,'DOMOB_ALLOW_LOCATION'),(122,55,'DOMOB_ALLOW_LOCATION'),(123,59,'DOMOB_ALLOW_LOCATION'),(124,51,'DOMOB_ALLOW_LOCATION'),(125,58,'DOMOB_ALLOW_LOCATION'),(126,50,'game_info'),(127,51,'soft_id'),(128,58,'packagename'),(129,45,'com.openfeint.internal.ui.NativeBrowser.argument.result'),(130,45,'com.openfeint.internal.ui.NativeBrowser.argument.failed'),(131,50,'game_package'),(132,47,'action'),(133,57,'version_code'),(134,54,'status'),(135,41,'DOMOB_PID'),(136,56,'DOMOB_PID'),(137,57,'DOMOB_PID'),(138,54,'DOMOB_PID'),(139,55,'DOMOB_PID'),(140,59,'DOMOB_PID'),(141,51,'DOMOB_PID'),(142,58,'DOMOB_PID'),(143,50,'game_name'),(144,45,'screenName'),(145,44,'screenName'),(146,43,'screenName'),(147,41,'GH_APPKEY'),(148,57,'fromtable'),(149,47,'com.google.ads.AdOpener'),(150,53,'service_channel'),(151,51,'service_channel'),(152,53,'popurl'),(153,56,'from');
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',0,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'s',1,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,62,'a',1,NULL,NULL),(62,63,'a',1,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,65,'a',0,NULL,NULL),(65,66,'a',0,NULL,NULL),(66,67,'a',0,NULL,NULL),(67,68,'a',0,NULL,NULL),(68,69,'a',0,NULL,NULL),(69,70,'a',1,NULL,NULL),(70,71,'a',0,NULL,NULL),(71,72,'a',0,NULL,NULL),(72,73,'a',0,NULL,NULL),(73,74,'a',0,NULL,NULL),(74,75,'a',0,NULL,NULL),(75,76,'a',0,NULL,NULL),(76,77,'a',0,NULL,NULL),(77,78,'a',0,NULL,NULL),(78,79,'a',0,NULL,NULL),(79,80,'a',0,NULL,NULL),(80,81,'a',0,NULL,NULL),(81,82,'a',0,NULL,NULL),(82,83,'a',0,NULL,NULL),(83,85,'a',0,NULL,NULL),(84,86,'a',0,NULL,NULL),(85,87,'a',0,NULL,NULL),(86,88,'a',0,NULL,NULL),(87,89,'a',0,NULL,NULL),(88,90,'a',0,NULL,NULL),(89,91,'a',0,NULL,NULL),(90,92,'a',0,NULL,NULL),(91,93,'a',0,NULL,NULL),(92,94,'a',0,NULL,NULL),(93,95,'a',0,NULL,NULL),(94,96,'a',0,NULL,NULL),(95,97,'a',0,NULL,NULL),(96,98,'a',1,NULL,NULL),(97,99,'a',0,NULL,NULL),(98,100,'a',1,NULL,NULL),(99,101,'a',1,NULL,NULL),(100,102,'a',1,NULL,NULL),(101,103,'a',0,NULL,NULL),(102,104,'a',0,NULL,NULL),(103,105,'s',1,NULL,NULL),(104,106,'r',1,NULL,NULL),(105,107,'r',1,NULL,NULL),(106,122,'r',1,NULL,NULL),(107,129,'a',1,NULL,NULL),(108,130,'a',0,NULL,NULL),(109,131,'a',0,NULL,NULL),(110,132,'a',0,NULL,NULL),(111,133,'a',0,NULL,NULL),(112,134,'a',0,NULL,NULL),(113,135,'a',0,NULL,NULL),(114,136,'a',1,NULL,NULL),(115,140,'r',1,NULL,NULL),(116,147,'r',1,NULL,NULL),(117,154,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,4),(3,3,3),(4,4,4),(5,4,5),(6,5,9),(7,6,2),(8,7,4),(9,8,4),(10,9,4),(11,9,5),(12,10,4),(13,11,13),(14,12,8),(15,13,13),(16,14,13),(17,15,16),(18,16,7),(19,17,13),(20,18,3),(21,19,11),(22,20,5),(23,21,3),(24,22,14),(25,23,13),(26,24,17),(27,25,12),(28,26,12),(29,27,12),(30,28,10),(31,29,14),(32,29,13),(33,30,14),(34,30,13),(35,31,18),(36,32,12),(37,33,62),(38,34,62),(39,35,65),(40,36,69),(41,37,69),(42,38,33),(43,39,29),(44,40,25),(45,41,24),(46,42,19),(47,43,34),(48,44,29),(49,45,20),(50,46,20),(51,47,32),(52,48,21),(53,49,26),(54,50,21),(55,51,34),(56,52,19),(57,53,20),(58,54,22),(59,55,29),(60,56,29),(61,57,26),(62,58,23),(63,59,32),(64,60,26),(65,61,35),(66,62,26),(67,63,19),(68,64,19),(69,65,29),(70,66,35),(71,67,113),(72,68,108),(73,69,111),(74,70,111),(75,71,111),(76,72,111),(77,73,111),(78,74,111),(79,75,111),(80,76,114),(81,77,111),(82,78,57),(83,79,54),(84,80,60),(85,81,47),(86,82,60),(87,83,54),(88,84,51),(89,85,51),(90,85,41),(91,85,54),(92,85,55),(93,85,56),(94,85,57),(95,85,58),(96,85,59),(97,86,51),(98,86,55),(99,86,56),(100,86,54),(101,86,59),(102,87,57),(103,88,51),(104,89,57),(105,89,56),(106,89,59),(107,89,58),(108,89,41),(109,89,54),(110,89,55),(111,89,51),(112,90,55),(113,91,54),(114,92,57),(115,92,56),(116,92,55),(117,93,51),(118,94,43),(119,94,45),(120,95,39),(121,96,60),(122,97,51),(123,98,51),(124,98,55),(125,98,56),(126,98,54),(127,98,59),(128,98,57),(129,98,41),(130,98,58),(131,99,55),(132,99,56),(133,99,57),(134,100,53),(135,101,39),(136,102,57),(137,103,54),(138,104,57),(139,105,58),(140,106,58),(141,107,54),(142,108,39),(143,109,54),(144,110,54),(145,111,54),(146,112,39),(147,113,50),(148,114,41),(149,114,59),(150,114,57),(151,114,58),(152,114,55),(153,114,56),(154,114,54),(155,114,51),(156,115,51),(157,116,55);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.esPJUSq.DebsjghfHVCrKIH: void onCreate(android.os.Bundle)>',36,'a',NULL),(2,4,'<com.esPJUSq.mGavvohs: void onBackPressed()>',5,'a',NULL),(3,3,'<com.esPJUSq.DebsjghfHVCrKIH: void onCreate(android.os.Bundle)>',31,'a',0),(4,5,'<com.esPJUSq.mNQQilkd: void a(com.esPJUSq.mNQQilkd,android.content.Context,java.lang.String)>',5,'a',NULL),(5,61,'<com.esPJUSq.ah: void run()>',25,'s',NULL),(6,2,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(7,4,'<com.esPJUSq.mGavvohs: void b()>',45,'a',NULL),(8,4,'<com.esPJUSq.mGavvohs: void b()>',55,'a',NULL),(9,84,'<com.esPJUSq.v: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(10,4,'<com.esPJUSq.mGavvohs: void a()>',3,'a',NULL),(11,13,'<com.CewoOFqSh.IQCLFEHFOSUMb: void a(boolean)>',5,'a',NULL),(12,8,'<com.esPJUSq.SLkkpiWeGrSj: void c(android.content.Context)>',74,'a',NULL),(13,13,'<com.CewoOFqSh.IQCLFEHFOSUMb: void a(boolean)>',15,'a',NULL),(14,13,'<com.CewoOFqSh.IQCLFEHFOSUMb: void a()>',3,'a',NULL),(15,16,'<com.CewoOFqSh.GHJklgGLsNQr: void a(java.lang.String)>',10,'a',NULL),(16,7,'<com.esPJUSq.cGgcKnTQuCM: void a(java.lang.String)>',10,'a',NULL),(17,13,'<com.CewoOFqSh.IQCLFEHFOSUMb: void b()>',43,'a',NULL),(18,3,'<com.esPJUSq.DebsjghfHVCrKIH: void onCreate(android.os.Bundle)>',21,'a',NULL),(19,11,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(20,5,'<com.esPJUSq.mNQQilkd: void onCreate(android.os.Bundle)>',67,'a',NULL),(21,108,'<com.esPJUSq.i: void run()>',8,'s',NULL),(22,14,'<com.CewoOFqSh.nubFUsvB: void onCreate(android.os.Bundle)>',74,'a',NULL),(23,13,'<com.CewoOFqSh.IQCLFEHFOSUMb: void b()>',50,'a',NULL),(24,17,'<com.CewoOFqSh.CiBEpgWfr: void a(android.content.Context)>',76,'a',NULL),(25,12,'<com.CewoOFqSh.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',15,'a',NULL),(26,12,'<com.CewoOFqSh.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',30,'a',NULL),(27,12,'<com.CewoOFqSh.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',25,'a',0),(28,109,'<com.djiqiot.mttqabjiolnpljw.x: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(29,14,'<com.CewoOFqSh.nubFUsvB: void a(com.CewoOFqSh.nubFUsvB,android.content.Context,java.lang.String)>',5,'a',NULL),(30,110,'<com.CewoOFqSh.o: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(31,111,'<com.CewoOFqSh.ad: void run()>',25,'s',NULL),(32,112,'<com.CewoOFqSh.ab: void run()>',8,'s',NULL),(33,113,'<com.netmite.andme.launcher.Launcher: void startGetRunner(int)>',14,'a',NULL),(34,113,'<com.netmite.andme.launcher.Launcher: void startRunner(android.os.Bundle)>',4,'a',NULL),(35,66,'<com.MnghM.upEgogCasW: void b()>',3,'a',NULL),(36,70,'<com.MnghM.NhtsiupRDimjr: void a()>',3,'a',NULL),(37,114,'<com.uucun.adsdk.UUAppConnect: void showOffers()>',6,'a',NULL),(38,33,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(39,115,'<com.olonigfm.hqgpra.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(40,116,'<com.scoreloop.android.coreui.GameActivity$1: void onClick(android.view.View)>',9,'a',NULL),(41,117,'<com.scoreloop.client.android.core.controller.AddressBook: java.util.List b(android.content.Context)>',5,'p',NULL),(42,118,'<com.olonigfm.hqgpra.MyView: void drawMainMenu(com.olonigfm.hqgpra.J2ME_Graphics)>',104,'a',NULL),(43,34,'<com.FTqEqSI.uGMjAeBEPAwF: void a()>',3,'a',NULL),(44,115,'<com.olonigfm.hqgpra.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(45,119,'<com.scoreloop.android.coreui.HighscoresActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(46,20,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(47,120,'<com.olonigfm.hqgpra.OptionList$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(48,21,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(49,26,'<com.scoreloop.android.coreui.GamesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(50,21,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(51,34,'<com.FTqEqSI.uGMjAeBEPAwF: void a(java.lang.String)>',10,'a',NULL),(52,121,'<com.olonigfm.hqgpra.MyView$1: void run()>',7,'a',NULL),(53,20,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(54,123,'<com.scoreloop.android.coreui.AccountActivity$2: void onClick(android.view.View)>',9,'a',NULL),(55,115,'<com.olonigfm.hqgpra.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',35,'a',NULL),(56,115,'<com.olonigfm.hqgpra.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(57,124,'<com.scoreloop.android.coreui.GamesActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(58,125,'<com.scoreloop.android.coreui.BuddiesActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(59,120,'<com.olonigfm.hqgpra.OptionList$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(60,126,'<com.scoreloop.android.coreui.GamesActivity$1: void onClick(android.view.View)>',9,'a',NULL),(61,35,'<com.FTqEqSI.GpQuBdHAqMJ: void a()>',3,'a',NULL),(62,26,'<com.scoreloop.android.coreui.GamesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(63,118,'<com.olonigfm.hqgpra.MyView: void drawMainMenu(com.olonigfm.hqgpra.J2ME_Graphics)>',75,'a',NULL),(64,127,'<com.olonigfm.hqgpra.MyView$2: void run()>',7,'a',NULL),(65,115,'<com.olonigfm.hqgpra.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(66,128,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(67,135,'<com.bvOjJgwMP.oTokiUwvwpsPvTO: void b()>',3,'a',NULL),(68,130,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(69,133,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',228,'a',NULL),(70,133,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',188,'a',NULL),(71,133,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',236,'a',NULL),(72,133,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',180,'a',NULL),(73,133,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',217,'a',NULL),(74,133,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',159,'a',NULL),(75,137,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(76,136,'<com.bvOjJgwMP.WFUabFkwCdhnINo: void a()>',3,'a',NULL),(77,133,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',208,'a',NULL),(78,57,'<kwm.qUVsf.AsVOPnvfA10: void onClick(android.view.View)>',68,'a',NULL),(79,54,'<kwm.qUVsf.AsVOPnvfA8: void onCreate(android.os.Bundle)>',90,'s',NULL),(80,60,'<kwm.qUVsf.AsVOPnvfA12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(81,47,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(82,60,'<kwm.qUVsf.AsVOPnvfA12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(83,138,'<kwm.qUVsf.f: void onClick(android.view.View)>',218,'a',NULL),(84,139,'<kwm.qUVsf.bb: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(85,141,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(86,142,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(87,57,'<kwm.qUVsf.AsVOPnvfA10: void onClick(android.view.View)>',77,'a',NULL),(88,143,'<kwm.qUVsf.ay: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(89,144,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(90,55,'<kwm.qUVsf.AsVOPnvfA9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(91,145,'<kwm.qUVsf.e: void onClick(android.view.View)>',221,'a',NULL),(92,56,'<kwm.qUVsf.AsVOPnvfA2: void a(int,boolean)>',10,'s',NULL),(93,51,'<kwm.qUVsf.MyActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(94,146,'<com.openfeint.internal.ImagePicker: android.graphics.Bitmap onImagePickerActivityResult(android.app.Activity,int,int,android.content.Intent)>',10,'p',0),(95,148,'<eik.avg.hftkwm.uikfbkiiwir.MenuActivity$2: void onClick(android.view.View)>',7,'a',NULL),(96,60,'<kwm.qUVsf.AsVOPnvfA12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(97,149,'<kwm.qUVsf.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(98,150,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(99,56,'<kwm.qUVsf.AsVOPnvfA2: void a(int,boolean)>',43,'a',NULL),(100,53,'<kwm.qUVsf.AsVOPnvfA16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(101,151,'<com.rao.flyfish.moregames.FlyfishMoreGames: void showMoreGames()>',14,'a',NULL),(102,57,'<kwm.qUVsf.AsVOPnvfA10: void onClick(android.view.View)>',86,'a',NULL),(103,138,'<kwm.qUVsf.f: void onClick(android.view.View)>',239,'a',NULL),(104,57,'<kwm.qUVsf.AsVOPnvfA10: void onClick(android.view.View)>',55,'a',NULL),(105,58,'<kwm.qUVsf.UpdateActivity: void onClick(android.view.View)>',26,'a',NULL),(106,58,'<kwm.qUVsf.UpdateActivity: void onCreate(android.os.Bundle)>',13,'s',NULL),(107,152,'<kwm.qUVsf.aa: void onClick(android.view.View)>',239,'a',NULL),(108,153,'<eik.avg.hftkwm.uikfbkiiwir.MenuActivity$3: void onClick(android.view.View)>',7,'a',NULL),(109,145,'<kwm.qUVsf.e: void onClick(android.view.View)>',242,'a',NULL),(110,152,'<kwm.qUVsf.aa: void onClick(android.view.View)>',218,'a',NULL),(111,54,'<kwm.qUVsf.AsVOPnvfA8: void onCreate(android.os.Bundle)>',39,'s',NULL),(112,155,'<eik.avg.hftkwm.uikfbkiiwir.MenuActivity$1: void onClick(android.view.View)>',10,'a',NULL),(113,50,'<com.rao.flyfish.moregames.MoreGamesActivity: void showGameInfo(java.lang.String)>',9,'a',NULL),(114,156,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(115,51,'<kwm.qUVsf.MyActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(116,55,'<kwm.qUVsf.AsVOPnvfA9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,1),(2,4,1),(3,6,5),(4,7,6),(5,8,6),(6,11,5),(7,17,5),(8,18,5),(9,21,5),(10,22,1),(11,23,6),(12,24,1),(13,25,6),(14,27,1),(15,28,1),(16,33,5),(17,34,1),(18,35,1),(19,36,5),(20,39,5),(21,40,5),(22,41,1),(23,42,1),(24,43,1),(25,44,1),(26,48,5),(27,49,6),(28,50,6),(29,51,5),(30,52,5),(31,55,5),(32,58,5),(33,60,5),(34,61,5),(35,62,5),(36,70,5),(37,73,5),(38,74,6),(39,75,6),(40,76,5),(41,77,5),(42,78,5),(43,81,5),(44,82,9),(45,84,10),(46,85,5),(47,86,5),(48,88,11),(49,89,5),(50,90,6),(51,91,6),(52,92,11),(53,93,5),(54,94,5),(55,96,5),(56,98,5),(57,99,5),(58,100,5),(59,101,5),(60,102,12),(61,105,5),(62,106,5),(63,112,1),(64,113,1),(65,114,1),(66,115,1),(67,119,1),(68,120,1),(69,121,1),(70,122,1),(71,124,1),(72,126,1),(73,127,1),(74,128,1),(75,129,1),(76,131,1),(77,132,1),(78,133,1),(79,134,1),(80,135,5),(81,136,5),(82,139,5),(83,140,5),(84,142,1),(85,143,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,1),(2,4,2),(3,22,1),(4,24,2),(5,27,1),(6,28,2),(7,34,1),(8,35,2),(9,41,1),(10,42,1),(11,43,1),(12,44,1),(13,112,1),(14,113,2),(15,114,1),(16,115,2),(17,119,1),(18,120,2),(19,121,1),(20,122,2),(21,124,4),(22,126,1),(23,127,2),(24,128,1),(25,129,2),(26,131,1),(27,132,2),(28,133,1),(29,134,2),(30,142,1),(31,143,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/esPJUSq/mGavvohs'),(2,2,'umecbso/upmiscfjk/MemoryActivity'),(3,5,'com/esPJUSq/RheHSiAKIceJnIi'),(4,9,'umecbso/upmiscfjk/MemoryActivity'),(5,10,'umecbso/upmiscfjk/MemoryActivity'),(6,12,'umecbso/upmiscfjk/MemoryActivity'),(7,13,'com/djiqiot/mttqabjiolnpljw/Main'),(8,15,'com/djiqiot/mttqabjiolnpljw/Main'),(9,16,'com/djiqiot/mttqabjiolnpljw/Main'),(10,14,'com/esPJUSq/mNQQilkd'),(11,20,'com/djiqiot/mttqabjiolnpljw/Main'),(12,19,'com/esPJUSq/mGavvohs'),(13,26,'com/esPJUSq/RheHSiAKIceJnIi'),(14,29,'com/djiqiot/mttqabjiolnpljw/Main'),(15,30,'com/CewoOFqSh/nubFUsvB'),(16,31,'com/CewoOFqSh/IQCLFEHFOSUMb'),(17,32,'com/CewoOFqSh/IQCLFEHFOSUMb'),(18,37,'com/CewoOFqSh/jcEFEUtvmEBl'),(19,38,'com/CewoOFqSh/jcEFEUtvmEBl'),(20,41,'com.netmite.andme.MIDletRunner'),(21,42,'com.netmite.andme.MIDletRunner'),(22,43,'com.netmite.andme.MIDletRunner'),(23,44,'com.netmite.andme.MIDletRunner'),(24,45,'com/fdldupd/efipb/nibamfhc/q_fcufeidqal/GameMIDlet'),(25,46,'com/fdldupd/efipb/nibamfhc/q_fcufeidqal/GameMIDlet'),(26,47,'com/uucun/adsdk/OfferActivity'),(27,53,'com/olonigfm/hqgpra/OptionList'),(28,54,'com/olonigfm/hqgpra/ISniperActivity'),(29,56,'com/scoreloop/android/coreui/UserActivity'),(30,57,'com/olonigfm/hqgpra/DifficultOptionActivity'),(31,59,'com/scoreloop/android/coreui/HighscoresActivity'),(32,63,'com/scoreloop/android/coreui/GameActivity'),(33,64,'com/scoreloop/android/coreui/UserActivity'),(34,65,'com/olonigfm/hqgpra/SoundOptionActivity'),(35,66,'com/scoreloop/android/coreui/GameActivity'),(36,67,'com/olonigfm/hqgpra/ISniperActivity'),(37,68,'com/olonigfm/hqgpra/moreGameActivity'),(38,69,'com/scoreloop/android/coreui/ProfileActivity'),(39,71,'com/nd/dianjin/activity/OfferAppActivity'),(40,72,'com/hoehwquneh/qdbttpnrigofbo/AppActivity'),(41,79,'com/millennialmedia/android/MMAdViewOverlayActivity'),(42,80,'com/millennialmedia/android/MMAdViewOverlayActivity'),(43,83,'com/hoehwquneh/qdbttpnrigofbo/AppActivity'),(44,87,'kwm/qUVsf/AsVOPnvfA11'),(45,88,'kwm/qUVsf/AsVOPnvfA11'),(46,92,'kwm/qUVsf/AsVOPnvfA11'),(47,95,'eik/avg/hftkwm/uikfbkiiwir/SplashActivity'),(48,103,'eik/avg/hftkwm/uikfbkiiwir/SplashActivity'),(49,104,'kwm/qUVsf/AsVOPnvfA8'),(50,107,'kwm/qUVsf/AsVOPnvfA11'),(51,108,'kwm/qUVsf/AsVOPnvfA11'),(52,109,'eik/avg/hftkwm/uikfbkiiwir/HighRecordActivity'),(53,110,'kwm/qUVsf/AsVOPnvfA11'),(54,111,'kwm/qUVsf/AsVOPnvfA16'),(55,116,'eik/avg/hftkwm/uikfbkiiwir/SplashActivity'),(56,117,'com/rao/flyfish/moregames/MoreGamesActivity'),(57,118,'kwm/qUVsf/AsVOPnvfA10'),(58,123,'kwm/qUVsf/AsVOPnvfA8'),(59,125,'kwm/qUVsf/AsVOPnvfA11'),(60,130,'eik/avg/hftkwm/uikfbkiiwir/SettingActivity'),(61,137,'kwm/qUVsf/AsVOPnvfA11'),(62,138,'eik/avg/hftkwm/uikfbkiiwir/MillionaireActivity'),(63,141,'kwm/qUVsf/AsVOPnvfA11');
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
INSERT INTO `IData` VALUES (1,6,1),(2,7,2),(3,8,3),(4,11,4),(5,17,5),(6,18,6),(7,21,7),(8,23,8),(9,25,9),(10,33,10),(11,36,11),(12,39,12),(13,40,13),(14,48,14),(15,49,15),(16,50,16),(17,51,17),(18,52,18),(19,55,20),(20,58,21),(21,60,22),(22,61,23),(23,62,24),(24,70,25),(25,73,26),(26,74,27),(27,75,28),(28,76,29),(29,77,30),(30,78,31),(31,79,32),(32,80,33),(33,81,34),(34,84,35),(35,85,36),(36,86,37),(37,89,38),(38,90,39),(39,91,40),(40,93,41),(41,94,42),(42,96,44),(43,98,45),(44,99,46),(45,100,47),(46,101,48),(47,105,49),(48,106,50),(49,135,52),(50,136,53),(51,139,54),(52,140,55);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,14,'apkVersion'),(2,14,'apkURL'),(3,14,'apkInfo'),(4,14,'packageName'),(5,14,'apkSoftID'),(6,14,'apkTitle'),(7,14,'iconURL'),(8,14,'apkSize'),(9,14,'imageURL'),(10,30,'apkVersion'),(11,30,'apkURL'),(12,30,'apkInfo'),(13,30,'packageName'),(14,30,'apkSoftID'),(15,30,'apkTitle'),(16,30,'iconURL'),(17,30,'apkSize'),(18,30,'imageURL'),(19,41,'midletapkpath'),(20,41,'midletclass'),(21,41,'(.*)'),(22,41,'midleturl'),(23,42,'midletapkpath'),(24,42,'midleturl'),(25,43,'midletapkpath'),(26,43,'midletclass'),(27,43,'midleturl'),(28,44,'midletapkpath'),(29,44,'(.*)'),(30,44,'midleturl'),(31,71,'oriention'),(32,79,'cachedAdView'),(33,80,'cachedAdView'),(34,82,'command'),(35,104,'game'),(36,104,'fromtype'),(37,111,'popurl'),(38,111,'poptitle'),(39,117,'game_info'),(40,117,'game_name'),(41,117,'game_icon'),(42,117,'game_package'),(43,118,'title'),(44,118,'btn_txt'),(45,118,'need_adb_flag'),(46,118,'cont'),(47,118,'close_flag'),(48,123,'id'),(49,123,'from_alert'),(50,123,'detail_flag'),(51,138,'intent_money_data');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,5,1),(4,6,2),(5,8,1),(6,9,3),(7,11,1),(8,12,1),(9,13,1),(10,14,1),(11,15,1),(12,16,2),(13,16,4),(14,19,1),(15,20,1),(16,21,1),(17,22,1),(18,23,1),(19,24,1),(20,25,7),(21,26,4),(22,26,2),(23,27,8),(24,27,2),(25,29,1),(26,30,3),(27,31,8),(28,32,13),(29,33,2),(30,34,3),(31,35,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,5,1),(3,8,1),(4,11,1),(5,15,1),(6,19,1),(7,20,1),(8,24,1),(9,29,1),(10,30,3),(11,32,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,9,'package',NULL,NULL,NULL,NULL,NULL),(2,30,'package',NULL,NULL,NULL,NULL,NULL),(3,32,'package',NULL,NULL,NULL,NULL,NULL),(4,34,'package',NULL,NULL,NULL,NULL,NULL),(5,35,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,7,'(.*)','(.*)'),(2,11,'application','vnd.android.package-archive'),(3,17,'application','vnd.android.package-archive'),(4,18,'application','vnd.android.package-archive'),(5,23,'(.*)','(.*)'),(6,36,'application','vnd.android.package-archive'),(7,41,'application','vnd.android.package-archive'),(8,42,'application','vnd.android.package-archive'),(9,43,'application','vnd.android.package-archive'),(10,44,'application','vnd.android.package-archive'),(11,49,'(.*)','(.*)'),(12,58,'application','vnd.android.package-archive'),(13,74,'(.*)','(.*)'),(14,90,'(.*)','(.*)'),(15,93,'application','vnd.android.package-archive'),(16,94,'application','vnd.android.package-archive'),(17,96,'application','vnd.android.package-archive'),(18,98,'application','vnd.android.package-archive'),(19,99,'application','vnd.android.package-archive'),(20,100,'application','vnd.android.package-archive'),(21,101,'application','vnd.android.package-archive'),(22,105,'application','vnd.android.package-archive'),(23,106,'application','vnd.android.package-archive'),(24,135,'application','vnd.android.package-archive'),(25,136,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'umecbso.upmiscfjk'),(2,2,'umecbso.upmiscfjk'),(3,3,'(.*)'),(4,4,'(.*)'),(5,5,'umecbso.upmiscfjk'),(6,9,'umecbso.upmiscfjk'),(7,10,'umecbso.upmiscfjk'),(8,12,'umecbso.upmiscfjk'),(9,13,'com.djiqiot.mttqabjiolnpljw'),(10,15,'com.djiqiot.mttqabjiolnpljw'),(11,16,'com.djiqiot.mttqabjiolnpljw'),(12,14,'umecbso.upmiscfjk'),(13,19,'umecbso.upmiscfjk'),(14,20,'com.djiqiot.mttqabjiolnpljw'),(15,22,'(.*)'),(16,24,'(.*)'),(17,26,'umecbso.upmiscfjk'),(18,27,'(.*)'),(19,28,'(.*)'),(20,29,'com.djiqiot.mttqabjiolnpljw'),(21,30,'com.djiqiot.mttqabjiolnpljw'),(22,31,'com.djiqiot.mttqabjiolnpljw'),(23,32,'com.djiqiot.mttqabjiolnpljw'),(24,34,'(.*)'),(25,35,'(.*)'),(26,37,'com.djiqiot.mttqabjiolnpljw'),(27,38,'com.djiqiot.mttqabjiolnpljw'),(28,41,'com.netmite.andme'),(29,42,'com.netmite.andme'),(30,43,'com.netmite.andme'),(31,44,'com.netmite.andme'),(32,45,'com.fdldupd.efipb.nibamfhc.q_fcufeidqal'),(33,46,'com.fdldupd.efipb.nibamfhc.q_fcufeidqal'),(34,47,'com.fdldupd.efipb.nibamfhc.q_fcufeidqal'),(35,53,'com.olonigfm.hqgpra'),(36,54,'com.olonigfm.hqgpra'),(37,56,'com.olonigfm.hqgpra'),(38,57,'com.olonigfm.hqgpra'),(39,59,'com.olonigfm.hqgpra'),(40,63,'com.olonigfm.hqgpra'),(41,64,'com.olonigfm.hqgpra'),(42,65,'com.olonigfm.hqgpra'),(43,66,'com.olonigfm.hqgpra'),(44,67,'com.olonigfm.hqgpra'),(45,68,'com.olonigfm.hqgpra'),(46,69,'com.olonigfm.hqgpra'),(47,71,'com.olonigfm.hqgpra'),(48,72,'com.hoehwquneh.qdbttpnrigofbo'),(49,79,'com.hoehwquneh.qdbttpnrigofbo'),(50,80,'com.hoehwquneh.qdbttpnrigofbo'),(51,83,'com.hoehwquneh.qdbttpnrigofbo'),(52,87,'eik.avg.hftkwm.uikfbkiiwir'),(53,88,'eik.avg.hftkwm.uikfbkiiwir'),(54,92,'eik.avg.hftkwm.uikfbkiiwir'),(55,95,'eik.avg.hftkwm.uikfbkiiwir'),(56,103,'eik.avg.hftkwm.uikfbkiiwir'),(57,104,'eik.avg.hftkwm.uikfbkiiwir'),(58,107,'eik.avg.hftkwm.uikfbkiiwir'),(59,108,'eik.avg.hftkwm.uikfbkiiwir'),(60,109,'eik.avg.hftkwm.uikfbkiiwir'),(61,110,'eik.avg.hftkwm.uikfbkiiwir'),(62,111,'eik.avg.hftkwm.uikfbkiiwir'),(63,112,'(.*)'),(64,113,''),(65,114,''),(66,115,'(.*)'),(67,116,'eik.avg.hftkwm.uikfbkiiwir'),(68,117,'eik.avg.hftkwm.uikfbkiiwir'),(69,118,'eik.avg.hftkwm.uikfbkiiwir'),(70,119,'(.*)'),(71,120,''),(72,121,''),(73,122,'(.*)'),(74,123,'eik.avg.hftkwm.uikfbkiiwir'),(75,125,'eik.avg.hftkwm.uikfbkiiwir'),(76,126,'(.*)'),(77,127,''),(78,128,''),(79,129,'(.*)'),(80,130,'eik.avg.hftkwm.uikfbkiiwir'),(81,131,'(.*)'),(82,132,''),(83,133,''),(84,134,'(.*)'),(85,137,'eik.avg.hftkwm.uikfbkiiwir'),(86,138,'eik.avg.hftkwm.uikfbkiiwir'),(87,141,'eik.avg.hftkwm.uikfbkiiwir'),(88,142,'(.*)'),(89,143,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,9,0),(4,10,0),(5,12,0),(6,18,0),(7,19,0),(8,35,0),(9,37,0),(10,38,0),(11,51,0),(12,54,0),(13,55,0),(14,56,0),(15,59,0),(16,60,0),(17,61,0),(18,62,0),(19,69,0),(20,96,0),(21,98,0),(22,99,0),(23,100,0),(24,103,0),(25,104,0),(26,105,0),(27,106,0),(28,107,0),(29,114,0),(30,60,0),(31,115,0),(32,60,0),(33,116,0),(34,117,0),(35,117,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,4,1,0),(4,4,1,0),(5,5,0,0),(6,6,1,0),(7,6,1,0),(8,6,1,0),(9,7,0,0),(10,8,0,0),(11,9,1,0),(12,10,0,0),(13,11,0,0),(14,12,0,0),(15,13,0,0),(16,14,0,0),(17,15,1,0),(18,16,1,0),(19,18,0,0),(20,17,0,0),(21,19,1,0),(22,20,1,0),(23,19,1,0),(24,20,1,0),(25,19,1,0),(26,21,0,0),(27,22,1,0),(28,22,1,0),(29,23,0,0),(30,24,0,0),(31,25,0,0),(32,26,0,0),(33,28,1,0),(34,29,1,0),(35,29,1,0),(36,30,1,0),(37,31,0,0),(38,32,0,0),(39,33,1,0),(40,34,1,0),(41,34,0,0),(42,34,0,0),(43,34,0,0),(44,34,0,0),(45,35,0,0),(46,36,0,0),(47,37,0,0),(48,38,1,0),(49,38,1,0),(50,38,1,0),(51,39,1,0),(52,40,1,0),(53,42,0,0),(54,43,0,0),(55,44,1,0),(56,45,0,0),(57,47,0,0),(58,51,1,0),(59,52,0,0),(60,54,1,0),(61,55,1,0),(62,56,1,0),(63,57,0,0),(64,58,0,0),(65,59,0,0),(66,60,0,0),(67,61,0,0),(68,63,0,0),(69,64,0,0),(70,65,1,0),(71,66,0,0),(72,67,0,0),(73,68,1,0),(74,68,1,0),(75,68,1,0),(76,69,1,0),(77,70,1,0),(78,71,1,0),(79,72,0,0),(80,73,0,0),(81,74,1,0),(82,75,1,0),(83,76,0,0),(84,77,1,0),(85,78,1,0),(86,78,1,0),(87,79,0,0),(88,80,0,0),(89,81,1,0),(90,81,1,0),(91,81,1,0),(92,82,0,0),(93,83,1,0),(94,83,1,0),(95,84,0,0),(96,86,1,0),(97,86,1,0),(98,86,1,0),(99,86,1,0),(100,86,1,0),(101,86,1,0),(102,87,1,0),(103,88,0,0),(104,90,0,0),(105,91,1,0),(106,91,1,0),(107,92,0,0),(108,93,0,0),(109,95,0,0),(110,96,0,0),(111,97,0,0),(112,99,1,0),(113,99,1,0),(114,99,1,0),(115,99,1,0),(116,100,0,0),(117,101,0,0),(118,102,0,0),(119,103,1,0),(120,103,1,0),(121,103,1,0),(122,103,1,0),(123,104,0,0),(124,105,1,0),(125,106,0,0),(126,107,1,0),(127,107,1,0),(128,107,1,0),(129,107,1,0),(130,108,0,0),(131,109,1,0),(132,109,1,0),(133,109,1,0),(134,109,1,0),(135,110,1,0),(136,110,1,0),(137,111,0,0),(138,112,0,0),(139,113,1,0),(140,114,1,0),(141,115,0,0),(142,116,1,0),(143,116,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.GET_ACCOUNTS'),(4,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(15,'android.permission.READ_CONTACTS'),(9,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(3,'android.permission.SYSTEM_ALERT_WINDOW'),(17,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(12,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(16,'rockchip.permission.FULL_SCREEN');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'http://market.android.com/details?id=com.ikezami.roboshooter',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=com.roidgame.spiderboy1',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=com.roidgame.SaveBirds',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=com.roidgame.unblocklego',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=com.roidgame.cuberunner',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=com.roidgame.sketchmet',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'file://',NULL,NULL,NULL),(43,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(45,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(48,NULL,NULL,'file://',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(50,NULL,NULL,'file://',NULL,NULL,NULL),(51,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(53,NULL,NULL,'file://',NULL,NULL,NULL),(54,NULL,NULL,'market://details?id=(.*)',NULL,NULL,NULL),(55,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,41,19),(2,85,43),(3,98,51);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,3,1),(16,3,5),(17,3,6),(18,3,7),(19,3,8),(20,4,1),(21,4,2),(22,4,4),(23,4,5),(24,4,6),(25,4,7),(26,4,9),(27,4,10),(28,4,11),(29,4,12),(30,4,13),(31,4,14),(32,5,1),(33,5,2),(34,5,4),(35,5,5),(36,5,6),(37,5,7),(38,5,8),(39,6,1),(40,5,12),(41,6,4),(42,5,13),(43,6,5),(44,5,15),(45,6,6),(46,6,7),(47,6,8),(48,7,17),(49,7,16),(50,7,1),(51,7,18),(52,7,5),(53,7,6),(54,7,7),(55,7,8),(56,7,9),(57,7,10),(58,7,14);
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

-- Dump completed on 2015-10-09  0:39:36
