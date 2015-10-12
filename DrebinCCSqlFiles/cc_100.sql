-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_100
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
INSERT INTO `ActionStrings` VALUES (10,'Speedup.intent.action.refreshservice'),(15,'Speedup.intent.action.temp'),(7,'Speedup.intent.action.updatewidget'),(2,'android.appwidget.action.APPWIDGET_CONFIGURE'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(8,'android.intent.action.BATTERY_CHANGED'),(5,'android.intent.action.BATTERY_CHANGED_ACTION'),(4,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.CALL'),(13,'android.intent.action.CHOOSER'),(17,'android.intent.action.EDIT'),(1,'android.intent.action.MAIN'),(18,'android.intent.action.PACKAGE_ADDED'),(11,'android.intent.action.SCREEN_OFF'),(12,'android.intent.action.SCREEN_ON'),(3,'android.intent.action.SIG_STR'),(14,'android.intent.action.VIEW'),(19,'android.settings.WIRELESS_SETTINGS'),(9,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.tutusw.phonespeedup',14),(2,'com.atools.battery',3),(3,'com.safesys.superexplorer',34),(4,'com.tiger.activity',2),(5,'com.gp.solitaire',457),(6,'com.mogo.katongllk',13);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.phonespeedup.IntroActivity'),(2,1,'com.tutusw.phonespeedup.InfoActivity'),(3,1,'com.google.ssearch.Dialog'),(4,1,'com.tutusw.phonespeedup.Home'),(5,1,'com.tutusw.phonespeedup.PerflockActivity'),(6,1,'com.tutusw.phonespeedup.ProfilesActivity'),(7,1,'com.tutusw.phonespeedup.ProfileEditActivity'),(8,1,'com.tutusw.phonespeedup.AdvancedActivity'),(9,1,'com.tutusw.phonespeedup.AboutActivity'),(10,1,'com.tutusw.phonespeedup.StresstestActivity'),(11,1,'com.tutusw.phonespeedup.Setcpu'),(12,1,'com.tutusw.phonespeedup.WidgetConfigActivity'),(13,1,'com.google.ssearch.SearchService'),(14,1,'com.tutusw.phonespeedup.StartupService'),(15,1,'com.tutusw.phonespeedup.ProfilesService'),(16,1,'com.tutusw.phonespeedup.WidgetService'),(17,1,'com.google.ssearch.Receiver'),(18,1,'com.tutusw.phonespeedup.StartupReceiver'),(19,1,'com.tutusw.phonespeedup.Widget'),(20,2,'com.atools.battery.myMain'),(21,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(22,2,'com.atools.battery.ShowTips'),(23,2,'com.atools.battery.UpdateService'),(24,2,'com.atools.battery.Receiver'),(25,3,'com.safesys.superexplorer.RootExplorer'),(26,3,'com.safesys.superexplorer.PermissionsActivity'),(27,3,'com.safesys.superexplorer.ScriptActivity'),(28,3,'com.safesys.superexplorer.DisplayText'),(29,3,'com.safesys.superexplorer.BookmarkList'),(30,3,'com.safesys.superexplorer.SearchCriteria'),(31,3,'com.safesys.superexplorer.Preferences'),(32,3,'com.safesys.superexplorer.ViewDatabase'),(33,3,'com.safesys.superexplorer.ViewTable'),(34,3,'com.safesys.superexplorer.SQLiteEditorAdvert'),(35,3,'com.safesys.superexplorer.CreateZip'),(36,3,'com.google.update.Dialog'),(37,3,'com.safesys.superexplorer.ShowTips'),(38,4,'com.tiger.activity.MainActivity'),(39,3,'com.google.update.UpdateService'),(40,3,'com.safesys.superexplorer.UpdateService'),(41,3,'com.google.update.Receiver'),(42,3,'com.safesys.superexplorer.Receiver'),(43,4,'com.tiger.activity.OnBusActivity'),(44,4,'com.tiger.activity.SetOffActivity'),(45,4,'com.tiger.activity.SzCallActivity'),(46,4,'com.tiger.activity.GzCallActivity'),(47,4,'com.tiger.activity.AboutAuthor'),(48,4,'com.tiger.activity.AboutBus'),(49,4,'net.youmi.android.AdActivity'),(50,4,'com.google.update.Dialog'),(51,4,'com.google.update.UpdateService'),(52,4,'com.google.update.Receiver'),(53,5,'com.gp.solitaire.Solitaire'),(54,5,'com.google.update.Dialog'),(55,5,'cn.domob.android.ads.DomobActivity'),(56,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(57,5,'com.waps.OffersWebView'),(58,5,'com.google.update.UpdateService'),(59,5,'com.google.update.Receiver'),(60,2,'com.atools.battery.myMain$1'),(61,2,'com.adwo.adsdk.M'),(62,2,'com.atools.battery.ShowTips$1'),(63,6,'com.mogo.katongllk.begin'),(64,6,'com.mogo.katongllk.Main'),(65,6,'com.google.ads.AdActivity'),(66,6,'com.vpon.adon.android.WebInApp'),(67,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(68,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(69,6,'com.waps.OffersWebView'),(70,6,'com.google.update.Dialog'),(71,6,'com.google.update.UpdateService'),(72,6,'com.google.update.Receiver'),(73,4,'com.google.update.Dialog$2'),(74,4,'com.tiger.activity.MainActivity$1'),(75,1,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(76,1,'com.tutusw.phonespeedup.WidgetService$1'),(77,4,'net.youmi.android.t'),(78,1,'com.tutusw.phonespeedup.ProfilesService$1'),(79,1,'android.appwidget.AppWidgetProvider'),(80,1,'com.tutusw.phonespeedup.Home$clicker'),(81,4,'com.tiger.activity.SzCallActivity$1'),(82,4,'com.google.update.UpdateService$AA'),(83,4,'com.google.update.Dialog$1'),(84,1,'com.google.ssearch.SearchService$MyThread'),(85,4,'com.tiger.activity.GzCallActivity$1'),(86,3,'com.safesys.superexplorer.SQLiteEditorAdvert$1'),(87,4,'net.youmi.android.be'),(88,3,'com.safesys.superexplorer.RootExplorer$33'),(89,3,'com.google.update.UpdateService$MyThread'),(90,1,'com.google.ssearch.Dialog$1'),(91,3,'com.safesys.superexplorer.RootExplorer$34'),(92,5,'cn.domob.android.ads.i$6'),(93,5,'com.waps.aa'),(94,6,'com.waps.AppConnect'),(95,5,'com.waps.z'),(96,5,'com.waps.q'),(97,5,'com.waps.o'),(98,6,'com.waps.m'),(99,3,'com.safesys.superexplorer.ShowTips$1'),(100,5,'com.google.update.Dialog$2'),(101,5,'cn.domob.android.ads.DomobAdEngine$2'),(102,6,'com.mogo.katongllk.begin$beginButtonListener'),(103,5,'com.waps.ac'),(104,6,'org.loon.framework.android.game.LGameAndroid2DActivity$10'),(105,5,'cn.domob.android.ads.i'),(106,6,'com.mobclick.android.MobclickAgent'),(107,5,'com.google.update.UpdateService$AA'),(108,3,'com.google.update.Dialog$1'),(109,3,'com.ju6.a'),(110,6,'org.loon.framework.android.game.LGameAndroid2DActivity$9'),(111,5,'cn.domob.android.ads.DomobAdManager'),(112,3,'com.safesys.superexplorer.RootExplorer$31'),(113,6,'com.google.update.UpdateService$AA'),(114,6,'com.google.update.Dialog$2'),(115,3,'com.google.update.Dialog$2'),(116,5,'cn.domob.android.ads.DomobActionReceiver'),(117,6,'com.waps.k'),(118,5,'com.google.update.Dialog$1'),(119,6,'com.google.update.Dialog$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,21,'overlayTransition'),(2,21,'shouldMakeOverlayTransparent'),(3,21,'overlayTitle'),(4,22,'MM'),(5,21,'url'),(6,21,'shouldShowBottomBar'),(7,21,'transitionTime'),(8,21,'shouldEnableBottomBar'),(9,21,'shouldShowTitlebar'),(10,23,'SAFE_START'),(11,21,'shouldResizeOverlay'),(12,23,'SAFE_PID'),(13,3,'MSG'),(14,50,'TYPEdsada'),(15,49,'D50EF1926ADD471892E72BCE6D7E032C'),(16,7,'row_id'),(17,51,'ST_START_DELAY'),(18,51,'ST_MY_PID'),(19,49,'172C94EDC717477aBF600D7898A64A8E'),(20,50,'MSG'),(21,12,'appWidgetId'),(22,32,'restore_permissions_cmd'),(23,33,'table'),(24,28,'owner'),(25,25,'selection_state'),(26,49,'D780FBF4215247bcBB1AC0AD33C474FE'),(27,33,'filter_field'),(28,33,'restore_permissions_cmd'),(29,33,'filter_value'),(30,33,'make_readable_cmd'),(31,25,'name'),(32,40,'SAFE_START'),(33,58,'ST_START_DELAY'),(34,25,'flags'),(35,32,'make_readable_cmd'),(36,25,'selection_names'),(37,33,'make_writeable_cmd'),(38,25,'saved_list_pos'),(39,35,'data'),(40,49,'EB80F3291A8E469c962CA133BDC549D7'),(41,34,'make_readable_cmd'),(42,28,'permissions'),(43,3,'TYPEdsada'),(44,34,'permissions'),(45,25,'location'),(46,35,'zip_name'),(47,34,'restore_permissions_cmd'),(48,40,'SAFE_PID'),(49,54,'MSG'),(50,26,'iconid'),(51,39,'ST_MY_PID'),(52,56,'overlayTitle'),(53,25,'permissions'),(54,26,'name'),(55,25,'multi_select_mode'),(56,57,'DEVICE_ID'),(57,53,'DEVICE_ID'),(58,57,'ACTIVITY_FLAG'),(59,57,'Notify_Id'),(60,55,'appId'),(61,56,'url'),(62,25,'error_msg'),(63,56,'shouldEnableBottomBar'),(64,36,'TYPEdsada'),(65,33,'is_filtered'),(66,57,'UrlPath'),(67,57,'URL'),(68,57,'CLIENT_PACKAGE'),(69,57,'USER_ID'),(70,58,'ST_MY_PID'),(71,67,'url'),(72,56,'shouldShowBottomBar'),(73,54,'TYPEdsada'),(74,58,'DOMOB_ALLOW_LOCATION'),(75,53,'DOMOB_ALLOW_LOCATION'),(76,56,'DOMOB_ALLOW_LOCATION'),(77,57,'APP_ID'),(78,53,'APP_ID'),(79,69,'MSG'),(80,62,'WAPS_ID'),(81,62,'WAPS_PID'),(82,68,'Offers_URL'),(83,67,'transitionTime'),(84,70,'ST_START_DELAY'),(85,66,'Adwo_PID'),(86,65,'url'),(87,62,'APP_ID'),(88,57,'WAPS_ID'),(89,53,'WAPS_ID'),(90,67,'shouldResizeOverlay'),(91,68,'isFinshClose'),(92,67,'shouldShowTitlebar'),(93,70,'ST_MY_PID'),(94,66,'isTestMode'),(95,62,'UMENG_APPKEY'),(96,62,'CLIENT_PACKAGE'),(97,65,'adWidth'),(98,56,'overlayTransition'),(99,25,'text'),(100,26,'permissions'),(101,32,'make_writeable_cmd'),(102,67,'shouldShowBottomBar'),(103,28,'edit_mode'),(104,68,'CLIENT_PACKAGE'),(105,68,'URL'),(106,67,'overlayTitle'),(107,28,'group'),(108,57,'WAPS_PID'),(109,53,'WAPS_PID'),(110,57,'SHWO_FLAG'),(111,56,'shouldShowTitlebar'),(112,58,'DOMOB_PID'),(113,53,'DOMOB_PID'),(114,69,'TYPEdsada'),(115,56,'DOMOB_PID'),(116,62,'DEVICE_ID'),(117,57,'offers_webview_tag'),(118,68,'USER_ID'),(119,55,'actType'),(120,57,'Notify_Url_Params'),(121,57,'URL_PARAMS'),(122,55,'appName'),(123,56,'shouldMakeOverlayTransparent'),(124,36,'MSG'),(125,67,'overlayTransition'),(126,53,'CLIENT_PACKAGE'),(127,62,'UMENG_CHANNEL'),(128,56,'shouldResizeOverlay'),(129,67,'shouldEnableBottomBar'),(130,68,'URL_PARAMS'),(131,57,'Offers_URL'),(132,58,'DOMOB_TEST_MODE'),(133,53,'DOMOB_TEST_MODE'),(134,56,'DOMOB_TEST_MODE'),(135,56,'transitionTime'),(136,67,'shouldMakeOverlayTransparent'),(137,57,'isFinshClose'),(138,39,'ST_START_DELAY'),(139,25,'zip_name'),(140,37,'MM');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',0,2,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,63,'a',1,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,65,'a',0,NULL,NULL),(65,66,'a',0,NULL,NULL),(66,67,'a',0,NULL,NULL),(67,68,'a',0,NULL,NULL),(68,69,'a',0,NULL,NULL),(69,70,'a',0,NULL,NULL),(70,71,'s',0,NULL,NULL),(71,72,'r',1,NULL,NULL),(72,76,'r',1,NULL,NULL),(73,78,'r',1,NULL,NULL),(74,79,'r',1,NULL,NULL),(75,18,'r',1,NULL,NULL),(76,96,'r',1,NULL,NULL),(77,98,'r',1,NULL,NULL),(78,116,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,20),(2,2,22),(3,3,24),(4,4,50),(5,5,19),(6,6,38),(7,7,6),(8,8,51),(9,9,6),(10,10,4),(11,11,38),(12,12,49),(13,13,17),(14,14,4),(15,15,6),(16,16,38),(17,17,51),(18,18,6),(19,19,4),(20,20,45),(21,21,13),(22,22,52),(23,23,38),(24,24,4),(25,25,38),(26,26,4),(27,27,51),(28,28,14),(29,29,38),(30,30,14),(31,31,25),(32,32,50),(33,33,1),(34,34,13),(35,35,25),(36,36,46),(37,37,34),(38,38,4),(39,39,25),(40,40,49),(41,41,6),(42,42,39),(43,43,25),(44,44,25),(45,45,39),(46,46,18),(47,47,9),(48,48,1),(49,49,25),(50,50,3),(51,51,25),(52,52,25),(53,53,53),(54,53,58),(55,53,56),(56,54,6),(57,55,13),(58,56,25),(59,57,42),(60,58,25),(61,59,25),(62,60,2),(63,61,25),(64,62,12),(65,63,57),(66,64,25),(67,65,34),(68,66,58),(69,67,25),(70,68,57),(71,69,25),(72,70,57),(73,71,62),(74,72,71),(75,73,57),(76,74,70),(77,75,25),(78,76,34),(79,77,57),(80,78,37),(81,79,54),(82,80,53),(83,80,56),(84,80,58),(85,81,62),(86,82,57),(87,83,25),(88,84,63),(89,84,70),(90,84,67),(91,85,53),(92,85,56),(93,85,58),(94,86,25),(95,87,70),(96,87,67),(97,87,63),(98,88,58),(99,89,36),(100,90,70),(101,91,40),(102,92,25),(103,93,59),(104,94,25),(105,95,34),(106,96,67),(107,96,70),(108,96,63),(109,97,53),(110,97,56),(111,97,58),(112,98,32),(113,99,25),(114,100,70),(115,101,58),(116,102,25),(117,103,39),(118,104,69),(119,105,36),(120,106,39),(121,107,68),(122,108,54),(123,110,25),(124,109,69),(125,111,25),(126,112,41),(127,113,25),(128,114,25),(129,115,32),(130,116,25),(131,117,25),(132,118,25),(133,119,25);
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
INSERT INTO `ExitPoints` VALUES (1,20,'<com.atools.battery.myMain: void onCreate(android.os.Bundle)>',49,'s',NULL),(2,62,'<com.atools.battery.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(3,24,'<com.atools.battery.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(4,73,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(5,19,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(6,74,'<com.tiger.activity.MainActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(7,6,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(8,51,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(9,75,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(10,4,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(11,74,'<com.tiger.activity.MainActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(12,77,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(13,17,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(14,80,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(15,75,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(16,38,'<com.tiger.activity.MainActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',8,'a',NULL),(17,51,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(18,75,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(19,4,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(20,81,'<com.tiger.activity.SzCallActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(21,13,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(22,52,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(23,74,'<com.tiger.activity.MainActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(24,4,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(25,74,'<com.tiger.activity.MainActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(26,4,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(27,82,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(28,14,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(29,38,'<com.tiger.activity.MainActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',12,'a',NULL),(30,14,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(31,25,'<com.safesys.superexplorer.RootExplorer: void ExecuteZipSelected(java.lang.String)>',11,'a',NULL),(32,83,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(33,1,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(34,84,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(35,25,'<com.safesys.superexplorer.RootExplorer: void DownloadRootExplorer()>',4,'a',NULL),(36,85,'<com.tiger.activity.GzCallActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(37,86,'<com.safesys.superexplorer.SQLiteEditorAdvert$1: void onClick(android.view.View)>',21,'a',NULL),(38,4,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(39,25,'<com.safesys.superexplorer.RootExplorer: void Search()>',5,'a',NULL),(40,87,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(41,75,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(42,39,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(43,25,'<com.safesys.superexplorer.RootExplorer: void EditItem(com.safesys.superexplorer.DirectoryEntry)>',4,'a',0),(44,88,'<com.safesys.superexplorer.RootExplorer$33: void onClick(android.content.DialogInterface,int)>',37,'a',NULL),(45,89,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(46,18,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(47,9,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(48,1,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(49,25,'<com.safesys.superexplorer.RootExplorer: void CreateZipFromFolder(com.safesys.superexplorer.DirectoryEntry)>',12,'a',NULL),(50,90,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(51,25,'<com.safesys.superexplorer.RootExplorer: void ShowPermissionsDialog(com.safesys.superexplorer.DirectoryEntry)>',13,'a',NULL),(52,91,'<com.safesys.superexplorer.RootExplorer$34: void onClick(android.content.DialogInterface,int)>',23,'a',NULL),(53,92,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(54,75,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(55,13,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(56,25,'<com.safesys.superexplorer.RootExplorer: void Send(com.safesys.superexplorer.DirectoryEntry)>',6,'a',0),(57,42,'<com.safesys.superexplorer.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(58,25,'<com.safesys.superexplorer.RootExplorer: void ShowBookmarks()>',3,'a',NULL),(59,88,'<com.safesys.superexplorer.RootExplorer$33: void onClick(android.content.DialogInterface,int)>',37,'a',NULL),(60,2,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(61,25,'<com.safesys.superexplorer.RootExplorer: void OpenItem(com.safesys.superexplorer.DirectoryEntry)>',53,'a',NULL),(62,12,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(63,93,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(64,25,'<com.safesys.superexplorer.RootExplorer: void Search()>',5,'a',NULL),(65,34,'<com.safesys.superexplorer.SQLiteEditorAdvert: void DownloadSQLiteEditor()>',4,'a',NULL),(66,58,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(67,25,'<com.safesys.superexplorer.RootExplorer: void CreateZipFromFile(com.safesys.superexplorer.DirectoryEntry)>',16,'a',NULL),(68,57,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(69,25,'<com.safesys.superexplorer.RootExplorer: void OpenItem(com.safesys.superexplorer.DirectoryEntry)>',53,'a',NULL),(70,57,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(71,94,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(72,72,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(73,95,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(74,71,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(75,25,'<com.safesys.superexplorer.RootExplorer: void CreateZipFromFile(com.safesys.superexplorer.DirectoryEntry)>',16,'a',NULL),(76,86,'<com.safesys.superexplorer.SQLiteEditorAdvert$1: void onClick(android.view.View)>',21,'a',NULL),(77,97,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(78,99,'<com.safesys.superexplorer.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(79,100,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(80,101,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(81,102,'<com.mogo.katongllk.begin$beginButtonListener: void onClick(android.view.View)>',36,'a',NULL),(82,103,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(83,25,'<com.safesys.superexplorer.RootExplorer: void CreateZipFromFolder(com.safesys.superexplorer.DirectoryEntry)>',12,'a',NULL),(84,104,'<org.loon.framework.android.game.LGameAndroid2DActivity$10: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(85,105,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(86,91,'<com.safesys.superexplorer.RootExplorer$34: void onClick(android.content.DialogInterface,int)>',23,'a',NULL),(87,106,'<com.mobclick.android.MobclickAgent: void c(android.content.Context,java.io.File)>',11,'a',NULL),(88,107,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(89,108,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(90,71,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(91,109,'<com.ju6.a: boolean b()>',178,'p',NULL),(92,25,'<com.safesys.superexplorer.RootExplorer: void ShowBookmarks()>',3,'a',NULL),(93,59,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(94,25,'<com.safesys.superexplorer.RootExplorer: void ShowPermissionsDialog(com.safesys.superexplorer.DirectoryEntry)>',13,'a',NULL),(95,34,'<com.safesys.superexplorer.SQLiteEditorAdvert: void DownloadSQLiteEditor()>',4,'a',NULL),(96,110,'<org.loon.framework.android.game.LGameAndroid2DActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(97,111,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(98,32,'<com.safesys.superexplorer.ViewDatabase: void OpenItem(com.safesys.superexplorer.Database$Table)>',15,'a',NULL),(99,112,'<com.safesys.superexplorer.RootExplorer$31: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(100,113,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(101,58,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(102,25,'<com.safesys.superexplorer.RootExplorer: void OpenAsText(com.safesys.superexplorer.DirectoryEntry)>',10,'a',0),(103,109,'<com.ju6.a: boolean b()>',178,'p',NULL),(104,114,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(105,115,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(106,39,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(107,117,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(108,118,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(109,119,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(110,25,'<com.safesys.superexplorer.RootExplorer: void ShowPreferences()>',3,'a',NULL),(111,25,'<com.safesys.superexplorer.RootExplorer: void DownloadRootExplorer()>',4,'a',NULL),(112,41,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(113,112,'<com.safesys.superexplorer.RootExplorer$31: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(114,25,'<com.safesys.superexplorer.RootExplorer: void ShowPreferences()>',3,'a',NULL),(115,32,'<com.safesys.superexplorer.ViewDatabase: void OpenItem(com.safesys.superexplorer.Database$Table)>',15,'a',NULL),(116,25,'<com.safesys.superexplorer.RootExplorer: void OpenAsText(com.safesys.superexplorer.DirectoryEntry)>',10,'a',0),(117,25,'<com.safesys.superexplorer.RootExplorer: void Send(com.safesys.superexplorer.DirectoryEntry)>',6,'a',0),(118,25,'<com.safesys.superexplorer.RootExplorer: void EditItem(com.safesys.superexplorer.DirectoryEntry)>',4,'a',0),(119,25,'<com.safesys.superexplorer.RootExplorer: void ExecuteZipSelected(java.lang.String)>',11,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,1),(2,3,1),(3,5,9),(4,8,10),(5,10,10),(6,12,7),(7,14,13),(8,15,13),(9,16,13),(10,17,13),(11,19,13),(12,20,13),(13,21,14),(14,22,13),(15,23,13),(16,28,10),(17,30,16),(18,39,1),(19,41,1),(20,42,7),(21,46,1),(22,48,1),(23,49,1),(24,50,14),(25,51,1),(26,52,16),(27,56,14),(28,59,14),(29,61,14),(30,63,14),(31,64,1),(32,65,14),(33,68,1),(34,69,14),(35,70,14),(36,72,14),(37,73,9),(38,76,14),(39,77,14),(40,78,10),(41,79,14),(42,82,14),(43,86,14),(44,88,14),(45,90,14),(46,91,14),(47,93,14),(48,96,14),(49,97,17),(50,101,14),(51,106,14),(52,108,14),(53,109,14),(54,110,14),(55,113,14),(56,114,1),(57,116,14),(58,117,1),(59,118,17),(60,119,14),(61,121,14),(62,122,14),(63,130,14),(64,129,14),(65,131,14),(66,132,1),(67,134,9),(68,135,1),(69,136,14),(70,140,14),(71,142,14),(72,143,14),(73,145,14),(74,146,1),(75,147,1),(76,148,1),(77,150,1),(78,155,14),(79,156,19),(80,158,14),(81,159,1),(82,160,14),(83,162,1),(84,163,14),(85,165,9),(86,166,17),(87,167,9),(88,169,14),(89,172,1),(90,173,1),(91,175,1),(92,177,1),(93,178,14),(94,180,14),(95,181,14),(96,182,14),(97,184,14),(98,185,14),(99,186,14),(100,187,17),(101,188,14),(102,189,14),(103,194,14),(104,195,14),(105,197,14),(106,198,14),(107,199,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,1),(2,3,2),(3,39,2),(4,41,1),(5,46,1),(6,48,2),(7,49,1),(8,51,2),(9,64,1),(10,68,2),(11,114,1),(12,117,2),(13,132,1),(14,135,2),(15,146,1),(16,147,1),(17,148,2),(18,150,2),(19,159,2),(20,162,1),(21,172,1),(22,173,2),(23,175,1),(24,177,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/atools/battery/UpdateService'),(2,4,'com/atools/battery/UpdateService'),(3,6,'com/tutusw/phonespeedup/WidgetService'),(4,7,'com/tiger/activity/SetOffActivity'),(5,9,'com/google/update/Dialog'),(6,11,'com/google/update/Dialog'),(7,13,'com/tiger/activity/SzCallActivity'),(8,18,'com/google/ssearch/SearchService'),(9,24,'com/tutusw/phonespeedup/ProfilesService'),(10,25,'com/tiger/activity/AboutAuthor'),(11,26,'com/google/update/Dialog'),(12,27,'com/google/update/Dialog'),(13,29,'com/tutusw/phonespeedup/PerflockActivity'),(14,31,'com/google/ssearch/Dialog'),(15,32,'com/google/update/UpdateService'),(16,33,'com/google/ssearch/Dialog'),(17,34,'com/tiger/activity/GzCallActivity'),(18,35,'com/tutusw/phonespeedup/IntroActivity'),(19,36,'com/tiger/activity/OnBusActivity'),(20,37,'com/tutusw/phonespeedup/AdvancedActivity'),(21,38,'com/tutusw/phonespeedup/InfoActivity'),(22,40,'com/tutusw/phonespeedup/AboutActivity'),(23,43,'com/tiger/activity/AboutBus'),(24,44,'com/tutusw/phonespeedup/ProfilesService'),(25,47,'com/tutusw/phonespeedup/Setcpu'),(26,45,'com/safesys/superexplorer/CreateZip'),(27,54,'com/tutusw/phonespeedup/ProfilesService'),(28,55,'com/safesys/superexplorer/SearchCriteria'),(29,53,'com/safesys/superexplorer/ViewDatabase'),(30,57,'com/tutusw/phonespeedup/ProfileEditActivity'),(31,58,'com/google/update/Dialog'),(32,60,'com/google/update/Dialog'),(33,62,'com/safesys/superexplorer/DisplayText'),(34,66,'com/tutusw/phonespeedup/IntroActivity'),(35,67,'com/safesys/superexplorer/DisplayText'),(36,71,'com/safesys/superexplorer/CreateZip'),(37,75,'com/safesys/superexplorer/ScriptActivity'),(38,74,'com/safesys/superexplorer/PermissionsActivity'),(39,80,'com/google/ssearch/Dialog'),(40,84,'com/safesys/superexplorer/UpdateService'),(41,85,'com/safesys/superexplorer/BookmarkList'),(42,83,'com/google/ssearch/Dialog'),(43,89,'com/tutusw/phonespeedup/StresstestActivity'),(44,92,'com/tutusw/phonespeedup/WidgetService'),(45,87,'com/safesys/superexplorer/DisplayText'),(46,94,'com/safesys/superexplorer/DisplayText'),(47,95,'com/waps/OffersWebView'),(48,99,'com/safesys/superexplorer/SearchCriteria'),(49,98,'com/waps/OffersWebView'),(50,97,'com.safesys.sqleditor.EditDatabase'),(51,102,'com/google/update/Dialog'),(52,100,'com/safesys/superexplorer/SQLiteEditorAdvert'),(53,103,'com/google/update/Dialog'),(54,105,'com/safesys/superexplorer/CreateZip'),(55,104,'com/safesys/superexplorer/ViewDatabase'),(56,107,'(.*)'),(57,111,'com/safesys/superexplorer/DisplayText'),(58,115,'com/waps/OffersWebView'),(59,120,'com/google/update/UpdateService'),(60,118,'com.safesys.sqleditor.EditDatabase'),(61,124,'com/google/update/Dialog'),(62,123,'com/safesys/superexplorer/SQLiteEditorAdvert'),(63,125,'com/google/update/Dialog'),(64,126,'com/safesys/superexplorer/CreateZip'),(65,127,'com/safesys/superexplorer/ViewDatabase'),(66,128,'com/safesys/superexplorer/ViewDatabase'),(67,133,'com/safesys/superexplorer/DisplayText'),(68,137,'com/mogo/katongllk/Main'),(69,138,'NULL-CONSTANT'),(70,139,'com/safesys/superexplorer/CreateZip'),(71,144,'com/safesys/superexplorer/ScriptActivity'),(72,149,'com/google/update/Dialog'),(73,152,'com/safesys/superexplorer/BookmarkList'),(74,153,'com/google/update/UpdateService'),(75,151,'com/google/update/Dialog'),(76,154,'com/safesys/superexplorer/PermissionsActivity'),(77,157,'com/safesys/superexplorer/ViewTable'),(78,161,'com/google/update/Dialog'),(79,164,'com/google/update/Dialog'),(80,168,'com/google/update/Dialog'),(81,166,'com.safesys.sqleditor.EditDatabase'),(82,170,'com/google/update/Dialog'),(83,174,'com/safesys/superexplorer/Preferences'),(84,171,'com/safesys/superexplorer/SQLiteEditorAdvert'),(85,176,'com/safesys/superexplorer/ViewDatabase'),(86,179,'com/google/update/UpdateService'),(87,183,'com/safesys/superexplorer/DisplayText'),(88,187,'com.safesys.sqleditor.EditDatabase'),(89,191,'com/safesys/superexplorer/Preferences'),(90,190,'com/safesys/superexplorer/SQLiteEditorAdvert'),(91,192,'com/safesys/superexplorer/ViewDatabase'),(92,193,'com/safesys/superexplorer/ViewTable'),(93,196,'com/safesys/superexplorer/DisplayText'),(94,200,'com/safesys/superexplorer/CreateZip');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,21,1),(2,30,2),(3,50,3),(4,52,4),(5,53,5),(6,56,6),(7,59,7),(8,61,8),(9,62,9),(10,63,10),(11,65,11),(12,67,12),(13,69,13),(14,70,14),(15,72,15),(16,75,16),(17,76,17),(18,77,18),(19,79,19),(20,82,20),(21,86,21),(22,88,22),(23,87,23),(24,90,24),(25,91,25),(26,93,26),(27,94,27),(28,96,28),(29,97,29),(30,101,30),(31,100,31),(32,104,32),(33,106,33),(34,108,34),(35,109,35),(36,110,36),(37,111,37),(38,113,38),(39,116,39),(40,118,40),(41,119,41),(42,121,42),(43,122,43),(44,123,44),(45,127,45),(46,128,46),(47,129,47),(48,130,48),(49,131,49),(50,133,50),(51,136,51),(52,140,52),(53,142,53),(54,143,54),(55,144,55),(56,145,56),(57,155,59),(58,158,60),(59,160,61),(60,163,63),(61,166,64),(62,169,65),(63,171,66),(64,178,67),(65,176,68),(66,180,69),(67,181,70),(68,182,71),(69,183,72),(70,184,73),(71,185,74),(72,186,75),(73,188,76),(74,187,77),(75,189,78),(76,190,79),(77,192,80),(78,194,81),(79,195,82),(80,196,83),(81,197,84),(82,198,85),(83,199,86);
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
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,9,'MSG'),(2,9,'TYPEdsada'),(3,11,'TYPEdsada'),(4,14,'android.intent.extra.INTENT'),(5,15,'android.intent.extra.INTENT'),(6,16,'android.intent.extra.TITLE'),(7,16,'android.intent.extra.INTENT'),(8,17,'android.intent.extra.INTENT'),(9,19,'android.intent.extra.TITLE'),(10,19,'android.intent.extra.INTENT'),(11,20,'android.intent.extra.INTENT'),(12,22,'android.intent.extra.TITLE'),(13,22,'android.intent.extra.INTENT'),(14,23,'android.intent.extra.TITLE'),(15,23,'android.intent.extra.INTENT'),(16,26,'MSG'),(17,26,'TYPEdsada'),(18,27,'TYPEdsada'),(19,31,'TYPEdsada'),(20,33,'MSG'),(21,33,'TYPEdsada'),(22,45,'data'),(23,45,'zip_name'),(24,45,'mode'),(25,53,'make_readable_cmd'),(26,53,'restore_permissions_cmd'),(27,53,'permissions'),(28,55,'location'),(29,58,'MSG'),(30,58,'TYPEdsada'),(31,60,'TYPEdsada'),(32,62,'chmod_value'),(33,62,'permissions'),(34,62,'edit_mode'),(35,62,'owner'),(36,62,'group'),(37,62,'size'),(38,67,'edit_mode'),(39,67,'permissions'),(40,67,'owner'),(41,67,'group'),(42,67,'size'),(43,71,'data'),(44,71,'mode'),(45,74,'iconid'),(46,75,'permissions'),(47,75,'size'),(48,74,'name'),(49,74,'permissions'),(50,74,'fullpath'),(51,80,'TYPEdsada'),(52,83,'MSG'),(53,83,'TYPEdsada'),(54,87,'chmod_value'),(55,87,'permissions'),(56,87,'edit_mode'),(57,87,'owner'),(58,87,'group'),(59,87,'size'),(60,94,'edit_mode'),(61,94,'permissions'),(62,94,'owner'),(63,94,'group'),(64,95,'UrlPath'),(65,95,'ACTIVITY_FLAG'),(66,94,'size'),(67,95,'isFinshClose'),(68,95,'offers_webview_tag'),(69,98,'Notify_Url_Params'),(70,97,'make_readable_cmd'),(71,98,'UrlPath'),(72,97,'restore_permissions_cmd'),(73,98,'ACTIVITY_FLAG'),(74,97,'permissions'),(75,98,'isFinshClose'),(76,97,'make_writeable_cmd'),(77,98,'offers_webview_tag'),(78,99,'location'),(79,100,'make_readable_cmd'),(80,100,'restore_permissions_cmd'),(81,102,'MSG'),(82,100,'permissions'),(83,102,'TYPEdsada'),(84,100,'make_writeable_cmd'),(85,103,'TYPEdsada'),(86,104,'make_readable_cmd'),(87,105,'data'),(88,104,'restore_permissions_cmd'),(89,105,'zip_name'),(90,104,'permissions'),(91,105,'mode'),(92,111,'edit_mode'),(93,111,'permissions'),(94,115,'USER_ID'),(95,115,'CLIENT_PACKAGE'),(96,115,'Offers_URL'),(97,115,'URL_PARAMS'),(98,118,'make_readable_cmd'),(99,118,'restore_permissions_cmd'),(100,118,'permissions'),(101,118,'make_writeable_cmd'),(102,123,'make_readable_cmd'),(103,124,'TYPEdsada'),(104,123,'restore_permissions_cmd'),(105,123,'permissions'),(106,123,'make_writeable_cmd'),(107,125,'MSG'),(108,126,'data'),(109,125,'TYPEdsada'),(110,126,'zip_name'),(111,126,'mode'),(112,127,'make_readable_cmd'),(113,127,'restore_permissions_cmd'),(114,127,'permissions'),(115,128,'make_readable_cmd'),(116,128,'restore_permissions_cmd'),(117,128,'permissions'),(118,133,'edit_mode'),(119,133,'permissions'),(120,139,'data'),(121,139,'mode'),(122,144,'permissions'),(123,144,'size'),(124,149,'TYPEdsada'),(125,151,'MSG'),(126,151,'TYPEdsada'),(127,154,'iconid'),(128,154,'name'),(129,154,'permissions'),(130,154,'fullpath'),(131,157,'make_readable_cmd'),(132,157,'restore_permissions_cmd'),(133,157,'table'),(134,157,'make_writeable_cmd'),(135,161,'MSG'),(136,161,'TYPEdsada'),(137,164,'TYPEdsada'),(138,166,'make_readable_cmd'),(139,166,'restore_permissions_cmd'),(140,166,'permissions'),(141,166,'make_writeable_cmd'),(142,168,'MSG'),(143,168,'TYPEdsada'),(144,170,'TYPEdsada'),(145,171,'make_readable_cmd'),(146,171,'restore_permissions_cmd'),(147,171,'permissions'),(148,171,'make_writeable_cmd'),(149,176,'make_readable_cmd'),(150,176,'restore_permissions_cmd'),(151,176,'permissions'),(152,183,'edit_mode'),(153,183,'permissions'),(154,187,'make_readable_cmd'),(155,187,'restore_permissions_cmd'),(156,187,'permissions'),(157,187,'make_writeable_cmd'),(158,190,'make_readable_cmd'),(159,190,'restore_permissions_cmd'),(160,190,'permissions'),(161,190,'make_writeable_cmd'),(162,192,'make_readable_cmd'),(163,192,'restore_permissions_cmd'),(164,193,'make_readable_cmd'),(165,192,'permissions'),(166,193,'restore_permissions_cmd'),(167,193,'table'),(168,193,'make_writeable_cmd'),(169,196,'edit_mode'),(170,196,'permissions'),(171,200,'data'),(172,200,'zip_name'),(173,200,'mode');
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,4),(4,3,5),(5,3,3),(6,4,4),(7,5,6),(8,5,7),(9,6,1),(10,7,3),(11,7,4),(12,7,5),(13,8,1),(14,9,1),(15,10,1),(16,11,5),(17,11,4),(18,11,3),(19,12,4),(20,12,3),(21,12,5),(22,13,5),(23,13,4),(24,13,3),(25,14,1),(26,15,4),(27,15,5),(28,15,3),(29,16,8),(30,17,8),(31,18,8),(32,19,1),(33,20,5),(34,20,4),(35,20,3),(36,21,12),(37,21,7),(38,21,11),(39,22,7),(40,22,12),(41,22,11),(42,23,11),(43,23,12),(44,23,7),(45,24,11),(46,24,12),(47,24,7),(48,25,11),(49,25,12),(50,25,7),(51,26,11),(52,26,12),(53,26,7),(54,27,8),(55,27,15),(56,27,12),(57,27,11),(58,27,10),(59,28,8),(60,28,10),(61,28,15),(62,28,12),(63,28,11),(64,29,10),(65,29,11),(66,29,8),(67,29,15),(68,29,12),(69,30,8),(70,30,10),(71,30,11),(72,30,12),(73,30,15),(74,31,15),(75,31,12),(76,31,11),(77,31,10),(78,31,8),(79,32,15),(80,32,12),(81,32,11),(82,32,8),(83,32,10),(84,33,7),(85,33,11),(86,33,12),(87,34,7),(88,34,12),(89,34,11),(90,35,7),(91,35,11),(92,35,12),(93,36,7),(94,36,11),(95,36,12),(96,37,11),(97,37,7),(98,37,12),(99,38,11),(100,38,12),(101,38,7),(102,39,18),(103,40,18),(104,41,18);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,6,1),(3,8,1),(4,9,1),(5,10,1),(6,14,1),(7,19,1);
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
INSERT INTO `IFData` VALUES (1,39,'package',NULL,NULL,NULL,NULL,NULL),(2,40,'package',NULL,NULL,NULL,NULL,NULL),(3,41,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,56,'application','vnd.android.package-archive'),(2,59,'application','vnd.android.package-archive'),(3,61,'application','vnd.android.package-archive'),(4,63,'application','vnd.android.package-archive'),(5,65,'application','vnd.android.package-archive'),(6,69,'application','vnd.android.package-archive'),(7,72,'application','vnd.android.package-archive'),(8,76,'application','vnd.android.package-archive'),(9,77,'application','vnd.android.package-archive'),(10,79,'application','vnd.android.package-archive'),(11,82,'application','vnd.android.package-archive'),(12,86,'application','vnd.android.package-archive'),(13,88,'application','vnd.android.package-archive'),(14,90,'application','vnd.ms-powerpoint'),(15,91,'application','vnd.android.package-archive'),(16,93,'image','*'),(17,96,'application','pdf'),(18,106,'application','msword'),(19,108,'application','vnd.ms-powerpoint'),(20,109,'application','vnd.ms-excel'),(21,110,'image','*'),(22,113,'application','pdf'),(23,116,'application','vnd.android.package-archive'),(24,119,'audio','*'),(25,121,'application','vnd.android.package-archive'),(26,122,'video','*'),(27,130,'application','msword'),(28,129,'application','vnd.android.package-archive'),(29,131,'application','vnd.ms-excel'),(30,136,'application','vnd.android.package-archive'),(31,140,'audio','*'),(32,143,'video','*'),(33,145,'application','vnd.android.package-archive'),(34,158,'application','vnd.ms-powerpoint'),(35,160,'image','*'),(36,163,'application','pdf'),(37,169,'application','vnd.android.package-archive'),(38,180,'application','msword'),(39,181,'application','vnd.ms-excel'),(40,182,'application','vnd.ms-powerpoint'),(41,184,'image','*'),(42,185,'application','pdf'),(43,186,'application','vnd.android.package-archive'),(44,188,'audio','*'),(45,189,'video','*'),(46,194,'application','msword'),(47,195,'application','vnd.ms-excel'),(48,197,'application','vnd.android.package-archive'),(49,198,'audio','*'),(50,199,'video','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.atools.battery'),(2,2,'com.noshufou.android.su'),(3,3,'com.noshufou.android.su'),(4,4,'com.atools.battery'),(5,6,'com.tutusw.phonespeedup'),(6,7,'com.tiger.activity'),(7,9,'com.tiger.activity'),(8,11,'com.tiger.activity'),(9,13,'com.tiger.activity'),(10,18,'com.tutusw.phonespeedup'),(11,24,'com.tutusw.phonespeedup'),(12,25,'com.tiger.activity'),(13,26,'com.tiger.activity'),(14,27,'com.tiger.activity'),(15,29,'com.tutusw.phonespeedup'),(16,31,'com.tutusw.phonespeedup'),(17,32,'com.tiger.activity'),(18,33,'com.tutusw.phonespeedup'),(19,34,'com.tiger.activity'),(20,35,'com.tutusw.phonespeedup'),(21,36,'com.tiger.activity'),(22,37,'com.tutusw.phonespeedup'),(23,38,'com.tutusw.phonespeedup'),(24,39,'com.tiger.activity'),(25,40,'com.tutusw.phonespeedup'),(26,41,'com.tiger.activity'),(27,43,'com.tiger.activity'),(28,44,'com.tutusw.phonespeedup'),(29,47,'com.tutusw.phonespeedup'),(30,46,'com.noshufou.android.su'),(31,45,'com.safesys.superexplorer'),(32,48,'com.noshufou.android.su'),(33,49,'com.tutusw.phonespeedup'),(34,51,'com.tutusw.phonespeedup'),(35,54,'com.tutusw.phonespeedup'),(36,55,'com.safesys.superexplorer'),(37,53,'com.safesys.superexplorer'),(38,57,'com.tutusw.phonespeedup'),(39,58,'com.safesys.superexplorer'),(40,60,'com.safesys.superexplorer'),(41,64,'com.safesys.superexplorer'),(42,62,'com.safesys.superexplorer'),(43,66,'com.tutusw.phonespeedup'),(44,68,'com.safesys.superexplorer'),(45,67,'com.safesys.superexplorer'),(46,71,'com.safesys.superexplorer'),(47,75,'com.safesys.superexplorer'),(48,74,'com.safesys.superexplorer'),(49,80,'com.tutusw.phonespeedup'),(50,84,'com.safesys.superexplorer'),(51,85,'com.safesys.superexplorer'),(52,83,'com.tutusw.phonespeedup'),(53,89,'com.tutusw.phonespeedup'),(54,92,'com.tutusw.phonespeedup'),(55,87,'com.safesys.superexplorer'),(56,94,'com.safesys.superexplorer'),(57,95,'com.gp.solitaire'),(58,99,'com.safesys.superexplorer'),(59,98,'com.gp.solitaire'),(60,97,'com.safesys.sqleditor'),(61,102,'com.gp.solitaire'),(62,100,'com.safesys.superexplorer'),(63,103,'com.gp.solitaire'),(64,105,'com.safesys.superexplorer'),(65,104,'com.safesys.superexplorer'),(66,107,'(.*)'),(67,111,'com.safesys.superexplorer'),(68,114,'(.*)'),(69,117,'(.*)'),(70,115,'com.mogo.katongllk'),(71,120,'com.mogo.katongllk'),(72,118,'com.safesys.sqleditor'),(73,124,'com.mogo.katongllk'),(74,123,'com.safesys.superexplorer'),(75,125,'com.mogo.katongllk'),(76,126,'com.safesys.superexplorer'),(77,127,'com.safesys.superexplorer'),(78,128,'com.safesys.superexplorer'),(79,132,'com.noshufou.android.su'),(80,135,'com.noshufou.android.su'),(81,133,'com.safesys.superexplorer'),(82,137,'com.mogo.katongllk'),(83,138,'NULL-CONSTANT'),(84,139,'com.safesys.superexplorer'),(85,144,'com.safesys.superexplorer'),(86,146,'com.gp.solitaire'),(87,147,'com.noshufou.android.su'),(88,148,'com.gp.solitaire'),(89,149,'com.mogo.katongllk'),(90,150,'com.noshufou.android.su'),(91,152,'com.safesys.superexplorer'),(92,153,'com.gp.solitaire'),(93,151,'com.mogo.katongllk'),(94,154,'com.safesys.superexplorer'),(95,157,'com.safesys.superexplorer'),(96,159,'com.mogo.katongllk'),(97,162,'com.mogo.katongllk'),(98,161,'com.gp.solitaire'),(99,164,'com.gp.solitaire'),(100,168,'com.safesys.superexplorer'),(101,166,'com.safesys.sqleditor'),(102,170,'com.safesys.superexplorer'),(103,172,'com.noshufou.android.su'),(104,173,'com.noshufou.android.su'),(105,174,'com.safesys.superexplorer'),(106,171,'com.safesys.superexplorer'),(107,175,'com.noshufou.android.su'),(108,177,'com.noshufou.android.su'),(109,176,'com.safesys.superexplorer'),(110,179,'com.safesys.superexplorer'),(111,183,'com.safesys.superexplorer'),(112,187,'com.safesys.sqleditor'),(113,191,'com.safesys.superexplorer'),(114,190,'com.safesys.superexplorer'),(115,192,'com.safesys.superexplorer'),(116,193,'com.safesys.superexplorer'),(117,196,'com.safesys.superexplorer'),(118,200,'com.safesys.superexplorer');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,12,0),(3,17,0),(4,18,0),(5,19,0),(6,20,0),(7,24,0),(8,25,0),(9,25,0),(10,38,0),(11,41,0),(12,42,0),(13,52,0),(14,53,0),(15,59,0),(16,24,0),(17,60,0),(18,61,0),(19,62,0),(20,71,0),(21,19,0),(22,17,0),(23,72,0),(24,73,0),(25,74,0),(26,75,0),(27,19,0),(28,17,0),(29,72,0),(30,73,0),(31,74,0),(32,75,0),(33,19,0),(34,17,0),(35,72,0),(36,73,0),(37,74,0),(38,75,0),(39,76,0),(40,77,0),(41,78,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,3,0,0),(5,4,1,0),(6,5,0,0),(7,6,0,0),(8,7,1,0),(9,8,0,0),(10,9,1,0),(11,8,0,0),(12,10,1,0),(13,11,0,0),(14,12,1,0),(15,12,1,0),(16,12,1,0),(17,12,1,0),(18,13,0,0),(19,12,1,0),(20,12,1,0),(21,14,1,0),(22,12,1,0),(23,12,1,0),(24,15,0,0),(25,16,0,0),(26,17,0,0),(27,17,0,0),(28,18,1,0),(29,19,0,0),(30,20,1,0),(31,21,0,0),(32,22,0,0),(33,21,0,0),(34,23,0,0),(35,24,0,0),(36,25,0,0),(37,26,0,0),(38,26,0,0),(39,27,1,0),(40,26,0,0),(41,27,1,0),(42,28,1,0),(43,29,0,0),(44,30,0,0),(45,31,0,0),(46,32,1,0),(47,33,0,0),(48,32,1,0),(49,34,1,0),(50,35,1,0),(51,34,1,0),(52,36,1,0),(53,37,0,0),(54,38,0,0),(55,39,0,0),(56,40,1,0),(57,41,0,0),(58,42,0,0),(59,40,1,0),(60,42,0,0),(61,40,1,0),(62,44,0,0),(63,40,1,0),(64,45,1,0),(65,40,1,0),(66,47,0,0),(67,44,0,0),(68,45,1,0),(69,40,1,0),(70,48,1,0),(71,49,0,0),(72,40,1,0),(73,50,1,0),(74,51,0,0),(75,52,0,0),(76,40,1,0),(77,53,1,0),(78,54,1,0),(79,40,1,0),(80,55,0,0),(81,53,1,0),(82,53,1,0),(83,55,0,0),(84,57,0,0),(85,58,0,0),(86,53,1,0),(87,59,0,0),(88,53,1,0),(89,60,0,0),(90,61,1,0),(91,53,1,0),(92,62,0,0),(93,61,1,0),(94,59,0,0),(95,63,0,0),(96,61,1,0),(97,61,0,0),(98,63,0,0),(99,64,0,0),(100,61,0,0),(101,65,1,0),(102,66,0,0),(103,66,0,0),(104,61,0,0),(105,67,0,0),(106,61,1,0),(107,68,0,0),(108,69,1,0),(109,61,1,0),(110,69,1,0),(111,61,0,0),(112,70,1,0),(113,69,1,0),(114,70,1,0),(115,71,0,0),(116,61,1,0),(117,70,1,0),(118,69,0,0),(119,61,1,0),(120,72,0,0),(121,73,1,0),(122,61,1,0),(123,69,0,0),(124,74,0,0),(125,74,0,0),(126,75,0,0),(127,69,0,0),(128,76,0,0),(129,77,1,0),(130,69,1,0),(131,69,1,0),(132,78,1,0),(133,69,0,0),(134,79,1,0),(135,78,1,0),(136,69,1,0),(137,81,0,0),(138,82,0,0),(139,83,0,0),(140,69,1,0),(141,84,1,0),(142,85,1,0),(143,69,1,0),(144,86,0,0),(145,87,1,0),(146,88,1,0),(147,89,1,0),(148,88,1,0),(149,90,0,0),(150,89,1,0),(151,90,0,0),(152,92,0,0),(153,93,0,0),(154,94,0,0),(155,95,1,0),(156,96,1,0),(157,98,0,0),(158,99,1,0),(159,100,1,0),(160,99,1,0),(161,101,0,0),(162,100,1,0),(163,99,1,0),(164,101,0,0),(165,104,1,0),(166,99,0,0),(167,105,1,0),(168,106,0,0),(169,107,1,0),(170,106,0,0),(171,99,0,0),(172,108,1,0),(173,108,1,0),(174,110,0,0),(175,109,1,0),(176,99,0,0),(177,109,1,0),(178,111,1,0),(179,112,0,0),(180,99,1,0),(181,99,1,0),(182,113,1,0),(183,99,0,0),(184,113,1,0),(185,113,1,0),(186,99,1,0),(187,113,0,0),(188,99,1,0),(189,99,1,0),(190,113,0,0),(191,114,0,0),(192,113,0,0),(193,115,0,0),(194,113,1,0),(195,113,1,0),(196,113,0,0),(197,113,1,0),(198,113,1,0),(199,113,1,0),(200,119,0,0);
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
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(18,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(14,'android.permission.CALL_PHONE'),(19,'android.permission.CHANGE_CONFIGURATION'),(5,'android.permission.CHANGE_WIFI_STATE'),(16,'android.permission.GET_TASKS'),(13,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(15,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.VIBRATE'),(8,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(12,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'market://search?q=pname:com.safesys.superexplorer',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(6,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'market://search?q=pname:com.safesys.sqleditor',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(47,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(53,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(55,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(57,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(58,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(59,NULL,NULL,'market://search?q=pname:com.safesys.sqleditor',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(61,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(62,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(63,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(64,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(65,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(66,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(67,NULL,NULL,'market://search?q=pname:com.safesys.superexplorer',NULL,NULL,NULL),(68,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(69,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(70,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(71,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(72,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(73,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(74,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(75,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(76,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(77,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(78,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(79,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(80,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(81,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(82,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(83,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(84,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(85,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(86,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,91,57),(2,97,58),(3,103,62);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,4),(12,2,7),(13,2,9),(14,2,10),(15,3,1),(16,3,3),(17,3,4),(18,3,5),(19,3,9),(20,3,7),(21,3,10),(22,3,11),(23,3,12),(24,4,1),(25,4,3),(26,4,4),(27,4,5),(28,4,7),(29,4,9),(30,4,10),(31,4,11),(32,4,12),(33,4,13),(34,4,14),(35,5,1),(36,5,2),(37,5,3),(38,5,4),(39,5,5),(40,5,7),(41,5,9),(42,5,10),(43,5,11),(44,5,12),(45,5,13),(46,5,15),(47,5,17),(48,5,16),(49,5,18),(50,6,17),(51,6,1),(52,6,19),(53,6,2),(54,6,18),(55,6,3),(56,6,4),(57,6,5),(58,6,7),(59,6,9),(60,6,10),(61,6,15);
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

-- Dump completed on 2015-10-09  0:37:58
