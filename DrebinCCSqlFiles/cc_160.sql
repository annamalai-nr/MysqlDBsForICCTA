-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_160
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
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(19,'<INTENT>'),(14,'Speedup.intent.action.refreshservice'),(16,'Speedup.intent.action.temp'),(7,'Speedup.intent.action.updatewidget'),(5,'android.appwidget.action.APPWIDGET_CONFIGURE'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(15,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(24,'android.intent.action.CHOOSER'),(21,'android.intent.action.DIAL'),(9,'android.intent.action.EDIT'),(8,'android.intent.action.INSERT'),(1,'android.intent.action.MAIN'),(18,'android.intent.action.PACKAGE_ADDED'),(12,'android.intent.action.SCREEN_OFF'),(13,'android.intent.action.SCREEN_ON'),(20,'android.intent.action.SEARCH'),(23,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(10,'android.intent.action.VIEW'),(22,'com.android.music.musicservicecommand'),(11,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.dy.game.lianliankan',1),(2,'com.tutusw.phonespeedup',14),(3,'com.ps.opensudoku',1),(4,'com.gp.tiltmazes',10),(5,'com.alan.asianmeinv7',1),(6,'com.gp.netscramblefull',10),(7,'com.evilsunflower.reader.evilKongzi3',1);
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
INSERT INTO `CategoryStrings` VALUES (6,'<INTENT>'),(3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(7,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'android.intent.category.PREFERENCE');
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.dy.game.lianliankan.LianLianKanGame'),(2,1,'com.google.update.Dialog'),(3,1,'com.google.update.UpdateService'),(4,1,'com.google.update.Receiver'),(5,2,'com.tutusw.phonespeedup.IntroActivity'),(6,2,'com.tutusw.phonespeedup.InfoActivity'),(7,2,'com.google.ssearch.Dialog'),(8,2,'com.tutusw.phonespeedup.Home'),(9,2,'com.tutusw.phonespeedup.PerflockActivity'),(10,2,'com.tutusw.phonespeedup.ProfilesActivity'),(11,2,'com.tutusw.phonespeedup.ProfileEditActivity'),(12,2,'com.tutusw.phonespeedup.AdvancedActivity'),(13,2,'com.tutusw.phonespeedup.AboutActivity'),(14,2,'com.tutusw.phonespeedup.StresstestActivity'),(15,2,'com.tutusw.phonespeedup.Setcpu'),(16,2,'com.tutusw.phonespeedup.WidgetConfigActivity'),(17,2,'com.google.ssearch.SearchService'),(18,2,'com.tutusw.phonespeedup.StartupService'),(19,2,'com.tutusw.phonespeedup.ProfilesService'),(20,2,'com.tutusw.phonespeedup.WidgetService'),(21,2,'com.google.ssearch.Receiver'),(22,2,'com.tutusw.phonespeedup.StartupReceiver'),(23,2,'com.tutusw.phonespeedup.Widget'),(24,3,'com.ps.opensudoku.gui.FolderListActivity'),(25,3,'com.ps.opensudoku.gui.SudokuListActivity'),(26,3,'com.ps.opensudoku.gui.SudokuEditActivity'),(27,3,'com.ps.opensudoku.gui.FileImportActivity'),(28,3,'com.ps.opensudoku.gui.ImportSudokuActivity'),(29,3,'com.ps.opensudoku.gui.SudokuImportActivity'),(30,3,'com.ps.opensudoku.gui.SudokuExportActivity'),(31,3,'com.ps.opensudoku.gui.SudokuPlayActivity'),(32,3,'com.ps.opensudoku.gui.GameSettingsActivity'),(33,3,'com.ps.opensudoku.gui.FileListActivity'),(34,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(35,3,'com.google.update.Dialog'),(36,3,'com.google.update.UpdateService'),(37,3,'com.google.update.Receiver'),(38,4,'com.gp.tiltmazes.TiltMazesActivity'),(39,4,'com.gp.tiltmazes.SelectMazeActivity'),(40,4,'com.google.update.Dialog'),(41,4,'cn.domob.android.ads.DomobActivity'),(42,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(43,4,'com.google.update.UpdateService'),(44,4,'com.google.update.Receiver'),(45,1,'com.google.update.Dialog$2'),(46,1,'com.google.update.Dialog$1'),(47,5,'com.alan.asianmeinv7.PaperCollection'),(48,5,'com.alan.asianmeinv7.PictureGrid'),(49,5,'com.google.ads.AdActivity'),(50,5,'com.vpon.adon.android.WebInApp'),(51,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(52,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(53,1,'com.google.update.UpdateService$AA'),(54,5,'com.waps.OffersWebView'),(55,5,'com.google.update.Dialog'),(56,5,'com.google.update.UpdateService'),(57,5,'com.google.update.Receiver'),(58,2,'com.tutusw.phonespeedup.WidgetService$1'),(59,2,'com.tutusw.phonespeedup.ProfilesService$1'),(60,2,'android.appwidget.AppWidgetProvider'),(61,6,'com.gp.netscramblefull.NetScramble'),(62,6,'com.gp.netscramblefull.ScoreList'),(63,6,'com.gp.netscramblefull.Help'),(64,6,'com.google.update.Dialog'),(65,2,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(66,6,'cn.domob.android.ads.DomobActivity'),(67,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(68,6,'com.waps.OffersWebView'),(69,2,'com.google.ssearch.Dialog$1'),(70,6,'com.google.update.UpdateService'),(71,6,'com.google.update.Receiver'),(72,2,'com.google.ssearch.SearchService$MyThread'),(73,2,'com.tutusw.phonespeedup.Home$clicker'),(74,5,'com.google.update.Dialog$1'),(75,5,'com.google.update.UpdateService$MyThread'),(76,4,'com.google.update.UpdateService$AA'),(77,5,'com.google.update.Dialog$2'),(78,4,'cn.domob.android.ads.i$6'),(79,5,'com.waps.AppConnect'),(80,4,'cn.domob.android.ads.DomobActionReceiver'),(81,5,'com.ju6.a'),(82,4,'cn.domob.android.ads.i'),(83,4,'cn.domob.android.ads.DomobAdEngine$2'),(84,5,'com.waps.k'),(85,5,'com.waps.m'),(86,4,'com.google.update.Dialog$2'),(87,4,'com.google.update.Dialog$1'),(88,4,'cn.domob.android.ads.DomobAdManager'),(89,3,'com.ps.opensudoku.gui.FolderListActivity$1'),(90,3,'com.google.update.UpdateService$MyThread'),(91,3,'com.google.update.Dialog$2'),(92,3,'com.google.update.Dialog$1'),(93,3,'com.ju6.a'),(94,3,'com.ps.opensudoku.gui.FileListActivity$3'),(95,7,'com.evilsunflower.reader.evilKongzi3.BugReportActivity'),(96,7,'com.evilsunflower.reader.FBReader'),(97,7,'com.evilsunflower.reader.CancelActivity'),(98,7,'com.evilsunflower.reader.image.ImageViewActivity'),(99,7,'com.evilsunflower.reader.TOCActivity'),(100,7,'com.evilsunflower.reader.BookmarksActivity'),(101,7,'com.evilsunflower.reader.control.ShowTips'),(102,7,'com.evilsunflower.reader.BookmarkEditActivity'),(103,7,'com.evilsunflower.reader.Starter'),(104,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(105,7,'com.vpon.adon.android.WebInApp'),(106,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(107,7,'com.millennialmedia.android.VideoPlayer'),(108,7,'net.youmi.android.AdActivity'),(109,7,'com.google.ads.AdActivity'),(110,7,'com.guohead.sdk.GuoheAdActivity'),(111,7,'cn.domob.android.ads.DomobActivity'),(112,7,'com.evilsunflower.reader.control.UpdateService'),(113,7,'com.evilsunflower.reader.control.Receiver'),(114,6,'cn.domob.android.ads.i'),(115,6,'com.waps.o'),(116,6,'com.google.update.Dialog$2'),(117,6,'com.waps.ac'),(118,6,'cn.domob.android.ads.DomobAdManager'),(119,6,'com.waps.z'),(120,6,'cn.domob.android.ads.DomobAdEngine$2'),(121,6,'com.google.update.UpdateService$AA'),(122,6,'cn.domob.android.ads.DomobActionReceiver'),(123,6,'com.google.update.Dialog$1'),(124,6,'com.waps.q'),(125,6,'cn.domob.android.ads.i$6'),(126,6,'com.waps.d'),(127,6,'com.waps.aa'),(128,7,'com.ju6.c'),(129,7,'com.ju6.mms.pdu.PduPersister'),(130,7,'com.evilsunflower.reader.control.ShowTips$1'),(131,7,'net.youmi.android.be'),(132,7,'com.ju6.mms.util.SqliteWrapper'),(133,7,'com.baidu.as'),(134,7,'com.baidu.al'),(135,7,'com.madhouse.android.ads._'),(136,7,'net.youmi.android.eo'),(137,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(138,7,'com.adwo.adsdk.M'),(139,7,'com.millennialmedia.android.MillennialMediaView'),(140,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(141,7,'net.youmi.android.t'),(142,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(143,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(144,7,'com.evilsunflower.reader.ui.ZLAndroidActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,1,'gfan_cpid'),(2,3,'ST_START_DELAY'),(3,2,'MSG'),(4,3,'ST_MY_PID'),(5,1,'gfan_statistics_appkey'),(6,2,'TYPEdsada'),(7,7,'TYPEdsada'),(8,11,'row_id'),(9,16,'appWidgetId'),(10,7,'MSG'),(11,50,'shouldMakeOverlayTransparent'),(12,46,'CLIENT_PACKAGE'),(13,49,'Adwo_PID'),(14,46,'APP_ID'),(15,46,'WAPS_ID'),(16,50,'transitionTime'),(17,52,'TYPEdsada'),(18,47,'com.google.ads.AdOpener'),(19,50,'shouldShowBottomBar'),(20,52,'MSG'),(21,51,'CLIENT_PACKAGE'),(22,53,'ST_START_DELAY'),(23,46,'DEVICE_ID'),(24,48,'adWidth'),(25,50,'shouldShowTitlebar'),(26,51,'URL'),(27,50,'shouldResizeOverlay'),(28,51,'Offers_URL'),(29,43,'ST_START_DELAY'),(30,51,'URL_PARAMS'),(31,50,'url'),(32,50,'overlayTitle'),(33,51,'USER_ID'),(34,47,'action'),(35,50,'shouldEnableBottomBar'),(36,50,'overlayTransition'),(37,38,'ball.y'),(38,41,'appName'),(39,42,'shouldShowBottomBar'),(40,42,'url'),(41,42,'overlayTransition'),(42,42,'shouldEnableBottomBar'),(43,43,'DOMOB_PID'),(44,42,'DOMOB_PID'),(45,43,'DOMOB_ALLOW_LOCATION'),(46,42,'DOMOB_ALLOW_LOCATION'),(47,47,'params'),(48,49,'isTestMode'),(49,46,'WAPS_PID'),(50,48,'url'),(51,51,'isFinshClose'),(52,53,'ST_MY_PID'),(53,38,'ball.x'),(54,40,'TYPEdsada'),(55,41,'actType'),(56,38,'stepcount'),(57,43,'DOMOB_TEST_MODE'),(58,42,'DOMOB_TEST_MODE'),(59,42,'shouldResizeOverlay'),(60,36,'ST_START_DELAY'),(61,25,'mEditNotePuzzleID'),(62,31,'cmdStack.(.*)'),(63,26,'cmdStack.(.*)'),(64,31,'value'),(65,42,'shouldShowTitlebar'),(66,26,'value'),(67,40,'MSG'),(68,41,'appId'),(69,31,'rows'),(70,26,'rows'),(71,29,'FOLDER_NAME'),(72,42,'shouldMakeOverlayTransparent'),(73,31,'accumTime'),(74,42,'overlayTitle'),(75,34,'url'),(76,38,'map.id'),(77,31,'tickInterval'),(78,42,'transitionTime'),(79,31,'note'),(80,43,'ST_MY_PID'),(81,26,'note'),(82,38,'map.goals'),(83,34,'overlayTransition'),(84,31,'cellColumn'),(85,26,'cellColumn'),(86,25,'mDeletePuzzleID'),(87,31,'cellRow'),(88,26,'cellRow'),(89,35,'TYPEdsada'),(90,31,'cols'),(91,26,'cols'),(92,31,'oldValue'),(93,26,'oldValue'),(94,34,'overlayTitle'),(95,31,'cells'),(96,26,'cells'),(97,34,'shouldResizeOverlay'),(98,31,'id'),(99,26,'id'),(100,35,'MSG'),(101,29,'APPEND_TO_FOLDER'),(102,34,'shouldMakeOverlayTransparent'),(103,31,'notes'),(104,26,'notes'),(105,31,'oldNote'),(106,26,'oldNote'),(107,31,'lastPlayed'),(108,26,'lastPlayed'),(109,31,'created'),(110,26,'created'),(111,34,'shouldEnableBottomBar'),(112,25,'mResetPuzzleID'),(113,34,'shouldShowTitlebar'),(114,31,'isRunning'),(115,31,'state'),(116,26,'state'),(117,34,'shouldShowBottomBar'),(118,36,'ST_MY_PID'),(119,31,'cmdStack.size'),(120,26,'cmdStack.size'),(121,34,'transitionTime'),(122,31,'time'),(123,26,'time'),(124,24,'mRenameFolderID'),(125,31,'commandClass'),(126,26,'commandClass'),(127,33,'mDirectory'),(128,31,'tickCount'),(129,29,'GAMES'),(130,24,'mDeleteFolderID'),(131,33,'FOLDER_NAME'),(132,66,'DOMOB_PID'),(133,64,'DOMOB_PID'),(134,59,'DOMOB_PID'),(135,65,'UrlPath'),(136,65,'Notify_Url_Params'),(137,59,'cell (.*),(.*)'),(138,65,'DEVICE_ID'),(139,59,'DEVICE_ID'),(140,59,'gridHeight'),(141,59,'rootX'),(142,59,'focusY'),(143,65,'isFinshClose'),(144,65,'WAPS_ID'),(145,59,'WAPS_ID'),(146,65,'CLIENT_PACKAGE'),(147,59,'CLIENT_PACKAGE'),(148,59,'clickCount'),(149,66,'DOMOB_TEST_MODE'),(150,64,'DOMOB_TEST_MODE'),(151,59,'DOMOB_TEST_MODE'),(152,59,'tickCount'),(153,59,'solverUsed'),(154,59,'isRunning'),(155,63,'actType'),(156,64,'url'),(157,63,'appId'),(158,59,'rootY'),(159,65,'Notify_Id'),(160,64,'shouldEnableBottomBar'),(161,59,'tickInterval'),(162,65,'Offers_URL'),(163,65,'USER_ID'),(164,59,'focusX'),(165,65,'URL'),(166,65,'ACTIVITY_FLAG'),(167,64,'transitionTime'),(168,62,'TYPEdsada'),(169,59,'solvedState'),(170,62,'MSG'),(171,63,'appName'),(172,65,'APP_ID'),(173,59,'APP_ID'),(174,64,'overlayTransition'),(175,59,'gameState'),(176,59,'isSolved'),(177,66,'ST_MY_PID'),(178,64,'shouldMakeOverlayTransparent'),(179,65,'SHWO_FLAG'),(180,59,'gridWidth'),(181,65,'offers_webview_tag'),(182,66,'DOMOB_ALLOW_LOCATION'),(183,64,'DOMOB_ALLOW_LOCATION'),(184,59,'DOMOB_ALLOW_LOCATION'),(185,64,'shouldResizeOverlay'),(186,64,'overlayTitle'),(187,61,'(.*)B(.*).expanded'),(188,61,'(.*)T(.*).expanded'),(189,61,'(.*)H(.*).expanded'),(190,61,'expanded'),(191,59,'gameSkill'),(192,59,'accumTime'),(193,64,'shouldShowTitlebar'),(194,65,'URL_PARAMS'),(195,66,'ST_START_DELAY'),(196,64,'shouldShowBottomBar'),(197,65,'WAPS_PID'),(198,59,'WAPS_PID'),(199,81,'shouldShowBottomBar'),(200,71,'Wooboo_PID'),(201,83,'172C94EDC717477aBF600D7898A64A8E'),(202,81,'overlayTitle'),(203,82,'adName'),(204,81,'canAccelerate'),(205,82,'videoPosition'),(206,80,'adWidth'),(207,81,'shouldMakeOverlayTransparent'),(208,87,'SAFE_START'),(209,81,'shouldResizeOverlay'),(210,71,'Adwo_PID'),(211,71,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(212,79,'transitionTime'),(213,76,'MM'),(214,71,'query'),(215,82,'videoCompleted'),(216,82,'ADUrl'),(217,75,'ADUrl'),(218,71,'ADUrl'),(219,83,'ADUrl'),(220,79,'overlayTitle'),(221,81,'transitionTime'),(222,81,'shouldEnableBottomBar'),(223,79,'shouldEnableBottomBar'),(224,81,'cachedAdView'),(225,79,'shouldShowTitlebar'),(226,82,'videoAd'),(227,79,'shouldResizeOverlay'),(228,71,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(229,79,'shouldMakeOverlayTransparent'),(230,81,'shouldShowTitlebar'),(231,87,'SAFE_PID'),(232,82,'cached'),(233,80,'url'),(234,83,'D780FBF4215247bcBB1AC0AD33C474FE'),(235,79,'shouldShowBottomBar'),(236,79,'overlayTransition'),(237,83,'EB80F3291A8E469c962CA133BDC549D7'),(238,85,'link'),(239,75,'query'),(240,82,'isCachedAd'),(241,71,'Market_ID'),(242,83,'D50EF1926ADD471892E72BCE6D7E032C'),(243,81,'overlayTransition'),(244,79,'url'),(245,71,'GH_APPKEY'),(246,82,'logSet'),(247,82,'shouldShowBottomBar');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'r',0,6,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,47,'a',0,NULL,NULL),(46,48,'a',1,NULL,NULL),(47,49,'a',0,NULL,NULL),(48,50,'a',0,NULL,NULL),(49,51,'a',0,NULL,NULL),(50,52,'a',0,NULL,NULL),(51,54,'a',0,NULL,NULL),(52,55,'a',0,NULL,NULL),(53,56,'s',0,NULL,NULL),(54,57,'r',1,NULL,NULL),(55,58,'r',1,NULL,NULL),(56,59,'r',1,NULL,NULL),(57,60,'r',1,NULL,NULL),(58,22,'r',1,NULL,NULL),(59,61,'a',1,NULL,NULL),(60,62,'a',1,NULL,NULL),(61,63,'a',1,NULL,NULL),(62,64,'a',0,NULL,NULL),(63,66,'a',0,NULL,NULL),(64,67,'a',0,NULL,NULL),(65,68,'a',0,NULL,NULL),(66,70,'s',0,NULL,NULL),(67,71,'r',1,NULL,NULL),(68,80,'r',1,NULL,NULL),(69,85,'r',1,NULL,NULL),(70,95,'a',0,NULL,NULL),(71,96,'a',1,NULL,NULL),(72,97,'a',0,NULL,NULL),(73,98,'a',0,NULL,NULL),(74,99,'a',0,NULL,NULL),(75,100,'a',1,NULL,NULL),(76,101,'a',0,NULL,NULL),(77,102,'a',0,NULL,NULL),(78,103,'a',0,NULL,NULL),(79,104,'a',0,NULL,NULL),(80,105,'a',0,NULL,NULL),(81,106,'a',0,NULL,NULL),(82,107,'a',0,NULL,NULL),(83,108,'a',0,NULL,NULL),(84,109,'a',0,NULL,NULL),(85,110,'a',0,NULL,NULL),(86,111,'a',0,NULL,NULL),(87,112,'s',0,NULL,NULL),(88,113,'r',1,NULL,NULL),(89,122,'r',1,NULL,NULL),(90,124,'r',1,NULL,NULL),(91,136,'r',1,NULL,NULL),(92,137,'r',1,NULL,NULL),(93,138,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,3),(4,4,3),(5,5,3),(6,6,4),(7,7,13),(8,8,8),(9,9,17),(10,10,18),(11,11,10),(12,12,7),(13,13,10),(14,14,21),(15,15,23),(16,16,17),(17,17,5),(18,18,8),(19,19,5),(20,20,16),(21,21,17),(22,22,6),(23,23,8),(24,24,10),(25,25,8),(26,26,22),(27,27,8),(28,28,18),(29,29,10),(30,30,8),(31,31,10),(32,32,10),(33,33,52),(34,34,53),(35,35,47),(36,36,43),(37,37,52),(38,38,53),(39,39,43),(40,39,42),(41,40,46),(42,41,53),(43,42,53),(44,43,42),(45,43,43),(46,44,54),(47,45,43),(48,45,42),(49,46,51),(50,47,43),(51,48,38),(52,49,44),(53,50,40),(54,51,40),(55,52,28),(56,53,43),(57,53,42),(58,54,43),(59,55,31),(60,55,30),(61,55,26),(62,55,24),(63,56,24),(64,57,24),(65,58,36),(66,59,24),(67,60,36),(68,61,31),(69,62,24),(70,63,25),(71,64,35),(72,64,32),(73,64,31),(74,65,31),(75,65,35),(76,65,32),(77,66,25),(78,67,36),(79,68,32),(80,68,31),(81,68,33),(82,69,31),(83,70,25),(84,71,36),(85,72,27),(86,73,33),(87,74,25),(88,75,25),(89,76,37),(90,77,66),(91,78,66),(92,78,64),(93,79,65),(94,80,59),(95,81,59),(96,82,65),(97,82,59),(98,83,62),(99,83,59),(100,84,65),(101,85,67),(102,86,65),(103,87,59),(104,87,66),(105,87,64),(106,88,59),(107,88,65),(108,89,59),(109,89,64),(110,89,66),(111,90,66),(112,91,59),(113,92,59),(114,92,62),(115,93,59),(116,93,66),(117,93,64),(118,94,59),(119,95,66),(120,96,65),(121,96,59),(122,97,71),(123,98,82),(124,98,83),(125,98,71),(126,98,75),(127,99,82),(128,99,83),(129,99,71),(130,99,75),(131,100,71),(132,101,71),(133,102,76),(134,103,83),(135,104,71),(136,105,71),(137,106,71),(138,106,83),(139,106,82),(140,106,75),(141,107,75),(142,107,71),(143,107,83),(144,108,75),(145,108,83),(146,108,71),(147,109,71),(148,110,83),(149,110,75),(150,110,71),(151,111,75),(152,111,71),(153,111,82),(154,111,83),(155,112,71),(156,113,71),(157,114,71),(158,115,75),(159,116,71),(160,116,83),(161,116,82),(162,116,75),(163,117,75),(164,117,71),(165,117,82),(166,117,83),(167,118,71),(168,118,75),(169,118,82),(170,118,83),(171,119,83),(172,120,83),(173,121,88),(174,122,83),(175,122,71),(176,122,75),(177,123,83),(178,123,71),(179,123,75),(180,124,71),(181,125,82),(182,125,83),(183,125,75),(184,125,71),(185,126,71);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,45,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(2,46,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(3,3,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(4,53,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(5,3,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(6,4,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(7,13,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(8,8,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(9,17,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(10,18,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(11,65,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(12,69,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(13,65,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(14,21,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(15,23,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(16,72,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(17,5,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(18,8,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(19,5,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(20,16,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(21,17,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(22,6,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(23,8,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(24,10,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(25,73,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(26,22,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(27,8,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(28,18,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(29,65,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(30,8,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(31,65,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(32,65,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(33,74,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(34,75,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(35,49,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(36,76,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(37,77,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(38,56,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(39,78,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(40,79,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(41,56,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(42,81,'<com.ju6.a: boolean b()>',178,'p',NULL),(43,82,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(44,57,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(45,83,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(46,84,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(47,43,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(48,38,'<com.gp.tiltmazes.TiltMazesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(49,44,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(50,86,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(51,87,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(52,28,'<com.ps.opensudoku.gui.ImportSudokuActivity: void onCreate(android.os.Bundle)>',7,'a',NULL),(53,88,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(54,43,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(55,89,'<com.ps.opensudoku.gui.FolderListActivity$1: void onClick(android.view.View)>',7,'a',NULL),(56,24,'<com.ps.opensudoku.gui.FolderListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(57,24,'<com.ps.opensudoku.gui.FolderListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(58,36,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(59,24,'<com.ps.opensudoku.gui.FolderListActivity: boolean onContextItemSelected(android.view.MenuItem)>',16,'a',NULL),(60,90,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(61,31,'<com.ps.opensudoku.gui.SudokuPlayActivity: void restartActivity()>',2,'a',NULL),(62,24,'<com.ps.opensudoku.gui.FolderListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',8,'a',NULL),(63,25,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(64,91,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(65,92,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(66,25,'<com.ps.opensudoku.gui.SudokuListActivity: void playSudoku(long)>',5,'a',NULL),(67,93,'<com.ju6.a: boolean b()>',178,'p',NULL),(68,94,'<com.ps.opensudoku.gui.FileListActivity$3: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(69,31,'<com.ps.opensudoku.gui.SudokuPlayActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(70,25,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(71,36,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(72,27,'<com.ps.opensudoku.gui.FileImportActivity: void onCreate(android.os.Bundle)>',8,'a',NULL),(73,33,'<com.ps.opensudoku.gui.FileListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',23,'a',NULL),(74,25,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(75,25,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onKeyDown(int,android.view.KeyEvent)>',9,'a',NULL),(76,37,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(77,70,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(78,114,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(79,68,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(80,61,'<com.gp.netscramblefull.NetScramble: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(81,61,'<com.gp.netscramblefull.NetScramble: void onBackPressed()>',5,'a',NULL),(82,115,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(83,116,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(84,68,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(85,71,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(86,117,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(87,118,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(88,119,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(89,120,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(90,121,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(91,61,'<com.gp.netscramblefull.NetScramble: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(92,123,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(93,125,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(94,126,'<com.waps.d: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(95,70,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(96,127,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(97,128,'<com.ju6.c: boolean b()>',272,'p',NULL),(98,107,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(99,107,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(100,129,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(101,128,'<com.ju6.c: boolean b()>',195,'p',0),(102,130,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(103,131,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(104,96,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(105,132,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(106,107,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(107,133,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(108,134,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(109,128,'<com.ju6.c: void run()>',146,'p',NULL),(110,135,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(111,107,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(112,128,'<com.ju6.c: boolean b()>',192,'p',NULL),(113,132,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(114,96,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(115,100,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(116,139,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(117,107,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(118,107,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(119,140,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(120,141,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(121,113,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(122,142,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(123,143,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(124,144,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(125,107,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(126,132,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,11),(2,2,1),(3,3,1),(4,6,1),(5,7,1),(6,17,11),(7,18,14),(8,21,1),(9,22,1),(10,25,10),(11,30,7),(12,31,14),(13,32,10),(14,36,7),(15,37,14),(16,40,14),(17,41,1),(18,42,1),(19,43,1),(20,44,1),(21,45,17),(22,46,10),(23,47,17),(24,48,1),(25,49,11),(26,50,1),(27,53,10),(28,55,10),(29,57,10),(30,58,10),(31,60,10),(32,62,10),(33,64,10),(34,69,11),(35,70,1),(36,71,1),(37,72,19),(38,74,10),(39,81,1),(40,82,1),(41,83,19),(42,85,8),(43,86,11),(44,87,1),(45,88,1),(46,97,9),(47,102,10),(48,104,1),(49,105,1),(50,107,1),(51,108,10),(52,109,11),(53,113,10),(54,114,1),(55,115,1),(56,117,1),(57,118,1),(58,119,10),(59,121,10),(60,122,10),(61,123,10),(62,124,10),(63,130,21),(64,131,10),(65,132,1),(66,133,1),(67,134,10),(68,135,10),(69,136,10),(70,137,10),(71,138,10),(72,139,10),(73,140,10),(74,141,10),(75,142,10),(76,144,10),(77,145,10),(78,146,10),(79,150,22),(80,151,10),(81,152,10),(82,153,23),(83,154,24),(84,155,24),(85,156,24),(86,157,24),(87,158,24),(88,159,24),(89,160,24),(90,161,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,1),(2,3,4),(3,6,4),(4,7,1),(5,21,1),(6,22,4),(7,41,1),(8,42,4),(9,43,4),(10,44,1),(11,45,3),(12,46,3),(13,47,3),(14,48,4),(15,50,1),(16,70,1),(17,71,4),(18,72,6),(19,81,4),(20,82,1),(21,83,6),(22,87,1),(23,88,4),(24,104,1),(25,105,4),(26,107,7),(27,114,4),(28,115,1),(29,117,1),(30,118,4),(31,132,1),(32,133,4);
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
INSERT INTO `IClasses` VALUES (1,4,'com/google/update/Dialog'),(2,5,'com/google/update/Dialog'),(3,8,'com/google/update/Dialog'),(4,9,'com/google/update/Dialog'),(5,10,'com/google/update/UpdateService'),(6,11,'com/tutusw/phonespeedup/IntroActivity'),(7,12,'com/tutusw/phonespeedup/ProfilesService'),(8,13,'com/google/ssearch/Dialog'),(9,14,'com/google/ssearch/Dialog'),(10,15,'com/tutusw/phonespeedup/ProfilesService'),(11,16,'com/tutusw/phonespeedup/ProfilesService'),(12,19,'com/google/ssearch/SearchService'),(13,20,'com/tutusw/phonespeedup/WidgetService'),(14,23,'com/tutusw/phonespeedup/Setcpu'),(15,24,'com/tutusw/phonespeedup/PerflockActivity'),(16,26,'com/tutusw/phonespeedup/WidgetService'),(17,27,'com/google/ssearch/Dialog'),(18,28,'com/google/ssearch/Dialog'),(19,29,'com/tutusw/phonespeedup/StresstestActivity'),(20,33,'com/tutusw/phonespeedup/AdvancedActivity'),(21,34,'com/tutusw/phonespeedup/InfoActivity'),(22,35,'com/tutusw/phonespeedup/AboutActivity'),(23,38,'com/tutusw/phonespeedup/IntroActivity'),(24,39,'com/tutusw/phonespeedup/ProfileEditActivity'),(25,51,'com/google/update/Dialog'),(26,52,'com/google/update/Dialog'),(27,56,'com/waps/OffersWebView'),(28,59,'com/google/update/Dialog'),(29,61,'com/google/update/Dialog'),(30,63,'com/google/update/UpdateService'),(31,65,'com/google/update/Dialog'),(32,66,'com/google/update/Dialog'),(33,67,'com/gp/tiltmazes/SelectMazeActivity'),(34,68,'com/google/update/UpdateService'),(35,72,'com/ps/opensudoku/gui/SudokuImportActivity'),(36,73,'com/google/update/Dialog'),(37,75,'com/google/update/Dialog'),(38,76,'com/ps/opensudoku/gui/SudokuExportActivity'),(39,77,'com/ps/opensudoku/gui/FileListActivity'),(40,78,'com/google/update/Dialog'),(41,79,'com/google/update/Dialog'),(42,80,'com/ps/opensudoku/gui/SudokuExportActivity'),(43,84,'com/ps/opensudoku/gui/SudokuListActivity'),(44,85,'com/ps/opensudoku/gui/SudokuEditActivity'),(45,89,'com/ps/opensudoku/gui/SudokuPlayActivity'),(46,90,'com/ps/opensudoku/gui/ImportSudokuActivity'),(47,91,'com/ps/opensudoku/gui/GameSettingsActivity'),(48,92,'com/ps/opensudoku/gui/FolderListActivity'),(49,93,'com/google/update/Dialog'),(50,94,'com/google/update/Dialog'),(51,95,'com/ps/opensudoku/gui/ImportSudokuActivity'),(52,96,'com/ps/opensudoku/gui/FileListActivity'),(53,97,'com/ps/opensudoku/gui/SudokuEditActivity'),(54,98,'com/ps/opensudoku/gui/FolderListActivity'),(55,99,'com/google/update/UpdateService'),(56,100,'com/google/update/Dialog'),(57,101,'com/google/update/Dialog'),(58,106,'com/gp/netscramblefull/Help'),(59,110,'(.*)'),(60,111,'com/google/update/UpdateService'),(61,112,'NULL-CONSTANT'),(62,116,'com/gp/netscramblefull/ScoreList'),(63,125,'com/waps/OffersWebView'),(64,126,'com/google/update/Dialog'),(65,127,'com/google/update/Dialog'),(66,128,'com/waps/OffersWebView'),(67,129,'com/waps/OffersWebView'),(68,143,'com.evilsunflower.reader.FBReader'),(69,146,'com.android.browser.BrowserActivity'),(70,147,'com/millennialmedia/android/MMAdViewOverlayActivity'),(71,148,'com.evilsunflower.reader.FBReader'),(72,149,'com/evilsunflower/reader/BookmarkEditActivity'),(73,162,'com/evilsunflower/reader/control/UpdateService'),(74,165,'com/evilsunflower/reader/control/UpdateService'),(75,166,'com/millennialmedia/android/MMAdViewOverlayActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,25,1),(2,32,2),(3,45,3),(4,46,4),(5,47,5),(6,53,6),(7,55,7),(8,57,8),(9,58,9),(10,60,10),(11,62,12),(12,64,13),(13,74,15),(14,90,17),(15,95,18),(16,102,19),(17,108,20),(18,113,22),(19,119,23),(20,121,24),(21,122,25),(22,123,26),(23,124,27),(24,130,29),(25,131,30),(26,134,31),(27,135,32),(28,136,33),(29,137,34),(30,138,35),(31,139,36),(32,140,37),(33,141,38),(34,142,39),(35,144,43),(36,145,44),(37,146,45),(38,147,48),(39,151,52),(40,152,53),(41,166,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'TYPEdsada'),(2,5,'MSG'),(3,5,'TYPEdsada'),(4,8,'TYPEdsada'),(5,9,'MSG'),(6,9,'TYPEdsada'),(7,13,'TYPEdsada'),(8,14,'MSG'),(9,14,'TYPEdsada'),(10,27,'TYPEdsada'),(11,28,'MSG'),(12,28,'TYPEdsada'),(13,51,'MSG'),(14,51,'TYPEdsada'),(15,52,'TYPEdsada'),(16,56,'USER_ID'),(17,56,'CLIENT_PACKAGE'),(18,56,'Offers_URL'),(19,56,'URL_PARAMS'),(20,59,'MSG'),(21,59,'TYPEdsada'),(22,61,'TYPEdsada'),(23,65,'TYPEdsada'),(24,66,'MSG'),(25,66,'TYPEdsada'),(26,72,'<INTENT>'),(27,73,'TYPEdsada'),(28,75,'MSG'),(29,75,'TYPEdsada'),(30,76,'FOLDER_ID'),(31,77,'FOLDER_NAME'),(32,78,'MSG'),(33,78,'TYPEdsada'),(34,79,'TYPEdsada'),(35,80,'FOLDER_ID'),(36,83,'<INTENT>'),(37,84,'folder_id'),(38,85,'folder_id'),(39,89,'sudoku_id'),(40,93,'MSG'),(41,93,'TYPEdsada'),(42,94,'TYPEdsada'),(43,96,'FOLDER_NAME'),(44,97,'sudoku_id'),(45,100,'TYPEdsada'),(46,101,'MSG'),(47,101,'TYPEdsada'),(48,125,'CLIENT_PACKAGE'),(49,125,'URL'),(50,125,'isFinshClose'),(51,125,'offers_webview_tag'),(52,126,'TYPEdsada'),(53,127,'MSG'),(54,127,'TYPEdsada'),(55,128,'UrlPath'),(56,128,'ACTIVITY_FLAG'),(57,128,'isFinshClose'),(58,128,'offers_webview_tag'),(59,129,'Notify_Url_Params'),(60,129,'UrlPath'),(61,129,'ACTIVITY_FLAG'),(62,129,'isFinshClose'),(63,129,'offers_webview_tag'),(64,147,'cachedAdView'),(65,150,'command'),(66,153,'android.intent.extra.TEXT'),(67,153,'android.intent.extra.SUBJECT'),(68,153,'android.intent.extra.EMAIL'),(69,154,'android.intent.extra.INTENT'),(70,155,'android.intent.extra.INTENT'),(71,156,'android.intent.extra.TITLE'),(72,156,'android.intent.extra.INTENT'),(73,157,'android.intent.extra.INTENT'),(74,158,'android.intent.extra.TITLE'),(75,158,'android.intent.extra.INTENT'),(76,159,'android.intent.extra.INTENT'),(77,160,'android.intent.extra.TITLE'),(78,160,'android.intent.extra.INTENT'),(79,161,'android.intent.extra.TITLE'),(80,161,'android.intent.extra.INTENT'),(81,166,'cachedAdView');
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,5),(7,5,3),(8,5,2),(9,5,4),(10,6,3),(11,7,7),(12,7,6),(13,8,1),(14,9,9),(15,9,8),(16,10,10),(17,11,10),(18,12,10),(19,13,4),(20,13,3),(21,13,2),(22,14,1),(23,15,4),(24,15,2),(25,15,3),(26,16,1),(27,17,4),(28,17,2),(29,17,3),(30,18,7),(31,18,13),(32,18,12),(33,19,13),(34,19,12),(35,19,7),(36,20,13),(37,20,12),(38,20,7),(39,21,13),(40,21,12),(41,21,7),(42,22,13),(43,22,7),(44,22,12),(45,23,12),(46,23,13),(47,23,7),(48,24,1),(49,25,1),(50,26,1),(51,27,4),(52,27,2),(53,27,3),(54,28,7),(55,28,12),(56,28,13),(57,29,7),(58,29,13),(59,29,12),(60,30,7),(61,30,12),(62,30,13),(63,31,13),(64,31,12),(65,31,7),(66,32,12),(67,32,13),(68,32,7),(69,33,7),(70,33,13),(71,33,12),(72,34,12),(73,34,14),(74,34,13),(75,34,16),(76,34,15),(77,35,12),(78,35,13),(79,35,14),(80,35,15),(81,35,16),(82,36,13),(83,36,14),(84,36,12),(85,36,15),(86,36,16),(87,37,16),(88,37,12),(89,37,13),(90,37,14),(91,37,15),(92,38,12),(93,38,15),(94,38,16),(95,38,13),(96,38,14),(97,39,15),(98,39,14),(99,39,16),(100,39,13),(101,39,12),(102,40,18),(103,41,18),(104,42,1),(105,43,20),(106,44,20),(107,45,3),(108,45,2),(109,45,4),(110,46,18),(111,47,18),(112,48,15),(113,49,15),(114,50,15),(115,51,15),(116,52,12),(117,52,13);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,8,1),(4,9,2),(5,10,3),(6,10,2),(7,11,3),(8,11,2),(9,12,3),(10,12,2),(11,14,1),(12,16,1),(13,24,5),(14,24,1),(15,42,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,10,'file','*',NULL,'.*\\.sdm',NULL,NULL),(2,10,'http','*',NULL,'.*\\.sdm',NULL,NULL),(3,10,'file','*',NULL,'.*\\.opensudoku',NULL,NULL),(4,10,'http','*',NULL,'.*\\.opensudoku',NULL,NULL),(5,12,NULL,NULL,NULL,NULL,'application','x-opensudoku'),(6,40,'package',NULL,NULL,NULL,NULL,NULL),(7,41,'package',NULL,NULL,NULL,NULL,NULL),(8,46,'package',NULL,NULL,NULL,NULL,NULL),(9,47,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,47,'(.*)','(.*)'),(2,53,'application','vnd.android.package-archive'),(3,55,'application','vnd.android.package-archive'),(4,57,'application','vnd.android.package-archive'),(5,58,'application','vnd.android.package-archive'),(6,60,'application','vnd.android.package-archive'),(7,64,'application','vnd.android.package-archive'),(8,108,'application','vnd.android.package-archive'),(9,113,'application','vnd.android.package-archive'),(10,119,'application','vnd.android.package-archive'),(11,121,'application','vnd.android.package-archive'),(12,122,'application','vnd.android.package-archive'),(13,123,'application','vnd.android.package-archive'),(14,124,'application','vnd.android.package-archive'),(15,134,'application','vnd.android.package-archive'),(16,135,'application','vnd.android.package-archive'),(17,136,'application','vnd.android.package-archive'),(18,137,'application','vnd.android.package-archive'),(19,138,'application','vnd.android.package-archive'),(20,139,'application','vnd.android.package-archive'),(21,140,'application','vnd.android.package-archive'),(22,141,'application','vnd.android.package-archive'),(23,142,'application','vnd.android.package-archive'),(24,145,'application','vnd.android.package-archive'),(25,153,'message','rfc822');
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.noshufou.android.su'),(2,3,'com.noshufou.android.su'),(3,4,'com.dy.game.lianliankan'),(4,5,'com.dy.game.lianliankan'),(5,6,'com.dy.game.lianliankan'),(6,7,'com.dy.game.lianliankan'),(7,8,'com.dy.game.lianliankan'),(8,9,'com.dy.game.lianliankan'),(9,10,'com.dy.game.lianliankan'),(10,11,'com.tutusw.phonespeedup'),(11,12,'com.tutusw.phonespeedup'),(12,13,'com.tutusw.phonespeedup'),(13,14,'com.tutusw.phonespeedup'),(14,15,'com.tutusw.phonespeedup'),(15,16,'com.tutusw.phonespeedup'),(16,19,'com.tutusw.phonespeedup'),(17,20,'com.tutusw.phonespeedup'),(18,21,'com.tutusw.phonespeedup'),(19,22,'com.tutusw.phonespeedup'),(20,23,'com.tutusw.phonespeedup'),(21,24,'com.tutusw.phonespeedup'),(22,26,'com.tutusw.phonespeedup'),(23,27,'com.tutusw.phonespeedup'),(24,28,'com.tutusw.phonespeedup'),(25,29,'com.tutusw.phonespeedup'),(26,33,'com.tutusw.phonespeedup'),(27,34,'com.tutusw.phonespeedup'),(28,35,'com.tutusw.phonespeedup'),(29,38,'com.tutusw.phonespeedup'),(30,39,'com.tutusw.phonespeedup'),(31,41,'com.noshufou.android.su'),(32,42,'com.noshufou.android.su'),(33,43,'com.alan.asianmeinv7'),(34,44,'com.alan.asianmeinv7'),(35,48,'com.gp.tiltmazes'),(36,50,'com.gp.tiltmazes'),(37,51,'com.alan.asianmeinv7'),(38,52,'com.alan.asianmeinv7'),(39,56,'com.alan.asianmeinv7'),(40,59,'com.alan.asianmeinv7'),(41,61,'com.alan.asianmeinv7'),(42,63,'com.alan.asianmeinv7'),(43,65,'com.gp.tiltmazes'),(44,66,'com.gp.tiltmazes'),(45,67,'com.gp.tiltmazes'),(46,68,'com.gp.tiltmazes'),(47,70,'com.noshufou.android.su'),(48,71,'com.noshufou.android.su'),(49,72,'com.ps.opensudoku'),(50,73,'com.gp.tiltmazes'),(51,75,'com.gp.tiltmazes'),(52,76,'com.ps.opensudoku'),(53,77,'com.ps.opensudoku'),(54,78,'com.ps.opensudoku'),(55,79,'com.ps.opensudoku'),(56,80,'com.ps.opensudoku'),(57,81,'com.ps.opensudoku'),(58,82,'com.ps.opensudoku'),(59,84,'com.ps.opensudoku'),(60,85,'com.ps.opensudoku'),(61,87,'com.noshufou.android.su'),(62,88,'com.noshufou.android.su'),(63,89,'com.ps.opensudoku'),(64,90,'com.ps.opensudoku'),(65,91,'com.ps.opensudoku'),(66,92,'com.ps.opensudoku'),(67,93,'com.ps.opensudoku'),(68,94,'com.ps.opensudoku'),(69,95,'com.ps.opensudoku'),(70,96,'com.ps.opensudoku'),(71,97,'com.ps.opensudoku'),(72,98,'com.ps.opensudoku'),(73,99,'com.ps.opensudoku'),(74,100,'com.gp.netscramblefull'),(75,101,'com.gp.netscramblefull'),(76,104,'(.*)'),(77,105,'(.*)'),(78,106,'com.gp.netscramblefull'),(79,110,'(.*)'),(80,111,'com.gp.netscramblefull'),(81,112,'NULL-CONSTANT'),(82,114,'com.gp.netscramblefull'),(83,115,'com.gp.netscramblefull'),(84,116,'com.gp.netscramblefull'),(85,117,'com.noshufou.android.su'),(86,118,'com.noshufou.android.su'),(87,125,'com.gp.netscramblefull'),(88,126,'com.gp.netscramblefull'),(89,127,'com.gp.netscramblefull'),(90,128,'com.gp.netscramblefull'),(91,129,'com.gp.netscramblefull'),(92,132,'com.noshufou.android.su'),(93,133,'com.noshufou.android.su'),(94,143,'com.evilsunflower.reader.evilKongzi3'),(95,146,'com.android.browser'),(96,147,'com.evilsunflower.reader.evilKongzi3'),(97,148,'com.evilsunflower.reader.evilKongzi3'),(98,149,'com.evilsunflower.reader.evilKongzi3'),(99,162,'com.evilsunflower.reader.evilKongzi3'),(100,165,'com.evilsunflower.reader.evilKongzi3'),(101,166,'com.evilsunflower.reader.evilKongzi3');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,16,0),(5,21,0),(6,22,0),(7,23,0),(8,24,0),(9,26,0),(10,27,0),(11,28,0),(12,29,0),(13,37,0),(14,38,0),(15,44,0),(16,46,0),(17,54,0),(18,23,0),(19,21,0),(20,55,0),(21,56,0),(22,57,0),(23,58,0),(24,59,0),(25,60,0),(26,61,0),(27,67,0),(28,23,0),(29,21,0),(30,55,0),(31,56,0),(32,57,0),(33,58,0),(34,23,0),(35,21,0),(36,55,0),(37,56,0),(38,57,0),(39,58,0),(40,68,0),(41,69,0),(42,71,0),(43,71,0),(44,75,0),(45,88,0),(46,89,0),(47,90,0),(48,91,0),(49,88,0),(50,92,0),(51,93,0),(52,93,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,2,1,0),(4,3,0,0),(5,3,0,0),(6,4,1,0),(7,4,1,0),(8,5,0,0),(9,5,0,0),(10,6,0,0),(11,7,0,0),(12,8,0,0),(13,9,0,0),(14,9,0,0),(15,10,0,0),(16,11,0,0),(17,12,1,0),(18,13,1,0),(19,14,0,0),(20,15,0,0),(21,16,1,0),(22,16,1,0),(23,17,0,0),(24,18,0,0),(25,19,1,0),(26,20,0,0),(27,21,0,0),(28,21,0,0),(29,22,0,0),(30,23,1,0),(31,24,1,0),(32,25,1,0),(33,27,0,0),(34,27,0,0),(35,27,0,0),(36,28,1,0),(37,29,1,0),(38,30,0,0),(39,31,0,0),(40,32,1,0),(41,33,1,0),(42,33,1,0),(43,34,1,0),(44,34,1,0),(45,35,1,0),(46,35,1,0),(47,35,1,0),(48,36,1,0),(49,37,1,0),(50,36,1,0),(51,38,0,0),(52,38,0,0),(53,39,1,0),(54,39,1,0),(55,39,1,0),(56,40,0,0),(57,39,1,0),(58,39,1,0),(59,41,0,0),(60,39,1,0),(61,41,0,0),(62,43,1,0),(63,44,0,0),(64,46,1,0),(65,47,0,0),(66,47,0,0),(67,48,0,0),(68,49,0,0),(69,50,1,0),(70,51,1,0),(71,51,1,0),(72,52,0,0),(73,54,0,0),(74,55,1,0),(75,54,0,0),(76,56,0,0),(77,57,0,0),(78,58,0,0),(79,58,0,0),(80,59,0,0),(81,60,1,0),(82,60,1,0),(83,61,1,0),(84,62,0,0),(85,63,0,0),(86,64,1,0),(87,65,1,0),(88,65,1,0),(89,66,0,0),(90,68,0,0),(91,69,0,0),(92,70,0,0),(93,71,0,0),(94,71,0,0),(95,72,0,0),(96,73,0,0),(97,74,0,0),(98,75,0,0),(99,76,0,0),(100,77,0,0),(101,77,0,0),(102,78,1,0),(103,79,1,0),(104,79,1,0),(105,79,1,0),(106,80,0,0),(107,81,1,0),(108,82,1,0),(109,83,1,0),(110,84,0,0),(111,85,0,0),(112,86,0,0),(113,88,1,0),(114,90,1,0),(115,90,1,0),(116,91,0,0),(117,92,1,0),(118,92,1,0),(119,93,1,0),(120,93,1,0),(121,93,1,0),(122,93,1,0),(123,93,1,0),(124,93,1,0),(125,94,0,0),(126,95,0,0),(127,95,0,0),(128,96,0,0),(129,96,0,0),(130,98,1,0),(131,99,1,0),(132,102,1,0),(133,102,1,0),(134,103,1,0),(135,103,1,0),(136,103,1,0),(137,103,1,0),(138,103,1,0),(139,103,1,0),(140,103,1,0),(141,103,1,0),(142,103,1,0),(143,104,0,0),(144,106,1,0),(145,107,1,0),(146,108,0,0),(147,111,0,0),(148,114,0,0),(149,115,0,0),(150,116,1,0),(151,117,1,0),(152,118,1,0),(153,119,1,0),(154,120,1,0),(155,120,1,0),(156,120,1,0),(157,120,1,0),(158,120,1,0),(159,120,1,0),(160,120,1,0),(161,120,1,0),(162,121,0,0),(163,122,1,0),(164,123,1,0),(165,124,0,0),(166,125,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(5,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.CHANGE_CONFIGURATION'),(3,'android.permission.CHANGE_WIFI_STATE'),(18,'android.permission.GET_TASKS'),(10,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(14,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(6,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.SET_WALLPAPER'),(8,'android.permission.VIBRATE'),(9,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(12,'android.permission.WRITE_SMS'),(20,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(7,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(10,NULL,NULL,'file://',NULL,NULL,NULL),(11,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(15,NULL,NULL,'http://code.google.com/p/opensudoku-android/wiki/Puzzles',NULL,NULL,NULL),(16,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(24,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(41,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(42,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'content://mms/',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(50,NULL,NULL,'content://mms/',NULL,NULL,NULL),(51,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,42,11),(2,53,14),(3,67,16),(4,87,21),(5,97,28),(6,105,40),(7,105,41),(8,105,42),(9,109,46),(10,110,47),(11,112,49),(12,113,50),(13,113,51),(14,126,55);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,2,5),(11,2,6),(12,2,7),(13,2,8),(14,2,9),(15,3,1),(16,3,2),(17,3,3),(18,3,4),(19,3,5),(20,3,6),(21,3,7),(22,3,10),(23,3,11),(24,3,12),(25,3,13),(26,4,16),(27,4,1),(28,4,2),(29,4,3),(30,4,4),(31,4,5),(32,4,6),(33,4,7),(34,4,8),(35,4,9),(36,4,14),(37,4,15),(38,5,1),(39,5,2),(40,5,3),(41,5,4),(42,5,5),(43,5,7),(44,5,10),(45,5,11),(46,5,12),(47,5,13),(48,5,14),(49,5,15),(50,5,17),(51,5,16),(52,5,19),(53,5,18),(54,6,16),(55,6,1),(56,6,2),(57,6,3),(58,6,18),(59,6,4),(60,6,5),(61,6,6),(62,6,7),(63,6,14),(64,6,15),(65,7,1),(66,7,2),(67,7,4),(68,7,20),(69,7,5),(70,7,7),(71,7,9),(72,7,11),(73,7,12),(74,7,13),(75,7,15);
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

-- Dump completed on 2015-10-09  0:38:21
