-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_446
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (19,'.ImageTestActivity'),(12,'.Myhall'),(15,'.Web'),(4,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.DELETE'),(22,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(8,'android.intent.action.PACKAGE_REMOVED'),(17,'android.intent.action.SCREEN_OFF'),(23,'android.intent.action.SENDTO'),(2,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(5,'com.android.vending.INSTALL_REFERRER'),(20,'com.bfonjwq.lobu.dqcpeuoemwpdou.eavWgJJIQ'),(21,'com.flurry.android.ACTION_CATALOG'),(9,'com.llc.epepaed.jiig.nivo'),(10,'com.llc.epepaed.jiig.nivo(.*)'),(11,'com.photocontest.GameBootReceiver'),(18,'com.photocontest.ImageTestActivity'),(13,'com.photocontest.Myhall'),(14,'com.photocontest.Web');
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
INSERT INTO `Applications` VALUES (1,'ivc.bpsehin.obiwntop',10032),(2,'com.photocontest',10019),(3,'com.llc.epepaed.jiig.nivo',10027),(4,'com.bfonjwq.lobu.dqcpeuoemwpdou',10019),(5,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh',10037),(6,'com.rvcdb.fqudgaisqho',1),(7,'com.dlprmiqmbm.upkmf',10041);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(5,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'ivc.bpsehin.obiwntop.Survival'),(2,1,'ivc.bpsehin.obiwntop.MainMenu'),(3,1,'ivc.bpsehin.obiwntop.Help'),(4,1,'ivc.bpsehin.obiwntop.StageList'),(5,1,'ivc.bpsehin.obiwntop.Stage'),(6,1,'com.VfoUh.ujQQLoKHkeFa'),(7,1,'com.VfoUh.IQCLFEHFOSUMb'),(8,1,'com.VfoUh.nubFUsvB'),(9,1,'com.VfoUh.jcEFEUtvmEBl'),(10,1,'com.VfoUh.GHJklgGLsNQr'),(11,1,'com.VfoUh.CiBEpgWfr'),(12,1,'com.VfoUh.userPermissionReceiver'),(13,2,'com.photocontest.Myhall'),(14,2,'com.photocontest.Web'),(15,2,'com.photocontest.HomeActivity'),(16,2,'com.photocontest.SortActivity1'),(17,2,'com.photocontest.SortActivity2'),(18,2,'com.photocontest.SearchActivity'),(19,2,'com.photocontest.ManagerActivity'),(20,2,'com.photocontest.GameInfo'),(21,2,'com.photocontest.TableClass'),(22,2,'com.photocontest.GameAlertDialog'),(23,2,'com.photocontest.DevelopmentSettings'),(24,3,'com.llc.epepaed.jiig.nivo.MazeGameMain'),(25,2,'com.photocontest.qimg.ImageTestActivity'),(26,3,'com.llc.epepaed.jiig.nivo.AndroidMazeGame'),(27,3,'com.llc.epepaed.jiig.nivo.MazePreferences'),(28,2,'com.photocontest.qimg.ADactivity'),(29,3,'com.FKdvCjk.wDcdTEsV'),(30,2,'com.photocontest.GameService'),(31,3,'com.FKdvCjk.sIHKcQcwVjF'),(32,2,'com.photocontest.GameBootReceiver'),(33,3,'com.FKdvCjk.MyAppInfo'),(34,3,'com.FKdvCjk.UJiDnIFIJS'),(35,3,'com.FKdvCjk.HoVoqcapJR'),(36,3,'com.FKdvCjk.MyAppAlertDialog'),(37,3,'com.FKdvCjk.KdlOUSfDBLQK'),(38,3,'com.FKdvCjk.MyAppService'),(39,3,'com.FKdvCjk.BootReceiverService'),(40,4,'com.bfonjwq.lobu.dqcpeuoemwpdou.GameMain'),(41,4,'com.millennialmedia.android.MMAdViewOverlayActivity'),(42,4,'com.millennialmedia.android.VideoPlayer'),(43,4,'net.youmi.android.AdActivity'),(44,4,'com.google.ads.AdActivity'),(45,4,'com.guohead.sdk.GuoheAdActivity'),(46,4,'com.vpon.adon.android.WebInApp'),(47,4,'cn.domob.android.ads.DomobActivity'),(48,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(49,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(50,4,'com.baidu.AppActivity'),(51,4,'com.oRsle.JoBcWUfKeIVVlF'),(52,4,'com.oRsle.dUjwnGemOEpufGs'),(53,4,'com.oRsle.NPJDksuokhje'),(54,5,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.StartMenuActivity'),(55,4,'com.oRsle.cKTgpnILwpqCa'),(56,5,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.GameActivity'),(57,4,'com.oRsle.WCMmFLabNkGT'),(58,5,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.RankingActivity'),(59,5,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.HelpActivity'),(60,4,'com.oRsle.pqkwUksdwa'),(61,5,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.AboutActivity'),(62,4,'com.oRsle.ReAiUKlKVHp'),(63,5,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.OurProducts'),(64,4,'com.oRsle.sAQlbITCuD'),(65,5,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.StatsActivity'),(66,5,'com.admob.android.ads.AdMobActivity'),(67,5,'com.fboCnU.rmOpbJBlnCdg'),(68,4,'com.oRsle.eavWgJJIQ'),(69,5,'com.fboCnU.fPssjlnU'),(70,5,'com.fboCnU.OdQPUGkPEJvgUal'),(71,5,'com.fboCnU.mbwriEecLIQTii'),(72,5,'com.fboCnU.astfMtFaOBRT'),(73,6,'com.ggemulator.ggnes.RomManager'),(74,5,'com.admob.android.ads.analytics.InstallReceiver'),(75,6,'com.ggemulator.ggnes.GamePlayer'),(76,5,'com.fboCnU.MDVPJLIVPCm'),(77,5,'com.fboCnU.userPermissionReceiver'),(78,6,'com.ggemulator.ggnes.downloadApp'),(79,6,'com.ggemulator.ggnes.GamePreference'),(80,6,'com.ggemulator.ggnes.KeypadPreference'),(81,6,'com.ggemulator.ggnes.DefaultKeyPad'),(82,6,'com.ggemulator.ggnes.KeyBindingActivity'),(83,6,'com.ggemulator.ggnes.GameGenieActivity'),(84,6,'com.papaya.social.PPYSocialActivity'),(85,6,'com.papaya.social.PPYSocialFriendsActivity'),(86,6,'com.papaya.social.PPYSocialChatActivity'),(87,6,'com.papaya.social.PPYSocialAppsActivity'),(88,6,'com.papaya.social.PPYSocialCircleActivity'),(89,6,'com.papaya.social.PPYSocialMoreActivity'),(90,6,'com.papaya.base.EntryActivity'),(91,6,'com.papaya.web.WebActivity'),(92,6,'com.papaya.social.SocialRegistrationActivity'),(93,6,'com.papaya.chat.FriendsActivity'),(94,6,'com.papaya.chat.ChatActivity'),(95,6,'com.papaya.social.PPYSocialLocationActivity'),(96,6,'com.zong.android.engine.web.ZongWebView'),(97,6,'com.miagda.wvApWvICR'),(98,6,'com.nd.dianjin.activity.OfferAppActivity'),(99,6,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(100,7,'com.dlprmiqmbm.upkmf.Main'),(101,6,'com.papaya.social.PPYSocialContentProvider'),(102,7,'com.dlprmiqmbm.upkmf.editor.Editor'),(103,7,'com.openfeint.internal.ui.IntroFlow'),(104,7,'com.openfeint.api.ui.Dashboard'),(105,7,'com.openfeint.internal.ui.Settings'),(106,1,'com.VfoUh.ad'),(107,7,'com.openfeint.internal.ui.NativeBrowser'),(108,7,'com.admob.android.ads.AdMobActivity'),(109,7,'com.gfan.sdk.payment.PaymentsActivity'),(110,1,'ivc.bpsehin.obiwntop.StageList$ItemClickListener'),(111,7,'com.gfan.sdk.payment.PaymentsConfirmActivity'),(112,7,'com.gfan.sdk.account.RegisterActivity'),(113,7,'com.gfan.sdk.charge.ChargeActivity'),(114,7,'com.gfan.sdk.charge.ChargeTypeListActivity'),(115,7,'cn.yahoo.asxhl2007.uiframework.gfanpay.GfanPay'),(116,7,'com.waps.OffersWebView'),(117,7,'com.tJRSRT.MLWHlUQGBaEWDb'),(118,1,'com.VfoUh.o'),(119,7,'com.tJRSRT.GAjQGvOf'),(120,3,'com.FKdvCjk.by'),(121,2,'ae'),(122,7,'com.nd.dianjin.activity.OfferAppActivity'),(123,7,'com.beepstreet.ErrorReporterService'),(124,1,'ivc.bpsehin.obiwntop.MainMenu$1'),(125,7,'com.admob.android.ads.analytics.InstallReceiver'),(126,2,'ap'),(127,3,'com.FKdvCjk.ab'),(128,2,'h'),(129,2,'af'),(130,1,'com.VfoUh.ab'),(131,2,'bj'),(132,3,'com.FKdvCjk.bh'),(133,3,'com.FKdvCjk.bx'),(134,3,'com.FKdvCjk.ak'),(135,2,'j'),(136,3,'com.llc.epepaed.jiig.nivo.MazeGameMain$1'),(137,3,'com.FKdvCjk.ae'),(138,3,'com.FKdvCjk.aa'),(139,2,'cj'),(140,3,'com.llc.epepaed.jiig.nivo.MazeGameMain$2'),(141,2,'dx'),(142,2,'cq'),(143,3,'com.FKdvCjk.ah'),(144,2,'ar'),(145,2,'br'),(146,4,'com.oRsle.ac'),(147,4,'cn.domob.android.a.a$a'),(148,4,'com.oRsle.ab'),(149,5,'com.fboCnU.p'),(150,5,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.WinDialog'),(151,4,'com.oRsle.w'),(152,4,'com.oRsle.af'),(153,5,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.PauseDialog'),(154,4,'cn.domob.android.ads.e'),(155,4,'cn.domob.android.ads.o$5'),(156,5,'com.fboCnU.af'),(157,5,'net.youmi.android.v'),(158,4,'com.oRsle.v'),(159,4,'com.bfonjwq.lobu.dqcpeuoemwpdou.FTAADlg$1'),(160,4,'com.oRsle.bc'),(161,4,'com.oRsle.bp'),(162,5,'com.flurry.android.n'),(163,4,'com.oRsle.bm'),(164,5,'net.youmi.android.x'),(165,5,'net.youmi.android.W'),(166,5,'com.admob.android.ads.q'),(167,7,'com.waps.AppConnect'),(168,5,'net.youmi.android.w'),(169,7,'com.waps.AppTracker'),(170,5,'net.youmi.android.t'),(171,7,'cn.yahoo.asxhl2007.uiframework.gfanpay.GfanPay$1'),(172,4,'cn.domob.android.ads.DomobAdManager'),(173,5,'net.youmi.android.u'),(174,7,'com.openfeint.internal.ImagePicker'),(175,5,'com.fboCnU.ah'),(176,4,'cn.domob.android.ads.g$1'),(177,7,'com.nd.dianjin.DianJinPlatform'),(178,4,'cn.domob.android.ads.o'),(179,7,'com.waps.OffersWebView$DownloadFileTask');
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
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'apkSoftID'),(2,8,'iconURL'),(3,8,'detailFlag'),(4,8,'apkURL'),(5,8,'packageName'),(6,8,'apkTitle'),(7,8,'imageURL'),(8,10,'packageName'),(9,8,'apkSize'),(10,8,'apkInfo'),(11,11,'fileURL'),(12,5,'STAGE_ID'),(13,19,'filepath'),(14,19,'soft_id'),(15,37,'tt'),(16,19,'package_name'),(17,36,'ctt'),(18,20,'title'),(19,10,'fileURL'),(20,11,'fileName'),(21,22,'btn_txt'),(22,25,'service_channel'),(23,22,'url'),(24,6,'np_app_key'),(25,11,'np_app_key'),(26,8,'np_app_key'),(27,9,'np_app_key'),(28,7,'np_app_key'),(29,8,'apkVersion'),(30,22,'package_name'),(31,35,'isDirectFromTable'),(32,35,'from'),(33,33,''),(34,33,'(.*)'),(35,19,'completed'),(36,37,'au'),(37,19,'icon'),(38,29,'TEST_APP_ID'),(39,35,''),(40,35,'(.*)'),(41,26,''),(42,26,'(.*)'),(43,29,''),(44,29,'(.*)'),(45,24,''),(46,24,'(.*)'),(47,33,'fa'),(48,36,'ul'),(49,36,''),(50,36,'(.*)'),(51,19,'status'),(52,17,'nextclassid'),(53,19,'app_name'),(54,37,'ctt'),(55,33,'ft'),(56,31,'poptitle'),(57,17,'package_name'),(58,13,'nextclassid'),(59,20,'status'),(60,36,'tt'),(61,38,'TEST_APP_ID'),(62,22,'apk_url'),(63,13,'service_channel'),(64,18,'version_code'),(65,30,'service_channel'),(66,26,'si'),(67,29,'si'),(68,24,'si'),(69,33,'tt'),(70,33,'fp'),(71,19,'total'),(72,18,'status'),(73,19,'url'),(74,18,'package_name'),(75,22,'version_code'),(76,17,'status'),(77,37,'pn'),(78,33,'st'),(79,26,'TEST_APP_ID'),(80,31,'TEST_APP_ID'),(81,20,'game'),(82,24,'TEST_APP_ID'),(83,22,'content'),(84,20,'from_alert'),(85,20,'fromtype'),(86,31,'popurl'),(87,36,'bt'),(88,36,'ftb'),(89,14,'service_channel'),(90,20,'filepath'),(91,22,'title'),(92,20,'from_table'),(93,62,'content'),(94,53,'status'),(95,60,'package_name'),(96,60,'url'),(97,60,'version_code'),(98,51,'version_code'),(99,53,'from_table'),(100,60,'title'),(101,47,'appId'),(102,45,'link'),(103,50,'surl'),(104,53,'from_alert'),(105,53,'title'),(106,66,'a'),(107,66,'ru'),(108,56,'PLAYER_GREEN'),(109,53,'fromtype'),(110,57,'isDirectFromTable'),(111,57,'package_name'),(112,51,'NEW_APP_ID'),(113,70,'detailFlag'),(114,70,'apkVersion'),(115,66,'mi'),(116,66,'$'),(117,70,'packageName'),(118,62,'title'),(119,66,'su'),(120,66,'rd'),(121,66,'or'),(122,66,'tr'),(123,53,'filepath'),(124,66,'c'),(125,66,'s'),(126,66,'o'),(127,70,'apkSize'),(128,66,'sin'),(129,66,'u'),(130,66,'t'),(131,66,'sd'),(132,70,'imageURL'),(133,60,'content'),(134,76,'fileName'),(135,47,'appName'),(136,50,'clklogurl'),(137,52,'poptitle'),(138,52,'NEW_APP_ID'),(139,66,'oi'),(140,74,'referrer'),(141,64,'NEW_APP_ID'),(142,66,'skd'),(143,74,'(.*)'),(144,56,'PLAYER_YELLOW'),(145,58,'PLAYER_COLOUR_LIST'),(146,70,'apkTitle'),(147,66,'au'),(148,66,'sc'),(149,66,'cbo'),(150,66,'nosk'),(151,60,'btn_txt'),(152,76,'fileURL'),(153,71,'np_app_key'),(154,70,'np_app_key'),(155,69,'np_app_key'),(156,76,'np_app_key'),(157,67,'np_app_key'),(158,47,'actType'),(159,50,'curl'),(160,50,'limg'),(161,70,'apkInfo'),(162,66,'cs'),(163,53,'package_name'),(164,112,'error'),(165,114,'URL'),(166,114,'URL_PARAMS'),(167,106,'com.openfeint.internal.ui.NativeBrowser.argument.timeout'),(168,105,'screenName'),(169,104,'screenName'),(170,103,'screenName'),(171,105,'mCurrentUser'),(172,74,'ADMOB_PUBLISHER_ID'),(173,104,'mCurrentUser'),(174,74,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(175,103,'mCurrentUser'),(176,54,'ADMOB_PUBLISHER_ID'),(177,105,'mApproved'),(178,54,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(179,104,'mApproved'),(180,56,'ADMOB_PUBLISHER_ID'),(181,103,'mApproved'),(182,56,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(183,105,'mDeviceSessionCreated'),(184,66,'p'),(185,104,'mDeviceSessionCreated'),(186,56,'PLAYER_BLUE'),(187,103,'mDeviceSessionCreated'),(188,57,'DOMOB_ALLOW_LOCATION'),(189,105,'_of_cookie_(.*)value'),(190,62,'DOMOB_ALLOW_LOCATION'),(191,104,'_of_cookie_(.*)value'),(192,60,'DOMOB_ALLOW_LOCATION'),(193,103,'_of_cookie_(.*)value'),(194,55,'DOMOB_ALLOW_LOCATION'),(195,105,'_of_cookie_(.*)domain'),(196,64,'DOMOB_ALLOW_LOCATION'),(197,104,'_of_cookie_(.*)domain'),(198,53,'DOMOB_ALLOW_LOCATION'),(199,103,'_of_cookie_(.*)domain'),(200,51,'DOMOB_ALLOW_LOCATION'),(201,105,'com.openfeint.internal.ui.NativeBrowser.argument.failure_desc'),(202,50,'tit'),(203,66,'ap'),(204,111,'type'),(205,51,'soft_id'),(206,72,'fileURL'),(207,105,'mCreatingDeviceSession'),(208,56,'TAKE_OFF_NUM'),(209,104,'mCreatingDeviceSession'),(210,103,'mCreatingDeviceSession'),(211,114,'CLIENT_PACKAGE'),(212,56,'PLAYER_RED'),(213,66,'si'),(214,70,'apkURL'),(215,74,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(216,108,'gfan_pay_appkey'),(217,54,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(218,106,'com.openfeint.internal.ui.NativeBrowser.argument.src'),(219,56,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(220,115,'CLIENT_PACKAGE'),(221,57,'from'),(222,66,'ad'),(223,100,'CLIENT_PACKAGE'),(224,110,'CLIENT_PACKAGE'),(225,116,'CLIENT_PACKAGE'),(226,111,'CLIENT_PACKAGE'),(227,105,'content_name'),(228,104,'content_name'),(229,103,'content_name'),(230,72,'packageName'),(231,66,'msm'),(232,66,'json'),(233,66,'b'),(234,108,'key.password'),(235,105,'com.openfeint.internal.ui.NativeBrowser.argument.failed'),(236,108,'key.username'),(237,113,'number'),(238,115,'WAPS_PID'),(239,100,'WAPS_PID'),(240,110,'WAPS_PID'),(241,62,'apkurl'),(242,116,'WAPS_PID'),(243,60,'apk_url'),(244,111,'WAPS_PID'),(245,56,'DIFFICULTY'),(246,105,'mDeclined'),(247,104,'mDeclined'),(248,70,'apkSoftID'),(249,103,'mDeclined'),(250,57,'DOMOB_TEST_MODE'),(251,105,'mForceOffline'),(252,62,'DOMOB_TEST_MODE'),(253,104,'mForceOffline'),(254,60,'DOMOB_TEST_MODE'),(255,55,'DOMOB_TEST_MODE'),(256,103,'mForceOffline'),(257,64,'DOMOB_TEST_MODE'),(258,53,'DOMOB_TEST_MODE'),(259,51,'DOMOB_TEST_MODE'),(260,56,'CONTINUE_GAME'),(261,70,'iconURL'),(262,66,'int'),(263,115,'DEVICE_ID'),(264,100,'DEVICE_ID'),(265,110,'DEVICE_ID'),(266,116,'DEVICE_ID'),(267,111,'DEVICE_ID'),(268,114,'USER_ID'),(269,115,'APP_ID'),(270,100,'APP_ID'),(271,110,'APP_ID'),(272,116,'APP_ID'),(273,111,'APP_ID'),(274,60,'fromtable'),(275,66,'sku'),(276,108,'com.mappn.sdk.paymentinfo'),(277,105,'_of_cookie_(.*)expiry'),(278,53,'game'),(279,104,'_of_cookie_(.*)expiry'),(280,57,'DOMOB_PID'),(281,103,'_of_cookie_(.*)expiry'),(282,62,'DOMOB_PID'),(283,60,'DOMOB_PID'),(284,55,'DOMOB_PID'),(285,64,'DOMOB_PID'),(286,105,'mBanned'),(287,53,'DOMOB_PID'),(288,104,'mBanned'),(289,51,'DOMOB_PID'),(290,103,'mBanned'),(291,62,'packagename'),(292,105,'_of_cookie_(.*)path'),(293,104,'_of_cookie_(.*)path'),(294,103,'_of_cookie_(.*)path'),(295,105,'mCurrentlyLoggingIn'),(296,104,'mCurrentlyLoggingIn'),(297,103,'mCurrentlyLoggingIn'),(298,52,'popurl'),(299,111,'com.mappn.sdk.paymentinfo'),(300,109,'com.mappn.sdk.paymentinfo'),(301,113,'orderId'),(302,115,'WAPS_ID'),(303,100,'WAPS_ID'),(304,110,'WAPS_ID'),(305,116,'WAPS_ID'),(306,111,'WAPS_ID'),(307,40,'GH_APPKEY'),(308,105,'com.openfeint.internal.ui.NativeBrowser.argument.result'),(309,114,'isFinshClose');
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'r',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'s',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'s',1,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'s',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'a',1,NULL,NULL),(74,74,'r',1,NULL,NULL),(75,75,'a',1,NULL,NULL),(76,76,'r',0,NULL,NULL),(77,77,'r',1,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',1,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'r',1,NULL,NULL),(100,100,'a',1,NULL,NULL),(101,101,'p',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'a',0,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,107,'a',0,NULL,NULL),(107,108,'a',0,NULL,NULL),(108,109,'a',0,NULL,NULL),(109,111,'a',0,NULL,NULL),(110,112,'a',0,NULL,NULL),(111,113,'a',0,NULL,NULL),(112,114,'a',0,NULL,NULL),(113,115,'a',0,NULL,NULL),(114,116,'a',0,NULL,NULL),(115,117,'a',0,NULL,NULL),(116,119,'a',1,NULL,NULL),(117,122,'a',0,NULL,NULL),(118,123,'s',0,NULL,NULL),(119,125,'r',1,NULL,NULL),(120,134,'r',1,NULL,NULL),(121,143,'r',1,NULL,NULL),(122,154,'r',1,NULL,NULL),(123,161,'r',1,NULL,NULL),(124,163,'r',1,NULL,NULL),(125,169,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,2),(3,3,11),(4,4,7),(5,5,10),(6,6,7),(7,7,6),(8,8,12),(9,9,4),(10,10,7),(11,11,8),(12,11,7),(13,12,26),(14,12,24),(15,12,29),(16,13,17),(17,14,2),(18,15,28),(19,16,7),(20,16,8),(21,17,39),(22,18,21),(23,19,8),(24,20,33),(25,20,24),(26,20,26),(27,21,13),(28,22,17),(29,23,7),(30,24,6),(31,26,32),(32,25,29),(33,27,6),(34,28,20),(35,29,37),(36,29,26),(37,29,24),(38,30,7),(39,31,33),(40,32,29),(41,32,24),(42,32,26),(43,33,32),(44,34,13),(45,35,36),(46,35,24),(47,35,26),(48,36,33),(49,37,14),(50,38,39),(51,39,14),(52,40,17),(53,41,18),(54,42,24),(55,42,29),(56,42,26),(57,43,20),(58,44,34),(59,45,17),(60,46,20),(61,47,29),(62,48,13),(63,49,33),(64,50,26),(65,50,24),(66,51,21),(67,52,26),(68,52,24),(69,52,33),(70,53,15),(71,54,15),(72,55,13),(73,56,39),(74,57,28),(75,58,31),(76,59,32),(77,60,34),(78,60,26),(79,60,24),(80,60,35),(81,60,36),(82,61,13),(83,62,24),(84,62,26),(85,63,19),(86,64,26),(87,64,24),(88,64,36),(89,64,35),(90,64,34),(91,65,22),(92,66,22),(93,67,37),(94,68,33),(95,68,24),(96,68,26),(97,69,19),(98,70,19),(99,71,13),(100,72,24),(101,72,26),(102,73,20),(103,74,26),(104,74,24),(105,74,33),(106,75,18),(107,76,15),(108,77,34),(109,78,13),(110,79,15),(111,80,33),(112,80,26),(113,80,24),(114,81,17),(115,82,25),(116,83,25),(117,84,33),(118,84,24),(119,84,26),(120,85,22),(121,85,21),(122,86,17),(123,87,36),(124,87,24),(125,87,26),(126,88,24),(127,88,26),(128,89,20),(129,90,21),(130,90,22),(131,91,22),(132,92,28),(133,93,14),(134,94,25),(135,95,15),(136,96,22),(137,97,15),(138,98,55),(139,98,60),(140,98,57),(141,99,53),(142,100,53),(143,101,55),(144,101,53),(145,101,57),(146,101,62),(147,101,60),(148,101,51),(149,101,64),(150,102,53),(151,103,53),(152,104,69),(153,104,54),(154,105,54),(155,105,69),(156,106,55),(157,107,70),(158,107,69),(159,108,55),(160,109,69),(161,110,69),(162,111,51),(163,112,76),(164,113,53),(165,114,53),(166,115,58),(167,115,69),(168,116,67),(169,117,53),(170,118,69),(171,119,67),(172,120,69),(173,120,54),(174,121,68),(175,122,70),(176,123,51),(177,123,53),(178,123,55),(179,123,57),(180,123,64),(181,124,67),(182,125,63),(183,125,56),(184,125,69),(185,125,54),(186,126,69),(187,126,54),(188,127,51),(189,128,40),(190,129,67),(191,130,69),(192,131,51),(193,132,54),(194,132,69),(195,133,69),(196,134,60),(197,135,69),(198,135,63),(199,135,54),(200,135,56),(201,136,108),(202,137,53),(203,138,63),(204,138,56),(205,138,69),(206,138,54),(207,139,72),(208,140,68),(209,141,69),(210,142,100),(211,142,116),(212,142,115),(213,142,110),(214,142,111),(215,143,53),(216,144,69),(217,145,51),(218,146,55),(219,146,57),(220,146,60),(221,147,56),(222,147,54),(223,147,69),(224,147,63),(225,148,116),(226,149,69),(227,150,69),(228,151,60),(229,152,70),(230,152,69),(231,153,115),(232,154,60),(233,155,63),(234,155,56),(235,155,69),(236,155,54),(237,156,113),(238,157,51),(239,157,55),(240,157,53),(241,157,64),(242,157,62),(243,157,57),(244,157,60),(245,158,58),(246,158,69),(247,159,62),(248,160,63),(249,160,69),(250,161,62),(251,162,116),(252,162,115),(253,162,100),(254,162,111),(255,162,109),(256,162,110),(257,163,68),(258,164,54),(259,164,69),(260,164,56),(261,164,63),(262,165,103),(263,165,105),(264,166,77),(265,167,57),(266,167,55),(267,167,60),(268,167,64),(269,167,62),(270,167,53),(271,167,51),(272,168,51),(273,169,108),(274,170,60),(275,171,111),(276,172,52),(277,173,116),(278,174,64),(279,174,62),(280,174,51),(281,174,55),(282,174,53),(283,174,60),(284,174,57),(285,175,112),(286,176,100),(287,176,109),(288,176,111),(289,176,110),(290,176,115),(291,176,116),(292,177,114);
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
INSERT INTO `ExitPoints` VALUES (1,6,'<com.VfoUh.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',25,'a',0),(2,2,'<ivc.bpsehin.obiwntop.MainMenu: void showHelpInfo()>',4,'a',NULL),(3,11,'<com.VfoUh.CiBEpgWfr: void a(android.content.Context)>',76,'a',NULL),(4,7,'<com.VfoUh.IQCLFEHFOSUMb: void a()>',3,'a',NULL),(5,10,'<com.VfoUh.GHJklgGLsNQr: void a(java.lang.String)>',10,'a',NULL),(6,7,'<com.VfoUh.IQCLFEHFOSUMb: void b()>',50,'a',NULL),(7,6,'<com.VfoUh.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',15,'a',NULL),(8,106,'<com.VfoUh.ad: void run()>',25,'s',NULL),(9,110,'<ivc.bpsehin.obiwntop.StageList$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(10,7,'<com.VfoUh.IQCLFEHFOSUMb: void a(boolean)>',15,'a',NULL),(11,118,'<com.VfoUh.o: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(12,120,'<com.FKdvCjk.by: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(13,121,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(14,124,'<ivc.bpsehin.obiwntop.MainMenu$1: void onAnimationEnd(android.view.animation.Animation)>',11,'a',NULL),(15,126,'<ap: void onClick(android.view.View)>',6,'a',NULL),(16,8,'<com.VfoUh.nubFUsvB: void a(com.VfoUh.nubFUsvB,android.content.Context,java.lang.String)>',5,'a',NULL),(17,39,'<com.FKdvCjk.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',64,'s',NULL),(18,21,'<com.photocontest.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(19,8,'<com.VfoUh.nubFUsvB: void onCreate(android.os.Bundle)>',74,'a',NULL),(20,127,'<com.FKdvCjk.ab: void onClick(android.view.View)>',185,'a',NULL),(21,128,'<h: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(22,129,'<af: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(23,7,'<com.VfoUh.IQCLFEHFOSUMb: void b()>',43,'a',NULL),(24,130,'<com.VfoUh.ab: void run()>',8,'s',NULL),(25,29,'<com.FKdvCjk.wDcdTEsV: void onCreate(android.os.Bundle)>',57,'s',NULL),(26,32,'<com.photocontest.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(27,6,'<com.VfoUh.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',30,'a',NULL),(28,131,'<bj: void onClick(android.view.View)>',239,'a',NULL),(29,37,'<com.FKdvCjk.KdlOUSfDBLQK: void onClick(android.view.View)>',26,'a',NULL),(30,7,'<com.VfoUh.IQCLFEHFOSUMb: void a(boolean)>',5,'a',NULL),(31,33,'<com.FKdvCjk.MyAppInfo: void onCreate(android.os.Bundle)>',44,'s',NULL),(32,132,'<com.FKdvCjk.bh: void onClick(android.view.View)>',101,'a',NULL),(33,32,'<com.photocontest.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(34,13,'<com.photocontest.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(35,36,'<com.FKdvCjk.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(36,33,'<com.FKdvCjk.MyAppInfo: void onCreate(android.os.Bundle)>',11,'a',NULL),(37,14,'<com.photocontest.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(38,39,'<com.FKdvCjk.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',37,'s',NULL),(39,14,'<com.photocontest.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(40,17,'<com.photocontest.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(41,18,'<com.photocontest.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(42,133,'<com.FKdvCjk.bx: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(43,20,'<com.photocontest.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(44,34,'<com.FKdvCjk.UJiDnIFIJS: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(45,17,'<com.photocontest.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(46,131,'<bj: void onClick(android.view.View)>',218,'a',NULL),(47,29,'<com.FKdvCjk.wDcdTEsV: void onCreate(android.os.Bundle)>',61,'s',NULL),(48,135,'<j: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(49,33,'<com.FKdvCjk.MyAppInfo: void onCreate(android.os.Bundle)>',94,'s',NULL),(50,136,'<com.llc.epepaed.jiig.nivo.MazeGameMain$1: void onClick(android.view.View)>',8,'a',NULL),(51,21,'<com.photocontest.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(52,137,'<com.FKdvCjk.ae: void onClick(android.view.View)>',182,'a',NULL),(53,15,'<com.photocontest.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(54,15,'<com.photocontest.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(55,135,'<j: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(56,39,'<com.FKdvCjk.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(57,28,'<com.photocontest.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(58,31,'<com.FKdvCjk.sIHKcQcwVjF: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(59,32,'<com.photocontest.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(60,35,'<com.FKdvCjk.HoVoqcapJR: void a(int,boolean)>',10,'s',NULL),(61,13,'<com.photocontest.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(62,29,'<com.FKdvCjk.wDcdTEsV: void a()>',7,'a',NULL),(63,19,'<com.photocontest.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(64,35,'<com.FKdvCjk.HoVoqcapJR: void a(int,boolean)>',42,'a',NULL),(65,22,'<com.photocontest.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(66,22,'<com.photocontest.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(67,37,'<com.FKdvCjk.KdlOUSfDBLQK: void onCreate(android.os.Bundle)>',13,'s',NULL),(68,138,'<com.FKdvCjk.aa: void onClick(android.view.View)>',182,'a',NULL),(69,139,'<cj: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(70,139,'<cj: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(71,135,'<j: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(72,140,'<com.llc.epepaed.jiig.nivo.MazeGameMain$2: void onClick(android.view.View)>',7,'a',NULL),(73,20,'<com.photocontest.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(74,137,'<com.FKdvCjk.ae: void onClick(android.view.View)>',197,'a',NULL),(75,18,'<com.photocontest.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(76,141,'<dx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(77,34,'<com.FKdvCjk.UJiDnIFIJS: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(78,135,'<j: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(79,141,'<dx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(80,127,'<com.FKdvCjk.ab: void onClick(android.view.View)>',200,'a',NULL),(81,121,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(82,142,'<cq: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(83,25,'<com.photocontest.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(84,138,'<com.FKdvCjk.aa: void onClick(android.view.View)>',197,'a',NULL),(85,144,'<ar: void a(int,boolean)>',10,'s',NULL),(86,121,'<ae: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(87,36,'<com.FKdvCjk.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(88,29,'<com.FKdvCjk.wDcdTEsV: void a()>',54,'a',NULL),(89,20,'<com.photocontest.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(90,144,'<ar: void a(int,boolean)>',57,'a',NULL),(91,22,'<com.photocontest.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(92,28,'<com.photocontest.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(93,145,'<br: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(94,25,'<com.photocontest.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(95,141,'<dx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(96,22,'<com.photocontest.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(97,15,'<com.photocontest.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(98,57,'<com.oRsle.WCMmFLabNkGT: void a(int,boolean)>',10,'s',NULL),(99,53,'<com.oRsle.NPJDksuokhje: void onCreate(android.os.Bundle)>',41,'s',NULL),(100,146,'<com.oRsle.ac: void onClick(android.view.View)>',184,'a',NULL),(101,147,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(102,148,'<com.oRsle.ab: void onClick(android.view.View)>',181,'a',NULL),(103,148,'<com.oRsle.ab: void onClick(android.view.View)>',196,'a',NULL),(104,54,'<com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.StartMenuActivity: void continueGame()>',4,'a',NULL),(105,54,'<com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.StartMenuActivity: void startAboutActivity()>',3,'a',NULL),(106,55,'<com.oRsle.cKTgpnILwpqCa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(107,149,'<com.fboCnU.p: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(108,55,'<com.oRsle.cKTgpnILwpqCa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(109,69,'<com.fboCnU.fPssjlnU: void b()>',55,'a',NULL),(110,150,'<com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.WinDialog: void gotoStartScreen()>',5,'a',NULL),(111,151,'<com.oRsle.w: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(112,76,'<com.fboCnU.MDVPJLIVPCm: void c(android.content.Context)>',74,'a',NULL),(113,152,'<com.oRsle.af: void onClick(android.view.View)>',181,'a',NULL),(114,53,'<com.oRsle.NPJDksuokhje: void onCreate(android.os.Bundle)>',10,'a',NULL),(115,58,'<com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.RankingActivity: void exitRanking()>',9,'a',NULL),(116,67,'<com.fboCnU.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',36,'a',NULL),(117,152,'<com.oRsle.af: void onClick(android.view.View)>',196,'a',NULL),(118,153,'<com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.PauseDialog: void startHelpActivity()>',5,'a',NULL),(119,67,'<com.fboCnU.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',21,'a',NULL),(120,54,'<com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.StartMenuActivity: void startHelpActivity()>',3,'a',NULL),(121,68,'<com.oRsle.eavWgJJIQ: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(122,70,'<com.fboCnU.OdQPUGkPEJvgUal: void onCreate(android.os.Bundle)>',67,'a',NULL),(123,155,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(124,156,'<com.fboCnU.af: void run()>',8,'s',NULL),(125,157,'<net.youmi.android.v: void onClick(android.view.View)>',33,'a',NULL),(126,54,'<com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.StartMenuActivity: void startGame()>',29,'a',NULL),(127,158,'<com.oRsle.v: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(128,159,'<com.bfonjwq.lobu.dqcpeuoemwpdou.FTAADlg$1: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(129,67,'<com.fboCnU.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',31,'a',0),(130,69,'<com.fboCnU.fPssjlnU: void b()>',45,'a',NULL),(131,160,'<com.oRsle.bc: void onClick(android.view.View)>',105,'a',NULL),(132,54,'<com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.StartMenuActivity: void startStatsActivity()>',3,'a',NULL),(133,162,'<com.flurry.android.n: void b(android.content.Context,com.flurry.android.y,java.lang.String)>',10,'a',NULL),(134,60,'<com.oRsle.pqkwUksdwa: void onClick(android.view.View)>',79,'a',NULL),(135,164,'<net.youmi.android.x: void onClick(android.view.View)>',13,'a',NULL),(136,109,'<com.gfan.sdk.payment.PaymentsActivity: void startPayActivity(int)>',11,'a',NULL),(137,146,'<com.oRsle.ac: void onClick(android.view.View)>',199,'a',NULL),(138,165,'<net.youmi.android.W: void onClick(android.view.View)>',25,'a',NULL),(139,72,'<com.fboCnU.astfMtFaOBRT: void a(java.lang.String)>',10,'a',NULL),(140,68,'<com.oRsle.eavWgJJIQ: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(141,166,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(142,167,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',10,'a',NULL),(143,53,'<com.oRsle.NPJDksuokhje: void onCreate(android.os.Bundle)>',91,'s',NULL),(144,69,'<com.fboCnU.fPssjlnU: void onBackPressed()>',5,'a',NULL),(145,51,'<com.oRsle.JoBcWUfKeIVVlF: void onCreate(android.os.Bundle)>',61,'s',NULL),(146,57,'<com.oRsle.WCMmFLabNkGT: void a(int,boolean)>',42,'a',NULL),(147,168,'<net.youmi.android.w: void onClick(android.view.View)>',7,'a',NULL),(148,119,'<com.tJRSRT.GAjQGvOf: void a()>',3,'a',NULL),(149,153,'<com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.PauseDialog: void gotoStartScreen()>',5,'a',NULL),(150,69,'<com.fboCnU.fPssjlnU: void a()>',3,'a',NULL),(151,60,'<com.oRsle.pqkwUksdwa: void onClick(android.view.View)>',61,'a',NULL),(152,70,'<com.fboCnU.OdQPUGkPEJvgUal: void a(com.fboCnU.OdQPUGkPEJvgUal,android.content.Context,java.lang.String)>',5,'a',NULL),(153,117,'<com.tJRSRT.MLWHlUQGBaEWDb: void b()>',3,'a',NULL),(154,60,'<com.oRsle.pqkwUksdwa: void onClick(android.view.View)>',70,'a',NULL),(155,170,'<net.youmi.android.t: void onClick(android.view.View)>',11,'a',NULL),(156,171,'<cn.yahoo.asxhl2007.uiframework.gfanpay.GfanPay$1: void onClick(android.view.View)>',19,'a',NULL),(157,172,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(158,58,'<com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.RankingActivity: void exitRanking()>',13,'a',NULL),(159,62,'<com.oRsle.ReAiUKlKVHp: void onClick(android.view.View)>',26,'a',NULL),(160,63,'<com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh.OurProducts: void visitMarket()>',5,'a',NULL),(161,62,'<com.oRsle.ReAiUKlKVHp: void onCreate(android.os.Bundle)>',13,'s',NULL),(162,111,'<com.gfan.sdk.payment.PaymentsConfirmActivity: void startChargeActivity()>',9,'a',NULL),(163,68,'<com.oRsle.eavWgJJIQ: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(164,173,'<net.youmi.android.u: void onClick(android.view.View)>',13,'a',NULL),(165,174,'<com.openfeint.internal.ImagePicker: android.graphics.Bitmap onImagePickerActivityResult(android.app.Activity,int,int,android.content.Intent)>',10,'p',0),(166,175,'<com.fboCnU.ah: void run()>',25,'s',NULL),(167,176,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(168,51,'<com.oRsle.JoBcWUfKeIVVlF: void onCreate(android.os.Bundle)>',65,'s',NULL),(169,109,'<com.gfan.sdk.payment.PaymentsActivity: void onClick(android.view.View)>',8,'a',NULL),(170,60,'<com.oRsle.pqkwUksdwa: void onClick(android.view.View)>',48,'a',NULL),(171,113,'<com.gfan.sdk.charge.ChargeActivity: void startChargeTypeListActivity(boolean)>',11,'a',0),(172,52,'<com.oRsle.dUjwnGemOEpufGs: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(173,177,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(174,178,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(175,114,'<com.gfan.sdk.charge.ChargeTypeListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',14,'a',NULL),(176,111,'<com.gfan.sdk.payment.PaymentsConfirmActivity: void startChargeActivity()>',18,'a',NULL),(177,179,'<com.waps.OffersWebView$DownloadFileTask: java.lang.String doInBackground(java.lang.String[])>',65,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,6),(2,10,6),(3,12,6),(4,15,1),(5,16,9),(6,17,1),(7,18,1),(8,20,1),(9,19,10),(10,21,1),(11,22,6),(12,23,1),(13,24,6),(14,25,6),(15,26,6),(16,29,6),(17,34,1),(18,35,1),(19,37,1),(20,38,1),(21,40,1),(22,42,11),(23,44,12),(24,45,13),(25,46,1),(26,47,14),(27,48,1),(28,49,15),(29,50,9),(30,52,10),(31,60,6),(32,62,6),(33,68,6),(34,69,6),(35,70,6),(36,71,6),(37,73,6),(38,78,11),(39,83,1),(40,84,6),(41,85,1),(42,86,6),(43,87,1),(44,88,1),(45,91,6),(46,92,1),(47,93,6),(48,94,1),(49,95,6),(50,96,16),(51,97,6),(52,101,1),(53,102,1),(54,104,1),(55,106,1),(56,107,1),(57,109,1),(58,111,1),(59,112,1),(60,114,1),(61,115,1),(62,116,6),(63,117,1),(64,118,18),(65,119,1),(66,120,19),(67,121,1),(68,122,1),(69,125,6),(70,126,6),(71,130,3),(72,131,6),(73,132,6),(74,134,6),(75,139,6),(76,140,6),(77,141,6),(78,142,6),(79,143,1),(80,144,1),(81,146,1),(82,147,1),(83,150,6),(84,151,1),(85,153,1),(86,157,6),(87,158,6),(88,159,1),(89,161,1),(90,163,1),(91,164,1),(92,166,1),(93,168,1),(94,170,20),(95,171,1),(96,172,1),(97,173,6),(98,176,6),(99,177,6),(100,178,6),(101,180,6),(102,181,6),(103,184,6),(104,188,21),(105,189,21),(106,191,6),(107,193,1),(108,194,6),(109,195,1),(110,196,6),(111,197,1),(112,198,1),(113,199,6),(114,205,1),(115,206,6),(116,207,1),(117,209,1),(118,211,1),(119,213,6),(120,214,1),(121,215,6),(122,217,1),(123,218,3),(124,219,22),(125,222,1),(126,223,6),(127,225,6),(128,227,20),(129,228,23),(130,235,6),(131,238,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,15,1),(2,17,4),(3,18,1),(4,20,4),(5,21,1),(6,23,4),(7,34,1),(8,35,5),(9,37,4),(10,38,1),(11,40,4),(12,46,1),(13,48,4),(14,83,1),(15,85,4),(16,87,1),(17,88,4),(18,92,1),(19,94,4),(20,101,1),(21,102,4),(22,104,1),(23,106,4),(24,107,1),(25,109,4),(26,111,1),(27,112,4),(28,114,1),(29,115,4),(30,117,1),(31,119,4),(32,121,1),(33,122,4),(34,143,1),(35,144,4),(36,146,1),(37,147,4),(38,151,1),(39,153,4),(40,159,1),(41,161,4),(42,163,1),(43,164,4),(44,166,1),(45,168,4),(46,171,1),(47,172,4),(48,188,2),(49,189,2),(50,193,1),(51,195,4),(52,197,1),(53,198,4),(54,205,1),(55,207,4),(56,209,1),(57,211,4),(58,214,1),(59,217,4),(60,222,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'ivc/bpsehin/obiwntop/Help'),(2,2,'com/VfoUh/nubFUsvB'),(3,3,'ivc/bpsehin/obiwntop/Survival'),(4,5,'ivc/bpsehin/obiwntop/Survival'),(5,6,'com/VfoUh/IQCLFEHFOSUMb'),(6,7,'com/VfoUh/jcEFEUtvmEBl'),(7,8,'ivc/bpsehin/obiwntop/Stage'),(8,9,'ivc/bpsehin/obiwntop/Survival'),(9,11,'com/llc/epepaed/jiig/nivo/MazeGameMain'),(10,13,'ivc/bpsehin/obiwntop/StageList'),(11,14,'com/photocontest/qimg/ImageTestActivity'),(12,16,'com/FKdvCjk/MyAppService'),(13,19,'com/FKdvCjk/MyAppService'),(14,28,'ivc/bpsehin/obiwntop/Survival'),(15,27,'com/photocontest/Myhall'),(16,30,'com/VfoUh/jcEFEUtvmEBl'),(17,31,'com/photocontest/GameService'),(18,32,'com/FKdvCjk/MyAppService'),(19,33,'com/VfoUh/IQCLFEHFOSUMb'),(20,36,'ivc/bpsehin/obiwntop/Survival'),(21,39,'com/FKdvCjk/MyAppService'),(22,41,'com/FKdvCjk/sIHKcQcwVjF'),(23,42,'com/photocontest/GameService'),(24,44,'com/photocontest/GameService'),(25,43,'com/FKdvCjk/MyAppInfo'),(26,45,'com/photocontest/GameService'),(27,47,'com/photocontest/GameService'),(28,49,'com/photocontest/GameService'),(29,50,'com/FKdvCjk/MyAppService'),(30,51,'com/photocontest/GameService'),(31,52,'com/FKdvCjk/MyAppService'),(32,53,'com/photocontest/GameInfo'),(33,54,'com/photocontest/GameInfo'),(34,55,'com/llc/epepaed/jiig/nivo/MazeGameMain'),(35,56,'com/photocontest/GameService'),(36,57,'com/FKdvCjk/MyAppInfo'),(37,58,'com/photocontest/GameService'),(38,59,'com/FKdvCjk/MyAppInfo'),(39,61,'com/FKdvCjk/MyAppInfo'),(40,63,'com/FKdvCjk/MyAppService'),(41,64,'com/photocontest/Myhall'),(42,65,'com/FKdvCjk/MyAppService'),(43,66,'com/llc/epepaed/jiig/nivo/AndroidMazeGame'),(44,67,'com/photocontest/GameInfo'),(45,72,'com/photocontest/Myhall'),(46,74,'com/photocontest/Myhall'),(47,75,'com/FKdvCjk/MyAppService'),(48,77,'com/llc/epepaed/jiig/nivo/MazeGameMain'),(49,76,'com/photocontest/GameInfo'),(50,78,'com/photocontest/GameService'),(51,79,'com/FKdvCjk/MyAppService'),(52,80,'com/photocontest/GameService'),(53,81,'com/llc/epepaed/jiig/nivo/MazeGameMain'),(54,82,'com/photocontest/GameService'),(55,90,'com/FKdvCjk/MyAppService'),(56,89,'com/photocontest/GameInfo'),(57,98,'com/photocontest/Myhall'),(58,99,'com/llc/epepaed/jiig/nivo/MazePreferences'),(59,100,'com/photocontest/Myhall'),(60,103,'com/photocontest/GameService'),(61,105,'com/photocontest/Myhall'),(62,108,'com/photocontest/Myhall'),(63,110,'com/photocontest/GameInfo'),(64,113,'com/photocontest/Myhall'),(65,118,'com/photocontest/GameService'),(66,120,'com/photocontest/GameService'),(67,123,'com/photocontest/GameService'),(68,124,'com/photocontest/GameInfo'),(69,128,'com/photocontest/Myhall'),(70,127,'com/FKdvCjk/sIHKcQcwVjF'),(71,129,'com/photocontest/qimg/ImageTestActivity'),(72,133,'com/photocontest/GameService'),(73,135,'com/photocontest/GameAlertDialog'),(74,136,'com/photocontest/GameInfo'),(75,137,'com/oRsle/sAQlbITCuD'),(76,138,'com/oRsle/sAQlbITCuD'),(77,145,'com/ebuguan/owfprur/gomklbbfs_dwdou_igkvre_gknh/GameActivity'),(78,148,'com/ebuguan/owfprur/gomklbbfs_dwdou_igkvre_gknh/AboutActivity'),(79,149,'com/oRsle/NPJDksuokhje'),(80,152,'com/ebuguan/owfprur/gomklbbfs_dwdou_igkvre_gknh/StartMenuActivity'),(81,154,'com/ebuguan/owfprur/gomklbbfs_dwdou_igkvre_gknh/StartMenuActivity'),(82,155,'com/bfonjwq/lobu/dqcpeuoemwpdou/GameMain'),(83,156,'com/fboCnU/OdQPUGkPEJvgUal'),(84,160,'com/ebuguan/owfprur/gomklbbfs_dwdou_igkvre_gknh/OurProducts'),(85,162,'com/fboCnU/fPssjlnU'),(86,165,'com/ebuguan/owfprur/gomklbbfs_dwdou_igkvre_gknh/HelpActivity'),(87,167,'com/fboCnU/fPssjlnU'),(88,169,'com/ebuguan/owfprur/gomklbbfs_dwdou_igkvre_gknh/HelpActivity'),(89,170,'com/oRsle/sAQlbITCuD'),(90,174,'com/fboCnU/mbwriEecLIQTii'),(91,179,'com/ebuguan/owfprur/gomklbbfs_dwdou_igkvre_gknh/GameActivity'),(92,183,'com/bfonjwq/lobu/dqcpeuoemwpdou/GameMain'),(93,185,'com/ebuguan/owfprur/gomklbbfs_dwdou_igkvre_gknh/StartMenuActivity'),(94,186,'com/oRsle/dUjwnGemOEpufGs'),(95,187,'com/ebuguan/owfprur/gomklbbfs_dwdou_igkvre_gknh/StatsActivity'),(96,190,'com/oRsle/pqkwUksdwa'),(97,192,'com/gfan/sdk/payment/PaymentsConfirmActivity'),(98,200,'com/oRsle/sAQlbITCuD'),(99,202,'com/oRsle/sAQlbITCuD'),(100,203,'com/ebuguan/owfprur/gomklbbfs_dwdou_igkvre_gknh/StartMenuActivity'),(101,201,'com/waps/OffersWebView'),(102,204,'com/oRsle/sAQlbITCuD'),(103,208,'com/dlprmiqmbm/upkmf/Main'),(104,210,'com/ebuguan/owfprur/gomklbbfs_dwdou_igkvre_gknh/StartMenuActivity'),(105,212,'com/ebuguan/owfprur/gomklbbfs_dwdou_igkvre_gknh/StartMenuActivity'),(106,216,'com/dlprmiqmbm/upkmf/Main'),(107,220,'com/gfan/sdk/payment/PaymentsActivity'),(108,221,'com/ebuguan/owfprur/gomklbbfs_dwdou_igkvre_gknh/StartMenuActivity'),(109,224,'com/oRsle/sAQlbITCuD'),(110,226,'com/gfan/sdk/charge/ChargeTypeListActivity'),(111,227,'com/oRsle/sAQlbITCuD'),(112,229,'com/fboCnU/mbwriEecLIQTii'),(113,230,'com/oRsle/sAQlbITCuD'),(114,231,'com/gfan/sdk/account/RegisterActivity'),(115,232,'com/oRsle/NPJDksuokhje'),(116,233,'com/bfonjwq/lobu/dqcpeuoemwpdou/GameMain'),(117,234,'com/nd/dianjin/activity/OfferAppActivity'),(118,236,'com/gfan/sdk/charge/ChargeActivity'),(119,237,'com/gfan/sdk/charge/ChargeActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,10,2),(3,12,3),(4,22,4),(5,24,6),(6,25,5),(7,26,7),(8,29,8),(9,60,9),(10,62,10),(11,68,11),(12,69,12),(13,70,13),(14,71,14),(15,73,15),(16,84,16),(17,86,17),(18,91,18),(19,93,19),(20,95,20),(21,96,21),(22,97,22),(23,116,23),(24,125,24),(25,126,25),(26,131,26),(27,132,27),(28,134,28),(29,139,29),(30,140,30),(31,141,32),(32,142,33),(33,150,34),(34,157,35),(35,158,36),(36,173,37),(37,176,38),(38,177,39),(39,178,40),(40,180,41),(41,181,42),(42,184,43),(43,191,44),(44,194,45),(45,196,46),(46,199,47),(47,206,48),(48,213,49),(49,215,50),(50,219,51),(51,223,53),(52,225,54),(53,228,55),(54,235,56),(55,238,57);
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
INSERT INTO `IExtras` VALUES (1,2,'apkVersion'),(2,2,'apkURL'),(3,2,'apkInfo'),(4,2,'packageName'),(5,2,'apkSoftID'),(6,2,'apkTitle'),(7,2,'iconURL'),(8,2,'apkSize'),(9,2,'imageURL'),(10,8,'STAGE_ID'),(11,27,'title'),(12,27,'nextclassid'),(13,27,'clicked'),(14,41,'popurl'),(15,41,'poptitle'),(16,43,'id'),(17,43,'df'),(18,43,'fa'),(19,53,'title'),(20,53,'game'),(21,53,'fromtype'),(22,54,'game'),(23,54,'fromtype'),(24,57,''),(25,57,'(.*)'),(26,59,'(.*)'),(27,61,''),(28,64,'clicked'),(29,67,'game'),(30,67,'fromtype'),(31,72,'nextclassid'),(32,72,'clicked'),(33,74,'clicked'),(34,76,'game'),(35,76,'fromtype'),(36,89,'id'),(37,89,'from_alert'),(38,89,'detail_flag'),(39,98,'clicked'),(40,105,'title'),(41,105,'nextclassid'),(42,105,'clicked'),(43,108,'clicked'),(44,110,'title'),(45,110,'game'),(46,110,'fromtype'),(47,113,'title'),(48,113,'nextclassid'),(49,113,'clicked'),(50,124,'title'),(51,124,'game'),(52,124,'fromtype'),(53,127,'popurl'),(54,127,'poptitle'),(55,135,'title'),(56,135,'btn_txt'),(57,135,'need_adb_flag'),(58,135,'cont'),(59,135,'close_flag'),(60,136,'game'),(61,136,'fromtype'),(62,145,'CONTINUE_GAME'),(63,149,'game'),(64,149,'fromtype'),(65,156,'apkVersion'),(66,156,'apkURL'),(67,156,'apkInfo'),(68,156,'packageName'),(69,156,'apkSoftID'),(70,156,'apkTitle'),(71,156,'iconURL'),(72,156,'apkSize'),(73,156,'imageURL'),(74,179,'PLAYER_BLUE'),(75,179,'DIFFICULTY'),(76,179,'PLAYER_GREEN'),(77,179,'TAKE_OFF_NUM'),(78,179,'PLAYER_YELLOW'),(79,179,'PLAYER_RED'),(80,179,'CONTINUE_GAME'),(81,182,'DIFFICULTY'),(82,182,'TAKE_OFF_NUM'),(83,182,'CONTINUE_GAME'),(84,186,'popurl'),(85,186,'poptitle'),(86,188,'u'),(87,189,'u'),(88,190,'title'),(89,189,'o'),(90,190,'btn_txt'),(91,190,'need_adb_flag'),(92,190,'cont'),(93,190,'close_flag'),(94,192,'com.mappn.sdk.paymentinfo'),(95,201,'USER_ID'),(96,201,'CLIENT_PACKAGE'),(97,201,'URL_PARAMS'),(98,220,'com.mappn.sdk.paymentinfo'),(99,226,'balance'),(100,226,'<INTENT>'),(101,228,'sms_body'),(102,232,'id'),(103,232,'from_alert'),(104,232,'detail_flag'),(105,234,'oriention'),(106,236,'type'),(107,236,'<INTENT>'),(108,237,'balance'),(109,237,'<INTENT>'),(110,237,'type');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,8,1),(8,9,3),(9,11,1),(10,12,1),(11,13,1),(12,14,4),(13,15,1),(14,16,1),(15,17,1),(16,18,1),(17,19,2),(18,19,4),(19,21,1),(20,22,1),(21,24,1),(22,25,1),(23,26,1),(24,27,1),(25,28,4),(26,28,2),(27,30,5),(28,31,6),(29,32,2),(30,33,1),(31,34,7),(32,36,1),(33,37,5),(34,38,8),(35,39,7),(36,40,2),(37,41,7),(38,42,8),(39,43,17),(40,44,7),(41,45,7),(42,46,8),(43,47,2),(44,48,17),(45,49,7),(46,50,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,11,1),(3,12,1),(4,13,1),(5,18,1),(6,21,1),(7,26,1),(8,27,1),(9,31,2),(10,33,1),(11,36,1),(12,38,3),(13,39,3),(14,41,3),(15,42,3),(16,44,3),(17,46,3);
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
INSERT INTO `IFData` VALUES (1,31,NULL,NULL,NULL,NULL,'application','x-nes-rom'),(2,34,'package',NULL,NULL,NULL,NULL,NULL),(3,38,'package',NULL,NULL,NULL,NULL,NULL),(4,39,'package',NULL,NULL,NULL,NULL,NULL),(5,41,'package',NULL,NULL,NULL,NULL,NULL),(6,42,'package',NULL,NULL,NULL,NULL,NULL),(7,44,'package',NULL,NULL,NULL,NULL,NULL),(8,45,'package',NULL,NULL,NULL,NULL,NULL),(9,46,'package',NULL,NULL,NULL,NULL,NULL),(10,49,'package',NULL,NULL,NULL,NULL,NULL),(11,50,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,4,'application','vnd.android.package-archive'),(2,10,'application','vnd.android.package-archive'),(3,24,'application','vnd.android.package-archive'),(4,26,'(.*)','(.*)'),(5,29,'(.*)','(.*)'),(6,60,'application','vnd.android.package-archive'),(7,62,'application','vnd.android.package-archive'),(8,71,'(.*)','(.*)'),(9,73,'(.*)','(.*)'),(10,95,'(.*)','(.*)'),(11,97,'(.*)','(.*)'),(12,116,'application','vnd.android.package-archive'),(13,132,'application','vnd.android.package-archive'),(14,139,'application','vnd.android.package-archive'),(15,140,'application','vnd.android.package-archive'),(16,141,'application','vnd.android.package-archive'),(17,142,'application','vnd.android.package-archive'),(18,150,'application','vnd.android.package-archive'),(19,157,'application','vnd.android.package-archive'),(20,158,'application','vnd.android.package-archive'),(21,173,'application','vnd.android.package-archive'),(22,176,'application','vnd.android.package-archive'),(23,178,'application','vnd.android.package-archive'),(24,180,'application','vnd.android.package-archive'),(25,181,'application','vnd.android.package-archive'),(26,199,'application','vnd.android.package-archive'),(27,238,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'ivc.bpsehin.obiwntop'),(2,2,'ivc.bpsehin.obiwntop'),(3,3,'ivc.bpsehin.obiwntop'),(4,5,'ivc.bpsehin.obiwntop'),(5,6,'ivc.bpsehin.obiwntop'),(6,7,'ivc.bpsehin.obiwntop'),(7,8,'ivc.bpsehin.obiwntop'),(8,9,'ivc.bpsehin.obiwntop'),(9,11,'com.llc.epepaed.jiig.nivo'),(10,13,'ivc.bpsehin.obiwntop'),(11,14,'com.photocontest'),(12,15,'(.*)'),(13,16,'com.llc.epepaed.jiig.nivo'),(14,17,'(.*)'),(15,18,'(.*)'),(16,20,'(.*)'),(17,19,'com.llc.epepaed.jiig.nivo'),(18,21,'(.*)'),(19,23,'(.*)'),(20,28,'ivc.bpsehin.obiwntop'),(21,27,'com.photocontest'),(22,30,'ivc.bpsehin.obiwntop'),(23,31,'com.photocontest'),(24,32,'com.llc.epepaed.jiig.nivo'),(25,33,'ivc.bpsehin.obiwntop'),(26,34,'(.*)'),(27,36,'ivc.bpsehin.obiwntop'),(28,37,''),(29,38,''),(30,39,'com.llc.epepaed.jiig.nivo'),(31,40,'(.*)'),(32,41,'com.llc.epepaed.jiig.nivo'),(33,42,'com.photocontest'),(34,44,'com.photocontest'),(35,43,'com.llc.epepaed.jiig.nivo'),(36,45,'com.photocontest'),(37,46,'(.*)'),(38,47,'com.photocontest'),(39,48,'(.*)'),(40,49,'com.photocontest'),(41,50,'com.llc.epepaed.jiig.nivo'),(42,51,'com.photocontest'),(43,52,'com.llc.epepaed.jiig.nivo'),(44,53,'com.photocontest'),(45,54,'com.photocontest'),(46,55,'com.llc.epepaed.jiig.nivo'),(47,56,'com.photocontest'),(48,57,'com.llc.epepaed.jiig.nivo'),(49,58,'com.photocontest'),(50,59,'com.llc.epepaed.jiig.nivo'),(51,61,'com.llc.epepaed.jiig.nivo'),(52,63,'com.llc.epepaed.jiig.nivo'),(53,64,'com.photocontest'),(54,65,'com.llc.epepaed.jiig.nivo'),(55,66,'com.llc.epepaed.jiig.nivo'),(56,67,'com.photocontest'),(57,72,'com.photocontest'),(58,74,'com.photocontest'),(59,75,'com.llc.epepaed.jiig.nivo'),(60,77,'com.llc.epepaed.jiig.nivo'),(61,76,'com.photocontest'),(62,78,'com.photocontest'),(63,79,'com.llc.epepaed.jiig.nivo'),(64,80,'com.photocontest'),(65,81,'com.llc.epepaed.jiig.nivo'),(66,82,'com.photocontest'),(67,83,'(.*)'),(68,85,''),(69,87,''),(70,88,'(.*)'),(71,90,'com.llc.epepaed.jiig.nivo'),(72,89,'com.photocontest'),(73,92,'NULL-CONSTANT'),(74,94,'NULL-CONSTANT'),(75,98,'com.photocontest'),(76,99,'com.llc.epepaed.jiig.nivo'),(77,100,'com.photocontest'),(78,101,'(.*)'),(79,103,'com.photocontest'),(80,102,''),(81,104,''),(82,106,'(.*)'),(83,105,'com.photocontest'),(84,107,'(.*)'),(85,108,'com.photocontest'),(86,109,'(.*)'),(87,111,'(.*)'),(88,110,'com.photocontest'),(89,112,''),(90,114,''),(91,113,'com.photocontest'),(92,115,'(.*)'),(93,117,'(.*)'),(94,118,'com.photocontest'),(95,119,''),(96,120,'com.photocontest'),(97,121,''),(98,123,'com.photocontest'),(99,122,'(.*)'),(100,124,'com.photocontest'),(101,128,'com.photocontest'),(102,127,'com.llc.epepaed.jiig.nivo'),(103,129,'com.photocontest'),(104,133,'com.photocontest'),(105,135,'com.photocontest'),(106,136,'com.photocontest'),(107,137,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(108,138,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(109,143,'(.*)'),(110,144,''),(111,145,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(112,146,''),(113,147,'(.*)'),(114,148,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(115,149,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(116,151,'(.*)'),(117,152,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(118,153,'(.*)'),(119,154,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(120,155,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(121,156,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(122,159,'(.*)'),(123,160,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(124,161,'(.*)'),(125,162,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(126,163,'(.*)'),(127,165,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(128,164,''),(129,166,''),(130,167,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(131,168,'(.*)'),(132,169,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(133,170,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(134,171,'(.*)'),(135,172,'(.*)'),(136,174,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(137,179,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(138,183,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(139,185,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(140,186,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(141,187,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(142,190,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(143,192,'com.dlprmiqmbm.upkmf'),(144,193,'(.*)'),(145,195,''),(146,197,''),(147,198,'(.*)'),(148,200,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(149,202,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(150,203,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(151,201,'com.dlprmiqmbm.upkmf'),(152,204,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(153,205,'(.*)'),(154,207,''),(155,208,'com.dlprmiqmbm.upkmf'),(156,209,''),(157,210,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(158,211,'(.*)'),(159,212,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(160,214,'(.*)'),(161,216,'com.dlprmiqmbm.upkmf'),(162,217,'(.*)'),(163,220,'com.dlprmiqmbm.upkmf'),(164,221,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(165,224,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(166,226,'com.dlprmiqmbm.upkmf'),(167,227,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(168,229,'com.ebuguan.owfprur.gomklbbfs_dwdou_igkvre_gknh'),(169,230,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(170,231,'com.dlprmiqmbm.upkmf'),(171,232,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(172,233,'com.bfonjwq.lobu.dqcpeuoemwpdou'),(173,234,'com.dlprmiqmbm.upkmf'),(174,236,'com.dlprmiqmbm.upkmf'),(175,237,'com.dlprmiqmbm.upkmf');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,12,0),(4,17,0),(5,18,0),(6,19,0),(7,20,0),(8,21,0),(9,23,0),(10,24,0),(11,25,0),(12,29,0),(13,30,0),(14,32,0),(15,33,0),(16,34,0),(17,35,0),(18,38,0),(19,39,0),(20,40,0),(21,51,0),(22,53,0),(23,54,0),(24,55,0),(25,57,0),(26,64,0),(27,67,0),(28,68,0),(29,73,0),(30,74,0),(31,75,0),(32,77,0),(33,97,0),(34,99,0),(35,100,0),(36,116,0),(37,119,0),(38,39,0),(39,39,0),(40,120,0),(41,32,0),(42,32,0),(43,121,0),(44,68,0),(45,122,0),(46,68,0),(47,123,0),(48,124,0),(49,122,0),(50,125,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,3,0,0),(3,4,0,0),(4,5,1,0),(5,6,0,0),(6,7,0,0),(7,8,0,0),(8,9,0,0),(9,10,0,0),(10,11,1,0),(11,12,0,0),(12,13,1,0),(13,14,0,0),(14,15,0,0),(15,16,1,0),(16,17,0,0),(17,16,1,0),(18,18,1,0),(19,17,0,0),(20,18,1,0),(21,19,1,0),(22,20,1,0),(23,19,1,0),(24,21,1,0),(25,20,1,0),(26,20,1,0),(27,22,0,0),(28,23,0,0),(29,20,1,0),(30,24,0,0),(31,26,0,0),(32,25,0,0),(33,27,0,0),(34,28,1,0),(35,29,1,0),(36,30,0,0),(37,28,1,0),(38,28,1,0),(39,31,0,0),(40,28,1,0),(41,32,0,0),(42,33,0,0),(43,35,0,0),(44,34,0,0),(45,34,0,0),(46,36,1,0),(47,37,0,0),(48,36,1,0),(49,37,0,0),(50,38,0,0),(51,39,0,0),(52,38,0,0),(53,40,0,0),(54,41,0,0),(55,42,0,0),(56,43,0,0),(57,44,0,0),(58,45,0,0),(59,44,0,0),(60,46,1,0),(61,44,0,0),(62,46,1,0),(63,47,0,0),(64,48,0,0),(65,49,0,0),(66,50,0,0),(67,51,0,0),(68,52,1,0),(69,53,1,0),(70,52,1,0),(71,52,1,0),(72,54,0,0),(73,52,1,0),(74,55,0,0),(75,56,0,0),(76,57,0,0),(77,58,0,0),(78,59,0,0),(79,60,0,0),(80,61,0,0),(81,62,0,0),(82,63,0,0),(83,64,1,0),(84,65,1,0),(85,64,1,0),(86,65,1,0),(87,64,1,0),(88,64,1,0),(89,66,0,0),(90,67,0,0),(91,68,1,0),(92,69,1,0),(93,68,1,0),(94,69,1,0),(95,68,1,0),(96,70,1,0),(97,68,1,0),(98,71,0,0),(99,72,0,0),(100,73,0,0),(101,74,1,0),(102,74,1,0),(103,75,0,0),(104,74,1,0),(105,76,0,0),(106,74,1,0),(107,77,1,0),(108,78,0,0),(109,77,1,0),(110,79,0,0),(111,80,1,0),(112,80,1,0),(113,81,0,0),(114,80,1,0),(115,80,1,0),(116,82,1,0),(117,84,1,0),(118,83,0,0),(119,84,1,0),(120,83,0,0),(121,84,1,0),(122,84,1,0),(123,85,0,0),(124,86,0,0),(125,87,1,0),(126,87,1,0),(127,88,0,0),(128,89,0,0),(129,90,0,0),(130,91,1,0),(131,92,1,0),(132,93,1,0),(133,94,0,0),(134,95,1,0),(135,96,0,0),(136,97,0,0),(137,98,0,0),(138,99,0,0),(139,100,1,0),(140,100,1,0),(141,102,1,0),(142,102,1,0),(143,103,1,0),(144,103,1,0),(145,104,0,0),(146,103,1,0),(147,103,1,0),(148,105,0,0),(149,106,0,0),(150,107,1,0),(151,108,1,0),(152,109,0,0),(153,108,1,0),(154,110,0,0),(155,111,0,0),(156,112,0,0),(157,113,1,0),(158,113,1,0),(159,114,1,0),(160,115,0,0),(161,114,1,0),(162,116,0,0),(163,117,1,0),(164,117,1,0),(165,118,0,0),(166,117,1,0),(167,119,0,0),(168,117,1,0),(169,120,0,0),(170,121,0,0),(171,122,1,0),(172,122,1,0),(173,123,1,0),(174,124,0,0),(175,123,1,0),(176,123,1,0),(177,125,1,0),(178,123,1,0),(179,126,0,0),(180,123,1,0),(181,123,1,0),(182,126,1,0),(183,127,0,0),(184,128,1,0),(185,130,0,0),(186,131,0,0),(187,132,0,0),(188,133,1,0),(189,133,1,0),(190,134,0,0),(191,135,1,0),(192,136,0,0),(193,137,1,0),(194,138,1,0),(195,137,1,0),(196,138,1,0),(197,137,1,0),(198,137,1,0),(199,139,1,0),(200,140,0,0),(201,142,0,0),(202,143,0,0),(203,144,0,0),(204,145,0,0),(205,146,1,0),(206,147,1,0),(207,146,1,0),(208,148,0,0),(209,146,1,0),(210,149,0,0),(211,146,1,0),(212,150,0,0),(213,151,1,0),(214,152,1,0),(215,151,1,0),(216,153,0,0),(217,152,1,0),(218,154,1,0),(219,155,1,0),(220,156,0,0),(221,158,0,0),(222,159,1,0),(223,160,1,0),(224,161,0,0),(225,160,1,0),(226,162,0,0),(227,163,0,0),(228,164,1,0),(229,166,0,0),(230,168,0,0),(231,169,0,0),(232,170,0,0),(233,172,0,0),(234,173,0,0),(235,174,1,0),(236,175,0,0),(237,176,0,0),(238,177,1,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.ggnes.supermario3.ppy_cache');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_CACHE_FILESYSTEM'),(8,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(14,'android.permission.ACCESS_NETWORK_STATE'),(16,'android.permission.ACCESS_WIFI_STATE'),(13,'android.permission.DELETE_CACHE_FILES'),(4,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(12,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(19,'android.permission.READ_SMS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(21,'android.permission.RECEIVE_SMS'),(9,'android.permission.SET_WALLPAPER'),(3,'android.permission.SYSTEM_ALERT_WINDOW'),(7,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(20,'android.permission.WRITE_SMS'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(15,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
INSERT INTO `Providers` VALUES (1,101,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://',NULL,NULL,NULL),(6,NULL,NULL,'file://',NULL,NULL,NULL),(7,NULL,NULL,'file://',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'file://',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(38,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'http://ditu.google.com/maps?q=,()&z=15&cbp=1',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(42,NULL,NULL,'file://',NULL,NULL,NULL),(43,NULL,NULL,'market://details?id=com.adobe.flashplayer',NULL,NULL,NULL),(44,NULL,NULL,'',NULL,NULL,NULL),(45,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(46,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(48,NULL,NULL,'',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'',NULL,NULL,NULL),(51,NULL,NULL,'tel:',NULL,NULL,NULL),(52,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'',NULL,NULL,NULL),(55,NULL,NULL,'smsto:',NULL,NULL,NULL),(56,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,101,31),(2,157,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,2),(11,2,5),(12,2,6),(13,2,9),(14,2,10),(15,2,11),(16,2,12),(17,2,13),(18,2,14),(19,2,15),(20,3,16),(21,3,1),(22,3,2),(23,3,4),(24,3,5),(25,3,6),(26,3,10),(27,3,14),(28,3,15),(29,4,17),(30,4,16),(31,4,1),(32,4,2),(33,4,4),(34,4,5),(35,4,6),(36,4,8),(37,4,10),(38,4,12),(39,4,14),(40,4,15),(41,5,1),(42,5,2),(43,5,18),(44,5,3),(45,5,4),(46,5,5),(47,5,6),(48,6,16),(49,6,1),(50,6,19),(51,6,21),(52,6,20),(53,6,5),(54,6,6),(55,6,14),(56,7,16),(57,7,1),(58,7,4),(59,7,5),(60,7,6),(61,7,7),(62,7,14);
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

-- Dump completed on 2015-10-09  0:39:43
