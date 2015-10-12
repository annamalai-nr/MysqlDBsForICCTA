-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_159
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
INSERT INTO `ActionStrings` VALUES (16,'DownloadManageServicer.ACTION_CONTROL'),(13,'DownloadManageServicer.ACTION_UPDATE'),(8,'android.appwidget.action.APPWIDGET_UPDATE'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.CHOOSER'),(15,'android.intent.action.DELETE'),(20,'android.intent.action.DIAL'),(23,'android.intent.action.EDIT'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.PACKAGE_REPLACED'),(21,'android.intent.action.SEND'),(22,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(17,'android.intent.action.VIEW'),(24,'android.intent.action.WEB_SEARCH'),(11,'android.net.conn.CONNECTIVITY_CHANGE'),(9,'android.net.wifi.WIFI_STATE_CHANGED'),(18,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(12,'com.safetest.myapn.widget.rotate.CLICK'),(10,'com.safetest.myapn.widget.switch.CLICK'),(14,'uiupdate');
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
INSERT INTO `Applications` VALUES (1,'com.safesys.viruskiller',33),(2,'com.nineiworks.wordsXGN',1),(3,'com.ps.ddp',25),(4,'com.safesys.superexplorer',34),(5,'com.ps.pintu.view',5),(6,'com.safetest.myapn',21),(7,'com.atools.roottoolbox',9);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.safesys.viruskiller.MainActivity'),(2,1,'com.safesys.viruskiller.ShowTips'),(3,1,'com.safesys.viruskiller.UpdateService'),(4,1,'com.safesys.viruskiller.ScanningManagerService'),(5,1,'com.safesys.viruskiller.DownloadManageService'),(6,1,'com.safesys.viruskiller.Receiver'),(7,1,'com.safesys.viruskiller.ScanningReciever'),(8,1,'com.safesys.viruskiller.ScanPackageBroadcast'),(9,2,'com.nineiworks.wordsXGN.activity.Words'),(10,2,'com.nineiworks.wordsXGN.activity.About'),(11,2,'com.nineiworks.wordsXGN.activity.Coupon'),(12,4,'com.safesys.superexplorer.RootExplorer'),(13,2,'com.nineiworks.wordsXGN.activity.WordsExercise'),(14,3,'com.ps.ddp.MainActivity'),(15,2,'com.nineiworks.wordsXGN.activity.WordsList'),(16,2,'com.nineiworks.wordsXGN.activity.ErrorRecord'),(17,4,'com.safesys.superexplorer.PermissionsActivity'),(18,3,'com.ps.ddp.DemoApp'),(19,2,'com.nineiworks.wordsXGN.activity.Help'),(20,4,'com.safesys.superexplorer.ScriptActivity'),(21,3,'com.ps.ddp.GameActivity'),(22,2,'com.nineiworks.wordsXGN.activity.Record'),(23,4,'com.safesys.superexplorer.DisplayText'),(24,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(25,2,'com.nineiworks.wordsXGN.activity.WordType'),(26,4,'com.safesys.superexplorer.BookmarkList'),(27,3,'com.google.update.Dialog'),(28,2,'com.nineiworks.wordsXGN.activity.CouponDetail'),(29,4,'com.safesys.superexplorer.SearchCriteria'),(30,5,'com.ps.pintu.view.MainActivity'),(31,3,'com.waps.OffersWebView'),(32,2,'com.nineiworks.wordsXGN.activity.Menu'),(33,4,'com.safesys.superexplorer.Preferences'),(34,3,'com.google.update.UpdateService'),(35,2,'activity.SelectWordTypeivity.SelectWordType'),(36,4,'com.safesys.superexplorer.ViewDatabase'),(37,3,'com.google.update.Receiver'),(38,2,'com.google.ssearch.Dialog'),(39,5,'com.ps.pintu.view.JigsawActivity'),(40,4,'com.safesys.superexplorer.ViewTable'),(41,2,'com.google.ssearch.SearchService'),(42,5,'com.ps.pintu.view.LocalImageActivity'),(43,4,'com.safesys.superexplorer.SQLiteEditorAdvert'),(44,5,'com.ps.pintu.view.LocalImageGameActivity'),(45,2,'com.google.ssearch.Receiver'),(46,4,'com.safesys.superexplorer.CreateZip'),(47,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(48,4,'com.safesys.superexplorer.ShowTips'),(49,5,'com.google.update.Dialog'),(50,4,'com.safesys.superexplorer.UpdateService'),(51,5,'com.google.update.UpdateService'),(52,4,'com.safesys.superexplorer.Receiver'),(53,5,'com.google.update.Receiver'),(54,6,'com.safetest.myapn.InitialActivity'),(55,6,'com.safetest.myapn.PreferenceActivity'),(56,6,'com.safetest.myapn.HelpActivity'),(57,6,'com.safetest.common.app.ActivationActivity'),(58,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(59,6,'com.safetest.myapn.ShowTips'),(60,6,'com.safetest.myapn.UpdateService'),(61,6,'com.safetest.myapn.HiApnWidgetProvider'),(62,6,'com.safetest.myapn.HiApnSwitcherWidgetProvider'),(63,6,'com.safetest.myapn.HiApnRotaterWidgetProvider'),(64,6,'com.safetest.myapn.Receiver'),(65,1,'com.ju6.a'),(66,1,'com.safesys.viruskiller.MainActivity$UpdateReceiver'),(67,1,'com.safesys.viruskiller.MainActivity$UIReceiver'),(68,1,'com.safesys.viruskiller.ShowTips$1'),(69,1,'com.safesys.viruskiller.MainActivity$2'),(70,1,'com.safesys.viruskiller.DownloadManageService$CommandReceiver'),(71,5,'com.ps.pintu.view.MainActivity$1'),(72,5,'com.ps.pintu.view.LocalImageActivity$1'),(73,5,'com.google.update.Dialog$1'),(74,5,'com.google.update.UpdateService$AA'),(75,5,'com.google.update.Dialog$2'),(76,3,'com.waps.AppConnect'),(77,3,'com.google.update.Dialog$1'),(78,3,'com.google.update.Dialog$2'),(79,3,'com.waps.s'),(80,2,'com.nineiworks.wordsXGN.activity.WordsExercise$4'),(81,2,'com.nineiworks.wordsXGN.activity.WordType$1'),(82,2,'com.nineiworks.wordsXGN.activity.Record$1'),(83,2,'com.nineiworks.wordsXGN.activity.Menu$1'),(84,2,'com.nineiworks.wordsXGN.activity.Menu$5'),(85,3,'com.waps.o'),(86,2,'com.nineiworks.wordsXGN.activity.Coupon$3'),(87,6,'com.safetest.myapn.HelpActivity$4'),(88,2,'com.nineiworks.wordsXGN.activity.Menu$3'),(89,3,'com.waps.q'),(90,2,'com.google.ssearch.SearchService$MyThread'),(91,2,'com.nineiworks.wordsXGN.activity.ErrorRecord$1'),(92,6,'com.adwo.adsdk.g'),(93,3,'com.google.update.UpdateService$AA'),(94,3,'com.waps.x'),(95,2,'com.nineiworks.wordsXGN.activity.Menu$6'),(96,2,'com.nineiworks.wordsXGN.activity.Menu$4'),(97,4,'com.ju6.a'),(98,4,'com.safesys.superexplorer.RootExplorer$31'),(99,2,'com.nineiworks.wordsXGN.activity.Menu$2'),(100,3,'com.waps.aa'),(101,2,'com.nineiworks.wordsXGN.activity.WordsExercise$5'),(102,2,'com.nineiworks.wordsXGN.activity.WordsExercise$1'),(103,3,'com.waps.y'),(104,2,'com.nineiworks.wordsXGN.activity.WordsExercise$2'),(105,2,'com.nineiworks.wordsXGN.activity.WordsExercise$3'),(106,2,'com.nineiworks.wordsXGN.activity.About$1'),(107,2,'com.google.ssearch.Dialog$1'),(108,6,'com.safetest.myapn.ApnDao'),(109,6,'com.safetest.myapn.HelpActivity$3'),(110,6,'com.safetest.myapn.HelpActivity$6$1'),(111,6,'com.safetest.myapn.PreferenceActivity$8'),(112,6,'com.safetest.myapn.ShowTips$1'),(113,4,'com.safesys.superexplorer.RootExplorer$33'),(114,6,'com.safetest.myapn.Util'),(115,7,'com.atools.battery.ShowTips'),(116,7,'com.atools.roottoolbox.splashscreen'),(117,7,'com.atools.roottoolbox.advanced'),(118,7,'com.atools.roottoolbox.mount'),(119,7,'com.atools.roottoolbox.other'),(120,7,'com.atools.roottoolbox.reboot'),(121,7,'com.atools.roottoolbox.wipe'),(122,7,'com.atools.roottoolbox.setapn'),(123,7,'com.atools.roottoolbox.simsettings'),(124,7,'com.atools.roottoolbox.cm7themes'),(125,4,'com.safesys.superexplorer.SQLiteEditorAdvert$1'),(126,7,'com.atools.roottoolbox.shell'),(127,7,'com.atools.roottoolbox.contactme'),(128,7,'com.atools.roottoolbox.changelog'),(129,7,'com.atools.roottoolbox.aboutroot'),(130,7,'com.atools.roottoolbox.usb'),(131,7,'com.atools.roottoolbox.system'),(132,7,'com.atools.roottoolbox.systemapps'),(133,4,'com.safesys.superexplorer.ShowTips$1'),(134,7,'com.atools.roottoolbox.systemappsrestore'),(135,7,'com.atools.roottoolbox.restoreapns'),(136,7,'com.atools.roottoolbox.sdcardreadspeed'),(137,7,'com.atools.roottoolbox.LogcatActivity'),(138,7,'com.atools.roottoolbox.deviceinfo'),(139,7,'com.atools.roottoolbox.wirelessadb'),(140,7,'com.atools.battery.UpdateService'),(141,4,'com.safesys.superexplorer.RootExplorer$34'),(142,7,'com.atools.roottoolbox.mount$1'),(143,7,'com.atools.roottoolbox.other$3'),(144,7,'com.atools.roottoolbox.simsettings$10'),(145,7,'com.atools.roottoolbox.simsettings$2'),(146,7,'com.atools.roottoolbox.contactme$2'),(147,7,'com.atools.roottoolbox.setapn$10'),(148,7,'com.atools.roottoolbox.shell$6'),(149,7,'com.atools.roottoolbox.usb$5'),(150,7,'com.atools.roottoolbox.advanced$2'),(151,7,'com.atools.roottoolbox.systemapps$2'),(152,7,'com.atools.roottoolbox.simsettings$9'),(153,7,'com.atools.roottoolbox.simsettings$11'),(154,7,'com.atools.roottoolbox.simsettings$13'),(155,7,'com.atools.roottoolbox.simsettings$12'),(156,7,'com.atools.roottoolbox.other$5'),(157,7,'com.atools.roottoolbox.restoreapns$3'),(158,7,'com.atools.roottoolbox.other$10'),(159,7,'com.atools.roottoolbox.simsettings$7'),(160,7,'com.atools.roottoolbox.mount$2'),(161,7,'com.atools.roottoolbox.systemappsrestore$2'),(162,7,'com.atools.roottoolbox.advanced$10'),(163,7,'com.atools.roottoolbox.cm7themes$1'),(164,7,'com.atools.roottoolbox.advanced$8'),(165,7,'com.atools.roottoolbox.aboutroot$1'),(166,7,'com.atools.roottoolbox.simsettings$4'),(167,7,'com.atools.roottoolbox.contactme$3'),(168,7,'com.atools.roottoolbox.other$1'),(169,7,'com.atools.roottoolbox.advanced$1'),(170,7,'com.atools.roottoolbox.simsettings$8'),(171,7,'com.atools.roottoolbox.simsettings$3'),(172,7,'com.atools.roottoolbox.contactme$4'),(173,7,'com.atools.roottoolbox.shell$8'),(174,7,'com.atools.roottoolbox.shell$5'),(175,7,'com.atools.roottoolbox.mount$3'),(176,7,'com.atools.roottoolbox.wirelessadb$1'),(177,7,'com.atools.roottoolbox.shell$7'),(178,7,'com.atools.roottoolbox.systemappsrestore$3'),(179,7,'com.atools.battery.m'),(180,7,'com.atools.roottoolbox.advanced$9'),(181,7,'com.atools.roottoolbox.splashscreen$3'),(182,7,'com.atools.roottoolbox.shell$2'),(183,7,'com.atools.roottoolbox.wipe$3'),(184,7,'com.atools.roottoolbox.simsettings$5'),(185,7,'com.atools.roottoolbox.system$7'),(186,7,'com.atools.roottoolbox.contactme$5'),(187,7,'com.atools.roottoolbox.setapn$2'),(188,7,'com.atools.roottoolbox.simsettings$6'),(189,7,'com.atools.roottoolbox.reboot$6'),(190,7,'com.atools.roottoolbox.restoreapns$2'),(191,7,'com.atools.roottoolbox.shell$1'),(192,7,'com.atools.roottoolbox.splashscreen$2'),(193,7,'com.atools.roottoolbox.cm7themes$3'),(194,7,'com.atools.roottoolbox.cm7themes$4'),(195,7,'com.atools.roottoolbox.splashscreen$1'),(196,7,'com.atools.roottoolbox.shell$3'),(197,7,'com.atools.roottoolbox.contactme$1'),(198,7,'com.atools.roottoolbox.simsettings$14'),(199,7,'com.atools.roottoolbox.changelog$1'),(200,7,'com.atools.roottoolbox.sdcardreadspeed$5'),(201,7,'com.atools.roottoolbox.shell$4'),(202,7,'com.atools.roottoolbox.setapn$11'),(203,7,'com.atools.roottoolbox.advanced$6'),(204,7,'com.atools.roottoolbox.other$2'),(205,7,'com.atools.roottoolbox.other$6'),(206,7,'com.atools.roottoolbox.other$11'),(207,7,'com.atools.roottoolbox.systemapps$3'),(208,7,'com.atools.roottoolbox.deviceinfo$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'notification_record'),(2,4,'state'),(3,3,'SAFE_PID'),(4,3,'SAFE_START'),(5,2,'MM'),(6,49,'TYPEdsada'),(7,47,'shouldShowBottomBar'),(8,47,'shouldShowTitlebar'),(9,47,'overlayTransition'),(10,45,'path'),(11,45,'level'),(12,51,'ST_START_DELAY'),(13,47,'overlayTitle'),(14,47,'url'),(15,47,'shouldMakeOverlayTransparent'),(16,47,'transitionTime'),(17,47,'shouldEnableBottomBar'),(18,47,'shouldResizeOverlay'),(19,51,'ST_MY_PID'),(20,49,'MSG'),(21,39,'level'),(22,39,'pictureIndex'),(23,31,'isFinshClose'),(24,14,'WAPS_ID'),(25,31,'WAPS_ID'),(26,34,'WAPS_ID'),(27,18,'WAPS_ID'),(28,24,'WAPS_ID'),(29,21,'WAPS_ID'),(30,31,'SHWO_FLAG'),(31,31,'Notify_Id'),(32,24,'overlayTransition'),(33,27,'MSG'),(34,31,'ACTIVITY_FLAG'),(35,31,'UrlPath'),(36,31,'URL_PARAMS'),(37,31,'offers_webview_tag'),(38,34,'ST_MY_PID'),(39,13,'wordID'),(40,16,'nextID'),(41,28,'title'),(42,14,'CLIENT_PACKAGE'),(43,31,'CLIENT_PACKAGE'),(44,34,'CLIENT_PACKAGE'),(45,18,'CLIENT_PACKAGE'),(46,24,'CLIENT_PACKAGE'),(47,21,'CLIENT_PACKAGE'),(48,24,'overlayTitle'),(49,38,'TYPEdsada'),(50,16,'type'),(51,58,'shouldShowTitlebar'),(52,61,'FROM_CLASS'),(53,31,'Offers_URL'),(54,13,'record'),(55,24,'shouldShowTitlebar'),(56,16,'recid'),(57,14,'APP_ID'),(58,31,'APP_ID'),(59,34,'APP_ID'),(60,18,'APP_ID'),(61,24,'APP_ID'),(62,21,'APP_ID'),(63,31,'URL'),(64,24,'transitionTime'),(65,14,'WAPS_PID'),(66,31,'WAPS_PID'),(67,28,'tel'),(68,34,'WAPS_PID'),(69,22,'nextID'),(70,18,'WAPS_PID'),(71,24,'WAPS_PID'),(72,21,'WAPS_PID'),(73,15,'type'),(74,28,'UMENG_APPKEY'),(75,36,'make_writeable_cmd'),(76,13,'UMENG_APPKEY'),(77,31,'Notify_Url_Params'),(78,22,'UMENG_APPKEY'),(79,15,'UMENG_APPKEY'),(80,11,'UMENG_APPKEY'),(81,19,'UMENG_APPKEY'),(82,9,'UMENG_APPKEY'),(83,32,'UMENG_APPKEY'),(84,25,'UMENG_APPKEY'),(85,24,'shouldEnableBottomBar'),(86,10,'UMENG_APPKEY'),(87,27,'TYPEdsada'),(88,16,'UMENG_APPKEY'),(89,17,'permissions'),(90,40,'make_readable_cmd'),(91,40,'restore_permissions_cmd'),(92,40,'filter_value'),(93,50,'SAFE_PID'),(94,38,'MSG'),(95,28,'address'),(96,24,'url'),(97,24,'shouldMakeOverlayTransparent'),(98,40,'is_filtered'),(99,13,'next'),(100,16,'wordID'),(101,28,'image'),(102,28,'urlTitle'),(103,22,'recid'),(104,24,'shouldShowBottomBar'),(105,13,'recid'),(106,28,'url'),(107,24,'shouldResizeOverlay'),(108,31,'USER_ID'),(109,22,'wordID'),(110,28,'detail'),(111,13,'type'),(112,14,'DEVICE_ID'),(113,31,'DEVICE_ID'),(114,34,'DEVICE_ID'),(115,18,'DEVICE_ID'),(116,24,'DEVICE_ID'),(117,21,'DEVICE_ID'),(118,34,'ST_START_DELAY'),(119,22,'type'),(120,28,'UMENG_CHANNEL'),(121,13,'UMENG_CHANNEL'),(122,22,'UMENG_CHANNEL'),(123,15,'UMENG_CHANNEL'),(124,11,'UMENG_CHANNEL'),(125,19,'UMENG_CHANNEL'),(126,9,'UMENG_CHANNEL'),(127,32,'UMENG_CHANNEL'),(128,25,'UMENG_CHANNEL'),(129,10,'UMENG_CHANNEL'),(130,16,'UMENG_CHANNEL'),(131,13,'nextID'),(132,12,'location'),(133,58,'url'),(134,63,'FROM_CLASS'),(135,59,'MM'),(136,62,'FROM_CLASS'),(137,58,'shouldResizeOverlay'),(138,54,'started'),(139,60,'SAFE_START'),(140,58,'shouldShowBottomBar'),(141,12,'permissions'),(142,58,'transitionTime'),(143,60,'SAFE_PID'),(144,58,'overlayTransition'),(145,58,'shouldMakeOverlayTransparent'),(146,58,'overlayTitle'),(147,46,'data'),(148,58,'shouldEnableBottomBar'),(149,12,'multi_select_mode'),(150,12,'selection_names'),(151,12,'error_msg'),(152,36,'make_readable_cmd'),(153,12,'saved_list_pos'),(154,12,'name'),(155,23,'group'),(156,12,'zip_name'),(157,17,'iconid'),(158,23,'edit_mode'),(159,36,'restore_permissions_cmd'),(160,12,'flags'),(161,40,'filter_field'),(162,12,'selection_state'),(163,48,'MM'),(164,12,'text'),(165,40,'table'),(166,23,'owner'),(167,46,'zip_name'),(168,23,'permissions'),(169,43,'restore_permissions_cmd'),(170,40,'make_writeable_cmd'),(171,43,'permissions'),(172,43,'make_readable_cmd'),(173,50,'SAFE_START'),(174,17,'name'),(175,92,'SAFE_PID'),(176,92,'SAFE_START'),(177,69,'MM');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,45,'r',1,NULL,NULL),(45,44,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'r',1,NULL,NULL),(64,64,'r',1,NULL,NULL),(65,66,'r',1,NULL,NULL),(66,67,'r',1,NULL,NULL),(67,70,'r',1,NULL,NULL),(68,89,'r',1,NULL,NULL),(69,115,'a',0,NULL,NULL),(70,116,'a',1,NULL,NULL),(71,117,'a',1,NULL,NULL),(72,118,'a',1,NULL,NULL),(73,119,'a',1,NULL,NULL),(74,120,'a',1,NULL,NULL),(75,121,'a',1,NULL,NULL),(76,122,'a',1,NULL,NULL),(77,123,'a',1,NULL,NULL),(78,124,'a',1,NULL,NULL),(79,126,'a',1,NULL,NULL),(80,127,'a',1,NULL,NULL),(81,128,'a',1,NULL,NULL),(82,129,'a',1,NULL,NULL),(83,130,'a',1,NULL,NULL),(84,131,'a',1,NULL,NULL),(85,132,'a',1,NULL,NULL),(86,134,'a',1,NULL,NULL),(87,135,'a',1,NULL,NULL),(88,136,'a',1,NULL,NULL),(89,137,'a',1,NULL,NULL),(90,138,'a',1,NULL,NULL),(91,139,'a',1,NULL,NULL),(92,140,'s',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,3),(3,3,1),(4,4,1),(5,5,4),(6,6,1),(7,6,7),(8,7,1),(9,8,2),(10,9,1),(11,10,51),(12,11,30),(13,11,42),(14,12,42),(15,12,30),(16,13,53),(17,14,30),(18,14,42),(19,15,51),(20,16,30),(21,16,42),(22,17,49),(23,18,51),(24,19,49),(25,20,34),(26,21,14),(27,22,34),(28,23,18),(29,24,27),(30,25,27),(31,26,28),(32,27,24),(33,27,34),(34,27,18),(35,28,10),(36,28,19),(37,28,22),(38,28,16),(39,28,15),(40,28,28),(41,28,11),(42,28,13),(43,28,32),(44,29,25),(45,30,22),(46,30,32),(47,30,10),(48,30,28),(49,30,11),(50,30,16),(51,30,15),(52,30,19),(53,31,31),(54,32,19),(55,32,32),(56,32,22),(57,32,15),(58,32,16),(59,32,28),(60,32,11),(61,32,10),(62,33,31),(63,34,19),(64,34,22),(65,34,10),(66,34,28),(67,34,11),(68,34,16),(69,34,15),(70,34,32),(71,35,31),(72,36,11),(73,37,56),(74,38,18),(75,39,15),(76,39,32),(77,39,16),(78,39,19),(79,39,22),(80,39,11),(81,39,10),(82,39,28),(83,40,41),(84,41,37),(85,42,22),(86,42,19),(87,42,16),(88,42,15),(89,42,32),(90,42,28),(91,42,11),(92,42,10),(93,43,14),(94,44,54),(95,45,41),(96,46,34),(97,47,36),(98,48,14),(99,49,31),(100,50,15),(101,50,16),(102,50,32),(103,50,11),(104,50,28),(105,50,10),(106,50,22),(107,50,19),(108,51,12),(109,52,41),(110,53,14),(111,54,12),(112,55,34),(113,55,18),(114,55,24),(115,56,19),(116,56,22),(117,56,15),(118,56,16),(119,56,32),(120,56,11),(121,56,28),(122,56,10),(123,57,50),(124,58,12),(125,59,32),(126,59,19),(127,59,28),(128,59,22),(129,59,10),(130,59,11),(131,59,16),(132,59,15),(133,60,31),(134,61,16),(135,61,28),(136,61,19),(137,61,13),(138,61,15),(139,61,32),(140,61,10),(141,61,11),(142,61,22),(143,62,14),(144,63,13),(145,64,31),(146,65,28),(147,65,13),(148,65,15),(149,65,11),(150,65,10),(151,65,22),(152,65,32),(153,65,16),(154,65,19),(155,66,13),(156,67,31),(157,68,28),(158,68,11),(159,68,13),(160,68,15),(161,68,32),(162,68,16),(163,68,19),(164,68,22),(165,68,10),(166,69,15),(167,69,28),(168,69,19),(169,69,16),(170,69,32),(171,69,22),(172,69,10),(173,69,11),(174,70,12),(175,71,38),(176,71,19),(177,71,16),(178,71,32),(179,71,15),(180,71,28),(181,71,10),(182,71,11),(183,71,22),(184,72,44),(185,73,54),(186,74,56),(187,75,54),(188,76,56),(189,77,55),(190,78,54),(191,79,59),(192,80,54),(193,81,12),(194,82,54),(195,82,55),(196,82,62),(197,82,61),(198,82,63),(199,83,54),(200,84,54),(201,85,12),(202,86,54),(203,87,12),(204,88,64),(205,89,12),(206,90,43),(207,91,43),(208,92,12),(209,93,12),(210,94,48),(211,95,12),(212,96,12),(213,97,12),(214,98,52),(215,99,12),(216,100,12),(217,101,72),(218,102,73),(219,103,77),(220,104,77),(221,105,89),(222,106,70),(223,107,80),(224,108,76),(225,109,72),(226,110,79),(227,111,83),(228,112,71),(229,113,85),(230,114,77),(231,115,77),(232,116,77),(233,117,77),(234,118,73),(235,119,80),(236,120,87),(237,121,73),(238,122,77),(239,123,72),(240,124,86),(241,125,71),(242,126,78),(243,127,71),(244,128,71),(245,129,77),(246,130,82),(247,131,88),(248,132,77),(249,133,77),(250,134,83),(251,135,80),(252,136,73),(253,137,71),(254,138,77),(255,139,77),(256,140,80),(257,141,74),(258,142,87),(259,143,79),(260,144,79),(261,145,81),(262,146,77),(263,147,72),(264,148,90),(265,149,77),(266,150,75),(267,151,78),(268,152,91),(269,153,79),(270,154,86),(271,155,69),(272,156,71),(273,157,70),(274,158,79),(275,159,75),(276,160,77),(277,161,84),(278,162,70),(279,163,80),(280,164,77),(281,165,77),(282,166,76),(283,167,77),(284,168,73),(285,169,74),(286,170,87),(287,171,82),(288,172,79),(289,173,70),(290,174,77),(291,175,78),(292,176,78),(293,177,70),(294,178,77),(295,179,77),(296,180,79),(297,181,77),(298,182,80),(299,183,84),(300,184,85),(301,185,77),(302,186,81),(303,187,88),(304,188,79),(305,189,76),(306,190,76),(307,191,71),(308,192,73),(309,193,70),(310,194,91),(311,195,73),(312,196,73),(313,197,86),(314,198,89),(315,199,77),(316,200,85),(317,201,90),(318,202,77);
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
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<com.safesys.viruskiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(2,65,'<com.ju6.a: boolean b()>',178,'p',NULL),(3,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',148,'a',NULL),(4,1,'<com.safesys.viruskiller.MainActivity: void onCreate(android.os.Bundle)>',256,'s',NULL),(5,4,'<com.safesys.viruskiller.ScanningManagerService: void onStart(android.content.Intent,int)>',29,'a',NULL),(6,4,'<com.safesys.viruskiller.ScanningManagerService: void beginStartingService(android.content.Context,android.content.Intent)>',3,'s',NULL),(7,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',284,'r',NULL),(8,68,'<com.safesys.viruskiller.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(9,69,'<com.safesys.viruskiller.MainActivity$2: void onClick(android.view.View)>',79,'a',NULL),(10,51,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(11,71,'<com.ps.pintu.view.MainActivity$1: void onClick(android.view.View)>',19,'a',NULL),(12,72,'<com.ps.pintu.view.LocalImageActivity$1: void onClick(android.view.View)>',28,'a',NULL),(13,53,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(14,71,'<com.ps.pintu.view.MainActivity$1: void onClick(android.view.View)>',25,'a',NULL),(15,51,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(16,72,'<com.ps.pintu.view.LocalImageActivity$1: void onClick(android.view.View)>',22,'a',NULL),(17,73,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(18,74,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(19,75,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(20,34,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(21,14,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',29,'a',NULL),(22,34,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(23,76,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(24,77,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(25,78,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(26,28,'<com.nineiworks.wordsXGN.activity.CouponDetail: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(27,79,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(28,80,'<com.nineiworks.wordsXGN.activity.WordsExercise$4: void onClick(android.view.View)>',6,'a',NULL),(29,81,'<com.nineiworks.wordsXGN.activity.WordType$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',69,'a',NULL),(30,82,'<com.nineiworks.wordsXGN.activity.Record$1: void onClick(android.view.View)>',22,'a',NULL),(31,31,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(32,83,'<com.nineiworks.wordsXGN.activity.Menu$1: void onClick(android.view.View)>',6,'a',NULL),(33,31,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(34,84,'<com.nineiworks.wordsXGN.activity.Menu$5: void onClick(android.view.View)>',6,'a',NULL),(35,85,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(36,86,'<com.nineiworks.wordsXGN.activity.Coupon$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',54,'a',NULL),(37,87,'<com.safetest.myapn.HelpActivity$4: void onClick(android.view.View)>',22,'a',NULL),(38,76,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(39,88,'<com.nineiworks.wordsXGN.activity.Menu$3: void onClick(android.view.View)>',14,'a',NULL),(40,90,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(41,37,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(42,91,'<com.nineiworks.wordsXGN.activity.ErrorRecord$1: void onClick(android.view.View)>',22,'a',NULL),(43,14,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(44,92,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(45,41,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(46,93,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(47,36,'<com.safesys.superexplorer.ViewDatabase: void OpenItem(com.safesys.superexplorer.Database$Table)>',15,'a',NULL),(48,14,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',22,'a',NULL),(49,94,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(50,95,'<com.nineiworks.wordsXGN.activity.Menu$6: void onClick(android.view.View)>',6,'a',NULL),(51,12,'<com.safesys.superexplorer.RootExplorer: void CreateZipFromFolder(com.safesys.superexplorer.DirectoryEntry)>',12,'a',NULL),(52,41,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(53,14,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(54,12,'<com.safesys.superexplorer.RootExplorer: void ShowPermissionsDialog(com.safesys.superexplorer.DirectoryEntry)>',13,'a',NULL),(55,79,'<com.waps.s: void onClick(android.view.View)>',98,'a',NULL),(56,96,'<com.nineiworks.wordsXGN.activity.Menu$4: void onClick(android.view.View)>',6,'a',NULL),(57,97,'<com.ju6.a: boolean b()>',178,'p',NULL),(58,98,'<com.safesys.superexplorer.RootExplorer$31: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(59,99,'<com.nineiworks.wordsXGN.activity.Menu$2: void onClick(android.view.View)>',6,'a',NULL),(60,100,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(61,101,'<com.nineiworks.wordsXGN.activity.WordsExercise$5: void onClick(android.view.View)>',6,'a',NULL),(62,14,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',40,'a',NULL),(63,102,'<com.nineiworks.wordsXGN.activity.WordsExercise$1: void onCheckedChanged(android.widget.RadioGroup,int)>',91,'a',NULL),(64,103,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(65,104,'<com.nineiworks.wordsXGN.activity.WordsExercise$2: void onClick(android.view.View)>',24,'a',NULL),(66,102,'<com.nineiworks.wordsXGN.activity.WordsExercise$1: void onCheckedChanged(android.widget.RadioGroup,int)>',212,'a',NULL),(67,31,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(68,105,'<com.nineiworks.wordsXGN.activity.WordsExercise$3: void onClick(android.view.View)>',24,'a',NULL),(69,106,'<com.nineiworks.wordsXGN.activity.About$1: void onClick(android.view.View)>',10,'a',NULL),(70,12,'<com.safesys.superexplorer.RootExplorer: void OpenItem(com.safesys.superexplorer.DirectoryEntry)>',53,'a',NULL),(71,107,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(72,45,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(73,108,'<com.safetest.myapn.ApnDao: void insert(com.safetest.myapn.ApnDetailInfo)>',36,'p',NULL),(74,109,'<com.safetest.myapn.HelpActivity$3: void onClick(android.view.View)>',4,'a',NULL),(75,54,'<com.safetest.myapn.InitialActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(76,110,'<com.safetest.myapn.HelpActivity$6$1: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(77,111,'<com.safetest.myapn.PreferenceActivity$8: void onClick(android.view.View)>',94,'a',NULL),(78,54,'<com.safetest.myapn.InitialActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(79,112,'<com.safetest.myapn.ShowTips$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(80,54,'<com.safetest.myapn.InitialActivity: void initialAdvertise()>',10,'s',NULL),(81,113,'<com.safesys.superexplorer.RootExplorer$33: void onClick(android.content.DialogInterface,int)>',37,'a',NULL),(82,114,'<com.safetest.myapn.Util: void sendToUpdateWidget(android.content.Context,java.lang.Class)>',13,'r',NULL),(83,54,'<com.safetest.myapn.InitialActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(84,108,'<com.safetest.myapn.ApnDao: java.util.List queryAll()>',19,'p',NULL),(85,12,'<com.safesys.superexplorer.RootExplorer: void OpenAsText(com.safesys.superexplorer.DirectoryEntry)>',10,'a',0),(86,108,'<com.safetest.myapn.ApnDao: void delete(java.lang.String)>',4,'p',NULL),(87,12,'<com.safesys.superexplorer.RootExplorer: void CreateZipFromFile(com.safesys.superexplorer.DirectoryEntry)>',16,'a',NULL),(88,64,'<com.safetest.myapn.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(89,12,'<com.safesys.superexplorer.RootExplorer: void ShowPreferences()>',3,'a',NULL),(90,43,'<com.safesys.superexplorer.SQLiteEditorAdvert: void DownloadSQLiteEditor()>',4,'a',NULL),(91,125,'<com.safesys.superexplorer.SQLiteEditorAdvert$1: void onClick(android.view.View)>',21,'a',NULL),(92,12,'<com.safesys.superexplorer.RootExplorer: void ExecuteZipSelected(java.lang.String)>',11,'a',NULL),(93,12,'<com.safesys.superexplorer.RootExplorer: void Send(com.safesys.superexplorer.DirectoryEntry)>',6,'a',0),(94,133,'<com.safesys.superexplorer.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(95,12,'<com.safesys.superexplorer.RootExplorer: void EditItem(com.safesys.superexplorer.DirectoryEntry)>',4,'a',0),(96,12,'<com.safesys.superexplorer.RootExplorer: void Search()>',5,'a',NULL),(97,12,'<com.safesys.superexplorer.RootExplorer: void ShowBookmarks()>',3,'a',NULL),(98,52,'<com.safesys.superexplorer.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(99,12,'<com.safesys.superexplorer.RootExplorer: void DownloadRootExplorer()>',4,'a',NULL),(100,141,'<com.safesys.superexplorer.RootExplorer$34: void onClick(android.content.DialogInterface,int)>',23,'a',NULL),(101,142,'<com.atools.roottoolbox.mount$1: void onClick(android.view.View)>',6,'a',NULL),(102,143,'<com.atools.roottoolbox.other$3: void onClick(android.view.View)>',6,'a',NULL),(103,144,'<com.atools.roottoolbox.simsettings$10: void onClick(android.view.View)>',22,'a',NULL),(104,145,'<com.atools.roottoolbox.simsettings$2: void onClick(android.view.View)>',22,'a',NULL),(105,137,'<com.atools.roottoolbox.LogcatActivity: void sendCurrentInfo()>',41,'a',NULL),(106,116,'<com.atools.roottoolbox.splashscreen: void onCreate(android.os.Bundle)>',67,'a',NULL),(107,146,'<com.atools.roottoolbox.contactme$2: void onClick(android.view.View)>',6,'a',NULL),(108,147,'<com.atools.roottoolbox.setapn$10: void onClick(android.view.View)>',6,'a',NULL),(109,118,'<com.atools.roottoolbox.mount: void onBackPressed()>',3,'a',NULL),(110,148,'<com.atools.roottoolbox.shell$6: void onClick(android.view.View)>',6,'a',NULL),(111,149,'<com.atools.roottoolbox.usb$5: void onClick(android.view.View)>',6,'a',NULL),(112,150,'<com.atools.roottoolbox.advanced$2: void onClick(android.view.View)>',17,'a',NULL),(113,151,'<com.atools.roottoolbox.systemapps$2: void onClick(android.content.DialogInterface,int)>',65,'a',NULL),(114,152,'<com.atools.roottoolbox.simsettings$9: void onClick(android.view.View)>',37,'a',NULL),(115,153,'<com.atools.roottoolbox.simsettings$11: void onClick(android.view.View)>',37,'a',NULL),(116,154,'<com.atools.roottoolbox.simsettings$13: void onClick(android.view.View)>',6,'a',NULL),(117,155,'<com.atools.roottoolbox.simsettings$12: void onClick(android.view.View)>',22,'a',NULL),(118,156,'<com.atools.roottoolbox.other$5: void onClick(android.view.View)>',6,'a',NULL),(119,127,'<com.atools.roottoolbox.contactme: void onBackPressed()>',3,'a',NULL),(120,157,'<com.atools.roottoolbox.restoreapns$3: void onClick(android.content.DialogInterface,int)>',30,'a',NULL),(121,158,'<com.atools.roottoolbox.other$10: void onClick(android.view.View)>',6,'a',NULL),(122,159,'<com.atools.roottoolbox.simsettings$7: void onClick(android.view.View)>',37,'a',NULL),(123,160,'<com.atools.roottoolbox.mount$2: void onClick(android.view.View)>',6,'a',NULL),(124,161,'<com.atools.roottoolbox.systemappsrestore$2: void onClick(android.content.DialogInterface,int)>',50,'a',NULL),(125,162,'<com.atools.roottoolbox.advanced$10: void onClick(android.view.View)>',11,'a',NULL),(126,163,'<com.atools.roottoolbox.cm7themes$1: void onClick(android.view.View)>',8,'a',NULL),(127,164,'<com.atools.roottoolbox.advanced$8: void onClick(android.view.View)>',6,'a',NULL),(128,117,'<com.atools.roottoolbox.advanced: void onBackPressed()>',3,'a',NULL),(129,145,'<com.atools.roottoolbox.simsettings$2: void onClick(android.view.View)>',37,'a',NULL),(130,165,'<com.atools.roottoolbox.aboutroot$1: void onClick(android.view.View)>',6,'a',NULL),(131,136,'<com.atools.roottoolbox.sdcardreadspeed: void onBackPressed()>',3,'a',NULL),(132,166,'<com.atools.roottoolbox.simsettings$4: void onClick(android.view.View)>',22,'a',NULL),(133,166,'<com.atools.roottoolbox.simsettings$4: void onClick(android.view.View)>',37,'a',NULL),(134,130,'<com.atools.roottoolbox.usb: void onBackPressed()>',3,'a',NULL),(135,167,'<com.atools.roottoolbox.contactme$3: void onClick(android.view.View)>',12,'a',NULL),(136,168,'<com.atools.roottoolbox.other$1: void onClick(android.view.View)>',6,'a',NULL),(137,169,'<com.atools.roottoolbox.advanced$1: void onClick(android.view.View)>',17,'a',NULL),(138,170,'<com.atools.roottoolbox.simsettings$8: void onClick(android.view.View)>',37,'a',NULL),(139,171,'<com.atools.roottoolbox.simsettings$3: void onClick(android.view.View)>',22,'a',NULL),(140,172,'<com.atools.roottoolbox.contactme$4: void onClick(android.view.View)>',6,'a',NULL),(141,120,'<com.atools.roottoolbox.reboot: void onBackPressed()>',3,'a',NULL),(142,135,'<com.atools.roottoolbox.restoreapns: void onBackPressed()>',3,'a',NULL),(143,173,'<com.atools.roottoolbox.shell$8: void onClick(android.view.View)>',6,'a',NULL),(144,174,'<com.atools.roottoolbox.shell$5: void onClick(android.view.View)>',6,'a',NULL),(145,128,'<com.atools.roottoolbox.changelog: void onBackPressed()>',3,'a',NULL),(146,170,'<com.atools.roottoolbox.simsettings$8: void onClick(android.view.View)>',22,'a',NULL),(147,175,'<com.atools.roottoolbox.mount$3: void onClick(android.view.View)>',6,'a',NULL),(148,138,'<com.atools.roottoolbox.deviceinfo: void onBackPressed()>',3,'a',NULL),(149,159,'<com.atools.roottoolbox.simsettings$7: void onClick(android.view.View)>',22,'a',NULL),(150,121,'<com.atools.roottoolbox.wipe: void onBackPressed()>',3,'a',NULL),(151,124,'<com.atools.roottoolbox.cm7themes: void onBackPressed()>',3,'a',NULL),(152,176,'<com.atools.roottoolbox.wirelessadb$1: void onClick(android.view.View)>',6,'a',NULL),(153,177,'<com.atools.roottoolbox.shell$7: void onClick(android.view.View)>',6,'a',NULL),(154,178,'<com.atools.roottoolbox.systemappsrestore$3: void onClick(android.content.DialogInterface,int)>',30,'a',NULL),(155,179,'<com.atools.battery.m: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(156,180,'<com.atools.roottoolbox.advanced$9: void onClick(android.view.View)>',6,'a',NULL),(157,181,'<com.atools.roottoolbox.splashscreen$3: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(158,182,'<com.atools.roottoolbox.shell$2: void onClick(android.view.View)>',6,'a',NULL),(159,183,'<com.atools.roottoolbox.wipe$3: void onClick(android.view.View)>',6,'a',NULL),(160,184,'<com.atools.roottoolbox.simsettings$5: void onClick(android.view.View)>',22,'a',NULL),(161,185,'<com.atools.roottoolbox.system$7: void onClick(android.view.View)>',6,'a',NULL),(162,116,'<com.atools.roottoolbox.splashscreen: void onCreate(android.os.Bundle)>',39,'a',NULL),(163,186,'<com.atools.roottoolbox.contactme$5: void onClick(android.view.View)>',6,'a',NULL),(164,152,'<com.atools.roottoolbox.simsettings$9: void onClick(android.view.View)>',22,'a',NULL),(165,144,'<com.atools.roottoolbox.simsettings$10: void onClick(android.view.View)>',37,'a',NULL),(166,187,'<com.atools.roottoolbox.setapn$2: void onClick(android.view.View)>',11,'a',NULL),(167,188,'<com.atools.roottoolbox.simsettings$6: void onClick(android.view.View)>',22,'a',NULL),(168,119,'<com.atools.roottoolbox.other: void onBackPressed()>',3,'a',NULL),(169,189,'<com.atools.roottoolbox.reboot$6: void onClick(android.view.View)>',6,'a',NULL),(170,190,'<com.atools.roottoolbox.restoreapns$2: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(171,129,'<com.atools.roottoolbox.aboutroot: void onBackPressed()>',3,'a',NULL),(172,191,'<com.atools.roottoolbox.shell$1: void onClick(android.view.View)>',26,'a',NULL),(173,192,'<com.atools.roottoolbox.splashscreen$2: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(174,171,'<com.atools.roottoolbox.simsettings$3: void onClick(android.view.View)>',37,'a',NULL),(175,193,'<com.atools.roottoolbox.cm7themes$3: void onClick(android.view.View)>',6,'a',NULL),(176,194,'<com.atools.roottoolbox.cm7themes$4: void onClick(android.view.View)>',6,'a',NULL),(177,195,'<com.atools.roottoolbox.splashscreen$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(178,153,'<com.atools.roottoolbox.simsettings$11: void onClick(android.view.View)>',22,'a',NULL),(179,184,'<com.atools.roottoolbox.simsettings$5: void onClick(android.view.View)>',37,'a',NULL),(180,196,'<com.atools.roottoolbox.shell$3: void onClick(android.view.View)>',6,'a',NULL),(181,155,'<com.atools.roottoolbox.simsettings$12: void onClick(android.view.View)>',37,'a',NULL),(182,197,'<com.atools.roottoolbox.contactme$1: void onClick(android.view.View)>',6,'a',NULL),(183,131,'<com.atools.roottoolbox.system: void onBackPressed()>',3,'a',NULL),(184,132,'<com.atools.roottoolbox.systemapps: void onBackPressed()>',3,'a',NULL),(185,198,'<com.atools.roottoolbox.simsettings$14: void onClick(android.view.View)>',8,'a',NULL),(186,199,'<com.atools.roottoolbox.changelog$1: void onClick(android.view.View)>',6,'a',NULL),(187,200,'<com.atools.roottoolbox.sdcardreadspeed$5: void onClick(android.view.View)>',6,'a',NULL),(188,201,'<com.atools.roottoolbox.shell$4: void onClick(android.view.View)>',6,'a',NULL),(189,122,'<com.atools.roottoolbox.setapn: void onBackPressed()>',3,'a',NULL),(190,202,'<com.atools.roottoolbox.setapn$11: void onClick(android.view.View)>',8,'a',NULL),(191,203,'<com.atools.roottoolbox.advanced$6: void onClick(android.view.View)>',6,'a',NULL),(192,204,'<com.atools.roottoolbox.other$2: void onClick(android.view.View)>',6,'a',NULL),(193,116,'<com.atools.roottoolbox.splashscreen: void onCreate(android.os.Bundle)>',17,'s',NULL),(194,139,'<com.atools.roottoolbox.wirelessadb: void onBackPressed()>',8,'a',NULL),(195,205,'<com.atools.roottoolbox.other$6: void onClick(android.view.View)>',6,'a',NULL),(196,206,'<com.atools.roottoolbox.other$11: void onClick(android.view.View)>',6,'a',NULL),(197,134,'<com.atools.roottoolbox.systemappsrestore: void onBackPressed()>',3,'a',NULL),(198,137,'<com.atools.roottoolbox.LogcatActivity: void onBackPressed()>',3,'a',NULL),(199,123,'<com.atools.roottoolbox.simsettings: void onBackPressed()>',3,'a',NULL),(200,207,'<com.atools.roottoolbox.systemapps$3: void onClick(android.content.DialogInterface,int)>',36,'a',NULL),(201,208,'<com.atools.roottoolbox.deviceinfo$1: void onClick(android.view.View)>',6,'a',NULL),(202,188,'<com.atools.roottoolbox.simsettings$6: void onClick(android.view.View)>',37,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,15),(2,6,16),(3,7,1),(4,8,1),(5,9,17),(6,19,1),(7,20,1),(8,21,1),(9,22,1),(10,23,18),(11,30,1),(12,31,1),(13,32,18),(14,35,1),(15,37,1),(16,39,1),(17,40,1),(18,43,1),(19,44,1),(20,48,17),(21,50,19),(22,52,19),(23,53,19),(24,54,1),(25,55,19),(26,56,19),(27,57,1),(28,59,19),(29,60,19),(30,61,1),(31,62,19),(32,65,20),(33,66,21),(34,68,1),(35,70,22),(36,71,1),(37,72,17),(38,75,22),(39,76,21),(40,77,17),(41,79,21),(42,82,17),(43,85,17),(44,88,17),(45,91,20),(46,92,17),(47,93,17),(48,95,17),(49,97,17),(50,98,17),(51,100,22),(52,102,17),(53,103,21),(54,105,23),(55,107,21),(56,108,21),(57,110,21),(58,113,22),(59,114,17),(60,117,21),(61,118,1),(62,119,17),(63,120,17),(64,121,1),(65,122,17),(66,125,21),(67,127,17),(68,128,17),(69,129,22),(70,130,17),(71,131,17),(72,132,17),(73,133,24),(74,134,17),(75,135,17),(76,136,17),(77,137,24),(78,138,17),(79,139,18),(80,140,21),(81,142,17),(82,143,17),(83,144,23),(84,145,20),(85,148,17),(86,151,17),(87,152,17),(88,153,17),(89,156,17),(90,158,17),(91,159,1),(92,160,17),(93,161,1),(94,164,8),(95,170,17),(96,173,1),(97,174,1),(98,178,17),(99,184,19),(100,185,19),(101,186,19),(102,187,19),(103,188,19),(104,189,19),(105,190,19),(106,191,19),(107,204,1),(108,212,1),(109,221,19),(110,222,19),(111,223,19),(112,224,19),(113,225,19),(114,226,19),(115,227,19),(116,228,19),(117,248,1),(118,249,1),(119,257,17),(120,269,17),(121,276,17),(122,279,1),(123,284,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,7,1),(2,8,2),(3,19,1),(4,20,2),(5,21,1),(6,22,2),(7,30,1),(8,31,2),(9,35,1),(10,37,2),(11,39,1),(12,40,2),(13,43,1),(14,44,2),(15,54,3),(16,57,1),(17,61,2),(18,68,2),(19,71,1),(20,118,1),(21,121,2),(22,159,1),(23,161,2),(24,173,1),(25,174,2),(26,248,1),(27,249,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/safesys/viruskiller/UpdateService'),(2,3,'com/safesys/viruskiller/DownloadManageService'),(3,4,'com/safesys/viruskiller/MainActivity'),(4,5,'com/safesys/viruskiller/ScanningManagerService'),(5,10,'com/google/update/Dialog'),(6,11,'com/google/update/Dialog'),(7,12,'com/ps/pintu/view/JigsawActivity'),(8,13,'com/ps/pintu/view/MainActivity'),(9,14,'com/google/update/UpdateService'),(10,15,'com/ps/pintu/view/LocalImageActivity'),(11,16,'com/google/update/Dialog'),(12,17,'com/google/update/Dialog'),(13,18,'com/ps/pintu/view/LocalImageGameActivity'),(14,24,'com/google/update/Dialog'),(15,25,'com/google/update/Dialog'),(16,26,'com/ps/ddp/GameActivity'),(17,27,'com/google/update/Dialog'),(18,28,'com/google/update/Dialog'),(19,29,'com/waps/OffersWebView'),(20,33,'com/nineiworks/wordsXGN/activity/Words'),(21,36,'com/nineiworks/wordsXGN/activity/Menu'),(22,38,'com/nineiworks/wordsXGN/activity/WordsExercise'),(23,41,'com/nineiworks/wordsXGN/activity/WordsExercise'),(24,45,'com/nineiworks/wordsXGN/activity/WordsList'),(25,46,'(.*)'),(26,47,'com/nineiworks/wordsXGN/activity/Coupon'),(27,49,'com/nineiworks/wordsXGN/activity/CouponDetail'),(28,51,'com/waps/OffersWebView'),(29,58,'com/google/update/UpdateService'),(30,64,'com/ps/ddp/GameActivity'),(31,63,'com/nineiworks/wordsXGN/activity/WordsExercise'),(32,67,'com/google/ssearch/Dialog'),(33,69,'com/google/ssearch/Dialog'),(34,74,'com/ps/ddp/GameActivity'),(35,73,'com/safesys/superexplorer/ViewTable'),(36,78,'com/nineiworks/wordsXGN/activity/Help'),(37,80,'com/safesys/superexplorer/CreateZip'),(38,81,'com/google/ssearch/Dialog'),(39,83,'com/ps/ddp/GameActivity'),(40,84,'com/google/ssearch/Dialog'),(41,85,'com/adwo/adsdk/AdwoAdBrowserActivity'),(42,86,'com/safesys/superexplorer/PermissionsActivity'),(43,88,'com.google.android.maps.MapsActivity'),(44,87,'com/waps/OffersWebView'),(45,89,'com/nineiworks/wordsXGN/activity/WordsExercise'),(46,90,'com/waps/OffersWebView'),(47,94,'com/nineiworks/wordsXGN/activity/About'),(48,96,'NULL-CONSTANT'),(49,99,'com/nineiworks/wordsXGN/activity/WordType'),(50,101,'com/ps/ddp/DemoApp'),(51,104,'com/nineiworks/wordsXGN/activity/WordsExercise'),(52,106,'com/waps/OffersWebView'),(53,105,'com.safesys.sqleditor.EditDatabase'),(54,109,'com/waps/OffersWebView'),(55,111,'com/safesys/superexplorer/SQLiteEditorAdvert'),(56,112,'com/nineiworks/wordsXGN/activity/Record'),(57,115,'com/safesys/superexplorer/ViewDatabase'),(58,116,'com/nineiworks/wordsXGN/activity/WordsExercise'),(59,120,'com.google.android.maps.MapsActivity'),(60,124,'com/nineiworks/wordsXGN/activity/ErrorRecord'),(61,126,'com/safesys/superexplorer/DisplayText'),(62,127,'com.google.android.maps.MapsActivity'),(63,131,'com.google.android.maps.MapsActivity'),(64,134,'com.android.browser.BrowserActivity'),(65,141,'com/google/ssearch/SearchService'),(66,143,'com.google.android.maps.MapsActivity'),(67,144,'com.safesys.sqleditor.EditDatabase'),(68,146,'com/safesys/superexplorer/SQLiteEditorAdvert'),(69,149,'com/safesys/superexplorer/ViewDatabase'),(70,150,'com/safetest/common/app/ActivationActivity'),(71,155,'com/safetest/myapn/InitialActivity'),(72,154,'com/safesys/superexplorer/DisplayText'),(73,157,'com/safetest/myapn/HelpActivity'),(74,162,'com/safetest/myapn/UpdateService'),(75,163,'com/safesys/superexplorer/DisplayText'),(76,166,'com/safetest/myapn/PreferenceActivity'),(77,165,'com/safesys/superexplorer/DisplayText'),(78,168,'com/safetest/myapn/UpdateService'),(79,167,'com/safesys/superexplorer/CreateZip'),(80,169,'com/safesys/superexplorer/Preferences'),(81,171,'com/safesys/superexplorer/ViewDatabase'),(82,172,'com/safesys/superexplorer/CreateZip'),(83,175,'com/safesys/superexplorer/SearchCriteria'),(84,176,'com/safesys/superexplorer/BookmarkList'),(85,177,'com/safesys/superexplorer/UpdateService'),(86,179,'com/safesys/superexplorer/ScriptActivity'),(87,180,'com/atools/roottoolbox/usb'),(88,181,'com/atools/roottoolbox/LogcatActivity'),(89,182,'com/atools/roottoolbox/simsettings'),(90,183,'com/atools/roottoolbox/simsettings'),(91,192,'com/atools/roottoolbox/shell'),(92,193,'com/atools/roottoolbox/shell'),(93,194,'com/atools/roottoolbox/shell'),(94,195,'com/atools/roottoolbox/shell'),(95,196,'com/atools/roottoolbox/setapn'),(96,197,'com/atools/roottoolbox/mount'),(97,198,'com/atools/roottoolbox/advanced'),(98,199,'com/atools/roottoolbox/systemapps'),(99,200,'com/atools/roottoolbox/simsettings'),(100,201,'com/atools/roottoolbox/simsettings'),(101,202,'com/atools/roottoolbox/shell'),(102,203,'com/atools/roottoolbox/simsettings'),(103,204,'com.lge.hiddenmenu.HiddenMenu'),(104,205,'com/atools/roottoolbox/shell'),(105,206,'com/atools/roottoolbox/restoreapns'),(106,207,'com/atools/roottoolbox/aboutroot'),(107,208,'com/atools/roottoolbox/simsettings'),(108,209,'com/atools/roottoolbox/system'),(109,210,'com/atools/roottoolbox/systemappsrestore'),(110,211,'com/atools/roottoolbox/systemappsrestore'),(111,212,'com.tmobile.themechooser.ThemeChooser'),(112,213,'com/atools/roottoolbox/systemapps'),(113,214,'com/atools/roottoolbox/shell'),(114,215,'com/atools/roottoolbox/simsettings'),(115,216,'com/atools/roottoolbox/other'),(116,217,'com/atools/roottoolbox/other'),(117,218,'com/atools/roottoolbox/simsettings'),(118,219,'com/atools/roottoolbox/simsettings'),(119,220,'com/atools/roottoolbox/mount'),(120,229,'com/atools/roottoolbox/shell'),(121,230,'com/atools/roottoolbox/advanced'),(122,231,'com/atools/roottoolbox/simsettings'),(123,232,'com/atools/roottoolbox/simsettings'),(124,233,'com/atools/roottoolbox/changelog'),(125,234,'com/atools/roottoolbox/shell'),(126,235,'com/atools/roottoolbox/setapn'),(127,236,'com/atools/roottoolbox/simsettings'),(128,237,'com/atools/roottoolbox/advanced'),(129,238,'com/atools/roottoolbox/contactme'),(130,239,'com/atools/roottoolbox/simsettings'),(131,240,'com/atools/roottoolbox/shell'),(132,241,'com/atools/roottoolbox/other'),(133,242,'com/atools/roottoolbox/simsettings'),(134,243,'com/atools/roottoolbox/shell'),(135,244,'com/atools/roottoolbox/other'),(136,245,'com/atools/roottoolbox/advanced'),(137,246,'com/atools/roottoolbox/contactme'),(138,247,'com/atools/roottoolbox/systemappsrestore'),(139,250,'com/atools/roottoolbox/wirelessadb'),(140,251,'com/atools/roottoolbox/shell'),(141,252,'com/atools/roottoolbox/mount'),(142,253,'com/atools/roottoolbox/shell'),(143,254,'com/atools/roottoolbox/simsettings'),(144,255,'com/atools/roottoolbox/mount'),(145,256,'com/atools/roottoolbox/shell'),(146,258,'com/atools/roottoolbox/simsettings'),(147,259,'com/atools/roottoolbox/simsettings'),(148,260,'com/atools/roottoolbox/restoreapns'),(149,261,'com/atools/roottoolbox/simsettings'),(150,262,'com/atools/roottoolbox/shell'),(151,263,'com/atools/roottoolbox/shell'),(152,264,'com/atools/roottoolbox/restoreapns'),(153,265,'com/atools/roottoolbox/other'),(154,266,'com/atools/roottoolbox/reboot'),(155,267,'com/atools/roottoolbox/shell'),(156,268,'com/atools/roottoolbox/simsettings'),(157,270,'com/atools/roottoolbox/other'),(158,271,'com/atools/roottoolbox/shell'),(159,272,'com/atools/roottoolbox/simsettings'),(160,273,'com/atools/roottoolbox/simsettings'),(161,274,'com/atools/roottoolbox/wipe'),(162,275,'com/atools/roottoolbox/simsettings'),(163,277,'com/atools/roottoolbox/mount'),(164,278,'com/atools/roottoolbox/advanced'),(165,279,'com.android.vending.AssetBrowserActivity'),(166,280,'com/atools/roottoolbox/contactme'),(167,281,'com/atools/roottoolbox/other'),(168,282,'com/atools/roottoolbox/other'),(169,283,'com/atools/roottoolbox/shell'),(170,284,'com.android.settings.ApnSettings'),(171,285,'com/atools/roottoolbox/shell'),(172,286,'com/atools/roottoolbox/deviceinfo'),(173,287,'com/atools/battery/UpdateService'),(174,288,'com/atools/roottoolbox/advanced'),(175,289,'com/atools/roottoolbox/cm7themes'),(176,290,'com/atools/roottoolbox/sdcardreadspeed'),(177,291,'com/atools/roottoolbox/advanced'),(178,292,'com/atools/roottoolbox/other'),(179,293,'com/atools/roottoolbox/shell'),(180,294,'com/atools/roottoolbox/systemapps'),(181,295,'com/atools/roottoolbox/other'),(182,296,'com/atools/roottoolbox/simsettings');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,2),(2,9,3),(3,48,4),(4,65,5),(5,66,6),(6,70,7),(7,72,8),(8,75,9),(9,76,10),(10,77,11),(11,79,12),(12,82,13),(13,91,15),(14,92,16),(15,93,17),(16,95,18),(17,97,19),(18,100,20),(19,102,21),(20,103,22),(21,105,23),(22,110,24),(23,111,25),(24,114,26),(25,115,27),(26,117,28),(27,120,29),(28,119,30),(29,122,31),(30,125,32),(31,126,33),(32,127,34),(33,128,35),(34,129,36),(35,130,37),(36,131,38),(37,132,39),(38,134,40),(39,135,41),(40,136,42),(41,138,43),(42,140,44),(43,143,45),(44,142,46),(45,144,47),(46,146,49),(47,148,50),(48,149,51),(49,151,52),(50,153,53),(51,152,54),(52,154,55),(53,156,56),(54,158,57),(55,160,58),(56,163,59),(57,165,60),(58,170,63),(59,171,64),(60,178,65),(61,179,66),(62,257,67),(63,269,68),(64,276,69);
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
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'state'),(2,6,'cmd'),(3,10,'MSG'),(4,10,'TYPEdsada'),(5,11,'TYPEdsada'),(6,12,'level'),(7,12,'pictureIndex'),(8,16,'MSG'),(9,16,'TYPEdsada'),(10,17,'TYPEdsada'),(11,18,'level'),(12,18,'path'),(13,24,'TYPEdsada'),(14,25,'MSG'),(15,25,'TYPEdsada'),(16,26,'type'),(17,27,'TYPEdsada'),(18,28,'MSG'),(19,28,'TYPEdsada'),(20,29,'USER_ID'),(21,29,'CLIENT_PACKAGE'),(22,29,'Offers_URL'),(23,29,'offers_webview_tag'),(24,29,'URL_PARAMS'),(25,38,'type'),(26,41,'record'),(27,41,'wordID'),(28,41,'recid'),(29,41,'nextID'),(30,41,'type'),(31,49,'urlTitle'),(32,49,'detail'),(33,49,'title'),(34,49,'address'),(35,49,'tel'),(36,49,'image'),(37,49,'url'),(38,51,'USER_ID'),(39,50,'android.intent.extra.INTENT'),(40,51,'CLIENT_PACKAGE'),(41,51,'Offers_URL'),(42,51,'offers_webview_tag'),(43,52,'android.intent.extra.INTENT'),(44,51,'URL_PARAMS'),(45,53,'android.intent.extra.TITLE'),(46,53,'android.intent.extra.INTENT'),(47,55,'android.intent.extra.INTENT'),(48,56,'android.intent.extra.TITLE'),(49,56,'android.intent.extra.INTENT'),(50,59,'android.intent.extra.INTENT'),(51,60,'android.intent.extra.TITLE'),(52,60,'android.intent.extra.INTENT'),(53,62,'android.intent.extra.TITLE'),(54,62,'android.intent.extra.INTENT'),(55,63,'record'),(56,63,'wordID'),(57,64,'type'),(58,63,'recid'),(59,63,'nextID'),(60,63,'type'),(61,66,'android.intent.extra.TEXT'),(62,67,'TYPEdsada'),(63,66,'android.intent.extra.SUBJECT'),(64,66,'android.intent.extra.EMAIL'),(65,69,'MSG'),(66,69,'TYPEdsada'),(67,70,'sms_body'),(68,73,'make_readable_cmd'),(69,74,'type'),(70,73,'restore_permissions_cmd'),(71,73,'table'),(72,73,'make_writeable_cmd'),(73,76,'android.intent.extra.EMAIL'),(74,79,'android.intent.extra.TEXT'),(75,79,'android.intent.extra.EMAIL'),(76,80,'data'),(77,80,'mode'),(78,81,'TYPEdsada'),(79,83,'type'),(80,84,'MSG'),(81,84,'TYPEdsada'),(82,85,'url'),(83,86,'iconid'),(84,86,'name'),(85,87,'CLIENT_PACKAGE'),(86,86,'permissions'),(87,87,'URL'),(88,86,'fullpath'),(89,87,'offers_webview_tag'),(90,90,'CLIENT_PACKAGE'),(91,90,'URL'),(92,90,'isFinshClose'),(93,90,'offers_webview_tag'),(94,103,'android.intent.extra.EMAIL'),(95,104,'wordID'),(96,104,'recid'),(97,105,'make_readable_cmd'),(98,104,'next'),(99,106,'UrlPath'),(100,105,'restore_permissions_cmd'),(101,104,'nextID'),(102,106,'ACTIVITY_FLAG'),(103,105,'permissions'),(104,106,'isFinshClose'),(105,104,'type'),(106,105,'make_writeable_cmd'),(107,106,'offers_webview_tag'),(108,108,'android.intent.extra.TEXT'),(109,108,'android.intent.extra.SUBJECT'),(110,108,'android.intent.extra.EMAIL'),(111,109,'Notify_Url_Params'),(112,109,'UrlPath'),(113,111,'make_readable_cmd'),(114,110,'android.intent.extra.TEXT'),(115,109,'ACTIVITY_FLAG'),(116,111,'restore_permissions_cmd'),(117,110,'android.intent.extra.SUBJECT'),(118,109,'isFinshClose'),(119,111,'permissions'),(120,109,'offers_webview_tag'),(121,110,'android.intent.extra.EMAIL'),(122,111,'make_writeable_cmd'),(123,112,'wordID'),(124,112,'recid'),(125,112,'next'),(126,112,'nextID'),(127,112,'type'),(128,115,'make_readable_cmd'),(129,115,'restore_permissions_cmd'),(130,115,'permissions'),(131,116,'wordID'),(132,116,'recid'),(133,116,'next'),(134,116,'nextID'),(135,116,'type'),(136,124,'wordID'),(137,125,'android.intent.extra.TEXT'),(138,124,'recid'),(139,125,'android.intent.extra.EMAIL'),(140,124,'next'),(141,126,'edit_mode'),(142,124,'nextID'),(143,126,'permissions'),(144,124,'type'),(145,129,'sms_body'),(146,133,'query'),(147,144,'make_readable_cmd'),(148,144,'restore_permissions_cmd'),(149,144,'permissions'),(150,144,'make_writeable_cmd'),(151,146,'make_readable_cmd'),(152,146,'restore_permissions_cmd'),(153,146,'permissions'),(154,146,'make_writeable_cmd'),(155,149,'make_readable_cmd'),(156,149,'restore_permissions_cmd'),(157,149,'permissions'),(158,154,'edit_mode'),(159,154,'permissions'),(160,155,'started'),(161,163,'chmod_value'),(162,163,'permissions'),(163,163,'edit_mode'),(164,163,'owner'),(165,163,'group'),(166,163,'size'),(167,164,'FROM_CLASS'),(168,165,'edit_mode'),(169,165,'permissions'),(170,165,'owner'),(171,165,'group'),(172,165,'size'),(173,167,'data'),(174,167,'zip_name'),(175,167,'mode'),(176,171,'make_readable_cmd'),(177,171,'restore_permissions_cmd'),(178,171,'permissions'),(179,172,'data'),(180,172,'zip_name'),(181,172,'mode'),(182,175,'location'),(183,179,'permissions'),(184,179,'size'),(185,184,'android.intent.extra.INTENT'),(186,185,'android.intent.extra.INTENT'),(187,186,'android.intent.extra.TITLE'),(188,186,'android.intent.extra.INTENT'),(189,187,'android.intent.extra.INTENT'),(190,188,'android.intent.extra.TITLE'),(191,188,'android.intent.extra.INTENT'),(192,189,'android.intent.extra.INTENT'),(193,190,'android.intent.extra.TITLE'),(194,190,'android.intent.extra.INTENT'),(195,191,'android.intent.extra.TITLE'),(196,191,'android.intent.extra.INTENT'),(197,221,'android.intent.extra.INTENT'),(198,222,'android.intent.extra.INTENT'),(199,223,'android.intent.extra.TITLE'),(200,223,'android.intent.extra.INTENT'),(201,224,'android.intent.extra.INTENT'),(202,225,'android.intent.extra.TITLE'),(203,225,'android.intent.extra.INTENT'),(204,226,'android.intent.extra.INTENT'),(205,227,'android.intent.extra.TITLE'),(206,227,'android.intent.extra.INTENT'),(207,228,'android.intent.extra.TITLE'),(208,228,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,3),(6,4,7),(7,4,5),(8,4,6),(9,5,1),(10,6,1),(11,7,1),(12,8,1),(13,9,4),(14,9,2),(15,9,3),(16,10,3),(17,10,4),(18,10,2),(19,11,4),(20,11,3),(21,11,2),(22,12,4),(23,12,3),(24,12,2),(25,13,1),(26,14,10),(27,14,9),(28,14,12),(29,14,11),(30,14,8),(31,15,8),(32,15,9),(33,15,10),(34,16,8),(35,16,9),(36,16,12),(37,17,4),(38,17,2),(39,17,3),(40,18,13),(41,19,14),(42,20,16),(43,21,5),(44,22,1),(45,23,1),(46,24,1),(47,25,1),(48,26,1),(49,27,1),(50,28,1),(51,29,1),(52,30,1),(53,31,1),(54,32,1),(55,33,1),(56,34,1),(57,35,1),(58,36,1),(59,37,1),(60,38,1),(61,39,1),(62,40,1),(63,41,1),(64,42,1),(65,43,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,5,1),(3,6,1),(4,7,1),(5,8,1),(6,13,1),(7,22,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,4,'package',NULL,NULL,NULL,NULL,NULL),(2,21,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,48,'application','vnd.android.package-archive'),(2,72,'*','*'),(3,77,'application','vnd.android.package-archive'),(4,93,'application','vnd.ms-powerpoint'),(5,95,'(.*)','(.*)'),(6,97,'image','*'),(7,102,'application','pdf'),(8,108,'message','rfc882'),(9,114,'(.*)','(.*)'),(10,119,'application','msword'),(11,122,'application','vnd.ms-excel'),(12,128,'application','vnd.android.package-archive'),(13,130,'audio','*'),(14,132,'video','*'),(15,135,'*','*'),(16,136,'application','vnd.ms-powerpoint'),(17,138,'image','*'),(18,142,'application','pdf'),(19,151,'application','msword'),(20,152,'application','vnd.ms-excel'),(21,156,'application','vnd.android.package-archive'),(22,158,'audio','*'),(23,160,'video','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.safesys.viruskiller'),(2,3,'com.safesys.viruskiller'),(3,4,'com.safesys.viruskiller'),(4,5,'com.safesys.viruskiller'),(5,7,'com.noshufou.android.su'),(6,8,'com.noshufou.android.su'),(7,10,'com.ps.pintu.view'),(8,11,'com.ps.pintu.view'),(9,12,'com.ps.pintu.view'),(10,13,'com.ps.pintu.view'),(11,14,'com.ps.pintu.view'),(12,15,'com.ps.pintu.view'),(13,16,'com.ps.pintu.view'),(14,17,'com.ps.pintu.view'),(15,18,'com.ps.pintu.view'),(16,19,'com.noshufou.android.su'),(17,20,'com.noshufou.android.su'),(18,21,'com.ps.pintu.view'),(19,22,'com.ps.pintu.view'),(20,24,'com.ps.ddp'),(21,25,'com.ps.ddp'),(22,26,'com.ps.ddp'),(23,27,'com.ps.ddp'),(24,28,'com.ps.ddp'),(25,29,'com.ps.ddp'),(26,30,'com.noshufou.android.su'),(27,31,'com.noshufou.android.su'),(28,33,'com.nineiworks.wordsXGN'),(29,36,'com.nineiworks.wordsXGN'),(30,35,'(.*)'),(31,37,'(.*)'),(32,38,'com.nineiworks.wordsXGN'),(33,39,'NULL-CONSTANT'),(34,40,'NULL-CONSTANT'),(35,43,'(.*)'),(36,41,'com.nineiworks.wordsXGN'),(37,44,'(.*)'),(38,45,'com.nineiworks.wordsXGN'),(39,46,'(.*)'),(40,47,'com.nineiworks.wordsXGN'),(41,49,'com.nineiworks.wordsXGN'),(42,51,'com.ps.ddp'),(43,58,'com.ps.ddp'),(44,57,'com.nineiworks.wordsXGN'),(45,61,'com.nineiworks.wordsXGN'),(46,64,'com.ps.ddp'),(47,63,'com.nineiworks.wordsXGN'),(48,67,'com.nineiworks.wordsXGN'),(49,68,'com.ps.ddp'),(50,69,'com.nineiworks.wordsXGN'),(51,71,'com.ps.ddp'),(52,74,'com.ps.ddp'),(53,73,'com.safesys.superexplorer'),(54,78,'com.nineiworks.wordsXGN'),(55,80,'com.safesys.superexplorer'),(56,81,'com.nineiworks.wordsXGN'),(57,83,'com.ps.ddp'),(58,84,'com.nineiworks.wordsXGN'),(59,85,'com.safetest.myapn'),(60,86,'com.safesys.superexplorer'),(61,88,'com.google.android.apps.maps'),(62,87,'com.ps.ddp'),(63,89,'com.nineiworks.wordsXGN'),(64,90,'com.ps.ddp'),(65,94,'com.nineiworks.wordsXGN'),(66,96,'NULL-CONSTANT'),(67,99,'com.nineiworks.wordsXGN'),(68,101,'com.ps.ddp'),(69,104,'com.nineiworks.wordsXGN'),(70,106,'com.ps.ddp'),(71,105,'com.safesys.sqleditor'),(72,109,'com.ps.ddp'),(73,111,'com.safesys.superexplorer'),(74,112,'com.nineiworks.wordsXGN'),(75,115,'com.safesys.superexplorer'),(76,118,'(.*)'),(77,116,'com.nineiworks.wordsXGN'),(78,121,'(.*)'),(79,120,'com.google.android.apps.maps'),(80,124,'com.nineiworks.wordsXGN'),(81,126,'com.safesys.superexplorer'),(82,127,'com.google.android.apps.maps'),(83,131,'com.google.android.apps.maps'),(84,134,'com.android.browser'),(85,141,'com.nineiworks.wordsXGN'),(86,143,'com.google.android.apps.maps'),(87,144,'com.safesys.sqleditor'),(88,146,'com.safesys.superexplorer'),(89,149,'com.safesys.superexplorer'),(90,150,'com.safetest.myapn'),(91,155,'com.safetest.myapn'),(92,154,'com.safesys.superexplorer'),(93,157,'com.safetest.myapn'),(94,159,'com.noshufou.android.su'),(95,161,'com.noshufou.android.su'),(96,162,'com.safetest.myapn'),(97,163,'com.safesys.superexplorer'),(98,166,'com.safetest.myapn'),(99,165,'com.safesys.superexplorer'),(100,168,'com.safetest.myapn'),(101,167,'com.safesys.superexplorer'),(102,169,'com.safesys.superexplorer'),(103,171,'com.safesys.superexplorer'),(104,172,'com.safesys.superexplorer'),(105,173,'com.noshufou.android.su'),(106,174,'com.noshufou.android.su'),(107,175,'com.safesys.superexplorer'),(108,176,'com.safesys.superexplorer'),(109,177,'com.safesys.superexplorer'),(110,179,'com.safesys.superexplorer'),(111,180,'com.atools.roottoolbox'),(112,181,'com.atools.roottoolbox'),(113,182,'com.atools.roottoolbox'),(114,183,'com.atools.roottoolbox'),(115,192,'com.atools.roottoolbox'),(116,193,'com.atools.roottoolbox'),(117,194,'com.atools.roottoolbox'),(118,195,'com.atools.roottoolbox'),(119,196,'com.atools.roottoolbox'),(120,197,'com.atools.roottoolbox'),(121,198,'com.atools.roottoolbox'),(122,199,'com.atools.roottoolbox'),(123,200,'com.atools.roottoolbox'),(124,201,'com.atools.roottoolbox'),(125,202,'com.atools.roottoolbox'),(126,203,'com.atools.roottoolbox'),(127,204,'com.lge.hiddenmenu'),(128,205,'com.atools.roottoolbox'),(129,206,'com.atools.roottoolbox'),(130,207,'com.atools.roottoolbox'),(131,208,'com.atools.roottoolbox'),(132,209,'com.atools.roottoolbox'),(133,210,'com.atools.roottoolbox'),(134,211,'com.atools.roottoolbox'),(135,212,'com.tmobile.themechooser'),(136,213,'com.atools.roottoolbox'),(137,214,'com.atools.roottoolbox'),(138,215,'com.atools.roottoolbox'),(139,216,'com.atools.roottoolbox'),(140,217,'com.atools.roottoolbox'),(141,218,'com.atools.roottoolbox'),(142,219,'com.atools.roottoolbox'),(143,220,'com.atools.roottoolbox'),(144,229,'com.atools.roottoolbox'),(145,230,'com.atools.roottoolbox'),(146,231,'com.atools.roottoolbox'),(147,232,'com.atools.roottoolbox'),(148,233,'com.atools.roottoolbox'),(149,234,'com.atools.roottoolbox'),(150,235,'com.atools.roottoolbox'),(151,236,'com.atools.roottoolbox'),(152,237,'com.atools.roottoolbox'),(153,238,'com.atools.roottoolbox'),(154,239,'com.atools.roottoolbox'),(155,240,'com.atools.roottoolbox'),(156,241,'com.atools.roottoolbox'),(157,242,'com.atools.roottoolbox'),(158,243,'com.atools.roottoolbox'),(159,244,'com.atools.roottoolbox'),(160,245,'com.atools.roottoolbox'),(161,246,'com.atools.roottoolbox'),(162,247,'com.atools.roottoolbox'),(163,248,'com.noshufou.android.su'),(164,249,'com.noshufou.android.su'),(165,250,'com.atools.roottoolbox'),(166,251,'com.atools.roottoolbox'),(167,252,'com.atools.roottoolbox'),(168,253,'com.atools.roottoolbox'),(169,254,'com.atools.roottoolbox'),(170,255,'com.atools.roottoolbox'),(171,256,'com.atools.roottoolbox'),(172,258,'com.atools.roottoolbox'),(173,259,'com.atools.roottoolbox'),(174,260,'com.atools.roottoolbox'),(175,261,'com.atools.roottoolbox'),(176,262,'com.atools.roottoolbox'),(177,263,'com.atools.roottoolbox'),(178,264,'com.atools.roottoolbox'),(179,265,'com.atools.roottoolbox'),(180,266,'com.atools.roottoolbox'),(181,267,'com.atools.roottoolbox'),(182,268,'com.atools.roottoolbox'),(183,270,'com.atools.roottoolbox'),(184,271,'com.atools.roottoolbox'),(185,272,'com.atools.roottoolbox'),(186,273,'com.atools.roottoolbox'),(187,274,'com.atools.roottoolbox'),(188,275,'com.atools.roottoolbox'),(189,277,'com.atools.roottoolbox'),(190,278,'com.atools.roottoolbox'),(191,279,'com.android.vending'),(192,280,'com.atools.roottoolbox'),(193,281,'com.atools.roottoolbox'),(194,282,'com.atools.roottoolbox'),(195,283,'com.atools.roottoolbox'),(196,284,'com.android.settings'),(197,285,'com.atools.roottoolbox'),(198,286,'com.atools.roottoolbox'),(199,287,'com.atools.roottoolbox'),(200,288,'com.atools.roottoolbox'),(201,289,'com.atools.roottoolbox'),(202,290,'com.atools.roottoolbox'),(203,291,'com.atools.roottoolbox'),(204,292,'com.atools.roottoolbox'),(205,293,'com.atools.roottoolbox'),(206,294,'com.atools.roottoolbox'),(207,295,'com.atools.roottoolbox'),(208,296,'com.atools.roottoolbox');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,8,0),(5,9,0),(6,12,0),(7,14,0),(8,30,0),(9,37,0),(10,44,0),(11,52,0),(12,53,0),(13,54,0),(14,61,0),(15,62,0),(16,63,0),(17,64,0),(18,65,0),(19,66,0),(20,67,0),(21,68,0),(22,70,0),(23,71,0),(24,72,0),(25,73,0),(26,74,0),(27,75,0),(28,76,0),(29,77,0),(30,78,0),(31,79,0),(32,80,0),(33,81,0),(34,82,0),(35,83,0),(36,84,0),(37,85,0),(38,86,0),(39,87,0),(40,88,0),(41,89,0),(42,90,0),(43,91,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,3,1,0),(3,4,0,0),(4,5,0,0),(5,6,0,0),(6,7,1,0),(7,8,1,0),(8,8,1,0),(9,9,1,0),(10,10,0,0),(11,10,0,0),(12,11,0,0),(13,12,0,0),(14,13,0,0),(15,14,0,0),(16,15,0,0),(17,15,0,0),(18,16,0,0),(19,17,1,0),(20,17,1,0),(21,18,1,0),(22,18,1,0),(23,19,1,0),(24,20,0,0),(25,20,0,0),(26,21,0,0),(27,22,0,0),(28,22,0,0),(29,23,0,0),(30,24,1,0),(31,24,1,0),(32,25,1,0),(33,26,0,0),(34,27,1,0),(35,27,1,0),(36,28,0,0),(37,27,1,0),(38,29,0,0),(39,27,1,0),(40,27,1,0),(41,30,0,0),(42,31,1,0),(43,31,1,0),(44,31,1,0),(45,32,0,0),(46,33,0,0),(47,34,0,0),(48,35,1,0),(49,36,0,0),(50,37,1,0),(51,38,0,0),(52,37,1,0),(53,37,1,0),(54,39,1,0),(55,37,1,0),(56,37,1,0),(57,40,1,0),(58,41,0,0),(59,37,1,0),(60,37,1,0),(61,40,1,0),(62,37,1,0),(63,42,0,0),(64,43,0,0),(65,44,1,0),(66,44,1,0),(67,45,0,0),(68,46,1,0),(69,45,0,0),(70,44,1,0),(71,46,1,0),(72,44,1,0),(73,47,0,0),(74,48,0,0),(75,44,1,0),(76,44,1,0),(77,49,1,0),(78,50,0,0),(79,44,1,0),(80,51,0,0),(81,52,0,0),(82,44,1,0),(83,53,0,0),(84,52,0,0),(85,44,0,0),(86,54,0,0),(87,55,0,0),(88,44,0,0),(89,56,0,0),(90,55,0,0),(91,44,1,0),(92,44,1,0),(93,58,1,0),(94,59,0,0),(95,44,1,0),(96,60,0,0),(97,58,1,0),(98,44,1,0),(99,61,0,0),(100,44,1,0),(101,62,0,0),(102,58,1,0),(103,44,1,0),(104,63,0,0),(105,58,0,0),(106,64,0,0),(107,44,1,0),(108,44,1,0),(109,64,0,0),(110,44,1,0),(111,58,0,0),(112,65,0,0),(113,44,1,0),(114,44,1,0),(115,58,0,0),(116,66,0,0),(117,44,1,0),(118,67,1,0),(119,58,1,0),(120,44,0,0),(121,67,1,0),(122,58,1,0),(123,44,1,0),(124,68,0,0),(125,44,1,0),(126,58,0,0),(127,44,0,0),(128,58,1,0),(129,44,1,0),(130,58,1,0),(131,44,0,0),(132,58,1,0),(133,44,1,0),(134,69,0,0),(135,44,1,0),(136,70,1,0),(137,44,1,0),(138,70,1,0),(139,71,1,0),(140,44,1,0),(141,72,0,0),(142,70,1,0),(143,44,0,0),(144,70,0,0),(145,44,1,0),(146,70,0,0),(147,74,1,0),(148,74,1,0),(149,70,0,0),(150,75,0,0),(151,70,1,0),(152,70,1,0),(153,76,1,0),(154,70,0,0),(155,77,0,0),(156,70,1,0),(157,78,0,0),(158,70,1,0),(159,79,1,0),(160,70,1,0),(161,79,1,0),(162,80,0,0),(163,81,0,0),(164,82,1,0),(165,81,0,0),(166,83,0,0),(167,87,0,0),(168,88,0,0),(169,89,0,0),(170,90,1,0),(171,91,0,0),(172,92,0,0),(173,94,1,0),(174,94,1,0),(175,96,0,0),(176,97,0,0),(177,98,0,0),(178,99,1,0),(179,100,0,0),(180,101,0,0),(181,102,0,0),(182,103,0,0),(183,104,0,0),(184,105,1,0),(185,105,1,0),(186,105,1,0),(187,105,1,0),(188,105,1,0),(189,105,1,0),(190,105,1,0),(191,105,1,0),(192,106,0,0),(193,107,0,0),(194,108,0,0),(195,109,0,0),(196,110,0,0),(197,111,0,0),(198,112,0,0),(199,113,0,0),(200,114,0,0),(201,115,0,0),(202,116,0,0),(203,117,0,0),(204,118,0,0),(205,119,0,0),(206,120,0,0),(207,121,0,0),(208,122,0,0),(209,123,0,0),(210,124,0,0),(211,125,0,0),(212,126,0,0),(213,127,0,0),(214,128,0,0),(215,129,0,0),(216,130,0,0),(217,131,0,0),(218,132,0,0),(219,133,0,0),(220,134,0,0),(221,135,1,0),(222,135,1,0),(223,135,1,0),(224,135,1,0),(225,135,1,0),(226,135,1,0),(227,135,1,0),(228,135,1,0),(229,136,0,0),(230,137,0,0),(231,138,0,0),(232,139,0,0),(233,140,0,0),(234,141,0,0),(235,142,0,0),(236,143,0,0),(237,144,0,0),(238,145,0,0),(239,146,0,0),(240,147,0,0),(241,148,0,0),(242,149,0,0),(243,150,0,0),(244,151,0,0),(245,152,0,0),(246,153,0,0),(247,154,0,0),(248,155,1,0),(249,155,1,0),(250,156,0,0),(251,157,0,0),(252,158,0,0),(253,159,0,0),(254,160,0,0),(255,161,0,0),(256,162,0,0),(257,163,1,0),(258,164,0,0),(259,165,0,0),(260,166,0,0),(261,167,0,0),(262,168,0,0),(263,169,0,0),(264,170,0,0),(265,171,0,0),(266,172,0,0),(267,173,0,0),(268,174,0,0),(269,175,1,0),(270,176,0,0),(271,177,0,0),(272,178,0,0),(273,179,0,0),(274,180,0,0),(275,181,0,0),(276,182,1,0),(277,183,0,0),(278,184,0,0),(279,185,0,0),(280,186,0,0),(281,187,0,0),(282,188,0,0),(283,189,0,0),(284,190,0,0),(285,191,0,0),(286,192,0,0),(287,193,0,0),(288,194,0,0),(289,195,0,0),(290,196,0,0),(291,197,0,0),(292,198,0,0),(293,199,0,0),(294,200,0,0),(295,201,0,0),(296,202,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.CHANGE_NETWORK_STATE'),(14,'android.permission.CHANGE_WIFI_STATE'),(10,'android.permission.GET_PACKAGE_SIZE'),(18,'android.permission.GET_TASKS'),(13,'android.permission.INSTALL_PACKAGES'),(8,'android.permission.INTERNET'),(2,'android.permission.READ_LOGS'),(6,'android.permission.READ_PHONE_STATE'),(7,'android.permission.READ_SMS'),(17,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.RESTART_PACKAGES'),(11,'android.permission.WAKE_LOCK'),(19,'android.permission.WRITE_APN_SETTINGS'),(1,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'android.permission.WRITE_SMS'),(16,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,'package','(.*)',NULL,NULL,NULL,NULL),(3,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=xiaokemengling%40163%2ecom&lc=C2&item_name=Virus%20Terminator&button_subtype=services&currency_code=USD&bn=PP%2dBuyNowBF%3abtn_buynowCC_LG%2egif%3aNonHosted',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(15,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(44,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(48,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(50,NULL,NULL,'http://www.hidroid.net/droid/bbs/forumdisplay.php?fid=34',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(58,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(59,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(61,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(62,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(63,NULL,NULL,'market://search?q=pname:com.safesys.sqleditor',NULL,NULL,NULL),(64,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(65,NULL,NULL,'market://search?q=pname:com.safesys.superexplorer',NULL,NULL,NULL),(66,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(67,NULL,NULL,'https://market.android.com/details?id=com.atools.roottoolbox&feature=search_result',NULL,NULL,NULL),(68,NULL,NULL,'http://forum.xda-developers.com/showthread.php?t=1056292',NULL,NULL,NULL),(69,NULL,NULL,'http://lukemovement.wordpress.com/root-toolbox/',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,57,14),(3,73,48),(4,84,61),(5,86,62);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,1),(14,2,2),(15,2,4),(16,2,6),(17,2,8),(18,2,12),(19,2,13),(20,2,14),(21,2,15),(22,3,17),(23,3,16),(24,4,1),(25,4,3),(26,3,1),(27,4,5),(28,3,18),(29,4,6),(30,3,4),(31,4,7),(32,3,6),(33,3,8),(34,4,8),(35,4,12),(36,3,12),(37,3,14),(38,5,17),(39,5,1),(40,5,4),(41,5,6),(42,5,8),(43,5,12),(44,5,14),(45,6,1),(46,6,19),(47,6,3),(48,6,4),(49,6,5),(50,6,6),(51,6,7),(52,6,8),(53,6,9),(54,6,11),(55,6,12),(56,6,14),(57,7,1),(58,7,2),(59,7,4),(60,7,5),(61,7,6),(62,7,8),(63,7,12);
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
