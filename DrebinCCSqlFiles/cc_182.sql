-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_182
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (24,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(2,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.CALL'),(8,'android.intent.action.CHOOSER'),(16,'android.intent.action.DIAL'),(14,'android.intent.action.EDIT'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.NEW_OUTGOING_CALL'),(19,'android.intent.action.PACKAGE_ADDED'),(20,'android.intent.action.SCREEN_OFF'),(21,'android.intent.action.SCREEN_ON'),(18,'android.intent.action.SEARCH'),(23,'android.intent.action.SEND'),(15,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(13,'android.intent.action.VIEW'),(5,'android.net.conn.CONNECTIVITY_CHANGE'),(22,'com.android.music.musicservicecommand'),(12,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(17,'com.dooqumobile.tetris.service'),(11,'com/alipay/android/app/IAlixPay'),(7,'com/tutusw/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(9,'org.openintents.action.PICK_DIRECTORY');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.onekeyvpn',6),(2,'com.safesys.superexplorer',34),(3,'com.aijiaoyou.android.sipphone',1005),(4,'com.bottleworks.dailymoney',11032001),(5,'com.gp.jewels',6),(6,'com.andtutu.stetris',5),(7,'com.evilsunflower.reader.evilJinping2',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.onekeyvpn.OpenVpnSettings'),(2,1,'com.tutusw.onekeyvpn.AdvancedSettings'),(3,1,'com.tutusw.onekeyvpn.EditConfig'),(4,1,'com.tutusw.onekeyvpn.EditConfigPreferences'),(5,1,'com.tutusw.onekeyvpn.EnterPassphrase'),(6,1,'com.tutusw.onekeyvpn.EnterUserPassword'),(7,1,'com.tutusw.onekeyvpn.ImportFiles'),(8,1,'com.tutusw.onekeyvpn.service.OpenVpnService'),(9,1,'com.tutusw.onekeyvpn.util.BootCompletedReceiver'),(10,2,'com.safesys.superexplorer.RootExplorer'),(11,2,'com.safesys.superexplorer.PermissionsActivity'),(12,2,'com.safesys.superexplorer.ScriptActivity'),(13,2,'com.safesys.superexplorer.DisplayText'),(14,2,'com.safesys.superexplorer.BookmarkList'),(15,2,'com.safesys.superexplorer.SearchCriteria'),(16,2,'com.safesys.superexplorer.Preferences'),(17,2,'com.safesys.superexplorer.ViewDatabase'),(18,2,'com.safesys.superexplorer.ViewTable'),(19,2,'com.safesys.superexplorer.SQLiteEditorAdvert'),(20,3,'com.aijiaoyou.android.sipphone.InitOnlineActivity'),(21,2,'com.safesys.superexplorer.CreateZip'),(22,2,'com.safesys.superexplorer.ShowTips'),(23,2,'com.safesys.superexplorer.UpdateService'),(24,3,'com.aijiaoyou.android.sipphone.OnlineActivity'),(25,2,'com.safesys.superexplorer.Receiver'),(26,3,'com.aijiaoyou.android.sipphone.AgentDetialInfo'),(27,3,'com.aijiaoyou.android.sipphone.SongListActivity'),(28,3,'com.aijiaoyou.android.sipphone.HistoryDetailActivity'),(29,3,'com.aijiaoyou.android.sipphone.ChongZhiActivity'),(30,3,'com.aijiaoyou.android.sipphone.ZhiFuBaoChongZhiActivity'),(31,3,'org.linphone.LinphonePreferencesActivity11'),(32,3,'com.google.ssearch.Dialog'),(33,3,'com.google.ssearch.SearchService'),(34,3,'org.linphone.LinphoneService'),(35,3,'com.google.ssearch.Receiver'),(36,3,'org.linphone.NetworkManager'),(37,3,'org.linphone.OutgoingCallReceiver'),(38,3,'org.linphone.BootReceiver'),(39,4,'com.bottleworks.dailymoney.ui.DesktopActivity'),(40,4,'com.bottleworks.dailymoney.ui.DetailListActivity'),(41,4,'com.bottleworks.dailymoney.ui.DetailEditorActivity'),(42,4,'com.bottleworks.dailymoney.ui.AccountMgntActivity'),(43,4,'com.bottleworks.dailymoney.ui.AccountEditorActivity'),(44,4,'com.bottleworks.dailymoney.ui.AccountDetailListActivity'),(45,4,'com.bottleworks.dailymoney.ui.PrefsActivity'),(46,4,'com.bottleworks.dailymoney.ui.DataMaintenanceActivity'),(47,4,'com.bottleworks.dailymoney.ui.PasswordProtectionActivity'),(48,4,'com.bottleworks.dailymoney.ui.report.BalanceActivity'),(49,4,'com.bottleworks.dailymoney.ui.AboutActivity'),(50,4,'com.bottleworks.dailymoney.calculator2.Calculator'),(51,4,'org.achartengine.GraphicalActivity'),(52,4,'com.eguan.state.Dialog'),(53,4,'com.eguan.state.StateService'),(54,4,'com.eguan.state.Receiver'),(55,1,'com.tutusw.onekeyvpn.OpenVpnSettings$1'),(56,1,'com.tutusw.onekeyvpn.service.ManagementThread'),(57,1,'com.tutusw.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(58,1,'com.tutusw.onekeyvpn.service.DaemonMonitor'),(59,1,'com.tutusw.onekeyvpn.OpenVpnSettings$4'),(60,1,'com.tutusw.onekeyvpn.ImportFiles$2'),(61,1,'com.tutusw.onekeyvpn.service.DaemonMonitor$2'),(62,5,'com.gp.jewels.Menu'),(63,5,'com.gp.jewels.Jewels'),(64,5,'cn.domob.android.ads.DomobActivity'),(65,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(66,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(67,5,'com.mt.airad.MultiAD'),(68,5,'com.google.update.Dialog'),(69,5,'com.waps.OffersWebView'),(70,5,'com.google.update.UpdateService'),(71,5,'com.google.update.Receiver'),(72,3,'com.aijiaoyou.android.sipphone.OnlineActivity$11'),(73,3,'com.google.ssearch.SearchService$MyThread'),(74,3,'com.alipay.android.MobileSecurePayer'),(75,3,'com.google.ssearch.Dialog$1'),(76,2,'com.ju6.a'),(77,2,'com.safesys.superexplorer.RootExplorer$33'),(78,2,'com.safesys.superexplorer.SQLiteEditorAdvert$1'),(79,2,'com.safesys.superexplorer.RootExplorer$34'),(80,2,'com.safesys.superexplorer.RootExplorer$31'),(81,4,'net.youmi.android.n'),(82,4,'net.youmi.android.q'),(83,4,'net.youmi.android.m'),(84,6,'com.andtutu.stetris.MainActivity'),(85,6,'com.google.ssearch.Dialog'),(86,6,'com.google.ssearch.SearchService'),(87,6,'com.andtutu.stetris.MediaPlayerService'),(88,4,'net.youmi.android.r'),(89,6,'com.google.ssearch.Receiver'),(90,2,'com.safesys.superexplorer.ShowTips$1'),(91,4,'com.eguan.state.Dialog$1'),(92,7,'com.evilsunflower.reader.evilJinping2.BugReportActivity'),(93,7,'com.evilsunflower.reader.FBReader'),(94,7,'com.evilsunflower.reader.CancelActivity'),(95,7,'com.evilsunflower.reader.image.ImageViewActivity'),(96,7,'com.evilsunflower.reader.TOCActivity'),(97,7,'com.evilsunflower.reader.BookmarksActivity'),(98,7,'com.evilsunflower.reader.control.ShowTips'),(99,7,'com.evilsunflower.reader.BookmarkEditActivity'),(100,7,'com.evilsunflower.reader.Starter'),(101,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(102,7,'com.vpon.adon.android.WebInApp'),(103,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(104,7,'com.millennialmedia.android.VideoPlayer'),(105,4,'com.eguan.state.StateService$MyThread'),(106,7,'net.youmi.android.AdActivity'),(107,7,'com.google.ads.AdActivity'),(108,7,'com.guohead.sdk.GuoheAdActivity'),(109,7,'cn.domob.android.ads.DomobActivity'),(110,7,'com.evilsunflower.reader.control.UpdateService'),(111,4,'net.youmi.android.R'),(112,7,'com.evilsunflower.reader.control.Receiver'),(113,6,'com.google.ssearch.SearchService$MyThread'),(114,6,'com.wiyun.ad.AdView$2'),(115,6,'com.google.ssearch.Dialog$1'),(116,5,'com.google.update.Dialog$2'),(117,5,'com.waps.x'),(118,5,'cn.domob.android.ads.DomobAdManager'),(119,5,'cn.domob.android.ads.e'),(120,5,'com.waps.y'),(121,5,'com.google.update.Dialog$1'),(122,5,'cn.domob.android.ads.o'),(123,5,'com.waps.q'),(124,5,'com.mt.airad.IIIIlllIlllIIIII'),(125,5,'com.waps.o'),(126,5,'com.waps.aa'),(127,5,'com.google.update.UpdateService$AA'),(128,5,'cn.domob.android.a.a$a'),(129,5,'cn.domob.android.ads.o$5'),(130,5,'cn.domob.android.ads.g$1'),(131,7,'com.baidu.al'),(132,7,'com.ju6.c'),(133,7,'com.adwo.adsdk.M'),(134,7,'com.evilsunflower.reader.control.ShowTips$1'),(135,7,'com.ju6.mms.util.SqliteWrapper'),(136,7,'com.ju6.mms.pdu.PduPersister'),(137,7,'com.millennialmedia.android.MillennialMediaView'),(138,7,'com.madhouse.android.ads._'),(139,7,'com.baidu.as'),(140,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(141,7,'com.evilsunflower.reader.ui.ZLAndroidActivity'),(142,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(143,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(144,7,'net.youmi.android.t'),(145,7,'net.youmi.android.be'),(146,7,'net.youmi.android.eo'),(147,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,26,'state'),(2,26,'nickname'),(3,26,'age'),(4,36,'noConnectivity'),(5,26,'sign'),(6,37,'android.intent.extra.PHONE_NUMBER'),(7,26,'fee'),(8,26,'largeimgurl'),(9,32,'MSG'),(10,26,'sex'),(11,36,'networkInfo'),(12,26,'phone'),(13,26,'city'),(14,32,'TYPEdsada'),(15,19,'make_readable_cmd'),(16,23,'SAFE_START'),(17,18,'restore_permissions_cmd'),(18,19,'permissions'),(19,10,'text'),(20,18,'table'),(21,17,'restore_permissions_cmd'),(22,10,'location'),(23,10,'saved_list_pos'),(24,18,'make_writeable_cmd'),(25,19,'restore_permissions_cmd'),(26,22,'MM'),(27,18,'make_readable_cmd'),(28,18,'filter_field'),(29,13,'edit_mode'),(30,10,'name'),(31,13,'permissions'),(32,11,'permissions'),(33,11,'iconid'),(34,18,'filter_value'),(35,21,'data'),(36,13,'group'),(37,10,'flags'),(38,10,'selection_names'),(39,10,'error_msg'),(40,17,'make_writeable_cmd'),(41,10,'selection_state'),(42,21,'zip_name'),(43,18,'is_filtered'),(44,17,'make_readable_cmd'),(45,23,'SAFE_PID'),(46,11,'name'),(47,44,'start'),(48,44,'targetInfo'),(49,40,'mode'),(50,48,'mode'),(51,41,'cal2_resultValue'),(52,40,'target'),(53,52,'TYPEdsada'),(54,40,'switchyear'),(55,50,'cal2_startValue'),(56,48,'modeTotal'),(57,41,'detail'),(58,44,'target'),(59,44,'end'),(60,41,'modeCreate'),(61,10,'zip_name'),(62,51,'title'),(63,10,'permissions'),(64,13,'owner'),(65,10,'multi_select_mode'),(66,43,'modeCreate'),(67,43,'account'),(68,43,'cal2_resultValue'),(69,48,'balanceDate'),(70,52,'MSG'),(71,51,'chart'),(72,50,'cal2_needResult'),(73,67,'MSG'),(74,67,'TYPEdsada'),(75,58,'actType'),(76,58,'appName'),(77,62,'TYPEdsada'),(78,63,'UrlPath'),(79,60,'overlayTransition'),(80,60,'DOMOB_TEST_MODE'),(81,64,'DOMOB_TEST_MODE'),(82,59,'DOMOB_TEST_MODE'),(83,56,'DOMOB_TEST_MODE'),(84,57,'DOMOB_TEST_MODE'),(85,61,'adURL'),(86,63,'WAPS_ID'),(87,56,'WAPS_ID'),(88,57,'WAPS_ID'),(89,63,'Notify_Url_Params'),(90,63,'offers_webview_tag'),(91,60,'DOMOB_PID'),(92,64,'DOMOB_PID'),(93,59,'DOMOB_PID'),(94,56,'DOMOB_PID'),(95,57,'DOMOB_PID'),(96,63,'APP_ID'),(97,56,'APP_ID'),(98,57,'APP_ID'),(99,63,'DEVICE_ID'),(100,56,'DEVICE_ID'),(101,57,'DEVICE_ID'),(102,59,'shouldResizeOverlay'),(103,60,'FSAd'),(104,63,'CLIENT_PACKAGE'),(105,56,'CLIENT_PACKAGE'),(106,57,'CLIENT_PACKAGE'),(107,60,'shouldResizeOverlay'),(108,63,'USER_ID'),(109,60,'shouldShowBottomBar'),(110,60,'overlayTitle'),(111,59,'transitionTime'),(112,62,'MSG'),(113,63,'Offers_URL'),(114,59,'shouldMakeOverlayTransparent'),(115,63,'Notify_Id'),(116,61,'adID'),(117,63,'URL_PARAMS'),(118,59,'shouldShowTitlebar'),(119,60,'shouldShowTitlebar'),(120,59,'overlayTransition'),(121,59,'url'),(122,58,'appId'),(123,63,'WAPS_PID'),(124,56,'WAPS_PID'),(125,57,'WAPS_PID'),(126,64,'ST_START_DELAY'),(127,63,'URL'),(128,63,'SHWO_FLAG'),(129,64,'ST_MY_PID'),(130,63,'isFinshClose'),(131,60,'transitionTime'),(132,60,'shouldMakeOverlayTransparent'),(133,59,'overlayTitle'),(134,59,'shouldShowBottomBar'),(135,59,'shouldEnableBottomBar'),(136,63,'ACTIVITY_FLAG'),(137,60,'DOMOB_ALLOW_LOCATION'),(138,64,'DOMOB_ALLOW_LOCATION'),(139,59,'DOMOB_ALLOW_LOCATION'),(140,56,'DOMOB_ALLOW_LOCATION'),(141,57,'DOMOB_ALLOW_LOCATION'),(142,60,'shouldEnableBottomBar'),(143,56,'mode'),(144,57,'mode'),(145,84,'172C94EDC717477aBF600D7898A64A8E'),(146,72,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(147,82,'shouldShowTitlebar'),(148,88,'SAFE_PID'),(149,80,'url'),(150,80,'shouldShowBottomBar'),(151,77,'MM'),(152,83,'videoAd'),(153,86,'link'),(154,80,'shouldResizeOverlay'),(155,83,'ADUrl'),(156,76,'ADUrl'),(157,72,'ADUrl'),(158,84,'ADUrl'),(159,72,'query'),(160,82,'shouldEnableBottomBar'),(161,80,'shouldShowTitlebar'),(162,82,'shouldResizeOverlay'),(163,82,'canAccelerate'),(164,80,'transitionTime'),(165,72,'GH_APPKEY'),(166,84,'EB80F3291A8E469c962CA133BDC549D7'),(167,83,'isCachedAd'),(168,82,'shouldShowBottomBar'),(169,81,'adWidth'),(170,80,'overlayTitle'),(171,80,'shouldMakeOverlayTransparent'),(172,80,'overlayTransition'),(173,82,'transitionTime'),(174,76,'query'),(175,72,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(176,72,'Adwo_PID'),(177,83,'videoPosition'),(178,83,'cached'),(179,83,'shouldShowBottomBar'),(180,81,'url'),(181,83,'adName'),(182,83,'videoCompleted'),(183,82,'overlayTitle'),(184,72,'Market_ID'),(185,84,'D50EF1926ADD471892E72BCE6D7E032C'),(186,84,'D780FBF4215247bcBB1AC0AD33C474FE'),(187,88,'SAFE_START'),(188,80,'shouldEnableBottomBar'),(189,82,'shouldMakeOverlayTransparent'),(190,72,'Wooboo_PID'),(191,82,'cachedAdView'),(192,83,'logSet'),(193,82,'overlayTransition');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,4,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,57,'r',1,NULL,NULL),(56,62,'a',1,NULL,NULL),(57,63,'a',0,NULL,NULL),(58,64,'a',0,NULL,NULL),(59,65,'a',0,NULL,NULL),(60,66,'a',0,NULL,NULL),(61,67,'a',0,NULL,NULL),(62,68,'a',0,NULL,NULL),(63,69,'a',0,NULL,NULL),(64,70,'s',0,NULL,NULL),(65,71,'r',1,NULL,NULL),(66,84,'a',1,NULL,NULL),(67,85,'a',0,NULL,NULL),(68,86,'s',0,NULL,NULL),(69,87,'s',1,NULL,NULL),(70,89,'r',1,NULL,NULL),(71,92,'a',0,NULL,NULL),(72,93,'a',1,NULL,NULL),(73,94,'a',0,NULL,NULL),(74,95,'a',0,NULL,NULL),(75,96,'a',0,NULL,NULL),(76,97,'a',1,NULL,NULL),(77,98,'a',0,NULL,NULL),(78,99,'a',0,NULL,NULL),(79,100,'a',0,NULL,NULL),(80,101,'a',0,NULL,NULL),(81,102,'a',0,NULL,NULL),(82,103,'a',0,NULL,NULL),(83,104,'a',0,NULL,NULL),(84,106,'a',0,NULL,NULL),(85,107,'a',0,NULL,NULL),(86,108,'a',0,NULL,NULL),(87,109,'a',0,NULL,NULL),(88,110,'s',0,NULL,NULL),(89,112,'r',1,NULL,NULL),(90,119,'r',1,NULL,NULL),(91,123,'r',1,NULL,NULL),(92,133,'r',1,NULL,NULL),(93,146,'r',1,NULL,NULL),(94,147,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,2,8),(4,3,1),(5,4,1),(6,4,8),(7,5,1),(8,5,8),(9,6,8),(10,7,8),(11,7,1),(12,8,6),(13,9,1),(14,10,8),(15,10,1),(16,11,8),(17,11,1),(18,12,1),(19,13,1),(20,14,1),(21,15,7),(22,16,5),(23,17,1),(24,18,8),(25,18,1),(26,19,1),(27,19,8),(28,20,9),(29,21,33),(30,22,24),(31,23,37),(32,24,24),(33,25,24),(34,26,24),(35,27,24),(36,28,33),(37,29,33),(38,30,26),(39,31,24),(40,32,26),(41,33,35),(42,34,30),(43,35,38),(44,36,32),(45,37,24),(46,38,10),(47,39,10),(48,40,10),(49,41,25),(50,42,17),(51,43,23),(52,44,10),(53,45,10),(54,46,10),(55,47,10),(56,48,10),(57,49,10),(58,50,10),(59,51,10),(60,52,19),(61,53,48),(62,54,10),(63,55,10),(64,56,10),(65,57,43),(66,58,53),(67,59,39),(68,60,53),(69,61,39),(70,62,39),(71,63,42),(72,64,39),(73,65,22),(74,66,52),(75,67,10),(76,68,41),(77,69,54),(78,70,19),(79,71,39),(80,72,42),(81,73,53),(82,74,39),(83,75,42),(84,76,68),(85,77,68),(86,78,66),(87,79,68),(88,80,66),(89,81,66),(90,82,66),(91,82,67),(92,83,70),(93,84,62),(94,85,64),(95,86,63),(96,87,63),(97,88,64),(98,89,57),(99,89,56),(100,89,59),(101,89,60),(102,89,64),(103,90,63),(104,91,63),(105,92,63),(106,93,62),(107,94,56),(108,94,60),(109,94,59),(110,94,57),(111,94,64),(112,95,61),(113,96,63),(114,97,63),(115,98,64),(116,99,56),(117,99,57),(118,99,59),(119,99,60),(120,99,64),(121,100,57),(122,101,59),(123,101,56),(124,101,57),(125,101,60),(126,101,64),(127,102,65),(128,103,60),(129,103,59),(130,103,56),(131,103,57),(132,103,64),(133,104,83),(134,104,84),(135,104,72),(136,104,76),(137,105,84),(138,105,76),(139,105,72),(140,106,72),(141,107,76),(142,107,72),(143,107,84),(144,107,83),(145,108,72),(146,109,77),(147,110,72),(148,111,72),(149,112,72),(150,112,76),(151,112,83),(152,112,84),(153,113,72),(154,113,76),(155,113,84),(156,114,76),(157,115,72),(158,116,72),(159,117,84),(160,117,72),(161,117,76),(162,118,72),(163,119,72),(164,119,76),(165,119,84),(166,120,84),(167,120,83),(168,120,76),(169,120,72),(170,121,72),(171,122,72),(172,123,84),(173,123,83),(174,123,72),(175,123,76),(176,124,72),(177,125,84),(178,126,84),(179,126,72),(180,126,76),(181,127,84),(182,128,84),(183,129,76),(184,129,72),(185,129,84),(186,129,83),(187,130,76),(188,130,84),(189,130,83),(190,130,72),(191,131,72),(192,132,76),(193,132,83),(194,132,84),(195,132,72),(196,133,89);
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,55,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(2,56,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(3,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',24,'s',NULL),(4,56,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(5,58,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(6,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(7,58,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(8,6,'<com.tutusw.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(9,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(10,56,'<com.tutusw.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(11,56,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(12,55,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(13,59,'<com.tutusw.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(14,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(15,60,'<com.tutusw.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(16,5,'<com.tutusw.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(17,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',27,'s',NULL),(18,56,'<com.tutusw.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(19,61,'<com.tutusw.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(20,9,'<com.tutusw.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(21,33,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(22,24,'<com.aijiaoyou.android.sipphone.OnlineActivity: void onResume()>',77,'a',NULL),(23,37,'<org.linphone.OutgoingCallReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'a',NULL),(24,24,'<com.aijiaoyou.android.sipphone.OnlineActivity: void jumpChongZhi()>',10,'a',NULL),(25,72,'<com.aijiaoyou.android.sipphone.OnlineActivity$11: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(26,24,'<com.aijiaoyou.android.sipphone.OnlineActivity: void runHistory()>',4,'a',NULL),(27,24,'<com.aijiaoyou.android.sipphone.OnlineActivity: void onCreate(android.os.Bundle)>',11,'s',NULL),(28,73,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(29,33,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(30,26,'<com.aijiaoyou.android.sipphone.AgentDetialInfo: void runChongZhi()>',10,'a',NULL),(31,24,'<com.aijiaoyou.android.sipphone.OnlineActivity: void runChongZhi()>',10,'a',NULL),(32,26,'<com.aijiaoyou.android.sipphone.AgentDetialInfo: void jumpChongZhi()>',10,'a',NULL),(33,35,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(34,74,'<com.alipay.android.MobileSecurePayer: boolean pay(java.lang.String,android.os.Handler,int,android.app.Activity)>',20,'s',NULL),(35,38,'<org.linphone.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(36,75,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(37,24,'<com.aijiaoyou.android.sipphone.OnlineActivity: void startVoiceActivity()>',4,'a',NULL),(38,10,'<com.safesys.superexplorer.RootExplorer: void CreateZipFromFolder(com.safesys.superexplorer.DirectoryEntry)>',12,'a',NULL),(39,10,'<com.safesys.superexplorer.RootExplorer: void ShowPreferences()>',3,'a',NULL),(40,10,'<com.safesys.superexplorer.RootExplorer: void ShowBookmarks()>',3,'a',NULL),(41,25,'<com.safesys.superexplorer.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(42,17,'<com.safesys.superexplorer.ViewDatabase: void OpenItem(com.safesys.superexplorer.Database$Table)>',15,'a',NULL),(43,76,'<com.ju6.a: boolean b()>',178,'p',NULL),(44,10,'<com.safesys.superexplorer.RootExplorer: void DownloadRootExplorer()>',4,'a',NULL),(45,10,'<com.safesys.superexplorer.RootExplorer: void Search()>',5,'a',NULL),(46,10,'<com.safesys.superexplorer.RootExplorer: void EditItem(com.safesys.superexplorer.DirectoryEntry)>',4,'a',0),(47,10,'<com.safesys.superexplorer.RootExplorer: void ShowPermissionsDialog(com.safesys.superexplorer.DirectoryEntry)>',13,'a',NULL),(48,10,'<com.safesys.superexplorer.RootExplorer: void ExecuteZipSelected(java.lang.String)>',11,'a',NULL),(49,10,'<com.safesys.superexplorer.RootExplorer: void Send(com.safesys.superexplorer.DirectoryEntry)>',6,'a',0),(50,10,'<com.safesys.superexplorer.RootExplorer: void OpenItem(com.safesys.superexplorer.DirectoryEntry)>',53,'a',NULL),(51,77,'<com.safesys.superexplorer.RootExplorer$33: void onClick(android.content.DialogInterface,int)>',37,'a',NULL),(52,78,'<com.safesys.superexplorer.SQLiteEditorAdvert$1: void onClick(android.view.View)>',21,'a',NULL),(53,48,'<com.bottleworks.dailymoney.ui.report.BalanceActivity: void doDetailList(int)>',19,'a',NULL),(54,79,'<com.safesys.superexplorer.RootExplorer$34: void onClick(android.content.DialogInterface,int)>',23,'a',NULL),(55,10,'<com.safesys.superexplorer.RootExplorer: void OpenAsText(com.safesys.superexplorer.DirectoryEntry)>',10,'a',0),(56,80,'<com.safesys.superexplorer.RootExplorer$31: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(57,43,'<com.bottleworks.dailymoney.ui.AccountEditorActivity: void doCalculator2()>',8,'a',NULL),(58,53,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(59,81,'<net.youmi.android.n: void onClick(android.view.View)>',13,'a',NULL),(60,53,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(61,82,'<net.youmi.android.q: void onClick(android.view.View)>',7,'a',NULL),(62,83,'<net.youmi.android.m: void onClick(android.view.View)>',11,'a',NULL),(63,42,'<com.bottleworks.dailymoney.ui.AccountMgntActivity: void doNewAccount()>',9,'a',NULL),(64,88,'<net.youmi.android.r: void onClick(android.view.View)>',7,'a',NULL),(65,90,'<com.safesys.superexplorer.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(66,91,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(67,10,'<com.safesys.superexplorer.RootExplorer: void CreateZipFromFile(com.safesys.superexplorer.DirectoryEntry)>',16,'a',NULL),(68,41,'<com.bottleworks.dailymoney.ui.DetailEditorActivity: void doCalculator2()>',8,'a',NULL),(69,54,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(70,19,'<com.safesys.superexplorer.SQLiteEditorAdvert: void DownloadSQLiteEditor()>',4,'a',NULL),(71,39,'<com.bottleworks.dailymoney.ui.DesktopActivity: void initPasswordProtection()>',17,'a',NULL),(72,42,'<com.bottleworks.dailymoney.ui.AccountMgntActivity: void doCopyAccount(int)>',9,'a',NULL),(73,105,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(74,111,'<net.youmi.android.R: void onClick(android.view.View)>',25,'a',NULL),(75,42,'<com.bottleworks.dailymoney.ui.AccountMgntActivity: void doEditAccount(int)>',9,'a',NULL),(76,86,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(77,113,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(78,114,'<com.wiyun.ad.AdView$2: boolean onKey(android.view.View,int,android.view.KeyEvent)>',28,'a',NULL),(79,86,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(80,84,'<com.andtutu.stetris.MainActivity: void onPause()>',14,'s',NULL),(81,84,'<com.andtutu.stetris.MainActivity: void onResume()>',20,'s',NULL),(82,115,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(83,89,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(84,116,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(85,70,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(86,117,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(87,69,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(88,70,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(89,118,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(90,120,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(91,69,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(92,69,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(93,121,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(94,122,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(95,124,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(96,125,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(97,126,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(98,127,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(99,128,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(100,63,'<com.gp.jewels.Jewels: void toMenuView()>',7,'a',NULL),(101,129,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(102,71,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(103,130,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(104,104,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(105,131,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(106,132,'<com.ju6.c: boolean b()>',192,'p',NULL),(107,104,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(108,132,'<com.ju6.c: void run()>',146,'p',NULL),(109,134,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(110,135,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(111,136,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(112,137,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(113,138,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(114,97,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(115,93,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(116,135,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(117,139,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(118,132,'<com.ju6.c: boolean b()>',272,'p',NULL),(119,140,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(120,104,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(121,132,'<com.ju6.c: boolean b()>',195,'p',0),(122,141,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(123,104,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(124,135,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(125,142,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(126,143,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(127,144,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(128,145,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(129,104,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(130,104,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(131,93,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(132,104,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(133,112,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,7),(2,6,8),(3,7,8),(4,8,8),(5,9,8),(6,10,8),(7,11,8),(8,12,8),(9,13,8),(10,15,9),(11,22,10),(12,30,1),(13,31,1),(14,44,11),(15,45,1),(16,46,12),(17,53,13),(18,57,13),(19,58,13),(20,59,13),(21,60,14),(22,63,13),(23,64,13),(24,66,13),(25,67,13),(26,68,13),(27,77,13),(28,79,13),(29,81,13),(30,83,14),(31,84,15),(32,89,13),(33,90,13),(34,91,13),(35,93,13),(36,94,16),(37,95,13),(38,97,13),(39,98,13),(40,99,1),(41,100,1),(42,101,12),(43,105,13),(44,108,1),(45,109,1),(46,110,13),(47,111,13),(48,115,1),(49,116,1),(50,117,13),(51,120,17),(52,121,17),(53,122,12),(54,124,12),(55,127,13),(56,128,1),(57,129,1),(58,136,1),(59,137,1),(60,138,1),(61,139,1),(62,140,13),(63,141,13),(64,142,13),(65,144,1),(66,145,1),(67,147,13),(68,149,13),(69,150,13),(70,151,13),(71,152,13),(72,154,16),(73,155,13),(74,156,13),(75,157,1),(76,158,1),(77,159,22),(78,162,13),(79,164,13),(80,166,13),(81,167,23),(82,169,8),(83,170,8),(84,171,8),(85,172,8),(86,173,8),(87,174,8),(88,175,8),(89,176,8),(90,177,13),(91,178,13),(92,179,13),(93,180,13),(94,181,13),(95,182,13),(96,183,13),(97,184,13),(98,185,13),(99,187,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,30,1),(2,31,3),(3,99,1),(4,100,3),(5,108,3),(6,109,1),(7,115,3),(8,116,1),(9,128,1),(10,129,3),(11,136,1),(12,137,3),(13,138,1),(14,139,3),(15,144,1),(16,145,3),(17,157,1),(18,158,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/tutusw/onekeyvpn/service/OpenVpnService'),(2,2,'com/tutusw/onekeyvpn/service/OpenVpnService'),(3,4,'com/tutusw/onekeyvpn/service/OpenVpnService'),(4,5,'com/tutusw/onekeyvpn/service/OpenVpnService'),(5,14,'com/tutusw/onekeyvpn/AdvancedSettings'),(6,16,'com/tutusw/onekeyvpn/service/OpenVpnService'),(7,17,'com/tutusw/onekeyvpn/service/OpenVpnService'),(8,18,'com/tutusw/onekeyvpn/service/OpenVpnService'),(9,19,'com/google/ssearch/Dialog'),(10,20,'com/google/ssearch/Dialog'),(11,21,'com/aijiaoyou/android/sipphone/AgentDetialInfo'),(12,23,'com/aijiaoyou/android/sipphone/OnlineActivity'),(13,25,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(14,26,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(15,27,'com/aijiaoyou/android/sipphone/AgentDetialInfo'),(16,28,'com/aijiaoyou/android/sipphone/HistoryDetailActivity'),(17,29,'org/linphone/LinphoneService'),(18,32,'com/google/ssearch/Dialog'),(19,33,'com/google/ssearch/Dialog'),(20,35,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(21,36,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(22,38,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(23,39,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(24,41,'com/aijiaoyou/android/sipphone/ChongZhiActivity'),(25,42,'com/aijiaoyou/android/sipphone/ZhiFuBaoChongZhiActivity'),(26,43,'com/google/ssearch/SearchService'),(27,45,'org/linphone/LinphoneService'),(28,47,'com/aijiaoyou/android/sipphone/SongListActivity'),(29,48,'com/safesys/superexplorer/CreateZip'),(30,49,'com/safesys/superexplorer/Preferences'),(31,50,'com/safesys/superexplorer/BookmarkList'),(32,51,'com/safesys/superexplorer/UpdateService'),(33,52,'com/safesys/superexplorer/ViewTable'),(34,54,'com/safesys/superexplorer/SearchCriteria'),(35,55,'com/safesys/superexplorer/PermissionsActivity'),(36,56,'com/safesys/superexplorer/CreateZip'),(37,60,'com.safesys.sqleditor.EditDatabase'),(38,61,'com/safesys/superexplorer/SQLiteEditorAdvert'),(39,62,'com/safesys/superexplorer/ViewDatabase'),(40,65,'com/safesys/superexplorer/DisplayText'),(41,69,'com/safesys/superexplorer/DisplayText'),(42,70,'com/safesys/superexplorer/DisplayText'),(43,71,'com/safesys/superexplorer/ViewDatabase'),(44,72,'com/bottleworks/dailymoney/ui/AccountDetailListActivity'),(45,73,'com/safesys/superexplorer/ScriptActivity'),(46,74,'com/bottleworks/dailymoney/ui/AccountDetailListActivity'),(47,75,'com/bottleworks/dailymoney/ui/AccountDetailListActivity'),(48,76,'com/bottleworks/dailymoney/ui/AccountDetailListActivity'),(49,78,'com/bottleworks/dailymoney/calculator2/Calculator'),(50,80,'com/eguan/state/Dialog'),(51,82,'com/eguan/state/Dialog'),(52,83,'com.safesys.sqleditor.EditDatabase'),(53,85,'com/safesys/superexplorer/SQLiteEditorAdvert'),(54,86,'com/eguan/state/Dialog'),(55,87,'com/safesys/superexplorer/ViewDatabase'),(56,88,'com/eguan/state/Dialog'),(57,92,'com/safesys/superexplorer/DisplayText'),(58,96,'com/bottleworks/dailymoney/ui/AccountEditorActivity'),(59,102,'com/safesys/superexplorer/CreateZip'),(60,103,'com/bottleworks/dailymoney/calculator2/Calculator'),(61,104,'com/eguan/state/StateService'),(62,106,'com/bottleworks/dailymoney/ui/PasswordProtectionActivity'),(63,107,'com/bottleworks/dailymoney/ui/AccountEditorActivity'),(64,112,'com/bottleworks/dailymoney/ui/AccountEditorActivity'),(65,113,'com/google/ssearch/Dialog'),(66,114,'com/google/ssearch/Dialog'),(67,118,'com/google/ssearch/Dialog'),(68,119,'com/google/ssearch/Dialog'),(69,123,'com/google/ssearch/SearchService'),(70,125,'com/google/update/Dialog'),(71,126,'com/google/update/Dialog'),(72,130,'com/google/update/Dialog'),(73,131,'com/google/update/Dialog'),(74,132,'com/waps/OffersWebView'),(75,133,'com/waps/OffersWebView'),(76,134,'(.*)'),(77,143,'NULL-CONSTANT'),(78,146,'com/gp/jewels/Menu'),(79,153,'com/google/update/UpdateService'),(80,155,'com.android.browser.BrowserActivity'),(81,160,'com/evilsunflower/reader/BookmarkEditActivity'),(82,161,'com.evilsunflower.reader.FBReader'),(83,165,'com/evilsunflower/reader/control/UpdateService'),(84,186,'com/millennialmedia/android/MMAdViewOverlayActivity'),(85,188,'com.evilsunflower.reader.FBReader'),(86,189,'com/millennialmedia/android/MMAdViewOverlayActivity'),(87,190,'com/evilsunflower/reader/control/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,22,1),(2,23,2),(3,53,4),(4,57,5),(5,58,6),(6,59,7),(7,60,8),(8,61,9),(9,62,10),(10,63,11),(11,64,12),(12,65,13),(13,66,14),(14,67,15),(15,68,16),(16,69,17),(17,70,18),(18,71,19),(19,73,20),(20,77,21),(21,79,22),(22,81,23),(23,83,24),(24,84,25),(25,85,26),(26,87,27),(27,89,28),(28,90,29),(29,91,30),(30,92,31),(31,94,32),(32,93,33),(33,95,34),(34,97,35),(35,98,36),(36,105,37),(37,110,38),(38,111,39),(39,117,40),(40,127,41),(41,140,43),(42,141,44),(43,142,45),(44,147,47),(45,149,48),(46,150,49),(47,151,50),(48,152,51),(49,154,52),(50,155,53),(51,156,55),(52,162,63),(53,164,65),(54,166,66),(55,177,68),(56,178,69),(57,179,70),(58,180,71),(59,181,72),(60,182,73),(61,183,74),(62,184,75),(63,185,76),(64,186,77),(65,187,78),(66,189,79);
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'android.intent.extra.INTENT'),(2,7,'android.intent.extra.INTENT'),(3,8,'android.intent.extra.TITLE'),(4,8,'android.intent.extra.INTENT'),(5,9,'android.intent.extra.INTENT'),(6,10,'android.intent.extra.TITLE'),(7,10,'android.intent.extra.INTENT'),(8,11,'android.intent.extra.INTENT'),(9,12,'android.intent.extra.TITLE'),(10,12,'android.intent.extra.INTENT'),(11,13,'android.intent.extra.TITLE'),(12,13,'android.intent.extra.INTENT'),(13,14,'hasDaemonsStarted'),(14,15,'org.openintents.extra.TITLE'),(15,19,'TYPEdsada'),(16,20,'MSG'),(17,20,'TYPEdsada'),(18,21,'sign'),(19,21,'fee'),(20,21,'sex'),(21,21,'phone'),(22,21,'nickname'),(23,21,'largeimgurl'),(24,21,'state'),(25,21,'callflag'),(26,21,'city'),(27,27,'sign'),(28,27,'fee'),(29,27,'phone'),(30,27,'sex'),(31,27,'largeimgurl'),(32,27,'nickname'),(33,27,'age'),(34,27,'state'),(35,27,'city'),(36,32,'TYPEdsada'),(37,33,'MSG'),(38,33,'TYPEdsada'),(39,48,'data'),(40,48,'mode'),(41,52,'make_readable_cmd'),(42,52,'restore_permissions_cmd'),(43,52,'table'),(44,52,'make_writeable_cmd'),(45,54,'location'),(46,55,'iconid'),(47,55,'name'),(48,55,'permissions'),(49,55,'fullpath'),(50,56,'data'),(51,56,'zip_name'),(52,56,'mode'),(53,60,'make_readable_cmd'),(54,60,'restore_permissions_cmd'),(55,60,'permissions'),(56,60,'make_writeable_cmd'),(57,61,'make_readable_cmd'),(58,61,'restore_permissions_cmd'),(59,61,'permissions'),(60,61,'make_writeable_cmd'),(61,62,'make_readable_cmd'),(62,62,'restore_permissions_cmd'),(63,62,'permissions'),(64,65,'edit_mode'),(65,65,'permissions'),(66,69,'chmod_value'),(67,69,'permissions'),(68,69,'edit_mode'),(69,69,'owner'),(70,69,'group'),(71,69,'size'),(72,70,'edit_mode'),(73,70,'permissions'),(74,70,'owner'),(75,70,'group'),(76,70,'size'),(77,71,'make_readable_cmd'),(78,71,'restore_permissions_cmd'),(79,71,'permissions'),(80,72,'targetInfo'),(81,72,'target'),(82,73,'permissions'),(83,73,'size'),(84,74,'targetInfo'),(85,74,'start'),(86,74,'target'),(87,74,'end'),(88,75,'targetInfo'),(89,75,'start'),(90,75,'target'),(91,76,'targetInfo'),(92,76,'target'),(93,76,'end'),(94,78,'cal2_startValue'),(95,78,'cal2_needResult'),(96,80,'MSG'),(97,80,'TYPEdsada'),(98,82,'TYPEdsada'),(99,83,'make_readable_cmd'),(100,83,'restore_permissions_cmd'),(101,83,'permissions'),(102,83,'make_writeable_cmd'),(103,84,'sms_body'),(104,85,'make_readable_cmd'),(105,85,'restore_permissions_cmd'),(106,85,'permissions'),(107,85,'make_writeable_cmd'),(108,86,'MSG'),(109,87,'make_readable_cmd'),(110,86,'TYPEdsada'),(111,87,'restore_permissions_cmd'),(112,87,'permissions'),(113,88,'TYPEdsada'),(114,92,'edit_mode'),(115,92,'permissions'),(116,96,'modeCreate'),(117,96,'account'),(118,102,'data'),(119,102,'zip_name'),(120,103,'cal2_startValue'),(121,102,'mode'),(122,103,'cal2_needResult'),(123,107,'modeCreate'),(124,107,'account'),(125,112,'modeCreate'),(126,112,'account'),(127,113,'MSG'),(128,113,'TYPEdsada'),(129,114,'TYPEdsada'),(130,118,'MSG'),(131,118,'TYPEdsada'),(132,119,'TYPEdsada'),(133,120,'music_state'),(134,121,'music_state'),(135,125,'MSG'),(136,125,'TYPEdsada'),(137,126,'TYPEdsada'),(138,130,'MSG'),(139,130,'TYPEdsada'),(140,131,'TYPEdsada'),(141,132,'UrlPath'),(142,132,'ACTIVITY_FLAG'),(143,132,'isFinshClose'),(144,132,'offers_webview_tag'),(145,133,'Notify_Url_Params'),(146,133,'UrlPath'),(147,133,'ACTIVITY_FLAG'),(148,133,'isFinshClose'),(149,133,'offers_webview_tag'),(150,159,'command'),(151,167,'android.intent.extra.TEXT'),(152,167,'android.intent.extra.SUBJECT'),(153,167,'android.intent.extra.EMAIL'),(154,169,'android.intent.extra.INTENT'),(155,170,'android.intent.extra.INTENT'),(156,171,'android.intent.extra.TITLE'),(157,171,'android.intent.extra.INTENT'),(158,172,'android.intent.extra.INTENT'),(159,173,'android.intent.extra.TITLE'),(160,173,'android.intent.extra.INTENT'),(161,174,'android.intent.extra.INTENT'),(162,175,'android.intent.extra.TITLE'),(163,175,'android.intent.extra.INTENT'),(164,176,'android.intent.extra.TITLE'),(165,176,'android.intent.extra.INTENT'),(166,186,'cachedAdView'),(167,189,'cachedAdView');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,3),(6,5,2),(7,5,4),(8,6,1),(9,7,2),(10,7,3),(11,7,4),(12,8,5),(13,9,6),(14,10,2),(15,11,1),(16,12,4),(17,12,3),(18,12,2),(19,13,5),(20,14,1),(21,15,4),(22,15,2),(23,15,3),(24,16,1),(25,17,17),(26,18,2),(27,18,3),(28,18,4),(29,19,18),(30,20,1),(31,21,18),(32,22,3),(33,22,4),(34,22,2),(35,23,19),(36,24,19),(37,25,19),(38,26,20),(39,26,21),(40,27,24),(41,28,24),(42,29,24),(43,30,24);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,2),(4,4,1),(5,11,1),(6,14,1),(7,16,1),(8,17,2),(9,20,1);
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
INSERT INTO `IFData` VALUES (1,23,'package',NULL,NULL,NULL,NULL,NULL),(2,24,'package',NULL,NULL,NULL,NULL,NULL),(3,25,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,57,'application','vnd.ms-powerpoint'),(2,58,'image','*'),(3,59,'application','pdf'),(4,63,'application','msword'),(5,64,'application','vnd.ms-excel'),(6,66,'application','vnd.android.package-archive'),(7,67,'audio','*'),(8,68,'video','*'),(9,77,'application','vnd.ms-powerpoint'),(10,79,'image','*'),(11,81,'application','pdf'),(12,89,'application','msword'),(13,90,'application','vnd.ms-excel'),(14,93,'application','vnd.android.package-archive'),(15,95,'audio','*'),(16,97,'video','*'),(17,127,'application','vnd.android.package-archive'),(18,142,'application','vnd.android.package-archive'),(19,147,'application','vnd.android.package-archive'),(20,149,'application','vnd.android.package-archive'),(21,150,'application','vnd.android.package-archive'),(22,151,'application','vnd.android.package-archive'),(23,152,'application','vnd.android.package-archive'),(24,162,'application','vnd.android.package-archive'),(25,167,'message','rfc822'),(26,177,'application','vnd.android.package-archive'),(27,178,'application','vnd.android.package-archive'),(28,179,'application','vnd.android.package-archive'),(29,180,'application','vnd.android.package-archive'),(30,181,'application','vnd.android.package-archive'),(31,182,'application','vnd.android.package-archive'),(32,183,'application','vnd.android.package-archive'),(33,184,'application','vnd.android.package-archive'),(34,185,'application','vnd.android.package-archive');
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
INSERT INTO `IPackages` VALUES (1,1,'com.tutusw.onekeyvpn'),(2,2,'com.tutusw.onekeyvpn'),(3,4,'com.tutusw.onekeyvpn'),(4,5,'com.tutusw.onekeyvpn'),(5,14,'com.tutusw.onekeyvpn'),(6,16,'com.tutusw.onekeyvpn'),(7,17,'com.tutusw.onekeyvpn'),(8,18,'com.tutusw.onekeyvpn'),(9,19,'com.aijiaoyou.android.sipphone'),(10,20,'com.aijiaoyou.android.sipphone'),(11,21,'com.aijiaoyou.android.sipphone'),(12,23,'com.aijiaoyou.android.sipphone'),(13,25,'com.aijiaoyou.android.sipphone'),(14,26,'com.aijiaoyou.android.sipphone'),(15,27,'com.aijiaoyou.android.sipphone'),(16,28,'com.aijiaoyou.android.sipphone'),(17,29,'com.aijiaoyou.android.sipphone'),(18,30,'com.aijiaoyou.android.sipphone'),(19,31,'com.aijiaoyou.android.sipphone'),(20,32,'com.aijiaoyou.android.sipphone'),(21,33,'com.aijiaoyou.android.sipphone'),(22,35,'com.aijiaoyou.android.sipphone'),(23,36,'com.aijiaoyou.android.sipphone'),(24,38,'com.aijiaoyou.android.sipphone'),(25,39,'com.aijiaoyou.android.sipphone'),(26,41,'com.aijiaoyou.android.sipphone'),(27,42,'com.aijiaoyou.android.sipphone'),(28,43,'com.aijiaoyou.android.sipphone'),(29,45,'com.aijiaoyou.android.sipphone'),(30,47,'com.aijiaoyou.android.sipphone'),(31,48,'com.safesys.superexplorer'),(32,49,'com.safesys.superexplorer'),(33,50,'com.safesys.superexplorer'),(34,51,'com.safesys.superexplorer'),(35,52,'com.safesys.superexplorer'),(36,54,'com.safesys.superexplorer'),(37,55,'com.safesys.superexplorer'),(38,56,'com.safesys.superexplorer'),(39,60,'com.safesys.sqleditor'),(40,61,'com.safesys.superexplorer'),(41,62,'com.safesys.superexplorer'),(42,65,'com.safesys.superexplorer'),(43,69,'com.safesys.superexplorer'),(44,70,'com.safesys.superexplorer'),(45,71,'com.safesys.superexplorer'),(46,72,'com.bottleworks.dailymoney'),(47,73,'com.safesys.superexplorer'),(48,74,'com.bottleworks.dailymoney'),(49,75,'com.bottleworks.dailymoney'),(50,76,'com.bottleworks.dailymoney'),(51,78,'com.bottleworks.dailymoney'),(52,80,'com.bottleworks.dailymoney'),(53,82,'com.bottleworks.dailymoney'),(54,83,'com.safesys.sqleditor'),(55,85,'com.safesys.superexplorer'),(56,86,'com.bottleworks.dailymoney'),(57,87,'com.safesys.superexplorer'),(58,88,'com.bottleworks.dailymoney'),(59,92,'com.safesys.superexplorer'),(60,96,'com.bottleworks.dailymoney'),(61,99,'com.noshufou.android.su'),(62,100,'com.noshufou.android.su'),(63,102,'com.safesys.superexplorer'),(64,103,'com.bottleworks.dailymoney'),(65,104,'com.bottleworks.dailymoney'),(66,106,'com.bottleworks.dailymoney'),(67,107,'com.bottleworks.dailymoney'),(68,108,'com.bottleworks.dailymoney'),(69,109,'com.bottleworks.dailymoney'),(70,112,'com.bottleworks.dailymoney'),(71,113,'com.andtutu.stetris'),(72,114,'com.andtutu.stetris'),(73,115,'com.andtutu.stetris'),(74,116,'com.andtutu.stetris'),(75,118,'com.andtutu.stetris'),(76,119,'com.andtutu.stetris'),(77,123,'com.andtutu.stetris'),(78,125,'com.gp.jewels'),(79,126,'com.gp.jewels'),(80,128,'(.*)'),(81,129,'(.*)'),(82,130,'com.gp.jewels'),(83,131,'com.gp.jewels'),(84,132,'com.gp.jewels'),(85,133,'com.gp.jewels'),(86,134,'(.*)'),(87,136,'(.*)'),(88,137,'(.*)'),(89,138,'com.noshufou.android.su'),(90,139,'com.noshufou.android.su'),(91,143,'NULL-CONSTANT'),(92,144,'com.gp.jewels'),(93,145,'com.gp.jewels'),(94,146,'com.gp.jewels'),(95,153,'com.gp.jewels'),(96,155,'com.android.browser'),(97,157,'com.noshufou.android.su'),(98,158,'com.noshufou.android.su'),(99,160,'com.evilsunflower.reader.evilJinping2'),(100,161,'com.evilsunflower.reader.evilJinping2'),(101,165,'com.evilsunflower.reader.evilJinping2'),(102,186,'com.evilsunflower.reader.evilJinping2'),(103,188,'com.evilsunflower.reader.evilJinping2'),(104,189,'com.evilsunflower.reader.evilJinping2'),(105,190,'com.evilsunflower.reader.evilJinping2');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,10,0),(4,20,0),(5,25,0),(6,31,0),(7,35,0),(8,36,0),(9,37,0),(10,38,0),(11,39,0),(12,54,0),(13,55,0),(14,56,0),(15,65,0),(16,66,0),(17,69,0),(18,70,0),(19,72,0),(20,72,0),(21,76,0),(22,89,0),(23,90,0),(24,91,0),(25,90,0),(26,92,0),(27,93,0),(28,89,0),(29,94,0),(30,92,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,3,0,0),(3,6,1,0),(4,8,0,0),(5,12,0,0),(6,13,1,0),(7,13,1,0),(8,13,1,0),(9,13,1,0),(10,13,1,0),(11,13,1,0),(12,13,1,0),(13,13,1,0),(14,14,0,0),(15,15,1,0),(16,16,0,0),(17,17,0,0),(18,20,0,0),(19,21,0,0),(20,21,0,0),(21,22,0,0),(22,23,1,0),(23,23,0,0),(24,24,1,0),(25,24,0,0),(26,24,0,0),(27,25,0,0),(28,26,0,0),(29,27,0,0),(30,28,1,0),(31,28,1,0),(32,29,0,0),(33,29,0,0),(34,30,1,0),(35,30,0,0),(36,30,0,0),(37,31,1,0),(38,31,0,0),(39,31,0,0),(40,32,1,0),(41,32,0,0),(42,32,0,0),(43,33,0,0),(44,34,1,0),(45,35,0,0),(46,36,1,0),(47,37,0,0),(48,38,0,0),(49,39,0,0),(50,40,0,0),(51,41,0,0),(52,42,0,0),(53,44,1,0),(54,45,0,0),(55,47,0,0),(56,48,0,0),(57,50,1,0),(58,50,1,0),(59,50,1,0),(60,50,0,0),(61,50,0,0),(62,50,0,0),(63,50,1,0),(64,50,1,0),(65,50,0,0),(66,50,1,0),(67,50,1,0),(68,50,1,0),(69,51,0,0),(70,51,0,0),(71,52,0,0),(72,53,0,0),(73,54,0,0),(74,53,0,0),(75,53,0,0),(76,53,0,0),(77,56,1,0),(78,57,0,0),(79,56,1,0),(80,58,0,0),(81,56,1,0),(82,58,0,0),(83,56,0,0),(84,59,1,0),(85,56,0,0),(86,60,0,0),(87,56,0,0),(88,60,0,0),(89,56,1,0),(90,56,1,0),(91,61,1,0),(92,56,0,0),(93,56,1,0),(94,62,1,0),(95,56,1,0),(96,63,0,0),(97,56,1,0),(98,64,1,0),(99,65,1,0),(100,65,1,0),(101,66,1,0),(102,67,0,0),(103,68,0,0),(104,69,0,0),(105,70,1,0),(106,71,0,0),(107,72,0,0),(108,73,1,0),(109,73,1,0),(110,74,1,0),(111,74,1,0),(112,75,0,0),(113,76,0,0),(114,76,0,0),(115,77,1,0),(116,77,1,0),(117,78,1,0),(118,79,0,0),(119,79,0,0),(120,80,1,0),(121,81,1,0),(122,82,1,0),(123,83,0,0),(124,84,1,0),(125,85,0,0),(126,85,0,0),(127,86,1,0),(128,87,1,0),(129,87,1,0),(130,88,0,0),(131,88,0,0),(132,90,0,0),(133,90,0,0),(134,91,0,0),(135,92,1,0),(136,92,1,0),(137,92,1,0),(138,93,1,0),(139,93,1,0),(140,94,1,0),(141,95,1,0),(142,96,1,0),(143,97,0,0),(144,98,1,0),(145,98,1,0),(146,100,0,0),(147,101,1,0),(148,101,1,0),(149,101,1,0),(150,101,1,0),(151,101,1,0),(152,101,1,0),(153,102,0,0),(154,104,1,0),(155,105,0,0),(156,107,1,0),(157,109,1,0),(158,109,1,0),(159,112,1,0),(160,114,0,0),(161,115,0,0),(162,117,1,0),(163,119,1,0),(164,120,1,0),(165,122,0,0),(166,123,1,0),(167,125,1,0),(168,126,1,0),(169,127,1,0),(170,127,1,0),(171,127,1,0),(172,127,1,0),(173,127,1,0),(174,127,1,0),(175,127,1,0),(176,127,1,0),(177,128,1,0),(178,128,1,0),(179,128,1,0),(180,128,1,0),(181,128,1,0),(182,128,1,0),(183,128,1,0),(184,128,1,0),(185,128,1,0),(186,129,0,0),(187,130,1,0),(188,131,0,0),(189,132,0,0),(190,133,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(19,'android.permission.ACCESS_FINE_LOCATION'),(22,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(14,'android.permission.BOOT_COMPLETED'),(3,'android.permission.BROADCAST_STICKY'),(15,'android.permission.CHANGE_WIFI_STATE'),(11,'android.permission.GET_TASKS'),(10,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(13,'android.permission.MODIFY_AUDIO_SETTINGS'),(20,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(5,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.RECORD_AUDIO'),(16,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'android.permission.WRITE_SMS'),(23,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(21,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'tel://(.*);0000000',NULL,NULL,NULL),(2,NULL,NULL,'tel://(.*);0000000',NULL,NULL,NULL),(3,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(4,NULL,NULL,'market://search?q=pname:com.safesys.superexplorer',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'smsto:',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'tel:',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'',NULL,NULL,NULL),(37,NULL,NULL,'market://search?q=pname:com.safesys.sqleditor',NULL,NULL,NULL),(38,NULL,NULL,'NULL-CONSTANT(.*)',NULL,NULL,NULL),(39,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(43,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(48,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(51,NULL,NULL,'file://',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'content://mms/',NULL,NULL,NULL),(57,NULL,NULL,'content://mms/',NULL,NULL,NULL),(58,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(61,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(62,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(63,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(64,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(65,NULL,NULL,'(.*)',NULL,NULL,NULL),(66,NULL,NULL,'(.*)',NULL,NULL,NULL),(67,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(68,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(69,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(70,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(71,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(72,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(73,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(74,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(75,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(76,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(77,NULL,NULL,'(.*)',NULL,NULL,NULL),(78,NULL,NULL,'(.*)',NULL,NULL,NULL),(79,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,43,3),(2,89,42),(3,99,46),(4,106,54),(5,108,56),(6,110,57),(7,110,58),(8,113,59),(9,116,60),(10,116,61),(11,116,62),(12,118,64),(13,124,67);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,5),(7,2,6),(8,2,7),(9,2,8),(10,2,9),(11,3,17),(12,3,16),(13,3,1),(14,3,2),(15,3,18),(16,3,6),(17,3,9),(18,3,10),(19,3,11),(20,3,12),(21,3,13),(22,3,14),(23,3,15),(24,4,1),(25,4,19),(26,4,2),(27,4,6),(28,4,9),(29,4,12),(30,4,15),(31,5,1),(32,5,2),(33,5,4),(34,5,6),(35,5,8),(36,5,9),(37,5,11),(38,5,12),(39,5,15),(40,5,17),(41,5,16),(42,5,19),(43,5,18),(44,5,21),(45,5,20),(46,5,22),(47,6,16),(48,6,1),(49,6,2),(50,6,6),(51,6,9),(52,6,10),(53,6,12),(54,6,15),(55,7,1),(56,7,19),(57,7,2),(58,7,18),(59,7,5),(60,7,23),(61,7,6),(62,7,7),(63,7,8),(64,7,9),(65,7,12);
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

-- Dump completed on 2015-10-09  0:38:27
