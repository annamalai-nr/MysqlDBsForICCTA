-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_430
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (15,'(.*)'),(8,'.PintuActivity'),(12,'android.bluetooth.adapter.action.REQUEST_DISCOVERABLE'),(2,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.CHOOSER'),(19,'android.intent.action.CLOSE_SYSTEM_DIALOGS'),(1,'android.intent.action.MAIN'),(3,'android.intent.action.PACKAGE_ADDED'),(5,'android.intent.action.PACKAGE_REMOVED'),(17,'android.intent.action.SCREEN_OFF'),(10,'android.intent.action.USER_PRESENT'),(4,'android.intent.action.VIEW'),(14,'android.net.wifi.SCAN_RESULTS'),(9,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(11,'com.android_isorbnymmkdsj.PintuActivity'),(13,'com.android_isorbnymmkdsj.mMcTnlL1'),(18,'com.heyzap.android'),(6,'com.pintugq1.GameBootReceiver'),(7,'com.pintugq1.PintuActivity');
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
INSERT INTO `Applications` VALUES (1,'com.pintugq1',20003),(2,'com.android_isorbnymmkdsj',20009),(3,'com.jltkom.psm.awwobmiw',10024),(4,'easy.crosjlaneq',10041),(5,'com.fhkuuej.qeam',10026),(6,'ttc.vcawdrtopr.or2',10044),(7,'edm.qukpwfaonn.daoaaqpwjcpo.fjah.ub',10033);
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
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(3,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.pintugq1.PintuActivity'),(2,1,'com.pintugq1.GameInfo'),(3,1,'com.pintugq1.TableClass'),(4,1,'com.pintugq1.GameAlertDialog'),(5,1,'com.pintugq1.GameService'),(6,1,'com.pintugq1.GameBootReceiver'),(7,2,'com.android_isorbnymmkdsj.PintuActivity'),(8,2,'com.android_isorbnymmkdsj.mMcTnlL8'),(9,2,'com.android_isorbnymmkdsj.mMcTnlL5'),(10,2,'com.android_isorbnymmkdsj.mMcTnlL13'),(11,2,'com.android_isorbnymmkdsj.mMcTnlL12'),(12,2,'com.android_isorbnymmkdsj.mMcTnlL2'),(13,2,'com.android_isorbnymmkdsj.mMcTnlL1'),(14,3,'com.jltkom.psm.awwobmiw.MainActivity'),(15,3,'com.jltkom.psm.awwobmiw.BaseActivity'),(16,3,'com.jltkom.psm.awwobmiw.HomeActivity'),(17,3,'com.jltkom.psm.awwobmiw.MoukeyActivity'),(18,3,'com.jltkom.psm.awwobmiw.StickActivity'),(19,3,'com.jltkom.psm.awwobmiw.RacingActivity'),(20,3,'com.jltkom.psm.awwobmiw.HelpActivity'),(21,3,'com.jltkom.psm.awwobmiw.MessageActivity'),(22,3,'com.jltkom.psm.awwobmiw.LinkBWActivity'),(23,3,'com.GJTdQ.FIWEbwOTVrpKU'),(24,4,'easy.crosjlaneq.wallsport0221j'),(25,3,'com.GJTdQ.uUrRQJbMWcLrrb'),(26,4,'easy.crosjlaneq.asianbody'),(27,4,'easy.crosjlaneq.game.Main'),(28,3,'com.nd.dianjin.activity.OfferAppActivity'),(29,4,'easy.crosjlaneq.MyWebView'),(30,3,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(31,4,'com.mobclix.android.sdk.MobclixBrowserActivity'),(32,4,'com.VWUKAAB.oTokiUwvwpsPvTO'),(33,4,'com.VWUKAAB.WFUabFkwCdhnINo'),(34,5,'com.fhkuuej.qeam.Star'),(35,6,'ttc.vcawdrtopr.or2.GameActivity'),(36,5,'com.fhkuuej.qeam.StarGame'),(37,5,'com.fhkuuej.qeam.StarHelp'),(38,6,'ttc.vcawdrtopr.or2.PausedActivity'),(39,5,'net.youmi.android.AdActivity'),(40,6,'ttc.vcawdrtopr.or2.PreferencesFromXml'),(41,5,'net.youmi.android.spotad.AdActivity'),(42,6,'ttc.vcawdrtopr.or2.About'),(43,5,'cn.domob.android.ads.DomobActivity'),(44,6,'ttc.vcawdrtopr.or2.MoreGamesActivity'),(45,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(46,6,'com.google.ads.AdActivity'),(47,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(48,6,'com.openfeint.internal.ui.IntroFlow'),(49,5,'com.vpon.adon.android.WebInApp'),(50,6,'com.openfeint.api.ui.Dashboard'),(51,5,'com.google.ads.AdActivity'),(52,6,'com.openfeint.internal.ui.Settings'),(53,5,'com.adchina.android.ads.views.AdBrowserView'),(54,6,'com.openfeint.internal.ui.NativeBrowser'),(55,5,'com.KmJGoGdR.ToLfMCuwehGNtc'),(56,6,'com.cHeIwBpU.oecnWfoDNcLhrg'),(57,5,'com.KmJGoGdR.ukfJcLptQgJjml'),(58,6,'com.waps.OffersWebView'),(59,6,'com.cHeIwBpU.LNvdekbwK'),(60,5,'com.nd.dianjin.activity.OfferAppActivity'),(61,5,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(62,1,'aw'),(63,1,'p'),(64,1,'aa'),(65,2,'z'),(66,2,'y'),(67,7,'edm.qukpwfaonn.daoaaqpwjcpo.fjah.ub.Main'),(68,7,'edm.qukpwfaonn.daoaaqpwjcpo.fjah.ub.NewsActivity'),(69,1,'k'),(70,7,'edm.qukpwfaonn.daoaaqpwjcpo.fjah.ub.BlogActivity'),(71,4,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(72,7,'edm.qukpwfaonn.daoaaqpwjcpo.fjah.ub.HighScoresScreen'),(73,7,'edm.qukpwfaonn.daoaaqpwjcpo.fjah.ub.AchivmentActivity'),(74,7,'com.scoreloop.client.android.ui.EntryScreenActivity'),(75,7,'com.scoreloop.client.android.ui.ShowResultOverlayActivity'),(76,7,'com.scoreloop.client.android.ui.component.market.MarketHeaderActivity'),(77,7,'com.scoreloop.client.android.ui.component.market.MarketListActivity'),(78,7,'com.scoreloop.client.android.ui.component.entry.EntryListActivity'),(79,7,'com.scoreloop.client.android.ui.component.post.PostOverlayActivity'),(80,7,'com.scoreloop.client.android.ui.component.score.ScoreHeaderActivity'),(81,4,'easy.crosjlaneq.asianbody$2'),(82,2,'ac'),(83,7,'com.scoreloop.client.android.ui.component.score.ScoreListActivity'),(84,7,'com.scoreloop.client.android.ui.component.user.UserAddBuddyListActivity'),(85,7,'com.scoreloop.client.android.ui.component.user.UserHeaderActivity'),(86,7,'com.scoreloop.client.android.ui.component.user.UserDetailListActivity'),(87,7,'com.scoreloop.client.android.ui.component.user.UserListActivity'),(88,4,'easy.crosjlaneq.wallsport0221j$1'),(89,7,'com.scoreloop.client.android.ui.component.game.GameDetailHeaderActivity'),(90,7,'com.scoreloop.client.android.ui.component.game.GameDetailListActivity'),(91,7,'com.scoreloop.client.android.ui.component.game.GameListActivity'),(92,7,'com.scoreloop.client.android.ui.component.achievement.AchievementHeaderActivity'),(93,7,'com.scoreloop.client.android.ui.component.achievement.AchievementListActivity'),(94,7,'com.scoreloop.client.android.ui.component.news.NewsHeaderActivity'),(95,7,'com.scoreloop.client.android.ui.component.news.NewsListActivity'),(96,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeHeaderActivity'),(97,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeListActivity'),(98,4,'easy.crosjlaneq.DialogUtil$1'),(99,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeAcceptListActivity'),(100,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeCreateListActivity'),(101,7,'com.scoreloop.client.android.ui.component.challenge.ChallengePaymentActivity'),(102,4,'easy.crosjlaneq.MyWebView$7'),(103,7,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsListActivity'),(104,7,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsPictureListActivity'),(105,7,'com.scoreloop.client.android.ui.framework.ScreenActivity'),(106,4,'easy.crosjlaneq.asianbody$3'),(107,7,'com.scoreloop.client.android.ui.framework.TabsActivity'),(108,7,'com.scoreloop.client.android.ui.LeaderboardsScreenActivity'),(109,7,'com.scoreloop.client.android.ui.AchievementsScreenActivity'),(110,7,'com.google.ads.AdActivity'),(111,7,'com.TSWesSSCp.qsnCfjkBru'),(112,7,'com.TSWesSSCp.akqlsUJkseCiE'),(113,7,'com.TSWesSSCp.ntpDurIhbwNACpL'),(114,7,'com.TSWesSSCp.phDWdatTa'),(115,7,'com.TSWesSSCp.MsVNDlkAlpwabB'),(116,7,'com.TSWesSSCp.QBgCWkoDesFPUg'),(117,7,'com.TSWesSSCp.userPermissionReceiver'),(118,3,'com.jltkom.psm.awwobmiw.HomeActivity$5'),(119,3,'com.nd.dianjin.DianJinPlatform'),(120,3,'com.nd.dianjin.broadcastreceiver.PackageChangedBroadcastReceiver'),(121,3,'com.jltkom.psm.awwobmiw.LinkBWActivity$1'),(122,5,'net.youmi.android.be'),(123,5,'com.nd.dianjin.DianJinPlatform'),(124,5,'net.youmi.android.t'),(125,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(126,6,'com.waps.y'),(127,6,'com.mopub.mobileads.MoPubView$1'),(128,6,'com.heyzap.sdk.ClickableToast$DismissToastBroadcastReceiver'),(129,6,'com.heyzap.sdk.HeyzapLib'),(130,6,'com.waps.AppConnect'),(131,6,'com.waps.w'),(132,6,'com.waps.SDKUtils'),(133,6,'ttc.vcawdrtopr.or2.GameActivity$8'),(134,6,'ttc.vcawdrtopr.or2.GameActivity$9'),(135,6,'com.waps.ao'),(136,6,'com.heyzap.sdk.PreMarketDialog$1'),(137,6,'ttc.vcawdrtopr.or2.PausedActivity$3'),(138,6,'com.openfeint.internal.ImagePicker'),(139,6,'com.waps.al');
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'filepath'),(2,2,'from_alert'),(3,1,'service_channel'),(4,4,'url'),(5,4,'content'),(6,2,'title'),(7,5,'service_channel'),(8,2,'from_table'),(9,7,'service_channel'),(10,8,'title'),(11,12,'service_channel'),(12,4,'btn_txt'),(13,10,'isDirectFromTable'),(14,4,'title'),(15,31,'easy.crosjlaneq.currency'),(16,31,'easy.crosjlaneq.type'),(17,11,'btn_txt'),(18,8,'from_table'),(19,8,'status'),(20,31,'easy.crosjlaneq.data'),(21,11,'fromtable'),(22,11,'url'),(23,8,'from_alert'),(24,8,'game'),(25,8,'fromtype'),(26,11,'version_code'),(27,10,'from'),(28,8,'filepath'),(29,17,'claxx'),(30,19,'claxx'),(31,18,'claxx'),(32,2,'status'),(33,11,'apk_url'),(34,11,'content'),(35,11,'title'),(36,11,'package_name'),(37,22,'position'),(38,21,'TYPE'),(39,21,'position'),(40,51,'com.google.ads.AdOpener'),(41,51,'params'),(42,39,'D780FBF4215247bcBB1AC0AD33C474FE'),(43,49,'adWidth'),(44,39,'172C94EDC717477aBF600D7898A64A8E'),(45,39,'D50EF1926ADD471892E72BCE6D7E032C'),(46,39,'EB80F3291A8E469c962CA133BDC549D7'),(47,51,'action'),(48,49,'url'),(49,44,'WAPS_PID'),(50,56,'WAPS_PID'),(51,38,'WAPS_PID'),(52,46,'WAPS_PID'),(53,59,'WAPS_PID'),(54,35,'WAPS_PID'),(55,58,'Offers_URL'),(56,52,'_of_cookie_(.*)expiry'),(57,50,'_of_cookie_(.*)expiry'),(58,48,'_of_cookie_(.*)expiry'),(59,52,'_of_cookie_(.*)path'),(60,50,'_of_cookie_(.*)path'),(61,48,'_of_cookie_(.*)path'),(62,52,'mBanned'),(63,50,'mBanned'),(64,48,'mBanned'),(65,52,'content_name'),(66,50,'content_name'),(67,48,'content_name'),(68,52,'mDeviceSessionCreated'),(69,50,'mDeviceSessionCreated'),(70,48,'mDeviceSessionCreated'),(71,52,'com.openfeint.internal.ui.NativeBrowser.argument.result'),(72,58,'CLIENT_PACKAGE'),(73,58,'UrlPath'),(74,44,'WAPS_ID'),(75,56,'WAPS_ID'),(76,38,'WAPS_ID'),(77,46,'WAPS_ID'),(78,59,'WAPS_ID'),(79,35,'WAPS_ID'),(80,58,'URL_PARAMS'),(81,44,'APP_ID'),(82,56,'APP_ID'),(83,38,'APP_ID'),(84,46,'APP_ID'),(85,59,'APP_ID'),(86,35,'APP_ID'),(87,52,'_of_cookie_(.*)value'),(88,50,'_of_cookie_(.*)value'),(89,48,'_of_cookie_(.*)value'),(90,46,'action'),(91,52,'screenName'),(92,50,'screenName'),(93,48,'screenName'),(94,58,'isFinshClose'),(95,44,'CLIENT_PACKAGE'),(96,56,'CLIENT_PACKAGE'),(97,38,'CLIENT_PACKAGE'),(98,46,'CLIENT_PACKAGE'),(99,59,'CLIENT_PACKAGE'),(100,35,'CLIENT_PACKAGE'),(101,52,'mDeclined'),(102,50,'mDeclined'),(103,48,'mDeclined'),(104,35,'(.*)'),(105,58,'ACTIVITY_FLAG'),(106,46,'params'),(107,58,'URL'),(108,35,'error'),(109,35,'failing_url'),(110,35,'access_token'),(111,35,'error_type'),(112,52,'com.openfeint.internal.ui.NativeBrowser.argument.failed'),(113,54,'com.openfeint.internal.ui.NativeBrowser.argument.src'),(114,44,'APP_PID'),(115,56,'APP_PID'),(116,38,'APP_PID'),(117,46,'APP_PID'),(118,59,'APP_PID'),(119,35,'APP_PID'),(120,58,'Notify_Url_Params'),(121,52,'mForceOffline'),(122,50,'mForceOffline'),(123,48,'mForceOffline'),(124,52,'_of_cookie_(.*)domain'),(125,50,'_of_cookie_(.*)domain'),(126,48,'_of_cookie_(.*)domain'),(127,52,'mCurrentUser'),(128,50,'mCurrentUser'),(129,48,'mCurrentUser'),(130,46,'com.google.ads.AdOpener'),(131,58,'Notify_Id'),(132,54,'com.openfeint.internal.ui.NativeBrowser.argument.timeout'),(133,44,'ADVIEW'),(134,58,'ADVIEW'),(135,56,'ADVIEW'),(136,38,'ADVIEW'),(137,46,'ADVIEW'),(138,59,'ADVIEW'),(139,35,'ADVIEW'),(140,52,'mCreatingDeviceSession'),(141,50,'mCreatingDeviceSession'),(142,48,'mCreatingDeviceSession'),(143,58,'offers_webview_tag'),(144,52,'com.openfeint.internal.ui.NativeBrowser.argument.failure_desc'),(145,52,'mApproved'),(146,50,'mApproved'),(147,48,'mApproved'),(148,58,'USER_ID'),(149,35,'expires_in'),(150,58,'SHWO_FLAG'),(151,44,'DEVICE_ID'),(152,56,'DEVICE_ID'),(153,38,'DEVICE_ID'),(154,46,'DEVICE_ID'),(155,59,'DEVICE_ID'),(156,35,'DEVICE_ID'),(157,52,'mCurrentlyLoggingIn'),(158,50,'mCurrentlyLoggingIn'),(159,48,'mCurrentlyLoggingIn');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,67,'a',1,NULL,NULL),(63,68,'a',1,NULL,NULL),(64,70,'a',1,NULL,NULL),(65,72,'a',1,NULL,NULL),(66,73,'a',1,NULL,NULL),(67,74,'a',0,NULL,NULL),(68,75,'a',0,NULL,NULL),(69,76,'a',0,NULL,NULL),(70,77,'a',0,NULL,NULL),(71,78,'a',0,NULL,NULL),(72,79,'a',0,NULL,NULL),(73,80,'a',0,NULL,NULL),(74,83,'a',0,NULL,NULL),(75,84,'a',0,NULL,NULL),(76,85,'a',0,NULL,NULL),(77,86,'a',0,NULL,NULL),(78,87,'a',0,NULL,NULL),(79,89,'a',0,NULL,NULL),(80,90,'a',0,NULL,NULL),(81,91,'a',0,NULL,NULL),(82,92,'a',0,NULL,NULL),(83,93,'a',0,NULL,NULL),(84,94,'a',0,NULL,NULL),(85,95,'a',0,NULL,NULL),(86,96,'a',0,NULL,NULL),(87,97,'a',0,NULL,NULL),(88,99,'a',0,NULL,NULL),(89,100,'a',0,NULL,NULL),(90,101,'a',0,NULL,NULL),(91,103,'a',0,NULL,NULL),(92,104,'a',0,NULL,NULL),(93,105,'a',0,NULL,NULL),(94,107,'a',0,NULL,NULL),(95,108,'a',0,NULL,NULL),(96,109,'a',0,NULL,NULL),(97,110,'a',0,NULL,NULL),(98,111,'a',1,NULL,NULL),(99,112,'a',0,NULL,NULL),(100,113,'a',0,NULL,NULL),(101,114,'s',0,NULL,NULL),(102,115,'s',0,NULL,NULL),(103,116,'r',0,NULL,NULL),(104,117,'r',1,NULL,NULL),(105,120,'r',1,NULL,NULL),(106,121,'r',1,NULL,NULL),(107,125,'r',1,NULL,NULL),(108,126,'r',1,NULL,NULL),(109,127,'r',1,NULL,NULL),(110,128,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,2),(3,3,2),(4,4,2),(5,5,6),(6,6,2),(7,7,8),(8,8,3),(9,8,4),(10,9,8),(11,10,4),(12,11,8),(13,12,1),(14,13,3),(15,14,8),(16,15,2),(17,16,4),(18,17,2),(19,18,31),(20,19,11),(21,20,32),(22,21,11),(23,22,2),(24,23,26),(25,24,1),(26,25,26),(27,26,8),(28,27,33),(29,28,4),(30,29,24),(31,30,4),(32,31,29),(33,32,7),(34,34,2),(35,33,26),(36,35,9),(37,35,10),(38,35,11),(39,36,2),(40,37,16),(41,38,29),(42,39,6),(43,40,16),(44,41,26),(45,42,2),(46,43,16),(47,44,8),(48,45,23),(49,46,8),(50,47,2),(51,48,18),(52,49,21),(53,50,2),(54,51,7),(55,52,19),(56,53,22),(57,54,3),(58,55,11),(59,56,16),(60,57,2),(61,58,13),(62,59,16),(63,60,3),(64,60,4),(65,61,9),(66,62,23),(67,63,9),(68,63,10),(69,63,11),(70,64,19),(71,64,17),(72,64,18),(73,65,8),(74,66,25),(75,67,16),(76,68,13),(77,69,18),(78,70,13),(79,71,8),(80,72,25),(81,73,39),(82,74,8),(83,75,17),(84,76,9),(85,77,22),(86,78,17),(87,79,8),(88,80,17),(89,81,11),(90,82,19),(91,83,22),(92,84,8),(93,85,20),(94,86,16),(95,87,14),(96,88,51),(97,89,55),(98,90,55),(99,91,57),(100,92,57),(101,93,39),(102,94,56),(103,94,38),(104,94,44),(105,94,59),(106,94,46),(107,94,35),(108,95,59),(109,96,58),(110,97,38),(111,97,35),(112,97,44),(113,97,46),(114,97,56),(115,97,59),(116,98,35),(117,98,56),(118,98,38),(119,98,44),(120,98,59),(121,98,46),(122,99,59),(123,100,35),(124,100,38),(125,100,56),(126,100,44),(127,100,59),(128,100,46),(129,101,46),(130,102,44),(131,102,59),(132,102,38),(133,102,56),(134,102,46),(135,102,35),(136,103,58),(137,104,44),(138,105,35),(139,105,38),(140,105,59),(141,105,56),(142,105,46),(143,105,44),(144,106,35),(145,106,56),(146,106,38),(147,106,46),(148,106,44),(149,106,59),(150,107,35),(151,108,59),(152,109,48),(153,109,52),(154,110,46),(155,110,35),(156,110,38),(157,110,59),(158,110,56),(159,110,44),(160,111,35),(161,111,46),(162,111,44),(163,111,59),(164,111,38),(165,111,56),(166,112,40),(167,113,58),(168,114,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<com.pintugq1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(2,2,'<com.pintugq1.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(3,62,'<aw: void onClick(android.view.View)>',205,'a',NULL),(4,2,'<com.pintugq1.GameInfo: void onCreate(android.os.Bundle)>',163,'a',NULL),(5,6,'<com.pintugq1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(6,63,'<p: void onClick(android.view.View)>',208,'a',NULL),(7,8,'<com.android_isorbnymmkdsj.mMcTnlL8: void onCreate(android.os.Bundle)>',90,'s',NULL),(8,64,'<aa: void a(int,boolean)>',29,'a',NULL),(9,8,'<com.android_isorbnymmkdsj.mMcTnlL8: void onCreate(android.os.Bundle)>',172,'a',NULL),(10,4,'<com.pintugq1.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(11,65,'<z: void onClick(android.view.View)>',242,'a',NULL),(12,1,'<com.pintugq1.PintuActivity: void onCreate(android.os.Bundle)>',85,'s',NULL),(13,3,'<com.pintugq1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(14,66,'<y: void onClick(android.view.View)>',239,'a',NULL),(15,2,'<com.pintugq1.GameInfo: void onCreate(android.os.Bundle)>',67,'a',NULL),(16,4,'<com.pintugq1.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL),(17,69,'<k: void onClick(android.view.View)>',205,'a',NULL),(18,71,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(19,11,'<com.android_isorbnymmkdsj.mMcTnlL12: void onClick(android.view.View)>',53,'a',NULL),(20,32,'<com.VWUKAAB.oTokiUwvwpsPvTO: void b()>',3,'a',NULL),(21,11,'<com.android_isorbnymmkdsj.mMcTnlL12: void onClick(android.view.View)>',84,'a',NULL),(22,2,'<com.pintugq1.GameInfo: void onCreate(android.os.Bundle)>',62,'a',NULL),(23,26,'<easy.crosjlaneq.asianbody: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(24,1,'<com.pintugq1.PintuActivity: void onCreate(android.os.Bundle)>',81,'s',NULL),(25,81,'<easy.crosjlaneq.asianbody$2: void onClick(android.view.View)>',8,'a',NULL),(26,82,'<ac: void onClick(android.view.View)>',239,'a',NULL),(27,33,'<com.VWUKAAB.WFUabFkwCdhnINo: void a()>',3,'a',NULL),(28,4,'<com.pintugq1.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(29,88,'<easy.crosjlaneq.wallsport0221j$1: void run()>',21,'a',NULL),(30,4,'<com.pintugq1.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(31,29,'<easy.crosjlaneq.MyWebView: void openFile(java.lang.String)>',19,'a',NULL),(32,7,'<com.android_isorbnymmkdsj.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(33,98,'<easy.crosjlaneq.DialogUtil$1: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(34,2,'<com.pintugq1.GameInfo: void onCreate(android.os.Bundle)>',158,'a',NULL),(35,10,'<com.android_isorbnymmkdsj.mMcTnlL13: void a(int,boolean)>',10,'s',NULL),(36,2,'<com.pintugq1.GameInfo: void onCreate(android.os.Bundle)>',19,'s',NULL),(37,16,'<com.jltkom.psm.awwobmiw.HomeActivity: void click(android.view.View)>',83,'a',NULL),(38,102,'<easy.crosjlaneq.MyWebView$7: void onClick(android.view.View)>',7,'a',NULL),(39,6,'<com.pintugq1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(40,16,'<com.jltkom.psm.awwobmiw.HomeActivity: void click(android.view.View)>',90,'a',NULL),(41,106,'<easy.crosjlaneq.asianbody$3: void onClick(android.view.View)>',11,'a',NULL),(42,62,'<aw: void onClick(android.view.View)>',224,'a',NULL),(43,16,'<com.jltkom.psm.awwobmiw.HomeActivity: void click(android.view.View)>',105,'a',NULL),(44,8,'<com.android_isorbnymmkdsj.mMcTnlL8: void onCreate(android.os.Bundle)>',76,'a',NULL),(45,23,'<com.GJTdQ.FIWEbwOTVrpKU: void a()>',3,'a',NULL),(46,65,'<z: void onClick(android.view.View)>',221,'a',NULL),(47,63,'<p: void onClick(android.view.View)>',227,'a',NULL),(48,18,'<com.jltkom.psm.awwobmiw.StickActivity: void click(android.view.View)>',30,'a',NULL),(49,21,'<com.jltkom.psm.awwobmiw.MessageActivity: void init()>',21,'a',NULL),(50,69,'<k: void onClick(android.view.View)>',224,'a',NULL),(51,7,'<com.android_isorbnymmkdsj.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(52,19,'<com.jltkom.psm.awwobmiw.RacingActivity: void click(android.view.View)>',16,'a',NULL),(53,22,'<com.jltkom.psm.awwobmiw.LinkBWActivity: void connect(int)>',28,'a',NULL),(54,3,'<com.pintugq1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(55,11,'<com.android_isorbnymmkdsj.mMcTnlL12: void onClick(android.view.View)>',75,'a',NULL),(56,16,'<com.jltkom.psm.awwobmiw.HomeActivity: void click(android.view.View)>',18,'a',NULL),(57,2,'<com.pintugq1.GameInfo: void onCreate(android.os.Bundle)>',76,'s',NULL),(58,13,'<com.android_isorbnymmkdsj.mMcTnlL1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(59,118,'<com.jltkom.psm.awwobmiw.HomeActivity$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(60,64,'<aa: void a(int,boolean)>',10,'s',NULL),(61,9,'<com.android_isorbnymmkdsj.mMcTnlL5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(62,23,'<com.GJTdQ.FIWEbwOTVrpKU: void a(java.lang.String)>',10,'a',NULL),(63,10,'<com.android_isorbnymmkdsj.mMcTnlL13: void a(int,boolean)>',63,'a',NULL),(64,17,'<com.jltkom.psm.awwobmiw.MoukeyActivity: void back()>',54,'a',NULL),(65,82,'<ac: void onClick(android.view.View)>',218,'a',NULL),(66,119,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(67,16,'<com.jltkom.psm.awwobmiw.HomeActivity: void click(android.view.View)>',114,'a',NULL),(68,13,'<com.android_isorbnymmkdsj.mMcTnlL1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(69,18,'<com.jltkom.psm.awwobmiw.StickActivity: void click(android.view.View)>',17,'a',NULL),(70,13,'<com.android_isorbnymmkdsj.mMcTnlL1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(71,66,'<y: void onClick(android.view.View)>',218,'a',NULL),(72,25,'<com.GJTdQ.uUrRQJbMWcLrrb: void a()>',3,'a',NULL),(73,122,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(74,8,'<com.android_isorbnymmkdsj.mMcTnlL8: void onCreate(android.os.Bundle)>',177,'a',NULL),(75,17,'<com.jltkom.psm.awwobmiw.MoukeyActivity: void click(android.view.View)>',73,'a',NULL),(76,9,'<com.android_isorbnymmkdsj.mMcTnlL5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(77,22,'<com.jltkom.psm.awwobmiw.LinkBWActivity: void onActivityResult(int,int,android.content.Intent)>',46,'a',NULL),(78,17,'<com.jltkom.psm.awwobmiw.MoukeyActivity: void click(android.view.View)>',87,'a',NULL),(79,8,'<com.android_isorbnymmkdsj.mMcTnlL8: void onCreate(android.os.Bundle)>',33,'s',NULL),(80,17,'<com.jltkom.psm.awwobmiw.MoukeyActivity: void click(android.view.View)>',79,'a',NULL),(81,11,'<com.android_isorbnymmkdsj.mMcTnlL12: void onClick(android.view.View)>',66,'a',NULL),(82,19,'<com.jltkom.psm.awwobmiw.RacingActivity: void click(android.view.View)>',30,'a',NULL),(83,22,'<com.jltkom.psm.awwobmiw.LinkBWActivity: void onActivityResult(int,int,android.content.Intent)>',14,'a',NULL),(84,8,'<com.android_isorbnymmkdsj.mMcTnlL8: void onCreate(android.os.Bundle)>',81,'a',NULL),(85,20,'<com.jltkom.psm.awwobmiw.HelpActivity: void click(android.view.View)>',16,'a',NULL),(86,16,'<com.jltkom.psm.awwobmiw.HomeActivity: void click(android.view.View)>',100,'a',NULL),(87,14,'<com.jltkom.psm.awwobmiw.MainActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',10,'a',NULL),(88,51,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(89,55,'<com.KmJGoGdR.ToLfMCuwehGNtc: void a(java.lang.String)>',10,'a',NULL),(90,55,'<com.KmJGoGdR.ToLfMCuwehGNtc: void a()>',3,'a',NULL),(91,123,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(92,57,'<com.KmJGoGdR.ukfJcLptQgJjml: void a()>',3,'a',NULL),(93,124,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(94,129,'<com.heyzap.sdk.HeyzapLib: void launchCheckinForm(android.content.Context,java.lang.String)>',13,'a',NULL),(95,130,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',14,'a',NULL),(96,131,'<com.waps.w: java.lang.String a(java.lang.String[])>',137,'a',NULL),(97,132,'<com.waps.SDKUtils: void goToTargetBrowser(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',6,'a',NULL),(98,133,'<ttc.vcawdrtopr.or2.GameActivity$8: void onClick(android.view.View)>',8,'a',0),(99,59,'<com.cHeIwBpU.LNvdekbwK: void onRestart()>',24,'a',NULL),(100,134,'<ttc.vcawdrtopr.or2.GameActivity$9: void onClick(android.view.View)>',8,'a',0),(101,46,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(102,132,'<com.waps.SDKUtils: void openUrlByBrowser(java.lang.String,java.lang.String)>',18,'a',NULL),(103,135,'<com.waps.ao: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(104,44,'<ttc.vcawdrtopr.or2.MoreGamesActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',0),(105,136,'<com.heyzap.sdk.PreMarketDialog$1: void onClick(android.view.View)>',25,'a',NULL),(106,137,'<ttc.vcawdrtopr.or2.PausedActivity$3: void onClick(android.view.View)>',8,'a',0),(107,35,'<ttc.vcawdrtopr.or2.GameActivity: boolean onKeyDown(int,android.view.KeyEvent)>',9,'a',0),(108,59,'<com.cHeIwBpU.LNvdekbwK: void onRestart()>',9,'a',NULL),(109,138,'<com.openfeint.internal.ImagePicker: android.graphics.Bitmap onImagePickerActivityResult(android.app.Activity,int,int,android.content.Intent)>',10,'p',0),(110,139,'<com.waps.al: void onClick(android.view.View)>',55,'a',NULL),(111,139,'<com.waps.al: void onClick(android.view.View)>',84,'a',NULL),(112,40,'<ttc.vcawdrtopr.or2.PreferencesFromXml: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',31,'a',0),(113,58,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',56,'a',NULL),(114,56,'<com.cHeIwBpU.oecnWfoDNcLhrg: void onRestart()>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,4),(2,4,4),(3,6,6),(4,7,4),(5,8,4),(6,13,1),(7,15,1),(8,16,1),(9,17,1),(10,18,1),(11,19,1),(12,21,1),(13,22,1),(14,24,1),(15,25,1),(16,26,4),(17,27,4),(18,29,4),(19,30,4),(20,35,7),(21,37,1),(22,38,8),(23,40,1),(24,41,1),(25,42,9),(26,45,1),(27,46,4),(28,47,4),(29,48,4),(30,51,4),(31,56,6),(32,58,4),(33,59,1),(34,62,1),(35,64,4),(36,65,1),(37,68,1),(38,67,4),(39,70,1),(40,71,11),(41,72,1),(42,74,8),(43,75,12),(44,77,9),(45,81,4),(46,84,4),(47,87,4),(48,89,4),(49,92,13),(50,94,13),(51,95,4),(52,96,4),(53,98,4),(54,101,4),(55,102,1),(56,104,1),(57,105,4),(58,107,4),(59,110,4),(60,111,4),(61,113,4),(62,114,4),(63,115,12),(64,116,4),(65,118,4),(66,120,4),(67,123,4),(68,124,15),(69,125,15),(70,126,4),(71,130,16),(72,131,16),(73,132,16),(74,133,16),(75,134,16),(76,135,16),(77,136,16),(78,137,16),(79,138,18),(80,140,4),(81,141,4),(82,142,4),(83,143,4),(84,144,4),(85,145,4),(86,146,4),(87,148,4),(88,149,15),(89,150,15),(90,151,4),(91,152,4),(92,153,4),(93,156,1),(94,157,1),(95,160,1),(96,161,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,13,2),(2,15,4),(3,16,2),(4,17,2),(5,18,4),(6,19,4),(7,21,2),(8,22,4),(9,24,2),(10,25,4),(11,37,2),(12,40,4),(13,41,2),(14,45,4),(15,59,4),(16,62,2),(17,65,4),(18,68,2),(19,70,4),(20,72,2),(21,102,2),(22,104,4),(23,138,2),(24,141,1),(25,141,4),(26,142,2),(27,142,1),(28,143,1),(29,143,2),(30,144,1),(31,144,4),(32,145,1),(33,146,1),(34,156,2),(35,157,4),(36,160,2),(37,161,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/pintugq1/GameService'),(2,2,'com/pintugq1/PintuActivity'),(3,5,'com/pintugq1/PintuActivity'),(4,6,'com/pintugq1/GameService'),(5,9,'com/android_isorbnymmkdsj/mMcTnlL2'),(6,10,'com/pintugq1/PintuActivity'),(7,11,'com/android_isorbnymmkdsj/PintuActivity'),(8,12,'com/pintugq1/GameInfo'),(9,14,'com/pintugq1/GameService'),(10,20,'com/pintugq1/PintuActivity'),(11,23,'com/pintugq1/GameAlertDialog'),(12,28,'com/android_isorbnymmkdsj/mMcTnlL8'),(13,31,'easy/crosjlaneq/wallsport0221j'),(14,33,'com/pintugq1/PintuActivity'),(15,34,'easy/crosjlaneq/game/Main'),(16,32,'com/android_isorbnymmkdsj/mMcTnlL12'),(17,35,'com/pintugq1/GameService'),(18,36,'easy/crosjlaneq/MyWebView'),(19,38,'com/pintugq1/GameService'),(20,39,'easy/crosjlaneq/wallsport0221j'),(21,44,'easy/crosjlaneq/asianbody'),(22,49,'com/android_isorbnymmkdsj/mMcTnlL2'),(23,50,'com/pintugq1/PintuActivity'),(24,52,'com/android_isorbnymmkdsj/mMcTnlL2'),(25,53,'com/pintugq1/GameService'),(26,54,'com/jltkom/psm/awwobmiw/StickActivity'),(27,55,'easy/crosjlaneq/asianbody'),(28,56,'com/pintugq1/GameService'),(29,57,'com/jltkom/psm/awwobmiw/StickActivity'),(30,60,'com/jltkom/psm/awwobmiw/RacingActivity'),(31,61,'com/android_isorbnymmkdsj/PintuActivity'),(32,63,'com/jltkom/psm/awwobmiw/MainActivity'),(33,66,'com/jltkom/psm/awwobmiw/HomeActivity'),(34,69,'com/jltkom/psm/awwobmiw/LinkBWActivity'),(35,71,'com/android_isorbnymmkdsj/mMcTnlL2'),(36,73,'com/jltkom/psm/awwobmiw/HomeActivity'),(37,74,'com/android_isorbnymmkdsj/mMcTnlL2'),(38,76,'com/pintugq1/GameInfo'),(39,78,'com/jltkom/psm/awwobmiw/MoukeyActivity'),(40,79,'com/pintugq1/GameService'),(41,80,'com/android_isorbnymmkdsj/mMcTnlL2'),(42,82,'com/pintugq1/GameService'),(43,83,'com/android_isorbnymmkdsj/mMcTnlL8'),(44,85,'com/android_isorbnymmkdsj/PintuActivity'),(45,86,'com/jltkom/psm/awwobmiw/HomeActivity'),(46,88,'(.*)'),(47,90,'com/nd/dianjin/activity/OfferAppActivity'),(48,91,'com/jltkom/psm/awwobmiw/HelpActivity'),(49,92,'com/android_isorbnymmkdsj/mMcTnlL2'),(50,93,'com/jltkom/psm/awwobmiw/MoukeyActivity'),(51,94,'com/android_isorbnymmkdsj/mMcTnlL2'),(52,97,'com/jltkom/psm/awwobmiw/MainActivity'),(53,99,'com/android_isorbnymmkdsj/PintuActivity'),(54,100,'com/jltkom/psm/awwobmiw/HomeActivity'),(55,103,'com/jltkom/psm/awwobmiw/HomeActivity'),(56,106,'com/jltkom/psm/awwobmiw/StickActivity'),(57,108,'com/android_isorbnymmkdsj/mMcTnlL2'),(58,109,'com/jltkom/psm/awwobmiw/StickActivity'),(59,112,'com/jltkom/psm/awwobmiw/MoukeyActivity'),(60,117,'com/android_isorbnymmkdsj/PintuActivity'),(61,119,'com/jltkom/psm/awwobmiw/HomeActivity'),(62,121,'com/jltkom/psm/awwobmiw/StickActivity'),(63,122,'com/jltkom/psm/awwobmiw/MessageActivity'),(64,127,'com/fhkuuej/qeam/Star'),(65,128,'com/nd/dianjin/activity/OfferAppActivity'),(66,129,'com/fhkuuej/qeam/Star'),(67,138,'com.heyzap.android.CheckinForm'),(68,139,'(.*)'),(69,145,''),(70,146,''),(71,147,'ttc/vcawdrtopr/or2/GameActivity'),(72,154,'ttc/vcawdrtopr/or2/GameActivity'),(73,158,'(.*)'),(74,159,'(.*)'),(75,162,'ttc/vcawdrtopr/or2/GameActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,7,3),(4,8,4),(5,26,5),(6,27,6),(7,30,7),(8,29,8),(9,46,9),(10,47,10),(11,48,11),(12,51,12),(13,58,13),(14,64,14),(15,67,15),(16,81,16),(17,84,17),(18,87,18),(19,89,19),(20,95,20),(21,96,21),(22,98,22),(23,101,23),(24,105,24),(25,107,25),(26,111,26),(27,110,27),(28,113,28),(29,114,29),(30,116,30),(31,118,31),(32,120,32),(33,123,33),(34,124,34),(35,125,35),(36,126,36),(37,140,37),(38,141,38),(39,142,39),(40,143,40),(41,144,41),(42,145,42),(43,146,43),(44,148,44),(45,149,45),(46,150,46),(47,151,47),(48,152,48),(49,153,49);
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
INSERT INTO `IExtras` VALUES (1,12,'id'),(2,12,'from_alert'),(3,12,'detail_flag'),(4,23,'title'),(5,23,'btn_txt'),(6,23,'need_adb_flag'),(7,23,'cont'),(8,23,'close_flag'),(9,28,'id'),(10,28,'from_alert'),(11,28,'detail_flag'),(12,32,'title'),(13,32,'btn_txt'),(14,32,'need_adb_flag'),(15,32,'cont'),(16,32,'close_flag'),(17,69,'position'),(18,83,'game'),(19,83,'fromtype'),(20,90,'oriention'),(21,93,'claxx'),(22,103,'connect'),(23,112,'claxx'),(24,122,'position'),(25,122,'TYPE'),(26,128,'oriention'),(27,130,'android.intent.extra.INTENT'),(28,131,'android.intent.extra.INTENT'),(29,132,'android.intent.extra.TITLE'),(30,132,'android.intent.extra.INTENT'),(31,133,'android.intent.extra.INTENT'),(32,134,'android.intent.extra.TITLE'),(33,134,'android.intent.extra.INTENT'),(34,135,'android.intent.extra.INTENT'),(35,136,'android.intent.extra.TITLE'),(36,136,'android.intent.extra.INTENT'),(37,137,'android.intent.extra.TITLE'),(38,137,'android.intent.extra.INTENT'),(39,138,'message'),(40,138,'packageName'),(41,139,'USER_ID'),(42,139,'CLIENT_PACKAGE'),(43,139,'Offers_URL'),(44,139,'offers_webview_tag'),(45,139,'URL_PARAMS'),(46,158,'CLIENT_PACKAGE'),(47,158,'URL'),(48,158,'isFinshClose'),(49,158,'offers_webview_tag'),(50,159,'CLIENT_PACKAGE'),(51,159,'URL'),(52,159,'offers_webview_tag');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,2),(12,14,1),(13,15,3),(14,16,1),(15,19,1),(16,20,1),(17,21,3),(18,22,5),(19,28,3),(20,29,3),(21,30,5),(22,31,1),(23,32,10),(24,33,14),(25,34,14),(26,35,10),(27,35,17),(28,36,10),(29,36,17),(30,37,10),(31,37,17),(32,38,10),(33,38,17),(34,39,3),(35,40,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,4,2),(4,6,2),(5,6,1),(6,10,2),(7,14,2),(8,16,2),(9,19,2),(10,20,2),(11,22,3),(12,28,3),(13,29,3),(14,30,3),(15,31,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,15,'package',NULL,NULL,NULL,NULL,NULL),(2,21,'package',NULL,NULL,NULL,NULL,NULL),(3,22,'package',NULL,NULL,NULL,NULL,NULL),(4,28,'package',NULL,NULL,NULL,NULL,NULL),(5,29,'package',NULL,NULL,NULL,NULL,NULL),(6,30,'package',NULL,NULL,NULL,NULL,NULL),(7,39,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,3,'application','vnd.android.package-archive'),(2,4,'application','vnd.android.package-archive'),(3,7,'application','vnd.android.package-archive'),(4,8,'application','vnd.android.package-archive'),(5,26,'application','vnd.android.package-archive'),(6,29,'application','vnd.android.package-archive'),(7,47,'application','vnd.android.package-archive'),(8,64,'application','vnd.android.package-archive'),(9,67,'application','vnd.android.package-archive'),(10,84,'application','vnd.android.package-archive'),(11,87,'application','vnd.android.package-archive'),(12,89,'application','vnd.android.package-archive'),(13,95,'application','vnd.android.package-archive'),(14,96,'application','vnd.android.package-archive'),(15,98,'application','vnd.android.package-archive'),(16,101,'application','vnd.android.package-archive'),(17,105,'application','vnd.android.package-archive'),(18,107,'application','vnd.android.package-archive'),(19,110,'application','vnd.android.package-archive'),(20,114,'application','vnd.android.package-archive'),(21,116,'application','vnd.android.package-archive'),(22,118,'application','vnd.android.package-archive'),(23,120,'application','vnd.android.package-archive'),(24,124,'(.*)','(.*)'),(25,126,'application','vnd.android.package-archive'),(26,140,'application','vnd.android.package-archive'),(27,149,'(.*)','(.*)'),(28,152,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.pintugq1'),(2,2,'com.pintugq1'),(3,5,'com.pintugq1'),(4,6,'com.pintugq1'),(5,9,'com.android_isorbnymmkdsj'),(6,10,'com.pintugq1'),(7,11,'com.android_isorbnymmkdsj'),(8,12,'com.pintugq1'),(9,13,'(.*)'),(10,14,'com.pintugq1'),(11,15,''),(12,16,''),(13,17,'(.*)'),(14,18,'(.*)'),(15,19,'(.*)'),(16,20,'com.pintugq1'),(17,21,'(.*)'),(18,22,''),(19,24,''),(20,23,'com.pintugq1'),(21,25,'(.*)'),(22,28,'com.android_isorbnymmkdsj'),(23,31,'easy.crosjlaneq'),(24,33,'com.pintugq1'),(25,34,'easy.crosjlaneq'),(26,32,'com.android_isorbnymmkdsj'),(27,35,'com.pintugq1'),(28,36,'easy.crosjlaneq'),(29,37,'(.*)'),(30,38,'com.pintugq1'),(31,39,'easy.crosjlaneq'),(32,40,''),(33,41,''),(34,44,'easy.crosjlaneq'),(35,45,'(.*)'),(36,49,'com.android_isorbnymmkdsj'),(37,50,'com.pintugq1'),(38,52,'com.android_isorbnymmkdsj'),(39,53,'com.pintugq1'),(40,54,'com.jltkom.psm.awwobmiw'),(41,55,'easy.crosjlaneq'),(42,56,'com.pintugq1'),(43,57,'com.jltkom.psm.awwobmiw'),(44,60,'com.jltkom.psm.awwobmiw'),(45,59,''),(46,61,'com.android_isorbnymmkdsj'),(47,62,''),(48,63,'com.jltkom.psm.awwobmiw'),(49,66,'com.jltkom.psm.awwobmiw'),(50,65,''),(51,68,''),(52,69,'com.jltkom.psm.awwobmiw'),(53,70,''),(54,71,'com.android_isorbnymmkdsj'),(55,73,'com.jltkom.psm.awwobmiw'),(56,72,''),(57,74,'com.android_isorbnymmkdsj'),(58,76,'com.pintugq1'),(59,78,'com.jltkom.psm.awwobmiw'),(60,79,'com.pintugq1'),(61,80,'com.android_isorbnymmkdsj'),(62,82,'com.pintugq1'),(63,83,'com.android_isorbnymmkdsj'),(64,85,'com.android_isorbnymmkdsj'),(65,86,'com.jltkom.psm.awwobmiw'),(66,88,'com.jltkom.psm.awwobmiw'),(67,90,'com.jltkom.psm.awwobmiw'),(68,91,'com.jltkom.psm.awwobmiw'),(69,92,'com.android_isorbnymmkdsj'),(70,93,'com.jltkom.psm.awwobmiw'),(71,94,'com.android_isorbnymmkdsj'),(72,97,'com.jltkom.psm.awwobmiw'),(73,99,'com.android_isorbnymmkdsj'),(74,100,'com.jltkom.psm.awwobmiw'),(75,102,'(.*)'),(76,103,'com.jltkom.psm.awwobmiw'),(77,104,'(.*)'),(78,106,'com.jltkom.psm.awwobmiw'),(79,108,'com.android_isorbnymmkdsj'),(80,109,'com.jltkom.psm.awwobmiw'),(81,112,'com.jltkom.psm.awwobmiw'),(82,117,'com.android_isorbnymmkdsj'),(83,119,'com.jltkom.psm.awwobmiw'),(84,121,'com.jltkom.psm.awwobmiw'),(85,122,'com.jltkom.psm.awwobmiw'),(86,127,'com.fhkuuej.qeam'),(87,128,'com.fhkuuej.qeam'),(88,129,'com.fhkuuej.qeam'),(89,138,'com.heyzap.android'),(90,139,'ttc.vcawdrtopr.or2'),(91,141,''),(92,142,''),(93,143,'(.*)'),(94,144,'(.*)'),(95,145,''),(96,146,'(.*)'),(97,147,'ttc.vcawdrtopr.or2'),(98,154,'ttc.vcawdrtopr.or2'),(99,156,'(.*)'),(100,157,'(.*)'),(101,158,'ttc.vcawdrtopr.or2'),(102,159,'ttc.vcawdrtopr.or2'),(103,160,'(.*)'),(104,161,'(.*)'),(105,162,'ttc.vcawdrtopr.or2');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,6,0),(6,7,0),(7,8,0),(8,9,0),(9,10,0),(10,12,0),(11,13,0),(12,14,0),(13,24,0),(14,25,0),(15,30,0),(16,33,0),(17,34,0),(18,35,0),(19,57,0),(20,59,0),(21,61,0),(22,6,0),(23,62,0),(24,63,0),(25,64,0),(26,65,0),(27,66,0),(28,6,0),(29,13,0),(30,13,0),(31,98,0),(32,104,0),(33,105,0),(34,106,0),(35,107,0),(36,108,0),(37,109,0),(38,110,0),(39,108,0),(40,110,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,4,0,0),(6,5,0,0),(7,6,1,0),(8,6,1,0),(9,7,0,0),(10,8,0,0),(11,9,0,0),(12,10,0,0),(13,11,1,0),(14,12,0,0),(15,11,1,0),(16,11,1,0),(17,13,1,0),(18,11,1,0),(19,13,1,0),(20,15,0,0),(21,14,1,0),(22,14,1,0),(23,16,0,0),(24,14,1,0),(25,14,1,0),(26,17,1,0),(27,18,1,0),(28,19,0,0),(29,17,1,0),(30,18,1,0),(31,20,0,0),(32,21,0,0),(33,22,0,0),(34,23,0,0),(35,24,0,0),(36,25,0,0),(37,26,1,0),(38,24,0,0),(39,27,0,0),(40,26,1,0),(41,26,1,0),(42,28,1,0),(43,29,1,0),(44,29,0,0),(45,26,1,0),(46,30,1,0),(47,31,1,0),(48,30,1,0),(49,32,0,0),(50,34,0,0),(51,33,1,0),(52,35,0,0),(53,36,0,0),(54,37,0,0),(55,38,0,0),(56,39,0,0),(57,40,0,0),(58,41,1,0),(59,42,1,0),(60,43,0,0),(61,44,0,0),(62,42,1,0),(63,45,0,0),(64,46,1,0),(65,47,1,0),(66,48,0,0),(67,46,1,0),(68,47,1,0),(69,49,0,0),(70,50,1,0),(71,51,0,0),(72,50,1,0),(73,52,0,0),(74,51,0,0),(75,53,1,0),(76,54,0,0),(77,55,1,0),(78,56,0,0),(79,57,0,0),(80,58,0,0),(81,59,1,0),(82,60,0,0),(83,61,0,0),(84,62,1,0),(85,63,0,0),(86,64,0,0),(87,65,1,0),(88,64,0,0),(89,65,1,0),(90,66,0,0),(91,67,0,0),(92,68,0,0),(93,69,0,0),(94,70,0,0),(95,71,1,0),(96,71,1,0),(97,72,0,0),(98,73,1,0),(99,74,0,0),(100,75,0,0),(101,73,1,0),(102,76,1,0),(103,77,0,0),(104,76,1,0),(105,73,1,0),(106,78,0,0),(107,73,1,0),(108,79,0,0),(109,80,0,0),(110,73,1,0),(111,81,1,0),(112,82,0,0),(113,81,1,0),(114,73,1,0),(115,83,1,0),(116,73,1,0),(117,84,0,0),(118,73,1,0),(119,85,0,0),(120,73,1,0),(121,86,0,0),(122,87,0,0),(123,88,1,0),(124,88,1,0),(125,88,1,0),(126,89,1,0),(127,90,0,0),(128,91,0,0),(129,92,0,0),(130,93,1,0),(131,93,1,0),(132,93,1,0),(133,93,1,0),(134,93,1,0),(135,93,1,0),(136,93,1,0),(137,93,1,0),(138,94,0,0),(139,95,0,0),(140,96,1,0),(141,97,1,0),(142,97,1,0),(143,97,1,0),(144,97,1,0),(145,97,0,0),(146,97,0,0),(147,99,0,0),(148,101,1,0),(149,101,1,0),(150,101,1,0),(151,102,1,0),(152,103,1,0),(153,105,1,0),(154,108,0,0),(155,110,1,0),(156,110,1,0),(157,110,1,0),(158,111,0,0),(159,111,0,0),(160,113,1,0),(161,113,1,0),(162,114,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=634 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,17,35,2,NULL),(2,19,35,2,NULL),(3,42,35,2,NULL),(4,46,35,2,NULL),(5,48,35,2,NULL),(6,102,35,2,NULL),(7,104,35,2,NULL),(8,77,35,2,NULL),(9,111,35,2,NULL),(10,113,35,2,NULL),(11,75,35,2,NULL),(12,115,35,2,NULL),(13,123,35,2,NULL),(14,125,35,2,NULL),(15,148,35,2,NULL),(16,150,35,2,NULL),(17,160,35,2,NULL),(18,161,35,2,NULL),(19,148,1,2,NULL),(20,150,1,2,NULL),(21,148,2,2,NULL),(22,150,2,2,NULL),(23,148,3,2,NULL),(24,150,3,2,NULL),(25,148,5,2,NULL),(26,150,5,2,NULL),(27,148,6,2,NULL),(28,150,6,2,NULL),(29,148,7,2,NULL),(30,150,7,2,NULL),(31,148,8,2,NULL),(32,150,8,2,NULL),(33,148,9,2,NULL),(34,150,9,2,NULL),(35,148,10,2,NULL),(36,150,10,2,NULL),(37,148,12,2,NULL),(38,150,12,2,NULL),(39,148,13,2,NULL),(40,150,13,2,NULL),(41,148,14,2,NULL),(42,150,14,2,NULL),(43,148,25,2,NULL),(44,150,25,2,NULL),(45,148,105,2,NULL),(46,150,105,2,NULL),(47,148,106,2,NULL),(48,150,106,2,NULL),(49,148,24,2,NULL),(50,150,24,2,NULL),(51,148,33,2,NULL),(52,150,33,2,NULL),(53,148,34,2,NULL),(54,150,34,2,NULL),(55,148,57,2,NULL),(56,150,57,2,NULL),(57,148,59,2,NULL),(58,150,59,2,NULL),(59,148,107,2,NULL),(60,150,107,2,NULL),(61,148,108,2,NULL),(62,150,108,2,NULL),(63,148,109,2,NULL),(64,150,109,2,NULL),(65,148,110,2,NULL),(66,150,110,2,NULL),(67,148,62,2,NULL),(68,150,62,2,NULL),(69,148,63,2,NULL),(70,150,63,2,NULL),(71,148,64,2,NULL),(72,150,64,2,NULL),(73,148,65,2,NULL),(74,150,65,2,NULL),(75,148,66,2,NULL),(76,150,66,2,NULL),(77,148,98,2,NULL),(78,150,98,2,NULL),(79,148,104,2,NULL),(80,150,104,2,NULL),(81,162,35,2,NULL),(82,160,1,2,NULL),(83,161,1,2,NULL),(84,160,2,2,NULL),(85,161,2,2,NULL),(86,160,3,2,NULL),(87,161,3,2,NULL),(88,160,5,2,NULL),(89,161,5,2,NULL),(90,160,6,2,NULL),(91,161,6,2,NULL),(92,160,7,2,NULL),(93,161,7,2,NULL),(94,160,8,2,NULL),(95,161,8,2,NULL),(96,160,9,2,NULL),(97,161,9,2,NULL),(98,160,10,2,NULL),(99,161,10,2,NULL),(100,160,12,2,NULL),(101,161,12,2,NULL),(102,160,13,2,NULL),(103,161,13,2,NULL),(104,160,14,2,NULL),(105,161,14,2,NULL),(106,160,25,2,NULL),(107,161,25,2,NULL),(108,160,105,2,NULL),(109,161,105,2,NULL),(110,160,106,2,NULL),(111,161,106,2,NULL),(112,160,24,2,NULL),(113,161,24,2,NULL),(114,160,33,2,NULL),(115,161,33,2,NULL),(116,160,34,2,NULL),(117,161,34,2,NULL),(118,160,57,2,NULL),(119,161,57,2,NULL),(120,160,59,2,NULL),(121,161,59,2,NULL),(122,160,107,2,NULL),(123,161,107,2,NULL),(124,160,108,2,NULL),(125,161,108,2,NULL),(126,160,109,2,NULL),(127,161,109,2,NULL),(128,160,110,2,NULL),(129,161,110,2,NULL),(130,160,62,2,NULL),(131,161,62,2,NULL),(132,160,63,2,NULL),(133,161,63,2,NULL),(134,160,64,2,NULL),(135,161,64,2,NULL),(136,160,65,2,NULL),(137,161,65,2,NULL),(138,160,66,2,NULL),(139,161,66,2,NULL),(140,160,98,2,NULL),(141,161,98,2,NULL),(142,160,104,2,NULL),(143,161,104,2,NULL),(144,147,35,2,NULL),(145,154,35,2,NULL),(146,17,59,2,NULL),(147,19,59,2,NULL),(148,42,59,2,NULL),(149,46,59,2,NULL),(150,48,59,2,NULL),(151,102,59,2,NULL),(152,104,59,2,NULL),(153,77,59,2,NULL),(154,111,59,2,NULL),(155,113,59,2,NULL),(156,75,59,2,NULL),(157,115,59,2,NULL),(158,123,59,2,NULL),(159,125,59,2,NULL),(160,17,107,2,NULL),(161,19,107,2,NULL),(162,42,107,2,NULL),(163,46,107,2,NULL),(164,48,107,2,NULL),(165,102,107,2,NULL),(166,104,107,2,NULL),(167,77,107,2,NULL),(168,111,107,2,NULL),(169,113,107,2,NULL),(170,75,107,2,NULL),(171,115,107,2,NULL),(172,123,107,2,NULL),(173,125,107,2,NULL),(174,17,108,2,NULL),(175,19,108,2,NULL),(176,42,108,2,NULL),(177,46,108,2,NULL),(178,48,108,2,NULL),(179,102,108,2,NULL),(180,104,108,2,NULL),(181,77,108,2,NULL),(182,111,108,2,NULL),(183,113,108,2,NULL),(184,75,108,2,NULL),(185,115,108,2,NULL),(186,123,108,2,NULL),(187,125,108,2,NULL),(188,17,109,2,NULL),(189,19,109,2,NULL),(190,42,109,2,NULL),(191,46,109,2,NULL),(192,48,109,2,NULL),(193,102,109,2,NULL),(194,104,109,2,NULL),(195,77,109,2,NULL),(196,111,109,2,NULL),(197,113,109,2,NULL),(198,75,109,2,NULL),(199,115,109,2,NULL),(200,123,109,2,NULL),(201,125,109,2,NULL),(202,17,110,2,NULL),(203,19,110,2,NULL),(204,42,110,2,NULL),(205,46,110,2,NULL),(206,48,110,2,NULL),(207,102,110,2,NULL),(208,104,110,2,NULL),(209,77,110,2,NULL),(210,111,110,2,NULL),(211,113,110,2,NULL),(212,75,110,2,NULL),(213,115,110,2,NULL),(214,123,110,2,NULL),(215,125,110,2,NULL),(216,122,21,2,NULL),(217,17,14,2,NULL),(218,19,14,2,NULL),(219,42,14,2,NULL),(220,46,14,2,NULL),(221,48,14,2,NULL),(222,102,14,2,NULL),(223,104,14,2,NULL),(224,77,14,2,NULL),(225,111,14,2,NULL),(226,113,14,2,NULL),(227,75,14,2,NULL),(228,115,14,2,NULL),(229,123,14,2,NULL),(230,125,14,2,NULL),(231,54,18,2,NULL),(232,57,18,2,NULL),(233,17,24,2,NULL),(234,60,19,2,NULL),(235,19,24,2,NULL),(236,78,17,2,NULL),(237,42,24,2,NULL),(238,91,20,2,NULL),(239,46,24,2,NULL),(240,14,5,2,NULL),(241,121,18,2,NULL),(242,48,24,2,NULL),(243,35,5,2,NULL),(244,86,16,2,NULL),(245,102,24,2,NULL),(246,38,5,2,NULL),(247,100,16,2,NULL),(248,104,24,2,NULL),(249,106,18,2,NULL),(250,17,1,2,NULL),(251,77,24,2,NULL),(252,109,18,2,NULL),(253,19,1,2,NULL),(254,111,24,2,NULL),(255,66,16,2,NULL),(256,113,24,2,NULL),(257,42,1,2,NULL),(258,93,17,2,NULL),(259,75,24,2,NULL),(260,46,1,2,NULL),(261,73,16,2,NULL),(262,115,24,2,NULL),(263,48,1,2,NULL),(264,112,17,2,NULL),(265,123,24,2,NULL),(266,102,1,2,NULL),(267,119,16,2,NULL),(268,125,24,2,NULL),(269,69,22,2,NULL),(270,104,1,2,NULL),(271,34,27,2,NULL),(272,103,16,2,NULL),(273,77,1,2,NULL),(274,31,24,2,NULL),(275,75,1,2,NULL),(276,111,1,2,NULL),(277,115,1,2,NULL),(278,39,24,2,NULL),(279,113,1,2,NULL),(280,75,2,2,NULL),(281,17,33,2,NULL),(282,123,1,2,NULL),(283,115,2,2,NULL),(284,19,33,2,NULL),(285,125,1,2,NULL),(286,75,3,2,NULL),(287,42,33,2,NULL),(288,2,1,2,NULL),(289,115,3,2,NULL),(290,46,33,2,NULL),(291,5,1,2,NULL),(292,75,5,2,NULL),(293,48,33,2,NULL),(294,20,1,2,NULL),(295,115,5,2,NULL),(296,102,33,2,NULL),(297,33,1,2,NULL),(298,75,6,2,NULL),(299,104,33,2,NULL),(300,50,1,2,NULL),(301,115,6,2,NULL),(302,77,33,2,NULL),(303,53,5,2,NULL),(304,75,7,2,NULL),(305,111,33,2,NULL),(306,79,5,2,NULL),(307,115,7,2,NULL),(308,113,33,2,NULL),(309,17,2,2,NULL),(310,75,8,2,NULL),(311,75,33,2,NULL),(312,19,2,2,NULL),(313,115,8,2,NULL),(314,115,33,2,NULL),(315,42,2,2,NULL),(316,75,9,2,NULL),(317,123,33,2,NULL),(318,46,2,2,NULL),(319,115,9,2,NULL),(320,125,33,2,NULL),(321,48,2,2,NULL),(322,75,10,2,NULL),(323,102,2,2,NULL),(324,115,10,2,NULL),(325,104,2,2,NULL),(326,75,12,2,NULL),(327,77,2,2,NULL),(328,115,12,2,NULL),(329,111,2,2,NULL),(330,75,13,2,NULL),(331,113,2,2,NULL),(332,115,13,2,NULL),(333,123,2,2,NULL),(334,75,25,2,NULL),(335,125,2,2,NULL),(336,115,25,2,NULL),(337,76,2,2,NULL),(338,75,105,2,NULL),(339,42,3,2,NULL),(340,115,105,2,NULL),(341,46,3,2,NULL),(342,75,106,2,NULL),(343,48,3,2,NULL),(344,115,106,2,NULL),(345,17,5,2,NULL),(346,75,34,2,NULL),(347,19,5,2,NULL),(348,115,34,2,NULL),(349,17,6,2,NULL),(350,75,57,2,NULL),(351,19,6,2,NULL),(352,115,57,2,NULL),(353,17,7,2,NULL),(354,75,62,2,NULL),(355,19,7,2,NULL),(356,115,62,2,NULL),(357,17,8,2,NULL),(358,75,63,2,NULL),(359,19,8,2,NULL),(360,115,63,2,NULL),(361,17,9,2,NULL),(362,75,64,2,NULL),(363,19,9,2,NULL),(364,115,64,2,NULL),(365,102,3,2,NULL),(366,75,65,2,NULL),(367,104,3,2,NULL),(368,115,65,2,NULL),(369,17,10,2,NULL),(370,75,66,2,NULL),(371,19,10,2,NULL),(372,115,66,2,NULL),(373,77,3,2,NULL),(374,75,98,2,NULL),(375,111,3,2,NULL),(376,115,98,2,NULL),(377,113,3,2,NULL),(378,75,104,2,NULL),(379,17,12,2,NULL),(380,115,104,2,NULL),(381,19,12,2,NULL),(382,63,14,2,NULL),(383,17,13,2,NULL),(384,97,14,2,NULL),(385,19,13,2,NULL),(386,17,25,2,NULL),(387,19,25,2,NULL),(388,42,25,2,NULL),(389,17,105,2,NULL),(390,46,25,2,NULL),(391,19,105,2,NULL),(392,48,25,2,NULL),(393,17,106,2,NULL),(394,102,25,2,NULL),(395,19,106,2,NULL),(396,104,25,2,NULL),(397,17,34,2,NULL),(398,77,25,2,NULL),(399,19,34,2,NULL),(400,111,25,2,NULL),(401,123,3,2,NULL),(402,113,25,2,NULL),(403,125,3,2,NULL),(404,123,25,2,NULL),(405,17,57,2,NULL),(406,125,25,2,NULL),(407,19,57,2,NULL),(408,42,105,2,NULL),(409,17,62,2,NULL),(410,46,105,2,NULL),(411,19,62,2,NULL),(412,48,105,2,NULL),(413,17,63,2,NULL),(414,102,105,2,NULL),(415,19,63,2,NULL),(416,104,105,2,NULL),(417,17,64,2,NULL),(418,77,105,2,NULL),(419,19,64,2,NULL),(420,111,105,2,NULL),(421,17,65,2,NULL),(422,113,105,2,NULL),(423,19,65,2,NULL),(424,123,105,2,NULL),(425,17,66,2,NULL),(426,125,105,2,NULL),(427,19,66,2,NULL),(428,42,106,2,NULL),(429,17,98,2,NULL),(430,46,106,2,NULL),(431,19,98,2,NULL),(432,48,106,2,NULL),(433,17,104,2,NULL),(434,102,106,2,NULL),(435,19,104,2,NULL),(436,104,106,2,NULL),(437,12,2,2,NULL),(438,77,106,2,NULL),(439,23,4,2,NULL),(440,111,106,2,NULL),(441,42,5,2,NULL),(442,113,106,2,NULL),(443,46,5,2,NULL),(444,123,106,2,NULL),(445,48,5,2,NULL),(446,125,106,2,NULL),(447,42,6,2,NULL),(448,46,6,2,NULL),(449,48,6,2,NULL),(450,42,7,2,NULL),(451,46,7,2,NULL),(452,48,7,2,NULL),(453,42,8,2,NULL),(454,46,8,2,NULL),(455,48,8,2,NULL),(456,42,9,2,NULL),(457,46,9,2,NULL),(458,48,9,2,NULL),(459,42,10,2,NULL),(460,46,10,2,NULL),(461,48,10,2,NULL),(462,42,12,2,NULL),(463,46,12,2,NULL),(464,48,12,2,NULL),(465,42,13,2,NULL),(466,46,13,2,NULL),(467,48,13,2,NULL),(468,42,34,2,NULL),(469,46,34,2,NULL),(470,48,34,2,NULL),(471,42,57,2,NULL),(472,46,57,2,NULL),(473,48,57,2,NULL),(474,42,62,2,NULL),(475,46,62,2,NULL),(476,48,62,2,NULL),(477,42,63,2,NULL),(478,46,63,2,NULL),(479,48,63,2,NULL),(480,42,64,2,NULL),(481,46,64,2,NULL),(482,48,64,2,NULL),(483,42,65,2,NULL),(484,46,65,2,NULL),(485,48,65,2,NULL),(486,42,66,2,NULL),(487,46,66,2,NULL),(488,48,66,2,NULL),(489,42,98,2,NULL),(490,46,98,2,NULL),(491,48,98,2,NULL),(492,42,104,2,NULL),(493,46,104,2,NULL),(494,48,104,2,NULL),(495,102,5,2,NULL),(496,104,5,2,NULL),(497,77,5,2,NULL),(498,111,5,2,NULL),(499,113,5,2,NULL),(500,123,5,2,NULL),(501,125,5,2,NULL),(502,1,5,2,NULL),(503,6,5,2,NULL),(504,56,5,2,NULL),(505,102,6,2,NULL),(506,104,6,2,NULL),(507,77,6,2,NULL),(508,111,6,2,NULL),(509,113,6,2,NULL),(510,123,6,2,NULL),(511,125,6,2,NULL),(512,102,62,2,NULL),(513,104,62,2,NULL),(514,102,34,2,NULL),(515,77,62,2,NULL),(516,104,34,2,NULL),(517,111,62,2,NULL),(518,77,34,2,NULL),(519,113,62,2,NULL),(520,111,34,2,NULL),(521,123,62,2,NULL),(522,113,34,2,NULL),(523,125,62,2,NULL),(524,123,34,2,NULL),(525,102,63,2,NULL),(526,125,34,2,NULL),(527,104,63,2,NULL),(528,123,7,2,NULL),(529,77,63,2,NULL),(530,125,7,2,NULL),(531,111,63,2,NULL),(532,123,8,2,NULL),(533,113,63,2,NULL),(534,125,8,2,NULL),(535,123,63,2,NULL),(536,123,9,2,NULL),(537,125,63,2,NULL),(538,125,9,2,NULL),(539,102,64,2,NULL),(540,123,10,2,NULL),(541,104,64,2,NULL),(542,125,10,2,NULL),(543,77,64,2,NULL),(544,123,12,2,NULL),(545,111,64,2,NULL),(546,125,12,2,NULL),(547,113,64,2,NULL),(548,123,13,2,NULL),(549,123,64,2,NULL),(550,125,13,2,NULL),(551,125,64,2,NULL),(552,123,57,2,NULL),(553,102,65,2,NULL),(554,125,57,2,NULL),(555,104,65,2,NULL),(556,123,65,2,NULL),(557,77,65,2,NULL),(558,125,65,2,NULL),(559,111,65,2,NULL),(560,123,66,2,NULL),(561,113,65,2,NULL),(562,125,66,2,NULL),(563,102,66,2,NULL),(564,123,98,2,NULL),(565,104,66,2,NULL),(566,125,98,2,NULL),(567,77,66,2,NULL),(568,123,104,2,NULL),(569,111,66,2,NULL),(570,125,104,2,NULL),(571,113,66,2,NULL),(572,127,34,2,NULL),(573,102,98,2,NULL),(574,129,34,2,NULL),(575,104,98,2,NULL),(576,102,57,2,NULL),(577,77,98,2,NULL),(578,104,57,2,NULL),(579,111,98,2,NULL),(580,77,57,2,NULL),(581,113,98,2,NULL),(582,111,57,2,NULL),(583,102,104,2,NULL),(584,113,57,2,NULL),(585,104,104,2,NULL),(586,77,104,2,NULL),(587,111,104,2,NULL),(588,113,104,2,NULL),(589,49,12,2,NULL),(590,71,12,2,NULL),(591,74,12,2,NULL),(592,102,7,2,NULL),(593,104,7,2,NULL),(594,77,7,2,NULL),(595,111,7,2,NULL),(596,113,7,2,NULL),(597,9,12,2,NULL),(598,11,7,2,NULL),(599,61,7,2,NULL),(600,99,7,2,NULL),(601,108,12,2,NULL),(602,117,7,2,NULL),(603,102,8,2,NULL),(604,104,8,2,NULL),(605,77,8,2,NULL),(606,111,8,2,NULL),(607,113,8,2,NULL),(608,83,8,2,NULL),(609,102,10,2,NULL),(610,104,10,2,NULL),(611,77,9,2,NULL),(612,111,9,2,NULL),(613,113,9,2,NULL),(614,102,12,2,NULL),(615,104,12,2,NULL),(616,102,13,2,NULL),(617,104,13,2,NULL),(618,52,12,2,NULL),(619,85,7,2,NULL),(620,77,10,2,NULL),(621,111,10,2,NULL),(622,113,10,2,NULL),(623,28,8,2,NULL),(624,32,11,2,NULL),(625,77,12,2,NULL),(626,111,12,2,NULL),(627,113,12,2,NULL),(628,77,13,2,NULL),(629,111,13,2,NULL),(630,113,13,2,NULL),(631,80,12,2,NULL),(632,92,12,2,NULL),(633,94,12,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.Manifest.permission.WRITE_SECURE_SETTINGS'),(4,'android.permission.ACCESS_CACHE_FILESYSTEM'),(27,'android.permission.ACCESS_COARSE_LOCATION'),(26,'android.permission.ACCESS_FINE_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(17,'android.permission.BLUETOOTH'),(21,'android.permission.BLUETOOTH_ADMIN'),(19,'android.permission.CHANGE_WIFI_STATE'),(8,'android.permission.DELETE_CACHE_FILES'),(16,'android.permission.DISABLE_KEYGUARD'),(25,'android.permission.GET_TASKS'),(11,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(15,'android.permission.KILL_BACKGROUND_PROCESSES'),(23,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.RESTART_PACKAGES'),(24,'android.permission.SET_WALLPAPER'),(28,'android.permission.SYSTEM_ALERT_WINDOW'),(20,'android.permission.VIBRATE'),(22,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(18,'android.permission.WRITE_OWNER_FILE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(10,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'file://',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'',NULL,NULL,NULL),(12,NULL,NULL,'http://market.android.com/search?q=pub:JohnHancock',NULL,NULL,NULL),(13,NULL,NULL,'http://market.android.com/search?q=pub:superpeterpan',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'http://wapgame.189.cn',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,NULL,NULL,'market://details?id=com.heyzap.android&referrer=(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,2,2),(13,2,3),(14,2,4),(15,2,5),(16,2,6),(17,2,7),(18,2,8),(19,2,9),(20,2,10),(21,3,1),(22,3,5),(23,3,6),(24,3,9),(25,3,11),(26,3,12),(27,3,13),(28,3,14),(29,3,15),(30,3,17),(31,3,16),(32,3,19),(33,3,18),(34,3,21),(35,3,20),(36,3,22),(37,4,1),(38,4,5),(39,4,23),(40,4,6),(41,4,25),(42,4,24),(43,4,9),(44,4,12),(45,5,1),(46,5,5),(47,5,6),(48,5,9),(49,6,1),(50,5,27),(51,6,20),(52,5,26),(53,6,5),(54,5,12),(55,6,6),(56,6,9),(57,6,12),(58,7,1),(59,7,2),(60,7,20),(61,7,5),(62,7,6),(63,7,22),(64,7,25),(65,7,9),(66,7,28);
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
