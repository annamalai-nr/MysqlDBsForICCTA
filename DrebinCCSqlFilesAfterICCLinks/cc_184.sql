-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_184
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
INSERT INTO `ActionStrings` VALUES (8,'(.*)'),(5,'SQUARE'),(12,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.CHOOSER'),(18,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.PACKAGE_ADDED'),(13,'android.intent.action.SCREEN_OFF'),(14,'android.intent.action.SCREEN_ON'),(10,'android.intent.action.SEARCH'),(16,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(6,'android.intent.action.VIEW'),(11,'android.settings.WIRELESS_SETTINGS'),(15,'com.android.music.musicservicecommand'),(7,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'guesspants.com.game',1),(2,'com.ps.square',10),(3,'me.xiaoyuantong',1),(4,'com.mogo.five',1),(5,'com.mogo.chongwullk',12),(6,'com.evilsunflower.reader.evilZenyang16',1),(7,'com.cdjm.reader.evilMeiguo8',1);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.SQUARE');
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'guesspants.com.game.WhereIsA'),(2,1,'com.waps.OffersWebView'),(3,1,'com.google.ads.AdActivity'),(4,1,'net.youmi.android.AdActivity'),(5,1,'com.google.update.Dialog'),(6,1,'com.google.update.UpdateService'),(7,1,'com.google.update.Receiver'),(8,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(9,2,'com.ps.square.Square'),(10,2,'com.ps.square.elos.Elos'),(11,2,'com.ps.square.eloscomplex.ElosComplex'),(12,2,'com.google.update.Dialog'),(13,2,'com.google.update.UpdateService'),(14,2,'com.google.update.Receiver'),(15,3,'me.xiaoyuantong.WelcomeActivity'),(16,3,'me.xiaoyuantong.IndexActivity'),(17,3,'me.xiaoyuantong.XxsListActivity'),(18,3,'me.xiaoyuantong.XxsDetailActivity'),(19,3,'me.xiaoyuantong.LectureListActivity'),(20,3,'me.xiaoyuantong.LectureDetailActivity'),(21,3,'me.xiaoyuantong.ActivityListActivity'),(22,3,'me.xiaoyuantong.ActivityDetailActivity'),(23,3,'me.xiaoyuantong.CompetitionListActivity'),(24,3,'me.xiaoyuantong.CompetitionDetailActivity'),(25,3,'me.xiaoyuantong.CommonListActivity'),(26,3,'me.xiaoyuantong.CommonDetailActivity'),(27,3,'me.xiaoyuantong.TelephoneListActivity'),(28,3,'me.xiaoyuantong.TelephoneListByTypeActivity'),(29,3,'me.xiaoyuantong.MapDetailActivity'),(30,4,'com.mogo.five.MainActivity'),(31,3,'me.xiaoyuantong.ZxsActivity'),(32,3,'me.xiaoyuantong.LoginActivity'),(33,3,'me.xiaoyuantong.PersonActivity'),(34,4,'com.google.ssearch.Dialog'),(35,3,'me.xiaoyuantong.ModifyPersonActivity'),(36,4,'com.google.ads.AdActivity'),(37,3,'me.xiaoyuantong.RegisterActivity'),(38,4,'com.google.ssearch.SearchService'),(39,3,'me.xiaoyuantong.JwNoticeListActivity'),(40,4,'com.google.ssearch.Receiver'),(41,3,'me.xiaoyuantong.NewsListActivity'),(42,3,'me.xiaoyuantong.NewsDetailActivity'),(43,3,'me.xiaoyuantong.NoticeListActivity'),(44,3,'me.xiaoyuantong.NoticeDetailActivity'),(45,3,'me.xiaoyuantong.FoodListActivity'),(46,3,'me.xiaoyuantong.FoodDetailActivity'),(47,3,'me.xiaoyuantong.RestaurantListActivity'),(48,3,'me.xiaoyuantong.RestaurantDetailActivity'),(49,3,'me.xiaoyuantong.FoodTiteListActivity'),(50,3,'me.xiaoyuantong.FoodTiteDetailActivity'),(51,3,'com.google.update.Dialog'),(52,3,'me.xiaoyuantong.service.AutoUpdateService'),(53,3,'com.google.update.UpdateService'),(54,3,'com.google.update.Receiver'),(55,1,'com.waps.z'),(56,1,'com.google.update.Dialog$2'),(57,1,'com.google.update.Dialog$1'),(58,4,'com.google.ssearch.SearchService$MyThread'),(59,2,'com.google.update.Dialog$2'),(60,1,'com.waps.aa'),(61,2,'com.ps.square.Square$ItemClickListener'),(62,2,'com.google.update.UpdateService$AA'),(63,1,'com.waps.q'),(64,4,'com.google.ssearch.Dialog$1'),(65,2,'com.google.update.Dialog$1'),(66,1,'com.waps.ac'),(67,5,'com.mogo.chongwullk.begin'),(68,5,'com.mogo.chongwullk.Main'),(69,5,'com.google.ads.AdActivity'),(70,5,'com.vpon.adon.android.WebInApp'),(71,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(72,1,'com.waps.o'),(73,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(74,5,'com.waps.OffersWebView'),(75,5,'com.google.update.Dialog'),(76,5,'com.google.update.UpdateService'),(77,1,'com.google.update.UpdateService$AA'),(78,5,'com.google.update.Receiver'),(79,1,'com.waps.AppConnect'),(80,6,'com.evilsunflower.reader.evilZenyang16.BugReportActivity'),(81,6,'com.evilsunflower.reader.FBReader'),(82,6,'com.evilsunflower.reader.CancelActivity'),(83,6,'com.evilsunflower.reader.image.ImageViewActivity'),(84,6,'com.evilsunflower.reader.TOCActivity'),(85,6,'com.evilsunflower.reader.BookmarksActivity'),(86,6,'com.evilsunflower.reader.control.ShowTips'),(87,6,'com.evilsunflower.reader.BookmarkEditActivity'),(88,6,'com.evilsunflower.reader.Starter'),(89,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(90,6,'com.vpon.adon.android.WebInApp'),(91,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(92,6,'com.millennialmedia.android.VideoPlayer'),(93,6,'net.youmi.android.AdActivity'),(94,6,'com.google.ads.AdActivity'),(95,6,'com.guohead.sdk.GuoheAdActivity'),(96,6,'cn.domob.android.ads.DomobActivity'),(97,6,'com.evilsunflower.reader.control.UpdateService'),(98,6,'com.evilsunflower.reader.control.Receiver'),(99,5,'com.google.update.Dialog$1'),(100,5,'com.ju6.a'),(101,5,'com.google.update.UpdateService$MyThread'),(102,5,'com.mobclick.android.MobclickAgent'),(103,5,'org.loon.framework.android.game.LGameAndroid2DActivity$10'),(104,5,'com.google.update.Dialog$2'),(105,5,'com.waps.m'),(106,5,'com.waps.AppConnect'),(107,5,'org.loon.framework.android.game.LGameAndroid2DActivity$9'),(108,5,'com.mogo.chongwullk.begin$beginButtonListener'),(109,5,'com.waps.k'),(110,7,'com.cdjm.reader.evilMeiguo8.BugReportActivity'),(111,7,'com.cdjm.reader.FBReader'),(112,7,'com.cdjm.reader.CancelActivity'),(113,7,'com.cdjm.reader.image.ImageViewActivity'),(114,7,'com.cdjm.reader.TOCActivity'),(115,7,'com.cdjm.reader.BookmarksActivity'),(116,7,'com.cdjm.reader.control.ShowTips'),(117,7,'com.cdjm.reader.BookmarkEditActivity'),(118,7,'com.cdjm.reader.Starter'),(119,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(120,7,'com.vpon.adon.android.WebInApp'),(121,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(122,7,'com.millennialmedia.android.VideoPlayer'),(123,7,'net.youmi.android.AdActivity'),(124,7,'com.google.ads.AdActivity'),(125,7,'com.guohead.sdk.GuoheAdActivity'),(126,7,'cn.domob.android.ads.DomobActivity'),(127,7,'com.cdjm.reader.control.UpdateService'),(128,7,'com.cdjm.reader.control.Receiver'),(129,6,'com.baidu.as'),(130,6,'com.ju6.mms.util.SqliteWrapper'),(131,6,'com.guohead.sdk.adapters.CustomAdapter$4'),(132,6,'com.madhouse.android.ads._'),(133,6,'com.evilsunflower.reader.control.ShowTips$1'),(134,6,'com.evilsunflower.reader.ui.ZLAndroidActivity'),(135,6,'net.youmi.android.eo'),(136,6,'com.evilsunflower.reader.ui.ZLAndroidActivity$1'),(137,6,'com.adwo.adsdk.M'),(138,6,'com.ju6.c'),(139,6,'com.millennialmedia.android.MillennialMediaView'),(140,6,'com.ju6.mms.pdu.PduPersister'),(141,6,'com.baidu.al'),(142,6,'com.evilsunflower.reader.ui.BugReportActivity$1'),(143,6,'net.youmi.android.t'),(144,6,'net.youmi.android.be'),(145,6,'com.guohead.sdk.adapters.CustomAdapter$3');
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'URL'),(2,2,'CLIENT_PACKAGE'),(3,1,'CLIENT_PACKAGE'),(4,5,'TYPEdsada'),(5,2,'WAPS_PID'),(6,1,'WAPS_PID'),(7,2,'Offers_URL'),(8,2,'USER_ID'),(9,2,'isFinshClose'),(10,6,'ST_MY_PID'),(11,6,'ST_START_DELAY'),(12,2,'SHWO_FLAG'),(13,13,'ST_MY_PID'),(14,2,'Notify_Url_Params'),(15,8,'url'),(16,12,'TYPEdsada'),(17,8,'transitionTime'),(18,34,'TYPEdsada'),(19,8,'shouldEnableBottomBar'),(20,8,'overlayTransition'),(21,8,'shouldMakeOverlayTransparent'),(22,36,'com.google.ads.AdOpener'),(23,36,'action'),(24,36,'params'),(25,2,'UrlPath'),(26,2,'APP_ID'),(27,1,'APP_ID'),(28,8,'shouldShowBottomBar'),(29,2,'URL_PARAMS'),(30,8,'shouldResizeOverlay'),(31,34,'MSG'),(32,8,'shouldShowTitlebar'),(33,5,'MSG'),(34,12,'MSG'),(35,2,'DEVICE_ID'),(36,1,'DEVICE_ID'),(37,13,'ST_START_DELAY'),(38,8,'overlayTitle'),(39,2,'ACTIVITY_FLAG'),(40,2,'offers_webview_tag'),(41,2,'WAPS_ID'),(42,1,'WAPS_ID'),(43,2,'Notify_Id'),(44,63,'MSG'),(45,60,'Adwo_PID'),(46,56,'APP_ID'),(47,61,'overlayTransition'),(48,62,'URL'),(49,59,'adWidth'),(50,56,'WAPS_PID'),(51,61,'shouldShowTitlebar'),(52,56,'CLIENT_PACKAGE'),(53,61,'shouldShowBottomBar'),(54,61,'shouldMakeOverlayTransparent'),(55,62,'USER_ID'),(56,63,'TYPEdsada'),(57,62,'Offers_URL'),(58,62,'URL_PARAMS'),(59,56,'UMENG_CHANNEL'),(60,59,'url'),(61,64,'ST_MY_PID'),(62,56,'DEVICE_ID'),(63,61,'shouldResizeOverlay'),(64,56,'WAPS_ID'),(65,60,'isTestMode'),(66,61,'transitionTime'),(67,56,'UMENG_APPKEY'),(68,62,'CLIENT_PACKAGE'),(69,64,'ST_START_DELAY'),(70,61,'shouldEnableBottomBar'),(71,61,'overlayTitle'),(72,61,'url'),(73,62,'isFinshClose'),(74,81,'link'),(75,83,'SAFE_START'),(76,76,'url'),(77,67,'query'),(78,77,'shouldShowTitlebar'),(79,75,'transitionTime'),(80,75,'overlayTransition'),(81,75,'shouldEnableBottomBar'),(82,78,'logSet'),(83,67,'com.cdjm.reader.ui.androidActiviy.RequestedOrientation'),(84,78,'isCachedAd'),(85,77,'overlayTitle'),(86,67,'Adwo_PID'),(87,83,'SAFE_PID'),(88,78,'shouldShowBottomBar'),(89,78,'ADUrl'),(90,71,'ADUrl'),(91,67,'ADUrl'),(92,79,'ADUrl'),(93,75,'shouldResizeOverlay'),(94,77,'shouldResizeOverlay'),(95,76,'adWidth'),(96,77,'shouldMakeOverlayTransparent'),(97,75,'shouldMakeOverlayTransparent'),(98,78,'videoAd'),(99,67,'Market_ID'),(100,75,'shouldShowBottomBar'),(101,77,'cachedAdView'),(102,78,'videoCompleted'),(103,79,'172C94EDC717477aBF600D7898A64A8E'),(104,79,'EB80F3291A8E469c962CA133BDC549D7'),(105,79,'D780FBF4215247bcBB1AC0AD33C474FE'),(106,71,'query'),(107,79,'D50EF1926ADD471892E72BCE6D7E032C'),(108,72,'MM'),(109,75,'overlayTitle'),(110,77,'overlayTransition'),(111,78,'cached'),(112,67,'GH_APPKEY'),(113,75,'shouldShowTitlebar'),(114,77,'shouldEnableBottomBar'),(115,67,'com.cdjm.reader.ui.androidActiviy.ChangeCounter'),(116,77,'canAccelerate'),(117,67,'Wooboo_PID'),(118,78,'videoPosition'),(119,77,'shouldShowBottomBar'),(120,75,'url'),(121,78,'adName'),(122,77,'transitionTime');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,63,'r',1,NULL,NULL),(56,67,'a',1,NULL,NULL),(57,68,'a',0,NULL,NULL),(58,69,'a',0,NULL,NULL),(59,70,'a',0,NULL,NULL),(60,71,'a',0,NULL,NULL),(61,73,'a',0,NULL,NULL),(62,74,'a',0,NULL,NULL),(63,75,'a',0,NULL,NULL),(64,76,'s',0,NULL,NULL),(65,78,'r',1,NULL,NULL),(66,80,'a',0,NULL,NULL),(67,81,'a',1,NULL,NULL),(68,82,'a',0,NULL,NULL),(69,83,'a',0,NULL,NULL),(70,84,'a',0,NULL,NULL),(71,85,'a',1,NULL,NULL),(72,86,'a',0,NULL,NULL),(73,87,'a',0,NULL,NULL),(74,88,'a',0,NULL,NULL),(75,89,'a',0,NULL,NULL),(76,90,'a',0,NULL,NULL),(77,91,'a',0,NULL,NULL),(78,92,'a',0,NULL,NULL),(79,93,'a',0,NULL,NULL),(80,94,'a',0,NULL,NULL),(81,95,'a',0,NULL,NULL),(82,96,'a',0,NULL,NULL),(83,97,'s',0,NULL,NULL),(84,98,'r',1,NULL,NULL),(85,105,'r',1,NULL,NULL),(86,110,'a',0,NULL,NULL),(87,111,'a',1,NULL,NULL),(88,112,'a',0,NULL,NULL),(89,113,'a',0,NULL,NULL),(90,114,'a',0,NULL,NULL),(91,115,'a',1,NULL,NULL),(92,116,'a',0,NULL,NULL),(93,117,'a',0,NULL,NULL),(94,118,'a',0,NULL,NULL),(95,119,'a',0,NULL,NULL),(96,120,'a',0,NULL,NULL),(97,121,'a',0,NULL,NULL),(98,122,'a',0,NULL,NULL),(99,123,'a',0,NULL,NULL),(100,124,'a',0,NULL,NULL),(101,125,'a',0,NULL,NULL),(102,126,'a',0,NULL,NULL),(103,127,'s',0,NULL,NULL),(104,128,'r',1,NULL,NULL),(105,135,'r',1,NULL,NULL),(106,136,'r',1,NULL,NULL),(107,137,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,7),(3,3,5),(4,4,5),(5,6,14),(6,5,38),(7,7,12),(8,8,2),(9,9,38),(10,10,9),(11,11,13),(12,12,38),(13,13,6),(14,14,13),(15,15,36),(16,16,2),(17,17,13),(18,18,2),(19,19,40),(20,20,9),(21,21,34),(22,22,12),(23,23,2),(24,24,6),(25,25,2),(26,26,6),(27,27,1),(28,28,63),(29,29,64),(30,30,64),(31,31,64),(32,31,61),(33,31,57),(34,32,64),(35,32,57),(36,32,61),(37,33,63),(38,34,64),(39,35,56),(40,36,57),(41,36,64),(42,36,61),(43,37,56),(44,38,65),(45,39,62),(46,40,64),(47,41,71),(48,41,67),(49,41,79),(50,42,67),(51,43,79),(52,43,67),(53,43,71),(54,44,71),(55,45,67),(56,45,79),(57,45,71),(58,46,72),(59,47,71),(60,47,67),(61,47,79),(62,47,78),(63,48,67),(64,49,78),(65,49,79),(66,49,71),(67,49,67),(68,50,84),(69,51,71),(70,51,67),(71,51,79),(72,51,78),(73,52,67),(74,53,67),(75,54,67),(76,55,67),(77,56,67),(78,57,67),(79,57,71),(80,57,78),(81,57,79),(82,58,79),(83,58,78),(84,58,71),(85,58,67),(86,59,67),(87,60,67),(88,61,79),(89,61,67),(90,61,71),(91,62,79),(92,63,79),(93,64,71),(94,64,78),(95,64,79),(96,64,67),(97,65,79),(98,65,78),(99,65,67),(100,65,71),(101,66,67),(102,67,79),(103,68,79),(104,68,78),(105,68,71),(106,68,67),(107,69,67),(108,69,79),(109,69,71),(110,70,67);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,55,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(2,7,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(3,56,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(4,57,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(5,58,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(6,14,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(7,59,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(8,60,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(9,38,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(10,61,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(11,13,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(12,38,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(13,6,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(14,62,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(15,36,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(16,2,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',321,'a',NULL),(17,13,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(18,2,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',296,'a',NULL),(19,40,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(20,61,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(21,64,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(22,65,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(23,66,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(24,6,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(25,72,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(26,77,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(27,79,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(28,99,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(29,100,'<com.ju6.a: boolean b()>',178,'p',NULL),(30,101,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(31,102,'<com.mobclick.android.MobclickAgent: void c(android.content.Context,java.io.File)>',11,'a',NULL),(32,103,'<org.loon.framework.android.game.LGameAndroid2DActivity$10: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(33,104,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(34,76,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(35,106,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(36,107,'<org.loon.framework.android.game.LGameAndroid2DActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(37,108,'<com.mogo.chongwullk.begin$beginButtonListener: void onClick(android.view.View)>',37,'a',NULL),(38,78,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(39,109,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(40,76,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(41,129,'<com.baidu.as: void e(com.baidu.bl)>',23,'a',NULL),(42,130,'<com.ju6.mms.util.SqliteWrapper: android.database.Cursor query(android.content.Context,android.content.ContentResolver,android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>',7,'p',NULL),(43,131,'<com.guohead.sdk.adapters.CustomAdapter$4: void onClick(android.view.View)>',4,'a',NULL),(44,85,'<com.evilsunflower.reader.BookmarksActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(45,132,'<com.madhouse.android.ads._: com.madhouse.android.ads.m _(android.content.Context)>',11,'p',NULL),(46,133,'<com.evilsunflower.reader.control.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(47,92,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(48,134,'<com.evilsunflower.reader.ui.ZLAndroidActivity: void onCreate(android.os.Bundle)>',80,'s',NULL),(49,92,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(50,98,'<com.evilsunflower.reader.control.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(51,92,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(52,138,'<com.ju6.c: boolean b()>',192,'p',NULL),(53,138,'<com.ju6.c: void run()>',146,'p',NULL),(54,81,'<com.evilsunflower.reader.FBReader: void onNewIntent(android.content.Intent)>',17,'a',NULL),(55,138,'<com.ju6.c: boolean b()>',195,'p',0),(56,130,'<com.ju6.mms.util.SqliteWrapper: int update(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',6,'p',NULL),(57,139,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(58,92,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(59,140,'<com.ju6.mms.pdu.PduPersister: void a(com.ju6.mms.pdu.PduPart,android.net.Uri,java.lang.String)>',23,'p',0),(60,130,'<com.ju6.mms.util.SqliteWrapper: android.net.Uri insert(android.content.Context,android.content.ContentResolver,android.net.Uri,android.content.ContentValues)>',4,'p',NULL),(61,141,'<com.baidu.al: void onClick(android.view.View)>',24,'a',NULL),(62,142,'<com.evilsunflower.reader.ui.BugReportActivity$1: void onClick(android.view.View)>',21,'a',NULL),(63,143,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(64,92,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(65,92,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(66,81,'<com.evilsunflower.reader.FBReader: void onStart()>',14,'a',NULL),(67,144,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(68,92,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(69,145,'<com.guohead.sdk.adapters.CustomAdapter$3: void onClick(android.view.View)>',4,'a',NULL),(70,138,'<com.ju6.c: boolean b()>',272,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,6),(2,3,7),(3,4,1),(4,6,1),(5,7,1),(6,8,1),(7,9,7),(8,21,1),(9,22,1),(10,23,8),(11,25,6),(12,28,1),(13,30,8),(14,31,1),(15,34,7),(16,35,1),(17,37,1),(18,40,6),(19,41,1),(20,42,1),(21,44,1),(22,45,1),(23,46,1),(24,47,1),(25,48,6),(26,50,7),(27,54,11),(28,57,6),(29,60,6),(30,63,1),(31,64,1),(32,65,6),(33,69,6),(34,71,15),(35,73,6),(36,74,16),(37,75,17),(38,76,17),(39,77,17),(40,78,17),(41,79,17),(42,80,17),(43,81,17),(44,82,17),(45,83,6),(46,84,6),(47,86,6),(48,87,6),(49,88,6),(50,89,6),(51,90,6),(52,91,6),(53,92,6),(54,93,6),(55,94,6),(56,95,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,4,1),(2,6,3),(3,7,3),(4,8,1),(5,21,3),(6,22,1),(7,23,4),(8,25,4),(9,28,1),(10,30,4),(11,31,3),(12,35,1),(13,37,3),(14,41,3),(15,42,1),(16,44,1),(17,45,3),(18,46,1),(19,47,3),(20,63,1),(21,64,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/google/update/UpdateService'),(2,5,'com/google/update/UpdateService'),(3,12,'com/ps/square/eloscomplex/ElosComplex'),(4,11,'com/google/ssearch/Dialog'),(5,10,'com/waps/OffersWebView'),(6,13,'com/google/ssearch/Dialog'),(7,15,'com/google/update/Dialog'),(8,14,'com/waps/OffersWebView'),(9,17,'com/google/update/Dialog'),(10,16,'com/google/ssearch/Dialog'),(11,18,'com/google/update/Dialog'),(12,19,'com/google/ssearch/Dialog'),(13,20,'com/google/update/Dialog'),(14,24,'(.*)'),(15,26,'com/google/update/Dialog'),(16,29,'com/google/update/Dialog'),(17,32,'com/google/ssearch/SearchService'),(18,33,'com/ps/square/elos/Elos'),(19,36,'NULL-CONSTANT'),(20,38,'com/google/update/Dialog'),(21,39,'com/google/update/Dialog'),(22,43,'com/waps/OffersWebView'),(23,51,'com/google/update/Dialog'),(24,52,'com/google/update/Dialog'),(25,53,'com/waps/OffersWebView'),(26,55,'com/mogo/chongwullk/Main'),(27,56,'com/google/update/UpdateService'),(28,58,'com/google/update/Dialog'),(29,59,'com/google/update/Dialog'),(30,62,'com/evilsunflower/reader/BookmarkEditActivity'),(31,66,'com/evilsunflower/reader/control/UpdateService'),(32,67,'com/millennialmedia/android/MMAdViewOverlayActivity'),(33,68,'com/evilsunflower/reader/control/UpdateService'),(34,70,'com.evilsunflower.reader.FBReader'),(35,72,'com/millennialmedia/android/MMAdViewOverlayActivity'),(36,73,'com.android.browser.BrowserActivity'),(37,85,'com.evilsunflower.reader.FBReader');
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
INSERT INTO `IData` VALUES (1,1,1),(2,23,2),(3,25,3),(4,30,4),(5,40,5),(6,48,7),(7,57,8),(8,60,9),(9,65,13),(10,67,14),(11,69,15),(12,72,19),(13,73,23),(14,83,24),(15,84,25),(16,86,26),(17,87,27),(18,88,28),(19,89,29),(20,90,30),(21,91,31),(22,92,32),(23,93,33),(24,94,34),(25,95,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,10,'Notify_Url_Params'),(2,10,'UrlPath'),(3,11,'MSG'),(4,10,'ACTIVITY_FLAG'),(5,11,'TYPEdsada'),(6,10,'isFinshClose'),(7,10,'offers_webview_tag'),(8,13,'TYPEdsada'),(9,14,'UrlPath'),(10,14,'ACTIVITY_FLAG'),(11,15,'TYPEdsada'),(12,14,'isFinshClose'),(13,14,'offers_webview_tag'),(14,17,'MSG'),(15,16,'MSG'),(16,17,'TYPEdsada'),(17,16,'TYPEdsada'),(18,18,'TYPEdsada'),(19,19,'TYPEdsada'),(20,20,'MSG'),(21,20,'TYPEdsada'),(22,26,'TYPEdsada'),(23,29,'MSG'),(24,29,'TYPEdsada'),(25,38,'TYPEdsada'),(26,39,'MSG'),(27,39,'TYPEdsada'),(28,43,'USER_ID'),(29,43,'CLIENT_PACKAGE'),(30,43,'Offers_URL'),(31,43,'offers_webview_tag'),(32,43,'URL_PARAMS'),(33,51,'TYPEdsada'),(34,52,'MSG'),(35,52,'TYPEdsada'),(36,53,'USER_ID'),(37,53,'CLIENT_PACKAGE'),(38,53,'Offers_URL'),(39,53,'URL_PARAMS'),(40,58,'TYPEdsada'),(41,59,'MSG'),(42,59,'TYPEdsada'),(43,67,'cachedAdView'),(44,71,'command'),(45,72,'cachedAdView'),(46,74,'android.intent.extra.TEXT'),(47,74,'android.intent.extra.SUBJECT'),(48,74,'android.intent.extra.EMAIL'),(49,75,'android.intent.extra.INTENT'),(50,76,'android.intent.extra.INTENT'),(51,77,'android.intent.extra.TITLE'),(52,77,'android.intent.extra.INTENT'),(53,78,'android.intent.extra.INTENT'),(54,79,'android.intent.extra.TITLE'),(55,79,'android.intent.extra.INTENT'),(56,80,'android.intent.extra.INTENT'),(57,81,'android.intent.extra.TITLE'),(58,81,'android.intent.extra.INTENT'),(59,82,'android.intent.extra.TITLE'),(60,82,'android.intent.extra.INTENT');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,5),(7,5,5),(8,6,4),(9,6,3),(10,6,2),(11,7,1),(12,8,1),(13,9,4),(14,9,2),(15,9,3),(16,10,3),(17,10,4),(18,10,2),(19,11,9),(20,12,1),(21,13,4),(22,13,3),(23,13,2),(24,14,1),(25,15,10),(26,16,10),(27,17,4),(28,17,2),(29,17,3),(30,18,9),(31,19,1),(32,20,10),(33,21,10),(34,22,3),(35,22,4),(36,22,2),(37,23,12),(38,24,12),(39,25,12),(40,26,12),(41,27,14),(42,27,13);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,2),(4,5,2),(5,7,1),(6,8,1),(7,12,1),(8,14,1),(9,19,1);
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
INSERT INTO `IFData` VALUES (1,11,'package',NULL,NULL,NULL,NULL,NULL),(2,18,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,1,'application','vnd.android.package-archive'),(2,30,'(.*)','(.*)'),(3,40,'application','vnd.android.package-archive'),(4,48,'application','vnd.android.package-archive'),(5,57,'application','vnd.android.package-archive'),(6,60,'application','vnd.android.package-archive'),(7,74,'message','rfc822'),(8,86,'application','vnd.android.package-archive'),(9,87,'application','vnd.android.package-archive'),(10,88,'application','vnd.android.package-archive'),(11,89,'application','vnd.android.package-archive'),(12,90,'application','vnd.android.package-archive'),(13,91,'application','vnd.android.package-archive'),(14,92,'application','vnd.android.package-archive'),(15,93,'application','vnd.android.package-archive'),(16,94,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'guesspants.com.game'),(2,4,'com.noshufou.android.su'),(3,5,'com.ps.square'),(4,6,'com.mogo.five'),(5,7,'com.noshufou.android.su'),(6,8,'com.mogo.five'),(7,12,'com.ps.square'),(8,11,'com.mogo.five'),(9,10,'guesspants.com.game'),(10,13,'com.mogo.five'),(11,15,'com.ps.square'),(12,14,'guesspants.com.game'),(13,17,'com.ps.square'),(14,16,'com.mogo.five'),(15,18,'guesspants.com.game'),(16,19,'com.mogo.five'),(17,20,'guesspants.com.game'),(18,21,'com.ps.square'),(19,22,'com.ps.square'),(20,24,'(.*)'),(21,26,'com.ps.square'),(22,28,'(.*)'),(23,29,'com.ps.square'),(24,31,'(.*)'),(25,32,'com.mogo.five'),(26,33,'com.ps.square'),(27,35,'com.noshufou.android.su'),(28,36,'NULL-CONSTANT'),(29,37,'com.noshufou.android.su'),(30,38,'guesspants.com.game'),(31,39,'guesspants.com.game'),(32,41,'guesspants.com.game'),(33,42,'guesspants.com.game'),(34,43,'guesspants.com.game'),(35,44,'com.noshufou.android.su'),(36,45,'com.noshufou.android.su'),(37,46,'com.mogo.chongwullk'),(38,47,'com.mogo.chongwullk'),(39,51,'com.mogo.chongwullk'),(40,52,'com.mogo.chongwullk'),(41,53,'com.mogo.chongwullk'),(42,55,'com.mogo.chongwullk'),(43,56,'com.mogo.chongwullk'),(44,58,'com.mogo.chongwullk'),(45,59,'com.mogo.chongwullk'),(46,62,'com.evilsunflower.reader.evilZenyang16'),(47,63,'com.noshufou.android.su'),(48,64,'com.noshufou.android.su'),(49,66,'com.evilsunflower.reader.evilZenyang16'),(50,67,'com.evilsunflower.reader.evilZenyang16'),(51,68,'com.evilsunflower.reader.evilZenyang16'),(52,70,'com.evilsunflower.reader.evilZenyang16'),(53,72,'com.evilsunflower.reader.evilZenyang16'),(54,73,'com.android.browser'),(55,85,'com.evilsunflower.reader.evilZenyang16');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,9,0),(4,10,0),(5,11,0),(6,14,0),(7,15,0),(8,30,0),(9,40,0),(10,54,0),(11,55,0),(12,56,0),(13,65,0),(14,67,0),(15,67,0),(16,71,0),(17,84,0),(18,85,0),(19,87,0),(20,87,0),(21,91,0),(22,104,0),(23,105,0),(24,84,0),(25,106,0),(26,107,0),(27,107,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,1,0),(4,4,1,0),(5,6,0,0),(6,5,1,0),(7,4,1,0),(8,5,1,0),(9,7,1,0),(10,8,0,0),(11,9,0,0),(12,10,0,0),(13,9,0,0),(14,8,0,0),(15,11,0,0),(16,12,0,0),(17,11,0,0),(18,13,0,0),(19,12,0,0),(20,13,0,0),(21,14,1,0),(22,14,1,0),(23,15,1,0),(24,16,0,0),(25,15,1,0),(26,17,0,0),(27,18,1,0),(28,18,1,0),(29,17,0,0),(30,15,1,0),(31,18,1,0),(32,19,0,0),(33,20,0,0),(34,21,1,0),(35,22,1,0),(36,23,0,0),(37,22,1,0),(38,24,0,0),(39,24,0,0),(40,25,1,0),(41,26,1,0),(42,26,1,0),(43,27,0,0),(44,28,1,0),(45,28,1,0),(46,30,1,0),(47,30,1,0),(48,31,1,0),(49,32,1,0),(50,33,1,0),(51,34,0,0),(52,34,0,0),(53,35,0,0),(54,36,1,0),(55,37,0,0),(56,38,0,0),(57,39,1,0),(58,40,0,0),(59,40,0,0),(60,41,1,0),(61,43,1,0),(62,44,0,0),(63,46,1,0),(64,46,1,0),(65,47,1,0),(66,48,0,0),(67,49,0,0),(68,50,0,0),(69,51,1,0),(70,54,0,0),(71,57,1,0),(72,58,0,0),(73,61,0,0),(74,62,1,0),(75,63,1,0),(76,63,1,0),(77,63,1,0),(78,63,1,0),(79,63,1,0),(80,63,1,0),(81,63,1,0),(82,63,1,0),(83,64,1,0),(84,65,1,0),(85,66,0,0),(86,67,1,0),(87,67,1,0),(88,67,1,0),(89,67,1,0),(90,67,1,0),(91,67,1,0),(92,67,1,0),(93,67,1,0),(94,67,1,0),(95,68,1,0),(96,69,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,70,67,2,NULL),(2,85,67,2,NULL),(3,27,67,2,NULL),(4,28,67,2,NULL),(5,31,67,2,NULL),(6,23,67,2,NULL),(7,25,67,2,NULL),(8,65,67,2,NULL),(9,69,67,2,NULL),(10,83,67,2,NULL),(11,84,67,2,NULL),(12,95,67,2,NULL),(13,62,73,2,NULL),(14,27,71,2,NULL),(15,28,71,2,NULL),(16,31,71,2,NULL),(17,23,71,2,NULL),(18,25,71,2,NULL),(19,65,71,2,NULL),(20,69,71,2,NULL),(21,83,71,2,NULL),(22,84,71,2,NULL),(23,95,71,2,NULL),(24,67,77,2,NULL),(25,67,97,2,NULL),(26,72,77,2,NULL),(27,72,97,2,NULL),(28,65,1,2,NULL),(29,69,1,2,NULL),(30,83,1,2,NULL),(31,84,1,2,NULL),(32,95,1,2,NULL),(33,65,7,2,NULL),(34,69,7,2,NULL),(35,83,7,2,NULL),(36,84,7,2,NULL),(37,95,7,2,NULL),(38,65,9,2,NULL),(39,69,9,2,NULL),(40,83,9,2,NULL),(41,84,9,2,NULL),(42,95,9,2,NULL),(43,65,10,2,NULL),(44,69,10,2,NULL),(45,83,10,2,NULL),(46,84,10,2,NULL),(47,95,10,2,NULL),(48,65,11,2,NULL),(49,69,11,2,NULL),(50,83,11,2,NULL),(51,84,11,2,NULL),(52,95,11,2,NULL),(53,65,14,2,NULL),(54,69,14,2,NULL),(55,83,14,2,NULL),(56,84,14,2,NULL),(57,95,14,2,NULL),(58,65,15,2,NULL),(59,69,15,2,NULL),(60,83,15,2,NULL),(61,84,15,2,NULL),(62,95,15,2,NULL),(63,65,54,2,NULL),(64,69,54,2,NULL),(65,83,54,2,NULL),(66,84,54,2,NULL),(67,95,54,2,NULL),(68,65,30,2,NULL),(69,69,30,2,NULL),(70,83,30,2,NULL),(71,84,30,2,NULL),(72,95,30,2,NULL),(73,65,40,2,NULL),(74,69,40,2,NULL),(75,83,40,2,NULL),(76,84,40,2,NULL),(77,95,40,2,NULL),(78,65,56,2,NULL),(79,69,56,2,NULL),(80,83,56,2,NULL),(81,84,56,2,NULL),(82,95,56,2,NULL),(83,65,65,2,NULL),(84,69,65,2,NULL),(85,83,65,2,NULL),(86,84,65,2,NULL),(87,95,65,2,NULL),(88,65,84,2,NULL),(89,69,84,2,NULL),(90,83,84,2,NULL),(91,84,84,2,NULL),(92,95,84,2,NULL),(93,65,105,2,NULL),(94,69,105,2,NULL),(95,83,105,2,NULL),(96,84,105,2,NULL),(97,95,105,2,NULL),(98,65,106,2,NULL),(99,69,106,2,NULL),(100,83,106,2,NULL),(101,84,106,2,NULL),(102,95,106,2,NULL),(103,65,107,2,NULL),(104,69,107,2,NULL),(105,83,107,2,NULL),(106,84,107,2,NULL),(107,95,107,2,NULL),(108,65,87,2,NULL),(109,69,87,2,NULL),(110,83,87,2,NULL),(111,84,87,2,NULL),(112,95,87,2,NULL),(113,65,91,2,NULL),(114,69,91,2,NULL),(115,83,91,2,NULL),(116,84,91,2,NULL),(117,95,91,2,NULL),(118,65,104,2,NULL),(119,69,104,2,NULL),(120,83,104,2,NULL),(121,84,104,2,NULL),(122,95,104,2,NULL),(123,68,83,2,NULL),(124,27,84,2,NULL),(125,28,84,2,NULL),(126,31,84,2,NULL),(127,23,84,2,NULL),(128,25,84,2,NULL),(129,27,105,2,NULL),(130,28,105,2,NULL),(131,31,105,2,NULL),(132,23,105,2,NULL),(133,25,105,2,NULL),(134,27,106,2,NULL),(135,28,106,2,NULL),(136,31,106,2,NULL),(137,23,106,2,NULL),(138,25,106,2,NULL),(139,27,107,2,NULL),(140,28,107,2,NULL),(141,31,107,2,NULL),(142,23,107,2,NULL),(143,25,107,2,NULL),(144,27,56,2,NULL),(145,28,56,2,NULL),(146,31,56,2,NULL),(147,23,56,2,NULL),(148,25,56,2,NULL),(149,51,5,2,NULL),(150,51,12,2,NULL),(151,51,51,2,NULL),(152,51,63,2,NULL),(153,52,5,2,NULL),(154,52,12,2,NULL),(155,52,51,2,NULL),(156,52,63,2,NULL),(157,58,5,2,NULL),(158,58,12,2,NULL),(159,58,51,2,NULL),(160,58,63,2,NULL),(161,59,5,2,NULL),(162,59,12,2,NULL),(163,59,51,2,NULL),(164,59,63,2,NULL),(165,56,6,2,NULL),(166,56,13,2,NULL),(167,56,53,2,NULL),(168,56,64,2,NULL),(169,27,65,2,NULL),(170,28,65,2,NULL),(171,31,65,2,NULL),(172,23,65,2,NULL),(173,27,1,2,NULL),(174,25,65,2,NULL),(175,28,1,2,NULL),(176,31,1,2,NULL),(177,23,1,2,NULL),(178,25,1,2,NULL),(179,27,7,2,NULL),(180,28,7,2,NULL),(181,31,7,2,NULL),(182,27,9,2,NULL),(183,28,9,2,NULL),(184,31,9,2,NULL),(185,27,10,2,NULL),(186,28,10,2,NULL),(187,31,10,2,NULL),(188,27,11,2,NULL),(189,28,11,2,NULL),(190,31,11,2,NULL),(191,27,14,2,NULL),(192,28,14,2,NULL),(193,31,14,2,NULL),(194,27,15,2,NULL),(195,28,15,2,NULL),(196,31,15,2,NULL),(197,27,54,2,NULL),(198,28,54,2,NULL),(199,31,54,2,NULL),(200,27,30,2,NULL),(201,28,30,2,NULL),(202,31,30,2,NULL),(203,27,40,2,NULL),(204,28,40,2,NULL),(205,31,40,2,NULL),(206,27,87,2,NULL),(207,28,87,2,NULL),(208,31,87,2,NULL),(209,27,91,2,NULL),(210,28,91,2,NULL),(211,31,91,2,NULL),(212,27,104,2,NULL),(213,28,104,2,NULL),(214,31,104,2,NULL),(215,18,5,2,NULL),(216,18,12,2,NULL),(217,18,51,2,NULL),(218,18,63,2,NULL),(219,20,5,2,NULL),(220,20,12,2,NULL),(221,20,51,2,NULL),(222,20,63,2,NULL),(223,38,5,2,NULL),(224,38,12,2,NULL),(225,38,51,2,NULL),(226,38,63,2,NULL),(227,39,5,2,NULL),(228,39,12,2,NULL),(229,39,51,2,NULL),(230,39,63,2,NULL),(231,2,6,2,NULL),(232,2,13,2,NULL),(233,2,53,2,NULL),(234,2,64,2,NULL),(235,23,7,2,NULL),(236,25,7,2,NULL),(237,23,30,2,NULL),(238,25,30,2,NULL),(239,23,9,2,NULL),(240,25,9,2,NULL),(241,23,10,2,NULL),(242,25,10,2,NULL),(243,23,11,2,NULL),(244,25,11,2,NULL),(245,23,14,2,NULL),(246,25,14,2,NULL),(247,23,15,2,NULL),(248,25,15,2,NULL),(249,23,54,2,NULL),(250,25,54,2,NULL),(251,23,40,2,NULL),(252,25,40,2,NULL),(253,23,87,2,NULL),(254,25,87,2,NULL),(255,23,91,2,NULL),(256,25,91,2,NULL),(257,23,104,2,NULL),(258,25,104,2,NULL),(259,11,34,2,NULL),(260,13,34,2,NULL),(261,16,34,2,NULL),(262,19,34,2,NULL),(263,32,38,2,NULL),(264,15,5,2,NULL),(265,15,12,2,NULL),(266,15,51,2,NULL),(267,15,63,2,NULL),(268,17,5,2,NULL),(269,17,12,2,NULL),(270,17,51,2,NULL),(271,17,63,2,NULL),(272,26,5,2,NULL),(273,26,12,2,NULL),(274,26,51,2,NULL),(275,26,63,2,NULL),(276,29,5,2,NULL),(277,29,12,2,NULL),(278,29,51,2,NULL),(279,29,63,2,NULL),(280,5,6,2,NULL),(281,5,13,2,NULL),(282,5,53,2,NULL),(283,5,64,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(8,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(10,'android.permission.CALL_PHONE'),(11,'android.permission.CALL_PRIVILEGED'),(20,'android.permission.CHANGE_CONFIGURATION'),(6,'android.permission.CHANGE_WIFI_STATE'),(3,'android.permission.GET_TASKS'),(14,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(13,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(19,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(12,'android.permission.RESTART_PACKAGES'),(9,'android.permission.VIBRATE'),(21,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(18,'android.permission.WRITE_SMS'),(22,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'content://mms/',NULL,NULL,NULL),(11,NULL,NULL,'content://mms-sms/threadID',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(17,NULL,NULL,'content://mms/',NULL,NULL,NULL),(18,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://mms/(.*)/part',NULL,NULL,NULL),(21,NULL,NULL,'content://mms/inbox',NULL,NULL,NULL),(22,NULL,NULL,'content://mms/(.*)/addr',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,29,6),(2,42,10),(3,42,11),(4,45,12),(5,52,16),(6,53,17),(7,56,18),(8,60,20),(9,60,21),(10,60,22),(11,70,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,2),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,2,8),(16,3,1),(17,3,2),(18,3,4),(19,3,5),(20,3,6),(21,3,7),(22,3,8),(23,3,9),(24,3,10),(25,3,11),(26,3,12),(27,4,17),(28,4,16),(29,4,1),(30,4,4),(31,4,5),(32,4,6),(33,4,7),(34,4,8),(35,4,13),(36,4,14),(37,4,15),(38,5,1),(39,5,4),(40,5,5),(41,5,6),(42,5,7),(43,5,8),(44,5,13),(45,5,14),(46,5,15),(47,5,17),(48,5,16),(49,5,19),(50,5,18),(51,5,20),(52,6,17),(53,6,1),(54,6,19),(55,6,18),(56,6,21),(57,6,4),(58,6,5),(59,6,22),(60,6,7),(61,6,8),(62,6,15),(63,7,17),(64,7,1),(65,7,19),(66,7,18),(67,7,21),(68,7,4),(69,7,5),(70,7,22),(71,7,7),(72,7,8),(73,7,15);
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

-- Dump completed on 2015-10-12  3:29:35
