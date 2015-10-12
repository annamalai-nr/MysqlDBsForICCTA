-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_113
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (11,'(.*)'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.PACKAGE_ADDED'),(7,'android.intent.action.SCREEN_OFF'),(8,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.SIG_STR'),(9,'android.intent.action.VIEW'),(6,'com.adwo.android.snake.MUSIC'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.ps.blackwhite',13),(2,'com.cosina.game.activity',7),(3,'com.cosina.game.activity',9),(4,'com.safetest.pvz',14),(5,'com.gp.monolith',13),(6,'com.adwo.android.snake',8),(7,'com.ninegriddiary_beta',1);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(4,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.default');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(2,1,'com.ps.blackwhite.BlackWhite'),(3,1,'com.google.update.Dialog'),(4,1,'com.google.update.UpdateService'),(5,1,'com.google.update.Receiver'),(6,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(7,2,'com.cosina.game.activity.StartUpActivity'),(8,2,'com.google.update.Dialog'),(9,2,'com.google.update.UpdateService'),(10,2,'com.google.update.Receiver'),(11,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(12,3,'com.cosina.game.activity.StartUpActivity'),(13,3,'com.google.update.Dialog'),(14,3,'com.google.update.UpdateService'),(15,3,'com.google.update.Receiver'),(16,4,'com.safetest.pvz.pvz'),(17,4,'com.safetest.pvz.ShowGame'),(18,4,'com.safetest.pvz.End'),(19,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(20,4,'com.safetest.pvz.ShowTips'),(21,4,'com.safetest.pvz.UpdateService'),(22,4,'com.safetest.pvz.Receiver'),(23,5,'com.gp.monolith.Monolith'),(24,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(25,5,'com.google.update.Dialog'),(26,5,'cn.domob.android.ads.DomobActivity'),(27,5,'com.google.update.UpdateService'),(28,5,'com.google.update.Receiver'),(29,6,'com.adwo.android.snake.Snake'),(30,6,'com.adwo.android.snake.begin'),(31,6,'com.adwo.android.snake.editname'),(32,6,'com.adwo.android.snake.queryActivity'),(33,6,'com.adwo.android.snake.orderActivity'),(34,6,'com.adwo.android.snake.Music'),(35,6,'com.google.ads.AdActivity'),(36,6,'com.vpon.adon.android.WebInApp'),(37,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(38,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(39,1,'com.google.update.Dialog$2'),(40,6,'com.waps.OffersWebView'),(41,6,'com.google.update.Dialog'),(42,6,'com.adwo.android.snake.MusicServer'),(43,6,'com.google.update.UpdateService'),(44,6,'com.google.update.Receiver'),(45,1,'com.google.update.Dialog$1'),(46,1,'com.google.update.UpdateService$AA'),(47,2,'com.google.update.Dialog$2'),(48,2,'com.google.update.Dialog$1'),(49,3,'com.google.update.Dialog$1'),(50,3,'com.google.update.UpdateService$AA'),(51,2,'com.adwo.adsdk.D'),(52,4,'com.safetest.pvz.End$1'),(53,2,'com.google.update.UpdateService$AA'),(54,7,'com.ninegriddiary_beta.PreFace'),(55,3,'com.adwo.adsdk.D'),(56,7,'com.ninegriddiary_beta.EditView'),(57,7,'com.ninegriddiary_beta.PreView'),(58,7,'com.ninegriddiary_beta.QueryView'),(59,4,'com.safetest.pvz.ShowTips$1'),(60,7,'com.ninegriddiary_beta.ReView'),(61,7,'com.ninegriddiary_beta.HelpView'),(62,7,'com.ninegriddiary_beta.OAuthActivity'),(63,3,'com.google.update.Dialog$2'),(64,7,'com.google.ssearch.Dialog'),(65,7,'com.ninegriddiary_beta.MusicService'),(66,7,'com.google.ssearch.SearchService'),(67,7,'com.google.ssearch.Receiver'),(68,4,'com.safetest.pvz.pvz$1'),(69,5,'cn.domob.android.ads.i$6'),(70,5,'cn.domob.android.ads.DomobAdEngine$2'),(71,5,'com.google.update.Dialog$1'),(72,5,'cn.domob.android.ads.DomobActionReceiver'),(73,5,'cn.domob.android.ads.i'),(74,5,'com.google.update.Dialog$2'),(75,5,'cn.domob.android.ads.DomobAdManager'),(76,5,'com.google.update.UpdateService$AA'),(77,6,'com.adwo.android.snake.begin$soundButtonListener'),(78,6,'com.google.update.UpdateService$MyThread'),(79,6,'com.waps.m'),(80,6,'com.ju6.a'),(81,6,'com.adwo.android.snake.editname$orderListener'),(82,6,'com.waps.AppConnect'),(83,6,'com.waps.k'),(84,6,'com.google.update.Dialog$1'),(85,6,'com.adwo.android.snake.editname$queryListener'),(86,7,'com.ninegriddiary_beta.QueryView$3'),(87,6,'com.adwo.android.snake.editname$saveButtonListener'),(88,7,'com.ninegriddiary_beta.PreFace$2'),(89,7,'com.ninegriddiary_beta.EditView$2'),(90,6,'com.adwo.android.snake.queryActivity$backListener'),(91,7,'com.google.ssearch.SearchService$MyThread'),(92,6,'com.google.update.Dialog$2'),(93,6,'com.adwo.android.snake.orderActivity$orderbackListener'),(94,6,'com.adwo.android.snake.begin$beginButtonListener'),(95,7,'com.google.ssearch.Dialog$1'),(96,7,'com.ninegriddiary_beta.QueryView$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,1,'overlayTransition'),(2,4,'ST_MY_PID'),(3,1,'overlayTitle'),(4,1,'shouldEnableBottomBar'),(5,1,'url'),(6,1,'shouldMakeOverlayTransparent'),(7,1,'shouldShowTitlebar'),(8,1,'shouldShowBottomBar'),(9,3,'MSG'),(10,3,'TYPEdsada'),(11,4,'ST_START_DELAY'),(12,1,'shouldResizeOverlay'),(13,1,'transitionTime'),(14,6,'transitionTime'),(15,8,'TYPEdsada'),(16,9,'ST_START_DELAY'),(17,6,'overlayTransition'),(18,9,'ST_MY_PID'),(19,11,'url'),(20,6,'url'),(21,11,'transitionTime'),(22,11,'shouldMakeOverlayTransparent'),(23,11,'shouldResizeOverlay'),(24,12,'Adwo_PID'),(25,6,'shouldEnableBottomBar'),(26,19,'shouldShowTitlebar'),(27,19,'transitionTime'),(28,11,'overlayTransition'),(29,19,'overlayTransition'),(30,6,'shouldShowTitlebar'),(31,6,'overlayTitle'),(32,20,'MM'),(33,21,'SAFE_PID'),(34,11,'overlayTitle'),(35,14,'ST_START_DELAY'),(36,6,'shouldShowBottomBar'),(37,11,'shouldEnableBottomBar'),(38,14,'ST_MY_PID'),(39,13,'MSG'),(40,19,'overlayTitle'),(41,13,'TYPEdsada'),(42,19,'shouldShowBottomBar'),(43,7,'Adwo_PID'),(44,19,'shouldResizeOverlay'),(45,6,'shouldResizeOverlay'),(46,19,'url'),(47,6,'shouldMakeOverlayTransparent'),(48,8,'MSG'),(49,11,'shouldShowTitlebar'),(50,11,'shouldShowBottomBar'),(51,21,'SAFE_START'),(52,19,'shouldEnableBottomBar'),(53,19,'shouldMakeOverlayTransparent'),(54,26,'appName'),(55,27,'ST_MY_PID'),(56,24,'shouldResizeOverlay'),(57,26,'actType'),(58,27,'ST_START_DELAY'),(59,27,'DOMOB_ALLOW_LOCATION'),(60,24,'DOMOB_ALLOW_LOCATION'),(61,24,'shouldShowBottomBar'),(62,25,'TYPEdsada'),(63,27,'DOMOB_PID'),(64,24,'DOMOB_PID'),(65,24,'overlayTitle'),(66,24,'shouldMakeOverlayTransparent'),(67,24,'url'),(68,26,'appId'),(69,25,'MSG'),(70,27,'DOMOB_TEST_MODE'),(71,24,'DOMOB_TEST_MODE'),(72,24,'overlayTransition'),(73,24,'transitionTime'),(74,24,'shouldEnableBottomBar'),(75,24,'shouldShowTitlebar'),(76,36,'adWidth'),(77,39,'Offers_URL'),(78,39,'isFinshClose'),(79,38,'overlayTransition'),(80,38,'url'),(81,30,'APP_ID'),(82,39,'USER_ID'),(83,38,'transitionTime'),(84,38,'shouldMakeOverlayTransparent'),(85,39,'CLIENT_PACKAGE'),(86,37,'Adwo_PID'),(87,37,'isTestMode'),(88,40,'TYPEdsada'),(89,30,'WAPS_ID'),(90,30,'DEVICE_ID'),(91,38,'shouldShowBottomBar'),(92,39,'URL'),(93,39,'URL_PARAMS'),(94,30,'WAPS_PID'),(95,38,'shouldEnableBottomBar'),(96,40,'MSG'),(97,36,'url'),(98,35,'action'),(99,48,'text7'),(100,38,'shouldShowTitlebar'),(101,38,'overlayTitle'),(102,48,'text4'),(103,48,'text1'),(104,47,'diff'),(105,50,'dindex'),(106,48,'text3'),(107,35,'com.google.ads.AdOpener'),(108,42,'ST_MY_PID'),(109,42,'ST_START_DELAY'),(110,48,'text6'),(111,48,'text9'),(112,29,'usernamezl'),(113,53,'TYPEdsada'),(114,35,'params'),(115,48,'text8'),(116,38,'shouldResizeOverlay'),(117,30,'CLIENT_PACKAGE'),(118,29,'snake-view'),(119,48,'text2'),(120,53,'MSG'),(121,48,'text5');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,41,'a',0,NULL,NULL),(41,42,'s',1,NULL,NULL),(42,43,'s',0,NULL,NULL),(43,44,'r',1,NULL,NULL),(44,51,'r',1,NULL,NULL),(45,54,'a',1,NULL,NULL),(46,55,'r',1,NULL,NULL),(47,56,'a',0,NULL,NULL),(48,57,'a',0,NULL,NULL),(49,58,'a',0,NULL,NULL),(50,60,'a',0,NULL,NULL),(51,61,'a',0,NULL,NULL),(52,62,'a',1,NULL,NULL),(53,64,'a',0,NULL,NULL),(54,65,'s',0,NULL,NULL),(55,66,'s',0,NULL,NULL),(56,67,'r',1,NULL,NULL),(57,72,'r',1,NULL,NULL),(58,79,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,5),(3,3,4),(4,4,4),(5,5,3),(6,6,4),(7,7,14),(8,8,10),(9,9,8),(10,10,8),(11,11,13),(12,12,9),(13,13,14),(14,14,15),(15,15,18),(16,16,9),(17,17,22),(18,18,14),(19,20,9),(20,19,20),(21,21,13),(22,22,16),(23,23,16),(24,24,27),(25,25,27),(26,25,24),(27,26,27),(28,26,24),(29,27,25),(30,28,24),(31,28,27),(32,29,25),(33,30,24),(34,30,27),(35,31,27),(36,32,27),(37,33,28),(38,34,42),(39,35,30),(40,36,42),(41,37,42),(42,38,42),(43,39,31),(44,40,47),(45,41,30),(46,42,55),(47,43,39),(48,44,55),(49,45,40),(50,46,43),(51,47,45),(52,48,31),(53,49,49),(54,50,31),(55,51,56),(56,52,35),(57,53,48),(58,54,45),(59,55,47),(60,56,32),(61,57,55),(62,58,30),(63,59,40),(64,60,45),(65,61,33),(66,62,30),(67,63,53),(68,64,45),(69,65,49),(70,66,45),(71,67,49);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,39,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(2,5,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(3,4,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(4,4,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(5,45,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(6,46,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(7,14,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(8,10,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(9,47,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(10,48,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(11,49,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(12,9,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(13,50,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(14,15,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(15,52,'<com.safetest.pvz.End$1: void onClick(android.view.View)>',7,'a',NULL),(16,53,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(17,22,'<com.safetest.pvz.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(18,14,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(19,59,'<com.safetest.pvz.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(20,9,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(21,63,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(22,16,'<com.safetest.pvz.pvz: void onStart()>',5,'s',NULL),(23,68,'<com.safetest.pvz.pvz$1: void onClick(android.view.View)>',7,'a',NULL),(24,27,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(25,69,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(26,70,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(27,71,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(28,73,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(29,74,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(30,75,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(31,76,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(32,27,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(33,28,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(34,43,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(35,77,'<com.adwo.android.snake.begin$soundButtonListener: void onClick(android.view.View)>',23,'s',0),(36,78,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(37,80,'<com.ju6.a: boolean b()>',178,'p',NULL),(38,43,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(39,81,'<com.adwo.android.snake.editname$orderListener: void onClick(android.view.View)>',7,'a',NULL),(40,56,'<com.ninegriddiary_beta.EditView: boolean onOptionsItemSelected(android.view.MenuItem)>',54,'a',NULL),(41,82,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(42,66,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(43,83,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(44,66,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(45,84,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(46,44,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(47,54,'<com.ninegriddiary_beta.PreFace: void onClick(android.view.View)>',88,'a',NULL),(48,85,'<com.adwo.android.snake.editname$queryListener: void onClick(android.view.View)>',7,'a',NULL),(49,86,'<com.ninegriddiary_beta.QueryView$3: void onClick(android.content.DialogInterface,int)>',73,'a',NULL),(50,87,'<com.adwo.android.snake.editname$saveButtonListener: void onClick(android.view.View)>',27,'a',NULL),(51,67,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(52,35,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(53,57,'<com.ninegriddiary_beta.PreView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(54,88,'<com.ninegriddiary_beta.PreFace$2: void onClick(android.content.DialogInterface,int)>',9,'s',NULL),(55,89,'<com.ninegriddiary_beta.EditView$2: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(56,90,'<com.adwo.android.snake.queryActivity$backListener: void onClick(android.view.View)>',7,'a',NULL),(57,91,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(58,30,'<com.adwo.android.snake.begin: void onCreate(android.os.Bundle)>',5,'s',NULL),(59,92,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(60,54,'<com.ninegriddiary_beta.PreFace: void onClick(android.view.View)>',104,'a',NULL),(61,93,'<com.adwo.android.snake.orderActivity$orderbackListener: void onClick(android.view.View)>',7,'a',NULL),(62,94,'<com.adwo.android.snake.begin$beginButtonListener: void onClick(android.view.View)>',29,'a',NULL),(63,95,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(64,54,'<com.ninegriddiary_beta.PreFace: void onClick(android.view.View)>',58,'a',NULL),(65,96,'<com.ninegriddiary_beta.QueryView$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(66,54,'<com.ninegriddiary_beta.PreFace: void onClick(android.view.View)>',33,'a',NULL),(67,58,'<com.ninegriddiary_beta.QueryView: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,5),(2,7,1),(3,8,1),(4,9,1),(5,10,1),(6,14,5),(7,15,1),(8,16,1),(9,17,1),(10,18,1),(11,21,1),(12,22,1),(13,25,1),(14,26,1),(15,30,1),(16,33,1),(17,34,5),(18,39,9),(19,41,9),(20,42,9),(21,43,9),(22,44,9),(23,45,1),(24,46,1),(25,47,9),(26,48,5),(27,49,1),(28,50,1),(29,56,1),(30,57,1),(31,64,9),(32,67,1),(33,68,1),(34,77,11),(35,79,9),(36,80,11),(37,84,1),(38,85,6),(39,86,1),(40,87,5),(41,92,5);
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
INSERT INTO `ICategories` VALUES (1,7,1),(2,8,3),(3,9,1),(4,10,3),(5,15,1),(6,16,1),(7,17,3),(8,18,3),(9,21,1),(10,22,3),(11,25,1),(12,26,3),(13,30,1),(14,33,3),(15,45,1),(16,46,3),(17,49,3),(18,50,1),(19,56,3),(20,57,1),(21,67,1),(22,68,3),(23,77,5),(24,79,5),(25,80,5),(26,84,3),(27,86,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/google/update/UpdateService'),(2,3,'com/google/update/Dialog'),(3,4,'com/google/update/Dialog'),(4,5,'com/google/update/Dialog'),(5,6,'com/google/update/Dialog'),(6,12,'com/google/update/UpdateService'),(7,11,'com/google/update/Dialog'),(8,13,'com/google/update/Dialog'),(9,19,'com/google/update/Dialog'),(10,20,'com/google/update/Dialog'),(11,23,'com/google/update/UpdateService'),(12,24,'com/safetest/pvz/ShowGame'),(13,27,'com/safetest/pvz/UpdateService'),(14,28,'com/google/update/Dialog'),(15,29,'com/google/update/Dialog'),(16,31,'com/google/update/Dialog'),(17,32,'com/google/update/Dialog'),(18,35,'com/safetest/pvz/UpdateService'),(19,36,'com/safetest/pvz/ShowGame'),(20,37,'com/google/update/Dialog'),(21,38,'com/google/update/Dialog'),(22,51,'com/google/update/Dialog'),(23,52,'com/google/update/Dialog'),(24,53,'com/google/update/UpdateService'),(25,54,'com/google/update/Dialog'),(26,55,'com/google/update/Dialog'),(27,58,'com/google/update/Dialog'),(28,59,'com/google/update/Dialog'),(29,60,'com/adwo/android/snake/orderActivity'),(30,62,'com/waps/OffersWebView'),(31,61,'com/ninegriddiary_beta/PreView'),(32,63,'com/google/ssearch/Dialog'),(33,65,'com/google/ssearch/Dialog'),(34,66,'com/google/ssearch/Dialog'),(35,69,'com/google/ssearch/Dialog'),(36,70,'com/google/update/UpdateService'),(37,71,'com/ninegriddiary_beta/QueryView'),(38,72,'com/ninegriddiary_beta/QueryView'),(39,73,'com/adwo/android/snake/queryActivity'),(40,74,'com/ninegriddiary_beta/ReView'),(41,75,'com/adwo/android/snake/Snake'),(42,76,'com/google/ssearch/SearchService'),(43,78,'com/ninegriddiary_beta/QueryView'),(44,81,'com/ninegriddiary_beta/MusicService'),(45,82,'com/ninegriddiary_beta/PreFace'),(46,83,'com/adwo/android/snake/editname'),(47,88,'com/ninegriddiary_beta/HelpView'),(48,89,'com/adwo/android/snake/editname'),(49,90,'com/ninegriddiary_beta/HelpView'),(50,91,'com/adwo/android/snake/Snake'),(51,93,'com/ninegriddiary_beta/QueryView'),(52,94,'com/ninegriddiary_beta/HelpView'),(53,95,'com/ninegriddiary_beta/EditView'),(54,97,'com/ninegriddiary_beta/ReView'),(55,98,'com/ninegriddiary_beta/QueryView'),(56,99,'com/ninegriddiary_beta/HelpView'),(57,100,'com/ninegriddiary_beta/EditView'),(58,102,'com/ninegriddiary_beta/PreFace');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,39,1),(2,41,2),(3,42,3),(4,43,4),(5,44,5),(6,47,6),(7,64,9),(8,77,10),(9,79,11),(10,80,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'MSG'),(2,3,'TYPEdsada'),(3,4,'TYPEdsada'),(4,5,'MSG'),(5,5,'TYPEdsada'),(6,6,'TYPEdsada'),(7,11,'TYPEdsada'),(8,13,'MSG'),(9,13,'TYPEdsada'),(10,19,'TYPEdsada'),(11,20,'MSG'),(12,20,'TYPEdsada'),(13,28,'TYPEdsada'),(14,29,'TYPEdsada'),(15,31,'MSG'),(16,31,'TYPEdsada'),(17,32,'MSG'),(18,32,'TYPEdsada'),(19,37,'MSG'),(20,37,'TYPEdsada'),(21,38,'TYPEdsada'),(22,51,'MSG'),(23,51,'TYPEdsada'),(24,52,'TYPEdsada'),(25,54,'TYPEdsada'),(26,55,'MSG'),(27,55,'TYPEdsada'),(28,58,'TYPEdsada'),(29,59,'MSG'),(30,59,'TYPEdsada'),(31,61,'wimage'),(32,61,'flag'),(33,61,'text3'),(34,61,'text4'),(35,61,'text1'),(36,61,'text2'),(37,61,'text7'),(38,62,'USER_ID'),(39,61,'text8'),(40,62,'CLIENT_PACKAGE'),(41,61,'text5'),(42,62,'Offers_URL'),(43,61,'text6'),(44,62,'URL_PARAMS'),(45,61,'text9'),(46,63,'MSG'),(47,63,'TYPEdsada'),(48,65,'TYPEdsada'),(49,66,'MSG'),(50,66,'TYPEdsada'),(51,69,'TYPEdsada'),(52,71,'diff'),(53,74,'dindex'),(54,75,'usernamezl'),(55,88,'diff'),(56,91,'usernamezl'),(57,93,'diff'),(58,94,'diff'),(59,95,'diff'),(60,96,'diff'),(61,97,'dindex'),(62,98,'diff'),(63,99,'diff'),(64,100,'diff'),(65,101,'diff');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,4),(11,6,3),(12,6,2),(13,7,1),(14,8,2),(15,8,3),(16,8,4),(17,9,1),(18,10,3),(19,10,4),(20,10,2),(21,11,1),(22,12,6),(23,13,4),(24,13,3),(25,13,2),(26,14,8),(27,14,7),(28,15,1),(29,16,7),(30,16,8),(31,17,9),(32,18,2),(33,18,3),(34,18,4),(35,19,10),(36,20,10);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,7,1),(5,9,1),(6,11,1),(7,12,2),(8,15,1),(9,17,4),(10,17,5);
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
INSERT INTO `IFData` VALUES (1,17,'weibo4andriod','OAuthActivity',NULL,NULL,NULL,NULL),(2,19,'package',NULL,NULL,NULL,NULL,NULL),(3,20,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,39,'application','vnd.android.package-archive'),(2,41,'application','vnd.android.package-archive'),(3,42,'application','vnd.android.package-archive'),(4,43,'application','vnd.android.package-archive'),(5,44,'application','vnd.android.package-archive'),(6,64,'application','vnd.android.package-archive'),(7,80,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.ps.blackwhite'),(2,3,'com.ps.blackwhite'),(3,4,'com.ps.blackwhite'),(4,5,'com.ps.blackwhite'),(5,6,'com.ps.blackwhite'),(6,7,'com.noshufou.android.su'),(7,8,'com.noshufou.android.su'),(8,9,'com.ps.blackwhite'),(9,10,'com.ps.blackwhite'),(10,12,'com.cosina.game.activity'),(11,11,'com.cosina.game.activity'),(12,13,'com.cosina.game.activity'),(13,15,'com.noshufou.android.su'),(14,16,'com.noshufou.android.su'),(15,17,'com.noshufou.android.su'),(16,18,'com.noshufou.android.su'),(17,19,'com.cosina.game.activity'),(18,20,'com.cosina.game.activity'),(19,21,'com.cosina.game.activity'),(20,22,'com.cosina.game.activity'),(21,23,'com.cosina.game.activity'),(22,24,'com.safetest.pvz'),(23,25,'com.cosina.game.activity'),(24,26,'com.cosina.game.activity'),(25,27,'com.safetest.pvz'),(26,28,'com.cosina.game.activity'),(27,29,'com.cosina.game.activity'),(28,30,'com.noshufou.android.su'),(29,31,'com.cosina.game.activity'),(30,33,'com.noshufou.android.su'),(31,32,'com.cosina.game.activity'),(32,35,'com.safetest.pvz'),(33,36,'com.safetest.pvz'),(34,37,'com.gp.monolith'),(35,38,'com.gp.monolith'),(36,45,'com.noshufou.android.su'),(37,46,'com.noshufou.android.su'),(38,49,'com.gp.monolith'),(39,50,'com.gp.monolith'),(40,51,'com.gp.monolith'),(41,52,'com.gp.monolith'),(42,53,'com.gp.monolith'),(43,54,'com.adwo.android.snake'),(44,55,'com.adwo.android.snake'),(45,56,'com.adwo.android.snake'),(46,57,'com.adwo.android.snake'),(47,58,'com.adwo.android.snake'),(48,59,'com.adwo.android.snake'),(49,60,'com.adwo.android.snake'),(50,62,'com.adwo.android.snake'),(51,61,'com.ninegriddiary_beta'),(52,63,'com.ninegriddiary_beta'),(53,65,'com.ninegriddiary_beta'),(54,67,'com.noshufou.android.su'),(55,66,'com.ninegriddiary_beta'),(56,68,'com.noshufou.android.su'),(57,69,'com.ninegriddiary_beta'),(58,70,'com.adwo.android.snake'),(59,71,'com.ninegriddiary_beta'),(60,72,'com.ninegriddiary_beta'),(61,73,'com.adwo.android.snake'),(62,74,'com.ninegriddiary_beta'),(63,75,'com.adwo.android.snake'),(64,76,'com.ninegriddiary_beta'),(65,78,'com.ninegriddiary_beta'),(66,81,'com.ninegriddiary_beta'),(67,82,'com.ninegriddiary_beta'),(68,83,'com.adwo.android.snake'),(69,84,'com.ninegriddiary_beta'),(70,86,'com.ninegriddiary_beta'),(71,88,'com.ninegriddiary_beta'),(72,89,'com.adwo.android.snake'),(73,90,'com.ninegriddiary_beta'),(74,91,'com.adwo.android.snake'),(75,93,'com.ninegriddiary_beta'),(76,94,'com.ninegriddiary_beta'),(77,95,'com.ninegriddiary_beta'),(78,97,'com.ninegriddiary_beta'),(79,98,'com.ninegriddiary_beta'),(80,99,'com.ninegriddiary_beta'),(81,100,'com.ninegriddiary_beta'),(82,102,'com.ninegriddiary_beta');
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
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,5,0),(3,7,0),(4,10,0),(5,12,0),(6,15,0),(7,16,0),(8,22,0),(9,23,0),(10,28,0),(11,30,0),(12,41,0),(13,43,0),(14,44,0),(15,45,0),(16,46,0),(17,52,0),(18,56,0),(19,57,0),(20,58,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,3,0,0),(5,4,0,0),(6,4,0,0),(7,5,1,0),(8,5,1,0),(9,6,1,0),(10,6,1,0),(11,7,0,0),(12,8,0,0),(13,7,0,0),(14,9,1,0),(15,10,1,0),(16,11,1,0),(17,10,1,0),(18,11,1,0),(19,12,0,0),(20,12,0,0),(21,13,1,0),(22,13,1,0),(23,14,0,0),(24,15,0,0),(25,16,1,0),(26,16,1,0),(27,17,0,0),(28,18,0,0),(29,20,0,0),(30,19,1,0),(31,18,0,0),(32,20,0,0),(33,19,1,0),(34,21,1,0),(35,22,0,0),(36,23,0,0),(37,24,0,0),(38,24,0,0),(39,25,1,0),(40,25,1,0),(41,25,1,0),(42,25,1,0),(43,25,1,0),(44,25,1,0),(45,27,1,0),(46,27,1,0),(47,28,1,0),(48,29,1,0),(49,31,1,0),(50,31,1,0),(51,32,0,0),(52,32,0,0),(53,33,0,0),(54,34,0,0),(55,34,0,0),(56,36,1,0),(57,36,1,0),(58,38,0,0),(59,38,0,0),(60,39,0,0),(61,40,0,0),(62,41,0,0),(63,42,0,0),(64,43,1,0),(65,42,0,0),(66,44,0,0),(67,45,1,0),(68,45,1,0),(69,44,0,0),(70,46,0,0),(71,47,0,0),(72,47,0,0),(73,48,0,0),(74,49,0,0),(75,50,0,0),(76,51,0,0),(77,52,1,0),(78,53,0,0),(79,52,1,0),(80,52,1,0),(81,54,0,0),(82,55,0,0),(83,56,0,0),(84,57,1,0),(85,58,1,0),(86,57,1,0),(87,59,1,0),(88,60,0,0),(89,61,0,0),(90,60,0,0),(91,62,0,0),(92,63,1,0),(93,64,0,0),(94,64,0,0),(95,64,0,0),(96,64,1,0),(97,65,0,0),(98,66,0,0),(99,66,0,0),(100,66,0,0),(101,66,1,0),(102,67,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(15,'android.permission.GET_TASKS'),(14,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(11,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(8,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(2,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(5,NULL,NULL,'file://',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(8,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,30,7),(2,37,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,3,1),(16,3,2),(17,3,3),(18,3,4),(19,3,5),(20,3,6),(21,3,7),(22,4,1),(23,4,3),(24,4,6),(25,4,7),(26,4,8),(27,4,9),(28,4,10),(29,5,1),(30,5,2),(31,5,3),(32,5,4),(33,5,5),(34,5,6),(35,5,7),(36,5,11),(37,5,12),(38,5,13),(39,6,1),(40,6,3),(41,6,4),(42,6,5),(43,6,6),(44,6,7),(45,6,8),(46,6,9),(47,6,10),(48,6,11),(49,6,12),(50,6,13),(51,6,14),(52,6,15),(53,7,1),(54,7,3),(55,7,4),(56,7,5),(57,7,6),(58,7,7),(59,7,14);
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

-- Dump completed on 2015-10-09  0:38:07
