-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_125
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(11,'DownloadManageServicer.ACTION_CONTROL'),(12,'DownloadManageServicer.ACTION_UPDATE'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(15,'android.intent.action.DELETE'),(20,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.PACKAGE_REPLACED'),(21,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(14,'android.intent.action.VIEW'),(8,'android.service.wallpaper.WallpaperService'),(10,'com.adwo.android.snake.MUSIC'),(18,'com.airpush.android.PushServiceStart(.*)'),(9,'com.airpush.android.PushServiceStart15813'),(23,'com.airpush.android.PushServiceStartInvalid'),(19,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(22,'com.airpush.android.PushServiceStartinvalid Id'),(16,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(13,'uiupdate');
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
INSERT INTO `Applications` VALUES (1,'com.safesys.viruskiller',33),(2,'com.ps.ddp',10),(3,'com.ps.ddp',13),(4,'sunkay.WallpaperYangCongTou',2),(5,'pt.com.iozhu.milestoneoverclock',6),(6,'com.wanpu.kunchongddp',4),(7,'com.adwo.android.snake',7);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(2,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.default');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.safesys.viruskiller.MainActivity'),(2,1,'com.safesys.viruskiller.ShowTips'),(3,1,'com.safesys.viruskiller.UpdateService'),(4,1,'com.safesys.viruskiller.ScanningManagerService'),(5,1,'com.safesys.viruskiller.DownloadManageService'),(6,1,'com.safesys.viruskiller.Receiver'),(7,1,'com.safesys.viruskiller.ScanningReciever'),(8,1,'com.safesys.viruskiller.ScanPackageBroadcast'),(9,2,'com.ps.ddp.MainActivity'),(10,2,'com.ps.ddp.GameActivity'),(11,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(12,2,'com.google.update.Dialog'),(13,2,'com.google.update.UpdateService'),(14,2,'com.google.update.Receiver'),(15,3,'com.ps.ddp.MainActivity'),(16,4,'sunkay.WallpaperYangCongTou.WallpaperYangCongTou'),(17,5,'pt.com.iozhu.milestoneoverclock.MainActivity'),(18,3,'com.ps.ddp.GameActivity'),(19,4,'sunkay.WallpaperYangCongTou.LiveWallpaperSettings'),(20,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(21,4,'com.waps.OffersWebView'),(22,3,'com.google.update.Dialog'),(23,5,'ad.imadpush.com.poster.PosterInfoActivity'),(24,4,'com.airpush.android.PushAds'),(25,3,'com.google.update.UpdateService'),(26,5,'pt.com.iozhu.milestoneoverclock.AutoloadService'),(27,4,'com.google.update.Dialog'),(28,5,'com.airpuh.ad.UpdateCheck'),(29,3,'com.google.update.Receiver'),(30,4,'sunkay.WallpaperYangCongTou.WallpaperDraw'),(31,5,'ad.imadpush.com.poster.AlarmService'),(32,5,'pt.com.iozhu.milestoneoverclock.BootCompletedBroadcastReceiver'),(33,4,'com.airpush.android.PushService'),(34,5,'ad.imadpush.com.poster.ReceiverAlarm'),(35,4,'com.google.update.UpdateService'),(36,4,'com.airpush.android.UserDetailsReceiver'),(37,4,'com.airpush.android.MessageReceiver'),(38,4,'com.airpush.android.DeliveryReceiver'),(39,4,'sunkay.WallpaperYangCongTou.BootReceiver'),(40,4,'com.google.update.Receiver'),(41,6,'com.wanpu.kunchongddp.begin'),(42,6,'com.wanpu.kunchongddp.GameActivity'),(43,6,'com.waps.OffersWebView'),(44,6,'com.google.ads.AdActivity'),(45,6,'com.vpon.adon.android.WebInApp'),(46,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(47,7,'com.adwo.android.snake.Snake'),(48,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(49,7,'com.adwo.android.snake.begin'),(50,6,'com.google.update.Dialog'),(51,6,'com.google.update.UpdateService'),(52,7,'com.adwo.android.snake.editname'),(53,6,'com.google.update.Receiver'),(54,7,'com.adwo.android.snake.queryActivity'),(55,7,'com.adwo.android.snake.orderActivity'),(56,7,'com.adwo.android.snake.Music'),(57,7,'com.google.ads.AdActivity'),(58,7,'com.vpon.adon.android.WebInApp'),(59,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(60,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(61,7,'com.waps.OffersWebView'),(62,7,'com.google.update.Dialog'),(63,7,'com.adwo.android.snake.MusicServer'),(64,7,'com.google.update.UpdateService'),(65,7,'com.google.update.Receiver'),(66,1,'com.safesys.viruskiller.DownloadManageService$CommandReceiver'),(67,1,'com.safesys.viruskiller.MainActivity$UpdateReceiver'),(68,1,'com.safesys.viruskiller.MainActivity$UIReceiver'),(69,1,'com.safesys.viruskiller.MainActivity$2'),(70,1,'com.ju6.a'),(71,1,'com.safesys.viruskiller.ShowTips$1'),(72,2,'com.google.update.Dialog$1'),(73,2,'com.google.update.UpdateService$AA'),(74,5,'ad.imadpush.com.poster.PosterInfoActivity$PackageReceiver'),(75,3,'com.google.update.Dialog$1'),(76,2,'com.google.update.Dialog$2'),(77,3,'com.google.update.Dialog$2'),(78,3,'com.google.update.UpdateService$AA'),(79,6,'com.wanpu.kunchongddp.begin$beginButtonListener'),(80,6,'com.waps.m'),(81,6,'com.google.update.Dialog$2'),(82,6,'com.google.update.Dialog$1'),(83,4,'com.waps.p'),(84,6,'com.waps.k'),(85,4,'com.google.update.Dialog$2'),(86,7,'com.adwo.android.snake.begin$soundButtonListener'),(87,7,'com.adwo.android.snake.begin$beginButtonListener'),(88,4,'com.waps.ab'),(89,7,'com.adwo.android.snake.queryActivity$backListener'),(90,6,'com.waps.AppConnect'),(91,6,'com.ju6.a'),(92,4,'com.waps.AppConnect'),(93,6,'com.google.update.UpdateService$MyThread'),(94,7,'com.google.update.Dialog$2'),(95,7,'com.adwo.android.snake.editname$saveButtonListener'),(96,7,'com.waps.AppConnect'),(97,7,'com.google.update.UpdateService$MyThread'),(98,4,'com.waps.r'),(99,4,'com.waps.aa'),(100,7,'com.ju6.a'),(101,7,'com.waps.k'),(102,7,'com.google.update.Dialog$1'),(103,4,'com.google.update.UpdateService$AA'),(104,7,'com.adwo.android.snake.orderActivity$orderbackListener'),(105,4,'com.google.update.Dialog$1'),(106,7,'com.adwo.android.snake.editname$queryListener'),(107,7,'com.waps.m'),(108,7,'com.adwo.android.snake.editname$orderListener'),(109,4,'com.waps.ad');
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'SAFE_START'),(2,4,'notification_record'),(3,2,'MM'),(4,3,'SAFE_PID'),(5,4,'state'),(6,12,'TYPEdsada'),(7,13,'ST_START_DELAY'),(8,11,'overlayTitle'),(9,11,'shouldResizeOverlay'),(10,11,'shouldMakeOverlayTransparent'),(11,11,'shouldShowTitlebar'),(12,11,'url'),(13,20,'shouldMakeOverlayTransparent'),(14,25,'ST_START_DELAY'),(15,20,'shouldResizeOverlay'),(16,20,'overlayTitle'),(17,28,'MYAD_PID'),(18,22,'push'),(19,22,'dId'),(20,22,'userId'),(21,12,'MSG'),(22,22,'notifyId'),(23,17,'ad.imadpush.com'),(24,13,'ST_MY_PID'),(25,30,'ad.imadpush.com'),(26,11,'shouldShowBottomBar'),(27,11,'overlayTransition'),(28,11,'shouldEnableBottomBar'),(29,20,'url'),(30,11,'transitionTime'),(31,20,'overlayTransition'),(32,23,'MSG'),(33,20,'transitionTime'),(34,20,'shouldEnableBottomBar'),(35,20,'shouldShowTitlebar'),(36,25,'ST_MY_PID'),(37,23,'TYPEdsada'),(38,20,'shouldShowBottomBar'),(39,41,'CLIENT_PACKAGE'),(40,42,'CLIENT_PACKAGE'),(41,48,'shouldMakeOverlayTransparent'),(42,50,'MSG'),(43,48,'shouldEnableBottomBar'),(44,43,'USER_ID'),(45,48,'transitionTime'),(46,33,'apikey'),(47,24,'campId'),(48,46,'Adwo_PID'),(49,43,'Offers_URL'),(50,43,'URL_PARAMS'),(51,21,'UrlPath'),(52,43,'URL'),(53,24,'appId'),(54,48,'overlayTitle'),(55,45,'url'),(56,41,'WAPS_PID'),(57,42,'WAPS_PID'),(58,33,'adType'),(59,24,'creativeId'),(60,64,'ST_MY_PID'),(61,61,'CLIENT_PACKAGE'),(62,33,'campId'),(63,33,'link'),(64,38,'title'),(65,48,'overlayTransition'),(66,48,'url'),(67,44,'params'),(68,41,'DEVICE_ID'),(69,42,'DEVICE_ID'),(70,47,'usernamezl'),(71,41,'WAPS_ID'),(72,42,'WAPS_ID'),(73,50,'TYPEdsada'),(74,21,'offers_webview_tag'),(75,41,'APP_ID'),(76,19,'APP_ID'),(77,42,'APP_ID'),(78,21,'APP_ID'),(79,45,'adWidth'),(80,38,'campId'),(81,60,'shouldResizeOverlay'),(82,44,'com.google.ads.AdOpener'),(83,19,'WAPS_ID'),(84,48,'shouldShowTitlebar'),(85,61,'URL'),(86,21,'WAPS_ID'),(87,43,'isFinshClose'),(88,38,'creativeId'),(89,38,'appId'),(90,33,'type'),(91,21,'Notify_Url_Params'),(92,33,'number'),(93,33,'appId'),(94,61,'Offers_URL'),(95,38,'imei'),(96,33,'url'),(97,33,'header'),(98,24,'apikey'),(99,24,'url'),(100,33,'title'),(101,38,'text'),(102,38,'url'),(103,33,'imageurl'),(104,38,'number'),(105,46,'isTestMode'),(106,21,'USER_ID'),(107,43,'CLIENT_PACKAGE'),(108,38,'apikey'),(109,51,'ST_START_DELAY'),(110,21,'Notify_Id'),(111,44,'action'),(112,24,'test'),(113,51,'ST_MY_PID'),(114,19,'DEVICE_ID'),(115,21,'DEVICE_ID'),(116,48,'shouldShowBottomBar'),(117,60,'overlayTitle'),(118,62,'TYPEdsada'),(119,57,'action'),(120,49,'DEVICE_ID'),(121,60,'shouldMakeOverlayTransparent'),(122,38,'header'),(123,48,'shouldResizeOverlay'),(124,33,'creativeId'),(125,21,'URL'),(126,38,'imageurl'),(127,21,'CLIENT_PACKAGE'),(128,38,'sms'),(129,24,'sms'),(130,59,'Adwo_PID'),(131,35,'ST_MY_PID'),(132,33,'text'),(133,21,'Offers_URL'),(134,24,'adType'),(135,60,'shouldShowBottomBar'),(136,58,'url'),(137,49,'WAPS_PID'),(138,24,'number'),(139,33,'testMode'),(140,24,'header'),(141,58,'adWidth'),(142,47,'snake-view'),(143,57,'params'),(144,62,'MSG'),(145,21,'SHWO_FLAG'),(146,57,'com.google.ads.AdOpener'),(147,35,'ST_START_DELAY'),(148,60,'shouldShowTitlebar'),(149,33,'sms'),(150,60,'transitionTime'),(151,61,'isFinshClose'),(152,27,'TYPEdsada'),(153,49,'CLIENT_PACKAGE'),(154,61,'USER_ID'),(155,61,'URL_PARAMS'),(156,60,'url'),(157,49,'APP_ID'),(158,60,'overlayTransition'),(159,64,'ST_START_DELAY'),(160,60,'shouldEnableBottomBar'),(161,59,'isTestMode'),(162,49,'WAPS_ID'),(163,19,'WAPS_PID'),(164,21,'WAPS_PID'),(165,21,'ACTIVITY_FLAG'),(166,21,'URL_PARAMS'),(167,19,'CLIENT_PACKAGE'),(168,21,'isFinshClose'),(169,27,'MSG');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,23,'a',0,NULL,NULL),(23,22,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,31,'s',0,NULL,NULL),(31,30,'s',1,15,NULL),(32,32,'r',1,NULL,NULL),(33,33,'s',1,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'r',0,NULL,NULL),(38,38,'r',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'s',1,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,74,'r',1,NULL,NULL),(70,80,'r',1,NULL,NULL),(71,98,'r',1,NULL,NULL),(72,107,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,1),(4,3,7),(5,4,1),(6,5,1),(7,6,6),(8,7,3),(9,8,4),(10,9,9),(11,10,2),(12,11,13),(13,12,12),(14,13,9),(15,14,13),(16,15,9),(17,16,29),(18,17,13),(19,18,23),(20,19,17),(21,20,9),(22,21,25),(23,22,32),(24,23,14),(25,24,34),(26,25,15),(27,26,12),(28,27,15),(29,28,25),(30,29,23),(31,30,25),(32,31,15),(33,32,15),(34,33,44),(35,34,41),(36,35,24),(37,36,50),(38,37,50),(39,38,21),(40,39,24),(41,40,43),(42,41,27),(43,42,49),(44,43,51),(45,44,49),(46,45,21),(47,46,65),(48,47,64),(49,48,53),(50,49,54),(51,50,41),(52,51,57),(53,52,51),(54,53,51),(55,54,21),(56,55,64),(57,56,19),(58,57,51),(59,58,49),(60,59,62),(61,60,24),(62,61,52),(63,62,49),(64,63,24),(65,64,64),(66,65,21),(67,66,64),(68,67,35),(69,68,61),(70,69,62),(71,70,35),(72,71,55),(73,72,27),(74,73,52),(75,74,37),(76,75,52),(77,76,40),(78,77,24),(79,78,38),(80,79,21),(81,80,36),(82,81,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',284,'r',NULL),(2,1,'<com.safesys.viruskiller.MainActivity: void onCreate(android.os.Bundle)>',256,'s',NULL),(3,4,'<com.safesys.viruskiller.ScanningManagerService: void beginStartingService(android.content.Context,android.content.Intent)>',3,'s',NULL),(4,69,'<com.safesys.viruskiller.MainActivity$2: void onClick(android.view.View)>',79,'a',NULL),(5,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',148,'a',NULL),(6,6,'<com.safesys.viruskiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(7,70,'<com.ju6.a: boolean b()>',178,'p',NULL),(8,4,'<com.safesys.viruskiller.ScanningManagerService: void onStart(android.content.Intent,int)>',29,'a',NULL),(9,9,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',29,'a',NULL),(10,71,'<com.safesys.viruskiller.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(11,13,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(12,72,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(13,9,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(14,13,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(15,9,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(16,29,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(17,73,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(18,75,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(19,17,'<pt.com.iozhu.milestoneoverclock.MainActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(20,9,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',22,'a',NULL),(21,25,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(22,32,'<pt.com.iozhu.milestoneoverclock.BootCompletedBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(23,14,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(24,34,'<ad.imadpush.com.poster.ReceiverAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(25,15,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(26,76,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(27,15,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',22,'a',NULL),(28,25,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(29,77,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(30,78,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(31,15,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(32,15,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',29,'a',NULL),(33,44,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(34,79,'<com.wanpu.kunchongddp.begin$beginButtonListener: void onClick(android.view.View)>',28,'a',NULL),(35,24,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(36,81,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(37,82,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(38,83,'<com.waps.p: java.lang.String a(java.lang.String[])>',104,'a',NULL),(39,24,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(40,84,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(41,85,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(42,86,'<com.adwo.android.snake.begin$soundButtonListener: void onClick(android.view.View)>',23,'s',0),(43,51,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(44,87,'<com.adwo.android.snake.begin$beginButtonListener: void onClick(android.view.View)>',29,'a',NULL),(45,88,'<com.waps.ab: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(46,65,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(47,64,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(48,53,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(49,89,'<com.adwo.android.snake.queryActivity$backListener: void onClick(android.view.View)>',7,'a',NULL),(50,90,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(51,57,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(52,91,'<com.ju6.a: boolean b()>',178,'p',NULL),(53,51,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(54,21,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',293,'a',NULL),(55,64,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(56,92,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(57,93,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(58,49,'<com.adwo.android.snake.begin: void onCreate(android.os.Bundle)>',5,'s',NULL),(59,94,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(60,24,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',172,'a',NULL),(61,95,'<com.adwo.android.snake.editname$saveButtonListener: void onClick(android.view.View)>',27,'a',NULL),(62,96,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(63,24,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',160,'s',NULL),(64,97,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(65,99,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(66,100,'<com.ju6.a: boolean b()>',178,'p',NULL),(67,35,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(68,101,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(69,102,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(70,103,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(71,104,'<com.adwo.android.snake.orderActivity$orderbackListener: void onClick(android.view.View)>',7,'a',NULL),(72,105,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(73,106,'<com.adwo.android.snake.editname$queryListener: void onClick(android.view.View)>',7,'a',NULL),(74,37,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(75,108,'<com.adwo.android.snake.editname$orderListener: void onClick(android.view.View)>',7,'a',NULL),(76,40,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(77,24,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',239,'s',NULL),(78,38,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(79,109,'<com.waps.ad: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(80,36,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(81,35,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,11),(2,4,14),(3,5,15),(4,9,1),(5,10,1),(6,13,1),(7,14,1),(8,20,1),(9,21,1),(10,22,1),(11,23,1),(12,32,16),(13,36,16),(14,37,1),(15,38,1),(16,41,17),(17,42,14),(18,43,17),(19,45,18),(20,46,16),(21,47,19),(22,48,1),(23,49,1),(24,50,14),(25,51,20),(26,52,14),(27,53,16),(28,65,17),(29,66,14),(30,67,17),(31,69,1),(32,72,1),(33,75,1),(34,76,1),(35,77,10),(36,78,16),(37,80,21),(38,82,18),(39,83,19),(40,84,1),(41,85,1),(42,86,14),(43,88,14),(44,90,1),(45,91,1),(46,92,1),(47,93,1),(48,95,1),(49,96,1),(50,98,18),(51,99,22),(52,101,23),(53,103,18),(54,104,19),(55,106,18),(56,107,18),(57,108,19),(58,109,18),(59,110,18),(60,111,19),(61,112,19),(62,113,19),(63,115,18),(64,116,23),(65,117,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,9,1),(2,10,4),(3,13,1),(4,14,4),(5,20,4),(6,21,1),(7,22,1),(8,23,4),(9,37,4),(10,38,1),(11,41,5),(12,42,5),(13,43,5),(14,48,1),(15,49,4),(16,65,5),(17,66,5),(18,67,5),(19,69,1),(20,72,4),(21,75,1),(22,76,4),(23,84,4),(24,85,1),(25,90,1),(26,91,1),(27,92,4),(28,93,4),(29,95,1),(30,96,4);
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
INSERT INTO `IClasses` VALUES (1,2,'com/safesys/viruskiller/DownloadManageService'),(2,3,'com/safesys/viruskiller/ScanningManagerService'),(3,6,'com/safesys/viruskiller/UpdateService'),(4,7,'com/safesys/viruskiller/MainActivity'),(5,8,'com/ps/ddp/GameActivity'),(6,11,'com/google/update/Dialog'),(7,12,'com/google/update/Dialog'),(8,15,'com/ps/ddp/GameActivity'),(9,16,'com/google/update/Dialog'),(10,17,'com/google/update/Dialog'),(11,18,'com/ps/ddp/GameActivity'),(12,19,'com/google/update/UpdateService'),(13,24,'com/airpuh/ad/UpdateCheck'),(14,25,'com/ps/ddp/GameActivity'),(15,26,'com/google/update/Dialog'),(16,27,'pt/com/iozhu/milestoneoverclock/AutoloadService'),(17,29,'com/google/update/UpdateService'),(18,28,'com/google/update/Dialog'),(19,30,'ad/imadpush/com/poster/AlarmService'),(20,31,'com/ps/ddp/GameActivity'),(21,33,'com/ps/ddp/GameActivity'),(22,34,'com/google/update/Dialog'),(23,35,'com/google/update/Dialog'),(24,39,'com/ps/ddp/GameActivity'),(25,40,'com/ps/ddp/GameActivity'),(26,44,'com/wanpu/kunchongddp/GameActivity'),(27,54,'com/google/update/Dialog'),(28,55,'com/adwo/android/snake/Snake'),(29,56,'com/google/update/Dialog'),(30,58,'com/google/update/UpdateService'),(31,57,'com/waps/OffersWebView'),(32,60,'com/google/update/Dialog'),(33,59,'com/waps/OffersWebView'),(34,61,'com/google/update/UpdateService'),(35,62,'com/google/update/Dialog'),(36,63,'com/adwo/android/snake/editname'),(37,64,'com/waps/OffersWebView'),(38,68,'com/google/update/Dialog'),(39,70,'com/google/update/Dialog'),(40,71,'com/google/update/Dialog'),(41,73,'com/google/update/Dialog'),(42,74,'com/waps/OffersWebView'),(43,79,'com/adwo/android/snake/Snake'),(44,81,'com/waps/OffersWebView'),(45,87,'com/google/update/Dialog'),(46,89,'com/google/update/Dialog'),(47,94,'com/adwo/android/snake/editname'),(48,97,'com/adwo/android/snake/queryActivity'),(49,100,'com/adwo/android/snake/orderActivity'),(50,102,'com/google/update/UpdateService'),(51,114,'NULL-CONSTANT'),(52,118,'com/google/update/Dialog'),(53,119,'com/google/update/Dialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,5,2),(3,41,4),(4,42,5),(5,43,6),(6,50,7),(7,51,8),(8,52,9),(9,65,10),(10,66,12),(11,67,13),(12,80,14),(13,86,15),(14,88,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'cmd'),(2,3,'state'),(3,8,'type'),(4,11,'TYPEdsada'),(5,12,'MSG'),(6,12,'TYPEdsada'),(7,15,'type'),(8,16,'TYPEdsada'),(9,17,'MSG'),(10,17,'TYPEdsada'),(11,18,'type'),(12,25,'type'),(13,26,'TYPEdsada'),(14,28,'MSG'),(15,28,'TYPEdsada'),(16,31,'type'),(17,33,'type'),(18,34,'TYPEdsada'),(19,35,'MSG'),(20,35,'TYPEdsada'),(21,39,'type'),(22,40,'type'),(23,45,'<INTENT>'),(24,45,'type'),(25,47,'<INTENT>'),(26,47,'type'),(27,54,'MSG'),(28,54,'TYPEdsada'),(29,55,'usernamezl'),(30,56,'TYPEdsada'),(31,57,'UrlPath'),(32,57,'ACTIVITY_FLAG'),(33,57,'isFinshClose'),(34,57,'offers_webview_tag'),(35,59,'Notify_Url_Params'),(36,59,'UrlPath'),(37,59,'ACTIVITY_FLAG'),(38,60,'TYPEdsada'),(39,59,'isFinshClose'),(40,59,'offers_webview_tag'),(41,62,'MSG'),(42,62,'TYPEdsada'),(43,64,'USER_ID'),(44,64,'CLIENT_PACKAGE'),(45,64,'Offers_URL'),(46,64,'URL_PARAMS'),(47,68,'MSG'),(48,68,'TYPEdsada'),(49,70,'TYPEdsada'),(50,71,'TYPEdsada'),(51,73,'MSG'),(52,73,'TYPEdsada'),(53,74,'USER_ID'),(54,74,'CLIENT_PACKAGE'),(55,74,'Offers_URL'),(56,74,'offers_webview_tag'),(57,74,'URL_PARAMS'),(58,79,'usernamezl'),(59,80,'sms_body'),(60,81,'USER_ID'),(61,81,'CLIENT_PACKAGE'),(62,81,'Offers_URL'),(63,81,'URL_PARAMS'),(64,82,'<INTENT>'),(65,82,'type'),(66,83,'<INTENT>'),(67,83,'type'),(68,87,'MSG'),(69,87,'TYPEdsada'),(70,89,'TYPEdsada'),(71,98,'icon'),(72,98,'appId'),(73,98,'testMode'),(74,98,'type'),(75,98,'apikey'),(76,99,'icon'),(77,99,'appId'),(78,99,'testMode'),(79,99,'type'),(80,99,'apikey'),(81,101,'icon'),(82,101,'appId'),(83,101,'testMode'),(84,101,'type'),(85,101,'apikey'),(86,103,'<INTENT>'),(87,103,'type'),(88,104,'<INTENT>'),(89,104,'type'),(90,106,'campId'),(91,106,'text'),(92,106,'title'),(93,106,'creativeId'),(94,106,'appId'),(95,106,'expiry_time'),(96,106,'number'),(97,106,'adType'),(98,106,'type'),(99,106,'sms'),(100,106,'imageurl'),(101,106,'apikey'),(102,107,'campId'),(103,107,'title'),(104,107,'text'),(105,107,'creativeId'),(106,107,'appId'),(107,107,'expiry_time'),(108,107,'link'),(109,107,'adType'),(110,107,'type'),(111,107,'imageurl'),(112,107,'header'),(113,107,'apikey'),(114,108,'campId'),(115,108,'text'),(116,108,'title'),(117,108,'creativeId'),(118,108,'appId'),(119,108,'expiry_time'),(120,108,'number'),(121,108,'adType'),(122,108,'type'),(123,108,'sms'),(124,108,'imageurl'),(125,108,'apikey'),(126,109,'title'),(127,109,'text'),(128,109,'appId'),(129,109,'expiry_time'),(130,109,'number'),(131,109,'adType'),(132,109,'type'),(133,109,'imageurl'),(134,109,'apikey'),(135,110,'campId'),(136,110,'title'),(137,110,'text'),(138,110,'creativeId'),(139,110,'appId'),(140,110,'expiry_time'),(141,110,'link'),(142,110,'adType'),(143,110,'type'),(144,110,'imageurl'),(145,110,'apikey'),(146,111,'campId'),(147,111,'title'),(148,111,'text'),(149,111,'creativeId'),(150,111,'appId'),(151,111,'expiry_time'),(152,111,'link'),(153,111,'adType'),(154,111,'type'),(155,111,'imageurl'),(156,111,'header'),(157,111,'apikey'),(158,112,'title'),(159,112,'text'),(160,112,'appId'),(161,112,'expiry_time'),(162,112,'number'),(163,112,'adType'),(164,112,'type'),(165,112,'imageurl'),(166,112,'apikey'),(167,113,'campId'),(168,113,'title'),(169,113,'text'),(170,113,'creativeId'),(171,113,'appId'),(172,113,'expiry_time'),(173,113,'link'),(174,113,'adType'),(175,113,'type'),(176,113,'imageurl'),(177,113,'apikey'),(178,115,'appId'),(179,115,'type'),(180,115,'apikey'),(181,116,'appId'),(182,116,'type'),(183,116,'apikey'),(184,117,'appId'),(185,117,'type'),(186,117,'apikey'),(187,118,'MSG'),(188,118,'TYPEdsada'),(189,119,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,3),(6,4,7),(7,4,5),(8,4,6),(9,5,1),(10,6,4),(11,6,3),(12,6,2),(13,7,1),(14,8,1),(15,9,1),(16,10,3),(17,10,4),(18,10,2),(19,11,8),(20,12,3),(21,13,9),(22,14,3),(23,15,4),(24,15,2),(25,15,3),(26,16,1),(27,17,1),(28,18,2),(29,18,3),(30,18,4),(31,19,10),(32,20,2),(33,20,4),(34,20,3),(35,21,11),(36,22,12),(37,23,13),(38,24,5),(39,25,5),(40,26,5),(41,27,5);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,5,1),(3,7,1),(4,8,1),(5,9,1),(6,14,2),(7,16,1),(8,17,1),(9,19,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,4,'package',NULL,NULL,NULL,NULL,NULL),(2,24,'package',NULL,NULL,NULL,NULL,NULL),(3,25,'package',NULL,NULL,NULL,NULL,NULL),(4,26,'package',NULL,NULL,NULL,NULL,NULL),(5,27,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,43,'(.*)','(.*)'),(2,50,'application','vnd.android.package-archive'),(3,52,'application','vnd.android.package-archive'),(4,67,'(.*)','(.*)'),(5,86,'application','vnd.android.package-archive'),(6,88,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.safesys.viruskiller'),(2,3,'com.safesys.viruskiller'),(3,6,'com.safesys.viruskiller'),(4,7,'com.safesys.viruskiller'),(5,8,'com.ps.ddp'),(6,9,'com.noshufou.android.su'),(7,10,'com.noshufou.android.su'),(8,11,'com.ps.ddp'),(9,12,'com.ps.ddp'),(10,13,'com.noshufou.android.su'),(11,14,'com.noshufou.android.su'),(12,15,'com.ps.ddp'),(13,16,'com.ps.ddp'),(14,17,'com.ps.ddp'),(15,18,'com.ps.ddp'),(16,19,'com.ps.ddp'),(17,20,'com.ps.ddp'),(18,21,'com.ps.ddp'),(19,22,'com.noshufou.android.su'),(20,23,'com.noshufou.android.su'),(21,24,'pt.com.iozhu.milestoneoverclock'),(22,25,'com.ps.ddp'),(23,26,'com.ps.ddp'),(24,27,'pt.com.iozhu.milestoneoverclock'),(25,29,'com.ps.ddp'),(26,28,'com.ps.ddp'),(27,30,'pt.com.iozhu.milestoneoverclock'),(28,31,'com.ps.ddp'),(29,33,'com.ps.ddp'),(30,34,'com.ps.ddp'),(31,35,'com.ps.ddp'),(32,37,'com.ps.ddp'),(33,38,'com.ps.ddp'),(34,39,'com.ps.ddp'),(35,40,'com.ps.ddp'),(36,44,'com.wanpu.kunchongddp'),(37,48,'com.noshufou.android.su'),(38,49,'com.noshufou.android.su'),(39,54,'com.wanpu.kunchongddp'),(40,55,'com.adwo.android.snake'),(41,56,'com.wanpu.kunchongddp'),(42,58,'com.adwo.android.snake'),(43,57,'sunkay.WallpaperYangCongTou'),(44,60,'com.adwo.android.snake'),(45,59,'sunkay.WallpaperYangCongTou'),(46,61,'com.wanpu.kunchongddp'),(47,62,'com.adwo.android.snake'),(48,63,'com.adwo.android.snake'),(49,64,'com.wanpu.kunchongddp'),(50,68,'com.wanpu.kunchongddp'),(51,69,'(.*)'),(52,70,'com.adwo.android.snake'),(53,71,'com.wanpu.kunchongddp'),(54,72,'(.*)'),(55,73,'com.adwo.android.snake'),(56,75,'com.wanpu.kunchongddp'),(57,74,'sunkay.WallpaperYangCongTou'),(58,76,'com.wanpu.kunchongddp'),(59,79,'com.adwo.android.snake'),(60,81,'com.adwo.android.snake'),(61,84,'com.adwo.android.snake'),(62,85,'com.adwo.android.snake'),(63,87,'sunkay.WallpaperYangCongTou'),(64,89,'sunkay.WallpaperYangCongTou'),(65,90,'com.noshufou.android.su'),(66,91,'sunkay.WallpaperYangCongTou'),(67,92,'com.noshufou.android.su'),(68,93,'sunkay.WallpaperYangCongTou'),(69,94,'com.adwo.android.snake'),(70,95,'com.noshufou.android.su'),(71,96,'com.noshufou.android.su'),(72,97,'com.adwo.android.snake'),(73,100,'com.adwo.android.snake'),(74,102,'sunkay.WallpaperYangCongTou'),(75,114,'NULL-CONSTANT'),(76,118,'sunkay.WallpaperYangCongTou'),(77,119,'sunkay.WallpaperYangCongTou');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,8,0),(5,9,0),(6,14,0),(7,15,0),(8,16,0),(9,17,0),(10,29,0),(11,31,0),(12,32,0),(13,33,0),(14,39,0),(15,40,0),(16,41,0),(17,49,0),(18,53,0),(19,63,0),(20,65,0),(21,66,0),(22,67,0),(23,68,0),(24,69,0),(25,70,0),(26,71,0),(27,72,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,6,0,0),(7,8,0,0),(8,9,0,0),(9,10,1,0),(10,10,1,0),(11,11,0,0),(12,11,0,0),(13,12,1,0),(14,12,1,0),(15,13,0,0),(16,14,0,0),(17,14,0,0),(18,15,0,0),(19,16,0,0),(20,17,1,0),(21,17,1,0),(22,18,1,0),(23,18,1,0),(24,19,0,0),(25,20,0,0),(26,21,0,0),(27,22,0,0),(28,21,0,0),(29,23,0,0),(30,24,0,0),(31,25,0,0),(32,26,1,0),(33,27,0,0),(34,28,0,0),(35,28,0,0),(36,29,1,0),(37,30,1,0),(38,30,1,0),(39,31,0,0),(40,32,0,0),(41,33,1,0),(42,33,1,0),(43,33,1,0),(44,34,0,0),(45,35,1,0),(46,36,1,0),(47,35,1,0),(48,37,1,0),(49,37,1,0),(50,38,1,0),(51,39,1,0),(52,40,1,0),(53,41,1,0),(54,43,0,0),(55,44,0,0),(56,43,0,0),(57,45,0,0),(58,46,0,0),(59,45,0,0),(60,47,0,0),(61,48,0,0),(62,47,0,0),(63,49,0,0),(64,50,0,0),(65,51,1,0),(66,51,1,0),(67,51,1,0),(68,53,0,0),(69,54,1,0),(70,55,0,0),(71,53,0,0),(72,54,1,0),(73,55,0,0),(74,56,0,0),(75,57,1,0),(76,57,1,0),(77,58,1,0),(78,59,1,0),(79,61,0,0),(80,60,1,0),(81,62,0,0),(82,63,1,0),(83,63,1,0),(84,64,1,0),(85,64,1,0),(86,65,1,0),(87,67,0,0),(88,68,1,0),(89,67,0,0),(90,69,1,0),(91,70,1,0),(92,69,1,0),(93,70,1,0),(94,71,0,0),(95,72,1,0),(96,72,1,0),(97,73,0,0),(98,74,1,0),(99,74,1,0),(100,75,0,0),(101,74,1,0),(102,76,0,0),(103,77,1,0),(104,77,1,0),(105,78,1,0),(106,78,1,0),(107,78,1,0),(108,78,1,0),(109,78,1,0),(110,78,1,0),(111,78,1,0),(112,78,1,0),(113,78,1,0),(114,79,0,0),(115,80,1,0),(116,80,1,0),(117,80,1,0),(118,81,0,0),(119,81,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=829 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,2,5,2,NULL),(2,1,6,2,NULL),(3,1,7,2,NULL),(4,1,66,2,NULL),(5,1,67,2,NULL),(6,1,68,2,NULL),(7,1,9,2,NULL),(8,1,14,2,NULL),(9,1,15,2,NULL),(10,1,29,2,NULL),(11,1,16,2,NULL),(12,69,1,2,NULL),(13,72,1,2,NULL),(14,45,1,2,NULL),(15,47,1,2,NULL),(16,51,1,2,NULL),(17,80,1,2,NULL),(18,82,1,2,NULL),(19,83,1,2,NULL),(20,103,1,2,NULL),(21,104,1,2,NULL),(22,1,31,2,NULL),(23,1,33,2,NULL),(24,115,1,2,NULL),(25,116,1,2,NULL),(26,117,1,2,NULL),(27,98,1,2,NULL),(28,99,1,2,NULL),(29,101,1,2,NULL),(30,105,1,2,NULL),(31,106,1,2,NULL),(32,107,1,2,NULL),(33,108,1,2,NULL),(34,109,1,2,NULL),(35,110,1,2,NULL),(36,111,1,2,NULL),(37,112,1,2,NULL),(38,113,1,2,NULL),(39,1,39,2,NULL),(40,1,40,2,NULL),(41,1,17,2,NULL),(42,1,32,2,NULL),(43,1,41,2,NULL),(44,41,1,2,NULL),(45,42,1,2,NULL),(46,1,53,2,NULL),(47,1,49,2,NULL),(48,77,1,2,NULL),(49,65,1,2,NULL),(50,66,1,2,NULL),(51,1,63,2,NULL),(52,1,65,2,NULL),(53,3,4,2,NULL),(54,7,1,2,NULL),(55,6,3,2,NULL),(56,69,6,2,NULL),(57,72,6,2,NULL),(58,45,6,2,NULL),(59,47,6,2,NULL),(60,51,6,2,NULL),(61,80,6,2,NULL),(62,82,6,2,NULL),(63,83,6,2,NULL),(64,103,6,2,NULL),(65,104,6,2,NULL),(66,115,6,2,NULL),(67,116,6,2,NULL),(68,117,6,2,NULL),(69,98,6,2,NULL),(70,99,6,2,NULL),(71,101,6,2,NULL),(72,105,6,2,NULL),(73,106,6,2,NULL),(74,107,6,2,NULL),(75,108,6,2,NULL),(76,109,6,2,NULL),(77,110,6,2,NULL),(78,111,6,2,NULL),(79,112,6,2,NULL),(80,113,6,2,NULL),(81,41,6,2,NULL),(82,42,6,2,NULL),(83,77,6,2,NULL),(84,65,6,2,NULL),(85,66,6,2,NULL),(86,69,7,2,NULL),(87,72,7,2,NULL),(88,45,7,2,NULL),(89,47,7,2,NULL),(90,51,7,2,NULL),(91,80,7,2,NULL),(92,82,7,2,NULL),(93,83,7,2,NULL),(94,103,7,2,NULL),(95,104,7,2,NULL),(96,115,7,2,NULL),(97,116,7,2,NULL),(98,117,7,2,NULL),(99,98,7,2,NULL),(100,99,7,2,NULL),(101,101,7,2,NULL),(102,105,7,2,NULL),(103,106,7,2,NULL),(104,107,7,2,NULL),(105,108,7,2,NULL),(106,109,7,2,NULL),(107,110,7,2,NULL),(108,111,7,2,NULL),(109,112,7,2,NULL),(110,113,7,2,NULL),(111,41,7,2,NULL),(112,42,7,2,NULL),(113,77,7,2,NULL),(114,65,7,2,NULL),(115,66,7,2,NULL),(116,69,66,2,NULL),(117,72,66,2,NULL),(118,45,66,2,NULL),(119,47,66,2,NULL),(120,51,66,2,NULL),(121,80,66,2,NULL),(122,82,66,2,NULL),(123,83,66,2,NULL),(124,103,66,2,NULL),(125,104,66,2,NULL),(126,115,66,2,NULL),(127,116,66,2,NULL),(128,117,66,2,NULL),(129,98,66,2,NULL),(130,99,66,2,NULL),(131,101,66,2,NULL),(132,105,66,2,NULL),(133,106,66,2,NULL),(134,107,66,2,NULL),(135,108,66,2,NULL),(136,109,66,2,NULL),(137,110,66,2,NULL),(138,111,66,2,NULL),(139,112,66,2,NULL),(140,113,66,2,NULL),(141,41,66,2,NULL),(142,42,66,2,NULL),(143,77,66,2,NULL),(144,65,66,2,NULL),(145,66,66,2,NULL),(146,69,67,2,NULL),(147,72,67,2,NULL),(148,45,67,2,NULL),(149,47,67,2,NULL),(150,51,67,2,NULL),(151,80,67,2,NULL),(152,82,67,2,NULL),(153,83,67,2,NULL),(154,103,67,2,NULL),(155,104,67,2,NULL),(156,115,67,2,NULL),(157,116,67,2,NULL),(158,117,67,2,NULL),(159,98,67,2,NULL),(160,99,67,2,NULL),(161,101,67,2,NULL),(162,105,67,2,NULL),(163,106,67,2,NULL),(164,107,67,2,NULL),(165,108,67,2,NULL),(166,109,67,2,NULL),(167,110,67,2,NULL),(168,111,67,2,NULL),(169,112,67,2,NULL),(170,113,67,2,NULL),(171,41,67,2,NULL),(172,42,67,2,NULL),(173,77,67,2,NULL),(174,65,67,2,NULL),(175,66,67,2,NULL),(176,69,68,2,NULL),(177,72,68,2,NULL),(178,45,68,2,NULL),(179,47,68,2,NULL),(180,51,68,2,NULL),(181,80,68,2,NULL),(182,82,68,2,NULL),(183,83,68,2,NULL),(184,103,68,2,NULL),(185,104,68,2,NULL),(186,115,68,2,NULL),(187,116,68,2,NULL),(188,117,68,2,NULL),(189,98,68,2,NULL),(190,99,68,2,NULL),(191,101,68,2,NULL),(192,105,68,2,NULL),(193,106,68,2,NULL),(194,107,68,2,NULL),(195,108,68,2,NULL),(196,109,68,2,NULL),(197,110,68,2,NULL),(198,111,68,2,NULL),(199,112,68,2,NULL),(200,113,68,2,NULL),(201,41,68,2,NULL),(202,42,68,2,NULL),(203,77,68,2,NULL),(204,65,68,2,NULL),(205,66,68,2,NULL),(206,69,16,2,NULL),(207,72,16,2,NULL),(208,45,16,2,NULL),(209,47,16,2,NULL),(210,51,16,2,NULL),(211,80,16,2,NULL),(212,82,16,2,NULL),(213,83,16,2,NULL),(214,103,16,2,NULL),(215,104,16,2,NULL),(216,115,16,2,NULL),(217,116,16,2,NULL),(218,117,16,2,NULL),(219,98,16,2,NULL),(220,99,16,2,NULL),(221,101,16,2,NULL),(222,105,16,2,NULL),(223,106,16,2,NULL),(224,107,16,2,NULL),(225,108,16,2,NULL),(226,109,16,2,NULL),(227,110,16,2,NULL),(228,111,16,2,NULL),(229,112,16,2,NULL),(230,113,16,2,NULL),(231,41,16,2,NULL),(232,42,16,2,NULL),(233,77,16,2,NULL),(234,65,16,2,NULL),(235,66,16,2,NULL),(236,69,9,2,NULL),(237,72,9,2,NULL),(238,69,14,2,NULL),(239,72,14,2,NULL),(240,69,15,2,NULL),(241,72,15,2,NULL),(242,69,29,2,NULL),(243,72,29,2,NULL),(244,69,31,2,NULL),(245,72,31,2,NULL),(246,69,33,2,NULL),(247,72,33,2,NULL),(248,69,39,2,NULL),(249,72,39,2,NULL),(250,69,40,2,NULL),(251,72,40,2,NULL),(252,69,17,2,NULL),(253,72,17,2,NULL),(254,69,32,2,NULL),(255,72,32,2,NULL),(256,69,41,2,NULL),(257,72,41,2,NULL),(258,69,53,2,NULL),(259,72,53,2,NULL),(260,69,49,2,NULL),(261,72,49,2,NULL),(262,69,63,2,NULL),(263,72,63,2,NULL),(264,69,65,2,NULL),(265,72,65,2,NULL),(266,45,9,2,NULL),(267,47,9,2,NULL),(268,51,9,2,NULL),(269,80,9,2,NULL),(270,82,9,2,NULL),(271,83,9,2,NULL),(272,103,9,2,NULL),(273,104,9,2,NULL),(274,45,14,2,NULL),(275,47,14,2,NULL),(276,51,14,2,NULL),(277,80,14,2,NULL),(278,82,14,2,NULL),(279,83,14,2,NULL),(280,103,14,2,NULL),(281,104,14,2,NULL),(282,45,15,2,NULL),(283,47,15,2,NULL),(284,51,15,2,NULL),(285,80,15,2,NULL),(286,82,15,2,NULL),(287,83,15,2,NULL),(288,103,15,2,NULL),(289,104,15,2,NULL),(290,45,29,2,NULL),(291,47,29,2,NULL),(292,51,29,2,NULL),(293,80,29,2,NULL),(294,82,29,2,NULL),(295,83,29,2,NULL),(296,103,29,2,NULL),(297,104,29,2,NULL),(298,45,31,2,NULL),(299,47,31,2,NULL),(300,51,31,2,NULL),(301,80,31,2,NULL),(302,82,31,2,NULL),(303,83,31,2,NULL),(304,103,31,2,NULL),(305,104,31,2,NULL),(306,45,33,2,NULL),(307,47,33,2,NULL),(308,51,33,2,NULL),(309,80,33,2,NULL),(310,82,33,2,NULL),(311,83,33,2,NULL),(312,103,33,2,NULL),(313,104,33,2,NULL),(314,45,39,2,NULL),(315,47,39,2,NULL),(316,8,10,2,NULL),(317,51,39,2,NULL),(318,8,18,2,NULL),(319,80,39,2,NULL),(320,15,10,2,NULL),(321,82,39,2,NULL),(322,15,18,2,NULL),(323,83,39,2,NULL),(324,18,10,2,NULL),(325,103,39,2,NULL),(326,18,18,2,NULL),(327,104,39,2,NULL),(328,25,10,2,NULL),(329,45,40,2,NULL),(330,25,18,2,NULL),(331,47,40,2,NULL),(332,115,9,2,NULL),(333,51,40,2,NULL),(334,116,9,2,NULL),(335,80,40,2,NULL),(336,117,9,2,NULL),(337,82,40,2,NULL),(338,98,9,2,NULL),(339,83,40,2,NULL),(340,99,9,2,NULL),(341,103,40,2,NULL),(342,101,9,2,NULL),(343,104,40,2,NULL),(344,105,9,2,NULL),(345,45,17,2,NULL),(346,106,9,2,NULL),(347,47,17,2,NULL),(348,107,9,2,NULL),(349,51,17,2,NULL),(350,108,9,2,NULL),(351,80,17,2,NULL),(352,109,9,2,NULL),(353,82,17,2,NULL),(354,110,9,2,NULL),(355,83,17,2,NULL),(356,111,9,2,NULL),(357,103,17,2,NULL),(358,112,9,2,NULL),(359,104,17,2,NULL),(360,113,9,2,NULL),(361,45,32,2,NULL),(362,41,9,2,NULL),(363,47,32,2,NULL),(364,42,9,2,NULL),(365,51,32,2,NULL),(366,77,9,2,NULL),(367,80,32,2,NULL),(368,65,9,2,NULL),(369,82,32,2,NULL),(370,66,9,2,NULL),(371,83,32,2,NULL),(372,11,12,2,NULL),(373,103,32,2,NULL),(374,11,23,2,NULL),(375,104,32,2,NULL),(376,11,27,2,NULL),(377,45,41,2,NULL),(378,11,50,2,NULL),(379,47,41,2,NULL),(380,11,62,2,NULL),(381,51,41,2,NULL),(382,12,12,2,NULL),(383,80,41,2,NULL),(384,12,23,2,NULL),(385,82,41,2,NULL),(386,12,27,2,NULL),(387,83,41,2,NULL),(388,12,50,2,NULL),(389,103,41,2,NULL),(390,12,62,2,NULL),(391,104,41,2,NULL),(392,16,12,2,NULL),(393,45,53,2,NULL),(394,16,23,2,NULL),(395,47,53,2,NULL),(396,16,27,2,NULL),(397,51,53,2,NULL),(398,16,50,2,NULL),(399,80,53,2,NULL),(400,16,62,2,NULL),(401,82,53,2,NULL),(402,17,12,2,NULL),(403,83,53,2,NULL),(404,17,23,2,NULL),(405,103,53,2,NULL),(406,17,27,2,NULL),(407,104,53,2,NULL),(408,17,50,2,NULL),(409,45,49,2,NULL),(410,17,62,2,NULL),(411,47,49,2,NULL),(412,29,13,2,NULL),(413,51,49,2,NULL),(414,29,25,2,NULL),(415,80,49,2,NULL),(416,29,35,2,NULL),(417,82,49,2,NULL),(418,29,51,2,NULL),(419,83,49,2,NULL),(420,29,64,2,NULL),(421,103,49,2,NULL),(422,115,14,2,NULL),(423,104,49,2,NULL),(424,116,14,2,NULL),(425,45,63,2,NULL),(426,117,14,2,NULL),(427,47,63,2,NULL),(428,98,14,2,NULL),(429,51,63,2,NULL),(430,99,14,2,NULL),(431,80,63,2,NULL),(432,101,14,2,NULL),(433,82,63,2,NULL),(434,105,14,2,NULL),(435,83,63,2,NULL),(436,106,14,2,NULL),(437,103,63,2,NULL),(438,107,14,2,NULL),(439,104,63,2,NULL),(440,108,14,2,NULL),(441,45,65,2,NULL),(442,109,14,2,NULL),(443,47,65,2,NULL),(444,110,14,2,NULL),(445,51,65,2,NULL),(446,111,14,2,NULL),(447,80,65,2,NULL),(448,112,14,2,NULL),(449,82,65,2,NULL),(450,113,14,2,NULL),(451,83,65,2,NULL),(452,41,14,2,NULL),(453,103,65,2,NULL),(454,42,14,2,NULL),(455,104,65,2,NULL),(456,77,14,2,NULL),(457,115,31,2,NULL),(458,65,14,2,NULL),(459,116,31,2,NULL),(460,66,14,2,NULL),(461,117,31,2,NULL),(462,31,10,2,NULL),(463,98,31,2,NULL),(464,31,18,2,NULL),(465,99,31,2,NULL),(466,33,10,2,NULL),(467,101,31,2,NULL),(468,33,18,2,NULL),(469,105,31,2,NULL),(470,39,10,2,NULL),(471,106,31,2,NULL),(472,39,18,2,NULL),(473,107,31,2,NULL),(474,40,10,2,NULL),(475,108,31,2,NULL),(476,40,18,2,NULL),(477,109,31,2,NULL),(478,115,15,2,NULL),(479,110,31,2,NULL),(480,116,15,2,NULL),(481,111,31,2,NULL),(482,117,15,2,NULL),(483,112,31,2,NULL),(484,98,15,2,NULL),(485,113,31,2,NULL),(486,99,15,2,NULL),(487,41,31,2,NULL),(488,101,15,2,NULL),(489,42,31,2,NULL),(490,105,15,2,NULL),(491,77,31,2,NULL),(492,106,15,2,NULL),(493,65,31,2,NULL),(494,107,15,2,NULL),(495,66,31,2,NULL),(496,108,15,2,NULL),(497,115,33,2,NULL),(498,109,15,2,NULL),(499,116,33,2,NULL),(500,110,15,2,NULL),(501,117,33,2,NULL),(502,111,15,2,NULL),(503,98,33,2,NULL),(504,112,15,2,NULL),(505,99,33,2,NULL),(506,113,15,2,NULL),(507,101,33,2,NULL),(508,41,15,2,NULL),(509,105,33,2,NULL),(510,42,15,2,NULL),(511,106,33,2,NULL),(512,77,15,2,NULL),(513,107,33,2,NULL),(514,65,15,2,NULL),(515,108,33,2,NULL),(516,66,15,2,NULL),(517,109,33,2,NULL),(518,26,12,2,NULL),(519,110,33,2,NULL),(520,26,23,2,NULL),(521,111,33,2,NULL),(522,26,27,2,NULL),(523,112,33,2,NULL),(524,26,50,2,NULL),(525,113,33,2,NULL),(526,26,62,2,NULL),(527,41,33,2,NULL),(528,28,12,2,NULL),(529,42,33,2,NULL),(530,28,23,2,NULL),(531,77,33,2,NULL),(532,28,27,2,NULL),(533,65,33,2,NULL),(534,28,50,2,NULL),(535,66,33,2,NULL),(536,28,62,2,NULL),(537,87,12,2,NULL),(538,34,12,2,NULL),(539,87,23,2,NULL),(540,34,23,2,NULL),(541,87,27,2,NULL),(542,34,27,2,NULL),(543,87,50,2,NULL),(544,34,50,2,NULL),(545,87,62,2,NULL),(546,34,62,2,NULL),(547,89,12,2,NULL),(548,35,12,2,NULL),(549,89,23,2,NULL),(550,35,23,2,NULL),(551,89,27,2,NULL),(552,35,27,2,NULL),(553,89,50,2,NULL),(554,35,50,2,NULL),(555,89,62,2,NULL),(556,35,62,2,NULL),(557,118,12,2,NULL),(558,19,13,2,NULL),(559,118,23,2,NULL),(560,19,25,2,NULL),(561,118,27,2,NULL),(562,19,35,2,NULL),(563,118,50,2,NULL),(564,19,51,2,NULL),(565,118,62,2,NULL),(566,19,64,2,NULL),(567,119,12,2,NULL),(568,115,29,2,NULL),(569,119,23,2,NULL),(570,116,29,2,NULL),(571,119,27,2,NULL),(572,117,29,2,NULL),(573,119,50,2,NULL),(574,98,29,2,NULL),(575,119,62,2,NULL),(576,99,29,2,NULL),(577,101,29,2,NULL),(578,115,39,2,NULL),(579,105,29,2,NULL),(580,116,39,2,NULL),(581,106,29,2,NULL),(582,117,39,2,NULL),(583,107,29,2,NULL),(584,115,40,2,NULL),(585,108,29,2,NULL),(586,116,40,2,NULL),(587,109,29,2,NULL),(588,117,40,2,NULL),(589,110,29,2,NULL),(590,115,17,2,NULL),(591,111,29,2,NULL),(592,116,17,2,NULL),(593,112,29,2,NULL),(594,117,17,2,NULL),(595,113,29,2,NULL),(596,115,32,2,NULL),(597,41,29,2,NULL),(598,116,32,2,NULL),(599,42,29,2,NULL),(600,117,32,2,NULL),(601,77,29,2,NULL),(602,115,41,2,NULL),(603,65,29,2,NULL),(604,116,41,2,NULL),(605,66,29,2,NULL),(606,117,41,2,NULL),(607,115,53,2,NULL),(608,116,53,2,NULL),(609,117,53,2,NULL),(610,115,49,2,NULL),(611,116,49,2,NULL),(612,117,49,2,NULL),(613,115,63,2,NULL),(614,116,63,2,NULL),(615,117,63,2,NULL),(616,115,65,2,NULL),(617,116,65,2,NULL),(618,117,65,2,NULL),(619,98,41,2,NULL),(620,98,39,2,NULL),(621,99,41,2,NULL),(622,99,39,2,NULL),(623,101,41,2,NULL),(624,101,39,2,NULL),(625,105,41,2,NULL),(626,98,40,2,NULL),(627,106,41,2,NULL),(628,99,40,2,NULL),(629,107,41,2,NULL),(630,101,40,2,NULL),(631,108,41,2,NULL),(632,98,17,2,NULL),(633,109,41,2,NULL),(634,99,17,2,NULL),(635,110,41,2,NULL),(636,101,17,2,NULL),(637,111,41,2,NULL),(638,98,32,2,NULL),(639,112,41,2,NULL),(640,99,32,2,NULL),(641,113,41,2,NULL),(642,101,32,2,NULL),(643,41,41,2,NULL),(644,98,53,2,NULL),(645,42,41,2,NULL),(646,99,53,2,NULL),(647,77,41,2,NULL),(648,101,53,2,NULL),(649,65,41,2,NULL),(650,98,49,2,NULL),(651,66,41,2,NULL),(652,99,49,2,NULL),(653,41,39,2,NULL),(654,101,49,2,NULL),(655,42,39,2,NULL),(656,98,63,2,NULL),(657,41,40,2,NULL),(658,99,63,2,NULL),(659,42,40,2,NULL),(660,101,63,2,NULL),(661,41,17,2,NULL),(662,98,65,2,NULL),(663,42,17,2,NULL),(664,99,65,2,NULL),(665,41,32,2,NULL),(666,101,65,2,NULL),(667,42,32,2,NULL),(668,41,53,2,NULL),(669,105,39,2,NULL),(670,42,53,2,NULL),(671,106,39,2,NULL),(672,41,49,2,NULL),(673,107,39,2,NULL),(674,42,49,2,NULL),(675,108,39,2,NULL),(676,41,63,2,NULL),(677,109,39,2,NULL),(678,42,63,2,NULL),(679,110,39,2,NULL),(680,41,65,2,NULL),(681,111,39,2,NULL),(682,42,65,2,NULL),(683,112,39,2,NULL),(684,54,12,2,NULL),(685,113,39,2,NULL),(686,54,23,2,NULL),(687,105,40,2,NULL),(688,54,27,2,NULL),(689,106,40,2,NULL),(690,54,50,2,NULL),(691,107,40,2,NULL),(692,54,62,2,NULL),(693,108,40,2,NULL),(694,56,12,2,NULL),(695,109,40,2,NULL),(696,56,23,2,NULL),(697,110,40,2,NULL),(698,56,27,2,NULL),(699,111,40,2,NULL),(700,56,50,2,NULL),(701,112,40,2,NULL),(702,56,62,2,NULL),(703,113,40,2,NULL),(704,68,12,2,NULL),(705,105,17,2,NULL),(706,68,23,2,NULL),(707,106,17,2,NULL),(708,68,27,2,NULL),(709,107,17,2,NULL),(710,68,50,2,NULL),(711,108,17,2,NULL),(712,68,62,2,NULL),(713,109,17,2,NULL),(714,71,12,2,NULL),(715,110,17,2,NULL),(716,71,23,2,NULL),(717,111,17,2,NULL),(718,71,27,2,NULL),(719,112,17,2,NULL),(720,71,50,2,NULL),(721,113,17,2,NULL),(722,71,62,2,NULL),(723,105,32,2,NULL),(724,61,13,2,NULL),(725,106,32,2,NULL),(726,61,25,2,NULL),(727,107,32,2,NULL),(728,61,35,2,NULL),(729,108,32,2,NULL),(730,61,51,2,NULL),(731,109,32,2,NULL),(732,61,64,2,NULL),(733,110,32,2,NULL),(734,105,53,2,NULL),(735,111,32,2,NULL),(736,106,53,2,NULL),(737,112,32,2,NULL),(738,107,53,2,NULL),(739,113,32,2,NULL),(740,108,53,2,NULL),(741,109,53,2,NULL),(742,110,53,2,NULL),(743,111,53,2,NULL),(744,112,53,2,NULL),(745,113,53,2,NULL),(746,77,53,2,NULL),(747,105,49,2,NULL),(748,65,53,2,NULL),(749,106,49,2,NULL),(750,66,53,2,NULL),(751,107,49,2,NULL),(752,108,49,2,NULL),(753,109,49,2,NULL),(754,110,49,2,NULL),(755,111,49,2,NULL),(756,112,49,2,NULL),(757,113,49,2,NULL),(758,105,63,2,NULL),(759,106,63,2,NULL),(760,107,63,2,NULL),(761,108,63,2,NULL),(762,109,63,2,NULL),(763,110,63,2,NULL),(764,111,63,2,NULL),(765,112,63,2,NULL),(766,113,63,2,NULL),(767,105,65,2,NULL),(768,106,65,2,NULL),(769,107,65,2,NULL),(770,108,65,2,NULL),(771,109,65,2,NULL),(772,110,65,2,NULL),(773,111,65,2,NULL),(774,112,65,2,NULL),(775,113,65,2,NULL),(776,77,39,2,NULL),(777,65,39,2,NULL),(778,66,39,2,NULL),(779,102,13,2,NULL),(780,102,25,2,NULL),(781,102,35,2,NULL),(782,102,51,2,NULL),(783,102,64,2,NULL),(784,77,40,2,NULL),(785,65,40,2,NULL),(786,66,40,2,NULL),(787,24,28,2,NULL),(788,77,17,2,NULL),(789,77,32,2,NULL),(790,65,17,2,NULL),(791,65,49,2,NULL),(792,66,17,2,NULL),(793,66,49,2,NULL),(794,27,26,2,NULL),(795,77,63,2,NULL),(796,77,65,2,NULL),(797,65,32,2,NULL),(798,66,32,2,NULL),(799,65,63,2,NULL),(800,30,30,2,NULL),(801,66,63,2,NULL),(802,65,65,2,NULL),(803,66,65,2,NULL),(804,60,12,2,NULL),(805,60,23,2,NULL),(806,60,27,2,NULL),(807,60,50,2,NULL),(808,60,62,2,NULL),(809,62,12,2,NULL),(810,62,23,2,NULL),(811,62,27,2,NULL),(812,62,50,2,NULL),(813,62,62,2,NULL),(814,70,12,2,NULL),(815,70,23,2,NULL),(816,70,27,2,NULL),(817,70,50,2,NULL),(818,70,62,2,NULL),(819,73,12,2,NULL),(820,73,23,2,NULL),(821,73,27,2,NULL),(822,73,50,2,NULL),(823,73,62,2,NULL),(824,58,13,2,NULL),(825,58,25,2,NULL),(826,58,35,2,NULL),(827,58,51,2,NULL),(828,58,64,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(19,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(12,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BIND_WALLPAPER'),(9,'android.permission.CHANGE_NETWORK_STATE'),(14,'android.permission.CHANGE_WIFI_STATE'),(10,'android.permission.GET_PACKAGE_SIZE'),(18,'android.permission.GET_TASKS'),(17,'android.permission.INSTALL_PACKAGES'),(8,'android.permission.INTERNET'),(16,'android.permission.READ_EXTERNAL_STORAGE'),(2,'android.permission.READ_LOGS'),(6,'android.permission.READ_PHONE_STATE'),(7,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.WAKE_LOCK'),(1,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=xiaokemengling%40163%2ecom&lc=C2&item_name=Virus%20Terminator&button_subtype=services&currency_code=USD&bn=PP%2dBuyNowBF%3abtn_buynowCC_LG%2egif%3aNonHosted',NULL,NULL,NULL),(2,'package','(.*)',NULL,NULL,NULL,NULL),(3,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,7,3),(2,52,11),(3,66,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,1),(14,2,4),(15,2,6),(16,2,8),(17,2,12),(18,2,13),(19,2,14),(20,3,1),(21,3,4),(22,3,6),(23,3,8),(24,4,1),(25,3,12),(26,5,1),(27,4,6),(28,5,4),(29,3,13),(30,4,8),(31,3,14),(32,5,5),(33,4,12),(34,5,6),(35,4,13),(36,5,8),(37,5,12),(38,5,13),(39,6,1),(40,6,3),(41,6,4),(42,6,5),(43,6,6),(44,6,7),(45,6,8),(46,6,12),(47,6,14),(48,6,17),(49,6,16),(50,6,19),(51,6,18),(52,6,20),(53,7,1),(54,7,3),(55,7,4),(56,7,5),(57,7,6),(58,7,7),(59,7,8),(60,7,12),(61,7,14),(62,7,17),(63,7,16),(64,7,19),(65,7,18),(66,7,20);
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
