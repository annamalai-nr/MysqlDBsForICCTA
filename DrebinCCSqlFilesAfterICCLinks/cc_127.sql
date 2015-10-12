-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_127
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
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(8,'SQUARE'),(11,'Speedup.intent.action.refreshservice'),(15,'Speedup.intent.action.temp'),(7,'Speedup.intent.action.updatewidget'),(2,'android.appwidget.action.APPWIDGET_CONFIGURE'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(12,'android.intent.action.BATTERY_CHANGED'),(5,'android.intent.action.BATTERY_CHANGED_ACTION'),(4,'android.intent.action.BOOT_COMPLETED'),(18,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(16,'android.intent.action.PACKAGE_ADDED'),(13,'android.intent.action.SCREEN_OFF'),(14,'android.intent.action.SCREEN_ON'),(3,'android.intent.action.SIG_STR'),(9,'android.intent.action.VIEW'),(10,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.phonespeedup',14),(2,'com.ps.kickmouse',5),(3,'com.ps.square',15),(4,'com.alan.siwameinv4',1),(5,'com.mogo.gongfupuzzle',4),(6,'com.gp.DropBubble',4),(7,'com.alan.message',20);
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.phonespeedup.IntroActivity'),(2,1,'com.tutusw.phonespeedup.InfoActivity'),(3,1,'com.google.ssearch.Dialog'),(4,1,'com.tutusw.phonespeedup.Home'),(5,1,'com.tutusw.phonespeedup.PerflockActivity'),(6,1,'com.tutusw.phonespeedup.ProfilesActivity'),(7,1,'com.tutusw.phonespeedup.ProfileEditActivity'),(8,1,'com.tutusw.phonespeedup.AdvancedActivity'),(9,1,'com.tutusw.phonespeedup.AboutActivity'),(10,1,'com.tutusw.phonespeedup.StresstestActivity'),(11,1,'com.tutusw.phonespeedup.Setcpu'),(12,1,'com.tutusw.phonespeedup.WidgetConfigActivity'),(13,1,'com.google.ssearch.SearchService'),(14,1,'com.tutusw.phonespeedup.StartupService'),(15,1,'com.tutusw.phonespeedup.ProfilesService'),(16,1,'com.tutusw.phonespeedup.WidgetService'),(17,1,'com.google.ssearch.Receiver'),(18,1,'com.tutusw.phonespeedup.StartupReceiver'),(19,1,'com.tutusw.phonespeedup.Widget'),(20,2,'com.ps.kickmouse.WhacAMouse'),(21,2,'com.ps.kickmouse.Game'),(22,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(23,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(24,2,'com.google.update.Dialog'),(25,3,'com.ps.square.Square'),(26,2,'com.waps.OffersWebView'),(27,2,'com.ps.kickmouse.DemoApp'),(28,3,'com.ps.square.elos.Elos'),(29,2,'com.google.update.UpdateService'),(30,2,'com.google.update.Receiver'),(31,3,'com.ps.square.eloscomplex.ElosComplex'),(32,3,'com.google.update.Dialog'),(33,3,'com.google.update.UpdateService'),(34,3,'com.google.update.Receiver'),(35,4,'com.alan.siwameinv4.PaperCollection'),(36,4,'com.alan.siwameinv4.PictureGrid'),(37,4,'com.google.ads.AdActivity'),(38,4,'com.vpon.adon.android.WebInApp'),(39,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(40,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(41,4,'com.waps.OffersWebView'),(42,4,'com.google.update.Dialog'),(43,5,'com.mogo.gongfupuzzle.begin'),(44,4,'com.google.update.UpdateService'),(45,4,'com.google.update.Receiver'),(46,5,'com.mogo.gongfupuzzle.Main'),(47,5,'com.google.ads.AdActivity'),(48,6,'com.gp.DropBubble.Menu'),(49,5,'com.vpon.adon.android.WebInApp'),(50,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(51,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(52,6,'com.gp.DropBubble.DropBubble'),(53,5,'com.waps.OffersWebView'),(54,6,'com.gp.DropBubble.Help'),(55,5,'com.google.update.Dialog'),(56,6,'com.gp.DropBubble.GameOver'),(57,5,'com.google.update.UpdateService'),(58,6,'cn.domob.android.ads.DomobActivity'),(59,5,'com.google.update.Receiver'),(60,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(61,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(62,2,'com.waps.o'),(63,2,'com.waps.k'),(64,3,'com.google.update.UpdateService$AA'),(65,2,'com.waps.AppConnect'),(66,3,'com.google.update.Dialog$2'),(67,3,'com.ps.square.Square$ItemClickListener'),(68,1,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(69,1,'com.tutusw.phonespeedup.Home$clicker'),(70,2,'com.google.update.Dialog$1'),(71,3,'com.google.update.Dialog$1'),(72,1,'com.tutusw.phonespeedup.WidgetService$1'),(73,1,'com.tutusw.phonespeedup.ProfilesService$1'),(74,2,'com.waps.m'),(75,1,'android.appwidget.AppWidgetProvider'),(76,2,'com.google.update.Dialog$2'),(77,2,'com.ju6.a'),(78,4,'com.waps.k'),(79,4,'com.google.update.Dialog$1'),(80,2,'com.google.update.UpdateService$MyThread'),(81,5,'com.waps.m'),(82,1,'com.google.ssearch.SearchService$MyThread'),(83,5,'com.waps.AppConnect'),(84,2,'com.ps.kickmouse.WhacAMouse$2'),(85,4,'com.google.update.UpdateService$MyThread'),(86,1,'com.google.ssearch.Dialog$1'),(87,4,'com.waps.AppConnect'),(88,5,'com.google.update.UpdateService$MyThread'),(89,7,'com.alan.message.SmsMessage'),(90,7,'com.alan.message.MessageList'),(91,7,'com.alan.message.EditMessage'),(92,7,'com.alan.message.AddMessage'),(93,7,'com.alan.message.InputMessage'),(94,7,'com.alan.message.Setting'),(95,7,'com.alan.message.Help'),(96,5,'com.google.update.Dialog$2'),(97,7,'com.google.ads.AdActivity'),(98,4,'com.waps.m'),(99,7,'com.vpon.adon.android.WebInApp'),(100,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(101,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(102,4,'com.ju6.a'),(103,7,'com.waps.OffersWebView'),(104,7,'com.google.update.Dialog'),(105,7,'com.google.update.UpdateService'),(106,7,'com.google.update.Receiver'),(107,4,'com.google.update.Dialog$2'),(108,5,'com.mogo.gongfupuzzle.begin$beginButtonListener'),(109,5,'com.ju6.a'),(110,5,'com.waps.k'),(111,5,'com.google.update.Dialog$1'),(112,6,'cn.domob.android.ads.e'),(113,6,'cn.domob.android.ads.o$5'),(114,6,'cn.domob.android.ads.o'),(115,6,'cn.domob.android.a.a$a'),(116,6,'cn.domob.android.ads.g$1'),(117,6,'cn.domob.android.ads.DomobAdManager'),(118,7,'com.waps.k'),(119,7,'com.google.update.Dialog$1'),(120,7,'com.google.update.UpdateService$MyThread'),(121,7,'com.waps.AppConnect'),(122,7,'com.ju6.a'),(123,7,'com.google.update.Dialog$2'),(124,7,'com.alan.message.Setting$1'),(125,7,'com.waps.m');
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
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,21,'Progrees'),(2,26,'USER_ID'),(3,26,'CLIENT_PACKAGE'),(4,21,'MouseGame'),(5,22,'shouldResizeOverlay'),(6,24,'TYPEdsada'),(7,32,'TYPEdsada'),(8,22,'shouldEnableBottomBar'),(9,20,'WAPS_ID'),(10,29,'WAPS_ID'),(11,22,'WAPS_ID'),(12,27,'WAPS_ID'),(13,33,'ST_START_DELAY'),(14,22,'shouldMakeOverlayTransparent'),(15,20,'CLIENT_PACKAGE'),(16,29,'CLIENT_PACKAGE'),(17,22,'CLIENT_PACKAGE'),(18,27,'CLIENT_PACKAGE'),(19,32,'MSG'),(20,23,'url'),(21,23,'overlayTitle'),(22,23,'shouldEnableBottomBar'),(23,23,'shouldShowBottomBar'),(24,29,'ST_START_DELAY'),(25,7,'row_id'),(26,22,'overlayTransition'),(27,23,'transitionTime'),(28,26,'URL'),(29,33,'ST_MY_PID'),(30,23,'shouldResizeOverlay'),(31,26,'Offers_URL'),(32,23,'shouldMakeOverlayTransparent'),(33,21,'HP'),(34,23,'overlayTransition'),(35,23,'shouldShowTitlebar'),(36,22,'shouldShowTitlebar'),(37,22,'overlayTitle'),(38,22,'url'),(39,22,'transitionTime'),(40,24,'MSG'),(41,29,'ST_MY_PID'),(42,21,'restart'),(43,26,'URL_PARAMS'),(44,37,'action'),(45,41,'Offers_URL'),(46,40,'shouldEnableBottomBar'),(47,40,'shouldShowBottomBar'),(48,26,'isFinshClose'),(49,22,'shouldShowBottomBar'),(50,39,'Adwo_PID'),(51,44,'ST_MY_PID'),(52,38,'url'),(53,41,'USER_ID'),(54,3,'MSG'),(55,53,'isFinshClose'),(56,36,'DEVICE_ID'),(57,38,'adWidth'),(58,37,'params'),(59,12,'appWidgetId'),(60,37,'com.google.ads.AdOpener'),(61,20,'WAPS_PID'),(62,50,'Adwo_PID'),(63,42,'TYPEdsada'),(64,29,'WAPS_PID'),(65,55,'MSG'),(66,22,'WAPS_PID'),(67,41,'URL'),(68,51,'shouldResizeOverlay'),(69,27,'WAPS_PID'),(70,40,'url'),(71,53,'USER_ID'),(72,49,'adWidth'),(73,51,'url'),(74,43,'WAPS_PID'),(75,40,'shouldShowTitlebar'),(76,41,'URL_PARAMS'),(77,20,'APP_ID'),(78,29,'APP_ID'),(79,53,'CLIENT_PACKAGE'),(80,22,'APP_ID'),(81,43,'DEVICE_ID'),(82,27,'APP_ID'),(83,43,'APP_ID'),(84,20,'DEVICE_ID'),(85,57,'ST_START_DELAY'),(86,29,'DEVICE_ID'),(87,51,'shouldMakeOverlayTransparent'),(88,22,'DEVICE_ID'),(89,36,'WAPS_PID'),(90,51,'overlayTransition'),(91,36,'CLIENT_PACKAGE'),(92,27,'DEVICE_ID'),(93,53,'Offers_URL'),(94,40,'overlayTitle'),(95,53,'URL'),(96,57,'ST_MY_PID'),(97,51,'shouldShowTitlebar'),(98,40,'transitionTime'),(99,39,'isTestMode'),(100,36,'WAPS_ID'),(101,51,'overlayTitle'),(102,47,'params'),(103,53,'URL_PARAMS'),(104,47,'action'),(105,43,'WAPS_ID'),(106,41,'CLIENT_PACKAGE'),(107,40,'overlayTransition'),(108,40,'shouldResizeOverlay'),(109,36,'APP_ID'),(110,42,'MSG'),(111,40,'shouldMakeOverlayTransparent'),(112,44,'ST_START_DELAY'),(113,51,'shouldShowBottomBar'),(114,51,'shouldEnableBottomBar'),(115,41,'isFinshClose'),(116,3,'TYPEdsada'),(117,43,'CLIENT_PACKAGE'),(118,47,'com.google.ads.AdOpener'),(119,49,'url'),(120,50,'isTestMode'),(121,55,'TYPEdsada'),(122,51,'transitionTime'),(123,60,'shouldShowBottomBar'),(124,60,'transitionTime'),(125,60,'shouldMakeOverlayTransparent'),(126,61,'FSAd'),(127,48,'DOMOB_ALLOW_LOCATION'),(128,61,'DOMOB_ALLOW_LOCATION'),(129,56,'DOMOB_ALLOW_LOCATION'),(130,52,'DOMOB_ALLOW_LOCATION'),(131,60,'DOMOB_ALLOW_LOCATION'),(132,60,'shouldShowTitlebar'),(133,48,'DOMOB_TEST_MODE'),(134,61,'DOMOB_TEST_MODE'),(135,56,'DOMOB_TEST_MODE'),(136,52,'DOMOB_TEST_MODE'),(137,60,'DOMOB_TEST_MODE'),(138,61,'shouldMakeOverlayTransparent'),(139,60,'url'),(140,61,'transitionTime'),(141,60,'overlayTransition'),(142,61,'overlayTransition'),(143,61,'shouldResizeOverlay'),(144,61,'shouldEnableBottomBar'),(145,61,'shouldShowBottomBar'),(146,58,'appName'),(147,58,'appId'),(148,60,'overlayTitle'),(149,61,'overlayTitle'),(150,61,'shouldShowTitlebar'),(151,48,'DOMOB_PID'),(152,61,'DOMOB_PID'),(153,56,'DOMOB_PID'),(154,52,'DOMOB_PID'),(155,60,'DOMOB_PID'),(156,58,'actType'),(157,60,'shouldResizeOverlay'),(158,60,'shouldEnableBottomBar'),(159,71,'DEVICE_ID'),(160,68,'DEVICE_ID'),(161,70,'DEVICE_ID'),(162,69,'DEVICE_ID'),(163,74,'DEVICE_ID'),(164,72,'DEVICE_ID'),(165,80,'Offers_URL'),(166,71,'APP_ID'),(167,68,'APP_ID'),(168,70,'APP_ID'),(169,69,'APP_ID'),(170,74,'APP_ID'),(171,72,'APP_ID'),(172,80,'USER_ID'),(173,80,'URL'),(174,75,'params'),(175,78,'Adwo_PID'),(176,82,'ST_MY_PID'),(177,80,'URL_PARAMS'),(178,71,'CLIENT_PACKAGE'),(179,68,'CLIENT_PACKAGE'),(180,70,'CLIENT_PACKAGE'),(181,69,'CLIENT_PACKAGE'),(182,74,'CLIENT_PACKAGE'),(183,72,'CLIENT_PACKAGE'),(184,79,'overlayTitle'),(185,79,'shouldEnableBottomBar'),(186,77,'adWidth'),(187,79,'shouldMakeOverlayTransparent'),(188,79,'transitionTime'),(189,71,'WAPS_ID'),(190,68,'WAPS_ID'),(191,70,'WAPS_ID'),(192,69,'WAPS_ID'),(193,74,'WAPS_ID'),(194,72,'WAPS_ID'),(195,79,'url'),(196,75,'action'),(197,79,'shouldResizeOverlay'),(198,78,'isTestMode'),(199,68,'message'),(200,71,'WAPS_PID'),(201,68,'WAPS_PID'),(202,70,'WAPS_PID'),(203,69,'WAPS_PID'),(204,74,'WAPS_PID'),(205,72,'WAPS_PID'),(206,75,'com.google.ads.AdOpener'),(207,81,'TYPEdsada'),(208,69,'message'),(209,82,'ST_START_DELAY'),(210,79,'shouldShowBottomBar'),(211,70,'itemContent'),(212,80,'isFinshClose'),(213,81,'MSG'),(214,77,'url'),(215,68,'content'),(216,79,'overlayTransition'),(217,79,'shouldShowTitlebar'),(218,80,'CLIENT_PACKAGE');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',0,2,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,72,'r',1,NULL,NULL),(63,74,'r',1,NULL,NULL),(64,73,'r',1,NULL,NULL),(65,75,'r',1,NULL,NULL),(66,18,'r',1,NULL,NULL),(67,81,'r',1,NULL,NULL),(68,89,'a',1,NULL,NULL),(69,90,'a',0,NULL,NULL),(70,91,'a',0,NULL,NULL),(71,92,'a',0,NULL,NULL),(72,93,'a',0,NULL,NULL),(73,94,'a',0,NULL,NULL),(74,95,'a',0,NULL,NULL),(75,97,'a',0,NULL,NULL),(76,98,'r',1,NULL,NULL),(77,99,'a',0,NULL,NULL),(78,100,'a',0,NULL,NULL),(79,101,'a',0,NULL,NULL),(80,103,'a',0,NULL,NULL),(81,104,'a',0,NULL,NULL),(82,105,'s',0,NULL,NULL),(83,106,'r',1,NULL,NULL),(84,112,'r',1,NULL,NULL),(85,125,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,27),(2,1,29),(3,1,22),(4,2,26),(5,3,33),(6,4,27),(7,5,33),(8,6,20),(9,7,9),(10,8,29),(11,9,32),(12,10,1),(13,11,13),(14,12,25),(15,13,27),(16,14,33),(17,15,6),(18,16,20),(19,17,4),(20,18,25),(21,19,24),(22,20,14),(23,21,32),(24,22,20),(25,23,34),(26,24,27),(27,24,29),(28,24,22),(29,25,1),(30,26,4),(31,27,24),(32,28,6),(33,29,4),(34,30,29),(35,31,17),(36,32,22),(37,32,27),(38,32,29),(39,33,4),(40,34,41),(41,35,42),(42,36,29),(43,37,19),(44,38,44),(45,39,12),(46,40,29),(47,41,4),(48,42,13),(49,43,30),(50,44,45),(51,45,43),(52,46,20),(53,47,6),(54,48,44),(55,49,3),(56,50,2),(57,51,36),(58,52,4),(59,53,57),(60,54,13),(61,55,44),(62,56,59),(63,57,18),(64,58,6),(65,59,55),(66,60,6),(67,61,14),(68,62,57),(69,63,44),(70,64,42),(71,65,43),(72,66,6),(73,67,37),(74,68,57),(75,69,57),(76,70,47),(77,71,53),(78,72,55),(79,73,60),(80,73,61),(81,73,56),(82,73,52),(83,73,48),(84,74,48),(85,74,61),(86,74,60),(87,74,56),(88,74,52),(89,75,52),(90,75,56),(91,75,61),(92,75,60),(93,75,48),(94,76,52),(95,76,56),(96,76,60),(97,76,61),(98,76,48),(99,77,56),(100,77,52),(101,77,48),(102,77,61),(103,77,60),(104,78,80),(105,79,68),(106,80,75),(107,81,82),(108,82,68),(109,83,68),(110,84,81),(111,85,83),(112,86,68),(113,87,82),(114,88,72),(115,89,68),(116,90,68),(117,91,68),(118,92,68),(119,93,82),(120,94,68),(121,95,68),(122,96,69),(123,97,68),(124,98,68),(125,99,81),(126,100,68),(127,101,82),(128,102,68),(129,103,73),(130,104,69);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,62,'<com.waps.o: void onClick(android.view.View)>',54,'a',NULL),(2,63,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(3,64,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(4,65,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(5,33,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(6,20,'<com.ps.kickmouse.WhacAMouse: void onClick(android.view.View)>',13,'a',NULL),(7,9,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(8,29,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(9,66,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(10,1,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(11,13,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(12,67,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(13,65,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',12,'a',NULL),(14,33,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(15,68,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(16,20,'<com.ps.kickmouse.WhacAMouse: void restartGame()>',4,'a',NULL),(17,69,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(18,67,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(19,70,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(20,14,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(21,71,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(22,20,'<com.ps.kickmouse.WhacAMouse: void startGame()>',4,'a',NULL),(23,34,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(24,62,'<com.waps.o: void onClick(android.view.View)>',78,'a',NULL),(25,1,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(26,4,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(27,76,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(28,68,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(29,4,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(30,77,'<com.ju6.a: boolean b()>',178,'p',NULL),(31,17,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(32,62,'<com.waps.o: void onClick(android.view.View)>',39,'a',NULL),(33,4,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(34,78,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(35,79,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(36,80,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(37,19,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(38,44,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(39,12,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(40,29,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(41,4,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(42,82,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(43,30,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(44,45,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(45,83,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(46,84,'<com.ps.kickmouse.WhacAMouse$2: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(47,68,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(48,85,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(49,86,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(50,2,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(51,87,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(52,4,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(53,88,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(54,13,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(55,44,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(56,59,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(57,18,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(58,68,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(59,96,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(60,6,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(61,14,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(62,57,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(63,102,'<com.ju6.a: boolean b()>',178,'p',NULL),(64,107,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(65,108,'<com.mogo.gongfupuzzle.begin$beginButtonListener: void onClick(android.view.View)>',28,'a',NULL),(66,68,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(67,37,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(68,109,'<com.ju6.a: boolean b()>',178,'p',NULL),(69,57,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(70,47,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(71,110,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(72,111,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(73,113,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(74,114,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(75,115,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(76,116,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(77,117,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(78,118,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(79,89,'<com.alan.message.SmsMessage: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(80,97,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(81,105,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(82,89,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',59,'a',NULL),(83,89,'<com.alan.message.SmsMessage: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(84,119,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(85,106,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(86,89,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',145,'a',NULL),(87,120,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(88,93,'<com.alan.message.InputMessage: void addDataToListview()>',9,'p',NULL),(89,89,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',140,'a',NULL),(90,89,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',45,'p',0),(91,121,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(92,89,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',49,'a',NULL),(93,122,'<com.ju6.a: boolean b()>',178,'p',NULL),(94,89,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',68,'p',0),(95,89,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',63,'a',NULL),(96,90,'<com.alan.message.MessageList: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(97,89,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',75,'a',NULL),(98,89,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',91,'p',0),(99,123,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(100,89,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',69,'a',NULL),(101,105,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(102,89,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',54,'a',NULL),(103,124,'<com.alan.message.Setting$1: void onClick(android.view.View)>',7,'a',NULL),(104,90,'<com.alan.message.MessageList: boolean onContextItemSelected(android.view.MenuItem)>',28,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,9),(2,2,9),(3,3,9),(4,4,1),(5,6,1),(6,13,10),(7,20,11),(8,23,9),(9,25,1),(10,27,1),(11,28,1),(12,29,1),(13,33,9),(14,35,10),(15,36,11),(16,37,7),(17,40,1),(18,42,1),(19,43,9),(20,45,1),(21,47,1),(22,48,1),(23,49,1),(24,50,1),(25,51,1),(26,59,1),(27,62,1),(28,64,9),(29,66,1),(30,67,1),(31,68,10),(32,72,1),(33,74,1),(34,80,10),(35,81,11),(36,82,7),(37,85,10),(38,87,11),(39,88,17),(40,89,9),(41,91,17),(42,93,17),(43,94,9),(44,95,17),(45,96,9),(46,97,1),(47,98,1),(48,99,9),(49,101,9),(50,102,9),(51,103,9),(52,104,9),(53,105,9),(54,106,9),(55,108,17),(56,109,9),(57,110,17),(58,115,1),(59,116,1),(60,119,1),(61,120,1),(62,121,18),(63,126,18),(64,127,10),(65,128,18),(66,132,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,4,3),(2,6,1),(3,25,1),(4,27,3),(5,28,1),(6,29,3),(7,40,1),(8,42,3),(9,45,1),(10,47,3),(11,48,1),(12,49,3),(13,50,3),(14,51,1),(15,59,1),(16,62,3),(17,66,1),(18,67,3),(19,72,3),(20,74,1),(21,88,4),(22,89,4),(23,91,4),(24,93,4),(25,94,4),(26,95,4),(27,97,1),(28,98,3),(29,108,4),(30,109,4),(31,110,4),(32,115,1),(33,116,3),(34,119,1),(35,120,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,5,'com/waps/OffersWebView'),(2,7,'com/google/update/Dialog'),(3,8,'com/ps/kickmouse/DemoApp'),(4,9,'com/google/update/Dialog'),(5,10,'com/tutusw/phonespeedup/IntroActivity'),(6,11,'com/google/update/Dialog'),(7,12,'com/tutusw/phonespeedup/Setcpu'),(8,14,'com/google/update/Dialog'),(9,15,'com/google/ssearch/Dialog'),(10,17,'com/ps/square/elos/Elos'),(11,16,'com/google/ssearch/Dialog'),(12,18,'com/waps/OffersWebView'),(13,19,'com/google/update/Dialog'),(14,21,'com/ps/kickmouse/Game'),(15,22,'com/google/update/Dialog'),(16,24,'com/ps/square/eloscomplex/ElosComplex'),(17,26,'com/tutusw/phonespeedup/ProfilesService'),(18,30,'com/ps/kickmouse/Game'),(19,31,'com/google/update/UpdateService'),(20,32,'com/waps/OffersWebView'),(21,34,'com/tutusw/phonespeedup/ProfilesService'),(22,38,'com/google/ssearch/SearchService'),(23,41,'com/tutusw/phonespeedup/AdvancedActivity'),(24,44,'com/tutusw/phonespeedup/InfoActivity'),(25,46,'com/tutusw/phonespeedup/AboutActivity'),(26,52,'com/tutusw/phonespeedup/WidgetService'),(27,53,'com/google/update/Dialog'),(28,54,'com/tutusw/phonespeedup/WidgetService'),(29,55,'com/google/update/Dialog'),(30,56,'com/google/update/Dialog'),(31,58,'com/tutusw/phonespeedup/PerflockActivity'),(32,57,'com/google/update/Dialog'),(33,61,'com/google/update/UpdateService'),(34,60,'com/google/update/UpdateService'),(35,65,'com/tutusw/phonespeedup/ProfileEditActivity'),(36,63,'com/waps/OffersWebView'),(37,69,'com/tutusw/phonespeedup/StresstestActivity'),(38,71,'com/tutusw/phonespeedup/IntroActivity'),(39,70,'com/waps/OffersWebView'),(40,73,'com/google/ssearch/Dialog'),(41,75,'com/google/ssearch/Dialog'),(42,76,'com/google/update/Dialog'),(43,77,'com/google/update/UpdateService'),(44,78,'com/google/update/Dialog'),(45,79,'com/tutusw/phonespeedup/ProfilesService'),(46,83,'com/google/update/Dialog'),(47,84,'com/google/update/Dialog'),(48,86,'com/mogo/gongfupuzzle/Main'),(49,90,'com/google/update/Dialog'),(50,92,'com/google/update/Dialog'),(51,107,'com/alan/message/Setting'),(52,111,'com/google/update/Dialog'),(53,112,'com/google/update/Dialog'),(54,113,'com/alan/message/MessageList'),(55,114,'com/alan/message/Help'),(56,117,'com/google/update/UpdateService'),(57,118,'com/alan/message/MessageList'),(58,122,'com/waps/OffersWebView'),(59,123,'com/alan/message/MessageList'),(60,124,'com/alan/message/InputMessage'),(61,125,'com/alan/message/AddMessage'),(62,129,'com/google/update/Dialog'),(63,130,'com/google/update/Dialog'),(64,131,'com/alan/message/MessageList'),(65,133,'com/alan/message/EditMessage');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,3,3),(4,23,4),(5,33,5),(6,43,7),(7,64,8),(8,88,11),(9,89,12),(10,91,13),(11,93,14),(12,94,15),(13,95,16),(14,96,17),(15,99,18),(16,101,19),(17,102,20),(18,103,21),(19,104,22),(20,105,23),(21,106,26),(22,108,27),(23,109,28),(24,110,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'USER_ID'),(2,5,'CLIENT_PACKAGE'),(3,5,'Offers_URL'),(4,5,'URL_PARAMS'),(5,7,'TYPEdsada'),(6,9,'MSG'),(7,9,'TYPEdsada'),(8,11,'TYPEdsada'),(9,14,'MSG'),(10,14,'TYPEdsada'),(11,15,'TYPEdsada'),(12,16,'MSG'),(13,16,'TYPEdsada'),(14,18,'USER_ID'),(15,18,'CLIENT_PACKAGE'),(16,18,'Offers_URL'),(17,18,'URL_PARAMS'),(18,19,'TYPEdsada'),(19,21,'restart'),(20,22,'MSG'),(21,22,'TYPEdsada'),(22,32,'CLIENT_PACKAGE'),(23,32,'URL'),(24,32,'isFinshClose'),(25,53,'MSG'),(26,53,'TYPEdsada'),(27,55,'TYPEdsada'),(28,56,'TYPEdsada'),(29,57,'MSG'),(30,57,'TYPEdsada'),(31,63,'USER_ID'),(32,63,'CLIENT_PACKAGE'),(33,63,'Offers_URL'),(34,63,'URL_PARAMS'),(35,70,'USER_ID'),(36,70,'CLIENT_PACKAGE'),(37,70,'Offers_URL'),(38,70,'URL_PARAMS'),(39,73,'TYPEdsada'),(40,75,'MSG'),(41,75,'TYPEdsada'),(42,76,'MSG'),(43,76,'TYPEdsada'),(44,78,'TYPEdsada'),(45,83,'TYPEdsada'),(46,84,'MSG'),(47,84,'TYPEdsada'),(48,90,'TYPEdsada'),(49,92,'MSG'),(50,92,'TYPEdsada'),(51,111,'TYPEdsada'),(52,112,'MSG'),(53,112,'TYPEdsada'),(54,113,'type'),(55,118,'type'),(56,122,'USER_ID'),(57,122,'CLIENT_PACKAGE'),(58,122,'Offers_URL'),(59,122,'URL_PARAMS'),(60,123,'type'),(61,125,'type'),(62,129,'TYPEdsada'),(63,130,'MSG'),(64,130,'TYPEdsada'),(65,131,'type'),(66,133,'itemContent'),(67,133,'type');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,4),(4,3,5),(5,3,3),(6,4,4),(7,5,6),(8,5,7),(9,6,1),(10,7,1),(11,8,8),(12,9,4),(13,9,5),(14,9,3),(15,10,8),(16,11,5),(17,11,4),(18,11,3),(19,12,1),(20,13,1),(21,14,5),(22,14,4),(23,14,3),(24,15,1),(25,16,3),(26,16,4),(27,16,5),(28,17,14),(29,17,15),(30,17,12),(31,17,13),(32,17,11),(33,18,13),(34,18,14),(35,18,15),(36,18,11),(37,18,12),(38,19,15),(39,19,14),(40,19,11),(41,19,13),(42,19,12),(43,20,15),(44,20,14),(45,20,13),(46,20,12),(47,20,11),(48,21,16),(49,22,15),(50,22,14),(51,22,13),(52,22,12),(53,22,11),(54,23,11),(55,23,12),(56,23,13),(57,23,14),(58,23,15),(59,24,13),(60,24,14),(61,24,7),(62,25,13),(63,25,14),(64,25,7),(65,26,13),(66,26,14),(67,26,7),(68,27,7),(69,27,14),(70,27,13),(71,28,7),(72,28,14),(73,28,13),(74,29,7),(75,29,14),(76,29,13),(77,30,16),(78,31,1),(79,32,16),(80,33,7),(81,33,14),(82,33,13),(83,34,7),(84,34,14),(85,34,13),(86,35,7),(87,35,13),(88,35,14),(89,36,7),(90,36,13),(91,36,14),(92,37,4),(93,37,5),(94,37,3),(95,38,7),(96,38,13),(97,38,14),(98,39,14),(99,39,7),(100,39,13),(101,40,16),(102,41,16),(103,42,16);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,6,1),(3,7,1),(4,8,2),(5,10,2),(6,12,1),(7,13,1),(8,15,1),(9,31,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,21,'package',NULL,NULL,NULL,NULL,NULL),(2,30,'package',NULL,NULL,NULL,NULL,NULL),(3,32,'package',NULL,NULL,NULL,NULL,NULL),(4,40,'package',NULL,NULL,NULL,NULL,NULL),(5,41,'package',NULL,NULL,NULL,NULL,NULL),(6,42,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,3,'application','vnd.android.package-archive'),(2,43,'application','vnd.android.package-archive'),(3,91,'(.*)','(.*)'),(4,95,'(.*)','(.*)'),(5,96,'application','vnd.android.package-archive'),(6,99,'application','vnd.android.package-archive'),(7,101,'application','vnd.android.package-archive'),(8,102,'application','vnd.android.package-archive'),(9,103,'application','vnd.android.package-archive'),(10,104,'application','vnd.android.package-archive'),(11,106,'application','vnd.android.package-archive'),(12,110,'(.*)','(.*)'),(13,121,'vnd.android.cursor.item','phone'),(14,126,'vnd.android.cursor.item','phone'),(15,128,'vnd.android.cursor.item','phone'),(16,132,'image','*');
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
INSERT INTO `IPackages` VALUES (1,4,'com.ps.square'),(2,6,'com.ps.square'),(3,5,'com.ps.kickmouse'),(4,7,'com.ps.square'),(5,8,'com.ps.kickmouse'),(6,9,'com.ps.square'),(7,10,'com.tutusw.phonespeedup'),(8,11,'com.ps.kickmouse'),(9,12,'com.tutusw.phonespeedup'),(10,14,'com.ps.kickmouse'),(11,15,'com.tutusw.phonespeedup'),(12,17,'com.ps.square'),(13,16,'com.tutusw.phonespeedup'),(14,18,'com.ps.kickmouse'),(15,19,'com.ps.square'),(16,21,'com.ps.kickmouse'),(17,22,'com.ps.square'),(18,24,'com.ps.square'),(19,25,'com.noshufou.android.su'),(20,26,'com.tutusw.phonespeedup'),(21,27,'com.noshufou.android.su'),(22,28,'com.noshufou.android.su'),(23,30,'com.ps.kickmouse'),(24,29,'com.noshufou.android.su'),(25,31,'com.ps.square'),(26,32,'com.ps.kickmouse'),(27,34,'com.tutusw.phonespeedup'),(28,38,'com.tutusw.phonespeedup'),(29,40,'(.*)'),(30,41,'com.tutusw.phonespeedup'),(31,42,'(.*)'),(32,44,'com.tutusw.phonespeedup'),(33,46,'com.tutusw.phonespeedup'),(34,45,'NULL-CONSTANT'),(35,47,'NULL-CONSTANT'),(36,48,'com.noshufou.android.su'),(37,49,'com.noshufou.android.su'),(38,50,'com.ps.kickmouse'),(39,52,'com.tutusw.phonespeedup'),(40,51,'com.ps.kickmouse'),(41,53,'com.alan.siwameinv4'),(42,54,'com.tutusw.phonespeedup'),(43,55,'com.ps.kickmouse'),(44,56,'com.alan.siwameinv4'),(45,58,'com.tutusw.phonespeedup'),(46,57,'com.ps.kickmouse'),(47,59,'com.tutusw.phonespeedup'),(48,61,'com.alan.siwameinv4'),(49,60,'com.ps.kickmouse'),(50,62,'com.tutusw.phonespeedup'),(51,65,'com.tutusw.phonespeedup'),(52,63,'com.mogo.gongfupuzzle'),(53,66,'com.alan.siwameinv4'),(54,67,'com.alan.siwameinv4'),(55,69,'com.tutusw.phonespeedup'),(56,71,'com.tutusw.phonespeedup'),(57,72,'com.mogo.gongfupuzzle'),(58,70,'com.alan.siwameinv4'),(59,73,'com.tutusw.phonespeedup'),(60,74,'com.mogo.gongfupuzzle'),(61,75,'com.tutusw.phonespeedup'),(62,76,'com.alan.siwameinv4'),(63,77,'com.mogo.gongfupuzzle'),(64,78,'com.alan.siwameinv4'),(65,79,'com.tutusw.phonespeedup'),(66,83,'com.mogo.gongfupuzzle'),(67,84,'com.mogo.gongfupuzzle'),(68,86,'com.mogo.gongfupuzzle'),(69,90,'com.mogo.gongfupuzzle'),(70,92,'com.mogo.gongfupuzzle'),(71,97,'com.noshufou.android.su'),(72,98,'com.noshufou.android.su'),(73,107,'com.alan.message'),(74,111,'com.alan.message'),(75,112,'com.alan.message'),(76,113,'com.alan.message'),(77,114,'com.alan.message'),(78,115,'com.noshufou.android.su'),(79,116,'com.noshufou.android.su'),(80,117,'com.alan.message'),(81,118,'com.alan.message'),(82,119,'com.alan.message'),(83,120,'com.alan.message'),(84,122,'com.alan.message'),(85,123,'com.alan.message'),(86,124,'com.alan.message'),(87,125,'com.alan.message'),(88,129,'com.alan.message'),(89,130,'com.alan.message'),(90,131,'com.alan.message'),(91,133,'com.alan.message');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,12,0),(3,17,0),(4,18,0),(5,19,0),(6,20,0),(7,25,0),(8,28,0),(9,30,0),(10,31,0),(11,34,0),(12,36,0),(13,43,0),(14,45,0),(15,48,0),(16,59,0),(17,19,0),(18,17,0),(19,62,0),(20,64,0),(21,63,0),(22,65,0),(23,66,0),(24,19,0),(25,17,0),(26,62,0),(27,64,0),(28,65,0),(29,66,0),(30,67,0),(31,68,0),(32,76,0),(33,19,0),(34,17,0),(35,62,0),(36,64,0),(37,83,0),(38,65,0),(39,66,0),(40,84,0),(41,84,0),(42,85,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,1,0),(4,3,1,0),(5,4,0,0),(6,3,1,0),(7,5,0,0),(8,6,0,0),(9,5,0,0),(10,7,0,0),(11,8,0,0),(12,10,0,0),(13,9,1,0),(14,8,0,0),(15,11,0,0),(16,11,0,0),(17,12,0,0),(18,13,0,0),(19,14,0,0),(20,15,1,0),(21,16,0,0),(22,14,0,0),(23,17,1,0),(24,18,0,0),(25,19,1,0),(26,20,0,0),(27,19,1,0),(28,21,1,0),(29,21,1,0),(30,22,0,0),(31,23,0,0),(32,24,0,0),(33,25,1,0),(34,26,0,0),(35,27,1,0),(36,28,1,0),(37,29,1,0),(38,31,0,0),(39,32,1,0),(40,32,1,0),(41,33,0,0),(42,32,1,0),(43,34,1,0),(44,33,0,0),(45,32,1,0),(46,33,0,0),(47,32,1,0),(48,35,1,0),(49,35,1,0),(50,36,1,0),(51,36,1,0),(52,37,0,0),(53,38,0,0),(54,39,0,0),(55,40,0,0),(56,38,0,0),(57,40,0,0),(58,41,0,0),(59,42,1,0),(60,43,0,0),(61,44,0,0),(62,42,1,0),(63,45,0,0),(64,46,1,0),(65,47,0,0),(66,48,1,0),(67,48,1,0),(68,49,1,0),(69,50,0,0),(70,51,0,0),(71,52,0,0),(72,53,1,0),(73,54,0,0),(74,53,1,0),(75,54,0,0),(76,55,0,0),(77,56,0,0),(78,55,0,0),(79,58,0,0),(80,59,1,0),(81,60,1,0),(82,61,1,0),(83,62,0,0),(84,62,0,0),(85,64,1,0),(86,65,0,0),(87,66,1,0),(88,67,1,0),(89,67,1,0),(90,69,0,0),(91,67,1,0),(92,69,0,0),(93,70,1,0),(94,70,1,0),(95,70,1,0),(96,71,1,0),(97,72,1,0),(98,72,1,0),(99,73,1,0),(100,73,1,0),(101,73,1,0),(102,73,1,0),(103,73,1,0),(104,73,1,0),(105,74,1,0),(106,78,1,0),(107,79,0,0),(108,80,1,0),(109,80,1,0),(110,80,1,0),(111,81,0,0),(112,81,0,0),(113,82,0,0),(114,83,0,0),(115,84,1,0),(116,84,1,0),(117,85,0,0),(118,86,0,0),(119,87,1,0),(120,87,1,0),(121,89,1,0),(122,91,0,0),(123,92,0,0),(124,95,0,0),(125,96,0,0),(126,97,1,0),(127,99,1,0),(128,100,1,0),(129,101,0,0),(130,101,0,0),(131,102,0,0),(132,103,1,0),(133,104,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,8,27,2,NULL),(2,21,21,2,NULL),(3,30,21,2,NULL),(4,37,20,2,NULL),(5,81,20,2,NULL),(6,82,20,2,NULL),(7,88,20,2,NULL),(8,89,20,2,NULL),(9,93,20,2,NULL),(10,94,20,2,NULL),(11,108,20,2,NULL),(12,109,20,2,NULL),(13,11,24,2,NULL),(14,11,32,2,NULL),(15,11,42,2,NULL),(16,11,55,2,NULL),(17,11,81,2,NULL),(18,14,24,2,NULL),(19,14,32,2,NULL),(20,14,42,2,NULL),(21,14,55,2,NULL),(22,14,81,2,NULL),(23,55,24,2,NULL),(24,55,32,2,NULL),(25,55,42,2,NULL),(26,55,55,2,NULL),(27,55,81,2,NULL),(28,57,24,2,NULL),(29,57,32,2,NULL),(30,57,42,2,NULL),(31,57,55,2,NULL),(32,57,81,2,NULL),(33,60,29,2,NULL),(34,60,33,2,NULL),(35,60,44,2,NULL),(36,60,57,2,NULL),(37,60,82,2,NULL),(38,37,30,2,NULL),(39,81,30,2,NULL),(40,82,30,2,NULL),(41,88,30,2,NULL),(42,89,30,2,NULL),(43,93,30,2,NULL),(44,94,30,2,NULL),(45,108,30,2,NULL),(46,109,30,2,NULL),(47,37,43,2,NULL),(48,81,43,2,NULL),(49,82,43,2,NULL),(50,88,43,2,NULL),(51,89,43,2,NULL),(52,93,43,2,NULL),(53,94,43,2,NULL),(54,108,43,2,NULL),(55,109,43,2,NULL),(56,93,1,2,NULL),(57,94,1,2,NULL),(58,93,12,2,NULL),(59,94,12,2,NULL),(60,93,17,2,NULL),(61,94,17,2,NULL),(62,93,18,2,NULL),(63,94,18,2,NULL),(64,93,66,2,NULL),(65,94,66,2,NULL),(66,93,19,2,NULL),(67,94,19,2,NULL),(68,93,62,2,NULL),(69,94,62,2,NULL),(70,93,64,2,NULL),(71,94,64,2,NULL),(72,93,65,2,NULL),(73,94,65,2,NULL),(74,93,25,2,NULL),(75,94,25,2,NULL),(76,93,28,2,NULL),(77,12,11,2,NULL),(78,94,28,2,NULL),(79,37,1,2,NULL),(80,93,31,2,NULL),(81,81,1,2,NULL),(82,94,31,2,NULL),(83,82,1,2,NULL),(84,93,34,2,NULL),(85,88,1,2,NULL),(86,94,34,2,NULL),(87,89,1,2,NULL),(88,93,36,2,NULL),(89,108,1,2,NULL),(90,94,36,2,NULL),(91,109,1,2,NULL),(92,93,45,2,NULL),(93,69,10,2,NULL),(94,94,45,2,NULL),(95,34,15,2,NULL),(96,93,59,2,NULL),(97,41,8,2,NULL),(98,94,59,2,NULL),(99,44,2,2,NULL),(100,93,48,2,NULL),(101,46,9,2,NULL),(102,94,48,2,NULL),(103,58,5,2,NULL),(104,93,68,2,NULL),(105,71,1,2,NULL),(106,94,68,2,NULL),(107,37,12,2,NULL),(108,93,83,2,NULL),(109,37,17,2,NULL),(110,94,83,2,NULL),(111,37,18,2,NULL),(112,83,24,2,NULL),(113,37,66,2,NULL),(114,83,32,2,NULL),(115,37,19,2,NULL),(116,83,42,2,NULL),(117,37,62,2,NULL),(118,83,55,2,NULL),(119,37,64,2,NULL),(120,83,81,2,NULL),(121,37,65,2,NULL),(122,84,24,2,NULL),(123,37,25,2,NULL),(124,84,32,2,NULL),(125,37,28,2,NULL),(126,84,42,2,NULL),(127,37,31,2,NULL),(128,84,55,2,NULL),(129,37,34,2,NULL),(130,84,81,2,NULL),(131,37,36,2,NULL),(132,90,24,2,NULL),(133,37,45,2,NULL),(134,90,32,2,NULL),(135,37,59,2,NULL),(136,90,42,2,NULL),(137,37,48,2,NULL),(138,90,55,2,NULL),(139,37,68,2,NULL),(140,90,81,2,NULL),(141,37,83,2,NULL),(142,92,24,2,NULL),(143,81,12,2,NULL),(144,92,32,2,NULL),(145,81,17,2,NULL),(146,92,42,2,NULL),(147,81,18,2,NULL),(148,92,55,2,NULL),(149,81,66,2,NULL),(150,92,81,2,NULL),(151,81,19,2,NULL),(152,77,29,2,NULL),(153,81,62,2,NULL),(154,77,33,2,NULL),(155,81,64,2,NULL),(156,77,44,2,NULL),(157,81,65,2,NULL),(158,77,57,2,NULL),(159,81,25,2,NULL),(160,77,82,2,NULL),(161,81,28,2,NULL),(162,81,59,2,NULL),(163,81,31,2,NULL),(164,82,59,2,NULL),(165,81,34,2,NULL),(166,88,59,2,NULL),(167,81,36,2,NULL),(168,89,59,2,NULL),(169,81,45,2,NULL),(170,108,59,2,NULL),(171,81,48,2,NULL),(172,109,59,2,NULL),(173,81,68,2,NULL),(174,81,83,2,NULL),(175,10,1,2,NULL),(176,54,16,2,NULL),(177,82,12,2,NULL),(178,88,12,2,NULL),(179,89,12,2,NULL),(180,108,12,2,NULL),(181,109,12,2,NULL),(182,15,3,2,NULL),(183,16,3,2,NULL),(184,73,3,2,NULL),(185,75,3,2,NULL),(186,26,15,2,NULL),(187,82,17,2,NULL),(188,82,18,2,NULL),(189,82,66,2,NULL),(190,82,19,2,NULL),(191,82,62,2,NULL),(192,82,64,2,NULL),(193,82,65,2,NULL),(194,82,25,2,NULL),(195,82,28,2,NULL),(196,82,31,2,NULL),(197,82,34,2,NULL),(198,82,36,2,NULL),(199,82,45,2,NULL),(200,82,48,2,NULL),(201,82,68,2,NULL),(202,82,83,2,NULL),(203,38,13,2,NULL),(204,88,17,2,NULL),(205,89,17,2,NULL),(206,108,17,2,NULL),(207,109,17,2,NULL),(208,88,18,2,NULL),(209,89,18,2,NULL),(210,108,18,2,NULL),(211,109,18,2,NULL),(212,88,66,2,NULL),(213,89,66,2,NULL),(214,108,66,2,NULL),(215,109,66,2,NULL),(216,52,16,2,NULL),(217,88,19,2,NULL),(218,89,19,2,NULL),(219,108,19,2,NULL),(220,109,19,2,NULL),(221,88,62,2,NULL),(222,89,62,2,NULL),(223,108,62,2,NULL),(224,109,62,2,NULL),(225,88,64,2,NULL),(226,89,64,2,NULL),(227,108,64,2,NULL),(228,109,64,2,NULL),(229,88,65,2,NULL),(230,89,65,2,NULL),(231,108,65,2,NULL),(232,109,65,2,NULL),(233,88,25,2,NULL),(234,89,25,2,NULL),(235,108,25,2,NULL),(236,109,25,2,NULL),(237,88,28,2,NULL),(238,89,28,2,NULL),(239,108,28,2,NULL),(240,109,28,2,NULL),(241,88,31,2,NULL),(242,89,31,2,NULL),(243,108,31,2,NULL),(244,109,31,2,NULL),(245,7,24,2,NULL),(246,7,32,2,NULL),(247,7,42,2,NULL),(248,7,55,2,NULL),(249,7,81,2,NULL),(250,9,24,2,NULL),(251,9,32,2,NULL),(252,9,42,2,NULL),(253,9,55,2,NULL),(254,9,81,2,NULL),(255,19,24,2,NULL),(256,19,32,2,NULL),(257,19,42,2,NULL),(258,19,55,2,NULL),(259,19,81,2,NULL),(260,22,24,2,NULL),(261,22,32,2,NULL),(262,22,42,2,NULL),(263,22,55,2,NULL),(264,22,81,2,NULL),(265,31,29,2,NULL),(266,31,33,2,NULL),(267,31,44,2,NULL),(268,31,57,2,NULL),(269,31,82,2,NULL),(270,88,34,2,NULL),(271,89,34,2,NULL),(272,108,34,2,NULL),(273,109,34,2,NULL),(274,88,36,2,NULL),(275,89,36,2,NULL),(276,108,36,2,NULL),(277,109,36,2,NULL),(278,88,45,2,NULL),(279,89,45,2,NULL),(280,88,48,2,NULL),(281,89,48,2,NULL),(282,88,68,2,NULL),(283,89,68,2,NULL),(284,88,83,2,NULL),(285,89,83,2,NULL),(286,53,24,2,NULL),(287,53,32,2,NULL),(288,53,42,2,NULL),(289,53,55,2,NULL),(290,53,81,2,NULL),(291,56,24,2,NULL),(292,56,32,2,NULL),(293,56,42,2,NULL),(294,56,55,2,NULL),(295,56,81,2,NULL),(296,76,24,2,NULL),(297,76,32,2,NULL),(298,76,42,2,NULL),(299,76,55,2,NULL),(300,76,81,2,NULL),(301,78,24,2,NULL),(302,78,32,2,NULL),(303,78,42,2,NULL),(304,78,55,2,NULL),(305,78,81,2,NULL),(306,61,29,2,NULL),(307,61,33,2,NULL),(308,61,44,2,NULL),(309,61,57,2,NULL),(310,61,82,2,NULL),(311,108,45,2,NULL),(312,109,45,2,NULL),(313,108,48,2,NULL),(314,109,48,2,NULL),(315,107,73,2,NULL),(316,113,69,2,NULL),(317,114,74,2,NULL),(318,118,69,2,NULL),(319,123,69,2,NULL),(320,124,72,2,NULL),(321,131,69,2,NULL),(322,108,68,2,NULL),(323,109,68,2,NULL),(324,125,71,2,NULL),(325,133,70,2,NULL),(326,108,83,2,NULL),(327,109,83,2,NULL),(328,111,24,2,NULL),(329,111,32,2,NULL),(330,111,42,2,NULL),(331,111,55,2,NULL),(332,111,81,2,NULL),(333,112,24,2,NULL),(334,112,32,2,NULL),(335,112,42,2,NULL),(336,112,55,2,NULL),(337,112,81,2,NULL),(338,129,24,2,NULL),(339,129,32,2,NULL),(340,129,42,2,NULL),(341,129,55,2,NULL),(342,129,81,2,NULL),(343,130,24,2,NULL),(344,130,32,2,NULL),(345,130,42,2,NULL),(346,130,55,2,NULL),(347,130,81,2,NULL),(348,117,29,2,NULL),(349,117,33,2,NULL),(350,117,44,2,NULL),(351,117,57,2,NULL),(352,117,82,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_COARSE_LOCATION'),(18,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.CHANGE_CONFIGURATION'),(5,'android.permission.CHANGE_WIFI_STATE'),(11,'android.permission.GET_TASKS'),(10,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(21,'android.permission.READ_CONTACTS'),(15,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.SEND_SMS'),(16,'android.permission.SET_WALLPAPER'),(6,'android.permission.VIBRATE'),(8,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(12,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(5,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(6,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(10,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(19,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(22,NULL,NULL,'file://',NULL,NULL,NULL),(23,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(25,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(31,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,30,6),(2,63,9),(3,68,10),(4,75,24),(5,77,25),(6,88,30),(7,93,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,2),(12,2,3),(13,2,4),(14,2,5),(15,2,7),(16,2,9),(17,2,10),(18,2,11),(19,2,12),(20,2,13),(21,2,14),(22,3,1),(23,3,2),(24,3,3),(25,3,4),(26,3,5),(27,3,7),(28,3,9),(29,4,1),(30,4,3),(31,4,4),(32,4,5),(33,4,7),(34,4,9),(35,4,10),(36,4,11),(37,4,12),(38,4,13),(39,4,14),(40,4,15),(41,4,17),(42,4,16),(43,4,19),(44,4,18),(45,5,1),(46,5,3),(47,5,4),(48,5,5),(49,5,7),(50,5,9),(51,5,10),(52,5,12),(53,5,13),(54,5,14),(55,5,15),(56,5,17),(57,5,18),(58,6,17),(59,6,1),(60,6,18),(61,6,3),(62,6,4),(63,6,8),(64,6,9),(65,6,13),(66,6,15),(67,7,1),(68,7,3),(69,7,4),(70,7,5),(71,7,7),(72,7,9),(73,7,10),(74,7,11),(75,7,12),(76,7,13),(77,7,14),(78,7,15),(79,7,17),(80,7,18),(81,7,21),(82,7,20);
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

-- Dump completed on 2015-10-12  3:29:22
