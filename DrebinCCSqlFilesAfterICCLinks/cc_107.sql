-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_107
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (33,'(.*)'),(15,'(.*).adProvider'),(20,'(.*).showAd'),(17,'(.*).showAdFinish'),(19,'(.*).showBanner'),(18,'(.*).showBannerFinish'),(34,'<INTENT>'),(16,'NULL-CONSTANT'),(23,'android.appwidget.action.APPWIDGET_UPDATE'),(9,'android.intent.action.BATTERY_CHANGED_ACTION'),(8,'android.intent.action.BOOT_COMPLETED'),(2,'android.intent.action.CREATE_SHORTCUT'),(27,'android.intent.action.EDIT'),(25,'android.intent.action.GET_CONTENT'),(28,'android.intent.action.INSERT'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.PACKAGE_ADDED'),(5,'android.intent.action.PACKAGE_REMOVED'),(6,'android.intent.action.PACKAGE_REPLACED'),(26,'android.intent.action.PICK'),(30,'android.intent.action.SEARCH'),(37,'android.intent.action.SEND'),(7,'android.intent.action.SIG_STR'),(14,'android.intent.action.VIEW'),(21,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(10,'android.service.wallpaper.WallpaperService'),(22,'android.settings.WIRELESS_SETTINGS'),(13,'com.android.launcher.action.INSTALL_SHORTCUT'),(29,'com.android.notepad.action.EDIT_NOTE'),(11,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(40,'com.openintents.action.CRYPTO_LOGGED_OUT'),(32,'com.openintents.action.DECRYPT'),(39,'com.openintents.action.DELETED'),(35,'com.openintents.action.INSERTED'),(36,'com.openintents.action.MODIFIED'),(38,'com.openintents.action.PICK_FILE'),(31,'com.openintents.notepad.action.SAVE_TO_SD_CARD'),(12,'eu.chainfire.new.SHORTCUT_EXECUTE'),(3,'eu.chainfire.new.SHORTCUT_TOGGLE'),(24,'siir.atools.adbwireless.widget_update');
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
INSERT INTO `Applications` VALUES (1,'eu.chainfire.new',36),(2,'com.ps.llk',9),(3,'com.alan.mp3cutter',42),(4,'com.livegame.wallpaperjipinminv',1),(5,'com.mogo.guoshullk',6),(6,'siir.atools.adbWireless',3),(7,'com.openintents.notepad',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (6,'<INTENT>'),(4,'android.intent.category.ALTERNATIVE'),(2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'android.intent.category.SELECTED_ALTERNATIVE');
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'eu.chainfire.new.MainActivity'),(2,1,'eu.chainfire.new.LauncherShortcuts'),(3,1,'eu.chainfire.new.ToggleActivity'),(4,2,'com.ps.llk.MainActivity'),(5,1,'com.airpuh.ad.UpdateCheck'),(6,1,'eu.chainfire.new.InstallReceiver'),(7,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(8,2,'com.google.update.Dialog'),(9,2,'com.google.update.UpdateService'),(10,2,'com.google.update.Receiver'),(11,3,'com.alan.mp3cutter.Mp3Cutter'),(12,3,'com.alan.mp3cutter.Mp3Cut'),(13,3,'com.alan.mp3cutter.Mp3Join'),(14,3,'com.alan.mp3cutter.Mp3List'),(15,3,'com.google.ssearch.Dialog'),(16,3,'com.google.ssearch.SearchService'),(17,3,'com.mt.airad.Manager'),(18,3,'com.google.ssearch.Receiver'),(19,4,'com.livegame.wallpaperjipinminv.MainActivity'),(20,4,'com.livegame.wallpaperjipinminv.SettingsActivity'),(21,4,'com.livegame.wallpaperjipinminv.SelectFolderActivity'),(22,4,'com.google.ads.AdActivity'),(23,4,'com.vpon.adon.android.WebInApp'),(24,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(25,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(26,4,'com.waps.OffersWebView'),(27,4,'com.google.update.Dialog'),(28,4,'com.livegame.wallpaperjipinminv.WallpaperSlideshow'),(29,4,'com.google.update.UpdateService'),(30,4,'com.google.update.Receiver'),(31,2,'com.google.update.UpdateService$AA'),(32,2,'com.google.update.Dialog$2'),(33,2,'com.google.update.Dialog$1'),(34,1,'eu.chainfire.new.l'),(35,1,'eu.chainfire.new.j'),(36,1,'eu.chainfire.new.aa'),(37,1,'eu.chainfire.new.as'),(38,1,'eu.chainfire.new.x'),(39,3,'com.mt.airad.AirAD'),(40,3,'com.alan.mp3cutter.Mp3Cutter$2'),(41,5,'com.mogo.guoshullk.begin'),(42,3,'com.mt.airad.llllIIllIIllIIll'),(43,5,'com.mogo.guoshullk.Main'),(44,5,'com.google.ads.AdActivity'),(45,5,'com.vpon.adon.android.WebInApp'),(46,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(47,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(48,5,'com.waps.OffersWebView'),(49,5,'com.google.update.Dialog'),(50,5,'com.google.update.UpdateService'),(51,5,'com.google.update.Receiver'),(52,3,'com.mt.airad.IIllIIIIIlIIIIlI'),(53,3,'com.google.ssearch.SearchService$MyThread'),(54,3,'com.mt.airad.IlIIIIIlIllllIll'),(55,3,'com.mt.airad.lIIIIIIIlIllIlll'),(56,3,'com.mt.airad.IIlIIIIlIIlIIlII'),(57,3,'com.google.ssearch.Dialog$1'),(58,3,'com.alan.mp3cutter.Mp3List$3'),(59,3,'com.alan.mp3cutter.Mp3Cutter$3'),(60,3,'com.mt.airad.IlIlllllIlIIIIII'),(61,4,'com.waps.o'),(62,4,'com.google.update.UpdateService$AA'),(63,4,'com.livegame.wallpaperjipinminv.MainActivity$1'),(64,4,'com.waps.q'),(65,4,'com.google.update.Dialog$1'),(66,4,'com.waps.aa'),(67,4,'com.livegame.wallpaperjipinminv.MainActivity$2'),(68,4,'com.waps.ac'),(69,4,'com.waps.z'),(70,4,'com.waps.AppConnect'),(71,4,'com.google.update.Dialog$2'),(72,5,'com.ju6.a'),(73,5,'com.google.update.UpdateService$MyThread'),(74,5,'com.waps.k'),(75,5,'com.waps.m'),(76,5,'com.mobclick.android.MobclickAgent'),(77,5,'com.waps.AppConnect'),(78,5,'com.google.update.Dialog$1'),(79,5,'com.google.update.Dialog$2'),(80,5,'org.loon.framework.android.game.LGameAndroid2DActivity$10'),(81,5,'com.mogo.guoshullk.begin$beginButtonListener'),(82,5,'org.loon.framework.android.game.LGameAndroid2DActivity$9'),(83,6,'siir.atools.adbWireless.adbWireless'),(84,6,'siir.atools.adbWireless.ManagePreferences'),(85,6,'com.atools.battery.ShowTips'),(86,6,'com.atools.battery.UpdateService'),(87,6,'siir.atools.adbWireless.adbWidgetProvider'),(88,6,'com.atools.battery.m'),(89,7,'com.openintents.notepad.noteslist.NotesList'),(90,7,'com.openintents.notepad.NoteEditor'),(91,7,'com.openintents.notepad.search.SearchQueryResultsActivity'),(92,7,'com.openintents.notepad.activity.SaveFileActivity'),(93,7,'com.openintents.notepad.crypto.EncryptActivity'),(94,7,'com.openintents.notepad.filename.DialogHostingActivity'),(95,7,'com.openintents.notepad.PreferenceActivity'),(96,7,'com.openintents.distribution.EulaActivity'),(97,7,'com.openintents.distribution.NewVersionActivity'),(98,7,'com.google.ads.AdActivity'),(99,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(100,7,'com.millennialmedia.android.VideoPlayer'),(101,7,'net.youmi.android.AdActivity'),(102,7,'com.vpon.adon.android.WebInApp'),(103,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(104,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(105,7,'com.waps.OffersWebView'),(106,7,'com.google.update.Dialog'),(107,7,'com.google.update.UpdateService'),(108,7,'com.google.update.Receiver'),(109,7,'com.openintents.notepad.NotePadProvider'),(110,7,'com.openintents.notepad.search.SearchSuggestionProvider'),(111,7,'com.openintents.notepad.search.FullTextSearch'),(112,7,'com.openintents.notepad.filename.FilenameDialog'),(113,7,'com.openintents.notepad.noteslist.NotesListCursor'),(114,7,'com.openintents.notepad.noteslist.TagsDialog'),(115,7,'com.ju6.a'),(116,7,'com.waps.AppConnect'),(117,7,'com.waps.m'),(118,7,'com.google.update.Dialog$2'),(119,7,'com.google.update.UpdateService$MyThread'),(120,7,'com.openintents.distribution.DownloadAppDialog'),(121,7,'com.waps.k'),(122,7,'com.google.update.Dialog$1'),(123,7,'com.google.ads.util.AdUtil$UserActivityReceiver'),(124,7,'com.openintents.notepad.noteslist.NotesList$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'shouldEnableBottomBar'),(2,7,'shouldShowTitlebar'),(3,7,'shouldResizeOverlay'),(4,9,'ST_MY_PID'),(5,9,'ST_START_DELAY'),(6,7,'overlayTransition'),(7,7,'transitionTime'),(8,8,'MSG'),(9,8,'TYPEdsada'),(10,7,'overlayTitle'),(11,7,'shouldShowBottomBar'),(12,7,'shouldMakeOverlayTransparent'),(13,7,'url'),(14,5,'MYAD_PID'),(15,3,'force'),(16,1,'prefscreen'),(17,1,'target_app'),(18,15,'TYPEdsada'),(19,14,'action'),(20,12,'name'),(21,15,'MSG'),(22,24,'Adwo_PID'),(23,24,'isTestMode'),(24,26,'SHWO_FLAG'),(25,26,'Notify_Url_Params'),(26,25,'overlayTitle'),(27,20,'folder'),(28,27,'MSG'),(29,26,'APP_ID'),(30,19,'APP_ID'),(31,23,'adWidth'),(32,26,'offers_webview_tag'),(33,26,'ACTIVITY_FLAG'),(34,25,'shouldShowTitlebar'),(35,26,'Offers_URL'),(36,25,'shouldEnableBottomBar'),(37,25,'transitionTime'),(38,25,'overlayTransition'),(39,25,'shouldMakeOverlayTransparent'),(40,25,'url'),(41,26,'USER_ID'),(42,26,'CLIENT_PACKAGE'),(43,19,'CLIENT_PACKAGE'),(44,26,'UrlPath'),(45,26,'WAPS_ID'),(46,19,'WAPS_ID'),(47,29,'ST_MY_PID'),(48,26,'isFinshClose'),(49,25,'shouldResizeOverlay'),(50,26,'WAPS_PID'),(51,19,'WAPS_PID'),(52,26,'Notify_Id'),(53,23,'url'),(54,25,'shouldShowBottomBar'),(55,26,'URL'),(56,26,'DEVICE_ID'),(57,19,'DEVICE_ID'),(58,27,'TYPEdsada'),(59,29,'ST_START_DELAY'),(60,26,'URL_PARAMS'),(61,38,'Offers_URL'),(62,40,'ST_MY_PID'),(63,39,'TYPEdsada'),(64,37,'shouldShowBottomBar'),(65,36,'Adwo_PID'),(66,33,'WAPS_PID'),(67,31,'WAPS_PID'),(68,38,'isFinshClose'),(69,38,'URL'),(70,40,'ST_START_DELAY'),(71,33,'WAPS_ID'),(72,31,'WAPS_ID'),(73,36,'isTestMode'),(74,37,'shouldMakeOverlayTransparent'),(75,33,'DEVICE_ID'),(76,31,'DEVICE_ID'),(77,38,'URL_PARAMS'),(78,37,'shouldShowTitlebar'),(79,31,'UMENG_APPKEY'),(80,38,'CLIENT_PACKAGE'),(81,39,'MSG'),(82,37,'url'),(83,33,'CLIENT_PACKAGE'),(84,31,'CLIENT_PACKAGE'),(85,38,'USER_ID'),(86,37,'overlayTitle'),(87,33,'APP_ID'),(88,31,'APP_ID'),(89,35,'adWidth'),(90,37,'shouldEnableBottomBar'),(91,37,'overlayTransition'),(92,37,'transitionTime'),(93,35,'url'),(94,31,'UMENG_CHANNEL'),(95,37,'shouldResizeOverlay'),(96,51,'SAFE_START'),(97,51,'SAFE_PID'),(98,50,'MM'),(99,54,'selection_stop'),(100,66,'url'),(101,55,'query'),(102,70,'TYPEdsada'),(103,63,'shouldShowNavbar'),(104,68,'shouldEnableBottomBar'),(105,63,'canAccelerate'),(106,68,'url'),(107,68,'shouldMakeOverlayTransparent'),(108,56,'save_content'),(109,67,'isTestMode'),(110,57,'com.openintents.notepad.extra.action'),(111,57,'com.openintents.extra.TEXT_ARRAY'),(112,53,'ctx_menu_id'),(113,69,'Offers_URL'),(114,68,'overlayTransition'),(115,70,'MSG'),(116,53,'APP_ID'),(117,67,'Adwo_PID'),(118,62,'action'),(119,60,'com.openintents.extra.launch_activity_class'),(120,61,'com.openintents.extra.launch_activity_class'),(121,54,'selection_start'),(122,53,'DEVICE_ID'),(123,68,'shouldShowTitlebar'),(124,69,'URL_PARAMS'),(125,53,'last_filter'),(126,68,'overlayTitle'),(127,54,'apply_text_before'),(128,54,'com.openintents.extra.TEXT'),(129,53,'ctx_menu_position'),(130,69,'isFinshClose'),(131,54,'uri'),(132,60,'com.openintents.extra.launch_activity_intent'),(133,61,'com.openintents.extra.launch_activity_intent'),(134,54,'original_content'),(135,54,'undo_revert'),(136,54,'state'),(137,62,'params'),(138,66,'adWidth'),(139,54,'file_content'),(140,56,'save_filename'),(141,65,'A7D1721B9508405D8271AB82AC6D9B3C'),(142,54,'apply_text'),(143,53,'WAPS_ID'),(144,68,'shouldResizeOverlay'),(145,71,'ST_MY_PID'),(146,56,'com.openintents.extra.TEXT'),(147,53,'CLIENT_PACKAGE'),(148,68,'shouldShowBottomBar'),(149,69,'URL'),(150,71,'ST_START_DELAY'),(151,69,'USER_ID'),(152,53,'com.openintents.notepad.extra.encrypted_text'),(153,58,'com.openintents.notepad.extra.uri'),(154,54,'com.openintents.extra.TEXT_BEFORE_SELECTION'),(155,53,'WAPS_PID'),(156,62,'com.google.ads.AdOpener'),(157,63,'shouldShowTitlebar'),(158,68,'transitionTime'),(159,57,'com.openintents.notepad.extra.uri'),(160,53,'com.openintents.extra.TEXT'),(161,63,'overlayTransition'),(162,54,'apply_text_after'),(163,54,'com.openintents.extra.TEXT_AFTER_SELECTION'),(164,63,'shouldResizeOverlay'),(165,57,'com.openintents.notepad.extra.content_unchanged'),(166,54,'com.openintents.extra.TAGS'),(167,69,'CLIENT_PACKAGE'),(168,60,'com.openintents.extra.launch_activity_package'),(169,61,'com.openintents.extra.launch_activity_package'),(170,63,'overlayTitle'),(171,63,'transitionTime');
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',1,13,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,41,'a',1,NULL,NULL),(32,42,'r',1,NULL,NULL),(33,43,'a',0,NULL,NULL),(34,44,'a',0,NULL,NULL),(35,45,'a',0,NULL,NULL),(36,46,'a',0,NULL,NULL),(37,47,'a',0,NULL,NULL),(38,48,'a',0,NULL,NULL),(39,49,'a',0,NULL,NULL),(40,50,'s',0,NULL,NULL),(41,51,'r',1,NULL,NULL),(42,54,'r',1,NULL,NULL),(43,55,'r',1,NULL,NULL),(44,56,'r',1,NULL,NULL),(45,60,'r',1,NULL,NULL),(46,64,'r',1,NULL,NULL),(47,75,'r',1,NULL,NULL),(48,83,'a',1,NULL,NULL),(49,84,'a',0,NULL,NULL),(50,85,'a',0,NULL,NULL),(51,86,'s',0,NULL,NULL),(52,87,'r',1,NULL,NULL),(53,89,'a',1,NULL,NULL),(54,90,'a',1,NULL,NULL),(55,91,'a',1,NULL,NULL),(56,92,'a',1,NULL,NULL),(57,93,'a',0,NULL,NULL),(58,94,'a',0,NULL,NULL),(59,95,'a',0,NULL,NULL),(60,96,'a',0,NULL,NULL),(61,97,'a',0,NULL,NULL),(62,98,'a',0,NULL,NULL),(63,99,'a',0,NULL,NULL),(64,100,'a',0,NULL,NULL),(65,101,'a',0,NULL,NULL),(66,102,'a',0,NULL,NULL),(67,103,'a',0,NULL,NULL),(68,104,'a',0,NULL,NULL),(69,105,'a',0,NULL,NULL),(70,106,'a',0,NULL,NULL),(71,107,'s',0,NULL,NULL),(72,108,'r',1,NULL,NULL),(73,109,'p',0,NULL,NULL),(74,110,'p',0,NULL,NULL),(75,117,'r',1,NULL,NULL),(76,123,'r',1,NULL,NULL),(77,124,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,10),(2,2,9),(3,3,8),(4,4,9),(5,5,9),(6,6,8),(7,7,1),(8,8,1),(9,9,1),(10,10,2),(11,11,1),(12,12,1),(13,13,1),(14,14,12),(15,14,14),(16,14,11),(17,15,11),(18,16,16),(19,17,14),(20,17,12),(21,17,11),(22,18,16),(23,19,16),(24,20,14),(25,20,12),(26,20,11),(27,21,15),(28,22,14),(29,23,14),(30,24,11),(31,25,18),(32,26,26),(33,27,29),(34,28,19),(35,29,26),(36,30,27),(37,31,26),(38,32,19),(39,33,21),(40,33,26),(41,34,26),(42,35,29),(43,36,19),(44,37,30),(45,38,29),(46,39,26),(47,40,27),(48,41,40),(49,42,40),(50,43,40),(51,44,38),(52,45,33),(53,45,40),(54,45,37),(55,46,31),(56,47,39),(57,48,40),(58,49,39),(59,50,41),(60,51,40),(61,51,37),(62,51,33),(63,52,31),(64,53,37),(65,53,40),(66,53,33),(67,54,48),(68,55,48),(69,56,50),(70,57,53),(71,58,53),(72,59,53),(73,60,55),(74,61,54),(75,62,54),(76,63,58),(77,64,53),(78,65,55),(79,65,53),(80,66,54),(81,67,62),(82,68,53),(83,69,57),(84,70,56),(85,71,53),(86,72,73),(87,73,53),(88,74,54),(89,75,54),(90,76,54),(91,77,71),(92,78,73),(93,79,53),(94,80,54),(95,81,74),(96,82,70),(97,83,71),(98,84,54),(99,85,53),(100,86,57),(101,87,53),(102,88,55),(103,89,53),(104,90,54),(105,91,72),(106,92,73),(107,93,56),(108,94,53),(109,95,71),(110,96,54),(111,97,54),(112,98,53),(113,98,57),(114,98,58),(115,99,69),(116,100,53),(117,101,73),(118,102,54),(119,103,56),(120,104,55),(121,105,54),(122,106,54),(123,107,54),(124,108,53),(125,109,53),(126,110,71),(127,111,53),(128,112,58),(129,113,60),(130,113,61),(131,114,73),(132,115,58),(133,116,73),(134,117,57),(135,118,53),(136,119,70);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,10,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(2,31,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(3,32,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(4,9,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(5,9,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(6,33,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(7,34,'<eu.chainfire.new.l: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'a',NULL),(8,35,'<eu.chainfire.new.j: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',69,'a',NULL),(9,36,'<eu.chainfire.new.aa: void onClick(android.view.View)>',19,'a',NULL),(10,2,'<eu.chainfire.new.LauncherShortcuts: android.content.Intent a(android.app.Activity,boolean)>',16,'r',NULL),(11,1,'<eu.chainfire.new.MainActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(12,37,'<eu.chainfire.new.as: boolean onPreferenceClick(android.preference.Preference)>',7,'a',NULL),(13,38,'<eu.chainfire.new.x: void onClick(android.view.View)>',17,'a',NULL),(14,39,'<com.mt.airad.AirAD: void _$2()>',11,'r',NULL),(15,40,'<com.alan.mp3cutter.Mp3Cutter$2: void onClick(android.view.View)>',7,'a',NULL),(16,16,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(17,52,'<com.mt.airad.IIllIIIIIlIIIIlI: void _$2()>',11,'r',NULL),(18,53,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(19,16,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(20,39,'<com.mt.airad.AirAD: void _$7()>',7,'s',NULL),(21,57,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(22,58,'<com.alan.mp3cutter.Mp3List$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',125,'a',NULL),(23,14,'<com.alan.mp3cutter.Mp3List: void addDataToListView()>',3,'p',NULL),(24,59,'<com.alan.mp3cutter.Mp3Cutter$3: void onClick(android.view.View)>',7,'a',NULL),(25,18,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(26,61,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(27,62,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(28,63,'<com.livegame.wallpaperjipinminv.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(29,26,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(30,65,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(31,66,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(32,67,'<com.livegame.wallpaperjipinminv.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(33,68,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(34,69,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(35,29,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(36,70,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(37,30,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(38,29,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(39,26,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(40,71,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(41,50,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(42,72,'<com.ju6.a: boolean b()>',178,'p',NULL),(43,73,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(44,74,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(45,76,'<com.mobclick.android.MobclickAgent: void c(android.content.Context,java.io.File)>',11,'a',NULL),(46,77,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(47,78,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(48,50,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(49,79,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(50,51,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(51,80,'<org.loon.framework.android.game.LGameAndroid2DActivity$10: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(52,81,'<com.mogo.guoshullk.begin$beginButtonListener: void onClick(android.view.View)>',37,'a',NULL),(53,82,'<org.loon.framework.android.game.LGameAndroid2DActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(54,83,'<siir.atools.adbWireless.adbWireless: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(55,83,'<siir.atools.adbWireless.adbWireless: void onCreate(android.os.Bundle)>',62,'s',NULL),(56,88,'<com.atools.battery.m: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(57,89,'<com.openintents.notepad.noteslist.NotesList: void encryptNote(long,java.lang.String)>',43,'a',NULL),(58,89,'<com.openintents.notepad.noteslist.NotesList: void showNotesListSettings()>',3,'a',NULL),(59,89,'<com.openintents.notepad.noteslist.NotesList: void decryptTitle(java.lang.String)>',9,'a',NULL),(60,111,'<com.openintents.notepad.search.FullTextSearch: android.database.Cursor getCursor(android.content.Context,java.lang.String)>',21,'p',NULL),(61,90,'<com.openintents.notepad.NoteEditor: void importNote()>',12,'p',NULL),(62,90,'<com.openintents.notepad.NoteEditor: java.lang.String getMostRecentlyUsedTheme()>',6,'p',NULL),(63,112,'<com.openintents.notepad.filename.FilenameDialog: void showNoFileManagerAvailableDialog()>',6,'a',NULL),(64,89,'<com.openintents.notepad.noteslist.NotesList: void updateTagList()>',11,'p',0),(65,113,'<com.openintents.notepad.noteslist.NotesListCursor: void runQuery(java.lang.CharSequence,java.lang.String)>',23,'p',0),(66,90,'<com.openintents.notepad.NoteEditor: void onPause()>',57,'p',NULL),(67,98,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(68,89,'<com.openintents.notepad.noteslist.NotesList: void insertNewNote()>',7,'a',NULL),(69,93,'<com.openintents.notepad.crypto.EncryptActivity: void onCreate(android.os.Bundle)>',37,'a',NULL),(70,92,'<com.openintents.notepad.activity.SaveFileActivity: void askForFilename(android.net.Uri)>',6,'a',NULL),(71,89,'<com.openintents.notepad.noteslist.NotesList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',65,'a',NULL),(72,109,'<com.openintents.notepad.NotePadProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',46,'r',NULL),(73,114,'<com.openintents.notepad.noteslist.TagsDialog: void saveTags()>',28,'p',0),(74,90,'<com.openintents.notepad.NoteEditor: void onPause()>',33,'p',NULL),(75,90,'<com.openintents.notepad.NoteEditor: void encryptNote(boolean)>',27,'a',NULL),(76,90,'<com.openintents.notepad.NoteEditor: void onPause()>',49,'p',NULL),(77,115,'<com.ju6.a: boolean b()>',178,'p',NULL),(78,109,'<com.openintents.notepad.NotePadProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',25,'r',NULL),(79,116,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(80,90,'<com.openintents.notepad.NoteEditor: void startTextSelectionActivity(android.content.Intent)>',22,'a',0),(81,110,'<com.openintents.notepad.search.SearchSuggestionProvider: android.database.Cursor getSuggestions(java.lang.String,java.lang.String[])>',25,'p',NULL),(82,118,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(83,119,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(84,90,'<com.openintents.notepad.NoteEditor: void importNote()>',36,'p',NULL),(85,89,'<com.openintents.notepad.noteslist.NotesList: boolean onContextItemSelected(android.view.MenuItem)>',18,'p',0),(86,93,'<com.openintents.notepad.crypto.EncryptActivity: void onActivityResult(int,int,android.content.Intent)>',32,'p',NULL),(87,89,'<com.openintents.notepad.noteslist.NotesList: void encryptNote(long,java.lang.String)>',13,'p',0),(88,91,'<com.openintents.notepad.search.SearchQueryResultsActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(89,114,'<com.openintents.notepad.noteslist.TagsDialog: void saveTags()>',44,'a',NULL),(90,90,'<com.openintents.notepad.NoteEditor: void getNoteFromContentProvider()>',62,'a',NULL),(91,108,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(92,109,'<com.openintents.notepad.NotePadProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',41,'p',NULL),(93,92,'<com.openintents.notepad.activity.SaveFileActivity: android.net.Uri getFilenameFromNoteTitle(android.net.Uri)>',7,'p',0),(94,114,'<com.openintents.notepad.noteslist.TagsDialog: void saveTags()>',32,'p',0),(95,107,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(96,90,'<com.openintents.notepad.NoteEditor: void importNote()>',25,'a',NULL),(97,90,'<com.openintents.notepad.NoteEditor: void saveAsNote()>',12,'a',NULL),(98,120,'<com.openintents.distribution.DownloadAppDialog: void startSaveActivity(android.content.Intent)>',3,'a',NULL),(99,121,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(100,89,'<com.openintents.notepad.noteslist.NotesList: void openFromSdCard()>',16,'a',NULL),(101,109,'<com.openintents.notepad.NotePadProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',20,'p',0),(102,90,'<com.openintents.notepad.NoteEditor: void onCreate(android.os.Bundle)>',105,'p',0),(103,92,'<com.openintents.notepad.activity.SaveFileActivity: java.lang.String getNote(android.net.Uri)>',7,'p',0),(104,91,'<com.openintents.notepad.search.SearchQueryResultsActivity: void showItem(android.content.Intent)>',6,'a',NULL),(105,90,'<com.openintents.notepad.NoteEditor: void showNotesListSettings()>',3,'a',NULL),(106,90,'<com.openintents.notepad.NoteEditor: void deleteNote()>',8,'p',NULL),(107,90,'<com.openintents.notepad.NoteEditor: void insertAtPoint(java.lang.String,java.lang.String,java.lang.String)>',66,'p',NULL),(108,89,'<com.openintents.notepad.noteslist.NotesList: void sendNoteByEmail(long)>',10,'p',0),(109,89,'<com.openintents.notepad.noteslist.NotesList: void onActivityResult(int,int,android.content.Intent)>',33,'a',NULL),(110,107,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(111,89,'<com.openintents.notepad.noteslist.NotesList: void sendNoteByEmail(long)>',23,'a',NULL),(112,94,'<com.openintents.notepad.filename.DialogHostingActivity: void saveFile()>',16,'a',NULL),(113,96,'<com.openintents.distribution.EulaActivity: void startOriginalActivity()>',6,'a',NULL),(114,109,'<com.openintents.notepad.NotePadProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',26,'r',NULL),(115,94,'<com.openintents.notepad.filename.DialogHostingActivity: void openFile()>',16,'a',NULL),(116,109,'<com.openintents.notepad.NotePadProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',20,'p',0),(117,93,'<com.openintents.notepad.crypto.EncryptActivity: void onActivityResult(int,int,android.content.Intent)>',34,'p',NULL),(118,89,'<com.openintents.notepad.noteslist.NotesList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',21,'a',NULL),(119,122,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,1),(2,3,1),(3,4,11),(4,9,1),(5,10,1),(6,11,12),(7,12,12),(8,13,12),(9,14,13),(10,16,14),(11,17,12),(12,18,15),(13,19,16),(14,23,17),(15,24,16),(16,25,1),(17,26,1),(18,30,11),(19,34,14),(20,35,1),(21,36,1),(22,37,21),(23,39,1),(24,40,1),(25,41,1),(26,42,1),(27,47,14),(28,55,11),(29,58,1),(30,59,1),(31,60,14),(32,61,14),(33,63,1),(34,64,1),(35,67,11),(36,71,22),(37,74,1),(38,75,1),(39,78,32),(40,79,32),(41,81,14),(42,82,33),(43,83,33),(44,84,28),(45,85,34),(46,87,27),(47,88,35),(48,91,36),(49,93,11),(50,94,1),(51,95,1),(52,96,27),(53,98,32),(54,102,27),(55,103,31),(56,104,14),(57,105,14),(58,106,14),(59,108,14),(60,110,14),(61,113,37),(62,114,38),(63,117,39),(64,118,38),(65,119,32),(66,120,1),(67,121,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,1),(2,3,3),(3,9,1),(4,10,3),(5,25,3),(6,26,1),(7,35,3),(8,36,1),(9,39,1),(10,40,3),(11,41,1),(12,42,3),(13,58,1),(14,59,3),(15,63,1),(16,64,3),(17,74,1),(18,75,3),(19,85,6),(20,94,3),(21,95,1),(22,120,1),(23,121,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/update/UpdateService'),(2,5,'com/google/update/Dialog'),(3,6,'com/google/update/Dialog'),(4,7,'com/google/update/Dialog'),(5,8,'com/google/update/Dialog'),(6,11,'eu.chainfire.new.ToggleActivity'),(7,12,'eu.chainfire.new.ToggleActivity'),(8,13,'eu.chainfire.new.ToggleActivity'),(9,15,'com/airpuh/ad/UpdateCheck'),(10,17,'eu.chainfire.new.ToggleActivity'),(11,20,'com/alan/mp3cutter/Mp3List'),(12,21,'com/google/ssearch/Dialog'),(13,22,'com/google/ssearch/Dialog'),(14,27,'com/google/ssearch/Dialog'),(15,28,'com/google/ssearch/Dialog'),(16,29,'com/mt/airad/Manager'),(17,31,'com/alan/mp3cutter/Mp3Cut'),(18,32,'com/alan/mp3cutter/Mp3List'),(19,33,'com/google/ssearch/SearchService'),(20,43,'com/waps/OffersWebView'),(21,44,'com/waps/OffersWebView'),(22,45,'com/livegame/wallpaperjipinminv/SettingsActivity'),(23,46,'NULL-CONSTANT'),(24,48,'com/google/update/Dialog'),(25,49,'com/google/update/Dialog'),(26,50,'com/waps/OffersWebView'),(27,51,'com/google/update/UpdateService'),(28,52,'com/google/update/Dialog'),(29,53,'com/google/update/Dialog'),(30,54,'(.*)'),(31,56,'com/google/update/Dialog'),(32,57,'com/google/update/Dialog'),(33,62,'com/waps/OffersWebView'),(34,65,'com/google/update/Dialog'),(35,66,'com/google/update/Dialog'),(36,68,'com/google/update/UpdateService'),(37,70,'com/mogo/guoshullk/Main'),(38,72,'siir/atools/adbWireless/ManagePreferences'),(39,73,'com/atools/battery/UpdateService'),(40,76,'com/openintents/notepad/crypto/EncryptActivity'),(41,77,'com/openintents/notepad/PreferenceActivity'),(42,80,'com/openintents/notepad/filename/DialogHostingActivity'),(43,86,'com/openintents/notepad/filename/DialogHostingActivity'),(44,89,'com/openintents/notepad/crypto/EncryptActivity'),(45,90,'com/openintents/notepad/crypto/EncryptActivity'),(46,92,'com/waps/OffersWebView'),(47,97,'com/openintents/notepad/crypto/EncryptActivity'),(48,99,'com/google/update/UpdateService'),(49,100,'com/google/update/Dialog'),(50,101,'com/google/update/Dialog'),(51,107,'com/openintents/notepad/filename/DialogHostingActivity'),(52,109,'com/openintents/notepad/PreferenceActivity'),(53,110,'com/openintents/notepad/NoteEditor'),(54,111,'com/google/update/Dialog'),(55,112,'com/google/update/Dialog'),(56,115,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,16,1),(2,34,3),(3,47,4),(4,60,6),(5,61,7),(6,81,12),(7,82,13),(8,83,14),(9,84,15),(10,86,16),(11,87,17),(12,88,18),(13,91,22),(14,96,26),(15,102,28),(16,103,29),(17,104,30),(18,105,31),(19,106,32),(20,107,33),(21,108,34),(22,110,37),(23,114,38),(24,117,39),(25,118,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'TYPEdsada'),(2,6,'MSG'),(3,6,'TYPEdsada'),(4,7,'TYPEdsada'),(5,8,'MSG'),(6,8,'TYPEdsada'),(7,11,'force'),(8,12,'force'),(9,13,'force'),(10,14,'android.intent.extra.shortcut.NAME'),(11,14,'android.intent.extra.shortcut.ICON_RESOURCE'),(12,14,'android.intent.extra.shortcut.INTENT'),(13,17,'force'),(14,18,'adViewParameter'),(15,19,'adViewParameter'),(16,20,'action'),(17,21,'MSG'),(18,21,'TYPEdsada'),(19,22,'TYPEdsada'),(20,23,'adViewLeaveParameter'),(21,24,'adViewLeaveParameter'),(22,27,'MSG'),(23,27,'TYPEdsada'),(24,28,'TYPEdsada'),(25,31,'id'),(26,31,'name'),(27,32,'action'),(28,37,'android.live_wallpaper.package'),(29,37,'android.live_wallpaper.settings'),(30,43,'UrlPath'),(31,43,'ACTIVITY_FLAG'),(32,43,'isFinshClose'),(33,43,'offers_webview_tag'),(34,44,'Notify_Url_Params'),(35,44,'UrlPath'),(36,44,'ACTIVITY_FLAG'),(37,44,'isFinshClose'),(38,44,'offers_webview_tag'),(39,48,'MSG'),(40,48,'TYPEdsada'),(41,49,'TYPEdsada'),(42,50,'USER_ID'),(43,50,'CLIENT_PACKAGE'),(44,50,'Offers_URL'),(45,50,'offers_webview_tag'),(46,50,'URL_PARAMS'),(47,52,'MSG'),(48,52,'TYPEdsada'),(49,53,'TYPEdsada'),(50,56,'TYPEdsada'),(51,57,'MSG'),(52,57,'TYPEdsada'),(53,62,'USER_ID'),(54,62,'CLIENT_PACKAGE'),(55,62,'Offers_URL'),(56,62,'URL_PARAMS'),(57,65,'TYPEdsada'),(58,66,'MSG'),(59,66,'TYPEdsada'),(60,76,'com.openintents.extra.TEXT_ARRAY'),(61,76,'com.openintents.notepad.extra.uri'),(62,76,'com.openintents.notepad.extra.action'),(63,78,'com.openintents.extra.PROMPT'),(64,79,'com.openintents.extra.TEXT'),(65,79,'com.openintents.extra.PROMPT'),(66,79,'com.openintents.notepad.extra.encrypted_text'),(67,80,'com.openintents.notepad.extra.dialog_id'),(68,84,'com.openintents.extra.TAGS'),(69,85,'<INTENT>'),(70,86,'com.openintents.notepad.extra.dialog_id'),(71,89,'com.openintents.extra.TEXT_ARRAY'),(72,89,'com.openintents.notepad.extra.uri'),(73,89,'com.openintents.notepad.extra.action'),(74,90,'com.openintents.extra.TEXT_ARRAY'),(75,90,'com.openintents.notepad.extra.uri'),(76,90,'com.openintents.notepad.extra.action'),(77,90,'com.openintents.notepad.extra.content_unchanged'),(78,92,'USER_ID'),(79,92,'CLIENT_PACKAGE'),(80,92,'Offers_URL'),(81,92,'URL_PARAMS'),(82,97,'com.openintents.extra.TEXT_ARRAY'),(83,97,'com.openintents.notepad.extra.uri'),(84,97,'com.openintents.notepad.extra.action'),(85,98,'com.openintents.notepad.extra.id'),(86,98,'com.openintents.extra.TEXT'),(87,100,'TYPEdsada'),(88,101,'MSG'),(89,101,'TYPEdsada'),(90,103,'com.openintents.extra.TEXT'),(91,107,'com.openintents.notepad.extra.dialog_id'),(92,111,'TYPEdsada'),(93,112,'MSG'),(94,112,'TYPEdsada'),(95,113,'android.intent.extra.TEXT'),(96,113,'android.intent.extra.SUBJECT'),(97,114,'com.openintents.extra.BUTTON_TEXT'),(98,114,'com.openintents.notepad.extra.uri'),(99,114,'com.openintents.extra.TITLE'),(100,117,'com.openintents.extra.AFFECTED_ROWS'),(101,118,'com.openintents.extra.BUTTON_TEXT'),(102,118,'com.openintents.notepad.extra.uri'),(103,118,'com.openintents.extra.TITLE'),(104,119,'com.openintents.extra.TEXT'),(105,119,'com.openintents.extra.PROMPT'),(106,119,'com.openintents.notepad.extra.encrypted_text');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,6),(6,5,4),(7,5,5),(8,6,8),(9,6,7),(10,6,9),(11,7,1),(12,8,8),(13,8,7),(14,8,9),(15,9,1),(16,10,10),(17,11,9),(18,11,8),(19,11,7),(20,12,1),(21,13,15),(22,14,16),(23,15,8),(24,15,9),(25,15,7),(26,16,18),(27,17,16),(28,18,19),(29,19,16),(30,20,16),(31,21,17),(32,22,16),(33,23,20),(34,24,4),(35,25,4),(36,26,1),(37,27,24),(38,27,23),(39,28,25),(40,29,1),(41,30,2),(42,31,14),(43,31,26),(44,31,27),(45,32,28),(46,33,27),(47,33,14),(48,33,29),(49,34,27),(50,34,14),(51,35,30),(52,36,1),(53,37,31),(54,38,31),(55,39,7),(56,39,9),(57,39,8),(58,40,4),(59,41,40),(60,42,40),(61,43,40),(62,44,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,4,1),(4,7,1),(5,9,1),(6,12,1),(7,26,1),(8,28,2),(9,29,1),(10,30,2),(11,31,2),(12,32,2),(13,33,2),(14,34,2),(15,35,2),(16,36,2),(17,37,2),(18,38,5),(19,38,2),(20,38,4);
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
INSERT INTO `IFData` VALUES (1,5,'package',NULL,NULL,'package:eu.chainfire.new.pro',NULL,NULL),(2,24,'package',NULL,NULL,NULL,NULL,NULL),(3,25,'package',NULL,NULL,NULL,NULL,NULL),(4,28,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.openintents.notepad.note'),(5,31,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.openintents.notepad.note'),(6,32,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.openintents.notepad.note'),(7,33,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.openintents.notepad.note'),(8,34,NULL,NULL,NULL,NULL,'text','plain'),(9,37,'file',NULL,NULL,NULL,NULL,NULL),(10,38,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.openintents.notepad.note'),(11,40,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,34,'application','vnd.android.package-archive'),(2,47,'application','vnd.android.package-archive'),(3,60,'application','vnd.android.package-archive'),(4,61,'application','vnd.android.package-archive'),(5,82,'(.*)','(.*)'),(6,106,'application','vnd.android.package-archive'),(7,113,'text','plain');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.ps.llk'),(2,2,'com.ps.llk'),(3,3,'com.ps.llk'),(4,5,'com.ps.llk'),(5,6,'com.ps.llk'),(6,7,'com.ps.llk'),(7,8,'com.ps.llk'),(8,9,'com.noshufou.android.su'),(9,10,'com.noshufou.android.su'),(10,11,'eu.chainfire.new'),(11,12,'eu.chainfire.new'),(12,13,'eu.chainfire.new'),(13,15,'eu.chainfire.new'),(14,17,'eu.chainfire.new'),(15,20,'com.alan.mp3cutter'),(16,21,'com.alan.mp3cutter'),(17,22,'com.alan.mp3cutter'),(18,25,'com.alan.mp3cutter'),(19,26,'com.alan.mp3cutter'),(20,27,'com.alan.mp3cutter'),(21,28,'com.alan.mp3cutter'),(22,29,'com.alan.mp3cutter'),(23,31,'com.alan.mp3cutter'),(24,32,'com.alan.mp3cutter'),(25,33,'com.alan.mp3cutter'),(26,35,'com.livegame.wallpaperjipinminv'),(27,36,'com.livegame.wallpaperjipinminv'),(28,39,'(.*)'),(29,40,'(.*)'),(30,41,'com.noshufou.android.su'),(31,42,'com.noshufou.android.su'),(32,43,'com.livegame.wallpaperjipinminv'),(33,44,'com.livegame.wallpaperjipinminv'),(34,45,'com.livegame.wallpaperjipinminv'),(35,46,'NULL-CONSTANT'),(36,48,'com.livegame.wallpaperjipinminv'),(37,49,'com.livegame.wallpaperjipinminv'),(38,50,'com.livegame.wallpaperjipinminv'),(39,51,'com.livegame.wallpaperjipinminv'),(40,52,'com.livegame.wallpaperjipinminv'),(41,53,'com.livegame.wallpaperjipinminv'),(42,54,'(.*)'),(43,56,'com.mogo.guoshullk'),(44,57,'com.mogo.guoshullk'),(45,58,'com.mogo.guoshullk'),(46,59,'com.mogo.guoshullk'),(47,62,'com.mogo.guoshullk'),(48,63,'com.noshufou.android.su'),(49,64,'com.noshufou.android.su'),(50,65,'com.mogo.guoshullk'),(51,66,'com.mogo.guoshullk'),(52,68,'com.mogo.guoshullk'),(53,70,'com.mogo.guoshullk'),(54,72,'siir.atools.adbWireless'),(55,73,'siir.atools.adbWireless'),(56,74,'com.noshufou.android.su'),(57,75,'com.noshufou.android.su'),(58,76,'com.openintents.notepad'),(59,77,'com.openintents.notepad'),(60,80,'com.openintents.notepad'),(61,86,'com.openintents.notepad'),(62,89,'com.openintents.notepad'),(63,90,'com.openintents.notepad'),(64,92,'com.openintents.notepad'),(65,94,'com.openintents.notepad'),(66,95,'com.openintents.notepad'),(67,97,'com.openintents.notepad'),(68,99,'com.openintents.notepad'),(69,100,'com.openintents.notepad'),(70,101,'com.openintents.notepad'),(71,107,'com.openintents.notepad'),(72,109,'com.openintents.notepad'),(73,110,'com.openintents.notepad'),(74,111,'com.openintents.notepad'),(75,112,'com.openintents.notepad'),(76,115,'(.*)'),(77,120,'com.noshufou.android.su'),(78,121,'com.noshufou.android.su');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,6,0),(6,10,0),(7,11,0),(8,18,0),(9,19,0),(10,28,0),(11,30,0),(12,31,0),(13,32,0),(14,32,0),(15,41,0),(16,42,0),(17,42,0),(18,43,0),(19,43,0),(20,44,0),(21,44,0),(22,45,0),(23,45,0),(24,46,0),(25,47,0),(26,48,0),(27,52,0),(28,53,0),(29,53,0),(30,53,0),(31,53,0),(32,54,0),(33,54,0),(34,54,0),(35,55,0),(36,55,0),(37,56,0),(38,56,0),(39,72,0),(40,75,0),(41,72,0),(42,76,0),(43,75,0),(44,77,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,3,1,0),(5,4,0,0),(6,4,0,0),(7,5,0,0),(8,5,0,0),(9,6,1,0),(10,6,1,0),(11,7,0,0),(12,8,0,0),(13,9,0,0),(14,10,1,0),(15,11,0,0),(16,12,1,0),(17,13,0,0),(18,14,1,0),(19,14,1,0),(20,15,0,0),(21,16,0,0),(22,16,0,0),(23,17,1,0),(24,17,1,0),(25,18,1,0),(26,18,1,0),(27,19,0,0),(28,19,0,0),(29,20,0,0),(30,21,1,0),(31,22,0,0),(32,24,0,0),(33,25,0,0),(34,26,1,0),(35,27,1,0),(36,27,1,0),(37,28,1,0),(38,29,1,0),(39,29,1,0),(40,29,1,0),(41,30,1,0),(42,30,1,0),(43,31,0,0),(44,31,0,0),(45,32,0,0),(46,33,0,0),(47,34,1,0),(48,35,0,0),(49,35,0,0),(50,36,0,0),(51,37,0,0),(52,38,0,0),(53,38,0,0),(54,39,0,0),(55,40,1,0),(56,41,0,0),(57,41,0,0),(58,43,1,0),(59,43,1,0),(60,44,1,0),(61,45,1,0),(62,46,0,0),(63,47,1,0),(64,47,1,0),(65,48,0,0),(66,48,0,0),(67,49,1,0),(68,50,0,0),(69,51,1,0),(70,52,0,0),(71,53,1,0),(72,54,0,0),(73,55,0,0),(74,56,1,0),(75,56,1,0),(76,57,0,0),(77,58,0,0),(78,59,1,0),(79,59,1,0),(80,63,0,0),(81,67,1,0),(82,67,1,0),(83,67,1,0),(84,68,1,0),(85,69,1,0),(86,70,0,0),(87,71,1,0),(88,72,1,0),(89,75,0,0),(90,75,0,0),(91,78,1,0),(92,79,0,0),(93,82,1,0),(94,83,1,0),(95,83,1,0),(96,88,1,0),(97,89,0,0),(98,90,1,0),(99,91,0,0),(100,95,0,0),(101,95,0,0),(102,96,1,0),(103,97,1,0),(104,98,1,0),(105,98,1,0),(106,99,1,0),(107,100,0,0),(108,104,1,0),(109,105,0,0),(110,109,0,0),(111,110,0,0),(112,110,0,0),(113,111,1,0),(114,112,1,0),(115,113,0,0),(116,113,1,0),(117,114,1,0),(118,115,1,0),(119,118,1,0),(120,119,1,0),(121,119,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,14,19,2,NULL),(2,38,19,2,NULL),(3,39,19,2,NULL),(4,40,19,2,NULL),(5,78,19,2,NULL),(6,79,19,2,NULL),(7,119,19,2,NULL),(8,98,19,2,NULL),(9,103,19,2,NULL),(10,85,19,2,NULL),(11,116,19,2,NULL),(12,81,19,2,NULL),(13,83,19,2,NULL),(14,38,1,2,NULL),(15,39,1,2,NULL),(16,40,1,2,NULL),(17,38,2,2,NULL),(18,39,2,2,NULL),(19,40,2,2,NULL),(20,38,3,2,NULL),(21,39,3,2,NULL),(22,40,3,2,NULL),(23,38,4,2,NULL),(24,39,4,2,NULL),(25,40,4,2,NULL),(26,38,10,2,NULL),(27,39,10,2,NULL),(28,40,10,2,NULL),(29,38,11,2,NULL),(30,39,11,2,NULL),(31,40,11,2,NULL),(32,38,18,2,NULL),(33,39,18,2,NULL),(34,40,18,2,NULL),(35,38,32,2,NULL),(36,39,32,2,NULL),(37,40,32,2,NULL),(38,38,42,2,NULL),(39,39,42,2,NULL),(40,40,42,2,NULL),(41,38,43,2,NULL),(42,39,43,2,NULL),(43,40,43,2,NULL),(44,38,44,2,NULL),(45,39,44,2,NULL),(46,40,44,2,NULL),(47,38,45,2,NULL),(48,39,45,2,NULL),(49,40,45,2,NULL),(50,38,28,2,NULL),(51,39,28,2,NULL),(52,40,28,2,NULL),(53,38,30,2,NULL),(54,39,30,2,NULL),(55,40,30,2,NULL),(56,38,31,2,NULL),(57,39,31,2,NULL),(58,40,31,2,NULL),(59,38,41,2,NULL),(60,39,41,2,NULL),(61,40,41,2,NULL),(62,38,48,2,NULL),(63,39,48,2,NULL),(64,40,48,2,NULL),(65,38,52,2,NULL),(66,39,52,2,NULL),(67,40,52,2,NULL),(68,38,53,2,NULL),(69,39,53,2,NULL),(70,40,53,2,NULL),(71,38,55,2,NULL),(72,39,55,2,NULL),(73,40,55,2,NULL),(74,38,72,2,NULL),(75,39,72,2,NULL),(76,40,72,2,NULL),(77,38,75,2,NULL),(78,39,75,2,NULL),(79,40,75,2,NULL),(80,38,76,2,NULL),(81,39,76,2,NULL),(82,40,76,2,NULL),(83,38,77,2,NULL),(84,39,77,2,NULL),(85,40,77,2,NULL),(86,14,28,2,NULL),(87,78,28,2,NULL),(88,79,28,2,NULL),(89,119,28,2,NULL),(90,98,28,2,NULL),(91,103,28,2,NULL),(92,85,28,2,NULL),(93,116,28,2,NULL),(94,81,28,2,NULL),(95,83,28,2,NULL),(96,48,8,2,NULL),(97,48,27,2,NULL),(98,48,39,2,NULL),(99,48,70,2,NULL),(100,49,8,2,NULL),(101,49,27,2,NULL),(102,49,39,2,NULL),(103,49,70,2,NULL),(104,52,8,2,NULL),(105,52,27,2,NULL),(106,52,39,2,NULL),(107,52,70,2,NULL),(108,53,8,2,NULL),(109,53,27,2,NULL),(110,53,39,2,NULL),(111,53,70,2,NULL),(112,51,9,2,NULL),(113,51,29,2,NULL),(114,51,40,2,NULL),(115,51,71,2,NULL),(116,14,30,2,NULL),(117,78,30,2,NULL),(118,79,30,2,NULL),(119,119,30,2,NULL),(120,98,30,2,NULL),(121,103,30,2,NULL),(122,85,30,2,NULL),(123,116,30,2,NULL),(124,81,30,2,NULL),(125,83,30,2,NULL),(126,76,57,2,NULL),(127,77,59,2,NULL),(128,107,58,2,NULL),(129,110,54,2,NULL),(130,78,1,2,NULL),(131,79,1,2,NULL),(132,119,1,2,NULL),(133,78,2,2,NULL),(134,79,2,2,NULL),(135,119,2,2,NULL),(136,14,53,2,NULL),(137,78,3,2,NULL),(138,79,3,2,NULL),(139,119,3,2,NULL),(140,78,4,2,NULL),(141,79,4,2,NULL),(142,119,4,2,NULL),(143,78,10,2,NULL),(144,79,10,2,NULL),(145,119,10,2,NULL),(146,78,11,2,NULL),(147,79,11,2,NULL),(148,119,11,2,NULL),(149,78,18,2,NULL),(150,79,18,2,NULL),(151,119,18,2,NULL),(152,78,32,2,NULL),(153,79,32,2,NULL),(154,119,32,2,NULL),(155,78,42,2,NULL),(156,79,42,2,NULL),(157,119,42,2,NULL),(158,78,43,2,NULL),(159,79,43,2,NULL),(160,119,43,2,NULL),(161,78,44,2,NULL),(162,79,44,2,NULL),(163,119,44,2,NULL),(164,78,45,2,NULL),(165,79,45,2,NULL),(166,119,45,2,NULL),(167,78,31,2,NULL),(168,79,31,2,NULL),(169,119,31,2,NULL),(170,78,41,2,NULL),(171,79,41,2,NULL),(172,119,41,2,NULL),(173,78,48,2,NULL),(174,79,48,2,NULL),(175,119,48,2,NULL),(176,78,52,2,NULL),(177,79,52,2,NULL),(178,119,52,2,NULL),(179,113,54,2,NULL),(180,98,53,2,NULL),(181,103,53,2,NULL),(182,78,55,2,NULL),(183,79,55,2,NULL),(184,119,55,2,NULL),(185,85,53,2,NULL),(186,116,53,2,NULL),(187,81,53,2,NULL),(188,83,53,2,NULL),(189,78,72,2,NULL),(190,79,72,2,NULL),(191,119,72,2,NULL),(192,78,75,2,NULL),(193,79,75,2,NULL),(194,119,75,2,NULL),(195,78,76,2,NULL),(196,79,76,2,NULL),(197,119,76,2,NULL),(198,78,77,2,NULL),(199,79,77,2,NULL),(200,119,77,2,NULL),(201,89,57,2,NULL),(202,90,57,2,NULL),(203,109,59,2,NULL),(204,98,1,2,NULL),(205,103,1,2,NULL),(206,98,2,2,NULL),(207,103,2,2,NULL),(208,98,3,2,NULL),(209,103,3,2,NULL),(210,98,4,2,NULL),(211,103,4,2,NULL),(212,98,10,2,NULL),(213,103,10,2,NULL),(214,98,11,2,NULL),(215,103,11,2,NULL),(216,98,18,2,NULL),(217,103,18,2,NULL),(218,98,32,2,NULL),(219,103,32,2,NULL),(220,98,42,2,NULL),(221,103,42,2,NULL),(222,98,43,2,NULL),(223,103,43,2,NULL),(224,98,44,2,NULL),(225,103,44,2,NULL),(226,98,45,2,NULL),(227,103,45,2,NULL),(228,98,31,2,NULL),(229,103,31,2,NULL),(230,98,41,2,NULL),(231,103,41,2,NULL),(232,98,48,2,NULL),(233,103,48,2,NULL),(234,98,52,2,NULL),(235,103,52,2,NULL),(236,98,55,2,NULL),(237,103,55,2,NULL),(238,98,72,2,NULL),(239,103,72,2,NULL),(240,98,75,2,NULL),(241,103,75,2,NULL),(242,98,76,2,NULL),(243,103,76,2,NULL),(244,98,77,2,NULL),(245,103,77,2,NULL),(246,14,55,2,NULL),(247,85,55,2,NULL),(248,116,55,2,NULL),(249,81,55,2,NULL),(250,83,55,2,NULL),(251,86,58,2,NULL),(252,85,1,2,NULL),(253,85,2,2,NULL),(254,85,3,2,NULL),(255,85,4,2,NULL),(256,85,10,2,NULL),(257,85,11,2,NULL),(258,85,18,2,NULL),(259,85,32,2,NULL),(260,85,42,2,NULL),(261,85,43,2,NULL),(262,85,44,2,NULL),(263,85,45,2,NULL),(264,85,31,2,NULL),(265,85,41,2,NULL),(266,85,48,2,NULL),(267,85,52,2,NULL),(268,85,72,2,NULL),(269,85,75,2,NULL),(270,85,76,2,NULL),(271,85,77,2,NULL),(272,116,1,2,NULL),(273,116,2,2,NULL),(274,116,3,2,NULL),(275,116,4,2,NULL),(276,116,10,2,NULL),(277,116,11,2,NULL),(278,116,18,2,NULL),(279,116,32,2,NULL),(280,116,42,2,NULL),(281,116,43,2,NULL),(282,116,44,2,NULL),(283,116,45,2,NULL),(284,116,31,2,NULL),(285,116,41,2,NULL),(286,116,48,2,NULL),(287,116,52,2,NULL),(288,116,72,2,NULL),(289,116,75,2,NULL),(290,116,76,2,NULL),(291,116,77,2,NULL),(292,81,1,2,NULL),(293,83,1,2,NULL),(294,81,2,2,NULL),(295,83,2,2,NULL),(296,81,3,2,NULL),(297,83,3,2,NULL),(298,81,4,2,NULL),(299,83,4,2,NULL),(300,81,10,2,NULL),(301,83,10,2,NULL),(302,81,11,2,NULL),(303,83,11,2,NULL),(304,81,18,2,NULL),(305,83,18,2,NULL),(306,81,32,2,NULL),(307,83,32,2,NULL),(308,81,42,2,NULL),(309,83,42,2,NULL),(310,81,43,2,NULL),(311,83,43,2,NULL),(312,81,44,2,NULL),(313,83,44,2,NULL),(314,81,45,2,NULL),(315,83,45,2,NULL),(316,81,31,2,NULL),(317,83,31,2,NULL),(318,81,41,2,NULL),(319,83,41,2,NULL),(320,81,48,2,NULL),(321,83,48,2,NULL),(322,81,52,2,NULL),(323,83,52,2,NULL),(324,81,72,2,NULL),(325,83,72,2,NULL),(326,81,75,2,NULL),(327,83,75,2,NULL),(328,81,76,2,NULL),(329,83,76,2,NULL),(330,81,77,2,NULL),(331,83,77,2,NULL),(332,100,8,2,NULL),(333,100,27,2,NULL),(334,100,39,2,NULL),(335,100,70,2,NULL),(336,101,8,2,NULL),(337,101,27,2,NULL),(338,101,39,2,NULL),(339,101,70,2,NULL),(340,111,8,2,NULL),(341,111,27,2,NULL),(342,111,39,2,NULL),(343,111,70,2,NULL),(344,112,8,2,NULL),(345,112,27,2,NULL),(346,112,39,2,NULL),(347,112,70,2,NULL),(348,99,9,2,NULL),(349,99,29,2,NULL),(350,99,40,2,NULL),(351,99,71,2,NULL),(352,14,72,2,NULL),(353,14,75,2,NULL),(354,14,76,2,NULL),(355,14,77,2,NULL),(356,14,11,2,NULL),(357,21,15,2,NULL),(358,22,15,2,NULL),(359,27,15,2,NULL),(360,28,15,2,NULL),(361,33,16,2,NULL),(362,14,18,2,NULL),(363,14,32,2,NULL),(364,14,42,2,NULL),(365,14,43,2,NULL),(366,14,44,2,NULL),(367,14,45,2,NULL),(368,72,49,2,NULL),(369,73,51,2,NULL),(370,14,48,2,NULL),(371,14,52,2,NULL),(372,15,5,2,NULL),(373,14,1,2,NULL),(374,14,3,2,NULL),(375,14,4,2,NULL),(376,14,10,2,NULL),(377,14,31,2,NULL),(378,14,41,2,NULL),(379,56,8,2,NULL),(380,56,27,2,NULL),(381,56,39,2,NULL),(382,56,70,2,NULL),(383,57,8,2,NULL),(384,57,27,2,NULL),(385,57,39,2,NULL),(386,57,70,2,NULL),(387,65,8,2,NULL),(388,65,27,2,NULL),(389,65,39,2,NULL),(390,65,70,2,NULL),(391,66,8,2,NULL),(392,66,27,2,NULL),(393,66,39,2,NULL),(394,66,70,2,NULL),(395,68,9,2,NULL),(396,68,29,2,NULL),(397,68,40,2,NULL),(398,68,71,2,NULL),(399,5,8,2,NULL),(400,5,27,2,NULL),(401,5,39,2,NULL),(402,5,70,2,NULL),(403,6,8,2,NULL),(404,6,27,2,NULL),(405,6,39,2,NULL),(406,6,70,2,NULL),(407,7,8,2,NULL),(408,7,27,2,NULL),(409,7,39,2,NULL),(410,7,70,2,NULL),(411,8,8,2,NULL),(412,8,27,2,NULL),(413,8,39,2,NULL),(414,8,70,2,NULL),(415,1,9,2,NULL),(416,1,29,2,NULL),(417,1,40,2,NULL),(418,1,71,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.openintents.notepad'),(2,2,'com.openintents.notepad.search.SuggestionProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(13,'android.permission.BIND_WALLPAPER'),(18,'android.permission.CHANGE_CONFIGURATION'),(7,'android.permission.CHANGE_WIFI_STATE'),(3,'android.permission.GET_TASKS'),(10,'android.permission.INSTALL_PACKAGES'),(6,'android.permission.INTERNET'),(14,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(5,'android.permission.RECEIVE_BOOT_COMPLETED'),(19,'android.permission.VIBRATE'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SMS'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(22,'com.openintents.notepad.READ_PERMISSION'),(21,'com.openintents.notepad.WRITE_PERMISSION'),(20,'com.openintents.safe.ACCESS_INTENTS');
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
INSERT INTO `Permissions` VALUES (20,'d'),(21,'n'),(22,'n');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,54,73,NULL),(2,74,73,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,73,0,NULL,NULL),(2,74,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://bnb520.com/forum.php',NULL,NULL,NULL),(2,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(9,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(10,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(18,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(22,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(23,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(24,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(27,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(28,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'market://details?id=(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(38,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(39,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(40,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(41,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,23,2),(2,42,5),(3,60,8),(4,61,9),(5,62,10),(6,66,11),(7,74,19),(8,76,20),(9,77,21),(10,81,23),(11,84,24),(12,86,25),(13,92,27),(14,106,35),(15,107,36),(16,117,41);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,3,1),(13,3,3),(14,3,4),(15,3,6),(16,3,7),(17,3,9),(18,3,10),(19,3,11),(20,4,1),(21,4,3),(22,4,4),(23,4,5),(24,4,6),(25,4,7),(26,4,8),(27,4,9),(28,4,11),(29,4,12),(30,5,1),(31,5,3),(32,5,4),(33,5,6),(34,5,7),(35,5,8),(36,5,9),(37,5,10),(38,5,11),(39,5,12),(40,5,14),(41,5,15),(42,5,17),(43,5,16),(44,5,18),(45,6,1),(46,6,19),(47,6,6),(48,6,7),(49,6,8),(50,6,9),(51,6,12),(52,7,1),(53,7,3),(54,7,4),(55,7,6),(56,7,7),(57,7,8),(58,7,9),(59,7,10),(60,7,12),(61,7,15),(62,7,16),(63,7,21),(64,7,20),(65,7,22);
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
