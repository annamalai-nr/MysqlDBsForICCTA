-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_112
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.PACKAGE_ADDED'),(5,'android.intent.action.SEARCH'),(2,'android.intent.action.SIG_STR'),(6,'android.intent.action.VIEW'),(7,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(9,'com.google.zxing.client.android.SCAN');
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
INSERT INTO `Applications` VALUES (1,'com.ps.mine',17),(2,'com.ps.ddp',14),(3,'com.ps.mine',10),(4,'com.safetest.pvz',10),(5,'com.gp.solitaire',456),(6,'com.livegame.android.shelves',8),(7,'com.gp.zoo',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(2,1,'com.ps.mine.Main'),(3,1,'com.google.update.Dialog'),(4,1,'com.google.update.UpdateService'),(5,1,'com.google.update.Receiver'),(6,2,'com.ps.ddp.MainActivity'),(7,2,'com.ps.ddp.DemoApp'),(8,2,'com.ps.ddp.GameActivity'),(9,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(10,2,'com.google.update.Dialog'),(11,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(12,2,'com.waps.OffersWebView'),(13,3,'com.ps.mine.Main'),(14,2,'com.google.update.UpdateService'),(15,2,'com.google.update.Receiver'),(16,4,'com.safetest.pvz.pvz'),(17,3,'com.google.update.Dialog'),(18,3,'com.waps.OffersWebView'),(19,3,'com.google.update.UpdateService'),(20,4,'com.safetest.pvz.ShowGame'),(21,3,'com.google.update.Receiver'),(22,4,'com.safetest.pvz.End'),(23,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(24,4,'com.safetest.pvz.ShowTips'),(25,4,'com.safetest.pvz.UpdateService'),(26,4,'com.safetest.pvz.Receiver'),(27,5,'com.gp.solitaire.Solitaire'),(28,5,'com.google.update.Dialog'),(29,6,'com.livegame.android.shelves.activity.ShelvesActivity'),(30,5,'cn.domob.android.ads.DomobActivity'),(31,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,5,'com.waps.OffersWebView'),(33,5,'com.google.update.UpdateService'),(34,5,'com.google.update.Receiver'),(35,7,'com.gp.zoo.SplashActivity'),(36,6,'com.livegame.android.shelves.activity.AddBookActivity'),(37,6,'com.livegame.android.shelves.activity.BookDetailsActivity'),(38,7,'com.gp.zoo.MainMenuActivity'),(39,7,'com.gp.zoo.CharacterCreationActivity'),(40,7,'com.gp.zoo.MainMapActivity'),(41,6,'com.livegame.android.shelves.activity.SettingsActivity'),(42,7,'com.gp.zoo.HallActivity'),(43,6,'com.google.ads.AdActivity'),(44,7,'com.gp.zoo.ExamActivity'),(45,6,'com.vpon.adon.android.WebInApp'),(46,7,'com.gp.zoo.StoreActivity'),(47,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(48,7,'com.gp.zoo.StoreDetailActivity'),(49,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(50,7,'com.gp.zoo.BagActivity'),(51,6,'com.waps.OffersWebView'),(52,7,'com.gp.zoo.SettingsActivity'),(53,6,'com.google.update.Dialog'),(54,7,'com.gp.zoo.CreditActivity'),(55,1,'com.google.update.Dialog$1'),(56,6,'com.google.update.UpdateService'),(57,7,'com.gp.zoo.BadgeActivity'),(58,6,'com.google.update.Receiver'),(59,7,'com.gp.zoo.PhotoActivity'),(60,7,'com.gp.zoo.CircusActivity'),(61,6,'com.livegame.android.shelves.provider.BooksProvider'),(62,7,'com.gp.zoo.HelpActivity'),(63,7,'cn.domob.android.ads.DomobActivity'),(64,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(65,1,'com.google.update.UpdateService$AA'),(66,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(67,7,'com.google.update.Dialog'),(68,7,'com.waps.OffersWebView'),(69,7,'com.google.update.UpdateService'),(70,7,'com.google.update.Receiver'),(71,1,'com.google.update.Dialog$2'),(72,4,'com.safetest.pvz.ShowTips$1'),(73,4,'com.safetest.pvz.End$1'),(74,4,'com.safetest.pvz.pvz$1'),(75,2,'com.waps.ac'),(76,3,'com.google.update.UpdateService$AA'),(77,2,'com.google.update.UpdateService$AA'),(78,3,'com.waps.z'),(79,3,'com.google.update.Dialog$1'),(80,3,'com.waps.ac'),(81,2,'com.waps.s'),(82,3,'com.google.update.Dialog$2'),(83,2,'com.google.update.Dialog$1'),(84,3,'com.waps.aa'),(85,3,'com.waps.o'),(86,3,'com.waps.q'),(87,2,'com.waps.AppConnect'),(88,2,'com.waps.z'),(89,6,'com.google.update.UpdateService$AA'),(90,2,'com.waps.aa'),(91,6,'com.livegame.android.shelves.provider.BooksManager'),(92,2,'com.waps.q'),(93,2,'com.google.update.Dialog$2'),(94,5,'com.google.update.UpdateService$AA'),(95,2,'com.waps.o'),(96,5,'com.waps.q'),(97,5,'com.waps.aa'),(98,6,'com.google.update.Dialog$1'),(99,6,'com.waps.AppConnect'),(100,5,'cn.domob.android.ads.DomobAdManager'),(101,5,'cn.domob.android.ads.DomobActionReceiver'),(102,5,'com.waps.o'),(103,5,'com.waps.z'),(104,6,'com.livegame.android.shelves.provider.BooksUpdater'),(105,6,'com.waps.m'),(106,5,'com.google.update.Dialog$1'),(107,6,'com.waps.k'),(108,6,'com.google.update.Dialog$2'),(109,5,'com.google.update.Dialog$2'),(110,5,'cn.domob.android.ads.DomobAdEngine$2'),(111,5,'com.waps.ac'),(112,5,'cn.domob.android.ads.i$6'),(113,5,'cn.domob.android.ads.i');
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
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'ST_MY_PID'),(2,1,'shouldMakeOverlayTransparent'),(3,1,'shouldResizeOverlay'),(4,1,'shouldShowBottomBar'),(5,1,'shouldEnableBottomBar'),(6,3,'TYPEdsada'),(7,1,'shouldShowTitlebar'),(8,3,'MSG'),(9,4,'ST_START_DELAY'),(10,1,'transitionTime'),(11,1,'overlayTransition'),(12,1,'url'),(13,1,'overlayTitle'),(14,23,'overlayTitle'),(15,24,'MM'),(16,25,'SAFE_START'),(17,23,'shouldShowBottomBar'),(18,25,'SAFE_PID'),(19,23,'shouldMakeOverlayTransparent'),(20,23,'shouldShowTitlebar'),(21,18,'offers_webview_tag'),(22,23,'url'),(23,11,'shouldShowTitlebar'),(24,23,'shouldEnableBottomBar'),(25,13,'APP_ID'),(26,23,'shouldResizeOverlay'),(27,18,'APP_ID'),(28,23,'transitionTime'),(29,17,'TYPEdsada'),(30,23,'overlayTransition'),(31,11,'shouldShowBottomBar'),(32,11,'overlayTitle'),(33,12,'UrlPath'),(34,13,'WAPS_ID'),(35,9,'shouldShowTitlebar'),(36,18,'WAPS_ID'),(37,6,'CLIENT_PACKAGE'),(38,11,'overlayTransition'),(39,12,'CLIENT_PACKAGE'),(40,13,'DEVICE_ID'),(41,14,'CLIENT_PACKAGE'),(42,18,'DEVICE_ID'),(43,7,'CLIENT_PACKAGE'),(44,13,'CLIENT_PACKAGE'),(45,9,'CLIENT_PACKAGE'),(46,18,'CLIENT_PACKAGE'),(47,17,'MSG'),(48,18,'UrlPath'),(49,18,'URL'),(50,9,'shouldEnableBottomBar'),(51,12,'URL'),(52,18,'USER_ID'),(53,18,'Offers_URL'),(54,18,'Notify_Url_Params'),(55,6,'WAPS_PID'),(56,12,'WAPS_PID'),(57,14,'WAPS_PID'),(58,7,'WAPS_PID'),(59,9,'WAPS_PID'),(60,12,'SHWO_FLAG'),(61,12,'Offers_URL'),(62,14,'ST_START_DELAY'),(63,10,'TYPEdsada'),(64,9,'overlayTransition'),(65,12,'offers_webview_tag'),(66,6,'WAPS_ID'),(67,18,'SHWO_FLAG'),(68,12,'WAPS_ID'),(69,19,'ST_START_DELAY'),(70,14,'WAPS_ID'),(71,18,'URL_PARAMS'),(72,7,'WAPS_ID'),(73,11,'shouldMakeOverlayTransparent'),(74,9,'WAPS_ID'),(75,11,'shouldResizeOverlay'),(76,12,'isFinshClose'),(77,12,'Notify_Url_Params'),(78,9,'shouldShowBottomBar'),(79,11,'shouldEnableBottomBar'),(80,13,'WAPS_PID'),(81,18,'WAPS_PID'),(82,11,'url'),(83,19,'ST_MY_PID'),(84,6,'APP_ID'),(85,12,'APP_ID'),(86,14,'APP_ID'),(87,7,'APP_ID'),(88,18,'isFinshClose'),(89,9,'APP_ID'),(90,9,'shouldResizeOverlay'),(91,18,'Notify_Id'),(92,9,'shouldMakeOverlayTransparent'),(93,9,'overlayTitle'),(94,18,'ACTIVITY_FLAG'),(95,11,'transitionTime'),(96,10,'MSG'),(97,49,'url'),(98,12,'ACTIVITY_FLAG'),(99,29,'WAPS_ID'),(100,53,'MSG'),(101,49,'shouldEnableBottomBar'),(102,12,'URL_PARAMS'),(103,12,'Notify_Id'),(104,37,'shelves.extra.book_id'),(105,29,'DEVICE_ID'),(106,36,'shelves.search.book'),(107,51,'URL'),(108,29,'CLIENT_PACKAGE'),(109,49,'shouldShowTitlebar'),(110,49,'shouldShowBottomBar'),(111,12,'USER_ID'),(112,36,'shelves.add.book'),(113,53,'TYPEdsada'),(114,29,'SCAN_RESULT'),(115,28,'TYPEdsada'),(116,55,'ST_START_DELAY'),(117,49,'overlayTransition'),(118,47,'isTestMode'),(119,55,'ST_MY_PID'),(120,51,'USER_ID'),(121,28,'MSG'),(122,9,'transitionTime'),(123,9,'url'),(124,47,'Adwo_PID'),(125,14,'ST_MY_PID'),(126,51,'CLIENT_PACKAGE'),(127,49,'transitionTime'),(128,29,'shelves.import.inprogress'),(129,33,'ST_START_DELAY'),(130,29,'shelves.import.books'),(131,31,'shouldShowBottomBar'),(132,31,'shouldResizeOverlay'),(133,6,'DEVICE_ID'),(134,45,'url'),(135,32,'URL'),(136,12,'DEVICE_ID'),(137,31,'shouldMakeOverlayTransparent'),(138,29,'shelves.import.index'),(139,14,'DEVICE_ID'),(140,51,'Offers_URL'),(141,7,'DEVICE_ID'),(142,29,'shelves.add.book'),(143,9,'DEVICE_ID'),(144,32,'WAPS_ID'),(145,27,'WAPS_ID'),(146,29,'shelves.add.inprogress'),(147,29,'APP_ID'),(148,32,'Notify_Url_Params'),(149,49,'overlayTitle'),(150,32,'CLIENT_PACKAGE'),(151,51,'URL_PARAMS'),(152,27,'CLIENT_PACKAGE'),(153,32,'Offers_URL'),(154,31,'url'),(155,31,'shouldShowTitlebar'),(156,32,'UrlPath'),(157,31,'shouldEnableBottomBar'),(158,49,'shouldMakeOverlayTransparent'),(159,29,'SCAN_RESULT_FORMAT'),(160,32,'isFinshClose'),(161,32,'APP_ID'),(162,27,'APP_ID'),(163,36,'shelves.add.bookToAdd'),(164,30,'appId'),(165,51,'isFinshClose'),(166,32,'DEVICE_ID'),(167,49,'shouldResizeOverlay'),(168,27,'DEVICE_ID'),(169,45,'adWidth'),(170,32,'URL_PARAMS'),(171,29,'query'),(172,32,'offers_webview_tag'),(173,33,'DOMOB_TEST_MODE'),(174,27,'DOMOB_TEST_MODE'),(175,31,'DOMOB_TEST_MODE'),(176,36,'shelves.search.inprogress'),(177,29,'WAPS_PID'),(178,36,'shelves.add.inprogress'),(179,33,'ST_MY_PID'),(180,30,'actType'),(181,32,'SHWO_FLAG'),(182,32,'Notify_Id'),(183,31,'transitionTime'),(184,32,'WAPS_PID'),(185,27,'WAPS_PID'),(186,32,'ACTIVITY_FLAG'),(187,33,'DOMOB_PID'),(188,27,'DOMOB_PID'),(189,31,'DOMOB_PID'),(190,31,'overlayTitle'),(191,30,'appName'),(192,33,'DOMOB_ALLOW_LOCATION'),(193,27,'DOMOB_ALLOW_LOCATION'),(194,31,'DOMOB_ALLOW_LOCATION'),(195,32,'USER_ID'),(196,31,'overlayTransition');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,56,'s',0,NULL,NULL),(56,57,'a',0,NULL,NULL),(57,58,'r',1,NULL,NULL),(58,59,'a',0,NULL,NULL),(59,60,'a',0,NULL,NULL),(60,61,'p',0,NULL,NULL),(61,62,'a',0,NULL,NULL),(62,63,'a',0,NULL,NULL),(63,64,'a',0,NULL,NULL),(64,66,'a',0,NULL,NULL),(65,67,'a',0,NULL,NULL),(66,68,'a',0,NULL,NULL),(67,69,'s',0,NULL,NULL),(68,70,'r',1,NULL,NULL),(69,86,'r',1,NULL,NULL),(70,92,'r',1,NULL,NULL),(71,96,'r',1,NULL,NULL),(72,101,'r',1,NULL,NULL),(73,105,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,3),(3,3,4),(4,4,4),(5,5,4),(6,6,3),(7,7,26),(8,8,24),(9,9,22),(10,10,16),(11,11,16),(12,12,12),(13,13,19),(14,14,14),(15,15,18),(16,16,14),(17,17,21),(18,18,18),(19,19,15),(20,20,17),(21,21,6),(22,22,18),(23,23,18),(24,24,6),(25,25,9),(26,25,14),(27,25,7),(28,26,17),(29,27,14),(30,28,19),(31,29,19),(32,30,10),(33,31,18),(34,32,6),(35,33,7),(36,33,9),(37,33,14),(38,34,7),(39,34,9),(40,34,14),(41,35,18),(42,36,12),(43,37,7),(44,38,12),(45,39,55),(46,40,7),(47,41,29),(48,42,12),(49,43,60),(50,44,29),(51,45,37),(52,46,6),(53,47,29),(54,48,6),(55,49,29),(56,49,36),(57,50,29),(58,51,10),(59,52,33),(60,53,12),(61,54,29),(62,55,29),(63,56,12),(64,57,60),(65,58,32),(66,59,53),(67,60,29),(68,61,31),(69,61,33),(70,61,27),(71,62,29),(72,63,29),(73,64,55),(74,65,32),(75,66,33),(76,67,57),(77,68,55),(78,69,32),(79,70,29),(80,71,33),(81,72,29),(82,73,28),(83,74,51),(84,75,32),(85,76,53),(86,77,37),(87,77,29),(88,78,28),(89,79,27),(90,79,31),(91,79,33),(92,80,32),(93,81,32),(94,82,33),(95,82,31),(96,82,27),(97,83,31),(98,83,33),(99,83,27),(100,84,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(2,55,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(3,65,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(4,4,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(5,4,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(6,71,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(7,26,'<com.safetest.pvz.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(8,72,'<com.safetest.pvz.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(9,73,'<com.safetest.pvz.End$1: void onClick(android.view.View)>',7,'a',NULL),(10,16,'<com.safetest.pvz.pvz: void onStart()>',5,'s',NULL),(11,74,'<com.safetest.pvz.pvz$1: void onClick(android.view.View)>',7,'a',NULL),(12,75,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(13,76,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(14,14,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(15,18,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(16,77,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(17,21,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(18,78,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(19,15,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(20,79,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(21,6,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',22,'a',NULL),(22,80,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(23,18,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(24,6,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',40,'a',NULL),(25,81,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(26,82,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(27,14,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(28,19,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(29,19,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(30,83,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(31,84,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(32,6,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',29,'a',NULL),(33,81,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(34,81,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(35,85,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(36,12,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(37,87,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(38,88,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(39,89,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(40,87,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(41,29,'<com.livegame.android.shelves.activity.ShelvesActivity: void onBuy(com.livegame.android.shelves.provider.BooksStore$Book)>',6,'a',NULL),(42,90,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(43,61,'<com.livegame.android.shelves.provider.BooksProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',31,'p',0),(44,29,'<com.livegame.android.shelves.activity.ShelvesActivity: void startScan(int)>',5,'a',NULL),(45,91,'<com.livegame.android.shelves.provider.BooksManager: com.livegame.android.shelves.provider.BooksStore$Book findBook(android.content.ContentResolver,android.net.Uri)>',4,'p',0),(46,6,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(47,37,'<com.livegame.android.shelves.activity.BookDetailsActivity: void show(android.content.Context,java.lang.String)>',5,'a',NULL),(48,6,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(49,91,'<com.livegame.android.shelves.provider.BooksManager: boolean bookExists(android.content.ContentResolver,java.lang.String)>',10,'p',NULL),(50,29,'<com.livegame.android.shelves.activity.ShelvesActivity: void handleSearchQuery(android.content.Intent)>',14,'a',NULL),(51,93,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(52,94,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(53,95,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(54,91,'<com.livegame.android.shelves.provider.BooksManager: boolean deleteBook(android.content.ContentResolver,java.lang.String)>',6,'p',NULL),(55,91,'<com.livegame.android.shelves.provider.BooksManager: java.lang.String findBookId(android.content.ContentResolver,java.lang.String)>',11,'p',NULL),(56,12,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(57,61,'<com.livegame.android.shelves.provider.BooksProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(58,97,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(59,98,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(60,99,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(61,100,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(62,36,'<com.livegame.android.shelves.activity.AddBookActivity: void show(android.content.Context)>',3,'a',NULL),(63,29,'<com.livegame.android.shelves.activity.ShelvesActivity: void onNewIntent(android.content.Intent)>',15,'a',NULL),(64,56,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(65,102,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(66,33,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(67,58,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(68,56,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(69,103,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(70,104,'<com.livegame.android.shelves.provider.BooksUpdater: void run()>',50,'p',NULL),(71,33,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(72,41,'<com.livegame.android.shelves.activity.SettingsActivity: void show(android.content.Context)>',3,'a',NULL),(73,106,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(74,107,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(75,32,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(76,108,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(77,91,'<com.livegame.android.shelves.provider.BooksManager: com.livegame.android.shelves.provider.BooksStore$Book findBook(android.content.ContentResolver,java.lang.String)>',9,'p',NULL),(78,109,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(79,110,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(80,32,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(81,111,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(82,112,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(83,113,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(84,34,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL);
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
INSERT INTO `IActions` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,1),(5,10,7),(6,12,1),(7,13,1),(8,18,1),(9,20,1),(10,23,1),(11,25,1),(12,26,6),(13,28,1),(14,29,1),(15,34,1),(16,35,1),(17,37,7),(18,43,1),(19,45,1),(20,48,6),(21,50,6),(22,52,1),(23,53,6),(24,54,1),(25,55,1),(26,56,1),(27,58,1),(28,59,1),(29,61,6),(30,62,1),(31,63,1),(32,65,6),(33,68,9),(34,72,6),(35,73,7),(36,74,1),(37,75,6),(38,76,1),(39,79,1),(40,80,1),(41,84,6),(42,86,6),(43,92,6),(44,97,1),(45,98,6),(46,99,1),(47,101,7),(48,102,7),(49,104,1),(50,105,1),(51,107,6),(52,109,6),(53,110,6),(54,111,6),(55,112,6),(56,113,6);
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
INSERT INTO `ICategories` VALUES (1,2,1),(2,3,3),(3,4,3),(4,5,1),(5,12,1),(6,13,3),(7,18,3),(8,20,1),(9,23,3),(10,25,1),(11,28,1),(12,29,3),(13,34,1),(14,35,3),(15,43,1),(16,45,3),(17,52,1),(18,54,3),(19,55,1),(20,56,3),(21,58,1),(22,59,3),(23,62,3),(24,63,1),(25,74,1),(26,76,3),(27,79,1),(28,80,3),(29,97,1),(30,99,3),(31,104,1),(32,105,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/update/UpdateService'),(2,6,'com/google/update/Dialog'),(3,7,'com/google/update/Dialog'),(4,8,'com/google/update/Dialog'),(5,9,'com/google/update/Dialog'),(6,11,'com/safetest/pvz/UpdateService'),(7,14,'com/safetest/pvz/ShowGame'),(8,15,'com/safetest/pvz/UpdateService'),(9,16,'com/safetest/pvz/ShowGame'),(10,17,'NULL-CONSTANT'),(11,19,'com/google/update/Dialog'),(12,21,'com/google/update/Dialog'),(13,22,'(.*)'),(14,24,'com/google/update/UpdateService'),(15,27,'com/google/update/UpdateService'),(16,31,'NULL-CONSTANT'),(17,30,'com/ps/ddp/GameActivity'),(18,33,'com/ps/ddp/DemoApp'),(19,36,'com/waps/OffersWebView'),(20,38,'com/google/update/Dialog'),(21,39,'com/google/update/Dialog'),(22,40,'com/google/update/Dialog'),(23,41,'com/google/update/Dialog'),(24,42,'com/google/update/Dialog'),(25,44,'com/google/update/Dialog'),(26,47,'com/ps/ddp/GameActivity'),(27,46,'com/waps/OffersWebView'),(28,49,'com/waps/OffersWebView'),(29,60,'com/waps/OffersWebView'),(30,64,'com/waps/OffersWebView'),(31,66,'com/waps/OffersWebView'),(32,67,'com/waps/OffersWebView'),(33,69,'com/ps/ddp/GameActivity'),(34,70,'com/livegame/android/shelves/activity/BookDetailsActivity'),(35,71,'com/ps/ddp/GameActivity'),(36,77,'(.*)'),(37,78,'com/waps/OffersWebView'),(38,81,'com/waps/OffersWebView'),(39,82,'com/waps/OffersWebView'),(40,83,'com/livegame/android/shelves/activity/AddBookActivity'),(41,85,'com/google/update/Dialog'),(42,87,'com/google/update/Dialog'),(43,88,'com/google/update/Dialog'),(44,89,'com/google/update/UpdateService'),(45,90,'com/google/update/Dialog'),(46,91,'com/google/update/Dialog'),(47,93,'com/google/update/Dialog'),(48,94,'com/google/update/Dialog'),(49,95,'com/livegame/android/shelves/activity/SettingsActivity'),(50,96,'com/google/update/Dialog'),(51,100,'(.*)'),(52,106,'NULL-CONSTANT'),(53,114,'com/google/update/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,26,1),(2,48,2),(3,50,3),(4,53,4),(5,61,5),(6,65,6),(7,72,8),(8,75,10),(9,84,13),(10,86,14),(11,92,15),(12,98,17),(13,107,19),(14,109,20),(15,110,21),(16,111,22),(17,112,23),(18,113,24);
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
INSERT INTO `IExtras` VALUES (1,6,'TYPEdsada'),(2,7,'MSG'),(3,7,'TYPEdsada'),(4,8,'TYPEdsada'),(5,9,'MSG'),(6,9,'TYPEdsada'),(7,19,'TYPEdsada'),(8,21,'MSG'),(9,21,'TYPEdsada'),(10,30,'type'),(11,36,'CLIENT_PACKAGE'),(12,36,'URL'),(13,36,'isFinshClose'),(14,36,'offers_webview_tag'),(15,38,'TYPEdsada'),(16,39,'TYPEdsada'),(17,40,'MSG'),(18,40,'TYPEdsada'),(19,41,'MSG'),(20,41,'TYPEdsada'),(21,42,'TYPEdsada'),(22,44,'MSG'),(23,44,'TYPEdsada'),(24,46,'UrlPath'),(25,47,'type'),(26,46,'ACTIVITY_FLAG'),(27,46,'isFinshClose'),(28,46,'offers_webview_tag'),(29,49,'Notify_Url_Params'),(30,49,'UrlPath'),(31,49,'ACTIVITY_FLAG'),(32,49,'isFinshClose'),(33,49,'offers_webview_tag'),(34,60,'USER_ID'),(35,60,'CLIENT_PACKAGE'),(36,60,'Offers_URL'),(37,60,'offers_webview_tag'),(38,60,'URL_PARAMS'),(39,64,'USER_ID'),(40,64,'CLIENT_PACKAGE'),(41,64,'Offers_URL'),(42,64,'offers_webview_tag'),(43,64,'URL_PARAMS'),(44,66,'UrlPath'),(45,66,'ACTIVITY_FLAG'),(46,66,'isFinshClose'),(47,66,'offers_webview_tag'),(48,67,'Notify_Url_Params'),(49,67,'UrlPath'),(50,67,'ACTIVITY_FLAG'),(51,67,'isFinshClose'),(52,68,'SCAN_MODE'),(53,67,'offers_webview_tag'),(54,69,'type'),(55,70,'shelves.extra.book_id'),(56,71,'type'),(57,78,'UrlPath'),(58,78,'ACTIVITY_FLAG'),(59,78,'isFinshClose'),(60,78,'offers_webview_tag'),(61,81,'Notify_Url_Params'),(62,81,'UrlPath'),(63,81,'ACTIVITY_FLAG'),(64,81,'isFinshClose'),(65,81,'offers_webview_tag'),(66,82,'USER_ID'),(67,82,'CLIENT_PACKAGE'),(68,82,'Offers_URL'),(69,82,'URL_PARAMS'),(70,85,'MSG'),(71,85,'TYPEdsada'),(72,87,'TYPEdsada'),(73,88,'MSG'),(74,88,'TYPEdsada'),(75,90,'TYPEdsada'),(76,91,'MSG'),(77,91,'TYPEdsada'),(78,93,'TYPEdsada'),(79,94,'MSG'),(80,94,'TYPEdsada'),(81,96,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,1),(7,5,3),(8,5,2),(9,5,4),(10,6,1),(11,7,2),(12,7,3),(13,7,4),(14,8,2),(15,8,3),(16,8,4),(17,9,1),(18,10,1),(19,11,5),(20,12,4),(21,12,3),(22,12,2),(23,13,1),(24,14,6),(25,15,4),(26,15,2),(27,15,3),(28,16,2),(29,16,3),(30,16,4),(31,17,8),(32,18,8),(33,19,8),(34,20,8),(35,21,8);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,6,1),(5,9,1),(6,10,1),(7,11,2),(8,13,1),(9,14,2);
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
INSERT INTO `IFData` VALUES (1,14,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.com.livegame.provider.shelves'),(2,17,'package',NULL,NULL,NULL,NULL,NULL),(3,18,'package',NULL,NULL,NULL,NULL,NULL),(4,19,'package',NULL,NULL,NULL,NULL,NULL),(5,20,'package',NULL,NULL,NULL,NULL,NULL),(6,21,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,26,'application','vnd.android.package-archive'),(2,53,'application','vnd.android.package-archive'),(3,61,'application','vnd.android.package-archive'),(4,75,'application','vnd.android.package-archive'),(5,86,'application','vnd.android.package-archive'),(6,92,'application','vnd.android.package-archive'),(7,98,'application','vnd.android.package-archive'),(8,107,'application','vnd.android.package-archive'),(9,109,'application','vnd.android.package-archive'),(10,110,'application','vnd.android.package-archive'),(11,111,'application','vnd.android.package-archive'),(12,112,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.ps.mine'),(2,2,'com.noshufou.android.su'),(3,3,'com.noshufou.android.su'),(4,4,'com.ps.mine'),(5,5,'com.ps.mine'),(6,6,'com.ps.mine'),(7,7,'com.ps.mine'),(8,8,'com.ps.mine'),(9,9,'com.ps.mine'),(10,11,'com.safetest.pvz'),(11,12,'com.noshufou.android.su'),(12,13,'com.noshufou.android.su'),(13,14,'com.safetest.pvz'),(14,15,'com.safetest.pvz'),(15,16,'com.safetest.pvz'),(16,17,'NULL-CONSTANT'),(17,18,'com.ps.mine'),(18,19,'com.ps.ddp'),(19,20,'com.ps.mine'),(20,21,'com.ps.ddp'),(21,22,'(.*)'),(22,23,'com.ps.ddp'),(23,24,'com.ps.mine'),(24,25,'com.ps.ddp'),(25,27,'com.ps.ddp'),(26,28,'com.noshufou.android.su'),(27,29,'com.noshufou.android.su'),(28,31,'NULL-CONSTANT'),(29,30,'com.ps.ddp'),(30,33,'com.ps.ddp'),(31,34,'(.*)'),(32,35,'(.*)'),(33,36,'com.ps.ddp'),(34,38,'com.ps.ddp'),(35,39,'com.ps.mine'),(36,40,'com.ps.ddp'),(37,41,'com.ps.mine'),(38,42,'com.ps.mine'),(39,43,'com.noshufou.android.su'),(40,45,'com.noshufou.android.su'),(41,44,'com.ps.mine'),(42,47,'com.ps.ddp'),(43,46,'com.ps.mine'),(44,49,'com.ps.mine'),(45,52,'(.*)'),(46,54,'(.*)'),(47,55,'NULL-CONSTANT'),(48,56,'NULL-CONSTANT'),(49,58,'(.*)'),(50,59,'(.*)'),(51,60,'com.ps.ddp'),(52,62,'com.livegame.android.shelves'),(53,63,'com.livegame.android.shelves'),(54,64,'com.ps.ddp'),(55,66,'com.ps.ddp'),(56,67,'com.ps.ddp'),(57,69,'com.ps.ddp'),(58,70,'com.livegame.android.shelves'),(59,71,'com.ps.ddp'),(60,74,'com.gp.solitaire'),(61,76,'com.gp.solitaire'),(62,77,'(.*)'),(63,79,'com.noshufou.android.su'),(64,78,'com.gp.solitaire'),(65,80,'com.noshufou.android.su'),(66,81,'com.gp.solitaire'),(67,82,'com.livegame.android.shelves'),(68,83,'com.livegame.android.shelves'),(69,85,'com.livegame.android.shelves'),(70,87,'com.livegame.android.shelves'),(71,88,'com.gp.solitaire'),(72,89,'com.livegame.android.shelves'),(73,90,'com.gp.solitaire'),(74,91,'com.livegame.android.shelves'),(75,93,'com.livegame.android.shelves'),(76,94,'com.gp.solitaire'),(77,95,'com.livegame.android.shelves'),(78,96,'com.gp.solitaire'),(79,97,'com.noshufou.android.su'),(80,99,'com.noshufou.android.su'),(81,100,'(.*)'),(82,104,'(.*)'),(83,105,'(.*)'),(84,106,'NULL-CONSTANT'),(85,114,'com.gp.solitaire');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,5,0),(3,6,0),(4,13,0),(5,15,0),(6,16,0),(7,21,0),(8,26,0),(9,27,0),(10,29,0),(11,29,0),(12,34,0),(13,35,0),(14,37,0),(15,57,0),(16,68,0),(17,69,0),(18,70,0),(19,71,0),(20,72,0),(21,73,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,3,1,0),(5,3,1,0),(6,4,0,0),(7,4,0,0),(8,5,0,0),(9,5,0,0),(10,6,1,0),(11,7,0,0),(12,8,1,0),(13,8,1,0),(14,9,0,0),(15,10,0,0),(16,11,0,0),(17,12,0,0),(18,13,1,0),(19,14,0,0),(20,13,1,0),(21,14,0,0),(22,15,0,0),(23,16,1,0),(24,17,0,0),(25,16,1,0),(26,18,1,0),(27,19,0,0),(28,20,1,0),(29,20,1,0),(30,21,0,0),(31,22,0,0),(32,23,1,0),(33,24,0,0),(34,23,1,0),(35,23,1,0),(36,25,0,0),(37,26,1,0),(38,27,0,0),(39,28,0,0),(40,27,0,0),(41,28,0,0),(42,29,0,0),(43,30,1,0),(44,29,0,0),(45,30,1,0),(46,31,0,0),(47,32,0,0),(48,33,1,0),(49,31,0,0),(50,33,1,0),(51,34,1,0),(52,34,1,0),(53,35,1,0),(54,34,1,0),(55,34,1,0),(56,34,1,0),(57,36,1,0),(58,36,1,0),(59,36,1,0),(60,37,0,0),(61,38,1,0),(62,39,1,0),(63,39,1,0),(64,40,0,0),(65,41,1,0),(66,42,0,0),(67,42,0,0),(68,44,1,0),(69,46,0,0),(70,47,0,0),(71,48,0,0),(72,50,1,0),(73,51,1,0),(74,52,1,0),(75,53,1,0),(76,52,1,0),(77,56,0,0),(78,58,0,0),(79,59,1,0),(80,59,1,0),(81,58,0,0),(82,60,0,0),(83,62,0,0),(84,63,1,0),(85,64,0,0),(86,65,1,0),(87,64,0,0),(88,66,0,0),(89,67,0,0),(90,66,0,0),(91,68,0,0),(92,69,1,0),(93,68,0,0),(94,71,0,0),(95,72,0,0),(96,71,0,0),(97,73,1,0),(98,74,1,0),(99,73,1,0),(100,75,0,0),(101,76,1,0),(102,78,1,0),(103,80,1,0),(104,80,1,0),(105,80,1,0),(106,81,0,0),(107,82,1,0),(108,82,1,0),(109,82,1,0),(110,82,1,0),(111,82,1,0),(112,82,1,0),(113,83,1,0),(114,84,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'shelves');
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
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(15,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(13,'android.permission.GET_TASKS'),(12,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(11,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(8,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(18,'android.permission.RECORD_AUDIO'),(16,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,60,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(8,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(9,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(13,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(20,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,49,7),(2,54,9),(3,55,11),(4,61,12),(5,70,16),(6,77,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,3,1),(16,3,2),(17,3,3),(18,3,4),(19,3,5),(20,3,6),(21,3,7),(22,4,1),(23,4,3),(24,4,6),(25,4,7),(26,4,8),(27,4,9),(28,4,10),(29,5,1),(30,5,2),(31,5,3),(32,5,4),(33,5,5),(34,5,6),(35,5,7),(36,5,8),(37,6,1),(38,5,9),(39,6,3),(40,5,10),(41,6,4),(42,5,11),(43,6,5),(44,5,12),(45,6,6),(46,5,13),(47,6,7),(48,5,14),(49,6,8),(50,5,15),(51,6,9),(52,6,10),(53,7,1),(54,6,11),(55,7,2),(56,7,3),(57,6,12),(58,7,4),(59,6,13),(60,7,5),(61,6,14),(62,6,15),(63,7,6),(64,7,7),(65,7,10),(66,7,11),(67,7,13),(68,7,14),(69,7,15),(70,7,17),(71,7,16),(72,7,18);
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

-- Dump completed on 2015-10-09  0:38:06
