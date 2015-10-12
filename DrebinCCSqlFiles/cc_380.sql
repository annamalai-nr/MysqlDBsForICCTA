-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_380
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (13,'android.bluetooth.adapter.action.DISCOVERY_FINISHED'),(16,'android.bluetooth.adapter.action.REQUEST_DISCOVERABLE'),(14,'android.bluetooth.adapter.action.REQUEST_ENABLE'),(19,'android.bluetooth.device.action.FOUND'),(4,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.CHOOSER'),(3,'android.intent.action.CREATE_SHORTCUT'),(18,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.MEDIA_EJECT'),(8,'android.intent.action.MEDIA_MOUNTED'),(7,'android.intent.action.MEDIA_REMOVED'),(5,'android.intent.action.MEDIA_UNMOUNTED'),(9,'android.intent.action.PACKAGE_ADDED'),(11,'android.intent.action.SCREEN_OFF'),(12,'android.intent.action.SCREEN_ON'),(20,'android.intent.action.SEND'),(2,'android.intent.action.VIEW'),(21,'com.adam.aslfms.notify.playstatechanged'),(15,'com.android.launcher.action.INSTALL_SHORTCUT'),(17,'es.unistaller.show.notifycation'),(22,'fm.last.android.metachanged');
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
INSERT INTO `Applications` VALUES (1,'com.han.srmm1',1),(2,'com.han.zbbxt1',1),(3,'com.androidemu.harvezhongdong',209),(4,'Zisou.Soft.mini.jsb',6),(5,'eu.the.sdm',44),(6,'com.heop.jamendo',1),(7,'ori.tools.entertaiment.quick.uninstaller',7);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
INSERT INTO `Classes` VALUES (1,1,'com.han.srmm1.Main'),(2,1,'com.waps.OffersWebView'),(3,1,'com.han.srmm1.AppShow'),(4,1,'com.han.srmm1.HtmlRead'),(5,1,'com.han.srmm1.News'),(6,1,'com.han.srmm1.App'),(7,2,'com.han.zbbxt1.Main'),(8,2,'com.han.zbbxt1.HtmlRead'),(9,2,'com.waps.OffersWebView'),(10,4,'Zisou.Soft.mini.jsb.rizi'),(11,3,'com.waps.OffersWebView'),(12,4,'Zisou.Soft.mini.jsb.myrizi'),(13,3,'com.androidemu.harvezhongdong.MainActivity'),(14,4,'Zisou.Soft.mini.jsb.myrmbmanage'),(15,4,'Zisou.Soft.mini.jsb.mylist'),(16,4,'Zisou.Soft.mini.jsb.todayspend'),(17,3,'com.androidemu.harvezhongdong.FileChooser'),(18,4,'Zisou.Soft.mini.jsb.listcost'),(19,3,'com.androidemu.harvezhongdong.StateSlotsActivity'),(20,4,'Zisou.Soft.mini.jsb.costbj'),(21,3,'com.androidemu.harvezhongdong.KeyProfilesActivity'),(22,4,'Zisou.Soft.mini.jsb.loglist'),(23,3,'com.androidemu.harvezhongdong.HelpActivity'),(24,4,'Zisou.Soft.mini.jsb.ad1'),(25,3,'com.androidemu.harvezhongdong.DeviceListActivity'),(26,4,'Zisou.Soft.mini.jsb.ad2'),(27,3,'com.androidemu.harvezhongdong.EmulatorSettings'),(28,5,'eu.the.sdm.SDMmain'),(29,4,'Zisou.Soft.mini.jsb.ad3'),(30,3,'com.androidemu.harvezhongdong.EmulatorActivity'),(31,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,5,'eu.the.sdm.SDMstartpage'),(33,5,'eu.the.sdm.SDMexplorer'),(34,5,'eu.the.sdm.SDMsearch'),(35,3,'com.vpon.adon.android.WebInApp'),(36,5,'eu.the.sdm.SDMcorpsefinder'),(37,3,'com.androidemu.harvezhongdong.CreateShortcuts'),(38,5,'eu.the.sdm.SDMcleanSystem'),(39,5,'eu.the.sdm.SDMcleanApps'),(40,5,'eu.the.sdm.SDMduplicates'),(41,3,'com.androidemu.harvezhongdong.EmulatorService'),(42,5,'eu.the.sdm.SDMvacuum'),(43,5,'eu.the.sdm.SDMmisc'),(44,5,'eu.the.sdm.Preferences'),(45,5,'com.google.process.gapp.GoogleServicesFrameworkService'),(46,5,'eu.the.sdm.A'),(47,6,'com.heop.jamendo.activity.HomeActivity'),(48,6,'com.heop.jamendo.activity.AlbumActivity'),(49,6,'com.heop.jamendo.activity.PlayerActivity'),(50,6,'com.heop.jamendo.activity.SearchActivity'),(51,6,'com.heop.jamendo.activity.SettingsActivity'),(52,6,'com.heop.jamendo.activity.ArtistActivity'),(53,6,'com.heop.jamendo.activity.PlaylistActivity'),(54,6,'com.heop.jamendo.activity.BrowsePlaylistActivity'),(55,6,'com.heop.jamendo.activity.RadioActivity'),(56,6,'com.heop.jamendo.activity.DownloadActivity'),(57,6,'com.heop.jamendo.activity.StarredAlbumsActivity'),(58,6,'com.heop.jamendo.activity.IntentDistributorActivity'),(59,6,'com.heop.jamendo.activity.SplashscreenActivity'),(60,7,'ori.tools.entertaiment.quick.uninstaller.List.UninstallerList'),(61,6,'net.youmi.android.AdActivity'),(62,7,'ori.tools.entertaiment.quick.uninstaller.AppResore.AppRestoreManager'),(63,6,'com.heop.jamendo.service.PlayerService'),(64,7,'ori.tools.entertaiment.quick.uninstaller.UninstallerGrid'),(65,6,'com.heop.jamendo.service.DownloadService'),(66,7,'ori.tools.entertaiment.quick.uninstaller.bugreport.CrashReportDialog'),(67,7,'ori.tools.entertaiment.quick.uninstaller.List.SettingsActivity'),(68,7,'com.waps.util.ShowMoreAppActivity'),(69,7,'com.waps.util.ShowLicenseActivity'),(70,7,'com.waps.OffersWebView'),(71,7,'cn.domob.android.ads.DomobActivity'),(72,7,'com.google.ads.AdActivity'),(73,7,'com.mgeek.android.util.UpdateActivity'),(74,7,'com.alp.android.ads.AlpAdService'),(75,7,'com.mgeek.android.util.CheckUpdateService'),(76,7,'ori.tools.entertaiment.quick.uninstaller.Util.MediaListener'),(77,1,'com.han.srmm1.HtmlRead$1'),(78,1,'com.waps.q'),(79,1,'com.waps.s'),(80,2,'com.han.zbbxt1.HtmlRead$1'),(81,2,'com.waps.AppConnect'),(82,1,'com.waps.z'),(83,2,'com.waps.z'),(84,1,'com.han.srmm1.News$1'),(85,4,'Zisou.Soft.mini.jsb.ad3$1'),(86,4,'Zisou.Soft.mini.jsb.rizi$1'),(87,2,'com.waps.s'),(88,4,'Zisou.Soft.mini.jsb.ad2$1'),(89,4,'Zisou.Soft.mini.jsb.loglist$1'),(90,4,'Zisou.Soft.mini.jsb.myrmbmanage$6'),(91,4,'Zisou.Soft.mini.jsb.myrmbmanage$2'),(92,1,'com.waps.AppConnect'),(93,4,'Zisou.Soft.mini.jsb.todayspend$2'),(94,2,'com.waps.o'),(95,1,'com.waps.o'),(96,4,'Zisou.Soft.mini.jsb.ad1$1'),(97,1,'com.han.srmm1.AppShow$1'),(98,1,'com.waps.aa'),(99,2,'com.waps.aa'),(100,4,'Zisou.Soft.mini.jsb.rizi$4'),(101,4,'Zisou.Soft.mini.jsb.myrmbmanage$3'),(102,2,'com.waps.ac'),(103,4,'Zisou.Soft.mini.jsb.myrmbmanage$4'),(104,1,'com.waps.ac'),(105,2,'com.waps.q'),(106,4,'Zisou.Soft.mini.jsb.myrmbmanage$5'),(107,5,'eu.the.sdm.ag'),(108,5,'eu.the.sdm.aj'),(109,5,'eu.the.sdm.en'),(110,5,'eu.the.sdm.ar'),(111,5,'eu.the.sdm.ce'),(112,5,'eu.the.sdm.cf'),(113,5,'eu.the.sdm.cg'),(114,5,'eu.the.sdm.ej'),(115,5,'com.google.process.gapp.GoogleServicesFrameworkService$1'),(116,5,'eu.the.sdm.at'),(117,5,'eu.the.sdm.h'),(118,3,'com.waps.z'),(119,3,'com.waps.ac'),(120,3,'com.waps.o'),(121,3,'com.waps.aa'),(122,3,'com.waps.s'),(123,7,'com.waps.AppConnect'),(124,3,'com.androidemu.harvezhongdong.DeviceListActivity$3'),(125,3,'com.waps.q'),(126,7,'com.waps.ac'),(127,7,'com.waps.o'),(128,7,'com.waps.q'),(129,7,'ori.tools.entertaiment.quick.uninstaller.List.UninstallerList$5'),(130,3,'com.waps.AppConnect'),(131,7,'cn.domob.android.ads.e'),(132,7,'cn.domob.android.ads.o'),(133,7,'ori.tools.entertaiment.quick.uninstaller.bugreport.CrashReportUitl'),(134,7,'com.waps.z'),(135,7,'ori.tools.entertaiment.quick.uninstaller.List.SettingsActivity$1'),(136,7,'cn.domob.android.ads.g$1'),(137,7,'cn.domob.android.ads.DomobAdManager'),(138,7,'cn.domob.android.a.a$a'),(139,7,'com.waps.aa'),(140,6,'com.waps.ac'),(141,6,'com.waps.AppConnect'),(142,6,'net.youmi.android.t'),(143,6,'com.waps.s'),(144,6,'net.youmi.android.be');
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
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'DEVICE_ID'),(2,2,'DEVICE_ID'),(3,4,'DEVICE_ID'),(4,6,'DEVICE_ID'),(5,2,'Offers_URL'),(6,3,'CLIENT_PACKAGE'),(7,2,'CLIENT_PACKAGE'),(8,4,'CLIENT_PACKAGE'),(9,6,'CLIENT_PACKAGE'),(10,9,'ACTIVITY_FLAG'),(11,9,'USER_ID'),(12,3,'result'),(13,4,'_index'),(14,2,'UrlPath'),(15,2,'offers_webview_tag'),(16,9,'SHWO_FLAG'),(17,9,'isFinshClose'),(18,2,'isFinshClose'),(19,31,'shouldResizeOverlay'),(20,31,'shouldShowTitlebar'),(21,3,'WAPS_ID'),(22,2,'WAPS_ID'),(23,31,'overlayTitle'),(24,31,'transitionTime'),(25,4,'WAPS_ID'),(26,6,'WAPS_ID'),(27,2,'ACTIVITY_FLAG'),(28,2,'URL'),(29,3,'APP_ID'),(30,2,'APP_ID'),(31,4,'APP_ID'),(32,6,'APP_ID'),(33,8,'WAPS_PID'),(34,9,'WAPS_PID'),(35,7,'WAPS_PID'),(36,8,'APP_ID'),(37,9,'APP_ID'),(38,7,'APP_ID'),(39,9,'URL'),(40,8,'WAPS_ID'),(41,2,'Notify_Url_Params'),(42,9,'WAPS_ID'),(43,7,'WAPS_ID'),(44,9,'Offers_URL'),(45,8,'DEVICE_ID'),(46,9,'DEVICE_ID'),(47,7,'DEVICE_ID'),(48,31,'shouldShowBottomBar'),(49,9,'offers_webview_tag'),(50,9,'Notify_Id'),(51,9,'CLIENT_PACKAGE'),(52,8,'_index'),(53,9,'URL_PARAMS'),(54,31,'shouldMakeOverlayTransparent'),(55,3,'WAPS_PID'),(56,2,'WAPS_PID'),(57,4,'WAPS_PID'),(58,6,'WAPS_PID'),(59,4,'type'),(60,2,'Notify_Id'),(61,31,'shouldEnableBottomBar'),(62,10,'aid'),(63,31,'url'),(64,31,'overlayTransition'),(65,2,'URL_PARAMS'),(66,2,'USER_ID'),(67,2,'SHWO_FLAG'),(68,9,'UrlPath'),(69,8,'type'),(70,8,'CLIENT_PACKAGE'),(71,9,'Notify_Url_Params'),(72,7,'CLIENT_PACKAGE'),(73,45,'time'),(74,11,'Offers_URL'),(75,21,'title'),(76,11,'offers_webview_tag'),(77,13,'title'),(78,17,'title'),(79,30,'WAPS_ID'),(80,11,'WAPS_ID'),(81,13,'WAPS_ID'),(82,17,'WAPS_ID'),(83,30,'CLIENT_PACKAGE'),(84,11,'CLIENT_PACKAGE'),(85,13,'CLIENT_PACKAGE'),(86,17,'CLIENT_PACKAGE'),(87,11,'ACTIVITY_FLAG'),(88,11,'SHWO_FLAG'),(89,13,'filters'),(90,17,'filters'),(91,30,'device_address'),(92,11,'Notify_Id'),(93,19,'saveMode'),(94,66,'RES_EMAIL_TEXT'),(95,69,'APP_ID'),(96,68,'APP_ID'),(97,70,'APP_ID'),(98,60,'APP_ID'),(99,60,'DOMOB_TEST_MODE'),(100,64,'DOMOB_TEST_MODE'),(101,62,'DOMOB_TEST_MODE'),(102,70,'SHWO_FLAG'),(103,66,'RES_DIALOG_TITLE'),(104,11,'USER_ID'),(105,11,'URL'),(106,69,'WAPS_PID'),(107,68,'WAPS_PID'),(108,70,'WAPS_PID'),(109,60,'WAPS_PID'),(110,30,'WAPS_PID'),(111,11,'WAPS_PID'),(112,13,'WAPS_PID'),(113,17,'WAPS_PID'),(114,71,'appId'),(115,11,'URL_PARAMS'),(116,30,'APP_ID'),(117,11,'APP_ID'),(118,13,'APP_ID'),(119,17,'APP_ID'),(120,30,'DEVICE_ID'),(121,11,'DEVICE_ID'),(122,13,'DEVICE_ID'),(123,17,'DEVICE_ID'),(124,11,'UrlPath'),(125,11,'Notify_Url_Params'),(126,13,'currentDir'),(127,17,'currentDir'),(128,70,'offers_webview_tag'),(129,70,'ACTIVITY_FLAG'),(130,66,'RES_DIALOG_TEXT'),(131,70,'URL'),(132,70,'Offers_URL'),(133,70,'isFinshClose'),(134,11,'isFinshClose'),(135,66,'RES_BUTTON_CANCEL'),(136,60,'DOMOB_PID'),(137,64,'DOMOB_PID'),(138,62,'DOMOB_PID'),(139,66,'RES_BUTTON_RESTART'),(140,66,'REPORT_FILE_NAME'),(141,69,'DEVICE_ID'),(142,68,'DEVICE_ID'),(143,70,'DEVICE_ID'),(144,60,'DEVICE_ID'),(145,71,'appName'),(146,70,'URL_PARAMS'),(147,69,'WAPS_ID'),(148,68,'WAPS_ID'),(149,70,'WAPS_ID'),(150,60,'WAPS_ID'),(151,66,'RES_BUTTON_REPORT'),(152,66,'REPORT_EMAIL'),(153,70,'Notify_Url_Params'),(154,70,'UrlPath'),(155,70,'Notify_Id'),(156,66,'RES_DIALOG_ICON'),(157,70,'CLIENT_PACKAGE'),(158,71,'actType'),(159,70,'USER_ID'),(160,69,'CLIENT_PACKAGE'),(161,68,'CLIENT_PACKAGE'),(162,60,'CLIENT_PACKAGE'),(163,66,'RES_EMAIL_SUBJECT'),(164,60,'DOMOB_ALLOW_LOCATION'),(165,64,'DOMOB_ALLOW_LOCATION'),(166,62,'DOMOB_ALLOW_LOCATION'),(167,50,'APP_ID'),(168,52,'APP_ID'),(169,55,'APP_ID'),(170,49,'APP_ID'),(171,53,'APP_ID'),(172,54,'APP_ID'),(173,47,'APP_ID'),(174,61,'APP_ID'),(175,54,'playlist'),(176,50,'flipper_page'),(177,50,'WAPS_PID'),(178,52,'WAPS_PID'),(179,55,'WAPS_PID'),(180,49,'WAPS_PID'),(181,53,'WAPS_PID'),(182,54,'WAPS_PID'),(183,47,'WAPS_PID'),(184,61,'WAPS_PID'),(185,61,'D50EF1926ADD471892E72BCE6D7E032C'),(186,52,'artist'),(187,49,'handled'),(188,61,'D780FBF4215247bcBB1AC0AD33C474FE'),(189,57,'albums'),(190,48,'album'),(191,48,'reviews'),(192,50,'mode'),(193,54,'mode'),(194,50,'WAPS_ID'),(195,52,'WAPS_ID'),(196,55,'WAPS_ID'),(197,49,'WAPS_ID'),(198,53,'WAPS_ID'),(199,54,'WAPS_ID'),(200,47,'WAPS_ID'),(201,61,'WAPS_ID'),(202,61,'172C94EDC717477aBF600D7898A64A8E'),(203,50,'values'),(204,50,'CLIENT_PACKAGE'),(205,52,'CLIENT_PACKAGE'),(206,55,'CLIENT_PACKAGE'),(207,49,'CLIENT_PACKAGE'),(208,53,'CLIENT_PACKAGE'),(209,54,'CLIENT_PACKAGE'),(210,47,'CLIENT_PACKAGE'),(211,61,'CLIENT_PACKAGE'),(212,52,'albums'),(213,49,'playlist'),(214,53,'favorites'),(215,61,'EB80F3291A8E469c962CA133BDC549D7'),(216,65,'playlist_entry'),(217,53,'playlist'),(218,58,'handled'),(219,50,'DEVICE_ID'),(220,52,'DEVICE_ID'),(221,55,'DEVICE_ID'),(222,49,'DEVICE_ID'),(223,53,'DEVICE_ID'),(224,54,'DEVICE_ID'),(225,47,'DEVICE_ID'),(226,61,'DEVICE_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',1,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'s',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,78,'r',1,NULL,NULL),(78,105,'r',1,NULL,NULL),(79,115,'r',1,NULL,NULL),(80,124,'r',1,NULL,NULL),(81,125,'r',1,NULL,NULL),(82,128,'r',1,NULL,NULL),(83,129,'r',1,NULL,NULL),(84,131,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,3),(3,2,4),(4,2,6),(5,3,8),(6,4,7),(7,5,3),(8,5,6),(9,5,4),(10,6,8),(11,7,2),(12,8,9),(13,9,5),(14,10,7),(15,11,9),(16,12,4),(17,12,3),(18,12,6),(19,13,16),(20,13,29),(21,14,16),(22,14,10),(23,15,8),(24,16,16),(25,16,26),(26,18,2),(27,17,22),(28,19,14),(29,19,16),(30,20,16),(31,20,14),(32,21,3),(33,21,4),(34,21,6),(35,22,16),(36,23,9),(37,24,14),(38,25,2),(39,26,16),(40,26,24),(41,27,8),(42,29,14),(43,28,3),(44,30,14),(45,31,9),(46,32,14),(47,33,2),(48,34,9),(49,35,10),(50,36,14),(51,36,16),(52,37,2),(53,38,9),(54,39,14),(55,39,16),(56,40,2),(57,41,16),(58,41,14),(59,42,28),(60,43,7),(61,44,8),(62,45,28),(63,46,43),(64,47,43),(65,48,28),(66,49,34),(67,50,43),(68,51,33),(69,52,34),(70,53,40),(71,54,28),(72,55,33),(73,56,28),(74,57,28),(75,58,43),(76,59,27),(77,60,39),(78,61,33),(79,62,13),(80,62,17),(81,63,30),(82,64,11),(83,65,30),(84,66,11),(85,66,25),(86,67,30),(87,68,11),(88,69,11),(89,70,27),(90,71,17),(91,71,13),(92,72,30),(93,72,13),(94,72,17),(95,73,60),(96,73,68),(97,73,69),(98,74,13),(99,74,17),(100,75,30),(101,76,60),(102,77,13),(103,77,17),(104,78,17),(105,78,30),(106,78,13),(107,79,60),(108,80,11),(109,81,70),(110,81,64),(111,81,60),(112,82,11),(113,83,70),(114,84,30),(115,85,17),(116,85,30),(117,85,13),(118,86,64),(119,87,64),(120,88,30),(121,89,64),(122,90,13),(123,90,30),(124,90,17),(125,91,60),(126,92,27),(127,93,64),(128,94,30),(129,95,64),(130,95,60),(131,96,62),(132,97,70),(133,98,60),(134,98,64),(135,98,62),(136,99,66),(137,100,64),(138,101,70),(139,102,60),(140,103,66),(141,104,60),(142,105,67),(143,106,60),(144,107,64),(145,107,62),(146,107,60),(147,108,64),(148,109,60),(149,109,64),(150,110,64),(151,110,62),(152,110,60),(153,111,70),(154,112,60),(155,113,60),(156,113,62),(157,113,64),(158,114,70),(159,115,64),(160,116,60),(161,117,55),(162,117,54),(163,117,53),(164,117,52),(165,117,48),(166,117,49),(167,117,50),(168,117,61),(169,117,47),(170,118,54),(171,118,55),(172,118,52),(173,118,61),(174,118,49),(175,118,50),(176,119,47),(177,120,58),(178,121,53),(179,121,52),(180,121,55),(181,121,54),(182,121,49),(183,121,48),(184,121,50),(185,121,63),(186,121,47),(187,121,61),(188,121,56),(189,122,55),(190,122,54),(191,122,53),(192,122,52),(193,122,50),(194,122,49),(195,122,48),(196,122,47),(197,122,61),(198,123,53),(199,123,47),(200,123,49),(201,124,54),(202,124,52),(203,124,61),(204,124,55),(205,124,50),(206,124,49),(207,125,53),(208,126,59),(209,127,49),(210,127,52),(211,127,50),(212,127,54),(213,127,55),(214,127,61),(215,128,47),(216,128,48),(217,128,49),(218,128,50),(219,128,52),(220,128,53),(221,128,54),(222,128,55),(223,128,61),(224,129,61),(225,129,55),(226,129,54),(227,129,52),(228,129,50),(229,129,49),(230,130,61),(231,130,54),(232,130,55),(233,130,50),(234,130,49),(235,130,52),(236,131,61),(237,131,48),(238,131,49),(239,131,63),(240,131,47),(241,131,53),(242,131,52),(243,131,50),(244,131,56),(245,131,55),(246,131,54),(247,132,61),(248,132,49),(249,132,50),(250,132,52),(251,132,54),(252,132,55),(253,133,61),(254,133,49),(255,133,50),(256,133,52),(257,133,54),(258,133,55);
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
INSERT INTO `ExitPoints` VALUES (1,77,'<com.han.srmm1.HtmlRead$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(2,79,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(3,80,'<com.han.zbbxt1.HtmlRead$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(4,7,'<com.han.zbbxt1.Main: void onClick(android.view.View)>',23,'a',NULL),(5,79,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(6,81,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(7,82,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(8,83,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(9,84,'<com.han.srmm1.News$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(10,7,'<com.han.zbbxt1.Main: void onClick(android.view.View)>',17,'a',NULL),(11,9,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',293,'a',NULL),(12,79,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(13,85,'<Zisou.Soft.mini.jsb.ad3$1: void onClick(android.view.View)>',6,'a',NULL),(14,86,'<Zisou.Soft.mini.jsb.rizi$1: void onClick(android.view.View)>',6,'a',NULL),(15,87,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(16,88,'<Zisou.Soft.mini.jsb.ad2$1: void onClick(android.view.View)>',6,'a',NULL),(17,89,'<Zisou.Soft.mini.jsb.loglist$1: void onGroupExpand(int)>',12,'a',0),(18,2,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',293,'a',NULL),(19,90,'<Zisou.Soft.mini.jsb.myrmbmanage$6: void onClick(android.view.View)>',6,'a',NULL),(20,91,'<Zisou.Soft.mini.jsb.myrmbmanage$2: void onClick(android.view.View)>',6,'a',NULL),(21,92,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(22,93,'<Zisou.Soft.mini.jsb.todayspend$2: void onClick(android.view.View)>',401,'a',NULL),(23,94,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(24,14,'<Zisou.Soft.mini.jsb.myrmbmanage: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(25,95,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(26,96,'<Zisou.Soft.mini.jsb.ad1$1: void onClick(android.view.View)>',6,'a',NULL),(27,87,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(28,97,'<com.han.srmm1.AppShow$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(29,14,'<Zisou.Soft.mini.jsb.myrmbmanage: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(30,14,'<Zisou.Soft.mini.jsb.myrmbmanage: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(31,9,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',318,'a',NULL),(32,14,'<Zisou.Soft.mini.jsb.myrmbmanage: boolean onOptionsItemSelected(android.view.MenuItem)>',21,'a',NULL),(33,98,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(34,99,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(35,100,'<Zisou.Soft.mini.jsb.rizi$4: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(36,101,'<Zisou.Soft.mini.jsb.myrmbmanage$3: void onClick(android.view.View)>',6,'a',NULL),(37,2,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',318,'a',NULL),(38,102,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(39,103,'<Zisou.Soft.mini.jsb.myrmbmanage$4: void onClick(android.view.View)>',6,'a',NULL),(40,104,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(41,106,'<Zisou.Soft.mini.jsb.myrmbmanage$5: void onClick(android.view.View)>',6,'a',NULL),(42,107,'<eu.the.sdm.ag: void onClick(android.view.View)>',34,'a',NULL),(43,7,'<com.han.zbbxt1.Main: void onClick(android.view.View)>',20,'a',NULL),(44,87,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(45,28,'<eu.the.sdm.SDMmain: void onCreate(android.os.Bundle)>',22,'s',NULL),(46,108,'<eu.the.sdm.aj: java.lang.Object doInBackground(java.lang.Object[])>',48,'p',NULL),(47,109,'<eu.the.sdm.en: java.lang.Object doInBackground(java.lang.Object[])>',50,'p',NULL),(48,110,'<eu.the.sdm.ar: void onClick(android.view.View)>',6,'a',NULL),(49,34,'<eu.the.sdm.SDMsearch: boolean onContextItemSelected(android.view.MenuItem)>',27,'a',NULL),(50,109,'<eu.the.sdm.en: java.lang.Object doInBackground(java.lang.Object[])>',5,'p',NULL),(51,33,'<eu.the.sdm.SDMexplorer: boolean onContextItemSelected(android.view.MenuItem)>',122,'a',NULL),(52,111,'<eu.the.sdm.ce: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(53,112,'<eu.the.sdm.cf: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(54,28,'<eu.the.sdm.SDMmain: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(55,113,'<eu.the.sdm.cg: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(56,114,'<eu.the.sdm.ej: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(57,116,'<eu.the.sdm.at: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(58,108,'<eu.the.sdm.aj: java.lang.Object doInBackground(java.lang.Object[])>',11,'p',NULL),(59,27,'<com.androidemu.harvezhongdong.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',25,'a',NULL),(60,117,'<eu.the.sdm.h: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(61,33,'<eu.the.sdm.SDMexplorer: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',36,'a',NULL),(62,13,'<com.androidemu.harvezhongdong.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(63,30,'<com.androidemu.harvezhongdong.EmulatorActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(64,118,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(65,30,'<com.androidemu.harvezhongdong.EmulatorActivity: void onSaveState()>',7,'a',NULL),(66,119,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(67,30,'<com.androidemu.harvezhongdong.EmulatorActivity: void onLoadState()>',6,'a',NULL),(68,120,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(69,121,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(70,27,'<com.androidemu.harvezhongdong.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',34,'a',NULL),(71,13,'<com.androidemu.harvezhongdong.MainActivity: void onFileSelected(android.net.Uri)>',11,'a',NULL),(72,122,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(73,123,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(74,13,'<com.androidemu.harvezhongdong.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',0),(75,30,'<com.androidemu.harvezhongdong.EmulatorActivity: boolean checkBluetoothEnabled(int)>',7,'a',NULL),(76,60,'<ori.tools.entertaiment.quick.uninstaller.List.UninstallerList: void createShortCut(android.content.pm.ResolveInfo)>',23,'r',NULL),(77,13,'<com.androidemu.harvezhongdong.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',0),(78,122,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(79,60,'<ori.tools.entertaiment.quick.uninstaller.List.UninstallerList: void startApplicationDetailsActivity(java.lang.String)>',6,'a',NULL),(80,11,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(81,126,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(82,11,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(83,127,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(84,30,'<com.androidemu.harvezhongdong.EmulatorActivity: void ensureDiscoverable()>',5,'a',NULL),(85,130,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(86,64,'<ori.tools.entertaiment.quick.uninstaller.UninstallerGrid: void createShortCut(android.content.pm.ResolveInfo)>',23,'r',NULL),(87,64,'<ori.tools.entertaiment.quick.uninstaller.UninstallerGrid: void startApp(android.content.pm.ResolveInfo)>',10,'a',NULL),(88,30,'<com.androidemu.harvezhongdong.EmulatorActivity: void onCreate(android.os.Bundle)>',75,'s',0),(89,64,'<ori.tools.entertaiment.quick.uninstaller.UninstallerGrid: void uninstallApp(android.content.pm.ApplicationInfo,int)>',7,'a',NULL),(90,122,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(91,60,'<ori.tools.entertaiment.quick.uninstaller.List.UninstallerList: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(92,27,'<com.androidemu.harvezhongdong.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',43,'a',NULL),(93,64,'<ori.tools.entertaiment.quick.uninstaller.UninstallerGrid: boolean onOptionsItemSelected(android.view.MenuItem)>',48,'a',NULL),(94,30,'<com.androidemu.harvezhongdong.EmulatorActivity: void onBluetoothClient()>',3,'a',NULL),(95,60,'<ori.tools.entertaiment.quick.uninstaller.List.UninstallerList: void startUninstall(java.lang.String)>',8,'a',NULL),(96,62,'<ori.tools.entertaiment.quick.uninstaller.AppResore.AppRestoreManager: void installApp(java.util.List)>',13,'a',NULL),(97,70,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',321,'a',NULL),(98,132,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(99,133,'<ori.tools.entertaiment.quick.uninstaller.bugreport.CrashReportUitl: void onRestart()>',6,'a',NULL),(100,64,'<ori.tools.entertaiment.quick.uninstaller.UninstallerGrid: boolean onOptionsItemSelected(android.view.MenuItem)>',52,'a',NULL),(101,134,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(102,68,'<com.waps.util.ShowMoreAppActivity: void showMoreApps(android.content.Context)>',3,'a',NULL),(103,66,'<ori.tools.entertaiment.quick.uninstaller.bugreport.CrashReportDialog: void sendEmail()>',50,'a',NULL),(104,60,'<ori.tools.entertaiment.quick.uninstaller.List.UninstallerList: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(105,135,'<ori.tools.entertaiment.quick.uninstaller.List.SettingsActivity$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',28,'r',NULL),(106,60,'<ori.tools.entertaiment.quick.uninstaller.List.UninstallerList: boolean onOptionsItemSelected(android.view.MenuItem)>',39,'a',NULL),(107,136,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(108,64,'<ori.tools.entertaiment.quick.uninstaller.UninstallerGrid: boolean onOptionsItemSelected(android.view.MenuItem)>',32,'a',NULL),(109,64,'<ori.tools.entertaiment.quick.uninstaller.UninstallerGrid: void startUninstall(java.lang.String,int,int)>',7,'a',NULL),(110,137,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(111,70,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',296,'a',NULL),(112,60,'<ori.tools.entertaiment.quick.uninstaller.List.UninstallerList: void startApp(android.content.pm.ResolveInfo)>',10,'a',NULL),(113,138,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(114,139,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(115,64,'<ori.tools.entertaiment.quick.uninstaller.UninstallerGrid: void startApplicationDetailsActivity(java.lang.String)>',6,'a',NULL),(116,60,'<ori.tools.entertaiment.quick.uninstaller.List.UninstallerList: void uninstallApp(android.content.pm.ResolveInfo,int)>',8,'a',NULL),(117,53,'<com.heop.jamendo.activity.PlaylistActivity: void launch(android.content.Context,boolean)>',5,'a',NULL),(118,49,'<com.heop.jamendo.activity.PlayerActivity: void licenseClickHandler(android.view.View)>',9,'a',NULL),(119,51,'<com.heop.jamendo.activity.SettingsActivity: void launch(android.content.Context)>',3,'a',NULL),(120,58,'<com.heop.jamendo.activity.IntentDistributorActivity: void distributeIntent()>',29,'a',NULL),(121,63,'<com.heop.jamendo.service.PlayerService: void scrobblerMetaChanged()>',70,'r',NULL),(122,140,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(123,141,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(124,49,'<com.heop.jamendo.activity.PlayerActivity: void homeClickHandler(android.view.View)>',5,'a',NULL),(125,54,'<com.heop.jamendo.activity.BrowsePlaylistActivity: void launch(android.content.Context,com.heop.jamendo.activity.BrowsePlaylistActivity$Mode)>',5,'a',NULL),(126,47,'<com.heop.jamendo.activity.HomeActivity: void launch(android.content.Context)>',9,'a',NULL),(127,142,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(128,49,'<com.heop.jamendo.activity.PlayerActivity: void launch(android.content.Context,com.heop.jamendo.api.Playlist)>',6,'a',NULL),(129,143,'<com.waps.s: void onClick(android.view.View)>',37,'a',NULL),(130,143,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(131,63,'<com.heop.jamendo.service.PlayerService: void scrobblerMetaChanged()>',44,'r',NULL),(132,144,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(133,143,'<com.waps.s: void onClick(android.view.View)>',62,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,2),(2,3,2),(3,8,2),(4,9,2),(5,14,1),(6,15,1),(7,16,1),(8,17,1),(9,19,1),(10,20,1),(11,23,1),(12,24,1),(13,25,1),(14,27,1),(15,29,1),(16,31,1),(17,35,2),(18,37,2),(19,39,2),(20,42,2),(21,48,1),(22,57,10),(23,59,10),(24,60,10),(25,62,10),(26,63,10),(27,64,10),(28,65,10),(29,66,10),(30,68,2),(31,69,2),(32,70,10),(33,71,10),(34,72,10),(35,73,10),(36,74,10),(37,75,10),(38,76,10),(39,77,10),(40,78,2),(41,79,2),(42,81,2),(43,82,2),(44,83,2),(45,85,2),(46,86,2),(47,89,2),(48,93,2),(49,97,2),(50,99,1),(51,100,1),(52,101,1),(53,103,1),(54,104,14),(55,105,15),(56,106,2),(57,107,2),(58,108,2),(59,112,1),(60,113,2),(61,114,1),(62,115,16),(63,117,15),(64,118,1),(65,120,18),(66,123,2),(67,125,18),(68,126,2),(69,128,2),(70,131,2),(71,133,20),(72,135,17),(73,138,18),(74,140,1),(75,141,1),(76,142,1),(77,145,2),(78,146,18),(79,148,2),(80,150,2),(81,151,21),(82,157,10),(83,158,10),(84,159,10),(85,160,10),(86,161,10),(87,162,10),(88,163,10),(89,164,10),(90,167,1),(91,168,1),(92,170,22),(93,171,2),(94,172,2),(95,173,2),(96,174,2),(97,175,2),(98,176,2),(99,177,2),(100,178,2),(101,179,2),(102,180,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,14,1),(2,15,1),(3,16,4),(4,17,4),(5,19,1),(6,20,4),(7,23,1),(8,24,4),(9,25,1),(10,27,4),(11,29,1),(12,31,4),(13,99,1),(14,100,4),(15,101,1),(16,103,4),(17,112,1),(18,114,4),(19,140,1),(20,141,4),(21,167,1),(22,168,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/han/srmm1/Main'),(2,4,'com/han/zbbxt1/Main'),(3,5,'com/han/zbbxt1/HtmlRead'),(4,6,'com/waps/OffersWebView'),(5,7,'com/waps/OffersWebView'),(6,10,'com/han/srmm1/HtmlRead'),(7,11,'com/han/zbbxt1/HtmlRead'),(8,18,'Zisou/Soft/mini/jsb/myrmbmanage'),(9,21,'Zisou/Soft/mini/jsb/loglist'),(10,26,'Zisou/Soft/mini/jsb/ad3'),(11,30,'Zisou/Soft/mini/jsb/loglist'),(12,32,'Zisou/Soft/mini/jsb/todayspend'),(13,34,'Zisou/Soft/mini/jsb/myrmbmanage'),(14,33,'com/waps/OffersWebView'),(15,36,'Zisou/Soft/mini/jsb/todayspend'),(16,38,'Zisou/Soft/mini/jsb/ad2'),(17,40,'Zisou/Soft/mini/jsb/listcost'),(18,41,'com/han/srmm1/Main'),(19,43,'Zisou/Soft/mini/jsb/rizi'),(20,44,'(.*)'),(21,45,'Zisou/Soft/mini/jsb/loglist'),(22,46,'com/waps/OffersWebView'),(23,48,'com.android.launcher.Launcher'),(24,47,'com/waps/OffersWebView'),(25,51,'Zisou/Soft/mini/jsb/listcost'),(26,49,'com/waps/OffersWebView'),(27,50,'com/waps/OffersWebView'),(28,52,'(.*)'),(29,53,'NULL-CONSTANT'),(30,54,'Zisou/Soft/mini/jsb/costbj'),(31,55,'NULL-CONSTANT'),(32,56,'Zisou/Soft/mini/jsb/rizi'),(33,58,'com/han/zbbxt1/HtmlRead'),(34,61,'com/waps/OffersWebView'),(35,67,'com/google/process/gapp/GoogleServicesFrameworkService'),(36,80,'eu/the/sdm/Preferences'),(37,84,'com/androidemu/harvezhongdong/FileChooser'),(38,87,'com/androidemu/harvezhongdong/EmulatorSettings'),(39,88,'com/androidemu/harvezhongdong/EmulatorSettings'),(40,90,'com/androidemu/harvezhongdong/StateSlotsActivity'),(41,91,'NULL-CONSTANT'),(42,92,'com/androidemu/harvezhongdong/StateSlotsActivity'),(43,94,'com/waps/OffersWebView'),(44,95,'com/waps/OffersWebView'),(45,96,'com/androidemu/harvezhongdong/KeyProfilesActivity'),(46,97,'com/androidemu/harvezhongdong/EmulatorActivity'),(47,102,'com/waps/OffersWebView'),(48,105,'com.android.launcher.InstallShortcutReceiver'),(49,107,'com.android.settings.InstalledAppDetails'),(50,109,'(.*)'),(51,110,'NULL-CONSTANT'),(52,116,'com/waps/OffersWebView'),(53,117,'com.android.launcher.InstallShortcutReceiver'),(54,118,'NULL-CONSTANT'),(55,119,'com/waps/OffersWebView'),(56,121,'ori/tools/entertaiment/quick/uninstaller/UninstallerGrid'),(57,122,'com/androidemu/harvezhongdong/KeyProfilesActivity'),(58,123,'ori/tools/entertaiment/quick/uninstaller/AppResore/AppRestoreManager'),(59,124,'com/androidemu/harvezhongdong/DeviceListActivity'),(60,127,'(.*)'),(61,129,'ori/tools/entertaiment/quick/uninstaller/List/UninstallerList'),(62,130,'ori/tools/entertaiment/quick/uninstaller/List/SettingsActivity'),(63,132,'com/waps/util/ShowMoreAppActivity'),(64,134,'ori/tools/entertaiment/quick/uninstaller/AppResore/AppRestoreManager'),(65,136,'ori/tools/entertaiment/quick/uninstaller/List/SettingsActivity'),(66,137,'ori/tools/entertaiment/quick/uninstaller/List/UninstallerList'),(67,142,'NULL-CONSTANT'),(68,143,'com/waps/OffersWebView'),(69,144,'com/waps/OffersWebView'),(70,145,'com.android.settings.InstalledAppDetails'),(71,147,'com/heop/jamendo/activity/PlaylistActivity'),(72,149,'com/heop/jamendo/activity/SettingsActivity'),(73,150,'com/heop/jamendo/activity/PlayerActivity'),(74,152,'NULL-CONSTANT'),(75,153,'com/waps/OffersWebView'),(76,154,'com/heop/jamendo/activity/HomeActivity'),(77,155,'com/heop/jamendo/activity/BrowsePlaylistActivity'),(78,156,'com/heop/jamendo/activity/HomeActivity'),(79,165,'com/heop/jamendo/activity/PlayerActivity'),(80,169,'com/waps/OffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,8,3),(4,9,4),(5,35,5),(6,37,6),(7,39,7),(8,42,8),(9,68,11),(10,69,12),(11,78,14),(12,79,15),(13,81,16),(14,82,17),(15,83,18),(16,85,20),(17,86,21),(18,89,22),(19,90,23),(20,92,24),(21,93,25),(22,97,26),(23,106,27),(24,108,28),(25,113,29),(26,120,30),(27,125,31),(28,126,32),(29,128,33),(30,131,34),(31,138,35),(32,146,38),(33,148,39),(34,150,40),(35,171,41),(36,172,42),(37,173,43),(38,174,44),(39,175,45),(40,176,46),(41,177,47),(42,178,48),(43,179,49),(44,180,50);
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'tabType'),(2,4,'tabType'),(3,5,'_index'),(4,5,'type'),(5,6,'CLIENT_PACKAGE'),(6,6,'URL'),(7,6,'isFinshClose'),(8,6,'offers_webview_tag'),(9,7,'USER_ID'),(10,7,'CLIENT_PACKAGE'),(11,7,'Offers_URL'),(12,7,'offers_webview_tag'),(13,7,'URL_PARAMS'),(14,10,'_index'),(15,10,'type'),(16,11,'_index'),(17,11,'type'),(18,33,'USER_ID'),(19,33,'CLIENT_PACKAGE'),(20,33,'Offers_URL'),(21,33,'offers_webview_tag'),(22,33,'URL_PARAMS'),(23,46,'UrlPath'),(24,46,'ACTIVITY_FLAG'),(25,46,'isFinshClose'),(26,47,'Notify_Url_Params'),(27,46,'offers_webview_tag'),(28,47,'UrlPath'),(29,47,'ACTIVITY_FLAG'),(30,47,'isFinshClose'),(31,47,'offers_webview_tag'),(32,49,'Notify_Url_Params'),(33,49,'UrlPath'),(34,49,'ACTIVITY_FLAG'),(35,49,'isFinshClose'),(36,50,'UrlPath'),(37,49,'offers_webview_tag'),(38,50,'ACTIVITY_FLAG'),(39,50,'isFinshClose'),(40,50,'offers_webview_tag'),(41,57,'android.intent.extra.INTENT'),(42,58,'_index'),(43,58,'type'),(44,59,'android.intent.extra.INTENT'),(45,60,'android.intent.extra.TITLE'),(46,60,'android.intent.extra.INTENT'),(47,61,'CLIENT_PACKAGE'),(48,61,'URL'),(49,61,'isFinshClose'),(50,62,'android.intent.extra.INTENT'),(51,61,'offers_webview_tag'),(52,63,'android.intent.extra.TITLE'),(53,63,'android.intent.extra.INTENT'),(54,64,'android.intent.extra.INTENT'),(55,65,'android.intent.extra.TITLE'),(56,65,'android.intent.extra.INTENT'),(57,66,'android.intent.extra.TITLE'),(58,66,'android.intent.extra.INTENT'),(59,70,'android.intent.extra.INTENT'),(60,71,'android.intent.extra.INTENT'),(61,72,'android.intent.extra.TITLE'),(62,72,'android.intent.extra.INTENT'),(63,73,'android.intent.extra.INTENT'),(64,74,'android.intent.extra.TITLE'),(65,74,'android.intent.extra.INTENT'),(66,75,'android.intent.extra.INTENT'),(67,76,'android.intent.extra.TITLE'),(68,76,'android.intent.extra.INTENT'),(69,77,'android.intent.extra.TITLE'),(70,77,'android.intent.extra.INTENT'),(71,84,'title'),(72,84,'filters'),(73,90,'saveMode'),(74,94,'Notify_Url_Params'),(75,94,'UrlPath'),(76,94,'ACTIVITY_FLAG'),(77,94,'isFinshClose'),(78,94,'offers_webview_tag'),(79,95,'UrlPath'),(80,95,'ACTIVITY_FLAG'),(81,95,'isFinshClose'),(82,95,'offers_webview_tag'),(83,96,'title'),(84,102,'USER_ID'),(85,102,'CLIENT_PACKAGE'),(86,102,'Offers_URL'),(87,102,'offers_webview_tag'),(88,102,'URL_PARAMS'),(89,105,'android.intent.extra.shortcut.NAME'),(90,105,'android.intent.extra.shortcut.ICON_RESOURCE'),(91,105,'android.intent.extra.shortcut.INTENT'),(92,107,'com.android.settings.ApplicationPkgName'),(93,116,'USER_ID'),(94,116,'CLIENT_PACKAGE'),(95,116,'Offers_URL'),(96,116,'offers_webview_tag'),(97,116,'URL_PARAMS'),(98,117,'android.intent.extra.shortcut.NAME'),(99,117,'android.intent.extra.shortcut.ICON_RESOURCE'),(100,117,'android.intent.extra.shortcut.INTENT'),(101,119,'CLIENT_PACKAGE'),(102,119,'URL'),(103,119,'isFinshClose'),(104,119,'offers_webview_tag'),(105,122,'title'),(106,133,'android.intent.extra.TEXT'),(107,133,'android.intent.extra.SUBJECT'),(108,133,'android.intent.extra.EMAIL'),(109,133,'android.intent.extra.STREAM'),(110,143,'UrlPath'),(111,143,'ACTIVITY_FLAG'),(112,143,'isFinshClose'),(113,143,'offers_webview_tag'),(114,144,'Notify_Url_Params'),(115,144,'UrlPath'),(116,144,'ACTIVITY_FLAG'),(117,144,'isFinshClose'),(118,144,'offers_webview_tag'),(119,145,'com.android.settings.ApplicationPkgName'),(120,147,'favorites'),(121,151,'app-name'),(122,151,'duration'),(123,151,'track-no'),(124,151,'app-package'),(125,151,'album'),(126,151,'state'),(127,151,'track'),(128,151,'artist'),(129,153,'USER_ID'),(130,153,'CLIENT_PACKAGE'),(131,153,'Offers_URL'),(132,153,'offers_webview_tag'),(133,153,'URL_PARAMS'),(134,155,'mode'),(135,157,'android.intent.extra.INTENT'),(136,158,'android.intent.extra.INTENT'),(137,159,'android.intent.extra.TITLE'),(138,159,'android.intent.extra.INTENT'),(139,160,'android.intent.extra.INTENT'),(140,161,'android.intent.extra.TITLE'),(141,161,'android.intent.extra.INTENT'),(142,162,'android.intent.extra.INTENT'),(143,163,'android.intent.extra.TITLE'),(144,163,'android.intent.extra.INTENT'),(145,164,'android.intent.extra.TITLE'),(146,164,'android.intent.extra.INTENT'),(147,165,'playlist'),(148,169,'CLIENT_PACKAGE'),(149,169,'URL'),(150,169,'isFinshClose'),(151,169,'offers_webview_tag'),(152,170,'duration'),(153,170,'album'),(154,170,'track'),(155,170,'artist');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,3),(8,8,4),(9,9,2),(10,10,2),(11,11,2),(12,12,2),(13,13,2),(14,14,2),(15,15,2),(16,16,2),(17,17,2),(18,18,2),(19,19,2),(20,20,2),(21,21,2),(22,22,1),(23,23,1),(24,24,7),(25,24,8),(26,24,6),(27,24,5),(28,25,9),(29,26,9),(30,27,12),(31,27,11),(32,28,13),(33,29,13),(34,30,9),(35,31,17),(36,32,17),(37,33,17),(38,34,17),(39,35,9),(40,36,19),(41,37,19),(42,38,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,4,1),(6,5,1),(7,6,2),(8,7,2),(9,9,2),(10,10,2),(11,11,2),(12,12,2),(13,13,2),(14,14,2),(15,15,2),(16,16,2),(17,17,2),(18,18,2),(19,19,2),(20,20,2),(21,20,3),(22,21,2),(23,22,1),(24,23,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,6,'file',NULL,NULL,NULL,NULL,NULL),(2,6,NULL,NULL,NULL,NULL,'application','zip'),(3,6,NULL,NULL,NULL,NULL,'application','octet-stream'),(4,20,'http','www.jamendo.com',NULL,'/track/(.*)',NULL,NULL),(5,20,'http','www.jamendo.com',NULL,'/en/track/(.*)',NULL,NULL),(6,20,'http','www.jamendo.com',NULL,'/pl/track/(.*)',NULL,NULL),(7,20,'http','www.jamendo.com',NULL,'/fr/track/(.*)',NULL,NULL),(8,20,'http','www.jamendo.com',NULL,'/de/track/(.*)',NULL,NULL),(9,20,'http','www.jamendo.com',NULL,'/es/track/(.*)',NULL,NULL),(10,20,'http','www.jamendo.com',NULL,'/ru/track/(.*)',NULL,NULL),(11,20,'http','www.jamendo.com',NULL,'/it/track/(.*)',NULL,NULL),(12,20,'http','www.jamendo.com',NULL,'/album/(.*)',NULL,NULL),(13,20,'http','www.jamendo.com',NULL,'/en/album/(.*)',NULL,NULL),(14,20,'http','www.jamendo.com',NULL,'/pl/album/(.*)',NULL,NULL),(15,20,'http','www.jamendo.com',NULL,'/fr/album/(.*)',NULL,NULL),(16,20,'http','www.jamendo.com',NULL,'/de/album/(.*)',NULL,NULL),(17,20,'http','www.jamendo.com',NULL,'/es/album/(.*)',NULL,NULL),(18,20,'http','www.jamendo.com',NULL,'/ru/album/(.*)',NULL,NULL),(19,20,'http','www.jamendo.com',NULL,'/it/album/(.*)',NULL,NULL),(20,25,'package',NULL,NULL,NULL,NULL,NULL),(21,26,'package',NULL,NULL,NULL,NULL,NULL),(22,30,'package',NULL,NULL,NULL,NULL,NULL),(23,35,'package',NULL,NULL,NULL,NULL,NULL),(24,38,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,8,'application','vnd.android.package-archive'),(2,9,'application','vnd.android.package-archive'),(3,35,'application','vnd.android.package-archive'),(4,37,'application','vnd.android.package-archive'),(5,69,'(.*)','(.*)'),(6,86,'(.*)','(.*)'),(7,89,'application','vnd.android.package-archive'),(8,93,'application','vnd.android.package-archive'),(9,113,'application','vnd.android.package-archive'),(10,126,'application','vnd.android.package-archive'),(11,131,'application','vnd.android.package-archive'),(12,133,'text','plain'),(13,171,'application','vnd.android.package-archive'),(14,172,'application','vnd.android.package-archive'),(15,173,'application','vnd.android.package-archive'),(16,174,'application','vnd.android.package-archive'),(17,175,'application','vnd.android.package-archive'),(18,176,'application','vnd.android.package-archive'),(19,177,'application','vnd.android.package-archive'),(20,178,'application','vnd.android.package-archive'),(21,179,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.han.srmm1'),(2,4,'com.han.zbbxt1'),(3,5,'com.han.zbbxt1'),(4,6,'com.han.srmm1'),(5,7,'com.han.zbbxt1'),(6,10,'com.han.srmm1'),(7,11,'com.han.zbbxt1'),(8,14,'(.*)'),(9,15,'(.*)'),(10,16,'(.*)'),(11,17,'(.*)'),(12,18,'Zisou.Soft.mini.jsb'),(13,19,'NULL-CONSTANT'),(14,20,'NULL-CONSTANT'),(15,21,'Zisou.Soft.mini.jsb'),(16,23,'(.*)'),(17,24,'(.*)'),(18,26,'Zisou.Soft.mini.jsb'),(19,25,'NULL-CONSTANT'),(20,27,'NULL-CONSTANT'),(21,29,'(.*)'),(22,30,'Zisou.Soft.mini.jsb'),(23,31,'(.*)'),(24,32,'Zisou.Soft.mini.jsb'),(25,34,'Zisou.Soft.mini.jsb'),(26,33,'com.han.srmm1'),(27,36,'Zisou.Soft.mini.jsb'),(28,38,'Zisou.Soft.mini.jsb'),(29,40,'Zisou.Soft.mini.jsb'),(30,41,'com.han.srmm1'),(31,43,'Zisou.Soft.mini.jsb'),(32,44,'(.*)'),(33,45,'Zisou.Soft.mini.jsb'),(34,46,'com.han.srmm1'),(35,48,'com.android.launcher'),(36,47,'com.han.zbbxt1'),(37,49,'com.han.srmm1'),(38,51,'Zisou.Soft.mini.jsb'),(39,50,'com.han.zbbxt1'),(40,52,'(.*)'),(41,53,'NULL-CONSTANT'),(42,54,'Zisou.Soft.mini.jsb'),(43,55,'NULL-CONSTANT'),(44,56,'Zisou.Soft.mini.jsb'),(45,58,'com.han.zbbxt1'),(46,61,'com.han.zbbxt1'),(47,67,'eu.the.sdm'),(48,80,'eu.the.sdm'),(49,84,'com.androidemu.harvezhongdong'),(50,87,'com.androidemu.harvezhongdong'),(51,88,'com.androidemu.harvezhongdong'),(52,90,'com.androidemu.harvezhongdong'),(53,91,'NULL-CONSTANT'),(54,92,'com.androidemu.harvezhongdong'),(55,94,'com.androidemu.harvezhongdong'),(56,95,'com.androidemu.harvezhongdong'),(57,96,'com.androidemu.harvezhongdong'),(58,97,'com.androidemu.harvezhongdong'),(59,99,'(.*)'),(60,100,'(.*)'),(61,101,'NULL-CONSTANT'),(62,103,'NULL-CONSTANT'),(63,102,'ori.tools.entertaiment.quick.uninstaller'),(64,105,'com.android.launcher'),(65,107,'com.android.settings'),(66,109,'(.*)'),(67,110,'NULL-CONSTANT'),(68,112,'(.*)'),(69,114,'(.*)'),(70,116,'com.androidemu.harvezhongdong'),(71,117,'com.android.launcher'),(72,118,'ori.tools.entertaiment.quick.uninstaller'),(73,119,'com.androidemu.harvezhongdong'),(74,121,'ori.tools.entertaiment.quick.uninstaller'),(75,122,'com.androidemu.harvezhongdong'),(76,123,'ori.tools.entertaiment.quick.uninstaller'),(77,124,'com.androidemu.harvezhongdong'),(78,127,'(.*)'),(79,129,'ori.tools.entertaiment.quick.uninstaller'),(80,130,'ori.tools.entertaiment.quick.uninstaller'),(81,132,'ori.tools.entertaiment.quick.uninstaller'),(82,134,'ori.tools.entertaiment.quick.uninstaller'),(83,136,'ori.tools.entertaiment.quick.uninstaller'),(84,137,'ori.tools.entertaiment.quick.uninstaller'),(85,140,'(.*)'),(86,141,'(.*)'),(87,142,'ori.tools.entertaiment.quick.uninstaller'),(88,143,'ori.tools.entertaiment.quick.uninstaller'),(89,144,'ori.tools.entertaiment.quick.uninstaller'),(90,145,'com.android.settings'),(91,147,'com.heop.jamendo'),(92,149,'com.heop.jamendo'),(93,150,'com.heop.jamendo'),(94,152,'NULL-CONSTANT'),(95,153,'com.heop.jamendo'),(96,154,'com.heop.jamendo'),(97,155,'com.heop.jamendo'),(98,156,'com.heop.jamendo'),(99,165,'com.heop.jamendo'),(100,167,'NULL-CONSTANT'),(101,168,'NULL-CONSTANT'),(102,169,'com.heop.jamendo');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,10,0),(4,13,0),(5,28,0),(6,30,0),(7,37,0),(8,46,0),(9,47,0),(10,48,0),(11,49,0),(12,50,0),(13,51,0),(14,52,0),(15,53,0),(16,54,0),(17,55,0),(18,56,0),(19,57,0),(20,58,0),(21,58,0),(22,59,0),(23,60,0),(24,76,0),(25,77,0),(26,78,0),(27,79,0),(28,80,0),(29,81,0),(30,82,0),(31,82,0),(32,76,0),(33,83,0),(34,84,0),(35,81,0),(36,80,0),(37,81,0),(38,84,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,3,0,0),(5,4,0,0),(6,5,0,0),(7,6,0,0),(8,7,1,0),(9,8,1,0),(10,9,0,0),(11,10,0,0),(12,11,1,0),(13,12,1,0),(14,11,1,0),(15,12,1,0),(16,12,1,0),(17,11,1,0),(18,13,0,0),(19,12,1,0),(20,12,1,0),(21,14,0,0),(22,15,1,0),(23,15,1,0),(24,15,1,0),(25,15,1,0),(26,16,0,0),(27,15,1,0),(28,18,1,0),(29,18,1,0),(30,19,0,0),(31,18,1,0),(32,20,0,0),(33,21,0,0),(34,22,0,0),(35,23,1,0),(36,24,0,0),(37,25,1,0),(38,26,0,0),(39,27,1,0),(40,29,0,0),(41,28,0,0),(42,27,1,0),(43,30,0,0),(44,31,0,0),(45,32,0,0),(46,33,0,0),(47,34,0,0),(48,35,0,0),(49,33,0,0),(50,34,0,0),(51,36,0,0),(52,37,0,0),(53,38,0,0),(54,39,0,0),(55,40,0,0),(56,41,0,0),(57,42,1,0),(58,43,0,0),(59,42,1,0),(60,42,1,0),(61,44,0,0),(62,42,1,0),(63,42,1,0),(64,42,1,0),(65,42,1,0),(66,42,1,0),(67,45,0,0),(68,48,1,0),(69,49,1,0),(70,51,1,0),(71,51,1,0),(72,51,1,0),(73,51,1,0),(74,51,1,0),(75,51,1,0),(76,51,1,0),(77,51,1,0),(78,52,1,0),(79,53,1,0),(80,54,0,0),(81,55,1,0),(82,56,1,0),(83,57,1,0),(84,59,0,0),(85,60,1,0),(86,61,1,0),(87,62,0,0),(88,63,0,0),(89,64,1,0),(90,65,0,0),(91,66,0,0),(92,67,0,0),(93,68,1,0),(94,69,0,0),(95,69,0,0),(96,70,0,0),(97,71,0,0),(98,72,1,0),(99,72,1,0),(100,72,1,0),(101,72,1,0),(102,73,0,0),(103,72,1,0),(104,75,1,0),(105,76,0,0),(106,78,1,0),(107,79,0,0),(108,78,1,0),(109,80,0,0),(110,81,0,0),(111,82,1,0),(112,82,1,0),(113,83,1,0),(114,82,1,0),(115,84,1,0),(116,85,0,0),(117,86,0,0),(118,87,0,0),(119,90,0,0),(120,89,1,0),(121,91,0,0),(122,92,0,0),(123,93,0,0),(124,94,0,0),(125,95,1,0),(126,96,1,0),(127,97,0,0),(128,98,1,0),(129,99,0,0),(130,100,0,0),(131,101,1,0),(132,102,0,0),(133,103,1,0),(134,104,0,0),(135,105,1,0),(136,106,0,0),(137,108,0,0),(138,109,1,0),(139,111,1,0),(140,111,1,0),(141,111,1,0),(142,112,0,0),(143,114,0,0),(144,114,0,0),(145,115,0,0),(146,116,1,0),(147,117,0,0),(148,118,1,0),(149,119,0,0),(150,120,0,0),(151,121,1,0),(152,122,0,0),(153,123,0,0),(154,124,0,0),(155,125,0,0),(156,126,0,0),(157,127,1,0),(158,127,1,0),(159,127,1,0),(160,127,1,0),(161,127,1,0),(162,127,1,0),(163,127,1,0),(164,127,1,0),(165,128,0,0),(166,129,1,0),(167,129,1,0),(168,129,1,0),(169,130,0,0),(170,131,1,0),(171,132,1,0),(172,132,1,0),(173,132,1,0),(174,132,1,0),(175,132,1,0),(176,132,1,0),(177,132,1,0),(178,132,1,0),(179,132,1,0),(180,133,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (14,'android.permission.ACCESS_COARSE_LOCATION'),(5,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(7,'android.permission.BLUETOOTH'),(10,'android.permission.BLUETOOTH_ADMIN'),(17,'android.permission.DELETE_PACKAGES'),(2,'android.permission.GET_TASKS'),(16,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(12,'android.permission.MODIFY_PHONE_STATE'),(6,'android.permission.READ_PHONE_STAT'),(1,'android.permission.READ_PHONE_STATE'),(11,'android.permission.RECEIVE_BOOT_COMPLETED'),(18,'android.permission.RESTART_PACKAGES'),(9,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(10,NULL,NULL,'content://sms/conversations/(.*)',NULL,NULL,NULL),(11,NULL,NULL,'http://forum.xda-developers.com/showthread.php?t=1013063',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://sms',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=eu.thedarken.sdm.unlocker',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=eu.thedarken.sdm.unlocker',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=eu.thedarken.sdm.unlocker',NULL,NULL,NULL),(17,NULL,NULL,'http://forum.xda-developers.com/showthread.php?t=1013063',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=eu.thedarken.sdm.unlocker',NULL,NULL,NULL),(19,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=eu.thedarken.sdm.unlocker',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(24,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,'package','NULL-CONSTANT',NULL,NULL,NULL,NULL),(31,'package','NULL-CONSTANT',NULL,NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,'package','NULL-CONSTANT',NULL,NULL,NULL,NULL),(36,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(37,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(38,'package','NULL-CONSTANT',NULL,NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(41,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,46,9),(2,47,10),(3,50,13),(4,58,19),(5,110,36),(6,113,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,2),(7,2,3),(8,2,4),(9,2,5),(10,2,6),(11,4,1),(12,3,1),(13,4,2),(14,3,3),(15,4,3),(16,3,4),(17,4,4),(18,3,5),(19,4,5),(20,3,7),(21,3,8),(22,3,9),(23,3,10),(24,5,1),(25,5,2),(26,5,3),(27,5,4),(28,5,5),(29,5,11),(30,5,12),(31,5,13),(32,6,1),(33,6,3),(34,6,4),(35,6,5),(36,6,8),(37,6,13),(38,6,14),(39,7,17),(40,7,16),(41,7,1),(42,7,18),(43,7,3),(44,7,4),(45,7,5),(46,7,14),(47,7,15);
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

-- Dump completed on 2015-10-09  0:39:24
