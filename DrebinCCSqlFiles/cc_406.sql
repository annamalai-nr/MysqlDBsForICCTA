-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_406
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (41,'(.*)'),(14,'.Myhall'),(16,'.Web'),(45,'NULL-CONSTANT'),(34,'android.appwidget.action.APPWIDGET_UPDATE'),(33,'android.intent.action.ACTION_SHUTDOWN'),(3,'android.intent.action.BOOT_COMPLETED'),(44,'android.intent.action.CHOOSER'),(6,'android.intent.action.CheckinHub'),(38,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.PACKAGE_REMOVED'),(39,'android.intent.action.SCREEN_OFF'),(43,'android.intent.action.SCREEN_ON'),(5,'android.intent.action.SEARCH'),(42,'android.intent.action.SENDTO'),(8,'android.intent.action.USER_PRESENT'),(4,'android.intent.action.VIEW'),(12,'android.net.conn.CONNECTIVITY_CHANGE'),(46,'cn.tinrqca.dgltqccse_u.showAdFinish'),(2,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(11,'com.android.vending.INSTALL_REFERRER'),(15,'com.b_jsy.GameBootReceiver'),(13,'com.b_jsy.Myhall'),(17,'com.b_jsy.Web'),(7,'com.gamesns.GamesnsService'),(36,'com.googlecode.droidwall.intent.action.STATUS_CHANGED'),(35,'com.googlecode.droidwall.intent.action.TOGGLE_REQUEST'),(19,'com.souapp.appdaren.receiver.UpdateUiService'),(32,'com.souapp.appdaren.taskManager.FOREGROUND'),(21,'com.souapp.deviceinfo.check.core.IPluginRegistry'),(26,'com.souapp.deviceinfo.check.plugins.api.APIPlugin'),(25,'com.souapp.deviceinfo.check.plugins.camera.CameraPlugin'),(22,'com.souapp.deviceinfo.check.plugins.cpu.CPUPlugin'),(31,'com.souapp.deviceinfo.check.plugins.device.DeviceInfoPlugin'),(37,'com.souapp.deviceinfo.check.plugins.discovery'),(27,'com.souapp.deviceinfo.check.plugins.display.DisplayPlugin'),(30,'com.souapp.deviceinfo.check.plugins.keyboard.KeyboardPlugin'),(24,'com.souapp.deviceinfo.check.plugins.location.LocationPlugin'),(23,'com.souapp.deviceinfo.check.plugins.memory.MemoryPlugin'),(29,'com.souapp.deviceinfo.check.plugins.radiointerfaces.RadioInterfacesPlugin'),(28,'com.souapp.deviceinfo.check.plugins.sensors.SensorsPlugin'),(20,'com.souapp.pic2gif.MyMakeGifService'),(18,'com.souapp.snapscreen.ScreenshotService.BIND'),(40,'iup.pr4f.umiob.abaipic.fmdhFGPN');
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
INSERT INTO `Applications` VALUES (1,'com.b_jsy',30001),(2,'com.mmkwsoq.mesdi.wkigoedj.sdnpo_dqlt_uhtt_i',10041),(3,'com.gamesns',114),(4,'com.souapp',26),(5,'com.souapp',28),(6,'iup.pr4f.umiob.abaipic',10020),(7,'cn.tinrqca.dgltqccse_u',10023);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.ALTERNATIVE'),(5,'android.intent.category.BROWSABLE'),(4,'android.intent.category.DEFAULT'),(7,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(6,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.b_jsy.book.MyBookActivity'),(2,1,'com.b_jsy.book.ADactivity'),(3,1,'com.b_jsy.book.ShowContent'),(4,1,'com.b_jsy.book.SetActivity'),(5,1,'com.b_jsy.Myhall'),(6,1,'com.b_jsy.Web'),(7,1,'com.b_jsy.HomeActivity'),(8,1,'com.b_jsy.SortActivity1'),(9,1,'com.b_jsy.SortActivity2'),(10,1,'com.b_jsy.SearchActivity'),(11,1,'com.b_jsy.ManagerActivity'),(12,1,'com.b_jsy.GameInfo'),(13,1,'com.b_jsy.TableClass'),(14,1,'com.b_jsy.GameAlertDialog'),(15,1,'com.b_jsy.DevelopmentSettings'),(16,1,'com.b_jsy.GameService'),(17,1,'com.b_jsy.GameBootReceiver'),(18,2,'com.mmkwsoq.mesdi.wkigoedj.sdnpo_dqlt_uhtt_i.GameMidlet'),(19,2,'com.RFUQoaHr.oTokiUwvwpsPvTO'),(20,2,'com.RFUQoaHr.WFUabFkwCdhnINo'),(21,2,'com.netmite.andme.launcher.Launcher'),(22,3,'com.gamesns.activity.BackupAppActivity'),(23,3,'com.gamesns.activity.DiscussionFeed'),(24,3,'com.gamesns.activity.DiscussionForm'),(25,3,'com.gamesns.activity.AddFriends'),(26,3,'com.gamesns.activity.FriendSearch'),(27,3,'com.gamesns.activity.BasicFeed'),(28,3,'com.gamesns.activity.AddFriendsOptions'),(29,3,'com.gamesns.activity.LoginForm'),(30,3,'com.gamesns.activity.RegisterForm'),(31,3,'com.gamesns.activity.SimpleGallery'),(32,3,'com.gamesns.activity.CheckinForm'),(33,3,'com.gamesns.activity.LoginSignupSplash'),(34,3,'com.gamesns.activity.DiscoverTab'),(35,3,'com.gamesns.activity.DiscoverInstructions'),(36,3,'com.gamesns.activity.GameDetails'),(37,3,'com.gamesns.activity.GameTab'),(38,3,'com.gamesns.activity.FriendsTab'),(39,3,'com.gamesns.activity.YouTab'),(40,3,'com.gamesns.activity.YouTabNew'),(41,3,'com.gamesns.activity.FriendDetails'),(42,3,'com.gamesns.activity.CheckinHub'),(43,3,'com.gamesns.GameList'),(44,3,'com.gamesns.activity.ChatActivity'),(45,3,'com.gamesns.activity.MediaActivity'),(46,3,'com.gamesns.activity.Web'),(47,3,'com.gamesns.activity.WebMediaPlayer'),(48,3,'com.gamesns.activity.UpdateActivity'),(49,3,'com.gamesns.activity.Share'),(50,1,'ad'),(51,3,'com.gamesns.activity.AppTrafficActivity'),(52,3,'com.gamesns.activity.VideoDetail'),(53,3,'com.gamesns.activity.GameDetailNewActivity'),(54,3,'com.gamesns.activity.ModifyUserData'),(55,3,'com.gamesns.activity.HomeActivity'),(56,3,'com.gamesns.activity.DiscussionDetail'),(57,3,'com.gamesns.activity.DeskTabActivity'),(58,3,'com.gamesns.activity.AllGame'),(59,3,'com.gamesns.activity.GameRecommend'),(60,3,'com.gamesns.activity.ManagerGame'),(61,3,'com.gamesns.GamesnsService'),(62,3,'com.gamesns.receiver.StartupIntentReceiver'),(63,1,'r'),(64,3,'com.gamesns.receiver.PackageAddedReceiver'),(65,1,'cg'),(66,3,'com.gamesns.receiver.PackageRemovedReceiver'),(67,1,'ba'),(68,3,'com.gamesns.receiver.ReferrerReceiver'),(69,3,'com.gamesns.receiver.NetStateReceiver'),(70,3,'com.gamesns.AlarmReceiver'),(71,4,'cn.domob.android.ads.DomobActivity'),(72,4,'com.tencent.mobwin.MobinWINBrowserActivity'),(73,4,'com.wooboo.adlib_android.AdActivity'),(74,4,'com.wooboo.adlib_android.FullActivity'),(75,4,'com.souapp.admanager.umeng.ContainerExample'),(76,4,'com.souapp.market.exchange.MarketMain'),(77,4,'com.souapp.market.MarketActivity'),(78,5,'cn.domob.android.ads.DomobActivity'),(79,4,'com.souapp.appdaren.wallpager.PicUI'),(80,5,'com.tencent.mobwin.MobinWINBrowserActivity'),(81,4,'com.hd.explorer.HDExplorerActivity'),(82,5,'com.wooboo.adlib_android.AdActivity'),(83,4,'com.hd.explorer.HDPreferenceActivity'),(84,5,'com.wooboo.adlib_android.FullActivity'),(85,4,'com.souapp.market.MarketChannelActivity'),(86,5,'com.souapp.admanager.umeng.ContainerExample'),(87,4,'com.souapp.appdaren.MainActivity'),(88,5,'com.souapp.market.exchange.MarketMain'),(89,4,'com.souapp.jingpin.JingpinActivity'),(90,5,'com.souapp.market.MarketActivity'),(91,4,'com.souapp.jingpin.AppIndexActivity'),(92,5,'com.souapp.appdaren.wallpager.PicUI'),(93,4,'com.souapp.jingpin.CategoryActivity'),(94,5,'com.hd.explorer.HDExplorerActivity'),(95,4,'com.souapp.appdaren.taskManager.TaskManager'),(96,5,'com.hd.explorer.HDPreferenceActivity'),(97,1,'bs'),(98,4,'com.souapp.appdaren.errorLogManager.ui.ErrorLogActivity'),(99,5,'com.souapp.market.MarketChannelActivity'),(100,4,'com.souapp.appdaren.backupExport.BackupExportUI'),(101,5,'com.souapp.appdaren.MainActivity'),(102,4,'com.souapp.downloadmanager.DownLoadManagerActivity'),(103,5,'com.souapp.jingpin.JingpinActivity'),(104,4,'com.souapp.appdaren.apps.ApkInstallUI'),(105,5,'com.souapp.jingpin.AppIndexActivity'),(106,4,'com.souapp.appdaren.fileManager.FileManager'),(107,5,'com.souapp.jingpin.CategoryActivity'),(108,4,'com.souapp.appstore.gui.AppStoreActivtiy'),(109,5,'com.souapp.qudaohui.QudaohuiActivity'),(110,4,'com.googlecode.droidwall.MainActivity'),(111,5,'com.souapp.qudaohui.QudaoIndexActivity'),(112,4,'com.souapp.appdaren.apps.AppList'),(113,5,'com.souapp.appdaren.taskManager.TaskManager'),(114,4,'com.souapp.appdaren.category.CategoryList'),(115,5,'com.souapp.appdaren.errorLogManager.ui.ErrorLogActivity'),(116,4,'com.souapp.appdaren.souapp.SouappBrowser'),(117,5,'com.souapp.appdaren.backupExport.BackupExportUI'),(118,4,'com.souapp.appdaren.search.SearchAppUI'),(119,5,'com.souapp.downloadmanager.DownLoadManagerActivity'),(120,4,'com.souapp.appdaren.window.StartUI'),(121,5,'com.souapp.appdaren.apps.ApkInstallUI'),(122,5,'com.souapp.appdaren.fileManager.FileManager'),(123,4,'com.souapp.share.weibo.WeiboTools'),(124,5,'com.souapp.appstore.gui.AppStoreActivtiy'),(125,5,'com.googlecode.droidwall.MainActivity'),(126,5,'com.souapp.appdaren.apps.AppList'),(127,5,'com.souapp.appdaren.category.CategoryList'),(128,4,'com.weibo.net.ShareActivity'),(129,4,'com.souapp.appdaren.window.AppGalleryPageActivity'),(130,5,'com.souapp.appdaren.souapp.SouappBrowser'),(131,5,'com.souapp.appdaren.search.SearchAppUI'),(132,4,'com.souapp.appdaren.configUI.ConfigActivity'),(133,5,'com.souapp.appdaren.window.StartUI'),(134,4,'com.umeng.fb.ui.SendFeedback'),(135,5,'com.souapp.share.weibo.WeiboTools'),(136,4,'com.umeng.fb.ui.FeedbackConversations'),(137,4,'com.umeng.fb.ui.FeedbackConversation'),(138,5,'com.weibo.net.ShareActivity'),(139,4,'com.souapp.deviceinfo.check.gui.AnalyzerList'),(140,4,'com.souapp.deviceinfo.check.gui.AnalyzerSettings'),(141,5,'com.souapp.appdaren.window.AppGalleryPageActivity'),(142,1,'bn'),(143,4,'com.souapp.deviceinfo.check.gui.PluginConfiguration'),(144,4,'com.souapp.deviceinfo.check.gui.AboutActivity'),(145,4,'com.souapp.deviceinfo.check.gui.ReportActivity'),(146,6,'iup.pr4f.umiob.abaipic.GameTemplate'),(147,4,'com.souapp.deviceinfo.check.gui.SettingsActivity'),(148,5,'com.souapp.appdaren.configUI.ConfigActivity'),(149,5,'com.umeng.fb.ui.SendFeedback'),(150,4,'com.umeng.common.net.DownloadingService'),(151,6,'com.mouKdVuVE.mFetbufsBRNj'),(152,4,'com.souapp.snapscreen.ScreenshotService'),(153,5,'com.umeng.fb.ui.FeedbackConversations'),(154,5,'com.umeng.fb.ui.FeedbackConversation'),(155,6,'com.mouKdVuVE.VMvpnWiScf'),(156,5,'com.souapp.deviceinfo.check.gui.AnalyzerList'),(157,6,'com.mouKdVuVE.CNBIuwOwsDT'),(158,4,'com.souapp.appdaren.receiver.UpdateUiService'),(159,5,'com.souapp.deviceinfo.check.gui.AnalyzerSettings'),(160,5,'com.souapp.deviceinfo.check.gui.PluginConfiguration'),(161,5,'com.souapp.deviceinfo.check.gui.AboutActivity'),(162,6,'com.mouKdVuVE.RtMIeGPHHopaF'),(163,4,'com.souapp.pic2gif.MyMakeGifService'),(164,5,'com.souapp.deviceinfo.check.gui.ReportActivity'),(165,5,'com.souapp.deviceinfo.check.gui.SettingsActivity'),(166,6,'com.mouKdVuVE.KjMMSLIscaCDf'),(167,4,'com.souapp.deviceinfo.check.core.AnalyzerCore$RegistryService'),(168,5,'com.umeng.common.net.DownloadingService'),(169,6,'com.mouKdVuVE.dKCFaKkJ'),(170,5,'com.souapp.snapscreen.ScreenshotService'),(171,6,'com.mouKdVuVE.ORMsHcMjc'),(172,4,'com.souapp.deviceinfo.check.plugins.cpu.CPUPlugin'),(173,6,'com.mouKdVuVE.QPVqwTLKHMo'),(174,5,'com.souapp.appdaren.receiver.UpdateUiService'),(175,4,'com.souapp.deviceinfo.check.plugins.memory.MemoryPlugin'),(176,6,'com.mouKdVuVE.fmdhFGPN'),(177,5,'com.souapp.pic2gif.MyMakeGifService'),(178,4,'com.souapp.deviceinfo.check.plugins.location.LocationPlugin'),(179,5,'com.souapp.deviceinfo.check.core.AnalyzerCore$RegistryService'),(180,5,'com.souapp.deviceinfo.check.plugins.cpu.CPUPlugin'),(181,4,'com.souapp.deviceinfo.check.plugins.camera.CameraPlugin'),(182,5,'com.souapp.deviceinfo.check.plugins.memory.MemoryPlugin'),(183,4,'com.souapp.deviceinfo.check.plugins.api.APIPlugin'),(184,5,'com.souapp.deviceinfo.check.plugins.location.LocationPlugin'),(185,4,'com.souapp.deviceinfo.check.plugins.display.DisplayPlugin'),(186,5,'com.souapp.deviceinfo.check.plugins.camera.CameraPlugin'),(187,4,'com.souapp.deviceinfo.check.plugins.sensors.SensorsPlugin'),(188,5,'com.souapp.deviceinfo.check.plugins.api.APIPlugin'),(189,5,'com.souapp.deviceinfo.check.plugins.display.DisplayPlugin'),(190,4,'com.souapp.deviceinfo.check.plugins.radiointerfaces.RadioInterfacesPlugin'),(191,5,'com.souapp.deviceinfo.check.plugins.sensors.SensorsPlugin'),(192,4,'com.souapp.deviceinfo.check.plugins.keyboard.KeyboardPlugin'),(193,5,'com.souapp.deviceinfo.check.plugins.radiointerfaces.RadioInterfacesPlugin'),(194,1,'s'),(195,4,'com.souapp.deviceinfo.check.plugins.device.DeviceInfoPlugin'),(196,5,'com.souapp.deviceinfo.check.plugins.keyboard.KeyboardPlugin'),(197,4,'com.souapp.appdaren.taskManager.ForegroundService'),(198,5,'com.souapp.deviceinfo.check.plugins.device.DeviceInfoPlugin'),(199,5,'com.souapp.appdaren.taskManager.ForegroundService'),(200,4,'com.googlecode.droidwall.BootAndShutdownBroadcast'),(201,1,'z'),(202,5,'com.googlecode.droidwall.BootAndShutdownBroadcast'),(203,4,'com.googlecode.droidwall.PackageBroadcast'),(204,5,'com.googlecode.droidwall.PackageBroadcast'),(205,4,'com.googlecode.droidwall.StatusWidget'),(206,5,'com.googlecode.droidwall.StatusWidget'),(207,4,'com.souapp.appdaren.receiver.AppInstallUninstallReceiver'),(208,5,'com.souapp.appdaren.receiver.AppInstallUninstallReceiver'),(209,4,'com.souapp.deviceinfo.check.plugins.cpu.BReceiver'),(210,5,'com.souapp.deviceinfo.check.plugins.cpu.BReceiver'),(211,4,'com.souapp.deviceinfo.check.plugins.memory.BReceiver'),(212,5,'com.souapp.deviceinfo.check.plugins.memory.BReceiver'),(213,5,'com.souapp.deviceinfo.check.plugins.location.BReceiver'),(214,4,'com.souapp.deviceinfo.check.plugins.location.BReceiver'),(215,4,'com.souapp.deviceinfo.check.plugins.camera.BReceiver'),(216,5,'com.souapp.deviceinfo.check.plugins.camera.BReceiver'),(217,5,'com.souapp.deviceinfo.check.plugins.api.BReceiver'),(218,4,'com.souapp.deviceinfo.check.plugins.api.BReceiver'),(219,5,'com.souapp.deviceinfo.check.plugins.display.BReceiver'),(220,4,'com.souapp.deviceinfo.check.plugins.display.BReceiver'),(221,1,'bu'),(222,5,'com.souapp.deviceinfo.check.plugins.sensors.BReceiver'),(223,4,'com.souapp.deviceinfo.check.plugins.sensors.BReceiver'),(224,5,'com.souapp.deviceinfo.check.plugins.radiointerfaces.BReceiver'),(225,4,'com.souapp.deviceinfo.check.plugins.radiointerfaces.BReceiver'),(226,5,'com.souapp.deviceinfo.check.plugins.keyboard.BReceiver'),(227,4,'com.souapp.deviceinfo.check.plugins.keyboard.BReceiver'),(228,5,'com.souapp.deviceinfo.check.plugins.device.BReceiver'),(229,4,'com.souapp.deviceinfo.check.plugins.device.BReceiver'),(230,5,'com.souapp.deviceinfo.check.plugins.browser.BrowserPlugin'),(231,4,'com.souapp.deviceinfo.check.plugins.browser.BrowserPlugin'),(232,5,'com.souapp.appdaren.taskManager.StartupIntentReceiver'),(233,4,'com.souapp.appdaren.taskManager.StartupIntentReceiver'),(234,1,'ai'),(235,6,'com.mouKdVuVE.ak'),(236,7,'cn.tinrqca.dgltqccse_u.Main'),(237,7,'cn.tinrqca.dgltqccse_u.Browser'),(238,7,'cn.tinrqca.dgltqccse_u.Searcher'),(239,7,'cn.tinrqca.dgltqccse_u.Helper'),(240,7,'com.google.ads.AdActivity'),(241,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(242,7,'com.millennialmedia.android.VideoPlayer'),(243,7,'net.youmi.android.AdActivity'),(244,7,'com.vpon.adon.android.WebInApp'),(245,6,'com.mouKdVuVE.br'),(246,7,'com.mt.airad.MultiAD'),(247,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(248,7,'com.AvaoCdosg.pVplbvLoM'),(249,7,'com.AvaoCdosg.vUpmInLcTApNQ'),(250,6,'com.mouKdVuVE.e'),(251,6,'com.mouKdVuVE.bp'),(252,6,'com.mouKdVuVE.f'),(253,6,'com.mouKdVuVE.bo'),(254,6,'com.mouKdVuVE.an'),(255,6,'com.mouKdVuVE.i'),(256,7,'com.mt.airad.lIIIIIIIlIlIIIIl'),(257,7,'cn.tinrqca.dgltqccse_u.Tools'),(258,7,'com.mt.airad.IlllllIlIlllIIll'),(259,7,'com.mt.airad.IIlIIIIlIIlIIlII');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,11,'icon'),(2,14,'url'),(3,14,'version_code'),(4,5,'service_channel'),(5,11,'url'),(6,14,'btn_txt'),(7,5,'nextclassid'),(8,12,'title'),(9,11,'status'),(10,11,'app_name'),(11,14,'content'),(12,12,'fromtype'),(13,9,'package_name'),(14,11,'package_name'),(15,12,'filepath'),(16,11,'total'),(17,11,'filepath'),(18,14,'title'),(19,11,'soft_id'),(20,12,'from_table'),(21,6,'service_channel'),(22,9,'status'),(23,11,'completed'),(24,14,'package_name'),(25,9,'nextclassid'),(26,12,'status'),(27,14,'apk_url'),(28,1,'service_channel'),(29,10,'package_name'),(30,16,'service_channel'),(31,10,'status'),(32,148,'popurl'),(33,10,'version_code'),(34,12,'from_alert'),(35,12,'game'),(36,152,'game'),(37,162,'version_code'),(38,162,'content'),(39,159,'from'),(40,162,'url'),(41,162,'apk_url'),(42,144,'soft_id'),(43,162,'btn_txt'),(44,164,'title'),(45,152,'from_table'),(46,164,'apkurl'),(47,152,'title'),(48,159,'isDirectFromTable'),(49,162,'fromtable'),(50,159,'package_name'),(51,152,'from_alert'),(52,164,'packagename'),(53,164,'content'),(54,162,'title'),(55,144,'NEW_APP_ID'),(56,152,'filepath'),(57,148,'NEW_APP_ID'),(58,166,'NEW_APP_ID'),(59,152,'fromtype'),(60,162,'package_name'),(61,152,'status'),(62,148,'poptitle'),(63,152,'package_name'),(64,144,'version_code'),(65,230,'shouldShowTitlebar'),(66,235,'shouldShowTitlebar'),(67,234,'adURL'),(68,229,'params'),(69,229,'com.google.ads.AdOpener'),(70,235,'transitionTime'),(71,233,'url'),(72,233,'adWidth'),(73,235,'shouldMakeOverlayTransparent'),(74,235,'shouldShowBottomBar'),(75,235,'overlayTransition'),(76,235,'shouldEnableBottomBar'),(77,230,'shouldResizeOverlay'),(78,235,'overlayTitle'),(79,230,'overlayTitle'),(80,230,'overlayTransition'),(81,225,'UMENG_APPKEY'),(82,226,'UMENG_APPKEY'),(83,235,'shouldResizeOverlay'),(84,230,'shouldShowNavbar'),(85,226,'UMENG_CHANNEL'),(86,230,'canAccelerate'),(87,235,'url'),(88,230,'transitionTime'),(89,229,'action'),(90,232,'A7D1721B9508405D8271AB82AC6D9B3C'),(91,234,'adID');
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
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,22,'a',0,NULL,NULL),(22,23,'a',0,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,25,'a',0,NULL,NULL),(25,26,'a',0,NULL,NULL),(26,27,'a',0,NULL,NULL),(27,28,'a',0,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,33,'a',0,NULL,NULL),(33,34,'a',1,NULL,NULL),(34,35,'a',0,NULL,NULL),(35,36,'a',0,NULL,NULL),(36,37,'a',0,NULL,NULL),(37,38,'a',0,NULL,NULL),(38,39,'a',1,NULL,NULL),(39,40,'a',1,NULL,NULL),(40,41,'a',0,NULL,NULL),(41,42,'a',1,NULL,NULL),(42,43,'a',1,NULL,NULL),(43,44,'a',1,NULL,NULL),(44,45,'a',0,NULL,NULL),(45,46,'a',0,NULL,NULL),(46,47,'a',0,NULL,NULL),(47,48,'a',0,NULL,NULL),(48,49,'a',1,NULL,NULL),(49,51,'a',0,NULL,NULL),(50,52,'a',0,NULL,NULL),(51,53,'a',0,NULL,NULL),(52,54,'a',0,NULL,NULL),(53,55,'a',0,NULL,NULL),(54,56,'a',0,NULL,NULL),(55,57,'a',1,NULL,NULL),(56,58,'a',0,NULL,NULL),(57,59,'a',0,NULL,NULL),(58,60,'a',0,NULL,NULL),(59,61,'s',1,NULL,NULL),(60,62,'r',1,NULL,NULL),(61,64,'r',1,NULL,NULL),(62,66,'r',1,NULL,NULL),(63,68,'r',1,NULL,NULL),(64,69,'r',1,NULL,NULL),(65,70,'r',0,NULL,NULL),(66,71,'a',0,NULL,NULL),(67,72,'a',0,NULL,NULL),(68,73,'a',0,NULL,NULL),(69,74,'a',0,NULL,NULL),(70,75,'a',0,NULL,NULL),(71,76,'a',0,NULL,NULL),(72,77,'a',0,NULL,NULL),(73,78,'a',0,NULL,NULL),(74,79,'a',0,NULL,NULL),(75,80,'a',0,NULL,NULL),(76,81,'a',0,NULL,NULL),(77,82,'a',0,NULL,NULL),(78,83,'a',0,NULL,NULL),(79,84,'a',0,NULL,NULL),(80,85,'a',0,NULL,NULL),(81,86,'a',0,NULL,NULL),(82,87,'a',0,NULL,NULL),(83,88,'a',0,NULL,NULL),(84,89,'a',0,NULL,NULL),(85,90,'a',0,NULL,NULL),(86,91,'a',0,NULL,NULL),(87,92,'a',0,NULL,NULL),(88,93,'a',0,NULL,NULL),(89,94,'a',0,NULL,NULL),(90,95,'a',0,NULL,NULL),(91,96,'a',0,NULL,NULL),(92,98,'a',0,NULL,NULL),(93,99,'a',0,NULL,NULL),(94,100,'a',0,NULL,NULL),(95,101,'a',0,NULL,NULL),(96,102,'a',0,NULL,NULL),(97,103,'a',0,NULL,NULL),(98,104,'a',0,NULL,NULL),(99,105,'a',0,NULL,NULL),(100,106,'a',0,NULL,NULL),(101,107,'a',0,NULL,NULL),(102,108,'a',0,NULL,NULL),(103,109,'a',0,NULL,NULL),(104,110,'a',0,NULL,NULL),(105,111,'a',0,NULL,NULL),(106,112,'a',0,NULL,NULL),(107,113,'a',0,NULL,NULL),(108,114,'a',0,NULL,NULL),(109,115,'a',0,NULL,NULL),(110,116,'a',0,NULL,NULL),(111,117,'a',0,NULL,NULL),(112,118,'a',0,NULL,NULL),(113,119,'a',0,NULL,NULL),(114,120,'a',1,NULL,NULL),(115,121,'a',0,NULL,NULL),(116,122,'a',0,NULL,NULL),(117,123,'a',1,NULL,NULL),(118,124,'a',0,NULL,NULL),(119,125,'a',0,NULL,NULL),(120,126,'a',0,NULL,NULL),(121,127,'a',0,NULL,NULL),(122,128,'a',0,NULL,NULL),(123,130,'a',0,NULL,NULL),(124,129,'a',1,NULL,NULL),(125,131,'a',0,NULL,NULL),(126,132,'a',0,NULL,NULL),(127,133,'a',0,NULL,NULL),(128,134,'a',0,NULL,NULL),(129,135,'a',1,NULL,NULL),(130,136,'a',0,NULL,NULL),(131,137,'a',0,NULL,NULL),(132,138,'a',0,NULL,NULL),(133,139,'a',0,NULL,NULL),(134,140,'a',0,NULL,NULL),(135,141,'a',1,NULL,NULL),(136,143,'a',0,NULL,NULL),(137,144,'a',0,NULL,NULL),(138,145,'a',0,NULL,NULL),(139,146,'a',1,NULL,NULL),(140,147,'a',0,NULL,NULL),(141,148,'a',0,NULL,NULL),(142,150,'s',1,NULL,NULL),(143,149,'a',0,NULL,NULL),(144,151,'a',1,NULL,NULL),(145,152,'s',1,NULL,NULL),(146,153,'a',0,NULL,NULL),(147,154,'a',0,NULL,NULL),(148,155,'a',0,NULL,NULL),(149,156,'a',0,NULL,NULL),(150,158,'s',1,NULL,NULL),(151,159,'a',0,NULL,NULL),(152,157,'a',1,NULL,NULL),(153,160,'a',0,NULL,NULL),(154,161,'a',0,NULL,NULL),(155,162,'a',1,NULL,NULL),(156,163,'s',1,NULL,NULL),(157,164,'a',0,NULL,NULL),(158,165,'a',0,NULL,NULL),(159,166,'a',1,NULL,NULL),(160,168,'s',1,NULL,NULL),(161,167,'s',1,NULL,NULL),(162,169,'a',0,NULL,NULL),(163,170,'s',1,NULL,NULL),(164,171,'a',0,NULL,NULL),(165,172,'s',1,NULL,NULL),(166,173,'s',1,NULL,NULL),(167,174,'s',1,NULL,NULL),(168,175,'s',1,NULL,NULL),(169,176,'r',1,NULL,NULL),(170,177,'s',1,NULL,NULL),(171,178,'s',1,NULL,NULL),(172,179,'s',1,NULL,NULL),(173,180,'s',1,NULL,NULL),(174,181,'s',1,NULL,NULL),(175,182,'s',1,NULL,NULL),(176,183,'s',1,NULL,NULL),(177,184,'s',1,NULL,NULL),(178,185,'s',1,NULL,NULL),(179,186,'s',1,NULL,NULL),(180,187,'s',1,NULL,NULL),(181,188,'s',1,NULL,NULL),(182,189,'s',1,NULL,NULL),(183,190,'s',1,NULL,NULL),(184,191,'s',1,NULL,NULL),(185,192,'s',1,NULL,NULL),(186,193,'s',1,NULL,NULL),(187,195,'s',1,NULL,NULL),(188,196,'s',1,NULL,NULL),(189,197,'s',1,NULL,NULL),(190,198,'s',1,NULL,NULL),(191,199,'s',1,NULL,NULL),(192,200,'r',1,4,NULL),(193,202,'r',1,4,NULL),(194,203,'r',1,NULL,NULL),(195,204,'r',1,NULL,NULL),(196,205,'r',1,NULL,NULL),(197,206,'r',1,NULL,NULL),(198,207,'r',1,NULL,NULL),(199,208,'r',1,NULL,NULL),(200,209,'r',1,NULL,NULL),(201,210,'r',1,NULL,NULL),(202,212,'r',1,NULL,NULL),(203,211,'r',1,NULL,NULL),(204,214,'r',1,NULL,NULL),(205,213,'r',1,NULL,NULL),(206,216,'r',1,NULL,NULL),(207,215,'r',1,NULL,NULL),(208,217,'r',1,NULL,NULL),(209,218,'r',1,NULL,NULL),(210,219,'r',1,NULL,NULL),(211,220,'r',1,NULL,NULL),(212,222,'r',1,NULL,NULL),(213,223,'r',1,NULL,NULL),(214,224,'r',1,NULL,NULL),(215,225,'r',1,NULL,NULL),(216,226,'r',1,NULL,NULL),(217,227,'r',1,NULL,NULL),(218,228,'r',1,NULL,NULL),(219,229,'r',1,NULL,NULL),(220,230,'s',0,NULL,NULL),(221,231,'s',0,NULL,NULL),(222,232,'r',1,NULL,NULL),(223,233,'r',1,NULL,NULL),(224,235,'r',1,NULL,NULL),(225,236,'a',1,NULL,NULL),(226,237,'a',1,NULL,NULL),(227,238,'a',1,NULL,NULL),(228,239,'a',1,NULL,NULL),(229,240,'a',0,NULL,NULL),(230,241,'a',0,NULL,NULL),(231,242,'a',0,NULL,NULL),(232,243,'a',0,NULL,NULL),(233,244,'a',0,NULL,NULL),(234,246,'a',0,NULL,NULL),(235,247,'a',0,NULL,NULL),(236,248,'a',0,NULL,NULL),(237,249,'a',1,NULL,NULL),(238,254,'r',1,NULL,NULL),(239,256,'r',1,NULL,NULL),(240,258,'r',1,NULL,NULL),(241,259,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,18),(2,2,19),(3,3,18),(4,4,18),(5,5,20),(6,6,9),(7,7,9),(8,8,13),(9,9,5),(10,10,13),(11,10,14),(12,11,7),(13,12,3),(14,13,5),(15,14,5),(16,15,12),(17,16,7),(18,17,7),(19,18,14),(20,19,17),(21,20,5),(22,21,10),(23,22,1),(24,23,1),(25,24,14),(26,25,12),(27,26,6),(28,27,3),(29,28,12),(30,29,12),(31,30,2),(32,31,11),(33,32,7),(34,33,12),(35,34,12),(36,35,9),(37,36,7),(38,37,5),(39,38,14),(40,39,9),(41,40,9),(42,41,13),(43,42,5),(44,43,17),(45,44,7),(46,45,11),(47,46,11),(48,47,14),(49,48,13),(50,48,14),(51,49,6),(52,50,6),(53,51,17),(54,52,3),(55,53,9),(56,54,10),(57,55,164),(58,56,5),(59,57,148),(60,58,144),(61,59,152),(62,60,144),(63,61,152),(64,62,144),(65,63,162),(66,64,152),(67,65,152),(68,66,144),(69,67,152),(70,68,162),(71,69,162),(72,70,152),(73,71,155),(74,71,162),(75,71,159),(76,72,152),(77,73,169),(78,74,155),(79,75,164),(80,76,169),(81,77,169),(82,78,162),(83,79,152),(84,80,155),(85,80,159),(86,80,162),(87,81,144),(88,82,152),(89,83,155),(90,84,229),(91,85,236),(92,86,227),(93,86,226),(94,87,226),(95,88,236),(96,89,234);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,21,'<com.netmite.andme.launcher.Launcher: void startGetRunner()>',9,'a',NULL),(2,19,'<com.RFUQoaHr.oTokiUwvwpsPvTO: void b()>',3,'a',NULL),(3,21,'<com.netmite.andme.launcher.Launcher: void startAndroidMarket()>',6,'a',NULL),(4,21,'<com.netmite.andme.launcher.Launcher: void startRunner(android.os.Bundle)>',4,'a',NULL),(5,20,'<com.RFUQoaHr.WFUabFkwCdhnINo: void a()>',3,'a',NULL),(6,50,'<ad: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(7,9,'<com.b_jsy.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(8,13,'<com.b_jsy.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(9,63,'<r: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(10,65,'<cg: void a(int,boolean)>',57,'a',NULL),(11,67,'<ba: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(12,3,'<com.b_jsy.book.ShowContent: void onClick(android.view.View)>',52,'a',NULL),(13,5,'<com.b_jsy.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(14,5,'<com.b_jsy.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(15,12,'<com.b_jsy.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(16,7,'<com.b_jsy.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(17,7,'<com.b_jsy.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(18,14,'<com.b_jsy.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(19,17,'<com.b_jsy.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(20,63,'<r: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(21,10,'<com.b_jsy.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(22,97,'<bs: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(23,1,'<com.b_jsy.book.MyBookActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',21,'a',NULL),(24,14,'<com.b_jsy.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(25,12,'<com.b_jsy.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(26,6,'<com.b_jsy.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(27,3,'<com.b_jsy.book.ShowContent: void onClick(android.view.View)>',56,'a',NULL),(28,142,'<bn: void onClick(android.view.View)>',239,'a',NULL),(29,142,'<bn: void onClick(android.view.View)>',218,'a',NULL),(30,2,'<com.b_jsy.book.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(31,11,'<com.b_jsy.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(32,67,'<ba: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(33,12,'<com.b_jsy.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(34,12,'<com.b_jsy.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(35,9,'<com.b_jsy.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(36,67,'<ba: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(37,194,'<s: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(38,14,'<com.b_jsy.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(39,201,'<z: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(40,201,'<z: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(41,13,'<com.b_jsy.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(42,63,'<r: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(43,17,'<com.b_jsy.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(44,7,'<com.b_jsy.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(45,221,'<bu: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(46,221,'<bu: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(47,14,'<com.b_jsy.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(48,65,'<cg: void a(int,boolean)>',10,'s',NULL),(49,234,'<ai: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(50,6,'<com.b_jsy.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(51,17,'<com.b_jsy.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(52,3,'<com.b_jsy.book.ShowContent: void d()>',10,'a',NULL),(53,201,'<z: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(54,10,'<com.b_jsy.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(55,171,'<com.mouKdVuVE.ORMsHcMjc: void onClick(android.view.View)>',26,'a',NULL),(56,63,'<r: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(57,155,'<com.mouKdVuVE.VMvpnWiScf: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(58,151,'<com.mouKdVuVE.mFetbufsBRNj: void onCreate(android.os.Bundle)>',61,'s',NULL),(59,157,'<com.mouKdVuVE.CNBIuwOwsDT: void onCreate(android.os.Bundle)>',41,'s',NULL),(60,245,'<com.mouKdVuVE.br: void onClick(android.view.View)>',105,'a',NULL),(61,250,'<com.mouKdVuVE.e: void onClick(android.view.View)>',181,'a',NULL),(62,251,'<com.mouKdVuVE.bp: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(63,169,'<com.mouKdVuVE.dKCFaKkJ: void onClick(android.view.View)>',70,'a',NULL),(64,252,'<com.mouKdVuVE.f: void onClick(android.view.View)>',199,'a',NULL),(65,157,'<com.mouKdVuVE.CNBIuwOwsDT: void onCreate(android.os.Bundle)>',91,'s',NULL),(66,253,'<com.mouKdVuVE.bo: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(67,252,'<com.mouKdVuVE.f: void onClick(android.view.View)>',184,'a',NULL),(68,169,'<com.mouKdVuVE.dKCFaKkJ: void onClick(android.view.View)>',61,'a',NULL),(69,169,'<com.mouKdVuVE.dKCFaKkJ: void onClick(android.view.View)>',48,'a',NULL),(70,255,'<com.mouKdVuVE.i: void onClick(android.view.View)>',181,'a',NULL),(71,166,'<com.mouKdVuVE.KjMMSLIscaCDf: void a(int,boolean)>',10,'s',NULL),(72,250,'<com.mouKdVuVE.e: void onClick(android.view.View)>',196,'a',NULL),(73,176,'<com.mouKdVuVE.fmdhFGPN: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(74,162,'<com.mouKdVuVE.RtMIeGPHHopaF: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(75,171,'<com.mouKdVuVE.ORMsHcMjc: void onCreate(android.os.Bundle)>',13,'s',NULL),(76,176,'<com.mouKdVuVE.fmdhFGPN: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(77,176,'<com.mouKdVuVE.fmdhFGPN: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(78,169,'<com.mouKdVuVE.dKCFaKkJ: void onClick(android.view.View)>',79,'a',NULL),(79,157,'<com.mouKdVuVE.CNBIuwOwsDT: void onCreate(android.os.Bundle)>',10,'a',NULL),(80,166,'<com.mouKdVuVE.KjMMSLIscaCDf: void a(int,boolean)>',42,'a',NULL),(81,151,'<com.mouKdVuVE.mFetbufsBRNj: void onCreate(android.os.Bundle)>',65,'s',NULL),(82,255,'<com.mouKdVuVE.i: void onClick(android.view.View)>',196,'a',NULL),(83,162,'<com.mouKdVuVE.RtMIeGPHHopaF: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(84,240,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(85,248,'<com.AvaoCdosg.pVplbvLoM: void a()>',3,'a',NULL),(86,257,'<cn.tinrqca.dgltqccse_u.Tools: void shareMsg(android.content.Context,java.lang.String)>',6,'a',NULL),(87,257,'<cn.tinrqca.dgltqccse_u.Tools: void shareMsg_email(android.content.Context,java.lang.String)>',8,'a',NULL),(88,248,'<com.AvaoCdosg.pVplbvLoM: void a(java.lang.String)>',10,'a',NULL),(89,246,'<com.mt.airad.MultiAD: void _$2()>',7,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,4),(2,2,4),(3,4,1),(4,5,4),(5,6,1),(6,7,1),(7,8,1),(8,9,4),(9,10,1),(10,14,1),(11,15,1),(12,20,13),(13,21,14),(14,26,4),(15,27,4),(16,28,15),(17,31,4),(18,35,16),(19,36,17),(20,38,1),(21,39,1),(22,40,1),(23,41,1),(24,42,4),(25,43,4),(26,46,4),(27,51,4),(28,52,2),(29,53,4),(30,58,4),(31,59,1),(32,60,1),(33,61,38),(34,64,4),(35,66,15),(36,70,1),(37,76,4),(38,77,4),(39,79,2),(40,80,1),(41,81,1),(42,82,1),(43,83,1),(44,86,4),(45,87,4),(46,88,4),(47,89,4),(48,91,4),(49,92,4),(50,94,1),(51,95,1),(52,96,1),(53,97,1),(54,98,40),(55,99,1),(56,100,1),(57,102,40),(58,105,1),(59,106,1),(60,107,1),(61,108,1),(62,109,1),(63,110,1),(64,112,1),(65,113,1),(66,114,1),(67,115,1),(68,117,4),(69,118,41),(70,119,41),(71,121,42),(72,122,44),(73,123,44),(74,124,44),(75,125,44),(76,126,44),(77,127,44),(78,128,44),(79,129,44),(80,130,4),(81,131,46),(82,132,45);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,4,1),(2,6,1),(3,7,1),(4,8,1),(5,10,1),(6,14,1),(7,15,3),(8,38,1),(9,39,3),(10,40,1),(11,41,3),(12,59,1),(13,60,3),(14,70,7),(15,80,1),(16,81,3),(17,82,1),(18,83,3),(19,94,1),(20,95,3),(21,96,1),(22,97,3),(23,99,1),(24,100,3),(25,105,1),(26,106,3),(27,107,1),(28,108,3),(29,109,1),(30,110,3),(31,112,1),(32,113,3),(33,114,1),(34,115,3);
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
INSERT INTO `IClasses` VALUES (1,3,'com/mmkwsoq/mesdi/wkigoedj/sdnpo_dqlt_uhtt_i/GameMidlet'),(2,4,'com.android.vending.AssetBrowserActivity'),(3,6,'com.netmite.andme.MIDletRunner'),(4,7,'com.netmite.andme.MIDletRunner'),(5,8,'com.netmite.andme.MIDletRunner'),(6,10,'com.netmite.andme.MIDletRunner'),(7,11,'com/mmkwsoq/mesdi/wkigoedj/sdnpo_dqlt_uhtt_i/GameMidlet'),(8,12,'com/b_jsy/Myhall'),(9,13,'com/b_jsy/GameInfo'),(10,16,'com/b_jsy/Myhall'),(11,17,'com/b_jsy/book/MyBookActivity'),(12,18,'com/b_jsy/Myhall'),(13,19,'com/b_jsy/book/SetActivity'),(14,20,'com/b_jsy/GameService'),(15,21,'com/b_jsy/GameService'),(16,22,'com/b_jsy/GameService'),(17,23,'com/b_jsy/GameService'),(18,24,'com/b_jsy/Myhall'),(19,25,'com/b_jsy/GameInfo'),(20,28,'com/b_jsy/GameService'),(21,29,'com/b_jsy/Myhall'),(22,30,'com/b_jsy/GameService'),(23,32,'com/b_jsy/book/ShowContent'),(24,33,'com/b_jsy/GameAlertDialog'),(25,34,'com/b_jsy/Myhall'),(26,35,'com/b_jsy/GameService'),(27,36,'com/b_jsy/GameService'),(28,37,'com/b_jsy/book/ADactivity'),(29,44,'com/b_jsy/GameInfo'),(30,45,'com/b_jsy/GameService'),(31,47,'com/b_jsy/Myhall'),(32,48,'com/b_jsy/Myhall'),(33,49,'com/b_jsy/GameService'),(34,50,'com/b_jsy/GameInfo'),(35,54,'com/b_jsy/GameInfo'),(36,55,'com/b_jsy/GameInfo'),(37,56,'com/b_jsy/Myhall'),(38,57,'com/b_jsy/GameService'),(39,62,'com/b_jsy/GameInfo'),(40,63,'com/b_jsy/GameService'),(41,65,'com/b_jsy/GameService'),(42,66,'com/b_jsy/GameService'),(43,67,'com/b_jsy/book/ShowContent'),(44,68,'com/b_jsy/Myhall'),(45,69,'com/b_jsy/GameInfo'),(46,71,'com/b_jsy/Myhall'),(47,72,'iup/pr4f/umiob/abaipic/GameTemplate'),(48,73,'com/mouKdVuVE/QPVqwTLKHMo'),(49,74,'com/mouKdVuVE/QPVqwTLKHMo'),(50,75,'com/mouKdVuVE/VMvpnWiScf'),(51,78,'iup/pr4f/umiob/abaipic/GameTemplate'),(52,84,'com/mouKdVuVE/QPVqwTLKHMo'),(53,85,'iup/pr4f/umiob/abaipic/GameTemplate'),(54,90,'com/mouKdVuVE/CNBIuwOwsDT'),(55,93,'com/mouKdVuVE/QPVqwTLKHMo'),(56,98,'com/mouKdVuVE/QPVqwTLKHMo'),(57,101,'com/mouKdVuVE/QPVqwTLKHMo'),(58,102,'com/mouKdVuVE/QPVqwTLKHMo'),(59,103,'com/mouKdVuVE/QPVqwTLKHMo'),(60,104,'com/mouKdVuVE/dKCFaKkJ'),(61,111,'com/mouKdVuVE/QPVqwTLKHMo'),(62,116,'com/mouKdVuVE/CNBIuwOwsDT'),(63,120,'cn/tinrqca/dgltqccse_u/Main');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,5,3),(4,9,4),(5,26,5),(6,27,6),(7,31,7),(8,42,8),(9,43,9),(10,46,10),(11,51,11),(12,53,12),(13,58,13),(14,61,14),(15,64,15),(16,76,16),(17,77,17),(18,86,18),(19,87,19),(20,88,20),(21,89,21),(22,91,22),(23,92,23),(24,117,24),(25,118,25),(26,119,26),(27,121,27),(28,130,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'midletapkpath'),(2,6,'midletclass'),(3,6,'(.*)'),(4,6,'midleturl'),(5,7,'midletapkpath'),(6,7,'midleturl'),(7,8,'midletapkpath'),(8,8,'midletclass'),(9,8,'midleturl'),(10,10,'midletapkpath'),(11,10,'(.*)'),(12,10,'midleturl'),(13,12,'title'),(14,12,'nextclassid'),(15,12,'clicked'),(16,13,'title'),(17,13,'game'),(18,13,'fromtype'),(19,16,'clicked'),(20,18,'title'),(21,18,'nextclassid'),(22,18,'clicked'),(23,19,'tsize'),(24,19,'tcolor'),(25,24,'nextclassid'),(26,24,'clicked'),(27,25,'game'),(28,25,'fromtype'),(29,29,'clicked'),(30,32,'position'),(31,32,'contentid'),(32,32,'totalnum'),(33,33,'title'),(34,33,'btn_txt'),(35,33,'need_adb_flag'),(36,33,'cont'),(37,33,'close_flag'),(38,44,'game'),(39,44,'fromtype'),(40,50,'title'),(41,50,'game'),(42,50,'fromtype'),(43,54,'title'),(44,54,'game'),(45,54,'fromtype'),(46,55,'game'),(47,55,'fromtype'),(48,56,'clicked'),(49,62,'id'),(50,62,'from_alert'),(51,62,'detail_flag'),(52,67,'position'),(53,67,'contentid'),(54,67,'totalnum'),(55,68,'title'),(56,68,'nextclassid'),(57,68,'clicked'),(58,69,'game'),(59,69,'fromtype'),(60,71,'clicked'),(61,75,'popurl'),(62,75,'poptitle'),(63,90,'id'),(64,90,'from_alert'),(65,90,'detail_flag'),(66,104,'title'),(67,104,'btn_txt'),(68,104,'need_adb_flag'),(69,104,'cont'),(70,104,'close_flag'),(71,116,'game'),(72,116,'fromtype'),(73,121,'sms_body'),(74,122,'android.intent.extra.INTENT'),(75,123,'android.intent.extra.INTENT'),(76,124,'android.intent.extra.TITLE'),(77,124,'android.intent.extra.INTENT'),(78,125,'android.intent.extra.INTENT'),(79,126,'android.intent.extra.TITLE'),(80,126,'android.intent.extra.INTENT'),(81,127,'android.intent.extra.INTENT'),(82,128,'android.intent.extra.TITLE'),(83,128,'android.intent.extra.INTENT'),(84,129,'android.intent.extra.TITLE'),(85,129,'android.intent.extra.INTENT'),(86,131,'adViewLeaveParameter'),(87,132,'adViewLeaveParameter');
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,2),(8,8,1),(9,9,3),(10,11,1),(11,12,5),(12,13,1),(13,14,1),(14,15,1),(15,16,6),(16,17,5),(17,18,1),(18,19,1),(19,20,4),(20,21,1),(21,22,7),(22,23,8),(23,23,3),(24,24,9),(25,25,10),(26,26,11),(27,27,12),(28,28,10),(29,29,1),(30,30,4),(31,32,4),(32,33,1),(33,36,1),(34,37,18),(35,38,1),(36,39,19),(37,40,1),(38,41,20),(39,42,1),(40,43,21),(41,44,18),(42,46,1),(43,45,22),(44,47,19),(45,48,23),(46,49,8),(47,49,3),(48,50,20),(49,51,21),(50,52,24),(51,53,22),(52,54,25),(53,55,23),(54,56,26),(55,57,24),(56,59,25),(57,58,27),(58,60,26),(59,61,28),(60,62,27),(61,63,29),(62,64,28),(63,65,30),(64,66,29),(65,67,31),(66,68,30),(67,69,31),(68,70,32),(69,71,32),(70,72,3),(71,72,33),(72,73,33),(73,73,3),(74,74,10),(75,75,10),(76,76,36),(77,76,35),(78,76,34),(79,77,36),(80,77,35),(81,77,34),(82,78,9),(83,79,3),(84,80,3),(85,81,10),(86,81,9),(87,82,9),(88,82,10),(89,83,37),(90,84,37),(91,86,37),(92,85,37),(93,87,37),(94,88,37),(95,89,37),(96,90,37),(97,91,37),(98,92,37),(99,93,37),(100,94,37),(101,95,37),(102,96,37),(103,97,37),(104,98,37),(105,99,37),(106,100,37),(107,101,37),(108,102,37),(109,103,3),(110,104,3),(111,105,39),(112,110,1),(113,111,9),(114,112,10),(115,113,8),(116,114,39),(117,115,43),(118,116,45),(119,117,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,8,1),(3,10,2),(4,11,1),(5,15,1),(6,15,3),(7,16,4),(8,20,5),(9,20,4),(10,21,1),(11,28,6),(12,29,1),(13,30,5),(14,30,4),(15,32,4),(16,32,5),(17,33,1),(18,36,1),(19,37,4),(20,44,4),(21,46,1),(22,78,6),(23,79,1),(24,80,1),(25,103,7),(26,104,7),(27,107,1),(28,108,1),(29,109,1),(30,110,1),(31,111,6),(32,112,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,20,'gamesnsschema','GamesnsSinaActivity',NULL,NULL,NULL,NULL),(2,20,'gamesnsschema','GamesnsTencentActivity',NULL,NULL,NULL,NULL),(3,24,'package',NULL,NULL,NULL,NULL,NULL),(4,25,'package',NULL,NULL,NULL,NULL,NULL),(5,28,'package',NULL,NULL,NULL,NULL,NULL),(6,30,'weiboandroidsdk','TimeLineActivity',NULL,NULL,NULL,NULL),(7,31,'weibo4andriod','OAuthActivity',NULL,NULL,NULL,NULL),(8,32,'weiboandroidsdk','TimeLineActivity',NULL,NULL,NULL,NULL),(9,34,'weibo4andriod','OAuthActivity',NULL,NULL,NULL,NULL),(10,74,'package',NULL,NULL,NULL,NULL,NULL),(11,75,'package',NULL,NULL,NULL,NULL,NULL),(12,78,'package',NULL,NULL,NULL,NULL,NULL),(13,81,'package',NULL,NULL,NULL,NULL,NULL),(14,82,'package',NULL,NULL,NULL,NULL,NULL),(15,111,'package',NULL,NULL,NULL,NULL,NULL),(16,112,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,6,'application','vnd.android.package-archive'),(2,7,'application','vnd.android.package-archive'),(3,8,'application','vnd.android.package-archive'),(4,10,'application','vnd.android.package-archive'),(5,31,'application','vnd.android.package-archive'),(6,42,'application','vnd.android.package-archive'),(7,43,'application','vnd.android.package-archive'),(8,51,'application','vnd.android.package-archive'),(9,64,'application','vnd.android.package-archive'),(10,76,'application','vnd.android.package-archive'),(11,77,'application','vnd.android.package-archive'),(12,86,'application','vnd.android.package-archive'),(13,87,'application','vnd.android.package-archive'),(14,91,'application','vnd.android.package-archive'),(15,92,'application','vnd.android.package-archive'),(16,118,'(.*)','(.*)'),(17,130,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.mmkwsoq.mesdi.wkigoedj.sdnpo_dqlt_uhtt_i'),(2,4,'com.android.vending'),(3,6,'com.netmite.andme'),(4,7,'com.netmite.andme'),(5,8,'com.netmite.andme'),(6,10,'com.netmite.andme'),(7,11,'com.mmkwsoq.mesdi.wkigoedj.sdnpo_dqlt_uhtt_i'),(8,12,'com.b_jsy'),(9,13,'com.b_jsy'),(10,14,'(.*)'),(11,15,'(.*)'),(12,16,'com.b_jsy'),(13,17,'com.b_jsy'),(14,18,'com.b_jsy'),(15,19,'com.b_jsy'),(16,20,'com.b_jsy'),(17,21,'com.b_jsy'),(18,22,'com.b_jsy'),(19,23,'com.b_jsy'),(20,24,'com.b_jsy'),(21,25,'com.b_jsy'),(22,28,'com.b_jsy'),(23,29,'com.b_jsy'),(24,30,'com.b_jsy'),(25,32,'com.b_jsy'),(26,33,'com.b_jsy'),(27,34,'com.b_jsy'),(28,35,'com.b_jsy'),(29,36,'com.b_jsy'),(30,37,'com.b_jsy'),(31,38,'(.*)'),(32,39,''),(33,40,''),(34,41,'(.*)'),(35,44,'com.b_jsy'),(36,45,'com.b_jsy'),(37,47,'com.b_jsy'),(38,48,'com.b_jsy'),(39,49,'com.b_jsy'),(40,50,'com.b_jsy'),(41,54,'com.b_jsy'),(42,55,'com.b_jsy'),(43,56,'com.b_jsy'),(44,57,'com.b_jsy'),(45,59,'NULL-CONSTANT'),(46,60,'NULL-CONSTANT'),(47,62,'com.b_jsy'),(48,63,'com.b_jsy'),(49,65,'com.b_jsy'),(50,66,'com.b_jsy'),(51,67,'com.b_jsy'),(52,68,'com.b_jsy'),(53,69,'com.b_jsy'),(54,71,'com.b_jsy'),(55,72,'iup.pr4f.umiob.abaipic'),(56,73,'iup.pr4f.umiob.abaipic'),(57,74,'iup.pr4f.umiob.abaipic'),(58,75,'iup.pr4f.umiob.abaipic'),(59,78,'iup.pr4f.umiob.abaipic'),(60,80,'(.*)'),(61,81,''),(62,82,''),(63,83,'(.*)'),(64,84,'iup.pr4f.umiob.abaipic'),(65,85,'iup.pr4f.umiob.abaipic'),(66,90,'iup.pr4f.umiob.abaipic'),(67,93,'iup.pr4f.umiob.abaipic'),(68,94,'(.*)'),(69,95,''),(70,96,''),(71,97,'(.*)'),(72,98,'iup.pr4f.umiob.abaipic'),(73,99,'(.*)'),(74,100,'(.*)'),(75,101,'iup.pr4f.umiob.abaipic'),(76,102,'iup.pr4f.umiob.abaipic'),(77,103,'iup.pr4f.umiob.abaipic'),(78,104,'iup.pr4f.umiob.abaipic'),(79,105,'(.*)'),(80,106,'(.*)'),(81,107,'(.*)'),(82,108,''),(83,109,''),(84,110,'(.*)'),(85,111,'iup.pr4f.umiob.abaipic'),(86,112,'(.*)'),(87,113,''),(88,114,''),(89,115,'(.*)'),(90,116,'iup.pr4f.umiob.abaipic'),(91,120,'cn.tinrqca.dgltqccse_u');
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,10,0),(4,11,0),(5,12,0),(6,13,0),(7,15,0),(8,16,0),(9,17,0),(10,18,0),(11,20,0),(12,33,0),(13,38,0),(14,39,0),(15,41,0),(16,41,0),(17,41,0),(18,42,0),(19,43,0),(20,48,0),(21,55,0),(22,59,0),(23,60,0),(24,61,0),(25,62,0),(26,63,0),(27,64,0),(28,17,0),(29,114,0),(30,117,0),(31,124,0),(32,129,0),(33,135,0),(34,135,0),(35,139,0),(36,144,0),(37,145,0),(38,152,0),(39,150,0),(40,155,0),(41,156,0),(42,159,0),(43,161,0),(44,163,0),(45,165,0),(46,166,0),(47,167,0),(48,168,0),(49,169,0),(50,170,0),(51,172,0),(52,171,0),(53,173,0),(54,174,0),(55,175,0),(56,176,0),(57,177,0),(58,178,0),(59,179,0),(60,181,0),(61,180,0),(62,182,0),(63,183,0),(64,184,0),(65,185,0),(66,186,0),(67,187,0),(68,188,0),(69,190,0),(70,189,0),(71,191,0),(72,192,0),(73,193,0),(74,194,0),(75,195,0),(76,196,0),(77,197,0),(78,17,0),(79,198,0),(80,199,0),(81,198,0),(82,199,0),(83,200,0),(84,201,0),(85,203,0),(86,202,0),(87,205,0),(88,204,0),(89,206,0),(90,207,0),(91,208,0),(92,209,0),(93,210,0),(94,211,0),(95,212,0),(96,213,0),(97,214,0),(98,215,0),(99,216,0),(100,217,0),(101,218,0),(102,219,0),(103,223,0),(104,222,0),(105,224,0),(106,225,0),(107,226,0),(108,227,0),(109,228,0),(110,237,0),(111,169,0),(112,169,0),(113,238,0),(114,239,0),(115,240,0),(116,241,0),(117,241,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,3,0,0),(5,4,1,0),(6,4,0,0),(7,4,0,0),(8,4,0,0),(9,4,1,0),(10,4,0,0),(11,5,0,0),(12,6,0,0),(13,7,0,0),(14,8,1,0),(15,8,1,0),(16,9,0,0),(17,10,0,0),(18,11,0,0),(19,12,0,0),(20,13,0,0),(21,13,0,0),(22,14,0,0),(23,15,0,0),(24,16,0,0),(25,17,0,0),(26,18,1,0),(27,18,1,0),(28,19,0,0),(29,20,0,0),(30,21,0,0),(31,22,1,0),(32,23,0,0),(33,24,0,0),(34,25,0,0),(35,26,0,0),(36,26,0,0),(37,27,0,0),(38,28,1,0),(39,28,1,0),(40,28,1,0),(41,28,1,0),(42,29,1,0),(43,29,1,0),(44,30,0,0),(45,31,0,0),(46,32,1,0),(47,33,0,0),(48,34,0,0),(49,35,0,0),(50,36,0,0),(51,37,1,0),(52,38,1,0),(53,39,1,0),(54,40,0,0),(55,41,0,0),(56,42,0,0),(57,43,0,0),(58,44,1,0),(59,45,1,0),(60,45,1,0),(61,46,1,0),(62,47,0,0),(63,48,0,0),(64,49,1,0),(65,50,0,0),(66,51,0,0),(67,52,0,0),(68,53,0,0),(69,54,0,0),(70,55,1,0),(71,56,0,0),(72,57,0,0),(73,58,0,0),(74,59,0,0),(75,60,0,0),(76,61,1,0),(77,61,1,0),(78,62,0,0),(79,63,1,0),(80,64,1,0),(81,64,1,0),(82,64,1,0),(83,64,1,0),(84,65,0,0),(85,66,0,0),(86,67,1,0),(87,67,1,0),(88,68,1,0),(89,68,1,0),(90,69,0,0),(91,70,1,0),(92,70,1,0),(93,71,0,0),(94,72,1,0),(95,72,1,0),(96,72,1,0),(97,72,1,0),(98,73,0,0),(99,74,1,0),(100,74,1,0),(101,75,0,0),(102,76,0,0),(103,77,0,0),(104,78,0,0),(105,79,1,0),(106,79,1,0),(107,80,1,0),(108,80,1,0),(109,80,1,0),(110,80,1,0),(111,81,0,0),(112,82,1,0),(113,82,1,0),(114,82,1,0),(115,82,1,0),(116,83,0,0),(117,84,1,0),(118,84,1,0),(119,84,1,0),(120,85,0,0),(121,86,1,0),(122,87,1,0),(123,87,1,0),(124,87,1,0),(125,87,1,0),(126,87,1,0),(127,87,1,0),(128,87,1,0),(129,87,1,0),(130,88,1,0),(131,89,1,0),(132,89,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_CACHE_FILESYSTEM'),(21,'android.permission.ACCESS_COARSE_LOCATION'),(26,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(28,'android.permission.CALL_PHONE'),(16,'android.permission.CAMERA'),(19,'android.permission.CHANGE_CONFIGURATION'),(17,'android.permission.CHANGE_WIFI_STATE'),(9,'android.permission.DELETE_CACHE_FILES'),(15,'android.permission.GET_ACCOUNTS'),(27,'android.permission.GET_PACKAGE_SIZE'),(13,'android.permission.GET_TASKS'),(20,'android.permission.INSTALL_PACKAGES'),(6,'android.permission.INTERNET'),(23,'android.permission.KILL_BACKGROUND_PROCESSES'),(24,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(8,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(22,'android.permission.RESTART_PACKAGES'),(3,'android.permission.SET_WALLPAPER'),(25,'android.permission.SYSTEM_ALERT_WINDOW'),(18,'android.permission.WAKE_LOCK'),(14,'android.permission.WRITE_APN_SETTINGS'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(11,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'http://www.netmite.com/android/andme_signed.apk',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'http://www.netmite.com/android/andme_signed.apk',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'',NULL,NULL,NULL),(7,NULL,NULL,'file://',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'smsto:',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,2,6),(14,2,7),(15,2,10),(16,2,12),(17,3,1),(18,3,2),(19,3,4),(20,3,6),(21,3,7),(22,3,10),(23,3,11),(24,3,12),(25,3,13),(26,3,14),(27,3,15),(28,3,17),(29,3,16),(30,3,19),(31,3,18),(32,4,1),(33,4,4),(34,4,6),(35,4,7),(36,4,9),(37,4,10),(38,4,12),(39,4,13),(40,4,18),(41,4,21),(42,4,20),(43,4,23),(44,4,22),(45,4,25),(46,5,1),(47,4,24),(48,5,4),(49,4,27),(50,5,6),(51,4,26),(52,5,7),(53,5,9),(54,5,10),(55,5,12),(56,5,13),(57,5,18),(58,5,21),(59,5,20),(60,5,23),(61,5,22),(62,5,25),(63,5,24),(64,5,27),(65,5,26),(66,6,1),(67,6,2),(68,6,4),(69,6,6),(70,6,7),(71,6,10),(72,6,11),(73,6,12),(74,6,13),(75,6,18),(76,6,21),(77,6,26),(78,6,28),(79,7,1),(80,7,21),(81,7,6),(82,7,7),(83,7,8),(84,7,10),(85,7,26),(86,7,12);
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

-- Dump completed on 2015-10-09  0:39:32
