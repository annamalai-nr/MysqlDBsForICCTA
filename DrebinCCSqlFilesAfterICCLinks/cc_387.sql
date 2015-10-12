-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_387
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (11,''),(27,'(.*)'),(26,'android.appwidget.action.APPWIDGET_CONFIGURE'),(23,'android.appwidget.action.APPWIDGET_PICK'),(2,'android.intent.action.BOOT_COMPLETED'),(22,'android.intent.action.CHOOSER'),(5,'android.intent.action.DELETE'),(9,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.MEDIA_BUTTON'),(3,'android.intent.action.PACKAGE_ADDED'),(16,'android.intent.action.SCREEN_OFF'),(17,'android.intent.action.SCREEN_ON'),(18,'android.intent.action.SENDTO'),(4,'android.intent.action.VIEW'),(14,'android.settings.APPLICATION_DETAILS_SETTINGS'),(28,'com.android.launcher.action.INSTALL_SHORTCUT'),(12,'com.android.music.musicservicecommand.next'),(13,'com.android.music.musicservicecommand.previous'),(10,'com.android.music.musicservicecommand.togglepause'),(21,'com.android.phone.EmergencyDialer.DIAL'),(8,'com.nanoha.UNLOCKED'),(20,'com.tbig.playerpro.musicservicecommand.next'),(25,'com.tbig.playerpro.musicservicecommand.previous'),(15,'com.tbig.playerpro.musicservicecommand.togglepause'),(7,'com.tbig.playerprotrial.musicservicecommand.next'),(19,'com.tbig.playerprotrial.musicservicecommand.previous'),(24,'com.tbig.playerprotrial.musicservicecommand.togglepause');
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
INSERT INTO `Applications` VALUES (1,'com.han.yfcs1',1),(2,'com.han.swrlcx1',1),(3,'com.coderet.pianosets',1),(4,'com.hummingbird.cet46',3),(5,'com.android.apkmanager',272),(6,'com.nanoha.SenseScreen',15),(7,'com.jiasoft.swreader',25);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.han.yfcs1.Main'),(2,2,'com.han.swrlcx1.N1'),(3,1,'com.waps.OffersWebView'),(4,1,'com.han.yfcs1.AppShow'),(5,2,'com.han.swrlcx1.HtmlRead'),(6,1,'com.han.yfcs1.HtmlRead'),(7,2,'com.waps.OffersWebView'),(8,1,'com.han.yfcs1.News'),(9,1,'com.han.yfcs1.App'),(10,3,'com.coderet.pianosets.ActivityMain'),(11,4,'com.hummingbird.cet46.MainActivity'),(12,3,'com.waps.OffersWebView'),(13,4,'com.hummingbird.cet46.CET46'),(14,4,'com.hummingbird.cet46.ReaderType'),(15,4,'com.hummingbird.cet46.ReaderTitle'),(16,4,'com.hummingbird.cet46.ReaderText'),(17,4,'com.hummingbird.cet46.DayDayUp'),(18,4,'com.waps.OffersWebView'),(19,5,'com.android.apkmanager.InstallAPKActivity'),(20,5,'com.android.apkmanager.HomeActivity'),(21,5,'com.android.apkmanager.MainActivity'),(22,5,'com.android.apkmanager.UninstallAppActivity'),(23,5,'com.waps.OffersWebView'),(24,6,'com.nanoha.SenseScreen.view.MyLockScreen'),(25,5,'com.mt.airad.MultiAD'),(26,6,'com.nanoha.SenseScreen.SelectWidgetActivity'),(27,6,'com.nanoha.SenseScreen.SenseScreen'),(28,6,'com.nanoha.util.NanohaLauncher'),(29,6,'com.nanoha.SenseScreen.PasswordActivity'),(30,6,'com.nanoha.CropImage.MonitoredActivity'),(31,6,'com.nanoha.CropImage.CropImage'),(32,6,'com.nanoha.HomeWidzard.HomeWizard'),(33,6,'com.nanoha.HomeWidzard.HomeWidzardTwo'),(34,6,'com.nanoha.SenseScreen.setting.MainSetting'),(35,6,'com.nanoha.SenseScreen.setting.FontSizeSetting'),(36,6,'com.nanoha.SenseScreen.setting.FontColorSetting'),(37,6,'com.nanoha.SenseScreen.setting.ShortcutSetting'),(38,6,'com.nanoha.SenseScreen.setting.SelectAppActivity'),(39,6,'com.nanoha.SenseScreen.setting.SelectShortcutIcon'),(40,6,'com.waps.OffersWebView'),(41,6,'com.nanoha.SenseScreen.view.MyLockService'),(42,6,'com.nanoha.SenseScreen.view.StartBroadcastReceiver'),(43,2,'com.han.swrlcx1.N1$1'),(44,1,'com.waps.q'),(45,2,'com.waps.s'),(46,1,'com.waps.s'),(47,7,'com.jiasoft.swreader.MainActivity'),(48,7,'com.jiasoft.swreader.DetailActivity'),(49,3,'com.waps.aa'),(50,2,'com.waps.o'),(51,7,'com.jiasoft.swreader.SetupActivity'),(52,7,'com.jiasoft.swreader.DetailSetupActivity'),(53,7,'com.jiasoft.swreader.MarkActivity'),(54,7,'com.jiasoft.swreader.DownloadActivity'),(55,2,'com.waps.ac'),(56,7,'com.jiasoft.swreader.DownDetailActivity'),(57,7,'com.jiasoft.swreader.DownviewActivity'),(58,7,'com.jiasoft.swreader.ShowActivity'),(59,3,'com.waps.s'),(60,7,'com.jiasoft.swreader.ChapterActivity'),(61,4,'com.waps.ac'),(62,7,'com.jiasoft.swreader.LocalActivity'),(63,7,'com.jiasoft.swreader.BookinfoActivity'),(64,7,'com.mobclick.android.UmengFeedback'),(65,4,'com.waps.s'),(66,7,'com.guohead.sdk.GuoheAdActivity'),(67,7,'net.youmi.android.AdActivity'),(68,2,'com.waps.q'),(69,1,'com.waps.z'),(70,7,'com.google.ads.AdActivity'),(71,7,'com.waps.OffersWebView'),(72,3,'com.waps.q'),(73,1,'com.waps.o'),(74,2,'com.han.swrlcx1.HtmlRead$1'),(75,3,'com.waps.o'),(76,4,'com.waps.AppConnect'),(77,5,'com.waps.o'),(78,1,'com.waps.aa'),(79,5,'com.waps.AppConnect'),(80,3,'com.waps.z'),(81,2,'com.waps.aa'),(82,1,'com.han.yfcs1.News$1'),(83,5,'com.waps.z'),(84,5,'com.waps.aa'),(85,4,'com.waps.z'),(86,2,'com.waps.AppConnect'),(87,3,'com.waps.ac'),(88,1,'com.waps.AppConnect'),(89,1,'com.waps.ac'),(90,2,'com.waps.z'),(91,1,'com.han.yfcs1.HtmlRead$1'),(92,4,'com.waps.aa'),(93,1,'com.han.yfcs1.AppShow$1'),(94,5,'com.waps.ac'),(95,4,'com.waps.q'),(96,5,'com.mt.airad.IIIIlllIlllIIIII'),(97,4,'com.waps.o'),(98,5,'com.waps.q'),(99,6,'com.nanoha.SenseScreen.view.LockScreen'),(100,6,'com.nanoha.SenseScreen.view.MyLockScreen$5'),(101,6,'com.nanoha.CropImage.CropImageUtil'),(102,6,'com.nanoha.SenseScreen.setting.MainSetting$1'),(103,6,'com.nanoha.SenseScreen.view.KeyguardUpdateMonitor$3'),(104,6,'com.waps.q'),(105,6,'com.nanoha.SenseScreen.view.ScreenReceiver'),(106,6,'com.nanoha.SenseScreen.view.KeyguardUpdateMonitor'),(107,6,'com.waps.AppConnect'),(108,6,'com.nanoha.SenseScreen.PasswordEntryLayout'),(109,6,'com.waps.z'),(110,6,'com.nanoha.SenseScreen.PasswordEntryLayout$TouchInput'),(111,6,'com.waps.ac'),(112,6,'com.waps.s'),(113,7,'com.jiasoft.swreader.MarkListAdapter$2'),(114,7,'com.jiasoft.swreader.ChapterActivity$2'),(115,6,'com.nanoha.SenseScreen.view.MyLockScreen$7'),(116,7,'com.waps.s'),(117,6,'com.waps.o'),(118,7,'com.mobclick.android.MobclickAgent'),(119,7,'com.guohead.sdk.adapters.CustomAdapter$4'),(120,6,'com.nanoha.SenseScreen.view.MyLockScreen$4'),(121,7,'com.jiasoft.pub.AndPub'),(122,6,'com.waps.aa'),(123,7,'com.madhouse.android.ads._'),(124,7,'com.waps.o'),(125,7,'com.jiasoft.swreader.DownDetailActivity$2'),(126,6,'com.nanoha.SenseScreen.view.LockScreen$2'),(127,7,'com.waps.q'),(128,7,'net.youmi.android.t'),(129,7,'com.guohead.sdk.adapters.CustomAdapter$3'),(130,7,'com.jiasoft.swreader.MainActivity$8'),(131,7,'com.jiasoft.pub.AppUpdate$1$1'),(132,7,'com.jiasoft.swreader.MainActivity$10'),(133,7,'com.jiasoft.swreader.MainActivity$9'),(134,7,'com.waps.aa'),(135,7,'com.waps.AppConnect'),(136,7,'net.youmi.android.be'),(137,7,'com.jiasoft.swreader.DownloadActivity$3'),(138,7,'com.waps.z'),(139,7,'com.waps.ac');
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
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'URL'),(2,9,'CLIENT_PACKAGE'),(3,4,'CLIENT_PACKAGE'),(4,6,'CLIENT_PACKAGE'),(5,3,'UrlPath'),(6,12,'APP_ID'),(7,10,'APP_ID'),(8,2,'DEVICE_ID'),(9,7,'DEVICE_ID'),(10,5,'DEVICE_ID'),(11,7,'UrlPath'),(12,2,'WAPS_PID'),(13,7,'WAPS_PID'),(14,9,'APP_ID'),(15,5,'WAPS_PID'),(16,4,'APP_ID'),(17,3,'APP_ID'),(18,6,'APP_ID'),(19,12,'CLIENT_PACKAGE'),(20,3,'isFinshClose'),(21,10,'CLIENT_PACKAGE'),(22,9,'WAPS_PID'),(23,12,'ACTIVITY_FLAG'),(24,4,'WAPS_PID'),(25,12,'Offers_URL'),(26,3,'WAPS_PID'),(27,6,'WAPS_PID'),(28,18,'CLIENT_PACKAGE'),(29,2,'WAPS_ID'),(30,7,'WAPS_ID'),(31,5,'WAPS_ID'),(32,18,'Notify_Id'),(33,7,'ACTIVITY_FLAG'),(34,2,'CLIENT_PACKAGE'),(35,5,'CLIENT_PACKAGE'),(36,12,'UrlPath'),(37,12,'WAPS_ID'),(38,10,'WAPS_ID'),(39,9,'DEVICE_ID'),(40,4,'DEVICE_ID'),(41,3,'DEVICE_ID'),(42,6,'DEVICE_ID'),(43,12,'offers_webview_tag'),(44,12,'DEVICE_ID'),(45,10,'DEVICE_ID'),(46,3,'Notify_Url_Params'),(47,3,'offers_webview_tag'),(48,2,'APP_ID'),(49,3,'SHWO_FLAG'),(50,7,'APP_ID'),(51,12,'WAPS_PID'),(52,5,'APP_ID'),(53,10,'WAPS_PID'),(54,12,'USER_ID'),(55,12,'isFinshClose'),(56,12,'URL_PARAMS'),(57,6,'type'),(58,23,'Notify_Url_Params'),(59,18,'Offers_URL'),(60,11,'CLIENT_PACKAGE'),(61,16,'CLIENT_PACKAGE'),(62,13,'CLIENT_PACKAGE'),(63,11,'WAPS_ID'),(64,16,'WAPS_ID'),(65,18,'WAPS_ID'),(66,13,'WAPS_ID'),(67,7,'CLIENT_PACKAGE'),(68,11,'APP_ID'),(69,7,'URL_PARAMS'),(70,16,'APP_ID'),(71,7,'Notify_Id'),(72,18,'APP_ID'),(73,7,'Notify_Url_Params'),(74,13,'APP_ID'),(75,23,'UrlPath'),(76,18,'USER_ID'),(77,25,'adID'),(78,23,'SHWO_FLAG'),(79,3,'Offers_URL'),(80,12,'URL'),(81,18,'URL'),(82,23,'URL'),(83,25,'adURL'),(84,12,'Notify_Id'),(85,7,'isFinshClose'),(86,7,'Offers_URL'),(87,7,'URL'),(88,7,'SHWO_FLAG'),(89,7,'offers_webview_tag'),(90,9,'WAPS_ID'),(91,7,'USER_ID'),(92,4,'WAPS_ID'),(93,5,'type'),(94,3,'WAPS_ID'),(95,6,'WAPS_ID'),(96,4,'result'),(97,6,'_index'),(98,3,'ACTIVITY_FLAG'),(99,12,'Notify_Url_Params'),(100,5,'_index'),(101,12,'SHWO_FLAG'),(102,18,'Notify_Url_Params'),(103,3,'URL_PARAMS'),(104,21,'WAPS_ID'),(105,23,'WAPS_ID'),(106,3,'CLIENT_PACKAGE'),(107,18,'UrlPath'),(108,21,'CLIENT_PACKAGE'),(109,3,'USER_ID'),(110,23,'CLIENT_PACKAGE'),(111,16,'r_title'),(112,23,'Offers_URL'),(113,21,'WAPS_PID'),(114,23,'WAPS_PID'),(115,23,'Notify_Id'),(116,3,'Notify_Id'),(117,23,'offers_webview_tag'),(118,11,'DEVICE_ID'),(119,16,'DEVICE_ID'),(120,18,'DEVICE_ID'),(121,13,'DEVICE_ID'),(122,18,'URL_PARAMS'),(123,18,'SHWO_FLAG'),(124,21,'APP_ID'),(125,23,'APP_ID'),(126,23,'isFinshClose'),(127,18,'ACTIVITY_FLAG'),(128,18,'offers_webview_tag'),(129,11,'WAPS_PID'),(130,16,'WAPS_PID'),(131,18,'WAPS_PID'),(132,21,'DEVICE_ID'),(133,13,'WAPS_PID'),(134,23,'DEVICE_ID'),(135,23,'URL_PARAMS'),(136,23,'USER_ID'),(137,18,'isFinshClose'),(138,23,'ACTIVITY_FLAG'),(139,31,'outputY'),(140,30,'outputY'),(141,31,'circleCrop'),(142,30,'circleCrop'),(143,39,'which_shortcut'),(144,34,'hadAd'),(145,31,'data'),(146,30,'data'),(147,29,'quick_intent_string'),(148,37,'which_shortcut'),(149,40,'Notify_Url_Params'),(150,31,'scale'),(151,30,'scale'),(152,40,'CLIENT_PACKAGE'),(153,31,'CLIENT_PACKAGE'),(154,30,'CLIENT_PACKAGE'),(155,24,'CLIENT_PACKAGE'),(156,31,'aspectX'),(157,30,'aspectX'),(158,40,'URL_PARAMS'),(159,40,'APP_ID'),(160,31,'APP_ID'),(161,30,'APP_ID'),(162,24,'APP_ID'),(163,31,'aspectY'),(164,30,'aspectY'),(165,37,'shortcut_icon'),(166,38,'which_shortcut'),(167,26,'custom_widget'),(168,40,'UrlPath'),(169,40,'URL'),(170,31,'outputX'),(171,30,'outputX'),(172,40,'Offers_URL'),(173,31,'noFaceDetection'),(174,30,'noFaceDetection'),(175,31,'return-data'),(176,30,'return-data'),(177,40,'Notify_Id'),(178,40,'SHWO_FLAG'),(179,40,'isFinshClose'),(180,40,'WAPS_ID'),(181,31,'WAPS_ID'),(182,30,'WAPS_ID'),(183,24,'WAPS_ID'),(184,61,'Notify_Id'),(185,61,'WAPS_PID'),(186,44,'WAPS_PID'),(187,58,'WAPS_PID'),(188,44,'UMENG_CHANNEL'),(189,26,'appWidgetId'),(190,61,'Notify_Url_Params'),(191,40,'offers_webview_tag'),(192,60,'params'),(193,61,'CLIENT_PACKAGE'),(194,44,'CLIENT_PACKAGE'),(195,58,'CLIENT_PACKAGE'),(196,57,'link'),(197,40,'WAPS_PID'),(198,31,'WAPS_PID'),(199,30,'WAPS_PID'),(200,24,'WAPS_PID'),(201,61,'URL'),(202,40,'USER_ID'),(203,40,'ACTIVITY_FLAG'),(204,61,'offers_webview_tag'),(205,61,'WAPS_ID'),(206,31,'outputFormat'),(207,44,'WAPS_ID'),(208,30,'outputFormat'),(209,58,'WAPS_ID'),(210,53,'comefrom'),(211,45,'bookcode'),(212,61,'SHWO_FLAG'),(213,53,'GH_APPKEY'),(214,49,'GH_APPKEY'),(215,58,'GH_APPKEY'),(216,54,'GH_APPKEY'),(217,40,'DEVICE_ID'),(218,31,'DEVICE_ID'),(219,30,'DEVICE_ID'),(220,24,'DEVICE_ID'),(221,31,'output'),(222,30,'output'),(223,31,'scaleUpIfNeeded'),(224,30,'scaleUpIfNeeded'),(225,53,'bookcode'),(226,61,'DEVICE_ID'),(227,44,'DEVICE_ID'),(228,58,'DEVICE_ID'),(229,58,'D50EF1926ADD471892E72BCE6D7E032C'),(230,60,'action'),(231,61,'Offers_URL'),(232,60,'com.google.ads.AdOpener'),(233,45,'readpos'),(234,53,'chapterhint'),(235,61,'APP_ID'),(236,44,'APP_ID'),(237,58,'APP_ID'),(238,61,'ACTIVITY_FLAG'),(239,61,'UrlPath'),(240,44,'UMENG_APPKEY'),(241,61,'URL_PARAMS'),(242,58,'D780FBF4215247bcBB1AC0AD33C474FE'),(243,58,'EB80F3291A8E469c962CA133BDC549D7'),(244,61,'isFinshClose'),(245,61,'USER_ID'),(246,45,'readtype'),(247,58,'172C94EDC717477aBF600D7898A64A8E'),(248,45,'seq');
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,44,'r',1,NULL,NULL),(44,47,'a',1,NULL,NULL),(45,48,'a',1,NULL,NULL),(46,51,'a',0,NULL,NULL),(47,52,'a',0,NULL,NULL),(48,53,'a',0,NULL,NULL),(49,54,'a',0,NULL,NULL),(50,56,'a',0,NULL,NULL),(51,57,'a',0,NULL,NULL),(52,58,'a',0,NULL,NULL),(53,60,'a',0,NULL,NULL),(54,62,'a',0,NULL,NULL),(55,63,'a',0,NULL,NULL),(56,64,'a',0,NULL,NULL),(57,66,'a',0,NULL,NULL),(58,67,'a',0,NULL,NULL),(59,68,'r',1,NULL,NULL),(60,70,'a',0,NULL,NULL),(61,71,'a',0,NULL,NULL),(62,72,'r',1,NULL,NULL),(63,95,'r',1,NULL,NULL),(64,98,'r',1,NULL,NULL),(65,103,'r',1,NULL,0),(66,42,'r',1,NULL,0),(67,104,'r',1,NULL,0),(68,105,'r',1,NULL,0),(69,104,'r',1,NULL,NULL),(70,105,'r',1,NULL,NULL),(71,127,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,2,5),(4,3,4),(5,3,9),(6,3,6),(7,4,12),(8,5,7),(9,6,7),(10,7,7),(11,8,10),(12,9,3),(13,10,18),(14,11,13),(15,11,16),(16,12,12),(17,13,3),(18,14,7),(19,15,3),(20,16,12),(21,17,5),(22,18,11),(23,19,6),(24,19,9),(25,19,4),(26,20,2),(27,20,5),(28,21,13),(29,21,16),(30,22,10),(31,23,23),(32,24,3),(33,25,21),(34,26,12),(35,27,7),(36,28,11),(37,29,21),(38,30,8),(39,32,11),(40,31,10),(41,33,6),(42,33,4),(43,33,9),(44,34,18),(45,35,23),(46,36,12),(47,37,23),(48,38,18),(49,39,5),(50,40,12),(51,41,6),(52,41,4),(53,41,9),(54,42,14),(55,43,18),(56,44,2),(57,44,5),(58,45,11),(59,46,3),(60,47,16),(61,47,13),(62,48,7),(63,49,22),(64,49,21),(65,50,6),(66,51,18),(67,52,23),(68,53,4),(69,54,3),(70,55,23),(71,56,11),(72,57,21),(73,58,11),(74,59,17),(75,60,25),(76,61,18),(77,62,19),(78,62,21),(79,63,16),(80,63,11),(81,63,13),(82,64,23),(83,65,15),(84,66,34),(85,67,26),(86,67,27),(87,68,27),(88,69,28),(89,70,24),(90,71,31),(91,71,30),(92,72,37),(93,73,34),(94,74,34),(95,75,27),(96,76,27),(97,77,26),(98,77,27),(99,78,34),(100,79,27),(101,80,27),(102,81,24),(103,82,32),(104,83,29),(105,84,24),(106,85,28),(107,86,27),(108,87,40),(109,88,24),(110,89,34),(111,90,40),(112,91,29),(113,92,40),(114,93,37),(115,94,24),(116,95,34),(117,96,24),(118,96,30),(119,96,31),(120,97,28),(121,98,27),(122,99,42),(123,100,39),(124,101,24),(125,101,30),(126,101,31),(127,102,24),(128,103,34),(129,104,61),(130,105,27),(131,106,58),(132,107,27),(133,108,24),(134,108,31),(135,108,30),(136,109,61),(137,110,53),(138,111,24),(139,112,58),(140,113,34),(141,114,40),(142,115,44),(143,116,58),(144,117,27),(145,117,26),(146,118,24),(147,119,44),(148,119,45),(149,120,28),(150,121,27),(151,122,40),(152,123,26),(153,124,58),(154,125,27),(155,126,61),(156,127,27),(157,128,50),(158,128,58),(159,129,44),(160,129,58),(161,130,27),(162,130,26),(163,131,34),(164,132,26),(165,133,44),(166,134,27),(167,135,40),(168,136,60),(169,137,58),(170,138,58),(171,139,58),(172,140,44),(173,140,58),(174,141,45),(175,142,44),(176,143,58),(177,143,44),(178,143,54),(179,143,53),(180,143,51),(181,143,50),(182,143,49),(183,144,44),(184,144,58),(185,145,46),(186,145,58),(187,146,45),(188,147,44),(189,147,58),(190,148,61),(191,149,44),(192,150,58),(193,151,44),(194,152,44),(195,153,49),(196,154,61),(197,155,58),(198,156,61);
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,43,'<com.han.swrlcx1.N1$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(2,45,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(3,46,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(4,49,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(5,50,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(6,55,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(7,7,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',318,'a',NULL),(8,59,'<com.waps.s: void onClick(android.view.View)>',62,'a',NULL),(9,3,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',293,'a',NULL),(10,61,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(11,65,'<com.waps.s: void onClick(android.view.View)>',37,'a',NULL),(12,12,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',321,'a',NULL),(13,69,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(14,7,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',293,'a',NULL),(15,73,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(16,75,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(17,74,'<com.han.swrlcx1.HtmlRead$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(18,76,'<com.waps.AppConnect: void showFeedback()>',3,'a',NULL),(19,46,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(20,45,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(21,65,'<com.waps.s: void onClick(android.view.View)>',62,'a',NULL),(22,59,'<com.waps.s: void onClick(android.view.View)>',37,'a',NULL),(23,77,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(24,78,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(25,79,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(26,80,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(27,81,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(28,11,'<com.hummingbird.cet46.MainActivity: void onClick(android.view.View)>',21,'a',NULL),(29,79,'<com.waps.AppConnect: void showFeedback()>',3,'a',NULL),(30,82,'<com.han.yfcs1.News$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(31,59,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(32,11,'<com.hummingbird.cet46.MainActivity: void onClick(android.view.View)>',17,'a',NULL),(33,46,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(34,18,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',296,'a',NULL),(35,83,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(36,12,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',296,'a',NULL),(37,84,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(38,85,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(39,86,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(40,87,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(41,88,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(42,14,'<com.hummingbird.cet46.ReaderType: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',8,'a',0),(43,18,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',321,'a',NULL),(44,45,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(45,11,'<com.hummingbird.cet46.MainActivity: void onClick(android.view.View)>',13,'a',0),(46,89,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(47,65,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(48,90,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(49,22,'<com.android.apkmanager.UninstallAppActivity: void uninstallApp(java.lang.String)>',9,'a',NULL),(50,91,'<com.han.yfcs1.HtmlRead$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(51,92,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(52,23,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(53,93,'<com.han.yfcs1.AppShow$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(54,3,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',318,'a',NULL),(55,94,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(56,11,'<com.hummingbird.cet46.MainActivity: void onClick(android.view.View)>',26,'a',0),(57,79,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(58,11,'<com.hummingbird.cet46.MainActivity: void onClick(android.view.View)>',8,'a',0),(59,17,'<com.hummingbird.cet46.DayDayUp: void onClick(android.view.View)>',13,'a',0),(60,96,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(61,97,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(62,19,'<com.android.apkmanager.InstallAPKActivity: void installAPKFile(java.lang.String)>',8,'a',NULL),(63,76,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(64,23,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',323,'a',NULL),(65,15,'<com.hummingbird.cet46.ReaderTitle: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',0),(66,34,'<com.nanoha.SenseScreen.setting.MainSetting: void resetService()>',7,'s',0),(67,99,'<com.nanoha.SenseScreen.view.LockScreen: void showPasswordView(java.lang.String)>',8,'a',NULL),(68,27,'<com.nanoha.SenseScreen.SenseScreen: boolean onKeyDown(int,android.view.KeyEvent)>',11,'r',NULL),(69,28,'<com.nanoha.util.NanohaLauncher: void onResume()>',15,'a',NULL),(70,100,'<com.nanoha.SenseScreen.view.MyLockScreen$5: void onClick(android.view.View)>',20,'s',NULL),(71,101,'<com.nanoha.CropImage.CropImageUtil: com.nanoha.CropImage.MediaItem createMediaItemFromUri(android.content.Context,android.net.Uri,int)>',15,'p',NULL),(72,37,'<com.nanoha.SenseScreen.setting.ShortcutSetting: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',79,'a',NULL),(73,34,'<com.nanoha.SenseScreen.setting.MainSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',62,'a',NULL),(74,102,'<com.nanoha.SenseScreen.setting.MainSetting$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(75,27,'<com.nanoha.SenseScreen.SenseScreen: void onClick(android.view.View)>',99,'r',NULL),(76,27,'<com.nanoha.SenseScreen.SenseScreen: void onDestroy()>',18,'r',NULL),(77,106,'<com.nanoha.SenseScreen.view.KeyguardUpdateMonitor: void <init>(android.content.Context)>',36,'p',0),(78,34,'<com.nanoha.SenseScreen.setting.MainSetting: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',16,'a',NULL),(79,27,'<com.nanoha.SenseScreen.SenseScreen: boolean onKeyDown(int,android.view.KeyEvent)>',41,'r',NULL),(80,27,'<com.nanoha.SenseScreen.SenseScreen: void onClick(android.view.View)>',12,'r',NULL),(81,107,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(82,32,'<com.nanoha.HomeWidzard.HomeWizard: void showInstalledAppDetails(android.content.Context,java.lang.String)>',12,'a',NULL),(83,108,'<com.nanoha.SenseScreen.PasswordEntryLayout: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(84,24,'<com.nanoha.SenseScreen.view.MyLockScreen: void showLimitDialog(int)>',26,'a',NULL),(85,28,'<com.nanoha.util.NanohaLauncher: void onResume()>',32,'a',NULL),(86,27,'<com.nanoha.SenseScreen.SenseScreen: void onClick(android.view.View)>',53,'s',0),(87,40,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(88,24,'<com.nanoha.SenseScreen.view.MyLockScreen: void onClick(android.view.View)>',28,'a',NULL),(89,34,'<com.nanoha.SenseScreen.setting.MainSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',8,'a',NULL),(90,109,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(91,110,'<com.nanoha.SenseScreen.PasswordEntryLayout$TouchInput: void onClick(android.view.View)>',10,'a',NULL),(92,111,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(93,37,'<com.nanoha.SenseScreen.setting.ShortcutSetting: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',65,'a',NULL),(94,24,'<com.nanoha.SenseScreen.view.MyLockScreen: void onCreate(android.os.Bundle)>',13,'a',NULL),(95,34,'<com.nanoha.SenseScreen.setting.MainSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',15,'a',NULL),(96,112,'<com.waps.s: void onClick(android.view.View)>',62,'a',NULL),(97,28,'<com.nanoha.util.NanohaLauncher: void showHomeWidzardTwo()>',3,'a',NULL),(98,27,'<com.nanoha.SenseScreen.SenseScreen: void onClick(android.view.View)>',63,'r',NULL),(99,42,'<com.nanoha.SenseScreen.view.StartBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(100,39,'<com.nanoha.SenseScreen.setting.SelectShortcutIcon: void onCreate(android.os.Bundle)>',10,'a',NULL),(101,112,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(102,24,'<com.nanoha.SenseScreen.view.MyLockScreen: void onClick(android.view.View)>',33,'a',NULL),(103,34,'<com.nanoha.SenseScreen.setting.MainSetting: void onActivityResult(int,int,android.content.Intent)>',14,'a',NULL),(104,71,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(105,27,'<com.nanoha.SenseScreen.SenseScreen: void onClick(android.view.View)>',82,'r',NULL),(106,113,'<com.jiasoft.swreader.MarkListAdapter$2: void onClick(android.view.View)>',19,'a',NULL),(107,27,'<com.nanoha.SenseScreen.SenseScreen: void onClick(android.view.View)>',76,'r',NULL),(108,112,'<com.waps.s: void onClick(android.view.View)>',37,'a',NULL),(109,71,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(110,114,'<com.jiasoft.swreader.ChapterActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(111,115,'<com.nanoha.SenseScreen.view.MyLockScreen$7: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(112,116,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(113,34,'<com.nanoha.SenseScreen.setting.MainSetting: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',68,'a',NULL),(114,117,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(115,118,'<com.mobclick.android.MobclickAgent: void openFeedbackActivity(android.content.Context)>',6,'a',NULL),(116,119,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(117,99,'<com.nanoha.SenseScreen.view.LockScreen: void takeEmergencyCallAction()>',5,'a',NULL),(118,120,'<com.nanoha.SenseScreen.view.MyLockScreen$4: void onClick(android.view.View)>',16,'a',NULL),(119,121,'<com.jiasoft.pub.AndPub: void textShare(android.content.Context,java.lang.String,java.lang.String)>',9,'a',NULL),(120,28,'<com.nanoha.util.NanohaLauncher: void onResume()>',8,'a',NULL),(121,27,'<com.nanoha.SenseScreen.SenseScreen: void onClick(android.view.View)>',34,'s',0),(122,122,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(123,26,'<com.nanoha.SenseScreen.SelectWidgetActivity: void addWidget()>',25,'a',NULL),(124,123,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(125,27,'<com.nanoha.SenseScreen.SenseScreen: void onClick(android.view.View)>',86,'r',NULL),(126,124,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(127,27,'<com.nanoha.SenseScreen.SenseScreen: void onClick(android.view.View)>',59,'r',NULL),(128,125,'<com.jiasoft.swreader.DownDetailActivity$2: void onClick(android.view.View)>',7,'a',NULL),(129,47,'<com.jiasoft.swreader.MainActivity: void CallDetail(com.jiasoft.swreader.pojo.E_BOOK,java.lang.String)>',20,'a',NULL),(130,126,'<com.nanoha.SenseScreen.view.LockScreen$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',112,'a',0),(131,34,'<com.nanoha.SenseScreen.setting.MainSetting: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',22,'a',NULL),(132,26,'<com.nanoha.SenseScreen.SelectWidgetActivity: void addAppWidget(android.content.Intent)>',30,'a',NULL),(133,47,'<com.jiasoft.swreader.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(134,27,'<com.nanoha.SenseScreen.SenseScreen: void onClick(android.view.View)>',39,'s',0),(135,40,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',323,'a',NULL),(136,70,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(137,128,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(138,129,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(139,116,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(140,130,'<com.jiasoft.swreader.MainActivity$8: void onClick(android.view.View)>',7,'a',NULL),(141,48,'<com.jiasoft.swreader.DetailActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',196,'a',NULL),(142,47,'<com.jiasoft.swreader.MainActivity: boolean onContextItemSelected(android.view.MenuItem)>',37,'a',NULL),(143,131,'<com.jiasoft.pub.AppUpdate$1$1: void run()>',28,'a',NULL),(144,132,'<com.jiasoft.swreader.MainActivity$10: void onClick(android.view.View)>',7,'a',NULL),(145,51,'<com.jiasoft.swreader.SetupActivity: void addShortcut()>',11,'r',NULL),(146,48,'<com.jiasoft.swreader.DetailActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',178,'a',NULL),(147,133,'<com.jiasoft.swreader.MainActivity$9: void onClick(android.view.View)>',7,'a',NULL),(148,134,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(149,135,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(150,136,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(151,47,'<com.jiasoft.swreader.MainActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(152,47,'<com.jiasoft.swreader.MainActivity: boolean onContextItemSelected(android.view.MenuItem)>',49,'a',NULL),(153,137,'<com.jiasoft.swreader.DownloadActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',110,'a',NULL),(154,138,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(155,116,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(156,139,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,4),(2,4,4),(3,5,1),(4,6,1),(5,8,1),(6,9,4),(7,10,1),(8,14,4),(9,16,1),(10,18,4),(11,19,1),(12,22,1),(13,23,4),(14,24,1),(15,26,1),(16,27,1),(17,28,1),(18,29,1),(19,30,4),(20,32,4),(21,36,1),(22,37,4),(23,39,1),(24,40,4),(25,41,1),(26,42,4),(27,43,1),(28,44,1),(29,46,1),(30,47,1),(31,49,1),(32,51,4),(33,59,4),(34,61,1),(35,62,4),(36,63,4),(37,65,1),(38,66,1),(39,67,1),(40,69,4),(41,78,4),(42,79,5),(43,83,1),(44,85,1),(45,90,4),(46,91,4),(47,92,4),(48,97,6),(49,104,7),(50,105,8),(51,106,9),(52,107,6),(53,108,10),(54,109,11),(55,110,12),(56,111,13),(57,113,4),(58,114,14),(59,115,4),(60,118,1),(61,120,1),(62,121,1),(63,122,4),(64,124,4),(65,130,4),(66,131,4),(67,133,15),(68,135,9),(69,137,18),(70,140,19),(71,142,20),(72,145,1),(73,146,1),(74,147,1),(75,148,1),(76,149,1),(77,150,1),(78,154,9),(79,155,4),(80,158,21),(81,160,22),(82,161,22),(83,163,22),(84,164,22),(85,166,22),(86,167,22),(87,168,22),(88,170,22),(89,171,23),(90,172,24),(91,173,4),(92,175,25),(93,178,26),(94,181,4),(95,182,27),(96,183,27),(97,184,22),(98,185,22),(99,186,22),(100,187,22),(101,188,22),(102,189,22),(103,190,22),(104,191,22),(105,193,4),(106,197,4),(107,199,28),(108,205,4),(109,206,4),(110,207,4),(111,208,4),(112,209,4),(113,210,4),(114,211,4),(115,212,4),(116,213,4),(117,217,4),(118,219,1),(119,220,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,5,1),(2,6,4),(3,8,1),(4,10,4),(5,16,1),(6,19,4),(7,22,1),(8,24,4),(9,26,1),(10,27,1),(11,28,4),(12,29,4),(13,36,1),(14,39,1),(15,41,4),(16,43,4),(17,44,1),(18,46,1),(19,47,4),(20,49,4),(21,61,1),(22,65,4),(23,66,1),(24,67,4),(25,83,1),(26,85,4),(27,118,3),(28,120,1),(29,121,4),(30,145,1),(31,146,1),(32,147,4),(33,148,4),(34,149,1),(35,150,4),(36,219,1),(37,220,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/han/swrlcx1/HtmlRead'),(2,7,'com/waps/OffersWebView'),(3,11,'com/waps/OffersWebView'),(4,12,'NULL-CONSTANT'),(5,13,'(.*)'),(6,17,'NULL-CONSTANT'),(7,21,'(.*)'),(8,31,'com/han/swrlcx1/N1'),(9,33,'com/waps/OffersWebView'),(10,34,'com/waps/OffersWebView'),(11,45,'com/waps/OffersWebView'),(12,48,'com/waps/OffersWebView'),(13,50,'com/waps/OffersWebView'),(14,53,'com/hummingbird/cet46/DayDayUp'),(15,52,'com/waps/OffersWebView'),(16,54,'com/waps/OffersWebView'),(17,55,'com/han/yfcs1/HtmlRead'),(18,56,'com/hummingbird/cet46/ReaderType'),(19,57,'com/waps/OffersWebView'),(20,58,'com/waps/OffersWebView'),(21,68,'com/waps/OffersWebView'),(22,71,'NULL-CONSTANT'),(23,70,'com/waps/OffersWebView'),(24,74,'(.*)'),(25,72,'com/waps/OffersWebView'),(26,73,'com/waps/OffersWebView'),(27,75,'com/waps/OffersWebView'),(28,76,'NULL-CONSTANT'),(29,77,'com/waps/OffersWebView'),(30,80,'com/han/yfcs1/Main'),(31,84,'com/han/yfcs1/Main'),(32,81,'com/waps/OffersWebView'),(33,87,'(.*)'),(34,86,'com/waps/OffersWebView'),(35,88,'NULL-CONSTANT'),(36,89,'com/waps/OffersWebView'),(37,93,'com/waps/OffersWebView'),(38,94,'(.*)'),(39,95,'com/nanoha/SenseScreen/PasswordActivity'),(40,96,'com/nanoha/SenseScreen/PasswordActivity'),(41,98,'com/nanoha/HomeWidzard/HomeWidzardTwo'),(42,100,'com/nanoha/SenseScreen/view/MyLockService'),(43,101,'com/nanoha/SenseScreen/setting/SelectShortcutIcon'),(44,102,'com/nanoha/HomeWidzard/HomeWizard'),(45,103,'com/nanoha/SenseScreen/SelectWidgetActivity'),(46,112,'com/waps/OffersWebView'),(47,113,'com.android.settings.InstalledAppDetails'),(48,115,'com.android.settings.InstalledAppDetails'),(49,116,'com/nanoha/SenseScreen/SenseScreen'),(50,117,'com/nanoha/SenseScreen/setting/MainSetting'),(51,118,'(.*)'),(52,123,'com/nanoha/SenseScreen/setting/FontSizeSetting'),(53,125,'com/nanoha/SenseScreen/SenseScreen'),(54,126,'NULL-CONSTANT'),(55,127,'com/nanoha/SenseScreen/setting/SelectAppActivity'),(56,128,'com/nanoha/HomeWidzard/HomeWizard'),(57,129,'com/nanoha/SenseScreen/setting/FontColorSetting'),(58,132,'com/nanoha/HomeWidzard/HomeWidzardTwo'),(59,134,'com/nanoha/SenseScreen/view/MyLockService'),(60,136,'com/waps/OffersWebView'),(61,139,'(.*)'),(62,138,'com/nanoha/CropImage/CropImage'),(63,141,'com/jiasoft/swreader/DetailActivity'),(64,151,'com/jiasoft/swreader/DetailActivity'),(65,152,'com/nanoha/SenseScreen/setting/MainSetting'),(66,153,'com/waps/OffersWebView'),(67,156,'com/mobclick/android/UmengFeedback'),(68,159,'com/nanoha/SenseScreen/setting/MainSetting'),(69,162,'com/nanoha/SenseScreen/SenseScreen'),(70,165,'com/waps/OffersWebView'),(71,169,'com/waps/OffersWebView'),(72,174,'com/jiasoft/swreader/DownviewActivity'),(73,176,'com/jiasoft/swreader/DetailActivity'),(74,177,'com/nanoha/SenseScreen/setting/ShortcutSetting'),(75,178,'(.*)'),(76,179,'com/jiasoft/swreader/DownviewActivity'),(77,180,'(.*)'),(78,194,'com/jiasoft/swreader/DownloadActivity'),(79,195,'com/jiasoft/swreader/DetailSetupActivity'),(80,196,'com/jiasoft/swreader/ChapterActivity'),(81,198,'com/jiasoft/swreader/MarkActivity'),(82,200,'com/jiasoft/swreader/ChapterActivity'),(83,201,'com/jiasoft/swreader/LocalActivity'),(84,202,'com/waps/OffersWebView'),(85,203,'com/waps/OffersWebView'),(86,204,'com/waps/OffersWebView'),(87,214,'com/jiasoft/swreader/SetupActivity'),(88,215,'com/jiasoft/swreader/BookinfoActivity'),(89,216,'com/jiasoft/swreader/DownDetailActivity'),(90,221,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,4,2),(3,9,3),(4,14,4),(5,18,5),(6,23,6),(7,30,7),(8,32,8),(9,37,9),(10,40,10),(11,42,11),(12,51,12),(13,59,13),(14,63,14),(15,62,15),(16,69,16),(17,78,17),(18,79,18),(19,90,19),(20,91,20),(21,92,21),(22,97,22),(23,107,25),(24,114,26),(25,122,27),(26,124,28),(27,130,29),(28,131,30),(29,137,31),(30,138,32),(31,155,33),(32,173,35),(33,181,36),(34,182,37),(35,183,38),(36,193,39),(37,197,40),(38,205,41),(39,206,42),(40,207,43),(41,208,44),(42,209,45),(43,210,46),(44,211,47),(45,212,48),(46,213,49),(47,217,50);
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
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'_index'),(2,1,'type'),(3,7,'Notify_Url_Params'),(4,7,'UrlPath'),(5,7,'ACTIVITY_FLAG'),(6,7,'isFinshClose'),(7,7,'offers_webview_tag'),(8,11,'UrlPath'),(9,11,'ACTIVITY_FLAG'),(10,11,'isFinshClose'),(11,11,'offers_webview_tag'),(12,31,'tabType'),(13,33,'UrlPath'),(14,33,'ACTIVITY_FLAG'),(15,33,'offers_webview_tag'),(16,33,'URL_PARAMS'),(17,34,'CLIENT_PACKAGE'),(18,34,'URL'),(19,34,'isFinshClose'),(20,34,'offers_webview_tag'),(21,45,'UrlPath'),(22,45,'ACTIVITY_FLAG'),(23,45,'isFinshClose'),(24,45,'offers_webview_tag'),(25,48,'USER_ID'),(26,48,'CLIENT_PACKAGE'),(27,48,'Offers_URL'),(28,48,'offers_webview_tag'),(29,50,'Notify_Url_Params'),(30,48,'URL_PARAMS'),(31,50,'UrlPath'),(32,50,'ACTIVITY_FLAG'),(33,50,'isFinshClose'),(34,50,'offers_webview_tag'),(35,52,'Notify_Url_Params'),(36,52,'UrlPath'),(37,52,'ACTIVITY_FLAG'),(38,54,'UrlPath'),(39,52,'isFinshClose'),(40,54,'ACTIVITY_FLAG'),(41,52,'offers_webview_tag'),(42,55,'_index'),(43,54,'offers_webview_tag'),(44,55,'type'),(45,54,'URL_PARAMS'),(46,57,'CLIENT_PACKAGE'),(47,57,'URL'),(48,58,'UrlPath'),(49,57,'isFinshClose'),(50,58,'ACTIVITY_FLAG'),(51,57,'offers_webview_tag'),(52,58,'isFinshClose'),(53,58,'offers_webview_tag'),(54,68,'Notify_Url_Params'),(55,68,'UrlPath'),(56,68,'ACTIVITY_FLAG'),(57,70,'USER_ID'),(58,68,'isFinshClose'),(59,70,'CLIENT_PACKAGE'),(60,68,'offers_webview_tag'),(61,70,'Offers_URL'),(62,70,'offers_webview_tag'),(63,70,'URL_PARAMS'),(64,72,'USER_ID'),(65,72,'CLIENT_PACKAGE'),(66,73,'UrlPath'),(67,72,'Offers_URL'),(68,73,'ACTIVITY_FLAG'),(69,72,'offers_webview_tag'),(70,73,'isFinshClose'),(71,72,'URL_PARAMS'),(72,73,'offers_webview_tag'),(73,75,'CLIENT_PACKAGE'),(74,75,'URL'),(75,75,'isFinshClose'),(76,75,'offers_webview_tag'),(77,77,'CLIENT_PACKAGE'),(78,77,'URL'),(79,77,'isFinshClose'),(80,77,'offers_webview_tag'),(81,80,'tabType'),(82,81,'Notify_Url_Params'),(83,81,'UrlPath'),(84,81,'ACTIVITY_FLAG'),(85,81,'isFinshClose'),(86,81,'offers_webview_tag'),(87,86,'UrlPath'),(88,86,'ACTIVITY_FLAG'),(89,86,'isFinshClose'),(90,86,'offers_webview_tag'),(91,89,'USER_ID'),(92,89,'CLIENT_PACKAGE'),(93,89,'Offers_URL'),(94,89,'offers_webview_tag'),(95,89,'URL_PARAMS'),(96,93,'USER_ID'),(97,93,'CLIENT_PACKAGE'),(98,93,'Offers_URL'),(99,93,'offers_webview_tag'),(100,93,'URL_PARAMS'),(101,95,'quick_intent_string'),(102,97,'android.intent.extra.KEY_EVENT'),(103,101,'which_shortcut'),(104,107,'android.intent.extra.KEY_EVENT'),(105,112,'USER_ID'),(106,112,'CLIENT_PACKAGE'),(107,112,'Offers_URL'),(108,112,'offers_webview_tag'),(109,112,'URL_PARAMS'),(110,113,'pkg'),(111,115,'com.android.settings.ApplicationPkgName'),(112,117,'hadAd'),(113,127,'which_shortcut'),(114,136,'CLIENT_PACKAGE'),(115,136,'URL'),(116,136,'isFinshClose'),(117,136,'offers_webview_tag'),(118,138,'(.*)'),(119,141,'readtype'),(120,141,'seq'),(121,141,'bookcode'),(122,151,'readtype'),(123,151,'seq'),(124,151,'bookcode'),(125,152,'hadAd'),(126,153,'CLIENT_PACKAGE'),(127,153,'URL'),(128,153,'isFinshClose'),(129,153,'offers_webview_tag'),(130,159,'hadAd'),(131,160,'android.intent.extra.INTENT'),(132,161,'android.intent.extra.INTENT'),(133,163,'android.intent.extra.TITLE'),(134,163,'android.intent.extra.INTENT'),(135,164,'android.intent.extra.INTENT'),(136,165,'Notify_Url_Params'),(137,165,'UrlPath'),(138,166,'android.intent.extra.TITLE'),(139,165,'ACTIVITY_FLAG'),(140,166,'android.intent.extra.INTENT'),(141,165,'isFinshClose'),(142,165,'offers_webview_tag'),(143,167,'android.intent.extra.INTENT'),(144,169,'UrlPath'),(145,168,'android.intent.extra.TITLE'),(146,169,'ACTIVITY_FLAG'),(147,168,'android.intent.extra.INTENT'),(148,169,'isFinshClose'),(149,169,'offers_webview_tag'),(150,170,'android.intent.extra.TITLE'),(151,170,'android.intent.extra.INTENT'),(152,171,'appWidgetId'),(153,176,'readtype'),(154,176,'bookcode'),(155,178,'appWidgetId'),(156,184,'android.intent.extra.INTENT'),(157,185,'android.intent.extra.INTENT'),(158,186,'android.intent.extra.TITLE'),(159,186,'android.intent.extra.INTENT'),(160,187,'android.intent.extra.INTENT'),(161,188,'android.intent.extra.TITLE'),(162,188,'android.intent.extra.INTENT'),(163,189,'android.intent.extra.INTENT'),(164,190,'android.intent.extra.TITLE'),(165,190,'android.intent.extra.INTENT'),(166,191,'android.intent.extra.TITLE'),(167,191,'android.intent.extra.INTENT'),(168,196,'chapterhint'),(169,196,'bookcode'),(170,196,'comefrom'),(171,199,'duplicate'),(172,199,'android.intent.extra.shortcut.NAME'),(173,199,'android.intent.extra.shortcut.ICON_RESOURCE'),(174,199,'android.intent.extra.shortcut.INTENT'),(175,200,'chapterhint'),(176,200,'bookcode'),(177,200,'comefrom'),(178,202,'Notify_Url_Params'),(179,202,'UrlPath'),(180,202,'ACTIVITY_FLAG'),(181,202,'isFinshClose'),(182,202,'offers_webview_tag'),(183,203,'UrlPath'),(184,203,'ACTIVITY_FLAG'),(185,203,'isFinshClose'),(186,203,'offers_webview_tag'),(187,204,'USER_ID'),(188,204,'CLIENT_PACKAGE'),(189,204,'Offers_URL'),(190,204,'offers_webview_tag'),(191,204,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,9,3),(10,10,1),(11,11,4),(12,12,3),(13,13,3),(14,14,3),(15,15,3),(16,16,3),(17,17,17),(18,17,16),(19,18,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,2),(8,7,3),(9,10,1),(10,11,2);
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
INSERT INTO `IFData` VALUES (1,9,'package',NULL,NULL,NULL,NULL,NULL),(2,11,NULL,NULL,NULL,NULL,'text','plain'),(3,11,'file',NULL,NULL,NULL,NULL,NULL),(4,11,NULL,'*',NULL,NULL,NULL,NULL),(5,11,NULL,NULL,NULL,'.*\\.txt',NULL,NULL),(6,12,'package',NULL,NULL,NULL,NULL,NULL),(7,13,'package',NULL,NULL,NULL,NULL,NULL),(8,14,'package',NULL,NULL,NULL,NULL,NULL),(9,15,'package',NULL,NULL,NULL,NULL,NULL),(10,16,'package',NULL,NULL,NULL,NULL,NULL),(11,18,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,9,'application','vnd.android.package-archive'),(2,23,'application','vnd.android.package-archive'),(3,30,'application','vnd.android.package-archive'),(4,32,'application','vnd.android.package-archive'),(5,40,'application','vnd.android.package-archive'),(6,51,'application','vnd.android.package-archive'),(7,62,'application','vnd.android.package-archive'),(8,69,'application','vnd.android.package-archive'),(9,78,'application','vnd.android.package-archive'),(10,91,'application','vnd.android.package-archive'),(11,92,'application','vnd.android.package-archive'),(12,106,'image','*'),(13,124,'application','vnd.android.package-archive'),(14,135,'image','*'),(15,154,'application','octet-stream'),(16,155,'application','vnd.android.package-archive'),(17,173,'application','vnd.android.package-archive'),(18,182,'(.*)','(.*)'),(19,197,'application','vnd.android.package-archive'),(20,205,'application','vnd.android.package-archive'),(21,206,'application','vnd.android.package-archive'),(22,207,'application','vnd.android.package-archive'),(23,208,'application','vnd.android.package-archive'),(24,209,'application','vnd.android.package-archive'),(25,210,'application','vnd.android.package-archive'),(26,211,'application','vnd.android.package-archive'),(27,212,'application','vnd.android.package-archive'),(28,213,'application','vnd.android.package-archive'),(29,217,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.han.swrlcx1'),(2,5,'(.*)'),(3,6,'(.*)'),(4,8,'NULL-CONSTANT'),(5,7,'com.coderet.pianosets'),(6,10,'NULL-CONSTANT'),(7,11,'com.coderet.pianosets'),(8,12,'NULL-CONSTANT'),(9,13,'(.*)'),(10,17,'NULL-CONSTANT'),(11,16,'(.*)'),(12,19,'(.*)'),(13,21,'(.*)'),(14,22,'(.*)'),(15,24,'(.*)'),(16,26,'(.*)'),(17,27,'NULL-CONSTANT'),(18,28,'(.*)'),(19,29,'NULL-CONSTANT'),(20,31,'com.han.swrlcx1'),(21,33,'com.hummingbird.cet46'),(22,36,'(.*)'),(23,34,'com.han.yfcs1'),(24,39,'(.*)'),(25,41,'(.*)'),(26,43,'(.*)'),(27,44,'NULL-CONSTANT'),(28,46,'NULL-CONSTANT'),(29,45,'com.han.yfcs1'),(30,47,'NULL-CONSTANT'),(31,49,'NULL-CONSTANT'),(32,48,'com.android.apkmanager'),(33,50,'com.han.yfcs1'),(34,53,'com.hummingbird.cet46'),(35,52,'com.han.swrlcx1'),(36,55,'com.han.yfcs1'),(37,54,'com.android.apkmanager'),(38,56,'com.hummingbird.cet46'),(39,57,'com.coderet.pianosets'),(40,58,'com.han.swrlcx1'),(41,61,'(.*)'),(42,65,'(.*)'),(43,66,'(.*)'),(44,67,'(.*)'),(45,68,'com.android.apkmanager'),(46,71,'NULL-CONSTANT'),(47,70,'com.han.swrlcx1'),(48,74,'(.*)'),(49,73,'com.android.apkmanager'),(50,72,'com.han.yfcs1'),(51,75,'com.han.swrlcx1'),(52,76,'NULL-CONSTANT'),(53,77,'com.hummingbird.cet46'),(54,80,'com.han.yfcs1'),(55,83,'(.*)'),(56,84,'com.han.yfcs1'),(57,81,'com.hummingbird.cet46'),(58,85,'(.*)'),(59,87,'(.*)'),(60,86,'com.hummingbird.cet46'),(61,88,'NULL-CONSTANT'),(62,89,'com.android.apkmanager'),(63,93,'com.hummingbird.cet46'),(64,94,'(.*)'),(65,95,'com.nanoha.SenseScreen'),(66,96,'com.nanoha.SenseScreen'),(67,98,'com.nanoha.SenseScreen'),(68,100,'com.nanoha.SenseScreen'),(69,101,'com.nanoha.SenseScreen'),(70,102,'com.nanoha.SenseScreen'),(71,103,'com.nanoha.SenseScreen'),(72,112,'com.nanoha.SenseScreen'),(73,113,'com.android.settings'),(74,115,'com.android.settings'),(75,116,'com.nanoha.SenseScreen'),(76,117,'com.nanoha.SenseScreen'),(77,118,'(.*)'),(78,120,'(.*)'),(79,121,'(.*)'),(80,123,'com.nanoha.SenseScreen'),(81,125,'com.nanoha.SenseScreen'),(82,126,'NULL-CONSTANT'),(83,127,'com.nanoha.SenseScreen'),(84,128,'com.nanoha.SenseScreen'),(85,129,'com.nanoha.SenseScreen'),(86,132,'com.nanoha.SenseScreen'),(87,134,'com.nanoha.SenseScreen'),(88,136,'com.nanoha.SenseScreen'),(89,139,'(.*)'),(90,138,'com.nanoha.SenseScreen'),(91,141,'com.jiasoft.swreader'),(92,145,'(.*)'),(93,146,'(.*)'),(94,147,'(.*)'),(95,148,'(.*)'),(96,149,'NULL-CONSTANT'),(97,150,'NULL-CONSTANT'),(98,151,'com.jiasoft.swreader'),(99,152,'com.nanoha.SenseScreen'),(100,153,'com.jiasoft.swreader'),(101,156,'com.jiasoft.swreader'),(102,159,'com.nanoha.SenseScreen'),(103,162,'com.nanoha.SenseScreen'),(104,165,'com.nanoha.SenseScreen'),(105,169,'com.nanoha.SenseScreen'),(106,174,'com.jiasoft.swreader'),(107,176,'com.jiasoft.swreader'),(108,177,'com.nanoha.SenseScreen'),(109,178,'(.*)'),(110,179,'com.jiasoft.swreader'),(111,180,'(.*)'),(112,194,'com.jiasoft.swreader'),(113,195,'com.jiasoft.swreader'),(114,196,'com.jiasoft.swreader'),(115,198,'com.jiasoft.swreader'),(116,200,'com.jiasoft.swreader'),(117,201,'com.jiasoft.swreader'),(118,202,'com.jiasoft.swreader'),(119,203,'com.jiasoft.swreader'),(120,204,'com.jiasoft.swreader'),(121,214,'com.jiasoft.swreader'),(122,215,'com.jiasoft.swreader'),(123,216,'com.jiasoft.swreader'),(124,219,'NULL-CONSTANT'),(125,220,'NULL-CONSTANT'),(126,221,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,10,0),(4,11,0),(5,20,0),(6,24,0),(7,28,0),(8,42,0),(9,43,0),(10,44,0),(11,45,0),(12,59,0),(13,62,0),(14,63,0),(15,64,0),(16,69,0),(17,70,0),(18,71,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentPermissions`
--

LOCK TABLES `IntentPermissions` WRITE;
/*!40000 ALTER TABLE `IntentPermissions` DISABLE KEYS */;
INSERT INTO `IntentPermissions` VALUES (1,68,21),(2,79,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,2,1,0),(5,3,1,0),(6,3,1,0),(7,4,0,0),(8,3,1,0),(9,5,1,0),(10,3,1,0),(11,4,0,0),(12,6,0,0),(13,7,0,0),(14,8,1,0),(15,9,1,0),(16,9,1,0),(17,10,0,0),(18,8,1,0),(19,9,1,0),(20,11,1,0),(21,12,0,0),(22,11,1,0),(23,13,1,0),(24,11,1,0),(25,14,1,0),(26,14,1,0),(27,11,1,0),(28,14,1,0),(29,11,1,0),(30,15,1,0),(31,17,0,0),(32,16,1,0),(33,18,0,0),(34,19,0,0),(35,20,1,0),(36,20,1,0),(37,21,1,0),(38,22,1,0),(39,22,1,0),(40,23,1,0),(41,20,1,0),(42,21,1,0),(43,22,1,0),(44,20,1,0),(45,24,0,0),(46,22,1,0),(47,20,1,0),(48,25,0,0),(49,22,1,0),(50,24,0,0),(51,26,1,0),(52,27,0,0),(53,28,0,0),(54,29,0,0),(55,30,0,0),(56,32,0,0),(57,31,0,0),(58,27,0,0),(59,33,1,0),(60,34,1,0),(61,34,1,0),(62,35,1,0),(63,33,1,0),(64,36,1,0),(65,34,1,0),(66,36,1,0),(67,36,1,0),(68,37,0,0),(69,38,1,0),(70,39,0,0),(71,40,0,0),(72,41,0,0),(73,37,0,0),(74,43,0,0),(75,44,0,0),(76,46,0,0),(77,47,0,0),(78,48,1,0),(79,49,1,0),(80,50,0,0),(81,51,0,0),(82,52,1,0),(83,52,1,0),(84,53,0,0),(85,52,1,0),(86,51,0,0),(87,54,0,0),(88,55,0,0),(89,57,0,0),(90,60,1,0),(91,61,1,0),(92,62,1,0),(93,63,0,0),(94,64,0,0),(95,67,0,0),(96,67,0,0),(97,68,1,0),(98,69,0,0),(99,70,1,0),(100,70,0,0),(101,72,0,0),(102,73,0,0),(103,74,0,0),(104,75,1,0),(105,76,1,0),(106,78,1,0),(107,79,1,0),(108,80,1,0),(109,80,1,0),(110,80,1,0),(111,80,1,0),(112,81,0,0),(113,82,0,0),(114,82,1,0),(115,82,0,0),(116,83,0,0),(117,84,0,0),(118,85,0,0),(119,87,1,0),(120,87,1,0),(121,87,1,0),(122,88,1,0),(123,89,0,0),(124,90,1,0),(125,91,0,0),(126,92,0,0),(127,93,0,0),(128,94,0,0),(129,95,0,0),(130,96,1,0),(131,96,1,0),(132,97,0,0),(133,98,1,0),(134,99,0,0),(135,100,1,0),(136,101,0,0),(137,102,1,0),(138,103,0,0),(139,104,0,0),(140,105,1,0),(141,106,0,0),(142,107,1,0),(143,108,1,0),(144,109,1,0),(145,108,1,0),(146,109,1,0),(147,108,1,0),(148,109,1,0),(149,108,1,0),(150,108,1,0),(151,110,0,0),(152,111,0,0),(153,112,0,0),(154,113,1,0),(155,114,1,0),(156,115,0,0),(157,116,1,0),(158,117,1,0),(159,118,0,0),(160,119,1,0),(161,119,1,0),(162,120,0,0),(163,119,1,0),(164,119,1,0),(165,122,0,0),(166,119,1,0),(167,119,1,0),(168,119,1,0),(169,122,0,0),(170,119,1,0),(171,123,1,0),(172,125,1,0),(173,126,1,0),(174,128,0,0),(175,127,1,0),(176,129,0,0),(177,131,0,0),(178,132,0,0),(179,133,0,0),(180,135,0,0),(181,136,1,0),(182,136,1,0),(183,136,1,0),(184,137,1,0),(185,137,1,0),(186,137,1,0),(187,137,1,0),(188,137,1,0),(189,137,1,0),(190,137,1,0),(191,137,1,0),(192,138,1,0),(193,139,1,0),(194,140,0,0),(195,141,0,0),(196,142,0,0),(197,143,1,0),(198,144,0,0),(199,145,1,0),(200,146,0,0),(201,147,0,0),(202,148,0,0),(203,148,0,0),(204,149,0,0),(205,150,1,0),(206,150,1,0),(207,150,1,0),(208,150,1,0),(209,150,1,0),(210,150,1,0),(211,150,1,0),(212,150,1,0),(213,150,1,0),(214,151,0,0),(215,152,0,0),(216,153,0,0),(217,154,1,0),(218,155,1,0),(219,155,1,0),(220,155,1,0),(221,156,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,53,17,2,NULL),(2,56,14,2,NULL),(3,15,11,2,NULL),(4,16,11,2,NULL),(5,19,11,2,NULL),(6,25,11,2,NULL),(7,26,11,2,NULL),(8,28,11,2,NULL),(9,64,11,2,NULL),(10,66,11,2,NULL),(11,67,11,2,NULL),(12,60,11,2,NULL),(13,61,11,2,NULL),(14,65,11,2,NULL),(15,79,11,2,NULL),(16,82,11,2,NULL),(17,83,11,2,NULL),(18,85,11,2,NULL),(19,137,11,2,NULL),(20,171,11,2,NULL),(21,104,11,2,NULL),(22,105,11,2,NULL),(23,108,11,2,NULL),(24,109,11,2,NULL),(25,110,11,2,NULL),(26,111,11,2,NULL),(27,133,11,2,NULL),(28,140,11,2,NULL),(29,142,11,2,NULL),(30,172,11,2,NULL),(31,175,11,2,NULL),(32,119,11,2,NULL),(33,120,11,2,NULL),(34,121,11,2,NULL),(35,199,11,2,NULL),(36,181,11,2,NULL),(37,183,11,2,NULL),(38,144,11,2,NULL),(39,146,11,2,NULL),(40,148,11,2,NULL),(41,60,1,2,NULL),(42,61,1,2,NULL),(43,65,1,2,NULL),(44,60,2,2,NULL),(45,61,2,2,NULL),(46,65,2,2,NULL),(47,60,10,2,NULL),(48,61,10,2,NULL),(49,65,10,2,NULL),(50,60,20,2,NULL),(51,61,20,2,NULL),(52,65,20,2,NULL),(53,60,24,2,NULL),(54,61,24,2,NULL),(55,65,24,2,NULL),(56,60,28,2,NULL),(57,61,28,2,NULL),(58,65,28,2,NULL),(59,60,42,2,NULL),(60,61,42,2,NULL),(61,65,42,2,NULL),(62,60,70,2,NULL),(63,61,70,2,NULL),(64,65,70,2,NULL),(65,60,44,2,NULL),(66,61,44,2,NULL),(67,65,44,2,NULL),(68,15,10,2,NULL),(69,16,10,2,NULL),(70,19,10,2,NULL),(71,25,10,2,NULL),(72,26,10,2,NULL),(73,28,10,2,NULL),(74,64,10,2,NULL),(75,66,10,2,NULL),(76,67,10,2,NULL),(77,79,10,2,NULL),(78,82,10,2,NULL),(79,83,10,2,NULL),(80,85,10,2,NULL),(81,137,10,2,NULL),(82,171,10,2,NULL),(83,104,10,2,NULL),(84,105,10,2,NULL),(85,108,10,2,NULL),(86,109,10,2,NULL),(87,110,10,2,NULL),(88,111,10,2,NULL),(89,133,10,2,NULL),(90,140,10,2,NULL),(91,142,10,2,NULL),(92,172,10,2,NULL),(93,175,10,2,NULL),(94,119,10,2,NULL),(95,120,10,2,NULL),(96,121,10,2,NULL),(97,199,10,2,NULL),(98,181,10,2,NULL),(99,183,10,2,NULL),(100,144,10,2,NULL),(101,146,10,2,NULL),(102,148,10,2,NULL),(103,64,1,2,NULL),(104,66,1,2,NULL),(105,67,1,2,NULL),(106,64,2,2,NULL),(107,66,2,2,NULL),(108,67,2,2,NULL),(109,64,20,2,NULL),(110,66,20,2,NULL),(111,67,20,2,NULL),(112,64,24,2,NULL),(113,66,24,2,NULL),(114,67,24,2,NULL),(115,64,28,2,NULL),(116,66,28,2,NULL),(117,67,28,2,NULL),(118,64,42,2,NULL),(119,66,42,2,NULL),(120,67,42,2,NULL),(121,64,70,2,NULL),(122,66,70,2,NULL),(123,67,70,2,NULL),(124,64,44,2,NULL),(125,66,44,2,NULL),(126,67,44,2,NULL),(127,15,20,2,NULL),(128,16,20,2,NULL),(129,19,20,2,NULL),(130,25,20,2,NULL),(131,26,20,2,NULL),(132,28,20,2,NULL),(133,79,20,2,NULL),(134,82,20,2,NULL),(135,83,20,2,NULL),(136,85,20,2,NULL),(137,137,20,2,NULL),(138,171,20,2,NULL),(139,104,20,2,NULL),(140,105,20,2,NULL),(141,108,20,2,NULL),(142,109,20,2,NULL),(143,110,20,2,NULL),(144,111,20,2,NULL),(145,133,20,2,NULL),(146,140,20,2,NULL),(147,142,20,2,NULL),(148,172,20,2,NULL),(149,175,20,2,NULL),(150,119,20,2,NULL),(151,120,20,2,NULL),(152,121,20,2,NULL),(153,199,20,2,NULL),(154,181,20,2,NULL),(155,183,20,2,NULL),(156,144,20,2,NULL),(157,146,20,2,NULL),(158,148,20,2,NULL),(159,79,1,2,NULL),(160,79,2,2,NULL),(161,79,24,2,NULL),(162,79,28,2,NULL),(163,79,42,2,NULL),(164,79,70,2,NULL),(165,79,44,2,NULL),(166,82,1,2,NULL),(167,83,1,2,NULL),(168,85,1,2,NULL),(169,82,2,2,NULL),(170,83,2,2,NULL),(171,85,2,2,NULL),(172,82,24,2,NULL),(173,83,24,2,NULL),(174,85,24,2,NULL),(175,82,28,2,NULL),(176,83,28,2,NULL),(177,85,28,2,NULL),(178,82,42,2,NULL),(179,83,42,2,NULL),(180,85,42,2,NULL),(181,82,70,2,NULL),(182,83,70,2,NULL),(183,85,70,2,NULL),(184,82,44,2,NULL),(185,83,44,2,NULL),(186,85,44,2,NULL),(187,15,1,2,NULL),(188,16,1,2,NULL),(189,19,1,2,NULL),(190,25,1,2,NULL),(191,26,1,2,NULL),(192,28,1,2,NULL),(193,137,1,2,NULL),(194,171,1,2,NULL),(195,104,1,2,NULL),(196,105,1,2,NULL),(197,108,1,2,NULL),(198,109,1,2,NULL),(199,110,1,2,NULL),(200,111,1,2,NULL),(201,133,1,2,NULL),(202,140,1,2,NULL),(203,142,1,2,NULL),(204,172,1,2,NULL),(205,175,1,2,NULL),(206,119,1,2,NULL),(207,120,1,2,NULL),(208,121,1,2,NULL),(209,199,1,2,NULL),(210,181,1,2,NULL),(211,183,1,2,NULL),(212,144,1,2,NULL),(213,146,1,2,NULL),(214,148,1,2,NULL),(215,15,2,2,NULL),(216,16,2,2,NULL),(217,19,2,2,NULL),(218,15,24,2,NULL),(219,16,24,2,NULL),(220,19,24,2,NULL),(221,15,28,2,NULL),(222,16,28,2,NULL),(223,19,28,2,NULL),(224,15,42,2,NULL),(225,16,42,2,NULL),(226,19,42,2,NULL),(227,15,70,2,NULL),(228,16,70,2,NULL),(229,19,70,2,NULL),(230,15,44,2,NULL),(231,16,44,2,NULL),(232,19,44,2,NULL),(233,117,34,2,NULL),(234,128,32,2,NULL),(235,176,45,2,NULL),(236,137,2,2,NULL),(237,179,51,2,NULL),(238,25,24,2,NULL),(239,196,53,2,NULL),(240,26,24,2,NULL),(241,214,46,2,NULL),(242,28,24,2,NULL),(243,215,55,2,NULL),(244,171,24,2,NULL),(245,25,44,2,NULL),(246,104,24,2,NULL),(247,26,44,2,NULL),(248,105,24,2,NULL),(249,28,44,2,NULL),(250,108,24,2,NULL),(251,137,44,2,NULL),(252,109,24,2,NULL),(253,171,44,2,NULL),(254,110,24,2,NULL),(255,104,44,2,NULL),(256,111,24,2,NULL),(257,105,44,2,NULL),(258,133,24,2,NULL),(259,108,44,2,NULL),(260,140,24,2,NULL),(261,109,44,2,NULL),(262,142,24,2,NULL),(263,110,44,2,NULL),(264,172,24,2,NULL),(265,111,44,2,NULL),(266,175,24,2,NULL),(267,133,44,2,NULL),(268,137,28,2,NULL),(269,140,44,2,NULL),(270,119,24,2,NULL),(271,142,44,2,NULL),(272,120,24,2,NULL),(273,172,44,2,NULL),(274,121,24,2,NULL),(275,175,44,2,NULL),(276,137,42,2,NULL),(277,119,44,2,NULL),(278,137,70,2,NULL),(279,120,44,2,NULL),(280,199,24,2,NULL),(281,121,44,2,NULL),(282,181,24,2,NULL),(283,199,44,2,NULL),(284,183,24,2,NULL),(285,181,44,2,NULL),(286,144,24,2,NULL),(287,183,44,2,NULL),(288,146,24,2,NULL),(289,144,44,2,NULL),(290,148,24,2,NULL),(291,146,44,2,NULL),(292,171,2,2,NULL),(293,148,44,2,NULL),(294,171,28,2,NULL),(295,195,47,2,NULL),(296,171,42,2,NULL),(297,200,53,2,NULL),(298,171,70,2,NULL),(299,199,2,2,NULL),(300,104,2,2,NULL),(301,199,28,2,NULL),(302,105,2,2,NULL),(303,199,42,2,NULL),(304,108,2,2,NULL),(305,199,70,2,NULL),(306,109,2,2,NULL),(307,181,2,2,NULL),(308,110,2,2,NULL),(309,183,2,2,NULL),(310,111,2,2,NULL),(311,181,28,2,NULL),(312,133,2,2,NULL),(313,183,28,2,NULL),(314,140,2,2,NULL),(315,181,42,2,NULL),(316,142,2,2,NULL),(317,183,42,2,NULL),(318,172,2,2,NULL),(319,181,70,2,NULL),(320,175,2,2,NULL),(321,183,70,2,NULL),(322,104,28,2,NULL),(323,144,2,2,NULL),(324,105,28,2,NULL),(325,146,2,2,NULL),(326,108,28,2,NULL),(327,148,2,2,NULL),(328,109,28,2,NULL),(329,144,28,2,NULL),(330,110,28,2,NULL),(331,146,28,2,NULL),(332,111,28,2,NULL),(333,148,28,2,NULL),(334,133,28,2,NULL),(335,144,42,2,NULL),(336,140,28,2,NULL),(337,146,42,2,NULL),(338,142,28,2,NULL),(339,148,42,2,NULL),(340,172,28,2,NULL),(341,144,70,2,NULL),(342,175,28,2,NULL),(343,146,70,2,NULL),(344,104,42,2,NULL),(345,148,70,2,NULL),(346,105,42,2,NULL),(347,108,42,2,NULL),(348,109,42,2,NULL),(349,110,42,2,NULL),(350,111,42,2,NULL),(351,133,42,2,NULL),(352,140,42,2,NULL),(353,142,42,2,NULL),(354,172,42,2,NULL),(355,175,42,2,NULL),(356,104,70,2,NULL),(357,105,70,2,NULL),(358,108,70,2,NULL),(359,109,70,2,NULL),(360,110,70,2,NULL),(361,111,70,2,NULL),(362,133,70,2,NULL),(363,140,70,2,NULL),(364,142,70,2,NULL),(365,172,70,2,NULL),(366,175,70,2,NULL),(367,98,33,2,NULL),(368,132,33,2,NULL),(369,162,27,2,NULL),(370,25,28,2,NULL),(371,26,28,2,NULL),(372,28,28,2,NULL),(373,119,28,2,NULL),(374,120,28,2,NULL),(375,121,28,2,NULL),(376,102,32,2,NULL),(377,123,35,2,NULL),(378,129,36,2,NULL),(379,138,31,2,NULL),(380,177,37,2,NULL),(381,101,39,2,NULL),(382,127,38,2,NULL),(383,119,2,2,NULL),(384,120,2,2,NULL),(385,121,2,2,NULL),(386,119,42,2,NULL),(387,120,42,2,NULL),(388,121,42,2,NULL),(389,119,70,2,NULL),(390,120,70,2,NULL),(391,121,70,2,NULL),(392,134,41,2,NULL),(393,25,42,2,NULL),(394,26,42,2,NULL),(395,28,42,2,NULL),(396,25,70,2,NULL),(397,26,70,2,NULL),(398,28,70,2,NULL),(399,25,2,2,NULL),(400,26,2,2,NULL),(401,28,2,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (21,'<NULL>'),(8,'android.permission.ACCESS_COARSE_LOCATION'),(5,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(12,'android.permission.CALL_PHONE'),(10,'android.permission.CHANGE_WIFI_STATE'),(14,'android.permission.DISABLE_KEYGUARD'),(16,'android.permission.EXPAND_STATUS_BAR'),(2,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(17,'android.permission.MODIFY_PHONE_STATE'),(13,'android.permission.READ_CONTACTS'),(20,'android.permission.READ_LOGS'),(6,'android.permission.READ_PHONE_STAT'),(1,'android.permission.READ_PHONE_STATE'),(15,'android.permission.RECEIVE_BOOT_COMPLETED'),(19,'android.permission.VIBRATE'),(11,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(18,'android.permission.WRITE_SETTINGS'),(9,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(19,NULL,NULL,'',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(23,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(24,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(25,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(26,'package','NULL-CONSTANT',NULL,NULL,NULL,NULL),(27,NULL,NULL,'http://market.android.com/details?id=com.nanoha.SenseScreen_charge',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'mailto:ainanoha@163.com',NULL,NULL,NULL),(32,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(49,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,71,23),(2,71,24),(3,124,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,2),(7,2,3),(8,2,4),(9,2,5),(10,2,6),(11,3,1),(12,3,3),(13,4,1),(14,3,4),(15,4,2),(16,3,5),(17,4,3),(18,3,7),(19,4,4),(20,3,8),(21,4,5),(22,4,7),(23,4,9),(24,5,1),(25,5,2),(26,5,3),(27,5,4),(28,5,5),(29,5,7),(30,5,10),(31,5,11),(32,6,17),(33,6,16),(34,6,1),(35,6,19),(36,6,18),(37,6,3),(38,6,4),(39,6,5),(40,6,12),(41,6,13),(42,6,14),(43,6,15),(44,7,1),(45,7,3),(46,7,4),(47,7,20),(48,7,5),(49,7,7),(50,7,8),(51,7,9);
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

-- Dump completed on 2015-10-12  3:30:17
