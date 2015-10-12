-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_116
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
INSERT INTO `ActionStrings` VALUES (20,'(.*)'),(30,'android.intent.action.BATTERY_CHANGED'),(9,'android.intent.action.BATTERY_CHANGED_ACTION'),(8,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.CALL'),(32,'android.intent.action.CHOOSER'),(2,'android.intent.action.CREATE_SHORTCUT'),(22,'android.intent.action.DIAL'),(25,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(11,'android.intent.action.NEW_OUTGOING_CALL'),(4,'android.intent.action.PACKAGE_ADDED'),(5,'android.intent.action.PACKAGE_REMOVED'),(6,'android.intent.action.PACKAGE_REPLACED'),(18,'android.intent.action.SCREEN_OFF'),(29,'android.intent.action.SCREEN_ON'),(28,'android.intent.action.SEARCH'),(23,'android.intent.action.SEND'),(24,'android.intent.action.SENDTO'),(7,'android.intent.action.SIG_STR'),(19,'android.intent.action.USER_PRESENT'),(14,'android.intent.action.VIEW'),(27,'android.intent.action.WEB_SEARCH'),(10,'android.net.conn.CONNECTIVITY_CHANGE'),(26,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(12,'android.service.wallpaper.WallpaperService'),(15,'com.android.launcher.action.INSTALL_SHORTCUT'),(31,'com.android.music.musicservicecommand'),(16,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(21,'com/alipay/android/app/IAlixPay'),(13,'eu.chainfire.new.SHORTCUT_EXECUTE'),(3,'eu.chainfire.new.SHORTCUT_TOGGLE');
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
INSERT INTO `Applications` VALUES (1,'eu.chainfire.new',35),(2,'com.wqx.blackjack',7),(3,'com.aijiaoyou.android.sipphone',1005),(4,'com.evilsunflower.xiaoxiaole',3),(5,'com.livegame.wallpaperxuehua',1),(6,'com.alan',4),(7,'com.evilsunflower.reader.evilHonglou1',1);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'eu.chainfire.new.MainActivity'),(2,1,'eu.chainfire.new.LauncherShortcuts'),(3,1,'eu.chainfire.new.ToggleActivity'),(4,1,'com.airpuh.ad.UpdateCheck'),(5,1,'eu.chainfire.new.InstallReceiver'),(6,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(7,2,'com.wqx.blackjack.Blackjack'),(8,2,'com.wqx.blackjack.Card'),(9,2,'com.google.update.Dialog'),(10,2,'com.google.update.UpdateService'),(11,2,'com.google.update.Receiver'),(12,3,'com.aijiaoyou.android.sipphone.InitOnlineActivity'),(13,3,'com.aijiaoyou.android.sipphone.OnlineActivity'),(14,3,'com.aijiaoyou.android.sipphone.AgentDetialInfo'),(15,3,'com.aijiaoyou.android.sipphone.SongListActivity'),(16,3,'com.aijiaoyou.android.sipphone.HistoryDetailActivity'),(17,3,'com.aijiaoyou.android.sipphone.ChongZhiActivity'),(18,3,'com.aijiaoyou.android.sipphone.ZhiFuBaoChongZhiActivity'),(19,3,'org.linphone.LinphonePreferencesActivity11'),(20,3,'org.linphone.LinphoneService'),(21,3,'com.mjdc.sapp.service.ConnectService'),(22,3,'com.mjdc.sapp.service.BehindService'),(23,3,'org.linphone.NetworkManager'),(24,3,'org.linphone.OutgoingCallReceiver'),(25,3,'org.linphone.BootReceiver'),(26,3,'com.mjdc.sapp.receiver.SigChangeReceiver'),(27,3,'com.mjdc.sapp.receiver.BootReceiver'),(28,4,'com.evilsunflower.xiaoxiaole.MainView'),(29,4,'com.google.ads.AdActivity'),(30,4,'com.vpon.adon.android.WebInApp'),(31,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,4,'com.evilsunflower.xiaoxiaole.ShowTips'),(33,4,'com.evilsunflower.xiaoxiaole.UpdateService'),(34,4,'com.evilsunflower.xiaoxiaole.Receiver'),(35,5,'com.livegame.wallpaperxuehua.MainActivity'),(36,5,'com.livegame.wallpaperxuehua.SettingsActivity'),(37,5,'com.livegame.wallpaperxuehua.SelectFolderActivity'),(38,5,'com.google.ads.AdActivity'),(39,5,'com.vpon.adon.android.WebInApp'),(40,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(41,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(42,5,'com.waps.OffersWebView'),(43,5,'com.google.update.Dialog'),(44,5,'com.livegame.wallpaperxuehua.WallpaperSlideshow'),(45,5,'com.google.update.UpdateService'),(46,5,'com.google.update.Receiver'),(47,6,'com.alan.LoverExpression'),(48,6,'com.alan.AddExpression'),(49,6,'com.alan.EditExpression'),(50,6,'com.alan.PlayExpression'),(51,6,'com.alan.AddBg'),(52,6,'com.alan.Setting'),(53,6,'com.alan.Help'),(54,6,'com.alan.YoumiActivity'),(55,6,'com.google.ads.AdActivity'),(56,6,'com.vpon.adon.android.WebInApp'),(57,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(58,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(59,6,'com.waps.OffersWebView'),(60,6,'com.google.update.Dialog'),(61,6,'com.google.update.UpdateService'),(62,6,'com.google.update.Receiver'),(63,2,'com.google.update.Dialog$1'),(64,1,'eu.chainfire.new.j'),(65,1,'eu.chainfire.new.l'),(66,1,'eu.chainfire.new.as'),(67,2,'com.google.update.UpdateService$AA'),(68,1,'eu.chainfire.new.aa'),(69,1,'eu.chainfire.new.x'),(70,2,'com.google.update.Dialog$2'),(71,3,'com.aijiaoyou.android.sipphone.OnlineActivity$11'),(72,3,'com.mjdc.sapp.service.ConnectService$ConnectChangeReceiver'),(73,4,'com.google.ads.util.AdUtil$UserActivityReceiver'),(74,3,'com.alipay.android.MobileSecurePayer'),(75,4,'com.evilsunflower.xiaoxiaole.ShowTips$1'),(76,4,'com.adwo.adsdk.g'),(77,5,'com.ju6.a'),(78,5,'com.waps.z'),(79,6,'com.google.update.UpdateService$MyThread'),(80,5,'com.waps.AppConnect'),(81,5,'com.waps.ac'),(82,5,'com.livegame.wallpaperxuehua.MainActivity$1'),(83,6,'com.google.update.Dialog$2'),(84,5,'com.waps.q'),(85,5,'com.waps.o'),(86,5,'com.google.update.Dialog$1'),(87,5,'com.google.update.Dialog$2'),(88,6,'com.google.update.Dialog$1'),(89,5,'com.waps.aa'),(90,4,'com.madhouse.android.ads._'),(91,6,'com.waps.m'),(92,6,'com.waps.AppConnect'),(93,5,'com.livegame.wallpaperxuehua.MainActivity$2'),(94,5,'com.google.update.UpdateService$AA'),(95,6,'com.waps.k'),(96,6,'com.ju6.a'),(97,7,'com.evilsunflower.reader.evilHonglou1.BugReportActivity'),(98,7,'com.evilsunflower.reader.FBReader'),(99,7,'com.evilsunflower.reader.CancelActivity'),(100,7,'com.evilsunflower.reader.image.ImageViewActivity'),(101,7,'com.evilsunflower.reader.TOCActivity'),(102,7,'com.evilsunflower.reader.BookmarksActivity'),(103,7,'com.evilsunflower.reader.control.ShowTips'),(104,7,'com.evilsunflower.reader.BookmarkEditActivity'),(105,7,'com.evilsunflower.reader.Starter'),(106,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(107,7,'com.vpon.adon.android.WebInApp'),(108,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(109,7,'com.millennialmedia.android.VideoPlayer'),(110,7,'net.youmi.android.AdActivity'),(111,7,'com.google.ads.AdActivity'),(112,7,'com.guohead.sdk.GuoheAdActivity'),(113,7,'cn.domob.android.ads.DomobActivity'),(114,7,'com.evilsunflower.reader.control.UpdateService'),(115,7,'com.evilsunflower.reader.control.Receiver'),(116,7,'com.adwo.adsdk.M'),(117,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(118,7,'net.youmi.android.be'),(119,7,'com.baidu.as'),(120,7,'com.evilsunflower.reader.control.ShowTips$1'),(121,7,'com.ju6.c'),(122,7,'net.youmi.android.eo'),(123,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(124,7,'com.ju6.mms.pdu.PduPersister'),(125,7,'com.ju6.mms.util.SqliteWrapper'),(126,7,'com.evilsunflower.reader.ui.ZLAndroidActivity'),(127,7,'com.baidu.al'),(128,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(129,7,'com.madhouse.android.ads._'),(130,7,'com.millennialmedia.android.MillennialMediaView'),(131,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(132,7,'net.youmi.android.t');
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
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'mLoseCount'),(2,8,'mMoney'),(3,8,'mCurrentScore'),(4,9,'MSG'),(5,6,'shouldMakeOverlayTransparent'),(6,8,'mWinCount'),(7,7,'mCurrentScore'),(8,6,'overlayTransition'),(9,1,'target_app'),(10,6,'shouldResizeOverlay'),(11,10,'ST_MY_PID'),(12,4,'MYAD_PID'),(13,8,'mLoseCount'),(14,6,'shouldShowTitlebar'),(15,6,'url'),(16,1,'prefscreen'),(17,6,'overlayTitle'),(18,3,'force'),(19,8,'mStartTime'),(20,7,'mMoney'),(21,7,'mStartTime'),(22,6,'shouldShowBottomBar'),(23,7,'mMaxScore'),(24,6,'transitionTime'),(25,7,'mWinCount'),(26,7,'Blackjack'),(27,10,'ST_START_DELAY'),(28,6,'shouldEnableBottomBar'),(29,9,'TYPEdsada'),(30,8,'mMaxScore'),(31,14,'city'),(32,14,'age'),(33,14,'nickname'),(34,23,'noConnectivity'),(35,14,'state'),(36,14,'sign'),(37,30,'adWidth'),(38,33,'SAFE_START'),(39,30,'url'),(40,31,'overlayTransition'),(41,29,'action'),(42,31,'overlayTitle'),(43,32,'MM'),(44,31,'url'),(45,14,'fee'),(46,14,'sex'),(47,14,'largeimgurl'),(48,33,'SAFE_PID'),(49,24,'android.intent.extra.PHONE_NUMBER'),(50,23,'networkInfo'),(51,29,'params'),(52,31,'shouldShowTitlebar'),(53,29,'com.google.ads.AdOpener'),(54,31,'shouldEnableBottomBar'),(55,14,'phone'),(56,35,'DEVICE_ID'),(57,42,'DEVICE_ID'),(58,45,'ST_START_DELAY'),(59,42,'Notify_Id'),(60,35,'APP_ID'),(61,42,'APP_ID'),(62,41,'shouldResizeOverlay'),(63,40,'Adwo_PID'),(64,42,'SHWO_FLAG'),(65,58,'shouldEnableBottomBar'),(66,58,'shouldShowTitlebar'),(67,59,'URL_PARAMS'),(68,59,'USER_ID'),(69,58,'overlayTransition'),(70,47,'description'),(71,61,'ST_MY_PID'),(72,42,'CLIENT_PACKAGE'),(73,58,'shouldMakeOverlayTransparent'),(74,42,'Notify_Url_Params'),(75,59,'Offers_URL'),(76,42,'UrlPath'),(77,58,'shouldResizeOverlay'),(78,41,'shouldMakeOverlayTransparent'),(79,55,'action'),(80,42,'URL_PARAMS'),(81,39,'url'),(82,39,'adWidth'),(83,35,'WAPS_ID'),(84,42,'WAPS_ID'),(85,42,'URL'),(86,57,'Adwo_PID'),(87,42,'isFinshClose'),(88,41,'overlayTransition'),(89,57,'isTestMode'),(90,58,'overlayTitle'),(91,55,'com.google.ads.AdOpener'),(92,60,'MSG'),(93,50,'content'),(94,59,'isFinshClose'),(95,42,'USER_ID'),(96,47,'WAPS_PID'),(97,41,'url'),(98,56,'adWidth'),(99,41,'overlayTitle'),(100,50,'image_id'),(101,42,'Offers_URL'),(102,49,'id'),(103,41,'shouldShowBottomBar'),(104,56,'url'),(105,49,'type'),(106,55,'params'),(107,42,'ACTIVITY_FLAG'),(108,31,'shouldResizeOverlay'),(109,41,'shouldShowTitlebar'),(110,31,'transitionTime'),(111,41,'transitionTime'),(112,45,'ST_MY_PID'),(113,59,'CLIENT_PACKAGE'),(114,40,'isTestMode'),(115,36,'folder'),(116,47,'APP_ID'),(117,43,'TYPEdsada'),(118,30,'(.*)'),(119,31,'shouldShowBottomBar'),(120,47,'DEVICE_ID'),(121,47,'CLIENT_PACKAGE'),(122,35,'WAPS_PID'),(123,42,'WAPS_PID'),(124,58,'shouldShowBottomBar'),(125,41,'shouldEnableBottomBar'),(126,31,'shouldMakeOverlayTransparent'),(127,47,'content'),(128,49,'content'),(129,50,'theme_id'),(130,58,'transitionTime'),(131,43,'MSG'),(132,42,'offers_webview_tag'),(133,35,'CLIENT_PACKAGE'),(134,60,'TYPEdsada'),(135,49,'theme_id'),(136,59,'URL'),(137,50,'type'),(138,61,'ST_START_DELAY'),(139,58,'url'),(140,47,'WAPS_ID'),(141,79,'ADUrl'),(142,72,'ADUrl'),(143,68,'ADUrl'),(144,80,'ADUrl'),(145,78,'shouldResizeOverlay'),(146,84,'SAFE_PID'),(147,68,'Adwo_PID'),(148,78,'shouldShowBottomBar'),(149,76,'url'),(150,76,'shouldResizeOverlay'),(151,78,'overlayTransition'),(152,80,'D780FBF4215247bcBB1AC0AD33C474FE'),(153,79,'adName'),(154,76,'transitionTime'),(155,76,'shouldShowBottomBar'),(156,78,'overlayTitle'),(157,72,'query'),(158,79,'logSet'),(159,78,'transitionTime'),(160,76,'overlayTransition'),(161,68,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(162,76,'shouldEnableBottomBar'),(163,76,'overlayTitle'),(164,68,'Wooboo_PID'),(165,77,'adWidth'),(166,80,'172C94EDC717477aBF600D7898A64A8E'),(167,78,'canAccelerate'),(168,76,'shouldShowTitlebar'),(169,79,'videoCompleted'),(170,79,'videoPosition'),(171,78,'shouldShowTitlebar'),(172,68,'query'),(173,78,'cachedAdView'),(174,68,'GH_APPKEY'),(175,79,'videoAd'),(176,79,'isCachedAd'),(177,84,'SAFE_START'),(178,76,'shouldMakeOverlayTransparent'),(179,77,'url'),(180,73,'MM'),(181,68,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(182,78,'shouldEnableBottomBar'),(183,80,'EB80F3291A8E469c962CA133BDC549D7'),(184,80,'D50EF1926ADD471892E72BCE6D7E032C'),(185,68,'Market_ID'),(186,79,'cached'),(187,78,'shouldMakeOverlayTransparent'),(188,82,'link'),(189,79,'shouldShowBottomBar');
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',1,23,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,72,'r',1,NULL,NULL),(64,73,'r',1,NULL,NULL),(65,84,'r',1,NULL,NULL),(66,91,'r',1,NULL,NULL),(67,97,'a',0,NULL,NULL),(68,98,'a',1,NULL,NULL),(69,99,'a',0,NULL,NULL),(70,100,'a',0,NULL,NULL),(71,101,'a',0,NULL,NULL),(72,102,'a',1,NULL,NULL),(73,103,'a',0,NULL,NULL),(74,104,'a',0,NULL,NULL),(75,105,'a',0,NULL,NULL),(76,106,'a',0,NULL,NULL),(77,107,'a',0,NULL,NULL),(78,108,'a',0,NULL,NULL),(79,109,'a',0,NULL,NULL),(80,110,'a',0,NULL,NULL),(81,111,'a',0,NULL,NULL),(82,112,'a',0,NULL,NULL),(83,113,'a',0,NULL,NULL),(84,114,'s',0,NULL,NULL),(85,115,'r',1,NULL,NULL),(86,116,'r',1,NULL,NULL),(87,122,'r',1,NULL,NULL),(88,123,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,11),(2,2,9),(3,3,1),(4,4,10),(5,5,1),(6,6,1),(7,7,10),(8,8,1),(9,9,7),(10,10,1),(11,11,10),(12,12,2),(13,13,1),(14,14,7),(15,15,7),(16,16,9),(17,17,13),(18,18,13),(19,19,13),(20,20,13),(21,21,14),(22,22,27),(23,23,24),(24,24,25),(25,25,13),(26,26,29),(27,27,26),(28,28,18),(29,29,13),(30,30,32),(31,31,13),(32,32,28),(33,33,14),(34,34,28),(35,35,45),(36,36,42),(37,37,46),(38,38,61),(39,39,35),(40,40,61),(41,41,45),(42,42,47),(43,43,42),(44,43,37),(45,44,47),(46,45,35),(47,46,60),(48,47,47),(49,48,42),(50,49,61),(51,50,43),(52,51,47),(53,52,43),(54,53,42),(55,54,60),(56,55,42),(57,56,55),(58,57,30),(59,58,42),(60,59,34),(61,60,62),(62,61,45),(63,62,47),(64,63,35),(65,64,47),(66,65,45),(67,66,59),(68,67,61),(69,68,47),(70,69,80),(71,70,80),(72,71,72),(73,71,80),(74,71,68),(75,72,73),(76,73,68),(77,74,68),(78,75,68),(79,75,72),(80,75,79),(81,75,80),(82,76,68),(83,77,68),(84,78,68),(85,79,68),(86,80,85),(87,81,68),(88,81,80),(89,81,79),(90,81,72),(91,82,72),(92,82,68),(93,82,79),(94,82,80),(95,83,79),(96,83,80),(97,83,72),(98,83,68),(99,84,68),(100,85,68),(101,86,80),(102,86,79),(103,86,68),(104,86,72),(105,87,68),(106,88,72),(107,89,72),(108,89,80),(109,89,68),(110,90,79),(111,90,80),(112,90,68),(113,90,72),(114,91,72),(115,91,68),(116,91,80),(117,92,72),(118,92,68),(119,92,80),(120,93,68),(121,94,72),(122,94,80),(123,94,79),(124,94,68),(125,95,68),(126,96,68),(127,96,79),(128,96,80),(129,96,72),(130,97,80),(131,97,68),(132,97,72),(133,98,80);
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,11,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(2,63,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(3,64,'<eu.chainfire.new.j: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',69,'a',NULL),(4,10,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(5,65,'<eu.chainfire.new.l: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'a',NULL),(6,66,'<eu.chainfire.new.as: boolean onPreferenceClick(android.preference.Preference)>',7,'a',NULL),(7,67,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(8,1,'<eu.chainfire.new.MainActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(9,7,'<com.wqx.blackjack.Blackjack: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(10,68,'<eu.chainfire.new.aa: void onClick(android.view.View)>',19,'a',NULL),(11,10,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(12,2,'<eu.chainfire.new.LauncherShortcuts: android.content.Intent a(android.app.Activity,boolean)>',16,'r',NULL),(13,69,'<eu.chainfire.new.x: void onClick(android.view.View)>',17,'a',NULL),(14,7,'<com.wqx.blackjack.Blackjack: boolean onKeyDown(int,android.view.KeyEvent)>',37,'a',NULL),(15,7,'<com.wqx.blackjack.Blackjack: void onClick(android.view.View)>',33,'a',NULL),(16,70,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(17,13,'<com.aijiaoyou.android.sipphone.OnlineActivity: void jumpChongZhi()>',10,'a',NULL),(18,71,'<com.aijiaoyou.android.sipphone.OnlineActivity$11: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(19,13,'<com.aijiaoyou.android.sipphone.OnlineActivity: void runChongZhi()>',10,'a',NULL),(20,13,'<com.aijiaoyou.android.sipphone.OnlineActivity: void onCreate(android.os.Bundle)>',11,'s',NULL),(21,14,'<com.aijiaoyou.android.sipphone.AgentDetialInfo: void jumpChongZhi()>',10,'a',NULL),(22,27,'<com.mjdc.sapp.receiver.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(23,24,'<org.linphone.OutgoingCallReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'a',NULL),(24,25,'<org.linphone.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(25,13,'<com.aijiaoyou.android.sipphone.OnlineActivity: void runHistory()>',4,'a',NULL),(26,29,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(27,26,'<com.mjdc.sapp.receiver.SigChangeReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(28,74,'<com.alipay.android.MobileSecurePayer: boolean pay(java.lang.String,android.os.Handler,int,android.app.Activity)>',20,'s',NULL),(29,13,'<com.aijiaoyou.android.sipphone.OnlineActivity: void startVoiceActivity()>',4,'a',NULL),(30,75,'<com.evilsunflower.xiaoxiaole.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(31,13,'<com.aijiaoyou.android.sipphone.OnlineActivity: void onResume()>',77,'a',NULL),(32,28,'<com.evilsunflower.xiaoxiaole.MainView: void onCreate(android.os.Bundle)>',56,'s',NULL),(33,14,'<com.aijiaoyou.android.sipphone.AgentDetialInfo: void runChongZhi()>',10,'a',NULL),(34,76,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(35,77,'<com.ju6.a: boolean b()>',178,'p',NULL),(36,78,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(37,46,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(38,79,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(39,80,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(40,61,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(41,45,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(42,47,'<com.alan.LoverExpression: boolean onContextItemSelected(android.view.MenuItem)>',38,'a',NULL),(43,81,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(44,47,'<com.alan.LoverExpression: boolean onOptionsItemSelected(android.view.MenuItem)>',35,'a',NULL),(45,82,'<com.livegame.wallpaperxuehua.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(46,83,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(47,47,'<com.alan.LoverExpression: boolean onContextItemSelected(android.view.MenuItem)>',66,'a',NULL),(48,85,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(49,61,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(50,86,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(51,47,'<com.alan.LoverExpression: boolean onContextItemSelected(android.view.MenuItem)>',32,'a',NULL),(52,87,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(53,42,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(54,88,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(55,89,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(56,55,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(57,90,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(58,42,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(59,34,'<com.evilsunflower.xiaoxiaole.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(60,62,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(61,45,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(62,92,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(63,93,'<com.livegame.wallpaperxuehua.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(64,47,'<com.alan.LoverExpression: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(65,94,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(66,95,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(67,96,'<com.ju6.a: boolean b()>',178,'p',NULL),(68,47,'<com.alan.LoverExpression: boolean onOptionsItemSelected(android.view.MenuItem)>',39,'a',NULL),(69,117,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(70,118,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(71,119,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(72,120,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(73,121,'<com.ju6.c: boolean b()>',195,'p',0),(74,121,'<com.ju6.c: void run()>',146,'p',NULL),(75,109,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(76,124,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(77,125,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(78,121,'<com.ju6.c: boolean b()>',272,'p',NULL),(79,98,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(80,115,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(81,109,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(82,109,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(83,109,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(84,121,'<com.ju6.c: boolean b()>',192,'p',NULL),(85,125,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(86,109,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(87,126,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(88,102,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(89,127,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(90,109,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(91,128,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(92,129,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(93,125,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(94,130,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(95,98,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(96,109,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(97,131,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(98,132,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,1),(2,3,1),(3,4,13),(4,6,13),(5,8,14),(6,9,1),(7,10,1),(8,13,13),(9,15,15),(10,17,13),(11,20,16),(12,33,17),(13,35,1),(14,37,14),(15,39,20),(16,40,21),(17,41,20),(18,43,1),(19,45,1),(20,50,22),(21,51,23),(22,52,24),(23,53,14),(24,54,24),(25,55,23),(26,56,14),(27,57,23),(28,59,14),(29,60,1),(30,61,14),(31,62,1),(32,64,22),(33,65,14),(34,67,14),(35,70,14),(36,72,24),(37,73,23),(38,74,25),(39,76,23),(40,77,23),(41,79,23),(42,80,26),(43,81,16),(44,82,24),(45,84,14),(46,85,14),(47,86,14),(48,88,23),(49,89,14),(50,91,1),(51,94,23),(52,95,1),(53,96,14),(54,97,16),(55,98,24),(56,99,14),(57,101,1),(58,102,1),(59,103,1),(60,104,27),(61,105,1),(62,106,14),(63,108,27),(64,109,20),(65,110,23),(66,111,14),(67,113,14),(68,114,20),(69,115,22),(70,124,1),(71,125,1),(72,126,14),(73,128,23),(74,129,14),(75,130,14),(76,131,14),(77,132,14),(78,133,14),(79,134,14),(80,135,14),(81,136,14),(82,137,14),(83,138,14),(84,139,1),(85,140,1),(86,144,22),(87,146,14),(88,147,14),(89,150,14),(90,151,14),(91,153,31),(92,155,14),(93,157,32),(94,158,32),(95,159,32),(96,160,32),(97,161,32),(98,162,32),(99,163,32),(100,164,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,1),(2,3,3),(3,9,1),(4,10,3),(5,43,1),(6,45,3),(7,60,3),(8,62,1),(9,91,1),(10,95,3),(11,101,1),(12,102,1),(13,103,3),(14,105,3),(15,109,4),(16,113,4),(17,114,4),(18,124,1),(19,125,3),(20,139,1),(21,140,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/update/UpdateService'),(2,4,'eu.chainfire.new.ToggleActivity'),(3,5,'com/google/update/Dialog'),(4,7,'com/google/update/Dialog'),(5,6,'eu.chainfire.new.ToggleActivity'),(6,11,'com/airpuh/ad/UpdateCheck'),(7,12,'com/wqx/blackjack/Blackjack'),(8,13,'eu.chainfire.new.ToggleActivity'),(9,14,'com/google/update/Dialog'),(10,16,'com/google/update/Dialog'),(11,17,'eu.chainfire.new.ToggleActivity'),(12,18,'com/wqx/blackjack/Card'),(13,19,'com/wqx/blackjack/Card'),(14,22,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(15,23,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(16,24,'com/aijiaoyou/android/sipphone/AgentDetialInfo'),(17,26,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(18,27,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(19,28,'org/linphone/LinphoneService'),(20,30,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(21,31,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(22,32,'com/mjdc/sapp/service/ConnectService'),(23,34,'com/aijiaoyou/android/sipphone/OnlineActivity'),(24,35,'org/linphone/LinphoneService'),(25,36,'com/aijiaoyou/android/sipphone/HistoryDetailActivity'),(26,38,'com/mjdc/sapp/service/ConnectService'),(27,42,'com/aijiaoyou/android/sipphone/SongListActivity'),(28,44,'com/aijiaoyou/android/sipphone/AgentDetialInfo'),(29,46,'com/evilsunflower/xiaoxiaole/UpdateService'),(30,48,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(31,49,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(32,58,'com/google/update/UpdateService'),(33,61,'com.google.android.maps.MapsActivity'),(34,63,'com/waps/OffersWebView'),(35,66,'com/google/update/Dialog'),(36,68,'com/google/update/Dialog'),(37,69,'com/google/update/Dialog'),(38,71,'com/google/update/Dialog'),(39,75,'NULL-CONSTANT'),(40,78,'com/alan/AddExpression'),(41,83,'com/alan/EditExpression'),(42,85,'com/adwo/adsdk/AdwoAdBrowserActivity'),(43,87,'com/google/update/Dialog'),(44,90,'com/google/update/Dialog'),(45,89,'com.google.android.maps.MapsActivity'),(46,93,'com/alan/PlayExpression'),(47,96,'com.google.android.maps.MapsActivity'),(48,99,'com.google.android.maps.MapsActivity'),(49,107,'com/waps/OffersWebView'),(50,111,'com.google.android.maps.MapsActivity'),(51,112,'com/waps/OffersWebView'),(52,116,'(.*)'),(53,117,'com/evilsunflower/xiaoxiaole/UpdateService'),(54,118,'com/google/update/UpdateService'),(55,119,'com/google/update/Dialog'),(56,120,'com/google/update/Dialog'),(57,121,'com/waps/OffersWebView'),(58,122,'com/livegame/wallpaperxuehua/SettingsActivity'),(59,123,'com/alan/Help'),(60,127,'com/alan/Setting'),(61,141,'com/millennialmedia/android/MMAdViewOverlayActivity'),(62,142,'com.evilsunflower.reader.FBReader'),(63,143,'com/evilsunflower/reader/control/UpdateService'),(64,145,'com/millennialmedia/android/MMAdViewOverlayActivity'),(65,148,'com/evilsunflower/reader/control/UpdateService'),(66,149,'com/evilsunflower/reader/BookmarkEditActivity'),(67,150,'com.android.browser.BrowserActivity'),(68,154,'com.evilsunflower.reader.FBReader');
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
INSERT INTO `IData` VALUES (1,8,1),(2,33,2),(3,34,3),(4,37,4),(5,39,5),(6,41,6),(7,50,7),(8,51,8),(9,52,9),(10,53,11),(11,54,12),(12,55,13),(13,56,14),(14,57,15),(15,59,16),(16,64,17),(17,65,18),(18,67,19),(19,72,20),(20,73,21),(21,79,22),(22,84,23),(23,88,24),(24,86,25),(25,89,26),(26,94,27),(27,96,28),(28,98,29),(29,99,30),(30,106,31),(31,110,32),(32,109,33),(33,111,34),(34,113,35),(35,114,36),(36,126,38),(37,129,40),(38,130,41),(39,131,42),(40,132,43),(41,133,44),(42,134,45),(43,135,46),(44,136,47),(45,137,48),(46,138,49),(47,141,51),(48,144,56),(49,145,57),(50,146,58),(51,147,62),(52,150,63),(53,151,64),(54,155,67);
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'force'),(2,5,'MSG'),(3,5,'TYPEdsada'),(4,7,'TYPEdsada'),(5,6,'force'),(6,13,'force'),(7,14,'MSG'),(8,14,'TYPEdsada'),(9,15,'android.intent.extra.shortcut.NAME'),(10,16,'TYPEdsada'),(11,15,'android.intent.extra.shortcut.ICON_RESOURCE'),(12,15,'android.intent.extra.shortcut.INTENT'),(13,18,'mMaxScore'),(14,17,'force'),(15,18,'mMoney'),(16,18,'mWinCount'),(17,18,'mLoseCount'),(18,18,'mStartTime'),(19,18,'mCurrentScore'),(20,19,'mMaxScore'),(21,19,'mMoney'),(22,19,'mWinCount'),(23,19,'mLoseCount'),(24,19,'mStartTime'),(25,19,'mCurrentScore'),(26,24,'sign'),(27,24,'fee'),(28,24,'phone'),(29,24,'sex'),(30,24,'largeimgurl'),(31,24,'nickname'),(32,24,'age'),(33,24,'state'),(34,24,'city'),(35,44,'sign'),(36,44,'fee'),(37,44,'sex'),(38,44,'phone'),(39,44,'nickname'),(40,44,'largeimgurl'),(41,44,'state'),(42,44,'callflag'),(43,44,'city'),(44,51,'android.intent.extra.TEXT'),(45,51,'android.intent.extra.SUBJECT'),(46,51,'android.intent.extra.EMAIL'),(47,52,'sms_body'),(48,55,'android.intent.extra.EMAIL'),(49,57,'android.intent.extra.TEXT'),(50,57,'android.intent.extra.EMAIL'),(51,63,'USER_ID'),(52,63,'CLIENT_PACKAGE'),(53,63,'Offers_URL'),(54,63,'offers_webview_tag'),(55,63,'URL_PARAMS'),(56,66,'MSG'),(57,66,'TYPEdsada'),(58,68,'TYPEdsada'),(59,69,'TYPEdsada'),(60,71,'MSG'),(61,71,'TYPEdsada'),(62,73,'android.intent.extra.EMAIL'),(63,77,'android.intent.extra.TEXT'),(64,77,'android.intent.extra.SUBJECT'),(65,77,'android.intent.extra.EMAIL'),(66,79,'android.intent.extra.TEXT'),(67,80,'android.live_wallpaper.package'),(68,79,'android.intent.extra.SUBJECT'),(69,80,'android.live_wallpaper.settings'),(70,79,'android.intent.extra.EMAIL'),(71,83,'content'),(72,83,'id'),(73,83,'theme_id'),(74,83,'type'),(75,85,'url'),(76,87,'MSG'),(77,87,'TYPEdsada'),(78,90,'TYPEdsada'),(79,93,'theme_id'),(80,93,'content'),(81,94,'android.intent.extra.TEXT'),(82,93,'type'),(83,94,'android.intent.extra.EMAIL'),(84,93,'image_id'),(85,98,'sms_body'),(86,104,'query'),(87,107,'Notify_Url_Params'),(88,107,'UrlPath'),(89,107,'ACTIVITY_FLAG'),(90,107,'isFinshClose'),(91,107,'offers_webview_tag'),(92,112,'UrlPath'),(93,112,'ACTIVITY_FLAG'),(94,112,'isFinshClose'),(95,112,'offers_webview_tag'),(96,119,'TYPEdsada'),(97,120,'MSG'),(98,120,'TYPEdsada'),(99,121,'USER_ID'),(100,121,'CLIENT_PACKAGE'),(101,121,'Offers_URL'),(102,121,'URL_PARAMS'),(103,128,'android.intent.extra.TEXT'),(104,128,'android.intent.extra.SUBJECT'),(105,128,'android.intent.extra.EMAIL'),(106,141,'cachedAdView'),(107,145,'cachedAdView'),(108,153,'command'),(109,157,'android.intent.extra.INTENT'),(110,158,'android.intent.extra.INTENT'),(111,159,'android.intent.extra.TITLE'),(112,159,'android.intent.extra.INTENT'),(113,160,'android.intent.extra.INTENT'),(114,161,'android.intent.extra.TITLE'),(115,161,'android.intent.extra.INTENT'),(116,162,'android.intent.extra.INTENT'),(117,163,'android.intent.extra.TITLE'),(118,163,'android.intent.extra.INTENT'),(119,164,'android.intent.extra.TITLE'),(120,164,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,4,5),(6,4,6),(7,5,1),(8,6,8),(9,6,7),(10,6,9),(11,7,1),(12,8,1),(13,9,10),(14,10,11),(15,11,8),(16,12,7),(17,12,9),(18,13,8),(19,14,1),(20,15,8),(21,15,9),(22,15,7),(23,16,1),(24,17,12),(25,18,7),(26,18,8),(27,18,9),(28,19,1),(29,20,9),(30,20,8),(31,20,7),(32,21,10),(33,22,19),(34,22,18),(35,23,4),(36,24,4),(37,25,1),(38,26,28),(39,27,28),(40,28,7),(41,28,8),(42,28,9),(43,29,29),(44,29,18),(45,30,30),(46,31,30),(47,32,30),(48,33,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,5,1),(4,7,1),(5,7,2),(6,14,1),(7,16,1),(8,19,1),(9,25,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,4,'package',NULL,NULL,'package:eu.chainfire.new.pro',NULL,NULL),(2,23,'package',NULL,NULL,NULL,NULL,NULL),(3,24,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,39,'(.*)','(.*)'),(2,53,'*','*'),(3,56,'application','vnd.android.package-archive'),(4,67,'(.*)','(.*)'),(5,74,'image','*'),(6,77,'message','rfc882'),(7,84,'(.*)','(.*)'),(8,86,'application','vnd.android.package-archive'),(9,106,'*','*'),(10,114,'(.*)','(.*)'),(11,126,'application','vnd.android.package-archive'),(12,128,'message','rfc822'),(13,129,'application','vnd.android.package-archive'),(14,130,'application','vnd.android.package-archive'),(15,131,'application','vnd.android.package-archive'),(16,132,'application','vnd.android.package-archive'),(17,133,'application','vnd.android.package-archive'),(18,134,'application','vnd.android.package-archive'),(19,135,'application','vnd.android.package-archive'),(20,136,'application','vnd.android.package-archive'),(21,137,'application','vnd.android.package-archive'),(22,138,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.wqx.blackjack'),(2,2,'com.noshufou.android.su'),(3,3,'com.noshufou.android.su'),(4,4,'eu.chainfire.new'),(5,5,'com.wqx.blackjack'),(6,7,'com.wqx.blackjack'),(7,6,'eu.chainfire.new'),(8,9,'com.wqx.blackjack'),(9,10,'com.wqx.blackjack'),(10,11,'eu.chainfire.new'),(11,12,'com.wqx.blackjack'),(12,13,'eu.chainfire.new'),(13,14,'com.wqx.blackjack'),(14,16,'com.wqx.blackjack'),(15,17,'eu.chainfire.new'),(16,18,'com.wqx.blackjack'),(17,19,'com.wqx.blackjack'),(18,22,'com.aijiaoyou.android.sipphone'),(19,23,'com.aijiaoyou.android.sipphone'),(20,24,'com.aijiaoyou.android.sipphone'),(21,26,'com.aijiaoyou.android.sipphone'),(22,27,'com.aijiaoyou.android.sipphone'),(23,28,'com.aijiaoyou.android.sipphone'),(24,30,'com.aijiaoyou.android.sipphone'),(25,31,'com.aijiaoyou.android.sipphone'),(26,32,'com.aijiaoyou.android.sipphone'),(27,34,'com.aijiaoyou.android.sipphone'),(28,35,'com.aijiaoyou.android.sipphone'),(29,36,'com.aijiaoyou.android.sipphone'),(30,38,'com.aijiaoyou.android.sipphone'),(31,42,'com.aijiaoyou.android.sipphone'),(32,43,'com.noshufou.android.su'),(33,45,'com.noshufou.android.su'),(34,44,'com.aijiaoyou.android.sipphone'),(35,46,'com.evilsunflower.xiaoxiaole'),(36,48,'com.aijiaoyou.android.sipphone'),(37,49,'com.aijiaoyou.android.sipphone'),(38,58,'com.livegame.wallpaperxuehua'),(39,60,'com.alan'),(40,61,'com.google.android.apps.maps'),(41,62,'com.alan'),(42,63,'com.livegame.wallpaperxuehua'),(43,66,'com.alan'),(44,68,'com.livegame.wallpaperxuehua'),(45,69,'com.alan'),(46,71,'com.livegame.wallpaperxuehua'),(47,75,'NULL-CONSTANT'),(48,78,'com.alan'),(49,83,'com.alan'),(50,85,'com.evilsunflower.xiaoxiaole'),(51,87,'com.alan'),(52,90,'com.alan'),(53,89,'com.google.android.apps.maps'),(54,91,'com.noshufou.android.su'),(55,95,'com.noshufou.android.su'),(56,93,'com.alan'),(57,96,'com.google.android.apps.maps'),(58,99,'com.google.android.apps.maps'),(59,101,'(.*)'),(60,102,'com.noshufou.android.su'),(61,103,'(.*)'),(62,105,'com.noshufou.android.su'),(63,107,'com.livegame.wallpaperxuehua'),(64,111,'com.google.android.apps.maps'),(65,112,'com.livegame.wallpaperxuehua'),(66,116,'(.*)'),(67,117,'com.evilsunflower.xiaoxiaole'),(68,118,'com.alan'),(69,119,'com.livegame.wallpaperxuehua'),(70,120,'com.livegame.wallpaperxuehua'),(71,121,'com.alan'),(72,122,'com.livegame.wallpaperxuehua'),(73,123,'com.alan'),(74,124,'com.livegame.wallpaperxuehua'),(75,125,'com.livegame.wallpaperxuehua'),(76,127,'com.alan'),(77,139,'com.noshufou.android.su'),(78,140,'com.noshufou.android.su'),(79,141,'com.evilsunflower.reader.evilHonglou1'),(80,142,'com.evilsunflower.reader.evilHonglou1'),(81,143,'com.evilsunflower.reader.evilHonglou1'),(82,145,'com.evilsunflower.reader.evilHonglou1'),(83,148,'com.evilsunflower.reader.evilHonglou1'),(84,149,'com.evilsunflower.reader.evilHonglou1'),(85,150,'com.android.browser'),(86,154,'com.evilsunflower.reader.evilHonglou1');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,7,0),(6,11,0),(7,12,0),(8,19,0),(9,23,0),(10,24,0),(11,25,0),(12,26,0),(13,27,0),(14,28,0),(15,34,0),(16,35,0),(17,44,0),(18,46,0),(19,47,0),(20,62,0),(21,63,0),(22,64,0),(23,65,0),(24,66,0),(25,68,0),(26,68,0),(27,72,0),(28,85,0),(29,86,0),(30,87,0),(31,85,0),(32,88,0),(33,86,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,3,0,0),(5,4,0,0),(6,5,0,0),(7,4,0,0),(8,6,1,0),(9,7,1,0),(10,7,1,0),(11,8,0,0),(12,9,0,0),(13,10,0,0),(14,11,0,0),(15,12,1,0),(16,11,0,0),(17,13,0,0),(18,14,0,0),(19,15,0,0),(20,16,1,0),(21,17,1,0),(22,17,0,0),(23,17,0,0),(24,18,0,0),(25,19,1,0),(26,19,0,0),(27,19,0,0),(28,20,0,0),(29,21,1,0),(30,21,0,0),(31,21,0,0),(32,22,0,0),(33,23,1,0),(34,23,0,0),(35,24,0,0),(36,25,0,0),(37,26,1,0),(38,27,0,0),(39,26,1,0),(40,28,1,0),(41,26,1,0),(42,29,0,0),(43,30,1,0),(44,31,0,0),(45,30,1,0),(46,32,0,0),(47,33,1,0),(48,33,0,0),(49,33,0,0),(50,34,1,0),(51,34,1,0),(52,34,1,0),(53,34,1,0),(54,34,1,0),(55,34,1,0),(56,36,1,0),(57,34,1,0),(58,37,0,0),(59,34,1,0),(60,38,1,0),(61,34,0,0),(62,38,1,0),(63,39,0,0),(64,34,1,0),(65,34,1,0),(66,40,0,0),(67,34,1,0),(68,41,0,0),(69,40,0,0),(70,34,1,0),(71,41,0,0),(72,34,1,0),(73,34,1,0),(74,42,1,0),(75,43,0,0),(76,34,1,0),(77,34,1,0),(78,44,0,0),(79,34,1,0),(80,45,1,0),(81,46,1,0),(82,34,1,0),(83,47,0,0),(84,34,1,0),(85,34,0,0),(86,48,1,0),(87,49,0,0),(88,34,1,0),(89,34,0,0),(90,49,0,0),(91,50,1,0),(92,34,1,0),(93,51,0,0),(94,34,1,0),(95,50,1,0),(96,34,0,0),(97,52,1,0),(98,34,1,0),(99,34,0,0),(100,53,1,0),(101,53,1,0),(102,54,1,0),(103,53,1,0),(104,34,1,0),(105,54,1,0),(106,34,1,0),(107,55,0,0),(108,34,1,0),(109,56,1,0),(110,34,1,0),(111,34,0,0),(112,55,0,0),(113,56,1,0),(114,56,1,0),(115,34,1,0),(116,58,0,0),(117,59,0,0),(118,60,0,0),(119,61,0,0),(120,61,0,0),(121,62,0,0),(122,63,0,0),(123,64,0,0),(124,65,1,0),(125,65,1,0),(126,66,1,0),(127,68,0,0),(128,69,1,0),(129,70,1,0),(130,70,1,0),(131,70,1,0),(132,70,1,0),(133,70,1,0),(134,70,1,0),(135,70,1,0),(136,70,1,0),(137,70,1,0),(138,71,1,0),(139,72,1,0),(140,72,1,0),(141,75,0,0),(142,79,0,0),(143,80,0,0),(144,81,1,0),(145,82,0,0),(146,83,1,0),(147,86,1,0),(148,87,0,0),(149,88,0,0),(150,89,0,0),(151,90,1,0),(152,91,1,0),(153,94,1,0),(154,95,0,0),(155,96,1,0),(156,97,1,0),(157,98,1,0),(158,98,1,0),(159,98,1,0),(160,98,1,0),(161,98,1,0),(162,98,1,0),(163,98,1,0),(164,98,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=537 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,46,33,2,NULL),(2,15,28,2,NULL),(3,21,28,2,NULL),(4,25,28,2,NULL),(5,29,28,2,NULL),(6,47,28,2,NULL),(7,37,28,2,NULL),(8,41,28,2,NULL),(9,100,28,2,NULL),(10,101,28,2,NULL),(11,103,28,2,NULL),(12,109,28,2,NULL),(13,113,28,2,NULL),(14,144,28,2,NULL),(15,146,28,2,NULL),(16,147,28,2,NULL),(17,151,28,2,NULL),(18,155,28,2,NULL),(19,37,1,2,NULL),(20,41,1,2,NULL),(21,37,2,2,NULL),(22,41,2,2,NULL),(23,37,3,2,NULL),(24,41,3,2,NULL),(25,37,7,2,NULL),(26,41,7,2,NULL),(27,37,11,2,NULL),(28,41,11,2,NULL),(29,37,12,2,NULL),(30,41,12,2,NULL),(31,37,19,2,NULL),(32,41,19,2,NULL),(33,37,23,2,NULL),(34,41,23,2,NULL),(35,37,24,2,NULL),(36,41,24,2,NULL),(37,37,25,2,NULL),(38,41,25,2,NULL),(39,37,26,2,NULL),(40,41,26,2,NULL),(41,37,27,2,NULL),(42,41,27,2,NULL),(43,37,63,2,NULL),(44,41,63,2,NULL),(45,37,34,2,NULL),(46,41,34,2,NULL),(47,37,64,2,NULL),(48,41,64,2,NULL),(49,37,35,2,NULL),(50,41,35,2,NULL),(51,37,44,2,NULL),(52,41,44,2,NULL),(53,37,46,2,NULL),(54,41,46,2,NULL),(55,37,47,2,NULL),(56,41,47,2,NULL),(57,37,62,2,NULL),(58,41,62,2,NULL),(59,37,68,2,NULL),(60,41,68,2,NULL),(61,37,72,2,NULL),(62,41,72,2,NULL),(63,37,85,2,NULL),(64,41,85,2,NULL),(65,37,86,2,NULL),(66,41,86,2,NULL),(67,37,87,2,NULL),(68,41,87,2,NULL),(69,37,88,2,NULL),(70,41,88,2,NULL),(71,117,33,2,NULL),(72,15,34,2,NULL),(73,21,34,2,NULL),(74,25,34,2,NULL),(75,29,34,2,NULL),(76,47,34,2,NULL),(77,100,34,2,NULL),(78,101,34,2,NULL),(79,103,34,2,NULL),(80,109,34,2,NULL),(81,113,34,2,NULL),(82,144,34,2,NULL),(83,146,34,2,NULL),(84,147,34,2,NULL),(85,151,34,2,NULL),(86,155,34,2,NULL),(87,15,64,2,NULL),(88,21,64,2,NULL),(89,25,64,2,NULL),(90,29,64,2,NULL),(91,47,64,2,NULL),(92,100,64,2,NULL),(93,101,64,2,NULL),(94,103,64,2,NULL),(95,109,64,2,NULL),(96,113,64,2,NULL),(97,144,64,2,NULL),(98,146,64,2,NULL),(99,147,64,2,NULL),(100,151,64,2,NULL),(101,155,64,2,NULL),(102,15,35,2,NULL),(103,21,35,2,NULL),(104,25,35,2,NULL),(105,29,35,2,NULL),(106,47,35,2,NULL),(107,100,35,2,NULL),(108,101,35,2,NULL),(109,103,35,2,NULL),(110,109,35,2,NULL),(111,113,35,2,NULL),(112,144,35,2,NULL),(113,146,35,2,NULL),(114,147,35,2,NULL),(115,151,35,2,NULL),(116,155,35,2,NULL),(117,100,1,2,NULL),(118,101,1,2,NULL),(119,103,1,2,NULL),(120,100,2,2,NULL),(121,101,2,2,NULL),(122,103,2,2,NULL),(123,100,3,2,NULL),(124,101,3,2,NULL),(125,103,3,2,NULL),(126,100,7,2,NULL),(127,101,7,2,NULL),(128,103,7,2,NULL),(129,100,11,2,NULL),(130,101,11,2,NULL),(131,103,11,2,NULL),(132,100,12,2,NULL),(133,101,12,2,NULL),(134,103,12,2,NULL),(135,100,19,2,NULL),(136,101,19,2,NULL),(137,103,19,2,NULL),(138,100,23,2,NULL),(139,101,23,2,NULL),(140,103,23,2,NULL),(141,100,24,2,NULL),(142,101,24,2,NULL),(143,103,24,2,NULL),(144,100,25,2,NULL),(145,101,25,2,NULL),(146,103,25,2,NULL),(147,100,26,2,NULL),(148,101,26,2,NULL),(149,103,26,2,NULL),(150,100,27,2,NULL),(151,101,27,2,NULL),(152,103,27,2,NULL),(153,100,63,2,NULL),(154,101,63,2,NULL),(155,103,63,2,NULL),(156,100,44,2,NULL),(157,101,44,2,NULL),(158,103,44,2,NULL),(159,100,46,2,NULL),(160,101,46,2,NULL),(161,103,46,2,NULL),(162,100,47,2,NULL),(163,101,47,2,NULL),(164,103,47,2,NULL),(165,100,62,2,NULL),(166,101,62,2,NULL),(167,103,62,2,NULL),(168,100,68,2,NULL),(169,101,68,2,NULL),(170,103,68,2,NULL),(171,100,72,2,NULL),(172,101,72,2,NULL),(173,103,72,2,NULL),(174,100,85,2,NULL),(175,101,85,2,NULL),(176,103,85,2,NULL),(177,100,86,2,NULL),(178,101,86,2,NULL),(179,103,86,2,NULL),(180,100,87,2,NULL),(181,101,87,2,NULL),(182,103,87,2,NULL),(183,100,88,2,NULL),(184,101,88,2,NULL),(185,103,88,2,NULL),(186,15,44,2,NULL),(187,21,44,2,NULL),(188,25,44,2,NULL),(189,29,44,2,NULL),(190,47,44,2,NULL),(191,109,44,2,NULL),(192,113,44,2,NULL),(193,144,44,2,NULL),(194,146,44,2,NULL),(195,147,44,2,NULL),(196,151,44,2,NULL),(197,155,44,2,NULL),(198,68,9,2,NULL),(199,68,43,2,NULL),(200,68,60,2,NULL),(201,71,9,2,NULL),(202,71,43,2,NULL),(203,71,60,2,NULL),(204,119,9,2,NULL),(205,119,43,2,NULL),(206,119,60,2,NULL),(207,120,9,2,NULL),(208,120,43,2,NULL),(209,120,60,2,NULL),(210,58,10,2,NULL),(211,58,45,2,NULL),(212,58,61,2,NULL),(213,15,46,2,NULL),(214,21,46,2,NULL),(215,25,46,2,NULL),(216,29,46,2,NULL),(217,47,46,2,NULL),(218,109,46,2,NULL),(219,113,46,2,NULL),(220,144,46,2,NULL),(221,146,46,2,NULL),(222,147,46,2,NULL),(223,151,46,2,NULL),(224,155,46,2,NULL),(225,15,12,2,NULL),(226,21,12,2,NULL),(227,25,12,2,NULL),(228,29,12,2,NULL),(229,47,12,2,NULL),(230,109,12,2,NULL),(231,113,12,2,NULL),(232,144,12,2,NULL),(233,146,12,2,NULL),(234,147,12,2,NULL),(235,151,12,2,NULL),(236,155,12,2,NULL),(237,22,17,2,NULL),(238,23,18,2,NULL),(239,26,17,2,NULL),(240,27,18,2,NULL),(241,28,20,2,NULL),(242,36,16,2,NULL),(243,42,15,2,NULL),(244,44,14,2,NULL),(245,21,1,2,NULL),(246,25,1,2,NULL),(247,21,2,2,NULL),(248,25,2,2,NULL),(249,21,3,2,NULL),(250,25,3,2,NULL),(251,21,7,2,NULL),(252,25,7,2,NULL),(253,21,11,2,NULL),(254,25,11,2,NULL),(255,21,19,2,NULL),(256,25,19,2,NULL),(257,21,23,2,NULL),(258,25,23,2,NULL),(259,21,24,2,NULL),(260,25,24,2,NULL),(261,21,25,2,NULL),(262,25,25,2,NULL),(263,21,26,2,NULL),(264,25,26,2,NULL),(265,21,27,2,NULL),(266,25,27,2,NULL),(267,21,63,2,NULL),(268,25,63,2,NULL),(269,21,47,2,NULL),(270,25,47,2,NULL),(271,21,62,2,NULL),(272,25,62,2,NULL),(273,21,68,2,NULL),(274,25,68,2,NULL),(275,21,72,2,NULL),(276,25,72,2,NULL),(277,21,85,2,NULL),(278,25,85,2,NULL),(279,21,86,2,NULL),(280,25,86,2,NULL),(281,21,87,2,NULL),(282,25,87,2,NULL),(283,21,88,2,NULL),(284,25,88,2,NULL),(285,30,17,2,NULL),(286,31,18,2,NULL),(287,48,17,2,NULL),(288,49,18,2,NULL),(289,29,1,2,NULL),(290,47,1,2,NULL),(291,29,2,2,NULL),(292,47,2,2,NULL),(293,29,3,2,NULL),(294,47,3,2,NULL),(295,29,7,2,NULL),(296,47,7,2,NULL),(297,29,11,2,NULL),(298,47,11,2,NULL),(299,29,19,2,NULL),(300,47,19,2,NULL),(301,29,23,2,NULL),(302,47,23,2,NULL),(303,29,24,2,NULL),(304,47,24,2,NULL),(305,29,25,2,NULL),(306,47,25,2,NULL),(307,29,26,2,NULL),(308,47,26,2,NULL),(309,29,27,2,NULL),(310,47,27,2,NULL),(311,29,63,2,NULL),(312,47,63,2,NULL),(313,29,47,2,NULL),(314,47,47,2,NULL),(315,29,62,2,NULL),(316,47,62,2,NULL),(317,29,68,2,NULL),(318,47,68,2,NULL),(319,29,72,2,NULL),(320,47,72,2,NULL),(321,29,85,2,NULL),(322,47,85,2,NULL),(323,29,86,2,NULL),(324,47,86,2,NULL),(325,29,87,2,NULL),(326,47,87,2,NULL),(327,29,88,2,NULL),(328,47,88,2,NULL),(329,15,19,2,NULL),(330,109,19,2,NULL),(331,113,19,2,NULL),(332,144,19,2,NULL),(333,146,19,2,NULL),(334,147,19,2,NULL),(335,151,19,2,NULL),(336,155,19,2,NULL),(337,15,23,2,NULL),(338,109,23,2,NULL),(339,113,23,2,NULL),(340,144,23,2,NULL),(341,146,23,2,NULL),(342,147,23,2,NULL),(343,151,23,2,NULL),(344,155,23,2,NULL),(345,34,13,2,NULL),(346,15,24,2,NULL),(347,109,24,2,NULL),(348,113,24,2,NULL),(349,144,24,2,NULL),(350,146,24,2,NULL),(351,147,24,2,NULL),(352,151,24,2,NULL),(353,155,24,2,NULL),(354,35,20,2,NULL),(355,15,25,2,NULL),(356,109,25,2,NULL),(357,113,25,2,NULL),(358,144,25,2,NULL),(359,146,25,2,NULL),(360,147,25,2,NULL),(361,151,25,2,NULL),(362,155,25,2,NULL),(363,38,21,2,NULL),(364,15,26,2,NULL),(365,109,26,2,NULL),(366,113,26,2,NULL),(367,144,26,2,NULL),(368,146,26,2,NULL),(369,147,26,2,NULL),(370,151,26,2,NULL),(371,155,26,2,NULL),(372,32,21,2,NULL),(373,15,27,2,NULL),(374,109,27,2,NULL),(375,113,27,2,NULL),(376,144,27,2,NULL),(377,146,27,2,NULL),(378,147,27,2,NULL),(379,151,27,2,NULL),(380,155,27,2,NULL),(381,15,63,2,NULL),(382,109,63,2,NULL),(383,113,63,2,NULL),(384,144,63,2,NULL),(385,146,63,2,NULL),(386,147,63,2,NULL),(387,151,63,2,NULL),(388,155,63,2,NULL),(389,12,7,2,NULL),(390,18,8,2,NULL),(391,19,8,2,NULL),(392,15,7,2,NULL),(393,109,7,2,NULL),(394,113,7,2,NULL),(395,144,7,2,NULL),(396,146,7,2,NULL),(397,147,7,2,NULL),(398,151,7,2,NULL),(399,155,7,2,NULL),(400,5,9,2,NULL),(401,5,43,2,NULL),(402,5,60,2,NULL),(403,7,9,2,NULL),(404,7,43,2,NULL),(405,7,60,2,NULL),(406,14,9,2,NULL),(407,14,43,2,NULL),(408,14,60,2,NULL),(409,16,9,2,NULL),(410,16,43,2,NULL),(411,16,60,2,NULL),(412,1,10,2,NULL),(413,1,45,2,NULL),(414,1,61,2,NULL),(415,15,11,2,NULL),(416,109,11,2,NULL),(417,113,11,2,NULL),(418,144,11,2,NULL),(419,146,11,2,NULL),(420,147,11,2,NULL),(421,151,11,2,NULL),(422,155,11,2,NULL),(423,142,68,2,NULL),(424,154,68,2,NULL),(425,15,68,2,NULL),(426,109,68,2,NULL),(427,113,68,2,NULL),(428,144,68,2,NULL),(429,146,68,2,NULL),(430,147,68,2,NULL),(431,151,68,2,NULL),(432,155,68,2,NULL),(433,149,74,2,NULL),(434,15,72,2,NULL),(435,109,72,2,NULL),(436,113,72,2,NULL),(437,144,72,2,NULL),(438,146,72,2,NULL),(439,147,72,2,NULL),(440,151,72,2,NULL),(441,155,72,2,NULL),(442,141,78,2,NULL),(443,145,78,2,NULL),(444,144,1,2,NULL),(445,146,1,2,NULL),(446,147,1,2,NULL),(447,151,1,2,NULL),(448,155,1,2,NULL),(449,144,2,2,NULL),(450,146,2,2,NULL),(451,147,2,2,NULL),(452,151,2,2,NULL),(453,155,2,2,NULL),(454,144,3,2,NULL),(455,146,3,2,NULL),(456,147,3,2,NULL),(457,151,3,2,NULL),(458,155,3,2,NULL),(459,144,47,2,NULL),(460,146,47,2,NULL),(461,147,47,2,NULL),(462,151,47,2,NULL),(463,155,47,2,NULL),(464,144,62,2,NULL),(465,146,62,2,NULL),(466,147,62,2,NULL),(467,151,62,2,NULL),(468,155,62,2,NULL),(469,144,85,2,NULL),(470,146,85,2,NULL),(471,147,85,2,NULL),(472,151,85,2,NULL),(473,155,85,2,NULL),(474,144,86,2,NULL),(475,146,86,2,NULL),(476,147,86,2,NULL),(477,151,86,2,NULL),(478,155,86,2,NULL),(479,144,87,2,NULL),(480,146,87,2,NULL),(481,147,87,2,NULL),(482,151,87,2,NULL),(483,155,87,2,NULL),(484,144,88,2,NULL),(485,146,88,2,NULL),(486,147,88,2,NULL),(487,151,88,2,NULL),(488,155,88,2,NULL),(489,143,84,2,NULL),(490,15,85,2,NULL),(491,109,85,2,NULL),(492,113,85,2,NULL),(493,15,86,2,NULL),(494,109,86,2,NULL),(495,113,86,2,NULL),(496,15,87,2,NULL),(497,109,87,2,NULL),(498,113,87,2,NULL),(499,15,88,2,NULL),(500,109,88,2,NULL),(501,113,88,2,NULL),(502,78,48,2,NULL),(503,83,49,2,NULL),(504,11,4,2,NULL),(505,93,50,2,NULL),(506,15,1,2,NULL),(507,123,53,2,NULL),(508,109,1,2,NULL),(509,127,52,2,NULL),(510,113,1,2,NULL),(511,15,47,2,NULL),(512,15,3,2,NULL),(513,109,47,2,NULL),(514,109,2,2,NULL),(515,113,47,2,NULL),(516,113,2,2,NULL),(517,109,3,2,NULL),(518,15,62,2,NULL),(519,113,3,2,NULL),(520,109,62,2,NULL),(521,113,62,2,NULL),(522,66,9,2,NULL),(523,66,43,2,NULL),(524,66,60,2,NULL),(525,69,9,2,NULL),(526,69,43,2,NULL),(527,69,60,2,NULL),(528,87,9,2,NULL),(529,87,43,2,NULL),(530,87,60,2,NULL),(531,90,9,2,NULL),(532,90,43,2,NULL),(533,90,60,2,NULL),(534,118,10,2,NULL),(535,118,45,2,NULL),(536,118,61,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (18,'android.permission.ACCESS_COARSE_LOCATION'),(21,'android.permission.ACCESS_FINE_LOCATION'),(26,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(23,'android.permission.BIND_WALLPAPER'),(12,'android.permission.BOOT_COMPLETED'),(7,'android.permission.CHANGE_WIFI_STATE'),(10,'android.permission.CLEAR_APP_CACHE'),(3,'android.permission.GET_TASKS'),(25,'android.permission.INSTALL_PACKAGES'),(6,'android.permission.INTERNET'),(11,'android.permission.MODIFY_AUDIO_SETTINGS'),(19,'android.permission.READ_CONTACTS'),(24,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(20,'android.permission.READ_SMS'),(5,'android.permission.RECEIVE_BOOT_COMPLETED'),(16,'android.permission.RECORD_AUDIO'),(13,'android.permission.SET_PREFERRED_APPLICATIONS'),(14,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(17,'android.permission.WRITE_SMS'),(22,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://bnb520.com/forum.php',NULL,NULL,NULL),(2,NULL,NULL,'tel://(.*);0000000',NULL,NULL,NULL),(3,NULL,NULL,'tel://(.*);0000000',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(29,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(30,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(50,NULL,NULL,'content://mms/',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(53,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(54,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(55,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(56,NULL,NULL,'(.*)',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'(.*)',NULL,NULL,NULL),(59,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(60,NULL,NULL,'content://mms/',NULL,NULL,NULL),(61,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(62,NULL,NULL,'(.*)',NULL,NULL,NULL),(63,NULL,NULL,'(.*)',NULL,NULL,NULL),(64,NULL,NULL,'(.*)',NULL,NULL,NULL),(65,NULL,NULL,'(.*)',NULL,NULL,NULL),(66,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(67,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,35,10),(2,57,37),(3,67,39),(4,74,50),(5,77,52),(6,77,53),(7,77,54),(8,78,55),(9,84,59),(10,85,60),(11,85,61),(12,92,65),(13,93,66);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,3,1),(13,3,3),(14,3,4),(15,3,5),(16,3,6),(17,3,7),(18,3,8),(19,3,9),(20,3,10),(21,3,11),(22,3,12),(23,3,13),(24,3,14),(25,3,15),(26,3,16),(27,4,17),(28,4,1),(29,4,19),(30,4,18),(31,4,21),(32,4,4),(33,4,20),(34,4,6),(35,4,22),(36,4,8),(37,4,9),(38,4,15),(39,5,1),(40,5,18),(41,5,3),(42,5,21),(43,5,4),(44,5,5),(45,5,6),(46,5,7),(47,5,8),(48,5,9),(49,6,1),(50,6,3),(51,6,4),(52,6,6),(53,6,7),(54,6,8),(55,6,9),(56,6,17),(57,6,18),(58,6,21),(59,6,20),(60,6,25),(61,6,24),(62,6,26),(63,7,17),(64,7,1),(65,7,18),(66,7,21),(67,7,4),(68,7,20),(69,7,6),(70,7,22),(71,7,8),(72,7,9),(73,7,15);
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

-- Dump completed on 2015-10-12  3:29:20
