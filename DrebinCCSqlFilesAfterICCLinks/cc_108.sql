-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_108
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (11,'<INTENT>'),(18,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(13,'android.intent.action.CHOOSER'),(15,'android.intent.action.DIAL'),(6,'android.intent.action.EDIT'),(5,'android.intent.action.INSERT'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.PACKAGE_ADDED'),(16,'android.intent.action.SCREEN_OFF'),(17,'android.intent.action.SCREEN_ON'),(10,'android.intent.action.SEARCH'),(12,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(7,'android.intent.action.VIEW'),(14,'com.android.music.musicservicecommand'),(8,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.wqx.blackjack',11),(2,'com.ps.pintu.view',12),(3,'com.gp.monolith',6),(4,'com.gp.solitaire',459),(5,'com.gp.zoo',2),(6,'com.romario.opensudoku',17),(7,'com.evilsunflower.reader.evilXiyou7',1);
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
INSERT INTO `CategoryStrings` VALUES (5,'<INTENT>'),(3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(2,1,'com.wqx.blackjack.Blackjack'),(3,2,'com.ps.pintu.view.MainActivity'),(4,1,'com.wqx.blackjack.Card'),(5,1,'com.google.update.Dialog'),(6,2,'com.ps.pintu.view.JigsawActivity'),(7,1,'com.waps.OffersWebView'),(8,2,'com.ps.pintu.view.LocalImageActivity'),(9,1,'com.google.update.UpdateService'),(10,2,'com.ps.pintu.view.LocalImageGameActivity'),(11,1,'com.google.update.Receiver'),(12,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(13,2,'com.google.update.Dialog'),(14,2,'com.google.update.UpdateService'),(15,2,'com.google.update.Receiver'),(16,3,'com.gp.monolith.Monolith'),(17,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(18,3,'com.google.update.Dialog'),(19,3,'cn.domob.android.ads.DomobActivity'),(20,3,'com.google.update.UpdateService'),(21,3,'com.google.update.Receiver'),(22,4,'com.gp.solitaire.Solitaire'),(23,4,'com.google.update.Dialog'),(24,4,'cn.domob.android.ads.DomobActivity'),(25,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(26,4,'com.waps.OffersWebView'),(27,4,'com.google.update.UpdateService'),(28,4,'com.google.update.Receiver'),(29,5,'com.gp.zoo.SplashActivity'),(30,6,'com.romario.opensudoku.gui.FolderListActivity'),(31,5,'com.gp.zoo.MainMenuActivity'),(32,5,'com.gp.zoo.CharacterCreationActivity'),(33,5,'com.gp.zoo.MainMapActivity'),(34,6,'com.romario.opensudoku.gui.SudokuListActivity'),(35,5,'com.gp.zoo.HallActivity'),(36,6,'com.romario.opensudoku.gui.SudokuEditActivity'),(37,5,'com.gp.zoo.ExamActivity'),(38,5,'com.gp.zoo.StoreActivity'),(39,5,'com.gp.zoo.StoreDetailActivity'),(40,6,'com.romario.opensudoku.gui.FileImportActivity'),(41,5,'com.gp.zoo.BagActivity'),(42,5,'com.gp.zoo.SettingsActivity'),(43,5,'com.gp.zoo.CreditActivity'),(44,5,'com.gp.zoo.BadgeActivity'),(45,5,'com.gp.zoo.PhotoActivity'),(46,5,'com.gp.zoo.CircusActivity'),(47,6,'com.romario.opensudoku.gui.ImportSudokuActivity'),(48,5,'com.gp.zoo.HelpActivity'),(49,5,'cn.domob.android.ads.DomobActivity'),(50,6,'com.romario.opensudoku.gui.SudokuImportActivity'),(51,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(52,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(53,5,'com.google.update.Dialog'),(54,6,'com.romario.opensudoku.gui.SudokuExportActivity'),(55,5,'com.waps.OffersWebView'),(56,6,'com.romario.opensudoku.gui.SudokuPlayActivity'),(57,5,'com.google.update.UpdateService'),(58,6,'com.romario.opensudoku.gui.GameSettingsActivity'),(59,5,'com.google.update.Receiver'),(60,6,'com.romario.opensudoku.gui.FileListActivity'),(61,6,'com.google.ads.AdActivity'),(62,6,'com.vpon.adon.android.WebInApp'),(63,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(64,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(65,6,'com.waps.OffersWebView'),(66,6,'com.mt.airad.MultiAD'),(67,6,'com.google.update.Dialog'),(68,6,'com.google.update.UpdateService'),(69,6,'com.google.update.Receiver'),(70,2,'com.google.update.UpdateService$AA'),(71,2,'com.ps.pintu.view.LocalImageActivity$1'),(72,2,'com.ps.pintu.view.MainActivity$1'),(73,2,'com.google.update.Dialog$1'),(74,2,'com.google.update.Dialog$2'),(75,1,'com.waps.q'),(76,1,'com.google.update.UpdateService$AA'),(77,1,'com.google.update.Dialog$1'),(78,1,'com.waps.z'),(79,1,'com.waps.aa'),(80,1,'com.waps.ac'),(81,1,'com.waps.o'),(82,1,'com.google.update.Dialog$2'),(83,3,'cn.domob.android.ads.DomobAdManager'),(84,3,'com.google.update.Dialog$1'),(85,3,'cn.domob.android.ads.i'),(86,3,'cn.domob.android.ads.DomobActionReceiver'),(87,3,'cn.domob.android.ads.DomobAdEngine$2'),(88,3,'cn.domob.android.ads.i$6'),(89,3,'com.google.update.Dialog$2'),(90,3,'com.google.update.UpdateService$AA'),(91,4,'cn.domob.android.ads.i$6'),(92,4,'com.waps.aa'),(93,4,'com.waps.q'),(94,4,'com.waps.z'),(95,4,'com.google.update.Dialog$2'),(96,4,'cn.domob.android.ads.DomobAdEngine$2'),(97,4,'com.waps.ac'),(98,4,'cn.domob.android.ads.i'),(99,4,'com.google.update.UpdateService$AA'),(100,4,'com.waps.o'),(101,4,'cn.domob.android.ads.DomobAdManager'),(102,7,'com.evilsunflower.reader.evilXiyou7.BugReportActivity'),(103,7,'com.evilsunflower.reader.FBReader'),(104,7,'com.evilsunflower.reader.CancelActivity'),(105,7,'com.evilsunflower.reader.image.ImageViewActivity'),(106,7,'com.evilsunflower.reader.TOCActivity'),(107,7,'com.evilsunflower.reader.BookmarksActivity'),(108,4,'cn.domob.android.ads.DomobActionReceiver'),(109,7,'com.evilsunflower.reader.control.ShowTips'),(110,4,'com.google.update.Dialog$1'),(111,7,'com.evilsunflower.reader.BookmarkEditActivity'),(112,7,'com.evilsunflower.reader.Starter'),(113,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(114,7,'com.vpon.adon.android.WebInApp'),(115,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(116,7,'com.millennialmedia.android.VideoPlayer'),(117,7,'net.youmi.android.AdActivity'),(118,7,'com.google.ads.AdActivity'),(119,7,'com.guohead.sdk.GuoheAdActivity'),(120,7,'cn.domob.android.ads.DomobActivity'),(121,7,'com.evilsunflower.reader.control.UpdateService'),(122,7,'com.evilsunflower.reader.control.Receiver'),(123,6,'com.romario.opensudoku.gui.FileListActivity$3'),(124,6,'com.google.update.Dialog$2'),(125,6,'com.waps.s'),(126,6,'com.waps.AppConnect'),(127,6,'com.waps.z'),(128,6,'com.google.update.Dialog$1'),(129,6,'com.waps.o'),(130,6,'com.waps.ac'),(131,6,'com.mt.airad.IIIIlllIlllIIIII'),(132,6,'com.waps.d'),(133,6,'com.waps.aa'),(134,6,'com.waps.q'),(135,6,'com.google.update.UpdateService$AA'),(136,7,'com.evilsunflower.reader.ui.BugReportActivity$1'),(137,7,'com.madhouse.android.ads._'),(138,7,'net.youmi.android.t'),(139,7,'com.millennialmedia.android.MillennialMediaView'),(140,7,'com.baidu.as'),(141,7,'com.evilsunflower.reader.ui.ZLAndroidActivity'),(142,7,'com.ju6.mms.util.SqliteWrapper'),(143,7,'com.ju6.c'),(144,7,'com.ju6.mms.pdu.PduPersister'),(145,7,'com.adwo.adsdk.M'),(146,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(147,7,'com.baidu.al'),(148,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(149,7,'net.youmi.android.eo'),(150,7,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(151,7,'com.evilsunflower.reader.control.ShowTips$1'),(152,7,'net.youmi.android.be');
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
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,14,'ST_MY_PID'),(2,12,'shouldMakeOverlayTransparent'),(3,6,'level'),(4,6,'pictureIndex'),(5,12,'shouldResizeOverlay'),(6,10,'path'),(7,13,'MSG'),(8,13,'TYPEdsada'),(9,12,'shouldEnableBottomBar'),(10,12,'transitionTime'),(11,12,'overlayTitle'),(12,12,'url'),(13,12,'shouldShowBottomBar'),(14,12,'shouldShowTitlebar'),(15,12,'overlayTransition'),(16,14,'ST_START_DELAY'),(17,10,'level'),(18,7,'WAPS_PID'),(19,2,'WAPS_PID'),(20,9,'ST_MY_PID'),(21,1,'transitionTime'),(22,2,'mWinCount'),(23,4,'mStartTime'),(24,4,'mCurrentScore'),(25,1,'shouldResizeOverlay'),(26,2,'mCurrentScore'),(27,7,'APP_ID'),(28,2,'APP_ID'),(29,4,'mLoseCount'),(30,7,'Offers_URL'),(31,7,'UrlPath'),(32,7,'Notify_Url_Params'),(33,1,'shouldEnableBottomBar'),(34,2,'mMoney'),(35,5,'TYPEdsada'),(36,2,'Blackjack'),(37,7,'DEVICE_ID'),(38,2,'DEVICE_ID'),(39,4,'mMaxScore'),(40,7,'Notify_Id'),(41,1,'shouldMakeOverlayTransparent'),(42,7,'ACTIVITY_FLAG'),(43,4,'mMoney'),(44,7,'offers_webview_tag'),(45,7,'SHWO_FLAG'),(46,5,'MSG'),(47,7,'URL_PARAMS'),(48,1,'overlayTransition'),(49,4,'mWinCount'),(50,2,'mStartTime'),(51,7,'URL'),(52,1,'overlayTitle'),(53,1,'shouldShowTitlebar'),(54,7,'isFinshClose'),(55,7,'CLIENT_PACKAGE'),(56,1,'url'),(57,2,'CLIENT_PACKAGE'),(58,2,'mLoseCount'),(59,7,'WAPS_ID'),(60,2,'WAPS_ID'),(61,1,'shouldShowBottomBar'),(62,2,'mMaxScore'),(63,7,'USER_ID'),(64,9,'ST_START_DELAY'),(65,20,'DOMOB_PID'),(66,17,'DOMOB_PID'),(67,17,'shouldEnableBottomBar'),(68,17,'overlayTitle'),(69,18,'TYPEdsada'),(70,17,'url'),(71,19,'actType'),(72,20,'DOMOB_TEST_MODE'),(73,17,'DOMOB_TEST_MODE'),(74,18,'MSG'),(75,17,'shouldShowBottomBar'),(76,20,'ST_MY_PID'),(77,20,'DOMOB_ALLOW_LOCATION'),(78,17,'DOMOB_ALLOW_LOCATION'),(79,19,'appId'),(80,17,'shouldMakeOverlayTransparent'),(81,17,'shouldResizeOverlay'),(82,17,'overlayTransition'),(83,17,'transitionTime'),(84,17,'shouldShowTitlebar'),(85,20,'ST_START_DELAY'),(86,19,'appName'),(87,27,'ST_START_DELAY'),(88,23,'MSG'),(89,27,'DOMOB_PID'),(90,22,'DOMOB_PID'),(91,25,'DOMOB_PID'),(92,27,'DOMOB_ALLOW_LOCATION'),(93,22,'DOMOB_ALLOW_LOCATION'),(94,25,'DOMOB_ALLOW_LOCATION'),(95,25,'overlayTitle'),(96,26,'DEVICE_ID'),(97,22,'DEVICE_ID'),(98,26,'WAPS_PID'),(99,22,'WAPS_PID'),(100,26,'APP_ID'),(101,22,'APP_ID'),(102,26,'ACTIVITY_FLAG'),(103,26,'WAPS_ID'),(104,22,'WAPS_ID'),(105,26,'Notify_Id'),(106,24,'appId'),(107,25,'url'),(108,25,'shouldEnableBottomBar'),(109,26,'UrlPath'),(110,26,'URL'),(111,26,'CLIENT_PACKAGE'),(112,26,'USER_ID'),(113,27,'ST_MY_PID'),(114,25,'shouldShowBottomBar'),(115,23,'TYPEdsada'),(116,25,'overlayTransition'),(117,22,'CLIENT_PACKAGE'),(118,26,'SHWO_FLAG'),(119,25,'shouldShowTitlebar'),(120,26,'offers_webview_tag'),(121,24,'actType'),(122,26,'Notify_Url_Params'),(123,26,'URL_PARAMS'),(124,24,'appName'),(125,27,'DOMOB_TEST_MODE'),(126,22,'DOMOB_TEST_MODE'),(127,25,'DOMOB_TEST_MODE'),(128,25,'shouldMakeOverlayTransparent'),(129,25,'shouldResizeOverlay'),(130,26,'Offers_URL'),(131,25,'transitionTime'),(132,26,'isFinshClose'),(133,36,'time'),(134,56,'time'),(135,50,'APPEND_TO_FOLDER'),(136,65,'Notify_Id'),(137,36,'note'),(138,56,'note'),(139,56,'isRunning'),(140,30,'APP_ID'),(141,65,'APP_ID'),(142,36,'APP_ID'),(143,54,'APP_ID'),(144,58,'APP_ID'),(145,56,'APP_ID'),(146,65,'offers_webview_tag'),(147,63,'Adwo_PID'),(148,34,'mResetPuzzleID'),(149,36,'cellColumn'),(150,56,'cellColumn'),(151,65,'URL_PARAMS'),(152,65,'URL'),(153,65,'ACTIVITY_FLAG'),(154,36,'cells'),(155,56,'cells'),(156,36,'cmdStack.size'),(157,56,'cmdStack.size'),(158,30,'WAPS_ID'),(159,65,'WAPS_ID'),(160,36,'WAPS_ID'),(161,54,'WAPS_ID'),(162,58,'WAPS_ID'),(163,56,'WAPS_ID'),(164,30,'DEVICE_ID'),(165,65,'DEVICE_ID'),(166,36,'DEVICE_ID'),(167,54,'DEVICE_ID'),(168,58,'DEVICE_ID'),(169,56,'DEVICE_ID'),(170,64,'overlayTitle'),(171,36,'cols'),(172,56,'cols'),(173,36,'cellRow'),(174,56,'cellRow'),(175,36,'cmdStack.(.*)'),(176,56,'cmdStack.(.*)'),(177,66,'adID'),(178,36,'lastPlayed'),(179,56,'lastPlayed'),(180,66,'adURL'),(181,64,'shouldShowTitlebar'),(182,64,'url'),(183,30,'mRenameFolderID'),(184,62,'url'),(185,64,'overlayTransition'),(186,68,'ST_MY_PID'),(187,65,'Offers_URL'),(188,67,'TYPEdsada'),(189,30,'mDeleteFolderID'),(190,65,'UrlPath'),(191,65,'SHWO_FLAG'),(192,36,'oldValue'),(193,56,'oldValue'),(194,65,'Notify_Url_Params'),(195,36,'created'),(196,56,'created'),(197,34,'mEditNotePuzzleID'),(198,30,'CLIENT_PACKAGE'),(199,65,'CLIENT_PACKAGE'),(200,36,'CLIENT_PACKAGE'),(201,54,'CLIENT_PACKAGE'),(202,58,'CLIENT_PACKAGE'),(203,56,'CLIENT_PACKAGE'),(204,60,'FOLDER_NAME'),(205,36,'rows'),(206,56,'rows'),(207,36,'notes'),(208,56,'notes'),(209,36,'oldNote'),(210,56,'oldNote'),(211,34,'mDeletePuzzleID'),(212,36,'commandClass'),(213,56,'commandClass'),(214,36,'value'),(215,56,'value'),(216,60,'mDirectory'),(217,67,'MSG'),(218,56,'tickInterval'),(219,50,'FOLDER_NAME'),(220,36,'id'),(221,56,'id'),(222,64,'shouldShowBottomBar'),(223,30,'WAPS_PID'),(224,65,'WAPS_PID'),(225,36,'WAPS_PID'),(226,54,'WAPS_PID'),(227,58,'WAPS_PID'),(228,56,'WAPS_PID'),(229,68,'ST_START_DELAY'),(230,62,'adWidth'),(231,36,'state'),(232,56,'state'),(233,65,'USER_ID'),(234,64,'transitionTime'),(235,50,'GAMES'),(236,64,'shouldMakeOverlayTransparent'),(237,64,'shouldResizeOverlay'),(238,56,'tickCount'),(239,56,'accumTime'),(240,64,'shouldEnableBottomBar'),(241,65,'isFinshClose'),(242,63,'isTestMode'),(243,89,'link'),(244,85,'overlayTransition'),(245,87,'172C94EDC717477aBF600D7898A64A8E'),(246,86,'adName'),(247,86,'videoPosition'),(248,85,'transitionTime'),(249,78,'query'),(250,85,'overlayTitle'),(251,74,'Wooboo_PID'),(252,85,'cachedAdView'),(253,86,'videoCompleted'),(254,83,'transitionTime'),(255,74,'Adwo_PID'),(256,85,'shouldShowTitlebar'),(257,83,'shouldShowBottomBar'),(258,83,'overlayTitle'),(259,86,'videoAd'),(260,83,'shouldMakeOverlayTransparent'),(261,91,'SAFE_PID'),(262,83,'overlayTransition'),(263,86,'ADUrl'),(264,78,'ADUrl'),(265,74,'ADUrl'),(266,87,'ADUrl'),(267,85,'canAccelerate'),(268,86,'cached'),(269,83,'shouldResizeOverlay'),(270,84,'adWidth'),(271,80,'MM'),(272,74,'Market_ID'),(273,85,'shouldResizeOverlay'),(274,74,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(275,85,'shouldMakeOverlayTransparent'),(276,83,'shouldShowTitlebar'),(277,87,'D780FBF4215247bcBB1AC0AD33C474FE'),(278,74,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(279,87,'EB80F3291A8E469c962CA133BDC549D7'),(280,83,'shouldEnableBottomBar'),(281,86,'isCachedAd'),(282,87,'D50EF1926ADD471892E72BCE6D7E032C'),(283,74,'GH_APPKEY'),(284,85,'shouldShowBottomBar'),(285,84,'url'),(286,74,'query'),(287,85,'shouldEnableBottomBar'),(288,91,'SAFE_START'),(289,86,'logSet'),(290,86,'shouldShowBottomBar'),(291,83,'url');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,75,'r',1,NULL,NULL),(71,86,'r',1,NULL,NULL),(72,93,'r',1,NULL,NULL),(73,102,'a',0,NULL,NULL),(74,103,'a',1,NULL,NULL),(75,104,'a',0,NULL,NULL),(76,105,'a',0,NULL,NULL),(77,106,'a',0,NULL,NULL),(78,107,'a',1,NULL,NULL),(79,108,'r',1,NULL,NULL),(80,109,'a',0,NULL,NULL),(81,111,'a',0,NULL,NULL),(82,112,'a',0,NULL,NULL),(83,113,'a',0,NULL,NULL),(84,114,'a',0,NULL,NULL),(85,115,'a',0,NULL,NULL),(86,116,'a',0,NULL,NULL),(87,117,'a',0,NULL,NULL),(88,118,'a',0,NULL,NULL),(89,119,'a',0,NULL,NULL),(90,120,'a',0,NULL,NULL),(91,121,'s',0,NULL,NULL),(92,122,'r',1,NULL,NULL),(93,134,'r',1,NULL,NULL),(94,145,'r',1,NULL,NULL),(95,149,'r',1,NULL,NULL),(96,150,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,14),(2,2,14),(3,3,3),(4,3,8),(5,4,8),(6,4,3),(7,5,15),(8,6,14),(9,7,8),(10,7,3),(11,8,13),(12,9,13),(13,10,8),(14,10,3),(15,11,9),(16,12,5),(17,13,2),(18,14,7),(19,15,7),(20,16,9),(21,17,7),(22,18,2),(23,19,9),(24,20,7),(25,21,7),(26,22,11),(27,23,7),(28,24,5),(29,25,2),(30,26,21),(31,27,20),(32,28,20),(33,28,17),(34,29,18),(35,30,20),(36,31,20),(37,31,17),(38,32,20),(39,32,17),(40,33,17),(41,33,20),(42,34,18),(43,35,20),(44,36,22),(45,36,25),(46,36,27),(47,37,26),(48,38,27),(49,39,26),(50,40,26),(51,41,26),(52,42,23),(53,43,27),(54,43,25),(55,43,22),(56,44,26),(57,45,27),(58,45,25),(59,45,22),(60,46,27),(61,47,26),(62,48,25),(63,48,27),(64,48,22),(65,49,27),(66,50,23),(67,51,28),(68,52,30),(69,53,58),(70,53,56),(71,53,60),(72,54,34),(73,55,67),(74,55,58),(75,55,56),(76,56,54),(77,56,36),(78,56,56),(79,57,58),(80,57,56),(81,57,30),(82,58,56),(83,58,58),(84,58,65),(85,59,58),(86,59,56),(87,59,67),(88,60,34),(89,61,65),(90,61,58),(91,61,56),(92,62,69),(93,63,56),(94,63,54),(95,63,36),(96,64,65),(97,65,34),(98,66,30),(99,67,40),(100,68,56),(101,69,34),(102,70,68),(103,71,30),(104,72,66),(105,73,65),(106,74,58),(107,74,56),(108,75,56),(109,76,65),(110,77,58),(111,77,56),(112,77,65),(113,78,30),(114,79,60),(115,80,68),(116,81,54),(117,81,36),(118,81,56),(119,82,47),(120,83,68),(121,84,34),(122,85,87),(123,86,78),(124,86,87),(125,86,74),(126,87,74),(127,87,87),(128,87,86),(129,87,78),(130,88,87),(131,89,74),(132,89,78),(133,89,86),(134,89,87),(135,90,74),(136,90,78),(137,90,87),(138,91,74),(139,92,87),(140,92,74),(141,92,86),(142,92,78),(143,93,92),(144,94,74),(145,95,74),(146,96,78),(147,97,86),(148,97,87),(149,97,74),(150,97,78),(151,98,86),(152,98,87),(153,98,74),(154,98,78),(155,99,74),(156,100,74),(157,101,74),(158,101,86),(159,101,87),(160,101,78),(161,102,74),(162,103,78),(163,103,87),(164,103,86),(165,103,74),(166,104,74),(167,104,87),(168,104,78),(169,105,74),(170,106,74),(171,107,74),(172,108,78),(173,108,74),(174,108,87),(175,109,74),(176,110,78),(177,110,74),(178,110,87),(179,111,74),(180,112,74),(181,112,87),(182,112,78),(183,112,86),(184,113,80),(185,114,87);
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
INSERT INTO `ExitPoints` VALUES (1,14,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(2,70,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(3,71,'<com.ps.pintu.view.LocalImageActivity$1: void onClick(android.view.View)>',22,'a',NULL),(4,72,'<com.ps.pintu.view.MainActivity$1: void onClick(android.view.View)>',19,'a',NULL),(5,15,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(6,14,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(7,72,'<com.ps.pintu.view.MainActivity$1: void onClick(android.view.View)>',25,'a',NULL),(8,73,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(9,74,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(10,71,'<com.ps.pintu.view.LocalImageActivity$1: void onClick(android.view.View)>',28,'a',NULL),(11,76,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(12,77,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(13,2,'<com.wqx.blackjack.Blackjack: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(14,78,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(15,79,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(16,9,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(17,80,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(18,2,'<com.wqx.blackjack.Blackjack: boolean onKeyDown(int,android.view.KeyEvent)>',37,'a',NULL),(19,9,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(20,7,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(21,81,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(22,11,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(23,7,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(24,82,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(25,2,'<com.wqx.blackjack.Blackjack: void onClick(android.view.View)>',33,'a',NULL),(26,21,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(27,20,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(28,83,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(29,84,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(30,20,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(31,85,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(32,87,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(33,88,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(34,89,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(35,90,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(36,91,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(37,92,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(38,27,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(39,26,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(40,26,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(41,94,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(42,95,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(43,96,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(44,97,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(45,98,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(46,99,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(47,100,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(48,101,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(49,27,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(50,110,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(51,28,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(52,30,'<com.romario.opensudoku.gui.FolderListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(53,123,'<com.romario.opensudoku.gui.FileListActivity$3: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(54,34,'<com.romario.opensudoku.gui.SudokuListActivity: boolean onKeyDown(int,android.view.KeyEvent)>',9,'a',NULL),(55,124,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(56,125,'<com.waps.s: void onClick(android.view.View)>',62,'a',NULL),(57,126,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(58,127,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(59,128,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(60,34,'<com.romario.opensudoku.gui.SudokuListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(61,129,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(62,69,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(63,125,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(64,130,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(65,34,'<com.romario.opensudoku.gui.SudokuListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(66,30,'<com.romario.opensudoku.gui.FolderListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',44,'a',NULL),(67,40,'<com.romario.opensudoku.gui.FileImportActivity: void onCreate(android.os.Bundle)>',8,'a',NULL),(68,56,'<com.romario.opensudoku.gui.SudokuPlayActivity: void restartActivity()>',2,'a',NULL),(69,34,'<com.romario.opensudoku.gui.SudokuListActivity: void playSudoku(long)>',5,'a',NULL),(70,68,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(71,30,'<com.romario.opensudoku.gui.FolderListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(72,131,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(73,65,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(74,132,'<com.waps.d: void onClick(android.content.DialogInterface,int)>',23,'a',NULL),(75,56,'<com.romario.opensudoku.gui.SudokuPlayActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(76,65,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(77,133,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(78,30,'<com.romario.opensudoku.gui.FolderListActivity: boolean onContextItemSelected(android.view.MenuItem)>',16,'a',NULL),(79,60,'<com.romario.opensudoku.gui.FileListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',23,'a',NULL),(80,135,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(81,125,'<com.waps.s: void onClick(android.view.View)>',37,'a',NULL),(82,47,'<com.romario.opensudoku.gui.ImportSudokuActivity: void onCreate(android.os.Bundle)>',7,'a',NULL),(83,68,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(84,34,'<com.romario.opensudoku.gui.SudokuListActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(85,136,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(86,137,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(87,116,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(88,138,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(89,139,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(90,140,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(91,141,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(92,116,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(93,122,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(94,142,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(95,143,'<com.ju6.c: void run()>',146,'p',NULL),(96,107,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(97,116,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(98,116,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(99,143,'<com.ju6.c: boolean b()>',195,'p',0),(100,103,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(101,116,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(102,144,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(103,116,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(104,146,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(105,142,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(106,142,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(107,143,'<com.ju6.c: boolean b()>',192,'p',NULL),(108,147,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(109,143,'<com.ju6.c: boolean b()>',272,'p',NULL),(110,148,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(111,103,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(112,116,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(113,151,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(114,152,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,3,1),(2,4,1),(3,11,1),(4,12,1),(5,13,8),(6,15,1),(7,16,1),(8,17,1),(9,18,1),(10,20,7),(11,30,7),(12,33,1),(13,34,1),(14,35,8),(15,40,1),(16,41,1),(17,44,7),(18,45,7),(19,47,7),(20,48,7),(21,49,7),(22,50,7),(23,51,8),(24,52,1),(25,53,1),(26,54,7),(27,56,7),(28,57,7),(29,58,7),(30,59,7),(31,66,1),(32,67,1),(33,68,7),(34,69,8),(35,71,7),(36,72,1),(37,73,1),(38,74,7),(39,77,1),(40,78,1),(41,83,8),(42,84,7),(43,86,7),(44,87,1),(45,88,1),(46,89,5),(47,90,7),(48,97,11),(49,102,7),(50,104,1),(51,105,1),(52,113,1),(53,114,1),(54,116,1),(55,117,1),(56,118,11),(57,121,6),(58,122,12),(59,123,7),(60,124,13),(61,125,13),(62,126,13),(63,127,13),(64,128,13),(65,129,13),(66,130,13),(67,131,13),(68,132,14),(69,133,7),(70,135,15),(71,139,7),(72,141,7),(73,142,7),(74,144,7),(75,148,1),(76,149,1),(77,150,7),(78,151,7),(79,152,7),(80,153,7),(81,154,7),(82,155,7),(83,156,7),(84,157,7),(85,158,7);
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
INSERT INTO `ICategories` VALUES (1,3,1),(2,4,4),(3,11,1),(4,12,4),(5,15,1),(6,16,4),(7,17,1),(8,18,4),(9,33,1),(10,34,4),(11,40,1),(12,41,4),(13,52,4),(14,53,1),(15,66,1),(16,67,4),(17,72,1),(18,73,4),(19,77,1),(20,78,4),(21,87,1),(22,88,4),(23,97,5),(24,104,1),(25,105,4),(26,113,1),(27,114,4),(28,116,1),(29,117,4),(30,118,5),(31,148,1),(32,149,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/update/Dialog'),(2,2,'com/google/update/Dialog'),(3,5,'com/ps/pintu/view/LocalImageGameActivity'),(4,6,'com/ps/pintu/view/JigsawActivity'),(5,7,'com/google/update/UpdateService'),(6,8,'com/google/update/Dialog'),(7,9,'com/google/update/Dialog'),(8,10,'com/ps/pintu/view/LocalImageActivity'),(9,14,'com/ps/pintu/view/MainActivity'),(10,19,'com/wqx/blackjack/Blackjack'),(11,21,'com/waps/OffersWebView'),(12,22,'com/waps/OffersWebView'),(13,23,'com/google/update/Dialog'),(14,24,'com/google/update/Dialog'),(15,25,'NULL-CONSTANT'),(16,26,'com/wqx/blackjack/Card'),(17,27,'com/google/update/Dialog'),(18,28,'com/google/update/Dialog'),(19,29,'(.*)'),(20,31,'com/google/update/UpdateService'),(21,36,'com/wqx/blackjack/Card'),(22,37,'com/google/update/UpdateService'),(23,38,'com/google/update/Dialog'),(24,39,'com/google/update/Dialog'),(25,42,'com/google/update/Dialog'),(26,43,'com/google/update/Dialog'),(27,60,'com/waps/OffersWebView'),(28,61,'com/waps/OffersWebView'),(29,62,'com/google/update/Dialog'),(30,63,'com/google/update/Dialog'),(31,64,'(.*)'),(32,70,'NULL-CONSTANT'),(33,75,'com/google/update/Dialog'),(34,76,'com/google/update/Dialog'),(35,79,'com/google/update/UpdateService'),(36,80,'com/romario/opensudoku/gui/FileListActivity'),(37,81,'com/romario/opensudoku/gui/ImportSudokuActivity'),(38,82,'com/romario/opensudoku/gui/FolderListActivity'),(39,85,'com/waps/OffersWebView'),(40,89,'com/romario/opensudoku/gui/SudokuEditActivity'),(41,91,'com/google/update/UpdateService'),(42,92,'com/waps/OffersWebView'),(43,93,'NULL-CONSTANT'),(44,94,'com/romario/opensudoku/gui/FolderListActivity'),(45,95,'com/romario/opensudoku/gui/SudokuListActivity'),(46,96,'com/romario/opensudoku/gui/ImportSudokuActivity'),(47,98,'com/romario/opensudoku/gui/SudokuPlayActivity'),(48,99,'com/google/update/Dialog'),(49,100,'com/google/update/Dialog'),(50,101,'com/romario/opensudoku/gui/SudokuExportActivity'),(51,106,'com/waps/OffersWebView'),(52,107,'com/romario/opensudoku/gui/GameSettingsActivity'),(53,108,'(.*)'),(54,109,'com/waps/OffersWebView'),(55,110,'com/waps/OffersWebView'),(56,111,'com/romario/opensudoku/gui/SudokuExportActivity'),(57,112,'com/romario/opensudoku/gui/FileListActivity'),(58,118,'com/romario/opensudoku/gui/SudokuImportActivity'),(59,119,'com/google/update/Dialog'),(60,120,'com/google/update/Dialog'),(61,121,'com/romario/opensudoku/gui/SudokuEditActivity'),(62,134,'com/evilsunflower/reader/control/UpdateService'),(63,136,'com/evilsunflower/reader/control/UpdateService'),(64,137,'com/evilsunflower/reader/BookmarkEditActivity'),(65,138,'com/millennialmedia/android/MMAdViewOverlayActivity'),(66,140,'com.evilsunflower.reader.FBReader'),(67,144,'com.android.browser.BrowserActivity'),(68,146,'com.evilsunflower.reader.FBReader'),(69,147,'com/millennialmedia/android/MMAdViewOverlayActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,20,1),(2,30,2),(3,44,4),(4,45,5),(5,47,6),(6,48,7),(7,49,8),(8,50,9),(9,54,10),(10,56,11),(11,57,12),(12,58,13),(13,59,14),(14,68,15),(15,71,16),(16,74,17),(17,81,19),(18,84,20),(19,86,21),(20,90,22),(21,96,23),(22,102,24),(23,123,26),(24,133,27),(25,135,28),(26,138,31),(27,139,32),(28,141,33),(29,142,34),(30,144,41),(31,147,43),(32,150,44),(33,151,45),(34,152,46),(35,153,47),(36,154,48),(37,155,49),(38,156,50),(39,157,51),(40,158,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'MSG'),(2,1,'TYPEdsada'),(3,2,'TYPEdsada'),(4,5,'level'),(5,5,'path'),(6,6,'level'),(7,6,'pictureIndex'),(8,8,'MSG'),(9,8,'TYPEdsada'),(10,9,'TYPEdsada'),(11,21,'UrlPath'),(12,21,'ACTIVITY_FLAG'),(13,21,'isFinshClose'),(14,21,'offers_webview_tag'),(15,22,'Notify_Url_Params'),(16,22,'UrlPath'),(17,22,'ACTIVITY_FLAG'),(18,22,'isFinshClose'),(19,22,'offers_webview_tag'),(20,23,'MSG'),(21,23,'TYPEdsada'),(22,24,'TYPEdsada'),(23,26,'mMaxScore'),(24,26,'mMoney'),(25,26,'mWinCount'),(26,26,'mLoseCount'),(27,26,'mStartTime'),(28,26,'mCurrentScore'),(29,27,'MSG'),(30,27,'TYPEdsada'),(31,28,'TYPEdsada'),(32,36,'mMaxScore'),(33,36,'mMoney'),(34,36,'mWinCount'),(35,36,'mLoseCount'),(36,36,'mStartTime'),(37,36,'mCurrentScore'),(38,38,'MSG'),(39,38,'TYPEdsada'),(40,39,'TYPEdsada'),(41,42,'MSG'),(42,42,'TYPEdsada'),(43,43,'TYPEdsada'),(44,60,'UrlPath'),(45,60,'ACTIVITY_FLAG'),(46,60,'isFinshClose'),(47,60,'offers_webview_tag'),(48,61,'Notify_Url_Params'),(49,61,'UrlPath'),(50,61,'ACTIVITY_FLAG'),(51,61,'isFinshClose'),(52,61,'offers_webview_tag'),(53,62,'MSG'),(54,62,'TYPEdsada'),(55,63,'TYPEdsada'),(56,75,'MSG'),(57,75,'TYPEdsada'),(58,76,'TYPEdsada'),(59,80,'FOLDER_NAME'),(60,85,'USER_ID'),(61,85,'CLIENT_PACKAGE'),(62,85,'Offers_URL'),(63,85,'offers_webview_tag'),(64,85,'URL_PARAMS'),(65,89,'folder_id'),(66,92,'CLIENT_PACKAGE'),(67,92,'URL'),(68,92,'isFinshClose'),(69,92,'offers_webview_tag'),(70,95,'folder_id'),(71,97,'<INTENT>'),(72,98,'sudoku_id'),(73,99,'MSG'),(74,99,'TYPEdsada'),(75,100,'TYPEdsada'),(76,101,'FOLDER_ID'),(77,106,'CLIENT_PACKAGE'),(78,106,'URL'),(79,106,'isFinshClose'),(80,106,'offers_webview_tag'),(81,109,'UrlPath'),(82,109,'ACTIVITY_FLAG'),(83,109,'isFinshClose'),(84,109,'offers_webview_tag'),(85,110,'Notify_Url_Params'),(86,110,'UrlPath'),(87,110,'ACTIVITY_FLAG'),(88,110,'isFinshClose'),(89,110,'offers_webview_tag'),(90,111,'FOLDER_ID'),(91,112,'FOLDER_NAME'),(92,118,'<INTENT>'),(93,119,'MSG'),(94,119,'TYPEdsada'),(95,120,'TYPEdsada'),(96,121,'sudoku_id'),(97,122,'android.intent.extra.TEXT'),(98,122,'android.intent.extra.SUBJECT'),(99,122,'android.intent.extra.EMAIL'),(100,124,'android.intent.extra.INTENT'),(101,125,'android.intent.extra.INTENT'),(102,126,'android.intent.extra.TITLE'),(103,126,'android.intent.extra.INTENT'),(104,127,'android.intent.extra.INTENT'),(105,128,'android.intent.extra.TITLE'),(106,128,'android.intent.extra.INTENT'),(107,129,'android.intent.extra.INTENT'),(108,130,'android.intent.extra.TITLE'),(109,130,'android.intent.extra.INTENT'),(110,131,'android.intent.extra.TITLE'),(111,131,'android.intent.extra.INTENT'),(112,132,'command'),(113,138,'cachedAdView'),(114,147,'cachedAdView');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,2),(5,3,3),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,4),(11,6,3),(12,6,2),(13,7,1),(14,8,2),(15,8,3),(16,8,4),(17,9,1),(18,10,1),(19,11,5),(20,11,6),(21,12,7),(22,13,7),(23,14,7),(24,15,4),(25,15,2),(26,15,3),(27,16,2),(28,16,3),(29,16,4),(30,17,9),(31,18,9),(32,19,9),(33,20,1),(34,21,10),(35,22,10),(36,23,9),(37,24,4),(38,24,3),(39,24,2),(40,25,9),(41,26,16),(42,26,17),(43,27,18),(44,28,18),(45,29,18),(46,30,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,5,1),(4,7,1),(5,9,1),(6,10,1),(7,11,2),(8,12,3),(9,12,2),(10,13,3),(11,13,2),(12,14,2),(13,14,3),(14,20,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,12,'file','*',NULL,'.*\\.sdm',NULL,NULL),(2,12,'http','*',NULL,'.*\\.sdm',NULL,NULL),(3,12,'file','*',NULL,'.*\\.opensudoku',NULL,NULL),(4,12,'http','*',NULL,'.*\\.opensudoku',NULL,NULL),(5,14,NULL,NULL,NULL,NULL,'application','x-opensudoku'),(6,17,'package',NULL,NULL,NULL,NULL,NULL),(7,18,'package',NULL,NULL,NULL,NULL,NULL),(8,19,'package',NULL,NULL,NULL,NULL,NULL),(9,23,'package',NULL,NULL,NULL,NULL,NULL),(10,25,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,20,'application','vnd.android.package-archive'),(2,30,'application','vnd.android.package-archive'),(3,45,'application','vnd.android.package-archive'),(4,47,'application','vnd.android.package-archive'),(5,48,'application','vnd.android.package-archive'),(6,49,'application','vnd.android.package-archive'),(7,50,'application','vnd.android.package-archive'),(8,54,'application','vnd.android.package-archive'),(9,56,'application','vnd.android.package-archive'),(10,57,'application','vnd.android.package-archive'),(11,58,'application','vnd.android.package-archive'),(12,59,'application','vnd.android.package-archive'),(13,68,'application','vnd.android.package-archive'),(14,74,'application','vnd.android.package-archive'),(15,86,'application','vnd.android.package-archive'),(16,90,'application','vnd.android.package-archive'),(17,122,'message','rfc822'),(18,133,'application','vnd.android.package-archive'),(19,150,'application','vnd.android.package-archive'),(20,151,'application','vnd.android.package-archive'),(21,152,'application','vnd.android.package-archive'),(22,153,'application','vnd.android.package-archive'),(23,154,'application','vnd.android.package-archive'),(24,155,'application','vnd.android.package-archive'),(25,156,'application','vnd.android.package-archive'),(26,157,'application','vnd.android.package-archive'),(27,158,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.ps.pintu.view'),(2,2,'com.ps.pintu.view'),(3,3,'com.ps.pintu.view'),(4,4,'com.ps.pintu.view'),(5,5,'com.ps.pintu.view'),(6,6,'com.ps.pintu.view'),(7,7,'com.ps.pintu.view'),(8,8,'com.ps.pintu.view'),(9,9,'com.ps.pintu.view'),(10,10,'com.ps.pintu.view'),(11,11,'com.noshufou.android.su'),(12,12,'com.noshufou.android.su'),(13,14,'com.ps.pintu.view'),(14,15,'com.wqx.blackjack'),(15,16,'com.wqx.blackjack'),(16,17,'com.noshufou.android.su'),(17,18,'com.noshufou.android.su'),(18,19,'com.wqx.blackjack'),(19,21,'com.wqx.blackjack'),(20,22,'com.wqx.blackjack'),(21,23,'com.wqx.blackjack'),(22,24,'com.wqx.blackjack'),(23,25,'NULL-CONSTANT'),(24,26,'com.wqx.blackjack'),(25,27,'com.wqx.blackjack'),(26,28,'com.wqx.blackjack'),(27,29,'(.*)'),(28,31,'com.wqx.blackjack'),(29,33,'(.*)'),(30,34,'(.*)'),(31,36,'com.wqx.blackjack'),(32,37,'com.gp.monolith'),(33,38,'com.gp.monolith'),(34,39,'com.gp.monolith'),(35,40,'com.noshufou.android.su'),(36,41,'com.noshufou.android.su'),(37,42,'com.gp.monolith'),(38,43,'com.gp.monolith'),(39,52,'com.gp.monolith'),(40,53,'com.gp.monolith'),(41,60,'com.gp.solitaire'),(42,61,'com.gp.solitaire'),(43,62,'com.gp.solitaire'),(44,63,'com.gp.solitaire'),(45,64,'(.*)'),(46,66,'(.*)'),(47,67,'(.*)'),(48,70,'NULL-CONSTANT'),(49,72,'com.gp.solitaire'),(50,73,'com.gp.solitaire'),(51,75,'com.gp.solitaire'),(52,76,'com.gp.solitaire'),(53,77,'com.noshufou.android.su'),(54,78,'com.noshufou.android.su'),(55,79,'com.gp.solitaire'),(56,80,'com.romario.opensudoku'),(57,81,'com.romario.opensudoku'),(58,82,'com.romario.opensudoku'),(59,85,'com.romario.opensudoku'),(60,87,'com.noshufou.android.su'),(61,88,'com.noshufou.android.su'),(62,89,'com.romario.opensudoku'),(63,91,'com.romario.opensudoku'),(64,92,'com.romario.opensudoku'),(65,93,'NULL-CONSTANT'),(66,94,'com.romario.opensudoku'),(67,95,'com.romario.opensudoku'),(68,96,'com.romario.opensudoku'),(69,98,'com.romario.opensudoku'),(70,99,'com.romario.opensudoku'),(71,100,'com.romario.opensudoku'),(72,101,'com.romario.opensudoku'),(73,104,'(.*)'),(74,105,'(.*)'),(75,106,'com.romario.opensudoku'),(76,107,'com.romario.opensudoku'),(77,108,'(.*)'),(78,109,'com.romario.opensudoku'),(79,110,'com.romario.opensudoku'),(80,111,'com.romario.opensudoku'),(81,112,'com.romario.opensudoku'),(82,113,'com.romario.opensudoku'),(83,114,'com.romario.opensudoku'),(84,116,'NULL-CONSTANT'),(85,117,'NULL-CONSTANT'),(86,118,'com.romario.opensudoku'),(87,119,'com.romario.opensudoku'),(88,120,'com.romario.opensudoku'),(89,121,'com.romario.opensudoku'),(90,134,'com.evilsunflower.reader.evilXiyou7'),(91,136,'com.evilsunflower.reader.evilXiyou7'),(92,137,'com.evilsunflower.reader.evilXiyou7'),(93,138,'com.evilsunflower.reader.evilXiyou7'),(94,140,'com.evilsunflower.reader.evilXiyou7'),(95,144,'com.android.browser'),(96,146,'com.evilsunflower.reader.evilXiyou7'),(97,147,'com.evilsunflower.reader.evilXiyou7'),(98,148,'com.noshufou.android.su'),(99,149,'com.noshufou.android.su');
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
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,3,0),(3,11,0),(4,15,0),(5,16,0),(6,21,0),(7,22,0),(8,28,0),(9,29,0),(10,30,0),(11,36,0),(12,40,0),(13,47,0),(14,50,0),(15,59,0),(16,69,0),(17,70,0),(18,71,0),(19,72,0),(20,74,0),(21,74,0),(22,78,0),(23,79,0),(24,92,0),(25,93,0),(26,94,0),(27,95,0),(28,92,0),(29,96,0),(30,94,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,2,1,0),(4,2,1,0),(5,3,0,0),(6,4,0,0),(7,5,0,0),(8,6,0,0),(9,6,0,0),(10,7,0,0),(11,8,1,0),(12,8,1,0),(13,9,1,0),(14,10,0,0),(15,11,1,0),(16,11,1,0),(17,12,1,0),(18,12,1,0),(19,13,0,0),(20,14,1,0),(21,15,0,0),(22,15,0,0),(23,16,0,0),(24,16,0,0),(25,17,0,0),(26,18,0,0),(27,19,0,0),(28,19,0,0),(29,20,0,0),(30,21,1,0),(31,22,0,0),(32,23,1,0),(33,23,1,0),(34,23,1,0),(35,24,1,0),(36,25,0,0),(37,26,0,0),(38,27,0,0),(39,27,0,0),(40,29,1,0),(41,29,1,0),(42,30,0,0),(43,30,0,0),(44,31,1,0),(45,33,1,0),(46,33,1,0),(47,33,1,0),(48,33,1,0),(49,33,1,0),(50,33,1,0),(51,34,1,0),(52,35,1,0),(53,35,1,0),(54,36,1,0),(55,36,1,0),(56,36,1,0),(57,36,1,0),(58,36,1,0),(59,36,1,0),(60,37,0,0),(61,37,0,0),(62,38,0,0),(63,38,0,0),(64,39,0,0),(65,40,1,0),(66,40,1,0),(67,40,1,0),(68,41,1,0),(69,42,1,0),(70,44,0,0),(71,45,1,0),(72,46,1,0),(73,46,1,0),(74,47,1,0),(75,49,0,0),(76,49,0,0),(77,50,1,0),(78,50,1,0),(79,51,0,0),(80,52,0,0),(81,53,0,0),(82,54,0,0),(83,55,1,0),(84,56,1,0),(85,57,0,0),(86,58,1,0),(87,59,1,0),(88,59,1,0),(89,60,0,0),(90,61,1,0),(91,62,0,0),(92,63,0,0),(93,64,0,0),(94,65,0,0),(95,66,0,0),(96,67,0,0),(97,68,1,0),(98,69,0,0),(99,70,0,0),(100,70,0,0),(101,71,0,0),(102,72,1,0),(103,73,1,0),(104,73,1,0),(105,73,1,0),(106,74,0,0),(107,75,0,0),(108,76,0,0),(109,77,0,0),(110,77,0,0),(111,78,0,0),(112,79,0,0),(113,80,1,0),(114,80,1,0),(115,81,1,0),(116,81,1,0),(117,81,1,0),(118,82,0,0),(119,83,0,0),(120,83,0,0),(121,84,0,0),(122,85,1,0),(123,87,1,0),(124,88,1,0),(125,88,1,0),(126,88,1,0),(127,88,1,0),(128,88,1,0),(129,88,1,0),(130,88,1,0),(131,88,1,0),(132,89,1,0),(133,90,1,0),(134,91,0,0),(135,92,1,0),(136,93,0,0),(137,96,0,0),(138,97,0,0),(139,98,1,0),(140,100,0,0),(141,101,1,0),(142,103,1,0),(143,104,1,0),(144,108,0,0),(145,110,1,0),(146,111,0,0),(147,112,0,0),(148,113,1,0),(149,113,1,0),(150,114,1,0),(151,114,1,0),(152,114,1,0),(153,114,1,0),(154,114,1,0),(155,114,1,0),(156,114,1,0),(157,114,1,0),(158,114,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=473 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,140,74,2,NULL),(2,146,74,2,NULL),(3,32,74,2,NULL),(4,33,74,2,NULL),(5,34,74,2,NULL),(6,65,74,2,NULL),(7,66,74,2,NULL),(8,67,74,2,NULL),(9,97,74,2,NULL),(10,103,74,2,NULL),(11,104,74,2,NULL),(12,105,74,2,NULL),(13,123,74,2,NULL),(14,135,74,2,NULL),(15,139,74,2,NULL),(16,141,74,2,NULL),(17,142,74,2,NULL),(18,137,81,2,NULL),(19,32,78,2,NULL),(20,33,78,2,NULL),(21,34,78,2,NULL),(22,65,78,2,NULL),(23,66,78,2,NULL),(24,67,78,2,NULL),(25,97,78,2,NULL),(26,103,78,2,NULL),(27,104,78,2,NULL),(28,105,78,2,NULL),(29,123,78,2,NULL),(30,135,78,2,NULL),(31,139,78,2,NULL),(32,141,78,2,NULL),(33,142,78,2,NULL),(34,138,85,2,NULL),(35,147,85,2,NULL),(36,123,2,2,NULL),(37,135,2,2,NULL),(38,139,2,2,NULL),(39,141,2,2,NULL),(40,142,2,2,NULL),(41,123,11,2,NULL),(42,135,11,2,NULL),(43,139,11,2,NULL),(44,141,11,2,NULL),(45,142,11,2,NULL),(46,123,3,2,NULL),(47,135,3,2,NULL),(48,139,3,2,NULL),(49,141,3,2,NULL),(50,142,3,2,NULL),(51,123,15,2,NULL),(52,135,15,2,NULL),(53,139,15,2,NULL),(54,141,15,2,NULL),(55,142,15,2,NULL),(56,123,16,2,NULL),(57,135,16,2,NULL),(58,139,16,2,NULL),(59,141,16,2,NULL),(60,142,16,2,NULL),(61,123,21,2,NULL),(62,135,21,2,NULL),(63,139,21,2,NULL),(64,141,21,2,NULL),(65,142,21,2,NULL),(66,123,22,2,NULL),(67,135,22,2,NULL),(68,139,22,2,NULL),(69,141,22,2,NULL),(70,142,22,2,NULL),(71,123,28,2,NULL),(72,135,28,2,NULL),(73,139,28,2,NULL),(74,141,28,2,NULL),(75,142,28,2,NULL),(76,123,29,2,NULL),(77,135,29,2,NULL),(78,139,29,2,NULL),(79,141,29,2,NULL),(80,142,29,2,NULL),(81,123,59,2,NULL),(82,135,59,2,NULL),(83,139,59,2,NULL),(84,141,59,2,NULL),(85,142,59,2,NULL),(86,123,30,2,NULL),(87,135,30,2,NULL),(88,139,30,2,NULL),(89,141,30,2,NULL),(90,142,30,2,NULL),(91,123,36,2,NULL),(92,135,36,2,NULL),(93,139,36,2,NULL),(94,141,36,2,NULL),(95,142,36,2,NULL),(96,123,47,2,NULL),(97,135,47,2,NULL),(98,139,47,2,NULL),(99,141,47,2,NULL),(100,142,47,2,NULL),(101,123,69,2,NULL),(102,135,69,2,NULL),(103,139,69,2,NULL),(104,141,69,2,NULL),(105,142,69,2,NULL),(106,123,92,2,NULL),(107,135,92,2,NULL),(108,139,92,2,NULL),(109,141,92,2,NULL),(110,142,92,2,NULL),(111,123,94,2,NULL),(112,135,94,2,NULL),(113,139,94,2,NULL),(114,141,94,2,NULL),(115,142,94,2,NULL),(116,123,95,2,NULL),(117,135,95,2,NULL),(118,139,95,2,NULL),(119,141,95,2,NULL),(120,142,95,2,NULL),(121,123,96,2,NULL),(122,135,96,2,NULL),(123,139,96,2,NULL),(124,141,96,2,NULL),(125,142,96,2,NULL),(126,136,91,2,NULL),(127,32,92,2,NULL),(128,33,92,2,NULL),(129,34,92,2,NULL),(130,65,92,2,NULL),(131,66,92,2,NULL),(132,67,92,2,NULL),(133,97,92,2,NULL),(134,103,92,2,NULL),(135,104,92,2,NULL),(136,105,92,2,NULL),(137,32,94,2,NULL),(138,33,94,2,NULL),(139,34,94,2,NULL),(140,65,94,2,NULL),(141,66,94,2,NULL),(142,67,94,2,NULL),(143,97,94,2,NULL),(144,103,94,2,NULL),(145,104,94,2,NULL),(146,105,94,2,NULL),(147,32,95,2,NULL),(148,33,95,2,NULL),(149,34,95,2,NULL),(150,65,95,2,NULL),(151,66,95,2,NULL),(152,67,95,2,NULL),(153,97,95,2,NULL),(154,103,95,2,NULL),(155,104,95,2,NULL),(156,105,95,2,NULL),(157,32,96,2,NULL),(158,33,96,2,NULL),(159,34,96,2,NULL),(160,65,96,2,NULL),(161,66,96,2,NULL),(162,67,96,2,NULL),(163,97,96,2,NULL),(164,103,96,2,NULL),(165,104,96,2,NULL),(166,105,96,2,NULL),(167,19,2,2,NULL),(168,26,4,2,NULL),(169,36,4,2,NULL),(170,32,2,2,NULL),(171,33,2,2,NULL),(172,34,2,2,NULL),(173,65,2,2,NULL),(174,66,2,2,NULL),(175,67,2,2,NULL),(176,97,2,2,NULL),(177,103,2,2,NULL),(178,104,2,2,NULL),(179,105,2,2,NULL),(180,32,11,2,NULL),(181,33,11,2,NULL),(182,34,11,2,NULL),(183,32,3,2,NULL),(184,33,3,2,NULL),(185,34,3,2,NULL),(186,32,15,2,NULL),(187,33,15,2,NULL),(188,34,15,2,NULL),(189,32,16,2,NULL),(190,33,16,2,NULL),(191,34,16,2,NULL),(192,32,21,2,NULL),(193,33,21,2,NULL),(194,34,21,2,NULL),(195,32,22,2,NULL),(196,33,22,2,NULL),(197,34,22,2,NULL),(198,32,28,2,NULL),(199,33,28,2,NULL),(200,34,28,2,NULL),(201,32,29,2,NULL),(202,33,29,2,NULL),(203,34,29,2,NULL),(204,32,59,2,NULL),(205,33,59,2,NULL),(206,34,59,2,NULL),(207,32,30,2,NULL),(208,33,30,2,NULL),(209,34,30,2,NULL),(210,32,36,2,NULL),(211,33,36,2,NULL),(212,34,36,2,NULL),(213,32,47,2,NULL),(214,33,47,2,NULL),(215,34,47,2,NULL),(216,32,69,2,NULL),(217,33,69,2,NULL),(218,34,69,2,NULL),(219,23,5,2,NULL),(220,23,13,2,NULL),(221,23,18,2,NULL),(222,23,23,2,NULL),(223,23,53,2,NULL),(224,23,67,2,NULL),(225,24,5,2,NULL),(226,24,13,2,NULL),(227,24,18,2,NULL),(228,24,23,2,NULL),(229,24,53,2,NULL),(230,24,67,2,NULL),(231,27,5,2,NULL),(232,27,13,2,NULL),(233,27,18,2,NULL),(234,27,23,2,NULL),(235,27,53,2,NULL),(236,27,67,2,NULL),(237,28,5,2,NULL),(238,28,13,2,NULL),(239,28,18,2,NULL),(240,28,23,2,NULL),(241,28,53,2,NULL),(242,28,67,2,NULL),(243,31,9,2,NULL),(244,31,14,2,NULL),(245,31,20,2,NULL),(246,31,27,2,NULL),(247,31,57,2,NULL),(248,31,68,2,NULL),(249,65,11,2,NULL),(250,66,11,2,NULL),(251,67,11,2,NULL),(252,97,11,2,NULL),(253,103,11,2,NULL),(254,104,11,2,NULL),(255,105,11,2,NULL),(256,65,29,2,NULL),(257,66,29,2,NULL),(258,67,29,2,NULL),(259,97,29,2,NULL),(260,103,29,2,NULL),(261,104,29,2,NULL),(262,105,29,2,NULL),(263,65,59,2,NULL),(264,66,59,2,NULL),(265,67,59,2,NULL),(266,97,59,2,NULL),(267,103,59,2,NULL),(268,104,59,2,NULL),(269,105,59,2,NULL),(270,65,16,2,NULL),(271,66,16,2,NULL),(272,67,16,2,NULL),(273,97,16,2,NULL),(274,103,16,2,NULL),(275,104,16,2,NULL),(276,105,16,2,NULL),(277,38,5,2,NULL),(278,38,13,2,NULL),(279,38,18,2,NULL),(280,38,23,2,NULL),(281,38,53,2,NULL),(282,38,67,2,NULL),(283,39,5,2,NULL),(284,39,13,2,NULL),(285,39,18,2,NULL),(286,39,23,2,NULL),(287,39,53,2,NULL),(288,39,67,2,NULL),(289,42,5,2,NULL),(290,42,13,2,NULL),(291,42,18,2,NULL),(292,42,23,2,NULL),(293,42,53,2,NULL),(294,42,67,2,NULL),(295,43,5,2,NULL),(296,43,13,2,NULL),(297,43,18,2,NULL),(298,43,23,2,NULL),(299,43,53,2,NULL),(300,43,67,2,NULL),(301,37,9,2,NULL),(302,37,14,2,NULL),(303,37,20,2,NULL),(304,37,27,2,NULL),(305,37,57,2,NULL),(306,37,68,2,NULL),(307,65,21,2,NULL),(308,66,21,2,NULL),(309,67,21,2,NULL),(310,97,21,2,NULL),(311,103,21,2,NULL),(312,104,21,2,NULL),(313,105,21,2,NULL),(314,65,3,2,NULL),(315,66,3,2,NULL),(316,67,3,2,NULL),(317,97,3,2,NULL),(318,103,3,2,NULL),(319,104,3,2,NULL),(320,105,3,2,NULL),(321,1,5,2,NULL),(322,1,13,2,NULL),(323,1,18,2,NULL),(324,1,23,2,NULL),(325,1,53,2,NULL),(326,1,67,2,NULL),(327,2,5,2,NULL),(328,2,13,2,NULL),(329,2,18,2,NULL),(330,2,23,2,NULL),(331,2,53,2,NULL),(332,2,67,2,NULL),(333,8,5,2,NULL),(334,8,13,2,NULL),(335,8,18,2,NULL),(336,8,23,2,NULL),(337,8,53,2,NULL),(338,8,67,2,NULL),(339,9,5,2,NULL),(340,9,13,2,NULL),(341,9,18,2,NULL),(342,9,23,2,NULL),(343,9,53,2,NULL),(344,9,67,2,NULL),(345,7,9,2,NULL),(346,7,14,2,NULL),(347,7,20,2,NULL),(348,7,27,2,NULL),(349,7,57,2,NULL),(350,7,68,2,NULL),(351,65,15,2,NULL),(352,66,15,2,NULL),(353,67,15,2,NULL),(354,97,15,2,NULL),(355,103,15,2,NULL),(356,104,15,2,NULL),(357,105,15,2,NULL),(358,65,22,2,NULL),(359,66,22,2,NULL),(360,67,22,2,NULL),(361,97,22,2,NULL),(362,103,22,2,NULL),(363,104,22,2,NULL),(364,105,22,2,NULL),(365,65,28,2,NULL),(366,66,28,2,NULL),(367,67,28,2,NULL),(368,65,30,2,NULL),(369,66,30,2,NULL),(370,67,30,2,NULL),(371,65,36,2,NULL),(372,66,36,2,NULL),(373,67,36,2,NULL),(374,65,47,2,NULL),(375,66,47,2,NULL),(376,67,47,2,NULL),(377,65,69,2,NULL),(378,66,69,2,NULL),(379,67,69,2,NULL),(380,62,5,2,NULL),(381,62,13,2,NULL),(382,62,18,2,NULL),(383,62,23,2,NULL),(384,62,53,2,NULL),(385,62,67,2,NULL),(386,63,5,2,NULL),(387,63,13,2,NULL),(388,63,18,2,NULL),(389,63,23,2,NULL),(390,63,53,2,NULL),(391,63,67,2,NULL),(392,75,5,2,NULL),(393,75,13,2,NULL),(394,75,18,2,NULL),(395,75,23,2,NULL),(396,75,53,2,NULL),(397,75,67,2,NULL),(398,76,5,2,NULL),(399,76,13,2,NULL),(400,76,18,2,NULL),(401,76,23,2,NULL),(402,76,53,2,NULL),(403,76,67,2,NULL),(404,79,9,2,NULL),(405,79,14,2,NULL),(406,79,20,2,NULL),(407,79,27,2,NULL),(408,79,57,2,NULL),(409,79,68,2,NULL),(410,97,28,2,NULL),(411,103,28,2,NULL),(412,104,28,2,NULL),(413,105,28,2,NULL),(414,80,60,2,NULL),(415,95,34,2,NULL),(416,101,54,2,NULL),(417,111,54,2,NULL),(418,97,30,2,NULL),(419,103,30,2,NULL),(420,104,30,2,NULL),(421,105,30,2,NULL),(422,82,30,2,NULL),(423,89,36,2,NULL),(424,94,30,2,NULL),(425,98,56,2,NULL),(426,121,36,2,NULL),(427,97,36,2,NULL),(428,103,36,2,NULL),(429,104,36,2,NULL),(430,105,36,2,NULL),(431,96,47,2,NULL),(432,118,50,2,NULL),(433,97,47,2,NULL),(434,103,47,2,NULL),(435,104,47,2,NULL),(436,105,47,2,NULL),(437,107,58,2,NULL),(438,97,69,2,NULL),(439,112,60,2,NULL),(440,103,69,2,NULL),(441,104,69,2,NULL),(442,105,69,2,NULL),(443,99,5,2,NULL),(444,99,13,2,NULL),(445,99,18,2,NULL),(446,99,23,2,NULL),(447,99,53,2,NULL),(448,99,67,2,NULL),(449,100,5,2,NULL),(450,100,13,2,NULL),(451,100,18,2,NULL),(452,100,23,2,NULL),(453,100,53,2,NULL),(454,100,67,2,NULL),(455,119,5,2,NULL),(456,119,13,2,NULL),(457,119,18,2,NULL),(458,119,23,2,NULL),(459,119,53,2,NULL),(460,119,67,2,NULL),(461,120,5,2,NULL),(462,120,13,2,NULL),(463,120,18,2,NULL),(464,120,23,2,NULL),(465,120,53,2,NULL),(466,120,67,2,NULL),(467,91,9,2,NULL),(468,91,14,2,NULL),(469,91,20,2,NULL),(470,91,27,2,NULL),(471,91,57,2,NULL),(472,91,68,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (14,'android.permission.ACCESS_COARSE_LOCATION'),(9,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(12,'android.permission.GET_TASKS'),(11,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(8,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(15,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(18,'android.permission.RECORD_AUDIO'),(16,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(13,'android.permission.WRITE_SMS'),(19,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(6,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(11,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(14,NULL,NULL,'file://',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(24,NULL,NULL,'',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(30,NULL,NULL,'content://mms/',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'content://mms/',NULL,NULL,NULL),(36,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(37,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(38,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(39,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(40,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,28,3),(2,48,18),(3,86,25),(4,94,29),(5,95,30),(6,105,35),(7,105,36),(8,106,37),(9,106,38),(10,106,39),(11,107,40),(12,109,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,3,1),(16,3,2),(17,3,3),(18,3,4),(19,3,5),(20,3,6),(21,3,7),(22,3,8),(23,3,9),(24,3,10),(25,4,1),(26,4,2),(27,4,3),(28,4,4),(29,4,5),(30,4,6),(31,4,7),(32,4,8),(33,4,9),(34,4,10),(35,4,11),(36,4,12),(37,4,13),(38,4,14),(39,4,15),(40,5,1),(41,5,2),(42,5,3),(43,5,4),(44,5,5),(45,5,6),(46,5,7),(47,5,8),(48,5,9),(49,6,1),(50,6,2),(51,5,10),(52,6,3),(53,5,12),(54,6,4),(55,5,14),(56,5,17),(57,6,5),(58,5,16),(59,6,6),(60,5,18),(61,6,7),(62,6,8),(63,6,9),(64,6,10),(65,6,14),(66,7,17),(67,7,1),(68,7,19),(69,7,3),(70,7,4),(71,7,6),(72,7,7),(73,7,9),(74,7,13),(75,7,14),(76,7,15);
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

-- Dump completed on 2015-10-12  3:29:18
