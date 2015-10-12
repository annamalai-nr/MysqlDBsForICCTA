-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_170
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.SIG_STR'),(5,'android.intent.action.VIEW'),(6,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'irdc.F1WPCG',1),(2,'com.ps.mine',13),(3,'com.tebs3.cuttherope',6),(4,'com.catsw.lovetutor',9),(5,'com.ps.kickmouse',7),(6,'com.ps.yams',8),(7,'com.gp.mahjongg',16);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'irdc.F1WPCG.F1WPCG'),(2,1,'com.google.update.Dialog'),(3,1,'com.google.update.UpdateService'),(4,1,'com.google.update.Receiver'),(5,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(6,2,'com.ps.mine.Main'),(7,2,'com.google.update.Dialog'),(8,2,'com.google.update.UpdateService'),(9,2,'com.google.update.Receiver'),(10,3,'com.tebs3.cuttherope.MainActivity'),(11,3,'ad.imadpush.com.poster.PosterInfoActivity'),(12,3,'com.airpuh.ad.UpdateCheck'),(13,3,'ad.imadpush.com.poster.AlarmService'),(14,3,'ad.imadpush.com.poster.ReceiverAlarm'),(15,4,'com.catsw.lovetutor.Logo'),(16,4,'com.catsw.lovetutor.Main'),(17,5,'com.ps.kickmouse.WhacAMouse'),(18,4,'com.catsw.lovetutor.GameActivity'),(19,5,'com.ps.kickmouse.Game'),(20,4,'com.catsw.lovetutor.UpdateCheck'),(21,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(22,5,'com.google.update.Dialog'),(23,5,'com.waps.OffersWebView'),(24,5,'com.ps.kickmouse.DemoApp'),(25,5,'com.google.update.UpdateService'),(26,5,'com.google.update.Receiver'),(27,1,'com.google.update.UpdateService$MyThread'),(28,6,'com.ps.yams.Yams'),(29,6,'com.google.update.Dialog'),(30,6,'cn.domob.android.ads.DomobActivity'),(31,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,6,'com.waps.OffersWebView'),(33,6,'com.google.update.UpdateService'),(34,6,'com.google.update.Receiver'),(35,1,'com.ju6.a'),(36,1,'com.google.update.Dialog$2'),(37,1,'com.google.update.Dialog$1'),(38,2,'com.google.update.Dialog$2'),(39,2,'com.google.update.UpdateService$AA'),(40,2,'com.google.update.Dialog$1'),(41,3,'ad.imadpush.com.poster.PosterInfoActivity$PackageReceiver'),(42,3,'com.tebs3.cuttherope.MainActivity$2'),(43,7,'com.gp.mahjongg.SelectActivity'),(44,3,'com.tebs3.cuttherope.MainActivity$3'),(45,7,'com.gp.mahjongg.PlayActivity'),(46,7,'com.gp.background.BackgroundActivity'),(47,7,'com.gp.mahjongg.SettingsActivity'),(48,7,'com.gp.mahjongg.BuilderActivity'),(49,7,'cn.domob.android.ads.DomobActivity'),(50,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(51,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(52,7,'com.vpon.adon.android.WebInApp'),(53,7,'com.mt.airad.MultiAD'),(54,7,'com.google.update.Dialog'),(55,7,'com.waps.OffersWebView'),(56,7,'com.google.update.UpdateService'),(57,7,'com.google.update.Receiver'),(58,5,'com.waps.k'),(59,5,'com.ju6.a'),(60,5,'com.google.update.UpdateService$MyThread'),(61,5,'com.google.update.Dialog$1'),(62,5,'com.waps.m'),(63,5,'com.waps.AppConnect'),(64,5,'com.ps.kickmouse.WhacAMouse$2'),(65,5,'com.waps.o'),(66,5,'com.google.update.Dialog$2'),(67,6,'com.waps.o'),(68,6,'com.google.update.UpdateService$AA'),(69,6,'com.waps.z'),(70,6,'cn.domob.android.ads.i$6'),(71,6,'cn.domob.android.ads.DomobAdManager'),(72,6,'com.waps.ac'),(73,6,'cn.domob.android.ads.i'),(74,6,'com.google.update.Dialog$1'),(75,6,'com.waps.aa'),(76,6,'cn.domob.android.ads.DomobAdEngine$2'),(77,6,'cn.domob.android.ads.DomobActionReceiver'),(78,6,'com.google.update.Dialog$2'),(79,6,'com.waps.q'),(80,7,'com.waps.aa'),(81,7,'cn.domob.android.a.a$a'),(82,7,'com.waps.s'),(83,7,'com.google.update.UpdateService$AA'),(84,7,'com.waps.o'),(85,7,'cn.domob.android.ads.o'),(86,7,'cn.domob.android.ads.e'),(87,7,'com.waps.q'),(88,7,'cn.domob.android.ads.o$5'),(89,7,'com.waps.d'),(90,7,'com.google.update.Dialog$2'),(91,7,'com.google.update.Dialog$1'),(92,7,'com.mt.airad.IIIIlllIlllIIIII'),(93,7,'cn.domob.android.ads.DomobAdManager'),(94,7,'cn.domob.android.ads.g$1'),(95,7,'com.waps.y'),(96,7,'com.waps.AppConnect'),(97,7,'com.waps.x');
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
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'TYPEdsada'),(2,2,'MSG'),(3,3,'ST_MY_PID'),(4,3,'ST_START_DELAY'),(5,7,'TYPEdsada'),(6,8,'ST_MY_PID'),(7,5,'shouldShowBottomBar'),(8,5,'shouldMakeOverlayTransparent'),(9,5,'overlayTransition'),(10,5,'shouldResizeOverlay'),(11,5,'shouldShowTitlebar'),(12,5,'url'),(13,5,'transitionTime'),(14,5,'overlayTitle'),(15,7,'MSG'),(16,8,'ST_START_DELAY'),(17,20,'MYAD_PID'),(18,5,'shouldEnableBottomBar'),(19,11,'dId'),(20,12,'MYAD_PID'),(21,11,'notifyId'),(22,11,'push'),(23,11,'userId'),(24,10,'ad.imadpush.com'),(25,13,'ad.imadpush.com'),(26,23,'URL'),(27,23,'Offers_URL'),(28,17,'CLIENT_PACKAGE'),(29,25,'CLIENT_PACKAGE'),(30,21,'CLIENT_PACKAGE'),(31,24,'CLIENT_PACKAGE'),(32,17,'WAPS_PID'),(33,25,'WAPS_PID'),(34,21,'WAPS_PID'),(35,24,'WAPS_PID'),(36,21,'overlayTitle'),(37,17,'WAPS_ID'),(38,25,'WAPS_ID'),(39,21,'WAPS_ID'),(40,24,'WAPS_ID'),(41,23,'CLIENT_PACKAGE'),(42,19,'restart'),(43,17,'APP_ID'),(44,25,'APP_ID'),(45,21,'APP_ID'),(46,24,'APP_ID'),(47,23,'URL_PARAMS'),(48,19,'HP'),(49,21,'transitionTime'),(50,22,'TYPEdsada'),(51,21,'shouldShowTitlebar'),(52,19,'MouseGame'),(53,23,'USER_ID'),(54,22,'MSG'),(55,21,'overlayTransition'),(56,17,'DEVICE_ID'),(57,25,'DEVICE_ID'),(58,21,'DEVICE_ID'),(59,24,'DEVICE_ID'),(60,21,'url'),(61,23,'isFinshClose'),(62,21,'shouldShowBottomBar'),(63,25,'ST_START_DELAY'),(64,21,'shouldMakeOverlayTransparent'),(65,21,'shouldResizeOverlay'),(66,19,'Progrees'),(67,21,'shouldEnableBottomBar'),(68,25,'ST_MY_PID'),(69,31,'WAPS_PID'),(70,27,'WAPS_PID'),(71,31,'offers_webview_tag'),(72,31,'APP_ID'),(73,27,'APP_ID'),(74,28,'MSG'),(75,27,'de_valeur'),(76,30,'shouldResizeOverlay'),(77,31,'WAPS_ID'),(78,27,'WAPS_ID'),(79,31,'Offers_URL'),(80,28,'TYPEdsada'),(81,31,'UrlPath'),(82,30,'shouldMakeOverlayTransparent'),(83,29,'appName'),(84,30,'shouldEnableBottomBar'),(85,31,'isFinshClose'),(86,27,'tours'),(87,31,'URL'),(88,32,'DOMOB_PID'),(89,30,'DOMOB_PID'),(90,31,'USER_ID'),(91,32,'ST_START_DELAY'),(92,30,'shouldShowTitlebar'),(93,30,'transitionTime'),(94,32,'DOMOB_TEST_MODE'),(95,30,'DOMOB_TEST_MODE'),(96,30,'overlayTitle'),(97,32,'DOMOB_ALLOW_LOCATION'),(98,30,'DOMOB_ALLOW_LOCATION'),(99,31,'Notify_Id'),(100,30,'url'),(101,31,'Notify_Url_Params'),(102,29,'actType'),(103,27,'lances'),(104,27,'points'),(105,31,'URL_PARAMS'),(106,32,'ST_MY_PID'),(107,31,'SHWO_FLAG'),(108,30,'shouldShowBottomBar'),(109,30,'overlayTransition'),(110,31,'CLIENT_PACKAGE'),(111,27,'dialog_shown'),(112,31,'DEVICE_ID'),(113,27,'DEVICE_ID'),(114,31,'ACTIVITY_FLAG'),(115,29,'appId'),(116,27,'CLIENT_PACKAGE'),(117,46,'UrlPath'),(118,39,'UNDO_KEY'),(119,40,'actType'),(120,40,'appId'),(121,37,'DEVICE_ID'),(122,35,'DEVICE_ID'),(123,46,'DEVICE_ID'),(124,36,'DEVICE_ID'),(125,39,'DEVICE_ID'),(126,43,'url'),(127,42,'transitionTime'),(128,41,'transitionTime'),(129,41,'overlayTitle'),(130,42,'shouldShowTitlebar'),(131,46,'SHWO_FLAG'),(132,39,'SCROLL_X_KEY'),(133,46,'CLIENT_PACKAGE'),(134,37,'CLIENT_PACKAGE'),(135,35,'CLIENT_PACKAGE'),(136,36,'CLIENT_PACKAGE'),(137,39,'CLIENT_PACKAGE'),(138,39,'LEFT_FREE_KEY'),(139,35,'DOMOB_TEST_MODE'),(140,42,'DOMOB_TEST_MODE'),(141,47,'DOMOB_TEST_MODE'),(142,36,'DOMOB_TEST_MODE'),(143,41,'DOMOB_TEST_MODE'),(144,47,'ST_MY_PID'),(145,35,'CURRENT_PAGE'),(146,35,'DOMOB_PID'),(147,42,'DOMOB_PID'),(148,47,'DOMOB_PID'),(149,36,'DOMOB_PID'),(150,41,'DOMOB_PID'),(151,36,'MARKED'),(152,37,'APP_ID'),(153,35,'APP_ID'),(154,46,'APP_ID'),(155,36,'APP_ID'),(156,39,'APP_ID'),(157,42,'overlayTitle'),(158,47,'ST_START_DELAY'),(159,39,'TOP_FREE_KEY'),(160,39,'SCALE_KEY'),(161,46,'Notify_Url_Params'),(162,39,'CURRENT_LAYER_KEY'),(163,42,'shouldMakeOverlayTransparent'),(164,41,'overlayTransition'),(165,39,'ACTION_KEY'),(166,43,'adWidth'),(167,35,'DOMOB_ALLOW_LOCATION'),(168,42,'DOMOB_ALLOW_LOCATION'),(169,47,'DOMOB_ALLOW_LOCATION'),(170,36,'DOMOB_ALLOW_LOCATION'),(171,41,'DOMOB_ALLOW_LOCATION'),(172,46,'Offers_URL'),(173,42,'FSAd'),(174,37,'WAPS_ID'),(175,35,'WAPS_ID'),(176,46,'WAPS_ID'),(177,36,'WAPS_ID'),(178,39,'WAPS_ID'),(179,44,'adID'),(180,45,'MSG'),(181,40,'appName'),(182,46,'offers_webview_tag'),(183,42,'shouldResizeOverlay'),(184,46,'URL_PARAMS'),(185,45,'TYPEdsada'),(186,41,'shouldMakeOverlayTransparent'),(187,42,'overlayTransition'),(188,37,'WAPS_PID'),(189,35,'WAPS_PID'),(190,46,'WAPS_PID'),(191,36,'WAPS_PID'),(192,39,'WAPS_PID'),(193,46,'USER_ID'),(194,41,'shouldEnableBottomBar'),(195,46,'URL'),(196,41,'shouldShowBottomBar'),(197,46,'ACTIVITY_FLAG'),(198,39,'START_DIES_KEY'),(199,42,'shouldEnableBottomBar'),(200,41,'shouldShowTitlebar'),(201,44,'adURL'),(202,46,'isFinshClose'),(203,39,'SCROLL_Y_KEY'),(204,36,'ZOOM'),(205,46,'Notify_Id'),(206,41,'shouldResizeOverlay'),(207,42,'shouldShowBottomBar'),(208,39,'LAYOUT_KEY_KEY'),(209,41,'url');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,28,'a',1,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,33,'s',0,NULL,NULL),(33,34,'r',1,NULL,NULL),(34,41,'r',1,NULL,NULL),(35,43,'a',1,NULL,NULL),(36,45,'a',0,NULL,NULL),(37,46,'a',0,NULL,NULL),(38,47,'a',0,NULL,NULL),(39,48,'a',0,NULL,NULL),(40,49,'a',0,NULL,NULL),(41,50,'a',0,NULL,NULL),(42,51,'a',0,NULL,NULL),(43,52,'a',0,NULL,NULL),(44,53,'a',0,NULL,NULL),(45,54,'a',0,NULL,NULL),(46,55,'a',0,NULL,NULL),(47,56,'s',0,NULL,NULL),(48,57,'r',1,NULL,NULL),(49,62,'r',1,NULL,NULL),(50,77,'r',1,NULL,NULL),(51,79,'r',1,NULL,NULL),(52,86,'r',1,NULL,NULL),(53,87,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,3),(3,3,3),(4,4,3),(5,5,4),(6,6,2),(7,7,2),(8,8,8),(9,9,7),(10,10,9),(11,11,8),(12,12,8),(13,13,7),(14,14,16),(15,15,16),(16,16,16),(17,17,10),(18,18,14),(19,19,10),(20,20,10),(21,21,23),(22,22,25),(23,23,25),(24,24,17),(25,25,25),(26,26,22),(27,27,24),(28,28,17),(29,29,21),(30,29,25),(31,29,24),(32,30,17),(33,31,24),(34,32,17),(35,33,25),(36,34,22),(37,35,21),(38,35,25),(39,35,24),(40,36,26),(41,37,25),(42,37,24),(43,37,21),(44,38,31),(45,39,32),(46,40,31),(47,41,32),(48,41,30),(49,42,32),(50,42,30),(51,43,31),(52,44,31),(53,45,32),(54,45,30),(55,46,28),(56,47,31),(57,48,30),(58,48,32),(59,49,28),(60,50,32),(61,51,32),(62,52,31),(63,53,33),(64,54,46),(65,55,35),(66,55,36),(67,55,47),(68,55,42),(69,55,41),(70,56,37),(71,56,39),(72,57,35),(73,58,47),(74,59,46),(75,59,36),(76,60,35),(77,61,47),(78,62,47),(79,62,35),(80,62,36),(81,62,37),(82,62,39),(83,62,41),(84,62,42),(85,63,39),(86,63,37),(87,64,48),(88,65,42),(89,65,41),(90,65,47),(91,65,35),(92,65,36),(93,66,36),(94,67,35),(95,68,45),(96,68,36),(97,69,46),(98,70,47),(99,71,36),(100,71,45),(101,72,46),(102,73,44),(103,74,47),(104,74,42),(105,74,41),(106,74,35),(107,74,36),(108,75,41),(109,75,42),(110,75,36),(111,75,35),(112,75,47),(113,76,36),(114,76,46),(115,77,46),(116,78,36),(117,78,35),(118,79,35),(119,80,36),(120,80,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,27,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(2,3,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(3,3,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(4,35,'<com.ju6.a: boolean b()>',178,'p',NULL),(5,4,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(6,36,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(7,37,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(8,8,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(9,38,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(10,9,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(11,39,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(12,8,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(13,40,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(14,16,'<com.catsw.lovetutor.Main: void onClick(android.view.View)>',7,'a',NULL),(15,16,'<com.catsw.lovetutor.Main: void onCreate(android.os.Bundle)>',34,'s',NULL),(16,16,'<com.catsw.lovetutor.Main: void onClick(android.view.View)>',15,'a',NULL),(17,10,'<com.tebs3.cuttherope.MainActivity: void onCreate(android.os.Bundle)>',39,'s',NULL),(18,14,'<ad.imadpush.com.poster.ReceiverAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(19,42,'<com.tebs3.cuttherope.MainActivity$2: void onClick(android.view.View)>',8,'a',NULL),(20,44,'<com.tebs3.cuttherope.MainActivity$3: void onClick(android.view.View)>',6,'a',NULL),(21,58,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(22,59,'<com.ju6.a: boolean b()>',178,'p',NULL),(23,60,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(24,17,'<com.ps.kickmouse.WhacAMouse: void onClick(android.view.View)>',13,'a',NULL),(25,25,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(26,61,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(27,63,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(28,64,'<com.ps.kickmouse.WhacAMouse$2: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(29,65,'<com.waps.o: void onClick(android.view.View)>',78,'a',NULL),(30,17,'<com.ps.kickmouse.WhacAMouse: void startGame()>',4,'a',NULL),(31,63,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',12,'a',NULL),(32,17,'<com.ps.kickmouse.WhacAMouse: void restartGame()>',4,'a',NULL),(33,25,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(34,66,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(35,65,'<com.waps.o: void onClick(android.view.View)>',54,'a',NULL),(36,26,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(37,65,'<com.waps.o: void onClick(android.view.View)>',39,'a',NULL),(38,67,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(39,68,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(40,69,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(41,70,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(42,71,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(43,32,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(44,72,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(45,73,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(46,74,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(47,75,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(48,76,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(49,78,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(50,33,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(51,33,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(52,32,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(53,34,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(54,80,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(55,81,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(56,82,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(57,43,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(58,83,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(59,84,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(60,43,'<com.gp.mahjongg.SelectActivity: void onItemClick(com.gp.mahjongg.MahjonggData,int)>',51,'a',NULL),(61,56,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(62,85,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(63,82,'<com.waps.s: void onClick(android.view.View)>',98,'a',NULL),(64,57,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(65,88,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(66,89,'<com.waps.d: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(67,43,'<com.gp.mahjongg.SelectActivity: void startBuilder(int)>',5,'a',NULL),(68,90,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(69,55,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(70,56,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(71,91,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(72,55,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(73,92,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(74,93,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(75,94,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(76,95,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(77,55,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(78,96,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(79,43,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',14,'a',NULL),(80,97,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,2,1),(3,8,6),(4,9,1),(5,10,1),(6,13,6),(7,15,1),(8,16,1),(9,19,1),(10,21,1),(11,23,5),(12,26,1),(13,27,5),(14,28,5),(15,29,1),(16,30,1),(17,34,1),(18,35,1),(19,37,5),(20,44,6),(21,45,5),(22,46,5),(23,49,1),(24,50,1),(25,51,1),(26,52,1),(27,53,5),(28,54,1),(29,55,1),(30,56,5),(31,57,5),(32,59,5),(33,60,5),(34,61,5),(35,62,5),(36,65,5),(37,66,1),(38,67,1),(39,70,6),(40,76,1),(41,77,1),(42,81,1),(43,82,1),(44,84,1),(45,85,1),(46,86,5),(47,90,5),(48,94,5),(49,96,5),(50,97,5),(51,98,5),(52,99,5),(53,102,6),(54,106,1),(55,107,1),(56,108,1),(57,109,1),(58,110,5),(59,114,1),(60,115,1),(61,118,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,1),(2,2,3),(3,9,1),(4,10,3),(5,15,3),(6,16,1),(7,19,1),(8,21,3),(9,26,1),(10,29,3),(11,30,1),(12,34,1),(13,35,3),(14,49,1),(15,50,3),(16,51,1),(17,52,3),(18,54,1),(19,55,3),(20,66,1),(21,67,3),(22,76,1),(23,77,3),(24,81,1),(25,82,3),(26,84,3),(27,85,1),(28,106,1),(29,107,3),(30,108,1),(31,109,3),(32,114,1),(33,115,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/google/update/Dialog'),(2,4,'com/google/update/Dialog'),(3,5,'com/google/update/Dialog'),(4,6,'com/google/update/Dialog'),(5,7,'com/google/update/UpdateService'),(6,11,'com/google/update/Dialog'),(7,12,'com/google/update/Dialog'),(8,14,'com/google/update/UpdateService'),(9,17,'com/google/update/Dialog'),(10,18,'com/google/update/Dialog'),(11,20,'com/catsw/lovetutor/GameActivity'),(12,22,'com/catsw/lovetutor/UpdateCheck'),(13,24,'com/airpuh/ad/UpdateCheck'),(14,25,'ad/imadpush/com/poster/AlarmService'),(15,26,'(.*)'),(16,31,'com/ps/kickmouse/DemoApp'),(17,32,'com/google/update/Dialog'),(18,33,'com/google/update/Dialog'),(19,36,'com/waps/OffersWebView'),(20,38,'com/waps/OffersWebView'),(21,39,'com/ps/kickmouse/Game'),(22,40,'com/waps/OffersWebView'),(23,41,'com/ps/kickmouse/Game'),(24,42,'com/google/update/Dialog'),(25,43,'com/google/update/Dialog'),(26,47,'com/google/update/UpdateService'),(27,63,'(.*)'),(28,64,'NULL-CONSTANT'),(29,68,'com/waps/OffersWebView'),(30,69,'com/waps/OffersWebView'),(31,71,'com/google/update/Dialog'),(32,72,'com/google/update/Dialog'),(33,73,'com/google/update/Dialog'),(34,74,'com/google/update/Dialog'),(35,78,'com/google/update/UpdateService'),(36,79,'NULL-CONSTANT'),(37,83,'com/gp/background/BackgroundActivity'),(38,87,'com/gp/mahjongg/PlayActivity'),(39,88,'com/google/update/Dialog'),(40,89,'com/google/update/Dialog'),(41,91,'com/waps/OffersWebView'),(42,92,'com/waps/OffersWebView'),(43,93,'com/google/update/UpdateService'),(44,100,'com/waps/OffersWebView'),(45,101,'com/gp/mahjongg/BuilderActivity'),(46,103,'(.*)'),(47,104,'com/google/update/Dialog'),(48,105,'com/google/update/Dialog'),(49,111,'com/waps/OffersWebView'),(50,112,'com/waps/OffersWebView'),(51,116,'com/waps/OffersWebView'),(52,117,'com/gp/mahjongg/SettingsActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,23,2),(2,27,3),(3,28,4),(4,37,6),(5,45,7),(6,46,8),(7,53,9),(8,56,10),(9,57,11),(10,59,12),(11,60,13),(12,61,14),(13,62,15),(14,65,17),(15,86,19),(16,90,20),(17,94,21),(18,96,22),(19,97,23),(20,98,24),(21,99,25),(22,110,26),(23,118,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'TYPEdsada'),(2,4,'MSG'),(3,4,'TYPEdsada'),(4,5,'TYPEdsada'),(5,6,'MSG'),(6,6,'TYPEdsada'),(7,11,'TYPEdsada'),(8,12,'MSG'),(9,12,'TYPEdsada'),(10,17,'TYPEdsada'),(11,18,'MSG'),(12,18,'TYPEdsada'),(13,32,'TYPEdsada'),(14,33,'MSG'),(15,33,'TYPEdsada'),(16,36,'USER_ID'),(17,36,'CLIENT_PACKAGE'),(18,36,'Offers_URL'),(19,36,'URL_PARAMS'),(20,38,'CLIENT_PACKAGE'),(21,38,'URL'),(22,38,'isFinshClose'),(23,40,'USER_ID'),(24,40,'CLIENT_PACKAGE'),(25,40,'Offers_URL'),(26,40,'URL_PARAMS'),(27,41,'restart'),(28,42,'TYPEdsada'),(29,43,'MSG'),(30,43,'TYPEdsada'),(31,68,'UrlPath'),(32,68,'ACTIVITY_FLAG'),(33,68,'isFinshClose'),(34,68,'offers_webview_tag'),(35,69,'Notify_Url_Params'),(36,69,'UrlPath'),(37,69,'ACTIVITY_FLAG'),(38,69,'isFinshClose'),(39,69,'offers_webview_tag'),(40,71,'MSG'),(41,71,'TYPEdsada'),(42,72,'TYPEdsada'),(43,73,'MSG'),(44,73,'TYPEdsada'),(45,74,'TYPEdsada'),(46,87,'GAME_ID'),(47,88,'MSG'),(48,88,'TYPEdsada'),(49,89,'TYPEdsada'),(50,91,'CLIENT_PACKAGE'),(51,91,'URL'),(52,91,'isFinshClose'),(53,91,'offers_webview_tag'),(54,92,'CLIENT_PACKAGE'),(55,92,'URL'),(56,92,'offers_webview_tag'),(57,100,'CLIENT_PACKAGE'),(58,100,'URL'),(59,100,'isFinshClose'),(60,100,'offers_webview_tag'),(61,101,'GAME_ID'),(62,104,'MSG'),(63,104,'TYPEdsada'),(64,105,'TYPEdsada'),(65,111,'UrlPath'),(66,111,'ACTIVITY_FLAG'),(67,111,'isFinshClose'),(68,111,'offers_webview_tag'),(69,112,'Notify_Url_Params'),(70,112,'UrlPath'),(71,112,'ACTIVITY_FLAG'),(72,112,'isFinshClose'),(73,112,'offers_webview_tag'),(74,116,'USER_ID'),(75,116,'CLIENT_PACKAGE'),(76,116,'Offers_URL'),(77,116,'offers_webview_tag'),(78,116,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,1),(11,7,5),(12,8,1),(13,9,4),(14,9,2),(15,9,3),(16,10,1),(17,11,4),(18,11,3),(19,11,2),(20,12,7),(21,13,1),(22,14,2),(23,14,4),(24,14,3),(25,15,7),(26,16,7),(27,17,7),(28,18,7),(29,19,7),(30,20,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,6,1),(5,7,2),(6,8,1),(7,10,1),(8,13,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,7,'market','search',NULL,NULL,NULL,NULL),(2,12,'package',NULL,NULL,NULL,NULL,NULL),(3,15,'package',NULL,NULL,NULL,NULL,NULL),(4,16,'package',NULL,NULL,NULL,NULL,NULL),(5,17,'package',NULL,NULL,NULL,NULL,NULL),(6,18,'package',NULL,NULL,NULL,NULL,NULL),(7,19,'package',NULL,NULL,NULL,NULL,NULL),(8,20,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,28,'application','vnd.android.package-archive'),(2,53,'application','vnd.android.package-archive'),(3,56,'application','vnd.android.package-archive'),(4,57,'application','vnd.android.package-archive'),(5,59,'application','vnd.android.package-archive'),(6,60,'application','vnd.android.package-archive'),(7,61,'application','vnd.android.package-archive'),(8,62,'application','vnd.android.package-archive'),(9,86,'application','vnd.android.package-archive'),(10,94,'application','vnd.android.package-archive'),(11,96,'application','vnd.android.package-archive'),(12,97,'application','vnd.android.package-archive'),(13,98,'application','vnd.android.package-archive'),(14,99,'application','vnd.android.package-archive'),(15,118,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'irdc.F1WPCG'),(2,2,'irdc.F1WPCG'),(3,3,'irdc.F1WPCG'),(4,4,'irdc.F1WPCG'),(5,5,'irdc.F1WPCG'),(6,6,'irdc.F1WPCG'),(7,7,'irdc.F1WPCG'),(8,9,'com.noshufou.android.su'),(9,10,'com.noshufou.android.su'),(10,11,'com.ps.mine'),(11,12,'com.ps.mine'),(12,14,'com.ps.mine'),(13,15,'com.ps.mine'),(14,16,'com.ps.mine'),(15,17,'com.ps.mine'),(16,18,'com.ps.mine'),(17,20,'com.catsw.lovetutor'),(18,19,'com.noshufou.android.su'),(19,21,'com.noshufou.android.su'),(20,22,'com.catsw.lovetutor'),(21,24,'com.tebs3.cuttherope'),(22,25,'com.tebs3.cuttherope'),(23,26,'(.*)'),(24,29,'com.ps.kickmouse'),(25,30,'com.ps.kickmouse'),(26,31,'com.ps.kickmouse'),(27,32,'com.ps.kickmouse'),(28,33,'com.ps.kickmouse'),(29,34,'com.noshufou.android.su'),(30,35,'com.noshufou.android.su'),(31,36,'com.ps.kickmouse'),(32,38,'com.ps.kickmouse'),(33,39,'com.ps.kickmouse'),(34,40,'com.ps.kickmouse'),(35,41,'com.ps.kickmouse'),(36,42,'com.ps.kickmouse'),(37,43,'com.ps.kickmouse'),(38,47,'com.ps.kickmouse'),(39,49,'(.*)'),(40,50,'(.*)'),(41,51,'NULL-CONSTANT'),(42,52,'NULL-CONSTANT'),(43,54,'com.ps.yams'),(44,55,'com.ps.yams'),(45,63,'(.*)'),(46,64,'NULL-CONSTANT'),(47,66,'com.noshufou.android.su'),(48,67,'com.noshufou.android.su'),(49,68,'com.ps.yams'),(50,69,'com.ps.yams'),(51,71,'com.ps.yams'),(52,72,'com.ps.yams'),(53,73,'com.ps.yams'),(54,74,'com.ps.yams'),(55,76,'(.*)'),(56,77,'(.*)'),(57,78,'com.ps.yams'),(58,79,'NULL-CONSTANT'),(59,81,'NULL-CONSTANT'),(60,82,'NULL-CONSTANT'),(61,83,'com.gp.mahjongg'),(62,84,'com.gp.mahjongg'),(63,85,'com.gp.mahjongg'),(64,87,'com.gp.mahjongg'),(65,88,'com.gp.mahjongg'),(66,89,'com.gp.mahjongg'),(67,91,'com.gp.mahjongg'),(68,92,'com.gp.mahjongg'),(69,93,'com.gp.mahjongg'),(70,100,'com.gp.mahjongg'),(71,101,'com.gp.mahjongg'),(72,103,'(.*)'),(73,104,'com.gp.mahjongg'),(74,105,'com.gp.mahjongg'),(75,106,'com.noshufou.android.su'),(76,107,'com.noshufou.android.su'),(77,108,'(.*)'),(78,109,'(.*)'),(79,111,'com.gp.mahjongg'),(80,112,'com.gp.mahjongg'),(81,114,'(.*)'),(82,115,'(.*)'),(83,116,'com.gp.mahjongg'),(84,117,'com.gp.mahjongg');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,6,0),(4,9,0),(5,10,0),(6,15,0),(7,16,0),(8,17,0),(9,26,0),(10,27,0),(11,33,0),(12,34,0),(13,35,0),(14,48,0),(15,49,0),(16,50,0),(17,51,0),(18,52,0),(19,53,0),(20,52,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,2,0,0),(5,3,0,0),(6,3,0,0),(7,5,0,0),(8,6,1,0),(9,7,1,0),(10,7,1,0),(11,8,0,0),(12,8,0,0),(13,9,1,0),(14,10,0,0),(15,11,1,0),(16,11,1,0),(17,12,0,0),(18,12,0,0),(19,13,1,0),(20,14,0,0),(21,13,1,0),(22,15,0,0),(23,16,1,0),(24,17,0,0),(25,18,0,0),(26,19,0,0),(27,20,1,0),(28,21,1,0),(29,23,1,0),(30,23,1,0),(31,24,0,0),(32,25,0,0),(33,25,0,0),(34,26,1,0),(35,26,1,0),(36,27,0,0),(37,28,1,0),(38,29,0,0),(39,30,0,0),(40,31,0,0),(41,32,0,0),(42,33,0,0),(43,33,0,0),(44,34,1,0),(45,35,1,0),(46,35,1,0),(47,36,0,0),(48,37,1,0),(49,37,1,0),(50,37,1,0),(51,37,1,0),(52,37,1,0),(53,38,1,0),(54,39,1,0),(55,39,1,0),(56,40,1,0),(57,41,1,0),(58,41,1,0),(59,41,1,0),(60,41,1,0),(61,41,1,0),(62,41,1,0),(63,43,0,0),(64,44,0,0),(65,45,1,0),(66,46,1,0),(67,46,1,0),(68,47,0,0),(69,47,0,0),(70,49,1,0),(71,50,0,0),(72,50,0,0),(73,51,0,0),(74,51,0,0),(75,52,1,0),(76,52,1,0),(77,52,1,0),(78,53,0,0),(79,54,0,0),(80,56,1,0),(81,56,1,0),(82,56,1,0),(83,57,0,0),(84,58,1,0),(85,58,1,0),(86,59,1,0),(87,60,0,0),(88,61,0,0),(89,61,0,0),(90,62,1,0),(91,63,0,0),(92,63,0,0),(93,64,0,0),(94,65,1,0),(95,65,1,0),(96,65,1,0),(97,65,1,0),(98,65,1,0),(99,65,1,0),(100,66,0,0),(101,67,0,0),(102,68,1,0),(103,69,0,0),(104,70,0,0),(105,70,0,0),(106,71,1,0),(107,71,1,0),(108,72,1,0),(109,72,1,0),(110,73,1,0),(111,76,0,0),(112,76,0,0),(113,77,1,0),(114,77,1,0),(115,77,1,0),(116,78,0,0),(117,79,0,0),(118,80,1,0);
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
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(12,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.CHANGE_WIFI_STATE'),(13,'android.permission.GET_TASKS'),(1,'android.permission.INSTALL_PACKAGES'),(10,'android.permission.INTERNET'),(14,'android.permission.READ_EXTERNAL_STORAGE'),(7,'android.permission.READ_PHONE_STATE'),(8,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(18,'android.permission.SET_ORIENTATION'),(2,'android.permission.SET_WALLPAPER'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS'),(17,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=pub:\"Simple Studio\"',NULL,NULL,NULL),(3,NULL,NULL,'http://www.facebook.com/otothel.apps',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(12,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(22,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'',NULL,NULL,NULL),(27,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,4,1),(2,22,5),(3,42,16),(4,55,18),(5,74,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,3),(14,2,5),(15,2,7),(16,2,9),(17,2,10),(18,2,11),(19,2,12),(20,3,5),(21,3,6),(22,3,7),(23,3,10),(24,3,12),(25,4,6),(26,4,7),(27,4,10),(28,5,3),(29,5,5),(30,5,7),(31,5,9),(32,5,10),(33,5,11),(34,5,12),(35,5,13),(36,6,16),(37,6,3),(38,6,5),(39,6,7),(40,6,9),(41,6,10),(42,6,11),(43,6,12),(44,6,13),(45,6,14),(46,6,15),(47,7,3),(48,7,5),(49,7,6),(50,7,7),(51,7,9),(52,7,10),(53,7,11),(54,7,12),(55,7,13),(56,7,14),(57,7,15),(58,7,17),(59,7,16),(60,7,18);
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

-- Dump completed on 2015-10-09  0:38:24
