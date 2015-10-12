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
) ENGINE=InnoDB AUTO_INCREMENT=2213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,58,18,2,NULL),(2,14,18,2,NULL),(3,58,33,2,NULL),(4,15,18,2,NULL),(5,14,33,2,NULL),(6,26,18,2,NULL),(7,58,114,2,NULL),(8,15,33,2,NULL),(9,27,18,2,NULL),(10,14,114,2,NULL),(11,26,33,2,NULL),(12,52,18,2,NULL),(13,15,114,2,NULL),(14,27,33,2,NULL),(15,105,18,2,NULL),(16,26,114,2,NULL),(17,52,33,2,NULL),(18,27,114,2,NULL),(19,106,18,2,NULL),(20,105,33,2,NULL),(21,52,114,2,NULL),(22,99,18,2,NULL),(23,106,33,2,NULL),(24,100,18,2,NULL),(25,105,114,2,NULL),(26,99,33,2,NULL),(27,107,18,2,NULL),(28,106,114,2,NULL),(29,100,33,2,NULL),(30,108,18,2,NULL),(31,99,114,2,NULL),(32,107,33,2,NULL),(33,109,18,2,NULL),(34,100,114,2,NULL),(35,108,33,2,NULL),(36,107,114,2,NULL),(37,110,18,2,NULL),(38,109,33,2,NULL),(39,108,114,2,NULL),(40,79,18,2,NULL),(41,109,114,2,NULL),(42,88,18,2,NULL),(43,110,33,2,NULL),(44,110,114,2,NULL),(45,79,33,2,NULL),(46,89,18,2,NULL),(47,79,114,2,NULL),(48,70,18,2,NULL),(49,88,33,2,NULL),(50,88,114,2,NULL),(51,89,33,2,NULL),(52,89,114,2,NULL),(53,117,18,2,NULL),(54,70,33,2,NULL),(55,70,114,2,NULL),(56,119,18,2,NULL),(57,117,33,2,NULL),(58,119,33,2,NULL),(59,117,114,2,NULL),(60,131,18,2,NULL),(61,132,18,2,NULL),(62,131,33,2,NULL),(63,119,114,2,NULL),(64,131,114,2,NULL),(65,132,33,2,NULL),(66,3,18,2,NULL),(67,132,114,2,NULL),(68,11,18,2,NULL),(69,58,38,2,NULL),(70,58,145,2,NULL),(71,58,20,2,NULL),(72,14,38,2,NULL),(73,14,145,2,NULL),(74,14,20,2,NULL),(75,15,38,2,NULL),(76,15,145,2,NULL),(77,15,20,2,NULL),(78,26,38,2,NULL),(79,26,145,2,NULL),(80,26,20,2,NULL),(81,27,38,2,NULL),(82,27,145,2,NULL),(83,27,20,2,NULL),(84,52,38,2,NULL),(85,52,20,2,NULL),(86,52,145,2,NULL),(87,105,38,2,NULL),(88,105,145,2,NULL),(89,105,20,2,NULL),(90,106,38,2,NULL),(91,106,20,2,NULL),(92,106,145,2,NULL),(93,99,38,2,NULL),(94,99,145,2,NULL),(95,99,20,2,NULL),(96,100,38,2,NULL),(97,100,145,2,NULL),(98,100,20,2,NULL),(99,107,38,2,NULL),(100,107,145,2,NULL),(101,107,20,2,NULL),(102,108,38,2,NULL),(103,108,145,2,NULL),(104,108,20,2,NULL),(105,109,38,2,NULL),(106,109,145,2,NULL),(107,109,20,2,NULL),(108,110,38,2,NULL),(109,110,145,2,NULL),(110,110,20,2,NULL),(111,79,38,2,NULL),(112,79,145,2,NULL),(113,79,20,2,NULL),(114,88,38,2,NULL),(115,88,20,2,NULL),(116,88,145,2,NULL),(117,89,38,2,NULL),(118,89,145,2,NULL),(119,89,20,2,NULL),(120,70,38,2,NULL),(121,70,145,2,NULL),(122,70,20,2,NULL),(123,117,38,2,NULL),(124,117,20,2,NULL),(125,117,145,2,NULL),(126,119,38,2,NULL),(127,119,20,2,NULL),(128,119,145,2,NULL),(129,131,38,2,NULL),(130,131,145,2,NULL),(131,131,20,2,NULL),(132,132,38,2,NULL),(133,132,20,2,NULL),(134,132,145,2,NULL),(135,58,39,2,NULL),(136,58,150,2,NULL),(137,14,39,2,NULL),(138,14,150,2,NULL),(139,15,39,2,NULL),(140,15,150,2,NULL),(141,26,39,2,NULL),(142,26,150,2,NULL),(143,27,39,2,NULL),(144,27,150,2,NULL),(145,52,39,2,NULL),(146,52,150,2,NULL),(147,105,39,2,NULL),(148,105,150,2,NULL),(149,106,39,2,NULL),(150,106,150,2,NULL),(151,99,39,2,NULL),(152,99,150,2,NULL),(153,100,39,2,NULL),(154,100,150,2,NULL),(155,107,39,2,NULL),(156,107,150,2,NULL),(157,108,39,2,NULL),(158,108,150,2,NULL),(159,109,39,2,NULL),(160,109,150,2,NULL),(161,110,39,2,NULL),(162,110,150,2,NULL),(163,79,39,2,NULL),(164,79,150,2,NULL),(165,88,39,2,NULL),(166,88,150,2,NULL),(167,89,39,2,NULL),(168,89,150,2,NULL),(169,70,39,2,NULL),(170,70,150,2,NULL),(171,117,39,2,NULL),(172,117,150,2,NULL),(173,119,39,2,NULL),(174,119,150,2,NULL),(175,131,39,2,NULL),(176,131,150,2,NULL),(177,132,39,2,NULL),(178,132,150,2,NULL),(179,58,41,2,NULL),(180,58,156,2,NULL),(181,14,41,2,NULL),(182,14,156,2,NULL),(183,15,41,2,NULL),(184,15,156,2,NULL),(185,26,41,2,NULL),(186,26,156,2,NULL),(187,27,41,2,NULL),(188,27,156,2,NULL),(189,52,41,2,NULL),(190,52,156,2,NULL),(191,105,41,2,NULL),(192,105,156,2,NULL),(193,106,41,2,NULL),(194,106,156,2,NULL),(195,99,41,2,NULL),(196,99,156,2,NULL),(197,100,41,2,NULL),(198,100,156,2,NULL),(199,107,41,2,NULL),(200,107,156,2,NULL),(201,108,41,2,NULL),(202,108,156,2,NULL),(203,109,41,2,NULL),(204,109,156,2,NULL),(205,110,41,2,NULL),(206,110,156,2,NULL),(207,79,41,2,NULL),(208,79,156,2,NULL),(209,88,41,2,NULL),(210,88,156,2,NULL),(211,89,41,2,NULL),(212,89,156,2,NULL),(213,70,41,2,NULL),(214,70,156,2,NULL),(215,117,41,2,NULL),(216,117,156,2,NULL),(217,119,41,2,NULL),(218,119,156,2,NULL),(219,131,41,2,NULL),(220,131,156,2,NULL),(221,132,41,2,NULL),(222,132,156,2,NULL),(223,58,42,2,NULL),(224,58,161,2,NULL),(225,14,42,2,NULL),(226,14,161,2,NULL),(227,15,42,2,NULL),(228,15,161,2,NULL),(229,26,42,2,NULL),(230,26,161,2,NULL),(231,27,42,2,NULL),(232,27,161,2,NULL),(233,52,42,2,NULL),(234,52,161,2,NULL),(235,105,42,2,NULL),(236,105,161,2,NULL),(237,106,42,2,NULL),(238,106,161,2,NULL),(239,99,42,2,NULL),(240,99,161,2,NULL),(241,100,42,2,NULL),(242,100,161,2,NULL),(243,107,42,2,NULL),(244,107,161,2,NULL),(245,108,42,2,NULL),(246,108,161,2,NULL),(247,109,42,2,NULL),(248,109,161,2,NULL),(249,110,42,2,NULL),(250,110,161,2,NULL),(251,79,42,2,NULL),(252,79,161,2,NULL),(253,88,42,2,NULL),(254,88,161,2,NULL),(255,89,42,2,NULL),(256,89,161,2,NULL),(257,70,42,2,NULL),(258,70,161,2,NULL),(259,117,42,2,NULL),(260,117,161,2,NULL),(261,119,42,2,NULL),(262,119,161,2,NULL),(263,131,42,2,NULL),(264,131,161,2,NULL),(265,132,42,2,NULL),(266,132,161,2,NULL),(267,58,43,2,NULL),(268,58,165,2,NULL),(269,14,43,2,NULL),(270,14,165,2,NULL),(271,15,43,2,NULL),(272,15,165,2,NULL),(273,26,43,2,NULL),(274,26,165,2,NULL),(275,27,43,2,NULL),(276,27,165,2,NULL),(277,52,43,2,NULL),(278,52,165,2,NULL),(279,105,43,2,NULL),(280,105,165,2,NULL),(281,106,43,2,NULL),(282,106,165,2,NULL),(283,99,43,2,NULL),(284,99,165,2,NULL),(285,100,43,2,NULL),(286,100,165,2,NULL),(287,107,43,2,NULL),(288,107,165,2,NULL),(289,108,43,2,NULL),(290,108,165,2,NULL),(291,109,43,2,NULL),(292,109,165,2,NULL),(293,110,43,2,NULL),(294,110,165,2,NULL),(295,79,43,2,NULL),(296,79,165,2,NULL),(297,88,43,2,NULL),(298,88,165,2,NULL),(299,89,43,2,NULL),(300,89,165,2,NULL),(301,70,43,2,NULL),(302,70,165,2,NULL),(303,117,43,2,NULL),(304,117,165,2,NULL),(305,119,43,2,NULL),(306,119,165,2,NULL),(307,131,43,2,NULL),(308,131,165,2,NULL),(309,132,43,2,NULL),(310,132,165,2,NULL),(311,58,55,2,NULL),(312,58,168,2,NULL),(313,14,55,2,NULL),(314,14,168,2,NULL),(315,15,55,2,NULL),(316,15,168,2,NULL),(317,26,55,2,NULL),(318,26,168,2,NULL),(319,27,55,2,NULL),(320,27,168,2,NULL),(321,52,55,2,NULL),(322,52,168,2,NULL),(323,105,55,2,NULL),(324,105,168,2,NULL),(325,106,55,2,NULL),(326,106,168,2,NULL),(327,99,55,2,NULL),(328,99,168,2,NULL),(329,100,55,2,NULL),(330,100,168,2,NULL),(331,107,55,2,NULL),(332,107,168,2,NULL),(333,108,55,2,NULL),(334,108,168,2,NULL),(335,109,55,2,NULL),(336,109,168,2,NULL),(337,110,55,2,NULL),(338,110,168,2,NULL),(339,79,55,2,NULL),(340,79,168,2,NULL),(341,88,55,2,NULL),(342,88,168,2,NULL),(343,89,55,2,NULL),(344,89,168,2,NULL),(345,70,55,2,NULL),(346,70,168,2,NULL),(347,117,55,2,NULL),(348,117,168,2,NULL),(349,119,55,2,NULL),(350,119,168,2,NULL),(351,131,55,2,NULL),(352,131,168,2,NULL),(353,132,55,2,NULL),(354,132,168,2,NULL),(355,58,59,2,NULL),(356,58,171,2,NULL),(357,14,59,2,NULL),(358,14,171,2,NULL),(359,15,59,2,NULL),(360,15,171,2,NULL),(361,26,59,2,NULL),(362,26,171,2,NULL),(363,27,59,2,NULL),(364,27,171,2,NULL),(365,52,59,2,NULL),(366,52,171,2,NULL),(367,105,59,2,NULL),(368,105,171,2,NULL),(369,106,59,2,NULL),(370,106,171,2,NULL),(371,99,59,2,NULL),(372,99,171,2,NULL),(373,100,59,2,NULL),(374,100,171,2,NULL),(375,107,59,2,NULL),(376,107,171,2,NULL),(377,108,59,2,NULL),(378,108,171,2,NULL),(379,109,59,2,NULL),(380,109,171,2,NULL),(381,110,59,2,NULL),(382,110,171,2,NULL),(383,79,59,2,NULL),(384,79,171,2,NULL),(385,88,59,2,NULL),(386,88,171,2,NULL),(387,89,59,2,NULL),(388,89,171,2,NULL),(389,70,59,2,NULL),(390,70,171,2,NULL),(391,117,59,2,NULL),(392,117,171,2,NULL),(393,119,59,2,NULL),(394,119,171,2,NULL),(395,131,59,2,NULL),(396,131,171,2,NULL),(397,132,59,2,NULL),(398,132,171,2,NULL),(399,58,60,2,NULL),(400,58,174,2,NULL),(401,14,60,2,NULL),(402,14,174,2,NULL),(403,15,60,2,NULL),(404,15,174,2,NULL),(405,26,60,2,NULL),(406,26,174,2,NULL),(407,27,60,2,NULL),(408,27,174,2,NULL),(409,52,60,2,NULL),(410,52,174,2,NULL),(411,105,60,2,NULL),(412,105,174,2,NULL),(413,106,60,2,NULL),(414,106,174,2,NULL),(415,99,60,2,NULL),(416,99,174,2,NULL),(417,100,60,2,NULL),(418,100,174,2,NULL),(419,107,60,2,NULL),(420,107,174,2,NULL),(421,108,60,2,NULL),(422,108,174,2,NULL),(423,109,60,2,NULL),(424,109,174,2,NULL),(425,110,60,2,NULL),(426,110,174,2,NULL),(427,79,60,2,NULL),(428,79,174,2,NULL),(429,88,60,2,NULL),(430,88,174,2,NULL),(431,89,60,2,NULL),(432,89,174,2,NULL),(433,70,60,2,NULL),(434,70,174,2,NULL),(435,117,60,2,NULL),(436,117,174,2,NULL),(437,119,60,2,NULL),(438,119,174,2,NULL),(439,131,60,2,NULL),(440,131,174,2,NULL),(441,132,60,2,NULL),(442,132,174,2,NULL),(443,58,63,2,NULL),(444,58,176,2,NULL),(445,14,63,2,NULL),(446,14,176,2,NULL),(447,15,63,2,NULL),(448,15,176,2,NULL),(449,26,63,2,NULL),(450,26,176,2,NULL),(451,27,63,2,NULL),(452,27,176,2,NULL),(453,52,63,2,NULL),(454,52,176,2,NULL),(455,105,63,2,NULL),(456,105,176,2,NULL),(457,106,63,2,NULL),(458,106,176,2,NULL),(459,99,63,2,NULL),(460,99,176,2,NULL),(461,100,63,2,NULL),(462,100,176,2,NULL),(463,107,63,2,NULL),(464,107,176,2,NULL),(465,108,63,2,NULL),(466,108,176,2,NULL),(467,109,63,2,NULL),(468,109,176,2,NULL),(469,110,63,2,NULL),(470,110,176,2,NULL),(471,79,63,2,NULL),(472,79,176,2,NULL),(473,88,63,2,NULL),(474,88,176,2,NULL),(475,89,63,2,NULL),(476,89,176,2,NULL),(477,70,63,2,NULL),(478,70,176,2,NULL),(479,117,63,2,NULL),(480,117,176,2,NULL),(481,119,63,2,NULL),(482,119,176,2,NULL),(483,131,63,2,NULL),(484,131,176,2,NULL),(485,132,63,2,NULL),(486,132,176,2,NULL),(487,58,64,2,NULL),(488,58,178,2,NULL),(489,14,64,2,NULL),(490,14,178,2,NULL),(491,15,64,2,NULL),(492,15,178,2,NULL),(493,26,64,2,NULL),(494,26,178,2,NULL),(495,27,64,2,NULL),(496,27,178,2,NULL),(497,52,64,2,NULL),(498,52,178,2,NULL),(499,105,64,2,NULL),(500,105,178,2,NULL),(501,106,64,2,NULL),(502,106,178,2,NULL),(503,99,64,2,NULL),(504,99,178,2,NULL),(505,100,64,2,NULL),(506,100,178,2,NULL),(507,107,64,2,NULL),(508,107,178,2,NULL),(509,108,64,2,NULL),(510,108,178,2,NULL),(511,109,64,2,NULL),(512,109,178,2,NULL),(513,110,64,2,NULL),(514,110,178,2,NULL),(515,79,64,2,NULL),(516,79,178,2,NULL),(517,88,64,2,NULL),(518,88,178,2,NULL),(519,89,64,2,NULL),(520,89,178,2,NULL),(521,70,64,2,NULL),(522,70,178,2,NULL),(523,117,64,2,NULL),(524,117,178,2,NULL),(525,119,64,2,NULL),(526,119,178,2,NULL),(527,131,64,2,NULL),(528,131,178,2,NULL),(529,132,64,2,NULL),(530,132,178,2,NULL),(531,58,180,2,NULL),(532,14,180,2,NULL),(533,15,180,2,NULL),(534,26,180,2,NULL),(535,27,180,2,NULL),(536,52,180,2,NULL),(537,105,180,2,NULL),(538,106,180,2,NULL),(539,99,180,2,NULL),(540,100,180,2,NULL),(541,107,180,2,NULL),(542,108,180,2,NULL),(543,109,180,2,NULL),(544,110,180,2,NULL),(545,79,180,2,NULL),(546,88,180,2,NULL),(547,89,180,2,NULL),(548,70,180,2,NULL),(549,117,180,2,NULL),(550,119,180,2,NULL),(551,131,180,2,NULL),(552,132,180,2,NULL),(553,58,183,2,NULL),(554,14,183,2,NULL),(555,15,183,2,NULL),(556,26,183,2,NULL),(557,27,183,2,NULL),(558,52,183,2,NULL),(559,105,183,2,NULL),(560,106,183,2,NULL),(561,99,183,2,NULL),(562,100,183,2,NULL),(563,107,183,2,NULL),(564,108,183,2,NULL),(565,109,183,2,NULL),(566,110,183,2,NULL),(567,79,183,2,NULL),(568,88,183,2,NULL),(569,89,183,2,NULL),(570,70,183,2,NULL),(571,117,183,2,NULL),(572,119,183,2,NULL),(573,131,183,2,NULL),(574,132,183,2,NULL),(575,58,185,2,NULL),(576,14,185,2,NULL),(577,15,185,2,NULL),(578,26,185,2,NULL),(579,27,185,2,NULL),(580,52,185,2,NULL),(581,105,185,2,NULL),(582,106,185,2,NULL),(583,99,185,2,NULL),(584,100,185,2,NULL),(585,107,185,2,NULL),(586,108,185,2,NULL),(587,109,185,2,NULL),(588,110,185,2,NULL),(589,79,185,2,NULL),(590,88,185,2,NULL),(591,89,185,2,NULL),(592,70,185,2,NULL),(593,117,185,2,NULL),(594,119,185,2,NULL),(595,131,185,2,NULL),(596,132,185,2,NULL),(597,58,187,2,NULL),(598,14,187,2,NULL),(599,15,187,2,NULL),(600,26,187,2,NULL),(601,27,187,2,NULL),(602,52,187,2,NULL),(603,105,187,2,NULL),(604,106,187,2,NULL),(605,99,187,2,NULL),(606,100,187,2,NULL),(607,107,187,2,NULL),(608,108,187,2,NULL),(609,109,187,2,NULL),(610,110,187,2,NULL),(611,79,187,2,NULL),(612,88,187,2,NULL),(613,89,187,2,NULL),(614,70,187,2,NULL),(615,117,187,2,NULL),(616,119,187,2,NULL),(617,131,187,2,NULL),(618,132,187,2,NULL),(619,58,189,2,NULL),(620,14,189,2,NULL),(621,15,189,2,NULL),(622,26,189,2,NULL),(623,27,189,2,NULL),(624,52,189,2,NULL),(625,105,189,2,NULL),(626,106,189,2,NULL),(627,99,189,2,NULL),(628,100,189,2,NULL),(629,107,189,2,NULL),(630,108,189,2,NULL),(631,109,189,2,NULL),(632,110,189,2,NULL),(633,79,189,2,NULL),(634,88,189,2,NULL),(635,89,189,2,NULL),(636,70,189,2,NULL),(637,117,189,2,NULL),(638,119,189,2,NULL),(639,131,189,2,NULL),(640,132,189,2,NULL),(641,58,192,2,NULL),(642,14,192,2,NULL),(643,15,192,2,NULL),(644,26,192,2,NULL),(645,27,192,2,NULL),(646,52,192,2,NULL),(647,105,192,2,NULL),(648,106,192,2,NULL),(649,99,192,2,NULL),(650,100,192,2,NULL),(651,107,192,2,NULL),(652,108,192,2,NULL),(653,109,192,2,NULL),(654,110,192,2,NULL),(655,79,192,2,NULL),(656,88,192,2,NULL),(657,89,192,2,NULL),(658,70,192,2,NULL),(659,117,192,2,NULL),(660,119,192,2,NULL),(661,131,192,2,NULL),(662,132,192,2,NULL),(663,58,196,2,NULL),(664,14,196,2,NULL),(665,15,196,2,NULL),(666,26,196,2,NULL),(667,27,196,2,NULL),(668,52,196,2,NULL),(669,105,196,2,NULL),(670,106,196,2,NULL),(671,99,196,2,NULL),(672,100,196,2,NULL),(673,107,196,2,NULL),(674,108,196,2,NULL),(675,109,196,2,NULL),(676,110,196,2,NULL),(677,79,196,2,NULL),(678,88,196,2,NULL),(679,89,196,2,NULL),(680,70,196,2,NULL),(681,117,196,2,NULL),(682,119,196,2,NULL),(683,131,196,2,NULL),(684,132,196,2,NULL),(685,58,198,2,NULL),(686,14,198,2,NULL),(687,15,198,2,NULL),(688,26,198,2,NULL),(689,27,198,2,NULL),(690,52,198,2,NULL),(691,105,198,2,NULL),(692,106,198,2,NULL),(693,99,198,2,NULL),(694,100,198,2,NULL),(695,107,198,2,NULL),(696,108,198,2,NULL),(697,109,198,2,NULL),(698,110,198,2,NULL),(699,79,198,2,NULL),(700,88,198,2,NULL),(701,89,198,2,NULL),(702,70,198,2,NULL),(703,117,198,2,NULL),(704,119,198,2,NULL),(705,131,198,2,NULL),(706,132,198,2,NULL),(707,58,200,2,NULL),(708,14,200,2,NULL),(709,15,200,2,NULL),(710,26,200,2,NULL),(711,27,200,2,NULL),(712,52,200,2,NULL),(713,105,200,2,NULL),(714,106,200,2,NULL),(715,99,200,2,NULL),(716,100,200,2,NULL),(717,107,200,2,NULL),(718,108,200,2,NULL),(719,109,200,2,NULL),(720,110,200,2,NULL),(721,79,200,2,NULL),(722,88,200,2,NULL),(723,89,200,2,NULL),(724,70,200,2,NULL),(725,117,200,2,NULL),(726,119,200,2,NULL),(727,131,200,2,NULL),(728,132,200,2,NULL),(729,58,203,2,NULL),(730,14,203,2,NULL),(731,15,203,2,NULL),(732,26,203,2,NULL),(733,27,203,2,NULL),(734,52,203,2,NULL),(735,105,203,2,NULL),(736,106,203,2,NULL),(737,99,203,2,NULL),(738,100,203,2,NULL),(739,107,203,2,NULL),(740,108,203,2,NULL),(741,109,203,2,NULL),(742,110,203,2,NULL),(743,79,203,2,NULL),(744,88,203,2,NULL),(745,89,203,2,NULL),(746,70,203,2,NULL),(747,117,203,2,NULL),(748,119,203,2,NULL),(749,131,203,2,NULL),(750,132,203,2,NULL),(751,58,204,2,NULL),(752,14,204,2,NULL),(753,15,204,2,NULL),(754,26,204,2,NULL),(755,27,204,2,NULL),(756,52,204,2,NULL),(757,105,204,2,NULL),(758,106,204,2,NULL),(759,99,204,2,NULL),(760,100,204,2,NULL),(761,107,204,2,NULL),(762,108,204,2,NULL),(763,109,204,2,NULL),(764,110,204,2,NULL),(765,79,204,2,NULL),(766,88,204,2,NULL),(767,89,204,2,NULL),(768,70,204,2,NULL),(769,117,204,2,NULL),(770,119,204,2,NULL),(771,131,204,2,NULL),(772,132,204,2,NULL),(773,58,207,2,NULL),(774,14,207,2,NULL),(775,15,207,2,NULL),(776,26,207,2,NULL),(777,27,207,2,NULL),(778,52,207,2,NULL),(779,105,207,2,NULL),(780,106,207,2,NULL),(781,99,207,2,NULL),(782,100,207,2,NULL),(783,107,207,2,NULL),(784,108,207,2,NULL),(785,109,207,2,NULL),(786,110,207,2,NULL),(787,79,207,2,NULL),(788,88,207,2,NULL),(789,89,207,2,NULL),(790,70,207,2,NULL),(791,117,207,2,NULL),(792,119,207,2,NULL),(793,131,207,2,NULL),(794,132,207,2,NULL),(795,58,209,2,NULL),(796,14,209,2,NULL),(797,15,209,2,NULL),(798,26,209,2,NULL),(799,27,209,2,NULL),(800,52,209,2,NULL),(801,105,209,2,NULL),(802,106,209,2,NULL),(803,99,209,2,NULL),(804,100,209,2,NULL),(805,107,209,2,NULL),(806,108,209,2,NULL),(807,109,209,2,NULL),(808,110,209,2,NULL),(809,79,209,2,NULL),(810,88,209,2,NULL),(811,89,209,2,NULL),(812,70,209,2,NULL),(813,117,209,2,NULL),(814,119,209,2,NULL),(815,131,209,2,NULL),(816,132,209,2,NULL),(817,58,211,2,NULL),(818,14,211,2,NULL),(819,15,211,2,NULL),(820,26,211,2,NULL),(821,27,211,2,NULL),(822,52,211,2,NULL),(823,105,211,2,NULL),(824,106,211,2,NULL),(825,99,211,2,NULL),(826,100,211,2,NULL),(827,107,211,2,NULL),(828,108,211,2,NULL),(829,109,211,2,NULL),(830,110,211,2,NULL),(831,79,211,2,NULL),(832,88,211,2,NULL),(833,89,211,2,NULL),(834,70,211,2,NULL),(835,117,211,2,NULL),(836,119,211,2,NULL),(837,131,211,2,NULL),(838,132,211,2,NULL),(839,58,213,2,NULL),(840,14,213,2,NULL),(841,15,213,2,NULL),(842,26,213,2,NULL),(843,27,213,2,NULL),(844,52,213,2,NULL),(845,105,213,2,NULL),(846,106,213,2,NULL),(847,99,213,2,NULL),(848,100,213,2,NULL),(849,107,213,2,NULL),(850,108,213,2,NULL),(851,109,213,2,NULL),(852,110,213,2,NULL),(853,79,213,2,NULL),(854,88,213,2,NULL),(855,89,213,2,NULL),(856,70,213,2,NULL),(857,117,213,2,NULL),(858,119,213,2,NULL),(859,131,213,2,NULL),(860,132,213,2,NULL),(861,58,215,2,NULL),(862,14,215,2,NULL),(863,15,215,2,NULL),(864,26,215,2,NULL),(865,27,215,2,NULL),(866,52,215,2,NULL),(867,105,215,2,NULL),(868,106,215,2,NULL),(869,99,215,2,NULL),(870,100,215,2,NULL),(871,107,215,2,NULL),(872,108,215,2,NULL),(873,109,215,2,NULL),(874,110,215,2,NULL),(875,79,215,2,NULL),(876,88,215,2,NULL),(877,89,215,2,NULL),(878,70,215,2,NULL),(879,117,215,2,NULL),(880,119,215,2,NULL),(881,131,215,2,NULL),(882,132,215,2,NULL),(883,58,217,2,NULL),(884,14,217,2,NULL),(885,15,217,2,NULL),(886,26,217,2,NULL),(887,27,217,2,NULL),(888,52,217,2,NULL),(889,58,225,2,NULL),(890,105,217,2,NULL),(891,14,225,2,NULL),(892,106,217,2,NULL),(893,15,225,2,NULL),(894,99,217,2,NULL),(895,32,3,2,NULL),(896,26,225,2,NULL),(897,100,217,2,NULL),(898,58,1,2,NULL),(899,27,225,2,NULL),(900,107,217,2,NULL),(901,14,1,2,NULL),(902,52,225,2,NULL),(903,108,217,2,NULL),(904,15,1,2,NULL),(905,105,225,2,NULL),(906,109,217,2,NULL),(907,26,1,2,NULL),(908,106,225,2,NULL),(909,110,217,2,NULL),(910,27,1,2,NULL),(911,99,225,2,NULL),(912,79,217,2,NULL),(913,52,1,2,NULL),(914,100,225,2,NULL),(915,88,217,2,NULL),(916,105,1,2,NULL),(917,107,225,2,NULL),(918,89,217,2,NULL),(919,106,1,2,NULL),(920,108,225,2,NULL),(921,70,217,2,NULL),(922,99,1,2,NULL),(923,109,225,2,NULL),(924,117,217,2,NULL),(925,100,1,2,NULL),(926,110,225,2,NULL),(927,119,217,2,NULL),(928,107,1,2,NULL),(929,79,225,2,NULL),(930,131,217,2,NULL),(931,108,1,2,NULL),(932,88,225,2,NULL),(933,132,217,2,NULL),(934,109,1,2,NULL),(935,89,225,2,NULL),(936,58,219,2,NULL),(937,110,1,2,NULL),(938,70,225,2,NULL),(939,14,219,2,NULL),(940,79,1,2,NULL),(941,117,225,2,NULL),(942,15,219,2,NULL),(943,88,1,2,NULL),(944,119,225,2,NULL),(945,26,219,2,NULL),(946,89,1,2,NULL),(947,27,219,2,NULL),(948,131,225,2,NULL),(949,70,1,2,NULL),(950,52,219,2,NULL),(951,132,225,2,NULL),(952,117,1,2,NULL),(953,105,219,2,NULL),(954,119,1,2,NULL),(955,58,226,2,NULL),(956,106,219,2,NULL),(957,131,1,2,NULL),(958,99,219,2,NULL),(959,14,226,2,NULL),(960,132,1,2,NULL),(961,100,219,2,NULL),(962,15,226,2,NULL),(963,44,12,2,NULL),(964,107,219,2,NULL),(965,26,226,2,NULL),(966,19,4,2,NULL),(967,108,219,2,NULL),(968,27,226,2,NULL),(969,109,219,2,NULL),(970,37,2,2,NULL),(971,52,226,2,NULL),(972,110,219,2,NULL),(973,67,3,2,NULL),(974,105,226,2,NULL),(975,79,219,2,NULL),(976,106,226,2,NULL),(977,20,16,2,NULL),(978,88,219,2,NULL),(979,99,226,2,NULL),(980,21,16,2,NULL),(981,89,219,2,NULL),(982,100,226,2,NULL),(983,22,16,2,NULL),(984,70,219,2,NULL),(985,107,226,2,NULL),(986,117,219,2,NULL),(987,35,16,2,NULL),(988,108,226,2,NULL),(989,119,219,2,NULL),(990,36,16,2,NULL),(991,109,226,2,NULL),(992,131,219,2,NULL),(993,65,16,2,NULL),(994,110,226,2,NULL),(995,132,219,2,NULL),(996,24,5,2,NULL),(997,79,226,2,NULL),(998,58,223,2,NULL),(999,25,12,2,NULL),(1000,88,226,2,NULL),(1001,14,223,2,NULL),(1002,58,9,2,NULL),(1003,89,226,2,NULL),(1004,15,223,2,NULL),(1005,58,10,2,NULL),(1006,70,226,2,NULL),(1007,26,223,2,NULL),(1008,58,11,2,NULL),(1009,117,226,2,NULL),(1010,27,223,2,NULL),(1011,58,12,2,NULL),(1012,119,226,2,NULL),(1013,52,223,2,NULL),(1014,58,13,2,NULL),(1015,131,226,2,NULL),(1016,105,223,2,NULL),(1017,58,15,2,NULL),(1018,132,226,2,NULL),(1019,106,223,2,NULL),(1020,58,16,2,NULL),(1021,58,227,2,NULL),(1022,58,17,2,NULL),(1023,99,223,2,NULL),(1024,14,227,2,NULL),(1025,100,223,2,NULL),(1026,58,135,2,NULL),(1027,107,223,2,NULL),(1028,15,227,2,NULL),(1029,58,163,2,NULL),(1030,108,223,2,NULL),(1031,26,227,2,NULL),(1032,58,167,2,NULL),(1033,109,223,2,NULL),(1034,27,227,2,NULL),(1035,58,170,2,NULL),(1036,110,223,2,NULL),(1037,52,227,2,NULL),(1038,58,172,2,NULL),(1039,105,227,2,NULL),(1040,79,223,2,NULL),(1041,58,173,2,NULL),(1042,106,227,2,NULL),(1043,88,223,2,NULL),(1044,58,175,2,NULL),(1045,89,223,2,NULL),(1046,99,227,2,NULL),(1047,58,177,2,NULL),(1048,100,227,2,NULL),(1049,70,223,2,NULL),(1050,58,179,2,NULL),(1051,117,223,2,NULL),(1052,107,227,2,NULL),(1053,58,181,2,NULL),(1054,119,223,2,NULL),(1055,108,227,2,NULL),(1056,58,182,2,NULL),(1057,131,223,2,NULL),(1058,109,227,2,NULL),(1059,58,184,2,NULL),(1060,132,223,2,NULL),(1061,110,227,2,NULL),(1062,58,186,2,NULL),(1063,79,227,2,NULL),(1064,14,135,2,NULL),(1065,58,188,2,NULL),(1066,15,135,2,NULL),(1067,88,227,2,NULL),(1068,58,190,2,NULL),(1069,26,135,2,NULL),(1070,89,227,2,NULL),(1071,58,191,2,NULL),(1072,27,135,2,NULL),(1073,70,227,2,NULL),(1074,58,193,2,NULL),(1075,52,135,2,NULL),(1076,117,227,2,NULL),(1077,58,197,2,NULL),(1078,105,135,2,NULL),(1079,119,227,2,NULL),(1080,58,199,2,NULL),(1081,106,135,2,NULL),(1082,131,227,2,NULL),(1083,58,201,2,NULL),(1084,99,135,2,NULL),(1085,132,227,2,NULL),(1086,58,202,2,NULL),(1087,100,135,2,NULL),(1088,58,228,2,NULL),(1089,58,205,2,NULL),(1090,107,135,2,NULL),(1091,14,228,2,NULL),(1092,58,206,2,NULL),(1093,108,135,2,NULL),(1094,15,228,2,NULL),(1095,58,208,2,NULL),(1096,109,135,2,NULL),(1097,26,228,2,NULL),(1098,58,210,2,NULL),(1099,110,135,2,NULL),(1100,27,228,2,NULL),(1101,58,212,2,NULL),(1102,79,135,2,NULL),(1103,52,228,2,NULL),(1104,58,214,2,NULL),(1105,88,135,2,NULL),(1106,105,228,2,NULL),(1107,58,216,2,NULL),(1108,89,135,2,NULL),(1109,106,228,2,NULL),(1110,58,218,2,NULL),(1111,70,135,2,NULL),(1112,99,228,2,NULL),(1113,58,222,2,NULL),(1114,117,135,2,NULL),(1115,100,228,2,NULL),(1116,58,139,2,NULL),(1117,119,135,2,NULL),(1118,107,228,2,NULL),(1119,58,144,2,NULL),(1120,131,135,2,NULL),(1121,108,228,2,NULL),(1122,58,152,2,NULL),(1123,132,135,2,NULL),(1124,109,228,2,NULL),(1125,58,155,2,NULL),(1126,14,163,2,NULL),(1127,110,228,2,NULL),(1128,58,159,2,NULL),(1129,15,163,2,NULL),(1130,79,228,2,NULL),(1131,58,166,2,NULL),(1132,26,163,2,NULL),(1133,88,228,2,NULL),(1134,58,169,2,NULL),(1135,27,163,2,NULL),(1136,89,228,2,NULL),(1137,58,224,2,NULL),(1138,52,163,2,NULL),(1139,70,228,2,NULL),(1140,58,238,2,NULL),(1141,105,163,2,NULL),(1142,117,228,2,NULL),(1143,58,237,2,NULL),(1144,106,163,2,NULL),(1145,119,228,2,NULL),(1146,58,239,2,NULL),(1147,99,163,2,NULL),(1148,131,228,2,NULL),(1149,58,240,2,NULL),(1150,100,163,2,NULL),(1151,132,228,2,NULL),(1152,58,241,2,NULL),(1153,107,163,2,NULL),(1154,117,9,2,NULL),(1155,13,12,2,NULL),(1156,108,163,2,NULL),(1157,119,9,2,NULL),(1158,49,16,2,NULL),(1159,109,163,2,NULL),(1160,117,10,2,NULL),(1161,14,9,2,NULL),(1162,110,163,2,NULL),(1163,119,10,2,NULL),(1164,15,9,2,NULL),(1165,79,163,2,NULL),(1166,117,11,2,NULL),(1167,26,9,2,NULL),(1168,119,11,2,NULL),(1169,88,163,2,NULL),(1170,27,9,2,NULL),(1171,89,163,2,NULL),(1172,117,12,2,NULL),(1173,119,12,2,NULL),(1174,52,9,2,NULL),(1175,70,163,2,NULL),(1176,117,13,2,NULL),(1177,105,9,2,NULL),(1178,117,163,2,NULL),(1179,119,13,2,NULL),(1180,106,9,2,NULL),(1181,119,163,2,NULL),(1182,117,15,2,NULL),(1183,99,9,2,NULL),(1184,131,163,2,NULL),(1185,119,15,2,NULL),(1186,100,9,2,NULL),(1187,132,163,2,NULL),(1188,117,16,2,NULL),(1189,107,9,2,NULL),(1190,14,167,2,NULL),(1191,119,16,2,NULL),(1192,108,9,2,NULL),(1193,15,167,2,NULL),(1194,117,17,2,NULL),(1195,109,9,2,NULL),(1196,26,167,2,NULL),(1197,119,17,2,NULL),(1198,110,9,2,NULL),(1199,27,167,2,NULL),(1200,79,9,2,NULL),(1201,52,167,2,NULL),(1202,117,167,2,NULL),(1203,88,9,2,NULL),(1204,105,167,2,NULL),(1205,119,167,2,NULL),(1206,89,9,2,NULL),(1207,106,167,2,NULL),(1208,117,170,2,NULL),(1209,70,9,2,NULL),(1210,99,167,2,NULL),(1211,119,170,2,NULL),(1212,131,9,2,NULL),(1213,100,167,2,NULL),(1214,117,172,2,NULL),(1215,132,9,2,NULL),(1216,107,167,2,NULL),(1217,119,172,2,NULL),(1218,30,16,2,NULL),(1219,108,167,2,NULL),(1220,117,173,2,NULL),(1221,69,12,2,NULL),(1222,109,167,2,NULL),(1223,119,173,2,NULL),(1224,14,10,2,NULL),(1225,110,167,2,NULL),(1226,117,175,2,NULL),(1227,15,10,2,NULL),(1228,79,167,2,NULL),(1229,119,175,2,NULL),(1230,26,10,2,NULL),(1231,88,167,2,NULL),(1232,117,177,2,NULL),(1233,27,10,2,NULL),(1234,89,167,2,NULL),(1235,119,177,2,NULL),(1236,52,10,2,NULL),(1237,70,167,2,NULL),(1238,117,179,2,NULL),(1239,105,10,2,NULL),(1240,119,179,2,NULL),(1241,131,167,2,NULL),(1242,106,10,2,NULL),(1243,132,167,2,NULL),(1244,117,181,2,NULL),(1245,99,10,2,NULL),(1246,14,170,2,NULL),(1247,119,181,2,NULL),(1248,100,10,2,NULL),(1249,15,170,2,NULL),(1250,117,182,2,NULL),(1251,107,10,2,NULL),(1252,26,170,2,NULL),(1253,119,182,2,NULL),(1254,108,10,2,NULL),(1255,27,170,2,NULL),(1256,117,184,2,NULL),(1257,109,10,2,NULL),(1258,52,170,2,NULL),(1259,119,184,2,NULL),(1260,110,10,2,NULL),(1261,105,170,2,NULL),(1262,117,186,2,NULL),(1263,79,10,2,NULL),(1264,106,170,2,NULL),(1265,119,186,2,NULL),(1266,88,10,2,NULL),(1267,99,170,2,NULL),(1268,117,188,2,NULL),(1269,89,10,2,NULL),(1270,100,170,2,NULL),(1271,119,188,2,NULL),(1272,70,10,2,NULL),(1273,107,170,2,NULL),(1274,117,190,2,NULL),(1275,131,10,2,NULL),(1276,108,170,2,NULL),(1277,119,190,2,NULL),(1278,132,10,2,NULL),(1279,109,170,2,NULL),(1280,117,191,2,NULL),(1281,45,16,2,NULL),(1282,110,170,2,NULL),(1283,119,191,2,NULL),(1284,14,11,2,NULL),(1285,79,170,2,NULL),(1286,117,193,2,NULL),(1287,15,11,2,NULL),(1288,88,170,2,NULL),(1289,119,193,2,NULL),(1290,26,11,2,NULL),(1291,89,170,2,NULL),(1292,117,197,2,NULL),(1293,27,11,2,NULL),(1294,70,170,2,NULL),(1295,119,197,2,NULL),(1296,52,11,2,NULL),(1297,117,199,2,NULL),(1298,131,170,2,NULL),(1299,105,11,2,NULL),(1300,132,170,2,NULL),(1301,119,199,2,NULL),(1302,106,11,2,NULL),(1303,14,172,2,NULL),(1304,117,201,2,NULL),(1305,99,11,2,NULL),(1306,15,172,2,NULL),(1307,119,201,2,NULL),(1308,100,11,2,NULL),(1309,26,172,2,NULL),(1310,117,202,2,NULL),(1311,107,11,2,NULL),(1312,27,172,2,NULL),(1313,119,202,2,NULL),(1314,108,11,2,NULL),(1315,52,172,2,NULL),(1316,117,205,2,NULL),(1317,109,11,2,NULL),(1318,105,172,2,NULL),(1319,119,205,2,NULL),(1320,110,11,2,NULL),(1321,106,172,2,NULL),(1322,117,206,2,NULL),(1323,79,11,2,NULL),(1324,99,172,2,NULL),(1325,119,206,2,NULL),(1326,88,11,2,NULL),(1327,100,172,2,NULL),(1328,117,208,2,NULL),(1329,89,11,2,NULL),(1330,107,172,2,NULL),(1331,119,208,2,NULL),(1332,70,11,2,NULL),(1333,108,172,2,NULL),(1334,117,210,2,NULL),(1335,131,11,2,NULL),(1336,109,172,2,NULL),(1337,119,210,2,NULL),(1338,132,11,2,NULL),(1339,110,172,2,NULL),(1340,117,212,2,NULL),(1341,23,16,2,NULL),(1342,79,172,2,NULL),(1343,119,212,2,NULL),(1344,34,5,2,NULL),(1345,88,172,2,NULL),(1346,117,214,2,NULL),(1347,47,5,2,NULL),(1348,89,172,2,NULL),(1349,119,214,2,NULL),(1350,48,5,2,NULL),(1351,70,172,2,NULL),(1352,117,216,2,NULL),(1353,14,12,2,NULL),(1354,119,216,2,NULL),(1355,131,172,2,NULL),(1356,15,12,2,NULL),(1357,132,172,2,NULL),(1358,117,218,2,NULL),(1359,26,12,2,NULL),(1360,14,173,2,NULL),(1361,119,218,2,NULL),(1362,27,12,2,NULL),(1363,15,173,2,NULL),(1364,117,222,2,NULL),(1365,52,12,2,NULL),(1366,26,173,2,NULL),(1367,119,222,2,NULL),(1368,105,12,2,NULL),(1369,27,173,2,NULL),(1370,117,139,2,NULL),(1371,106,12,2,NULL),(1372,52,173,2,NULL),(1373,119,139,2,NULL),(1374,99,12,2,NULL),(1375,105,173,2,NULL),(1376,117,144,2,NULL),(1377,100,12,2,NULL),(1378,106,173,2,NULL),(1379,119,144,2,NULL),(1380,107,12,2,NULL),(1381,99,173,2,NULL),(1382,117,152,2,NULL),(1383,108,12,2,NULL),(1384,100,173,2,NULL),(1385,119,152,2,NULL),(1386,109,12,2,NULL),(1387,107,173,2,NULL),(1388,117,155,2,NULL),(1389,110,12,2,NULL),(1390,108,173,2,NULL),(1391,119,155,2,NULL),(1392,79,12,2,NULL),(1393,109,173,2,NULL),(1394,117,159,2,NULL),(1395,88,12,2,NULL),(1396,110,173,2,NULL),(1397,119,159,2,NULL),(1398,89,12,2,NULL),(1399,79,173,2,NULL),(1400,117,166,2,NULL),(1401,70,12,2,NULL),(1402,88,173,2,NULL),(1403,119,166,2,NULL),(1404,131,12,2,NULL),(1405,89,173,2,NULL),(1406,117,169,2,NULL),(1407,132,12,2,NULL),(1408,70,173,2,NULL),(1409,119,169,2,NULL),(1410,55,12,2,NULL),(1411,117,224,2,NULL),(1412,131,173,2,NULL),(1413,26,13,2,NULL),(1414,132,173,2,NULL),(1415,119,224,2,NULL),(1416,27,13,2,NULL),(1417,14,175,2,NULL),(1418,117,238,2,NULL),(1419,52,13,2,NULL),(1420,15,175,2,NULL),(1421,119,238,2,NULL),(1422,14,15,2,NULL),(1423,26,175,2,NULL),(1424,117,237,2,NULL),(1425,15,15,2,NULL),(1426,27,175,2,NULL),(1427,119,237,2,NULL),(1428,14,16,2,NULL),(1429,52,175,2,NULL),(1430,117,239,2,NULL),(1431,15,16,2,NULL),(1432,105,175,2,NULL),(1433,119,239,2,NULL),(1434,14,17,2,NULL),(1435,106,175,2,NULL),(1436,117,240,2,NULL),(1437,15,17,2,NULL),(1438,99,175,2,NULL),(1439,119,240,2,NULL),(1440,100,175,2,NULL),(1441,117,241,2,NULL),(1442,107,175,2,NULL),(1443,119,241,2,NULL),(1444,108,175,2,NULL),(1445,14,177,2,NULL),(1446,131,13,2,NULL),(1447,109,175,2,NULL),(1448,15,177,2,NULL),(1449,110,175,2,NULL),(1450,132,13,2,NULL),(1451,14,179,2,NULL),(1452,79,175,2,NULL),(1453,131,15,2,NULL),(1454,15,179,2,NULL),(1455,88,175,2,NULL),(1456,132,15,2,NULL),(1457,14,181,2,NULL),(1458,89,175,2,NULL),(1459,131,16,2,NULL),(1460,15,181,2,NULL),(1461,70,175,2,NULL),(1462,132,16,2,NULL),(1463,14,182,2,NULL),(1464,131,17,2,NULL),(1465,131,175,2,NULL),(1466,15,182,2,NULL),(1467,132,175,2,NULL),(1468,132,17,2,NULL),(1469,14,184,2,NULL),(1470,26,177,2,NULL),(1471,15,184,2,NULL),(1472,27,177,2,NULL),(1473,14,186,2,NULL),(1474,52,177,2,NULL),(1475,131,177,2,NULL),(1476,15,186,2,NULL),(1477,105,177,2,NULL),(1478,132,177,2,NULL),(1479,14,188,2,NULL),(1480,106,177,2,NULL),(1481,131,179,2,NULL),(1482,15,188,2,NULL),(1483,99,177,2,NULL),(1484,132,179,2,NULL),(1485,100,177,2,NULL),(1486,14,190,2,NULL),(1487,131,181,2,NULL),(1488,107,177,2,NULL),(1489,15,190,2,NULL),(1490,132,181,2,NULL),(1491,108,177,2,NULL),(1492,14,191,2,NULL),(1493,131,182,2,NULL),(1494,109,177,2,NULL),(1495,15,191,2,NULL),(1496,132,182,2,NULL),(1497,110,177,2,NULL),(1498,14,193,2,NULL),(1499,131,184,2,NULL),(1500,79,177,2,NULL),(1501,132,184,2,NULL),(1502,15,193,2,NULL),(1503,88,177,2,NULL),(1504,131,186,2,NULL),(1505,14,197,2,NULL),(1506,89,177,2,NULL),(1507,132,186,2,NULL),(1508,15,197,2,NULL),(1509,70,177,2,NULL),(1510,131,188,2,NULL),(1511,14,199,2,NULL),(1512,26,179,2,NULL),(1513,132,188,2,NULL),(1514,15,199,2,NULL),(1515,27,179,2,NULL),(1516,131,190,2,NULL),(1517,14,201,2,NULL),(1518,52,179,2,NULL),(1519,15,201,2,NULL),(1520,132,190,2,NULL),(1521,105,179,2,NULL),(1522,14,202,2,NULL),(1523,131,191,2,NULL),(1524,106,179,2,NULL),(1525,132,191,2,NULL),(1526,15,202,2,NULL),(1527,99,179,2,NULL),(1528,14,205,2,NULL),(1529,131,193,2,NULL),(1530,100,179,2,NULL),(1531,132,193,2,NULL),(1532,15,205,2,NULL),(1533,107,179,2,NULL),(1534,131,197,2,NULL),(1535,14,206,2,NULL),(1536,108,179,2,NULL),(1537,132,197,2,NULL),(1538,15,206,2,NULL),(1539,109,179,2,NULL),(1540,131,199,2,NULL),(1541,14,208,2,NULL),(1542,110,179,2,NULL),(1543,15,208,2,NULL),(1544,132,199,2,NULL),(1545,79,179,2,NULL),(1546,131,201,2,NULL),(1547,14,210,2,NULL),(1548,88,179,2,NULL),(1549,15,210,2,NULL),(1550,132,201,2,NULL),(1551,89,179,2,NULL),(1552,14,212,2,NULL),(1553,131,202,2,NULL),(1554,70,179,2,NULL),(1555,15,212,2,NULL),(1556,132,202,2,NULL),(1557,26,181,2,NULL),(1558,14,214,2,NULL),(1559,131,205,2,NULL),(1560,27,181,2,NULL),(1561,15,214,2,NULL),(1562,132,205,2,NULL),(1563,52,181,2,NULL),(1564,131,206,2,NULL),(1565,14,216,2,NULL),(1566,105,181,2,NULL),(1567,132,206,2,NULL),(1568,15,216,2,NULL),(1569,106,181,2,NULL),(1570,14,218,2,NULL),(1571,131,208,2,NULL),(1572,99,181,2,NULL),(1573,132,208,2,NULL),(1574,15,218,2,NULL),(1575,100,181,2,NULL),(1576,131,210,2,NULL),(1577,14,222,2,NULL),(1578,107,181,2,NULL),(1579,15,222,2,NULL),(1580,132,210,2,NULL),(1581,108,181,2,NULL),(1582,131,212,2,NULL),(1583,14,139,2,NULL),(1584,109,181,2,NULL),(1585,15,139,2,NULL),(1586,132,212,2,NULL),(1587,110,181,2,NULL),(1588,131,214,2,NULL),(1589,14,144,2,NULL),(1590,79,181,2,NULL),(1591,132,214,2,NULL),(1592,15,144,2,NULL),(1593,88,181,2,NULL),(1594,14,152,2,NULL),(1595,131,216,2,NULL),(1596,89,181,2,NULL),(1597,132,216,2,NULL),(1598,15,152,2,NULL),(1599,70,181,2,NULL),(1600,105,13,2,NULL),(1601,131,218,2,NULL),(1602,26,182,2,NULL),(1603,132,218,2,NULL),(1604,106,13,2,NULL),(1605,27,182,2,NULL),(1606,14,155,2,NULL),(1607,131,222,2,NULL),(1608,52,182,2,NULL),(1609,132,222,2,NULL),(1610,15,155,2,NULL),(1611,105,182,2,NULL),(1612,99,13,2,NULL),(1613,131,139,2,NULL),(1614,106,182,2,NULL),(1615,100,13,2,NULL),(1616,132,139,2,NULL),(1617,99,182,2,NULL),(1618,14,159,2,NULL),(1619,131,144,2,NULL),(1620,100,182,2,NULL),(1621,15,159,2,NULL),(1622,132,144,2,NULL),(1623,107,182,2,NULL),(1624,131,152,2,NULL),(1625,107,13,2,NULL),(1626,108,182,2,NULL),(1627,132,152,2,NULL),(1628,108,13,2,NULL),(1629,109,182,2,NULL),(1630,131,155,2,NULL),(1631,109,13,2,NULL),(1632,110,182,2,NULL),(1633,132,155,2,NULL),(1634,110,13,2,NULL),(1635,79,182,2,NULL),(1636,79,13,2,NULL),(1637,131,159,2,NULL),(1638,88,182,2,NULL),(1639,132,159,2,NULL),(1640,88,13,2,NULL),(1641,89,182,2,NULL),(1642,89,13,2,NULL),(1643,131,166,2,NULL),(1644,70,182,2,NULL),(1645,132,166,2,NULL),(1646,70,13,2,NULL),(1647,26,184,2,NULL),(1648,131,169,2,NULL),(1649,14,166,2,NULL),(1650,27,184,2,NULL),(1651,132,169,2,NULL),(1652,15,166,2,NULL),(1653,52,184,2,NULL),(1654,14,169,2,NULL),(1655,131,224,2,NULL),(1656,105,184,2,NULL),(1657,132,224,2,NULL),(1658,15,169,2,NULL),(1659,106,184,2,NULL),(1660,14,224,2,NULL),(1661,131,238,2,NULL),(1662,99,184,2,NULL),(1663,132,238,2,NULL),(1664,15,224,2,NULL),(1665,100,184,2,NULL),(1666,14,238,2,NULL),(1667,131,237,2,NULL),(1668,107,184,2,NULL),(1669,15,238,2,NULL),(1670,108,184,2,NULL),(1671,132,237,2,NULL),(1672,14,237,2,NULL),(1673,109,184,2,NULL),(1674,131,239,2,NULL),(1675,15,237,2,NULL),(1676,110,184,2,NULL),(1677,132,239,2,NULL),(1678,14,239,2,NULL),(1679,79,184,2,NULL),(1680,131,240,2,NULL),(1681,15,239,2,NULL),(1682,88,184,2,NULL),(1683,132,240,2,NULL),(1684,14,240,2,NULL),(1685,89,184,2,NULL),(1686,131,241,2,NULL),(1687,15,240,2,NULL),(1688,70,184,2,NULL),(1689,132,241,2,NULL),(1690,14,241,2,NULL),(1691,120,225,2,NULL),(1692,26,186,2,NULL),(1693,15,241,2,NULL),(1694,27,186,2,NULL),(1695,26,237,2,NULL),(1696,33,14,2,NULL),(1697,52,186,2,NULL),(1698,62,12,2,NULL),(1699,27,237,2,NULL),(1700,105,186,2,NULL),(1701,52,237,2,NULL),(1702,106,186,2,NULL),(1703,26,15,2,NULL),(1704,105,237,2,NULL),(1705,99,186,2,NULL),(1706,27,15,2,NULL),(1707,106,237,2,NULL),(1708,100,186,2,NULL),(1709,52,15,2,NULL),(1710,99,237,2,NULL),(1711,107,186,2,NULL),(1712,26,16,2,NULL),(1713,100,237,2,NULL),(1714,108,186,2,NULL),(1715,27,16,2,NULL),(1716,107,237,2,NULL),(1717,109,186,2,NULL),(1718,52,16,2,NULL),(1719,108,237,2,NULL),(1720,110,186,2,NULL),(1721,26,17,2,NULL),(1722,109,237,2,NULL),(1723,79,186,2,NULL),(1724,27,17,2,NULL),(1725,110,237,2,NULL),(1726,88,186,2,NULL),(1727,52,17,2,NULL),(1728,79,237,2,NULL),(1729,89,186,2,NULL),(1730,88,237,2,NULL),(1731,70,186,2,NULL),(1732,89,237,2,NULL),(1733,26,188,2,NULL),(1734,70,237,2,NULL),(1735,27,188,2,NULL),(1736,26,239,2,NULL),(1737,52,188,2,NULL),(1738,26,190,2,NULL),(1739,27,239,2,NULL),(1740,105,188,2,NULL),(1741,27,190,2,NULL),(1742,52,239,2,NULL),(1743,106,188,2,NULL),(1744,52,190,2,NULL),(1745,105,239,2,NULL),(1746,99,188,2,NULL),(1747,26,191,2,NULL),(1748,106,239,2,NULL),(1749,100,188,2,NULL),(1750,27,191,2,NULL),(1751,99,239,2,NULL),(1752,107,188,2,NULL),(1753,52,191,2,NULL),(1754,100,239,2,NULL),(1755,26,193,2,NULL),(1756,107,239,2,NULL),(1757,27,193,2,NULL),(1758,108,239,2,NULL),(1759,52,193,2,NULL),(1760,108,188,2,NULL),(1761,109,239,2,NULL),(1762,109,188,2,NULL),(1763,26,197,2,NULL),(1764,110,239,2,NULL),(1765,110,188,2,NULL),(1766,27,197,2,NULL),(1767,79,239,2,NULL),(1768,79,188,2,NULL),(1769,52,197,2,NULL),(1770,88,239,2,NULL),(1771,88,188,2,NULL),(1772,26,199,2,NULL),(1773,89,239,2,NULL),(1774,89,188,2,NULL),(1775,27,199,2,NULL),(1776,70,239,2,NULL),(1777,70,188,2,NULL),(1778,52,199,2,NULL),(1779,26,240,2,NULL),(1780,26,201,2,NULL),(1781,105,190,2,NULL),(1782,27,240,2,NULL),(1783,106,190,2,NULL),(1784,27,201,2,NULL),(1785,52,240,2,NULL),(1786,99,190,2,NULL),(1787,52,201,2,NULL),(1788,105,240,2,NULL),(1789,100,190,2,NULL),(1790,26,202,2,NULL),(1791,106,240,2,NULL),(1792,107,190,2,NULL),(1793,27,202,2,NULL),(1794,99,240,2,NULL),(1795,108,190,2,NULL),(1796,52,202,2,NULL),(1797,100,240,2,NULL),(1798,109,190,2,NULL),(1799,26,205,2,NULL),(1800,107,240,2,NULL),(1801,110,190,2,NULL),(1802,27,205,2,NULL),(1803,108,240,2,NULL),(1804,79,190,2,NULL),(1805,52,205,2,NULL),(1806,109,240,2,NULL),(1807,88,190,2,NULL),(1808,26,206,2,NULL),(1809,110,240,2,NULL),(1810,89,190,2,NULL),(1811,27,206,2,NULL),(1812,79,240,2,NULL),(1813,70,190,2,NULL),(1814,52,206,2,NULL),(1815,88,240,2,NULL),(1816,26,208,2,NULL),(1817,105,191,2,NULL),(1818,89,240,2,NULL),(1819,106,191,2,NULL),(1820,27,208,2,NULL),(1821,70,240,2,NULL),(1822,99,191,2,NULL),(1823,52,208,2,NULL),(1824,26,241,2,NULL),(1825,100,191,2,NULL),(1826,26,210,2,NULL),(1827,27,241,2,NULL),(1828,107,191,2,NULL),(1829,27,210,2,NULL),(1830,52,241,2,NULL),(1831,108,191,2,NULL),(1832,52,210,2,NULL),(1833,105,241,2,NULL),(1834,109,191,2,NULL),(1835,26,212,2,NULL),(1836,106,241,2,NULL),(1837,110,191,2,NULL),(1838,27,212,2,NULL),(1839,99,241,2,NULL),(1840,79,191,2,NULL),(1841,52,212,2,NULL),(1842,100,241,2,NULL),(1843,88,191,2,NULL),(1844,26,214,2,NULL),(1845,107,241,2,NULL),(1846,89,191,2,NULL),(1847,27,214,2,NULL),(1848,108,241,2,NULL),(1849,70,191,2,NULL),(1850,52,214,2,NULL),(1851,109,241,2,NULL),(1852,26,216,2,NULL),(1853,105,193,2,NULL),(1854,110,241,2,NULL),(1855,106,193,2,NULL),(1856,27,216,2,NULL),(1857,79,241,2,NULL),(1858,99,193,2,NULL),(1859,52,216,2,NULL),(1860,88,241,2,NULL),(1861,100,193,2,NULL),(1862,26,218,2,NULL),(1863,89,241,2,NULL),(1864,107,193,2,NULL),(1865,27,218,2,NULL),(1866,70,241,2,NULL),(1867,108,193,2,NULL),(1868,52,218,2,NULL),(1869,109,193,2,NULL),(1870,26,222,2,NULL),(1871,110,193,2,NULL),(1872,27,222,2,NULL),(1873,79,193,2,NULL),(1874,52,222,2,NULL),(1875,88,193,2,NULL),(1876,26,139,2,NULL),(1877,89,193,2,NULL),(1878,27,139,2,NULL),(1879,70,193,2,NULL),(1880,52,139,2,NULL),(1881,105,197,2,NULL),(1882,26,144,2,NULL),(1883,106,197,2,NULL),(1884,27,144,2,NULL),(1885,99,197,2,NULL),(1886,52,144,2,NULL),(1887,100,197,2,NULL),(1888,26,152,2,NULL),(1889,107,197,2,NULL),(1890,27,152,2,NULL),(1891,108,197,2,NULL),(1892,52,152,2,NULL),(1893,109,197,2,NULL),(1894,26,155,2,NULL),(1895,110,197,2,NULL),(1896,27,155,2,NULL),(1897,79,197,2,NULL),(1898,52,155,2,NULL),(1899,88,197,2,NULL),(1900,26,159,2,NULL),(1901,89,197,2,NULL),(1902,27,159,2,NULL),(1903,70,197,2,NULL),(1904,52,159,2,NULL),(1905,105,199,2,NULL),(1906,26,166,2,NULL),(1907,106,199,2,NULL),(1908,27,166,2,NULL),(1909,99,199,2,NULL),(1910,52,166,2,NULL),(1911,100,199,2,NULL),(1912,26,169,2,NULL),(1913,107,199,2,NULL),(1914,27,169,2,NULL),(1915,108,199,2,NULL),(1916,52,169,2,NULL),(1917,109,199,2,NULL),(1918,26,224,2,NULL),(1919,110,199,2,NULL),(1920,27,224,2,NULL),(1921,79,199,2,NULL),(1922,52,224,2,NULL),(1923,88,199,2,NULL),(1924,26,238,2,NULL),(1925,89,199,2,NULL),(1926,27,238,2,NULL),(1927,70,199,2,NULL),(1928,52,238,2,NULL),(1929,105,201,2,NULL),(1930,105,15,2,NULL),(1931,106,201,2,NULL),(1932,106,15,2,NULL),(1933,99,201,2,NULL),(1934,99,15,2,NULL),(1935,100,201,2,NULL),(1936,100,15,2,NULL),(1937,107,201,2,NULL),(1938,107,15,2,NULL),(1939,108,201,2,NULL),(1940,108,15,2,NULL),(1941,109,201,2,NULL),(1942,109,15,2,NULL),(1943,110,201,2,NULL),(1944,110,15,2,NULL),(1945,79,201,2,NULL),(1946,79,15,2,NULL),(1947,88,201,2,NULL),(1948,88,15,2,NULL),(1949,89,201,2,NULL),(1950,89,15,2,NULL),(1951,70,201,2,NULL),(1952,70,15,2,NULL),(1953,105,202,2,NULL),(1954,105,16,2,NULL),(1955,106,202,2,NULL),(1956,106,16,2,NULL),(1957,99,202,2,NULL),(1958,99,16,2,NULL),(1959,100,202,2,NULL),(1960,100,16,2,NULL),(1961,107,202,2,NULL),(1962,107,16,2,NULL),(1963,108,202,2,NULL),(1964,108,16,2,NULL),(1965,109,202,2,NULL),(1966,109,16,2,NULL),(1967,110,202,2,NULL),(1968,110,16,2,NULL),(1969,79,202,2,NULL),(1970,79,16,2,NULL),(1971,88,202,2,NULL),(1972,88,16,2,NULL),(1973,89,202,2,NULL),(1974,89,16,2,NULL),(1975,70,202,2,NULL),(1976,70,16,2,NULL),(1977,105,205,2,NULL),(1978,28,16,2,NULL),(1979,106,205,2,NULL),(1980,57,16,2,NULL),(1981,99,205,2,NULL),(1982,66,16,2,NULL),(1983,100,205,2,NULL),(1984,105,17,2,NULL),(1985,107,205,2,NULL),(1986,106,17,2,NULL),(1987,108,205,2,NULL),(1988,99,17,2,NULL),(1989,109,205,2,NULL),(1990,100,17,2,NULL),(1991,110,205,2,NULL),(1992,107,17,2,NULL),(1993,79,205,2,NULL),(1994,108,17,2,NULL),(1995,88,205,2,NULL),(1996,109,17,2,NULL),(1997,89,205,2,NULL),(1998,110,17,2,NULL),(1999,70,205,2,NULL),(2000,79,17,2,NULL),(2001,105,206,2,NULL),(2002,88,17,2,NULL),(2003,106,206,2,NULL),(2004,89,17,2,NULL),(2005,99,206,2,NULL),(2006,70,17,2,NULL),(2007,100,206,2,NULL),(2008,107,206,2,NULL),(2009,108,206,2,NULL),(2010,109,206,2,NULL),(2011,110,206,2,NULL),(2012,79,206,2,NULL),(2013,88,206,2,NULL),(2014,89,206,2,NULL),(2015,70,206,2,NULL),(2016,105,208,2,NULL),(2017,106,208,2,NULL),(2018,99,208,2,NULL),(2019,100,208,2,NULL),(2020,107,208,2,NULL),(2021,108,208,2,NULL),(2022,109,208,2,NULL),(2023,110,208,2,NULL),(2024,79,208,2,NULL),(2025,88,208,2,NULL),(2026,89,208,2,NULL),(2027,70,208,2,NULL),(2028,105,210,2,NULL),(2029,106,210,2,NULL),(2030,99,210,2,NULL),(2031,100,210,2,NULL),(2032,107,210,2,NULL),(2033,108,210,2,NULL),(2034,109,210,2,NULL),(2035,110,210,2,NULL),(2036,79,210,2,NULL),(2037,88,210,2,NULL),(2038,89,210,2,NULL),(2039,70,210,2,NULL),(2040,105,212,2,NULL),(2041,106,212,2,NULL),(2042,99,212,2,NULL),(2043,100,212,2,NULL),(2044,107,212,2,NULL),(2045,108,212,2,NULL),(2046,109,212,2,NULL),(2047,110,212,2,NULL),(2048,79,212,2,NULL),(2049,88,212,2,NULL),(2050,89,212,2,NULL),(2051,70,212,2,NULL),(2052,105,214,2,NULL),(2053,106,214,2,NULL),(2054,99,214,2,NULL),(2055,100,214,2,NULL),(2056,107,214,2,NULL),(2057,108,214,2,NULL),(2058,109,214,2,NULL),(2059,110,214,2,NULL),(2060,79,214,2,NULL),(2061,88,214,2,NULL),(2062,89,214,2,NULL),(2063,70,214,2,NULL),(2064,105,216,2,NULL),(2065,106,216,2,NULL),(2066,99,216,2,NULL),(2067,100,216,2,NULL),(2068,107,216,2,NULL),(2069,108,216,2,NULL),(2070,109,216,2,NULL),(2071,110,216,2,NULL),(2072,79,216,2,NULL),(2073,88,216,2,NULL),(2074,89,216,2,NULL),(2075,70,216,2,NULL),(2076,105,218,2,NULL),(2077,106,218,2,NULL),(2078,99,218,2,NULL),(2079,100,218,2,NULL),(2080,107,218,2,NULL),(2081,108,218,2,NULL),(2082,109,218,2,NULL),(2083,110,218,2,NULL),(2084,79,218,2,NULL),(2085,88,218,2,NULL),(2086,89,218,2,NULL),(2087,70,218,2,NULL),(2088,105,222,2,NULL),(2089,106,222,2,NULL),(2090,99,222,2,NULL),(2091,100,222,2,NULL),(2092,107,222,2,NULL),(2093,108,222,2,NULL),(2094,109,222,2,NULL),(2095,110,222,2,NULL),(2096,79,222,2,NULL),(2097,88,222,2,NULL),(2098,89,222,2,NULL),(2099,70,222,2,NULL),(2100,105,139,2,NULL),(2101,106,139,2,NULL),(2102,99,139,2,NULL),(2103,100,139,2,NULL),(2104,107,139,2,NULL),(2105,108,139,2,NULL),(2106,109,139,2,NULL),(2107,110,139,2,NULL),(2108,79,139,2,NULL),(2109,88,139,2,NULL),(2110,89,139,2,NULL),(2111,70,139,2,NULL),(2112,73,166,2,NULL),(2113,111,166,2,NULL),(2114,105,144,2,NULL),(2115,106,144,2,NULL),(2116,99,144,2,NULL),(2117,100,144,2,NULL),(2118,107,144,2,NULL),(2119,108,144,2,NULL),(2120,109,144,2,NULL),(2121,110,144,2,NULL),(2122,79,144,2,NULL),(2123,88,144,2,NULL),(2124,89,144,2,NULL),(2125,70,144,2,NULL),(2126,72,139,2,NULL),(2127,74,166,2,NULL),(2128,84,166,2,NULL),(2129,105,155,2,NULL),(2130,106,155,2,NULL),(2131,99,152,2,NULL),(2132,100,152,2,NULL),(2133,105,159,2,NULL),(2134,106,159,2,NULL),(2135,107,152,2,NULL),(2136,108,152,2,NULL),(2137,109,152,2,NULL),(2138,110,152,2,NULL),(2139,79,152,2,NULL),(2140,88,152,2,NULL),(2141,89,152,2,NULL),(2142,70,152,2,NULL),(2143,105,166,2,NULL),(2144,106,166,2,NULL),(2145,105,169,2,NULL),(2146,106,169,2,NULL),(2147,105,224,2,NULL),(2148,106,224,2,NULL),(2149,105,238,2,NULL),(2150,106,238,2,NULL),(2151,116,152,2,NULL),(2152,99,159,2,NULL),(2153,100,159,2,NULL),(2154,107,155,2,NULL),(2155,108,155,2,NULL),(2156,109,155,2,NULL),(2157,110,155,2,NULL),(2158,79,155,2,NULL),(2159,88,155,2,NULL),(2160,89,155,2,NULL),(2161,70,155,2,NULL),(2162,99,166,2,NULL),(2163,100,166,2,NULL),(2164,99,169,2,NULL),(2165,100,169,2,NULL),(2166,99,224,2,NULL),(2167,100,224,2,NULL),(2168,99,238,2,NULL),(2169,100,238,2,NULL),(2170,93,166,2,NULL),(2171,79,159,2,NULL),(2172,88,159,2,NULL),(2173,89,159,2,NULL),(2174,70,159,2,NULL),(2175,107,166,2,NULL),(2176,108,166,2,NULL),(2177,109,166,2,NULL),(2178,110,166,2,NULL),(2179,107,169,2,NULL),(2180,108,169,2,NULL),(2181,109,169,2,NULL),(2182,110,169,2,NULL),(2183,107,224,2,NULL),(2184,108,224,2,NULL),(2185,109,224,2,NULL),(2186,110,224,2,NULL),(2187,107,238,2,NULL),(2188,108,238,2,NULL),(2189,109,238,2,NULL),(2190,110,238,2,NULL),(2191,90,152,2,NULL),(2192,104,162,2,NULL),(2193,79,166,2,NULL),(2194,88,166,2,NULL),(2195,89,166,2,NULL),(2196,79,169,2,NULL),(2197,88,169,2,NULL),(2198,89,169,2,NULL),(2199,79,224,2,NULL),(2200,88,224,2,NULL),(2201,89,224,2,NULL),(2202,79,238,2,NULL),(2203,88,238,2,NULL),(2204,89,238,2,NULL),(2205,101,166,2,NULL),(2206,70,166,2,NULL),(2207,70,169,2,NULL),(2208,70,224,2,NULL),(2209,70,238,2,NULL),(2210,98,166,2,NULL),(2211,102,166,2,NULL),(2212,103,166,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:22
