-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_142
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
INSERT INTO `ActionStrings` VALUES (8,'(.*)'),(5,'android.intent.action.BATTERY_CHANGED_ACTION'),(4,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.PACKAGE_ADDED'),(3,'android.intent.action.SIG_STR'),(2,'android.intent.action.VIEW'),(7,'com.airpush.android.PushServiceStart15790'),(6,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.robtheis.android.new',6),(2,'com.allen.txtshdys',1),(3,'com.alan.mp3cutter',52),(4,'com.mogo.puzzle',3),(5,'org.drhu.waterdropletfree',3),(6,'com.safetest.shark',3),(7,'com.ps.pushbox',11);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(3,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.robtheis.android.qes.Solver'),(2,1,'com.robtheis.android.qes.SolverVideo'),(3,1,'com.robtheis.android.qes.SolverHelp'),(4,1,'com.robtheis.android.qes.WebSolve'),(5,1,'com.airpuh.ad.UpdateCheck'),(6,2,'com.allen.txtshdys.txtReader'),(7,2,'com.allen.txtshdys.ViewFileAct_Float'),(8,2,'com.allen.txtshdys.Settings'),(9,2,'com.eguan.state.Dialog'),(10,2,'com.eguan.state.StateService'),(11,2,'com.eguan.state.Receiver'),(12,3,'com.alan.mp3cutter.Mp3Cutter'),(13,3,'com.alan.mp3cutter.Mp3Cut'),(14,3,'com.alan.mp3cutter.Mp3Join'),(15,3,'com.alan.mp3cutter.Mp3List'),(16,3,'org.achartengine.GraphicalActivity'),(17,3,'com.google.ads.AdActivity'),(18,4,'com.mogo.puzzle.Main'),(19,3,'com.vpon.adon.android.WebInApp'),(20,3,'com.adwo.adsdk.AdwoSplashAdActivity'),(21,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(22,4,'com.google.ads.AdActivity'),(23,3,'com.waps.OffersWebView'),(24,4,'com.vpon.adon.android.WebInApp'),(25,3,'com.google.update.Dialog'),(26,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(27,2,'com.eguan.state.Dialog$1'),(28,3,'com.google.update.UpdateService'),(29,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(30,3,'com.google.update.Receiver'),(31,4,'com.google.update.Dialog'),(32,4,'com.google.update.UpdateService'),(33,4,'com.google.update.Receiver'),(34,2,'com.eguan.state.StateService$MyThread'),(35,5,'org.drhu.waterdropletfree.BubbleEdit'),(36,5,'org.drhu.waterdropletfree.Welcome'),(37,5,'org.drhu.waterdropletfree.Game'),(38,5,'org.drhu.waterdropletfree.LevelList'),(39,5,'org.drhu.waterdropletfree.GameWin'),(40,6,'com.safetest.shark.HungryShark'),(41,5,'org.drhu.waterdropletfree.GameOver'),(42,5,'org.drhu.waterdropletfree.Help'),(43,5,'org.drhu.waterdropletfree.Profile'),(44,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(45,5,'org.drhu.waterdropletfree.About'),(46,6,'com.safetest.shark.ShowTips'),(47,5,'com.scoreloop.client.android.ui.EntryScreenActivity'),(48,6,'com.safetest.shark.UpdateService'),(49,5,'com.scoreloop.client.android.ui.ShowResultOverlayActivity'),(50,6,'com.safetest.shark.Receiver'),(51,5,'com.scoreloop.client.android.ui.ProfileScreenActivity'),(52,5,'com.scoreloop.client.android.ui.component.market.MarketHeaderActivity'),(53,5,'com.scoreloop.client.android.ui.component.market.MarketListActivity'),(54,5,'com.scoreloop.client.android.ui.component.entry.EntryListActivity'),(55,5,'com.scoreloop.client.android.ui.component.post.PostOverlayActivity'),(56,5,'com.scoreloop.client.android.ui.component.score.ScoreHeaderActivity'),(57,5,'com.scoreloop.client.android.ui.component.score.ScoreListActivity'),(58,5,'com.scoreloop.client.android.ui.component.user.UserAddBuddyListActivity'),(59,5,'com.scoreloop.client.android.ui.component.user.UserHeaderActivity'),(60,5,'com.scoreloop.client.android.ui.component.user.UserDetailListActivity'),(61,5,'com.scoreloop.client.android.ui.component.user.UserListActivity'),(62,5,'com.scoreloop.client.android.ui.component.game.GameDetailHeaderActivity'),(63,5,'com.scoreloop.client.android.ui.component.game.GameDetailListActivity'),(64,5,'com.scoreloop.client.android.ui.component.game.GameListActivity'),(65,5,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsListActivity'),(66,5,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsPictureListActivity'),(67,5,'com.scoreloop.client.android.ui.LeaderboardsScreenActivity'),(68,5,'com.scoreloop.client.android.ui.framework.ScreenActivity'),(69,5,'com.scoreloop.client.android.ui.framework.TabsActivity'),(70,5,'com.google.update.Dialog'),(71,5,'com.airpush.android.PushAds'),(72,5,'com.lmmob.ad.sdk.LmMobAdWebView'),(73,5,'com.lmmob.ad.sdk.LmMobFullImageActivity'),(74,7,'com.ps.pushbox.Pushbox'),(75,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(76,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(77,5,'com.google.update.UpdateService'),(78,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(79,5,'com.airpush.android.PushService'),(80,7,'com.google.update.Dialog'),(81,7,'com.google.update.UpdateService'),(82,7,'com.google.update.Receiver'),(83,5,'com.google.update.Receiver'),(84,5,'com.airpush.android.UserDetailsReceiver'),(85,5,'com.airpush.android.MessageReceiver'),(86,5,'com.airpush.android.DeliveryReceiver'),(87,5,'org.drhu.ricochetballlite.BootReceiver'),(88,6,'com.safetest.shark.ShowTips$1'),(89,4,'com.google.update.UpdateService$MyThread'),(90,4,'com.ju6.a'),(91,4,'com.google.update.Dialog$2'),(92,4,'com.google.update.Dialog$1'),(93,3,'com.alan.mp3cutter.Mp3Cutter$3'),(94,3,'com.google.update.Dialog$2'),(95,3,'com.alan.mp3cutter.Mp3List$3'),(96,3,'com.waps.q'),(97,3,'com.waps.aa'),(98,3,'com.waps.AppConnect'),(99,3,'com.google.update.Dialog$1'),(100,3,'com.waps.z'),(101,3,'com.google.update.UpdateService$AA'),(102,7,'com.google.update.Dialog$2'),(103,3,'com.waps.ac'),(104,3,'com.waps.o'),(105,3,'com.alan.mp3cutter.Mp3Cutter$2'),(106,7,'com.google.update.UpdateService$AA'),(107,7,'com.google.update.Dialog$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'MYAD_PID'),(2,4,'c'),(3,4,'b'),(4,4,'a'),(5,9,'TYPEdsada'),(6,9,'MSG'),(7,7,'book1'),(8,7,'/sdcard/txtbooks/shdys.txt'),(9,42,'shouldEnableBottomBar'),(10,46,'SAFE_START'),(11,42,'overlayTransition'),(12,46,'SAFE_PID'),(13,42,'shouldShowBottomBar'),(14,42,'url'),(15,42,'overlayTitle'),(16,42,'shouldResizeOverlay'),(17,44,'MM'),(18,24,'adWidth'),(19,26,'Adwo_PID'),(20,28,'shouldEnableBottomBar'),(21,42,'transitionTime'),(22,22,'action'),(23,42,'shouldMakeOverlayTransparent'),(24,42,'shouldShowTitlebar'),(25,28,'overlayTitle'),(26,31,'ST_MY_PID'),(27,28,'transitionTime'),(28,31,'ST_START_DELAY'),(29,22,'com.google.ads.AdOpener'),(30,26,'isTestMode'),(31,28,'shouldShowBottomBar'),(32,22,'params'),(33,30,'MSG'),(34,28,'overlayTransition'),(35,28,'shouldShowTitlebar'),(36,30,'TYPEdsada'),(37,24,'url'),(38,28,'url'),(39,28,'shouldMakeOverlayTransparent'),(40,28,'shouldResizeOverlay'),(41,15,'action'),(42,19,'adWidth'),(43,23,'USER_ID'),(44,23,'isFinshClose'),(45,20,'Adwo_PID'),(46,21,'shouldShowBottomBar'),(47,25,'TYPEdsada'),(48,21,'shouldResizeOverlay'),(49,19,'url'),(50,12,'UMENG_CHANNEL'),(51,21,'shouldEnableBottomBar'),(52,12,'WAPS_PID'),(53,23,'WAPS_PID'),(54,12,'DEVICE_ID'),(55,23,'DEVICE_ID'),(56,23,'Offers_URL'),(57,21,'shouldShowTitlebar'),(58,25,'MSG'),(59,23,'UrlPath'),(60,21,'url'),(61,12,'WAPS_ID'),(62,23,'WAPS_ID'),(63,12,'APP_ID'),(64,23,'APP_ID'),(65,21,'overlayTitle'),(66,12,'CLIENT_PACKAGE'),(67,23,'CLIENT_PACKAGE'),(68,23,'Notify_Id'),(69,21,'overlayTransition'),(70,21,'shouldMakeOverlayTransparent'),(71,23,'ACTIVITY_FLAG'),(72,23,'Notify_Url_Params'),(73,13,'name'),(74,23,'SHWO_FLAG'),(75,21,'transitionTime'),(76,27,'ST_MY_PID'),(77,27,'ST_START_DELAY'),(78,23,'URL'),(79,20,'isTestMode'),(80,76,'shouldShowTitlebar'),(81,12,'UMENG_APPKEY'),(82,23,'offers_webview_tag'),(83,76,'url'),(84,76,'overlayTransition'),(85,76,'shouldShowBottomBar'),(86,78,'TYPEdsada'),(87,23,'URL_PARAMS'),(88,76,'shouldResizeOverlay'),(89,78,'MSG'),(90,79,'ST_START_DELAY'),(91,76,'overlayTitle'),(92,76,'shouldMakeOverlayTransparent'),(93,76,'shouldEnableBottomBar'),(94,76,'transitionTime'),(95,79,'ST_MY_PID');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,28,'s',0,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,30,'r',1,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,32,'s',0,NULL,NULL),(32,33,'r',1,NULL,NULL),(33,35,'a',1,NULL,NULL),(34,36,'a',0,NULL,NULL),(35,37,'a',0,NULL,NULL),(36,38,'a',0,NULL,NULL),(37,39,'a',0,NULL,NULL),(38,40,'a',1,NULL,NULL),(39,41,'a',0,NULL,NULL),(40,42,'a',0,NULL,NULL),(41,43,'a',0,NULL,NULL),(42,44,'a',0,NULL,NULL),(43,45,'a',0,NULL,NULL),(44,46,'a',0,NULL,NULL),(45,47,'a',0,NULL,NULL),(46,48,'s',0,NULL,NULL),(47,49,'a',0,NULL,NULL),(48,50,'r',1,NULL,NULL),(49,51,'a',0,NULL,NULL),(50,52,'a',0,NULL,NULL),(51,53,'a',0,NULL,NULL),(52,54,'a',0,NULL,NULL),(53,55,'a',0,NULL,NULL),(54,56,'a',0,NULL,NULL),(55,57,'a',0,NULL,NULL),(56,58,'a',0,NULL,NULL),(57,59,'a',0,NULL,NULL),(58,60,'a',0,NULL,NULL),(59,61,'a',0,NULL,NULL),(60,62,'a',0,NULL,NULL),(61,63,'a',0,NULL,NULL),(62,64,'a',0,NULL,NULL),(63,65,'a',0,NULL,NULL),(64,66,'a',0,NULL,NULL),(65,67,'a',0,NULL,NULL),(66,68,'a',0,NULL,NULL),(67,69,'a',0,NULL,NULL),(68,70,'a',0,NULL,NULL),(69,71,'a',0,NULL,NULL),(70,72,'a',0,NULL,NULL),(71,73,'a',0,NULL,NULL),(72,74,'a',1,NULL,NULL),(73,75,'a',0,NULL,NULL),(74,76,'a',0,NULL,NULL),(75,77,'s',0,NULL,NULL),(76,78,'a',0,NULL,NULL),(77,79,'s',1,NULL,NULL),(78,80,'a',0,NULL,NULL),(79,81,'s',0,NULL,NULL),(80,82,'r',1,NULL,NULL),(81,83,'r',1,NULL,NULL),(82,84,'r',0,NULL,NULL),(83,85,'r',0,NULL,NULL),(84,86,'r',0,NULL,NULL),(85,87,'r',1,NULL,NULL),(86,96,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,9),(6,6,6),(7,7,10),(8,8,7),(9,9,10),(10,10,10),(11,11,11),(12,12,48),(13,13,31),(14,14,44),(15,15,32),(16,16,31),(17,17,31),(18,18,31),(19,19,30),(20,20,30),(21,21,22),(22,22,27),(23,23,12),(24,24,27),(25,25,25),(26,26,15),(27,27,23),(28,28,23),(29,29,12),(30,30,25),(31,31,23),(32,32,15),(33,33,29),(34,34,27),(35,35,23),(36,36,79),(37,37,78),(38,38,23),(39,39,23),(40,40,79),(41,41,12),(42,42,79),(43,43,80),(44,44,78);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.robtheis.android.qes.Solver: void onCreate(android.os.Bundle)>',7,'s',NULL),(2,1,'<com.robtheis.android.qes.Solver: void displayVideo()>',4,'a',NULL),(3,1,'<com.robtheis.android.qes.Solver: void displayHelp()>',3,'a',NULL),(4,1,'<com.robtheis.android.qes.Solver: void displayWebSolve()>',22,'a',NULL),(5,27,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(6,6,'<com.allen.txtshdys.txtReader: void onClick(android.view.View)>',10,'a',NULL),(7,34,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(8,7,'<com.allen.txtshdys.ViewFileAct_Float: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(9,10,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(10,10,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(11,11,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(12,50,'<com.safetest.shark.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(13,32,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(14,88,'<com.safetest.shark.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(15,33,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(16,32,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(17,89,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(18,90,'<com.ju6.a: boolean b()>',178,'p',NULL),(19,91,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(20,92,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(21,22,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(22,28,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(23,93,'<com.alan.mp3cutter.Mp3Cutter$3: void onClick(android.view.View)>',37,'a',NULL),(24,28,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(25,94,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(26,95,'<com.alan.mp3cutter.Mp3List$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',125,'a',NULL),(27,23,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(28,97,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(29,98,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(30,99,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(31,100,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(32,15,'<com.alan.mp3cutter.Mp3List: void addDataToListView()>',3,'p',NULL),(33,30,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(34,101,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(35,23,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(36,81,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(37,102,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(38,103,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(39,104,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(40,81,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(41,105,'<com.alan.mp3cutter.Mp3Cutter$2: void onClick(android.view.View)>',37,'a',NULL),(42,106,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(43,82,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(44,107,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,2),(2,5,6),(3,7,1),(4,8,1),(5,18,1),(6,20,1),(7,23,1),(8,24,1),(9,25,6),(10,26,1),(11,27,1),(12,28,8),(13,29,2),(14,30,8),(15,36,6),(16,42,1),(17,43,1),(18,44,2),(19,46,1),(20,47,1),(21,49,1),(22,51,1),(23,53,6),(24,55,2),(25,59,1),(26,60,1),(27,62,1),(28,63,1);
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
INSERT INTO `ICategories` VALUES (1,7,2),(2,8,1),(3,18,1),(4,20,2),(5,23,2),(6,24,1),(7,26,1),(8,27,2),(9,28,4),(10,29,4),(11,30,4),(12,42,1),(13,43,2),(14,46,2),(15,47,1),(16,49,1),(17,51,2),(18,59,1),(19,60,2),(20,62,1),(21,63,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/airpuh/ad/UpdateCheck'),(2,3,'com/robtheis/android/qes/SolverHelp'),(3,4,'com/robtheis/android/qes/WebSolve'),(4,6,'com/allen/txtshdys/ViewFileAct_Float'),(5,9,'com/allen/txtshdys/Settings'),(6,10,'com/eguan/state/Dialog'),(7,11,'com/eguan/state/Dialog'),(8,12,'com/eguan/state/Dialog'),(9,13,'com/eguan/state/Dialog'),(10,14,'com/eguan/state/StateService'),(11,15,'com/safetest/shark/UpdateService'),(12,16,'com/google/update/Dialog'),(13,17,'com/google/update/Dialog'),(14,19,'com/google/update/UpdateService'),(15,21,'com/google/update/Dialog'),(16,22,'com/google/update/Dialog'),(17,31,'com/google/update/Dialog'),(18,32,'com/google/update/Dialog'),(19,33,'com/alan/mp3cutter/Mp3List'),(20,34,'com/google/update/Dialog'),(21,35,'com/google/update/Dialog'),(22,37,'com/alan/mp3cutter/Mp3Cut'),(23,38,'(.*)'),(24,39,'com/waps/OffersWebView'),(25,40,'com/waps/OffersWebView'),(26,41,'com/waps/OffersWebView'),(27,45,'com/google/update/UpdateService'),(28,50,'com/google/update/Dialog'),(29,52,'com/google/update/Dialog'),(30,54,'NULL-CONSTANT'),(31,56,'com/google/update/Dialog'),(32,57,'com/google/update/Dialog'),(33,58,'com/alan/mp3cutter/Mp3List'),(34,61,'com/google/update/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,28,3),(3,29,4),(4,30,5),(5,44,6),(6,55,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'b'),(2,4,'c'),(3,4,'a'),(4,6,'/sdcard/txtbooks/shdys.txt'),(5,6,'book1'),(6,10,'MSG'),(7,10,'TYPEdsada'),(8,11,'TYPEdsada'),(9,12,'MSG'),(10,12,'TYPEdsada'),(11,13,'TYPEdsada'),(12,16,'MSG'),(13,16,'TYPEdsada'),(14,17,'TYPEdsada'),(15,21,'MSG'),(16,21,'TYPEdsada'),(17,22,'TYPEdsada'),(18,31,'TYPEdsada'),(19,32,'MSG'),(20,32,'TYPEdsada'),(21,33,'action'),(22,34,'TYPEdsada'),(23,35,'MSG'),(24,35,'TYPEdsada'),(25,37,'id'),(26,37,'name'),(27,39,'Notify_Url_Params'),(28,39,'UrlPath'),(29,39,'ACTIVITY_FLAG'),(30,39,'isFinshClose'),(31,39,'offers_webview_tag'),(32,40,'UrlPath'),(33,40,'ACTIVITY_FLAG'),(34,40,'isFinshClose'),(35,40,'offers_webview_tag'),(36,41,'USER_ID'),(37,41,'CLIENT_PACKAGE'),(38,41,'Offers_URL'),(39,41,'offers_webview_tag'),(40,41,'URL_PARAMS'),(41,50,'TYPEdsada'),(42,52,'MSG'),(43,52,'TYPEdsada'),(44,56,'TYPEdsada'),(45,57,'MSG'),(46,57,'TYPEdsada'),(47,58,'action');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,5),(5,3,3),(6,4,1),(7,5,1),(8,6,4),(9,6,5),(10,6,3),(11,7,3),(12,7,4),(13,7,5),(14,8,1),(15,9,1),(16,10,5),(17,10,3),(18,10,4),(19,11,1),(20,12,7),(21,13,5),(22,13,4),(23,13,3),(24,14,5),(25,14,4),(26,14,3),(27,15,4),(28,16,9);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,1),(4,5,1),(5,8,1),(6,9,1),(7,11,1),(8,15,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,16,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,30,'(.*)','(.*)'),(2,44,'application','vnd.android.package-archive'),(3,55,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.robtheis.android.new'),(2,3,'com.robtheis.android.new'),(3,4,'com.robtheis.android.new'),(4,6,'com.allen.txtshdys'),(5,7,'com.allen.txtshdys'),(6,8,'com.allen.txtshdys'),(7,9,'com.allen.txtshdys'),(8,10,'com.allen.txtshdys'),(9,11,'com.allen.txtshdys'),(10,12,'com.allen.txtshdys'),(11,13,'com.allen.txtshdys'),(12,14,'com.allen.txtshdys'),(13,15,'com.safetest.shark'),(14,16,'com.mogo.puzzle'),(15,17,'com.mogo.puzzle'),(16,18,'com.noshufou.android.su'),(17,19,'com.mogo.puzzle'),(18,20,'com.noshufou.android.su'),(19,21,'com.mogo.puzzle'),(20,22,'com.mogo.puzzle'),(21,23,'com.mogo.puzzle'),(22,24,'com.mogo.puzzle'),(23,26,'com.noshufou.android.su'),(24,27,'com.noshufou.android.su'),(25,31,'com.alan.mp3cutter'),(26,32,'com.alan.mp3cutter'),(27,33,'com.alan.mp3cutter'),(28,34,'com.alan.mp3cutter'),(29,35,'com.alan.mp3cutter'),(30,37,'com.alan.mp3cutter'),(31,38,'(.*)'),(32,39,'com.alan.mp3cutter'),(33,40,'com.alan.mp3cutter'),(34,41,'com.alan.mp3cutter'),(35,42,'com.noshufou.android.su'),(36,43,'com.noshufou.android.su'),(37,45,'com.alan.mp3cutter'),(38,46,'com.alan.mp3cutter'),(39,47,'com.alan.mp3cutter'),(40,49,'(.*)'),(41,50,'com.ps.pushbox'),(42,51,'(.*)'),(43,52,'com.ps.pushbox'),(44,54,'NULL-CONSTANT'),(45,56,'com.ps.pushbox'),(46,57,'com.ps.pushbox'),(47,58,'com.alan.mp3cutter'),(48,59,'com.ps.pushbox'),(49,60,'com.ps.pushbox'),(50,61,'com.ps.pushbox'),(51,62,'com.noshufou.android.su'),(52,63,'com.noshufou.android.su');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,11,0),(4,12,0),(5,18,0),(6,29,0),(7,32,0),(8,33,0),(9,38,0),(10,48,0),(11,72,0),(12,77,0),(13,80,0),(14,81,0),(15,85,0),(16,86,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,0,0),(7,7,1,0),(8,7,1,0),(9,8,0,0),(10,9,0,0),(11,9,0,0),(12,10,0,0),(13,10,0,0),(14,11,0,0),(15,12,0,0),(16,13,0,0),(17,13,0,0),(18,14,1,0),(19,15,0,0),(20,14,1,0),(21,16,0,0),(22,16,0,0),(23,17,1,0),(24,17,1,0),(25,19,1,0),(26,20,1,0),(27,20,1,0),(28,21,1,0),(29,21,1,0),(30,21,1,0),(31,22,0,0),(32,22,0,0),(33,23,0,0),(34,24,0,0),(35,24,0,0),(36,25,1,0),(37,26,0,0),(38,27,0,0),(39,28,0,0),(40,28,0,0),(41,29,0,0),(42,30,1,0),(43,30,1,0),(44,31,1,0),(45,33,0,0),(46,34,1,0),(47,34,1,0),(48,35,1,0),(49,35,1,0),(50,36,0,0),(51,35,1,0),(52,36,0,0),(53,37,1,0),(54,38,0,0),(55,39,1,0),(56,40,0,0),(57,40,0,0),(58,41,0,0),(59,42,1,0),(60,42,1,0),(61,43,0,0),(62,44,1,0),(63,44,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,48,33,2,NULL),(2,49,33,2,NULL),(3,51,33,2,NULL),(4,28,33,2,NULL),(5,29,33,2,NULL),(6,48,77,2,NULL),(7,49,77,2,NULL),(8,51,77,2,NULL),(9,28,77,2,NULL),(10,29,77,2,NULL),(11,48,81,2,NULL),(12,49,81,2,NULL),(13,51,81,2,NULL),(14,28,81,2,NULL),(15,29,81,2,NULL),(16,48,85,2,NULL),(17,49,85,2,NULL),(18,51,85,2,NULL),(19,28,85,2,NULL),(20,29,85,2,NULL),(21,6,7,2,NULL),(22,48,6,2,NULL),(23,49,6,2,NULL),(24,51,6,2,NULL),(25,28,6,2,NULL),(26,29,6,2,NULL),(27,9,8,2,NULL),(28,10,9,2,NULL),(29,11,9,2,NULL),(30,12,9,2,NULL),(31,13,9,2,NULL),(32,14,10,2,NULL),(33,48,11,2,NULL),(34,49,11,2,NULL),(35,51,11,2,NULL),(36,28,11,2,NULL),(37,29,11,2,NULL),(38,48,18,2,NULL),(39,49,18,2,NULL),(40,51,18,2,NULL),(41,28,18,2,NULL),(42,29,18,2,NULL),(43,28,1,2,NULL),(44,29,1,2,NULL),(45,28,12,2,NULL),(46,29,12,2,NULL),(47,28,29,2,NULL),(48,29,29,2,NULL),(49,28,32,2,NULL),(50,29,32,2,NULL),(51,28,38,2,NULL),(52,29,38,2,NULL),(53,28,48,2,NULL),(54,29,48,2,NULL),(55,28,72,2,NULL),(56,29,72,2,NULL),(57,28,80,2,NULL),(58,29,80,2,NULL),(59,16,25,2,NULL),(60,16,30,2,NULL),(61,16,68,2,NULL),(62,16,78,2,NULL),(63,17,25,2,NULL),(64,17,30,2,NULL),(65,17,68,2,NULL),(66,17,78,2,NULL),(67,21,25,2,NULL),(68,21,30,2,NULL),(69,21,68,2,NULL),(70,21,78,2,NULL),(71,22,25,2,NULL),(72,22,30,2,NULL),(73,22,68,2,NULL),(74,22,78,2,NULL),(75,19,27,2,NULL),(76,19,31,2,NULL),(77,19,75,2,NULL),(78,19,79,2,NULL),(79,48,32,2,NULL),(80,49,32,2,NULL),(81,51,32,2,NULL),(82,48,12,2,NULL),(83,49,12,2,NULL),(84,51,12,2,NULL),(85,48,1,2,NULL),(86,49,1,2,NULL),(87,51,1,2,NULL),(88,48,29,2,NULL),(89,49,29,2,NULL),(90,51,29,2,NULL),(91,48,38,2,NULL),(92,49,38,2,NULL),(93,51,38,2,NULL),(94,48,48,2,NULL),(95,49,48,2,NULL),(96,51,48,2,NULL),(97,48,72,2,NULL),(98,49,72,2,NULL),(99,51,72,2,NULL),(100,48,80,2,NULL),(101,49,80,2,NULL),(102,51,80,2,NULL),(103,31,25,2,NULL),(104,31,30,2,NULL),(105,31,68,2,NULL),(106,31,78,2,NULL),(107,32,25,2,NULL),(108,32,30,2,NULL),(109,32,68,2,NULL),(110,32,78,2,NULL),(111,34,25,2,NULL),(112,34,30,2,NULL),(113,34,68,2,NULL),(114,34,78,2,NULL),(115,35,25,2,NULL),(116,35,30,2,NULL),(117,35,68,2,NULL),(118,35,78,2,NULL),(119,45,27,2,NULL),(120,45,31,2,NULL),(121,45,75,2,NULL),(122,45,79,2,NULL),(123,1,5,2,NULL),(124,3,3,2,NULL),(125,4,4,2,NULL),(126,50,25,2,NULL),(127,50,30,2,NULL),(128,50,68,2,NULL),(129,50,78,2,NULL),(130,52,25,2,NULL),(131,52,30,2,NULL),(132,52,68,2,NULL),(133,52,78,2,NULL),(134,56,25,2,NULL),(135,56,30,2,NULL),(136,56,68,2,NULL),(137,56,78,2,NULL),(138,57,25,2,NULL),(139,57,30,2,NULL),(140,57,68,2,NULL),(141,57,78,2,NULL),(142,61,27,2,NULL),(143,61,31,2,NULL),(144,61,75,2,NULL),(145,61,79,2,NULL),(146,15,46,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(10,'android.permission.ACCESS_FINE_LOCATION'),(11,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(12,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(4,'android.permission.CHANGE_WIFI_STATE'),(17,'android.permission.GET_ACCOUNTS'),(7,'android.permission.GET_TASKS'),(13,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(16,'android.permission.READ_CONTACTS'),(6,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(15,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(18,'android.permission.VIBRATE'),(19,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://www.youtube.com/watch?v=iulx0z1lz8M',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,18,2),(2,32,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,2,3),(6,2,4),(7,2,5),(8,3,1),(9,3,2),(10,3,3),(11,3,4),(12,3,5),(13,3,6),(14,3,7),(15,3,8),(16,3,9),(17,3,10),(18,3,11),(19,3,12),(20,4,1),(21,4,2),(22,4,3),(23,4,4),(24,4,5),(25,4,6),(26,4,8),(27,4,10),(28,4,11),(29,4,12),(30,4,13),(31,4,14),(32,4,15),(33,5,17),(34,5,16),(35,5,1),(36,5,2),(37,5,18),(38,5,3),(39,5,4),(40,5,5),(41,5,8),(42,5,9),(43,5,10),(44,5,12),(45,6,1),(46,6,19),(47,6,2),(48,6,18),(49,6,5),(50,6,8),(51,6,12),(52,6,14),(53,6,15),(54,7,1),(55,7,2),(56,7,3),(57,7,4),(58,7,5),(59,7,6),(60,7,8),(61,7,9),(62,7,10),(63,7,11),(64,7,12);
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

-- Dump completed on 2015-10-12  3:29:26
