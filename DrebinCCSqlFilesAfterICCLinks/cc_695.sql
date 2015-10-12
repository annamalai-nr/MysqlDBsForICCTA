-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_695
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
INSERT INTO `ActionStrings` VALUES (19,'NULL-CONSTANT'),(2,'android.accessibilityservice.AccessibilityService'),(15,'android.intent.action.BATTERY_CHANGED'),(5,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.DELETE'),(17,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(18,'android.intent.action.VIEW'),(3,'android.service.wallpaper.WallpaperService'),(16,'android.settings.ACCESSIBILITY_SETTINGS'),(4,'com.airpush.android.PushServiceStart31500'),(7,'com.airpush.android.PushServiceStart52518'),(9,'com.airpush.android.PushServiceStart54143'),(10,'com.airpush.android.PushServiceStart57851'),(13,'com.android.launcher.action.INSTALL_SHORTCUT'),(8,'com.applovin.sdk.AppLovinService'),(12,'com.google.android.c2dm.intent.RECEIVE'),(11,'com.google.android.c2dm.intent.REGISTRATION'),(6,'com.senddroid.AdServicecom.jigsaw.jigswhockey');
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
INSERT INTO `Applications` VALUES (1,'com.apperhand.manage',1),(2,'com.calsto.statusbar.jb',11002012),(3,'com.custom.lwp.HallucinogenicBlueMushroom',3),(4,'com.jree.jigsawcar',3),(5,'com.droid_inc.amelwp',1),(6,'com.hddevs.sbmwlwp',2),(7,'com.inimitable.lie_detector',2);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.ALTERNATIVE'),(2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.SELECTED_ALTERNATIVE'),(5,'com.inimitable.lie_detector');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.apperhand.manage.ApplicationsListActivity'),(2,1,'com.apperhand.manage.PermissionsPerApplicationListActivity'),(3,1,'com.apperhand.manage.PermissionsListActivity'),(4,1,'com.apperhand.manage.ApplicationsPerPermissionListActivity'),(5,1,'com.apperhand.device.android.AndroidSDKProvider'),(6,2,'com.calsto.statusbar.jb.Setting'),(7,2,'com.calsto.statusbar.jb.Launchalot'),(8,2,'com.calsto.statusbar.jb.OverlayService'),(9,2,'com.calsto.statusbar.jb.NotificationServiceJB'),(10,2,'com.apperhand.device.android.AndroidSDKProvider'),(11,3,'com.custom.lwp.HallucinogenicBlueMushroom.settings'),(12,3,'com.airpush.android.PushAds'),(13,3,'com.custom.lwp.HallucinogenicBlueMushroom.IFBTLiveWallpaperService'),(14,3,'com.apperhand.device.android.AndroidSDKProvider'),(15,3,'com.airpush.android.PushService'),(16,3,'com.airpush.android.UserDetailsReceiver'),(17,3,'com.airpush.android.MessageReceiver'),(18,3,'com.airpush.android.DeliveryReceiver'),(19,3,'com.Leadbolt.AdNotification'),(20,3,'com.custom.lwp.HallucinogenicBlueMushroom.BootReceiver'),(21,4,'com.car.racing.puzzlegame.JigdrawPuzzleMain'),(22,4,'com.car.racing.puzzlegame.Ads'),(23,4,'com.car.racing.puzzlegame.PreferSettingActivity'),(24,4,'com.moolah.NotificationService'),(25,4,'com.apperhand.device.android.AndroidSDKProvider'),(26,4,'com.senddroid.AdService'),(27,4,'com.moolah.MessageReceiver'),(28,4,'com.moolah.BootReceiver'),(29,4,'com.Leadbolt.AdNotification'),(30,4,'com.car.racing.puzzlegame.BootReceiver'),(31,5,'com.droid_inc.amelwp.WallpaperActivity'),(32,5,'com.droid_inc.amelwp.PrefActivity'),(33,5,'com.airpush.android.PushAds'),(34,5,'com.apperhand.device.android.AndroidSDKProvider'),(35,5,'com.droid_inc.amelwp.Wallpaper'),(36,5,'com.airpush.android.PushService'),(37,5,'com.applovin.sdk.AppLovinService'),(38,5,'com.airpush.android.UserDetailsReceiver'),(39,6,'com.hddevs.sbmwlwp.WallpaperActivity'),(40,5,'com.airpush.android.MessageReceiver'),(41,5,'com.airpush.android.DeliveryReceiver'),(42,5,'com.droid_inc.amelwp.BootReceiver'),(43,6,'com.hddevs.sbmwlwp.PrefActivity'),(44,6,'com.airpush.android.PushAds'),(45,6,'com.apperhand.device.android.AndroidSDKProvider'),(46,5,'com.applovin.sdk.AppLovinBootReceiver'),(47,6,'com.hddevs.sbmwlwp.Wallpaper'),(48,5,'com.droid_inc.amelwp.boot'),(49,6,'com.airpush.android.PushService'),(50,5,'com.Leadbolt.AdNotification'),(51,6,'com.applovin.sdk.AppLovinService'),(52,6,'com.airpush.android.UserDetailsReceiver'),(53,6,'com.airpush.android.MessageReceiver'),(54,6,'com.airpush.android.DeliveryReceiver'),(55,6,'com.hddevs.sbmwlwp.BootReceiver'),(56,6,'com.applovin.sdk.AppLovinBootReceiver'),(57,6,'com.hddevs.sbmwlwp.boot'),(58,6,'com.Leadbolt.AdNotification'),(59,7,'com.inimitable.lie_detector.SplashScreen'),(60,7,'com.inimitable.lie_detector.RulePage'),(61,7,'com.inimitable.lie_detector.MenuScreen'),(62,7,'com.inimitable.lie_detector.RecorderScreen'),(63,7,'com.airpush.android.PushAds'),(64,7,'com.apperhand.device.android.AndroidSDKProvider'),(65,7,'com.airpush.android.PushService'),(66,7,'com.applovin.sdk.AppLovinService'),(67,7,'com.inimitable.lie_detector.BootReceiver'),(68,7,'com.Leadbolt.AdNotification'),(69,7,'com.airpush.android.UserDetailsReceiver'),(70,7,'com.airpush.android.MessageReceiver'),(71,7,'com.airpush.android.DeliveryReceiver'),(72,7,'com.applovin.sdk.AppLovinNotificationReceiver'),(73,7,'com.applovin.sdk.AppLovinPushReceiver'),(74,1,'com.apperhand.device.android.dma.AndroidShortcutsDMA'),(75,1,'com.apperhand.device.android.dma.BaseBrowserAction'),(76,2,'com.calsto.statusbar.jb.Setting$3'),(77,2,'com.apperhand.device.android.a.b'),(78,2,'com.calsto.statusbar.jb.OverlayService$5'),(79,2,'com.apperhand.device.android.a.d'),(80,2,'com.calsto.statusbar.jb.OverlayService$6'),(81,4,'com.Leadbolt.AdController'),(82,4,'com.apperhand.device.android.a.b'),(83,4,'com.apperhand.device.android.a.d');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'M_SERVER_URL'),(2,2,'com.apperhand.manage.AppPermissions'),(3,5,'USER_AGENT'),(4,5,'DEVELOPER_ID'),(5,5,'FIRST_RUN'),(6,5,'APPLICATION_ID'),(7,4,'com.apperhand.manage.PermissionName'),(8,10,'FIRST_RUN'),(9,10,'M_SERVER_URL'),(10,10,'APPLICATION_ID'),(11,10,'DEVELOPER_ID'),(12,10,'USER_AGENT'),(13,10,'SERVICE_MODE'),(14,25,'FIRST_RUN'),(15,25,'USER_AGENT'),(16,25,'APPLICATION_ID'),(17,25,'M_SERVER_URL'),(18,25,'DEVELOPER_ID'),(19,27,'notif_sig'),(20,21,'preferences_audio_setting_modified'),(21,25,'SERVICE_MODE'),(22,21,'preferences_level_setting_modified'),(23,29,'sectionid');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',1,40,NULL),(14,14,'s',0,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'r',0,NULL,NULL),(17,17,'r',0,NULL,NULL),(18,18,'r',0,NULL,NULL),(19,19,'r',0,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'s',1,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'s',1,40,NULL),(36,36,'s',1,NULL,NULL),(37,37,'s',1,NULL,NULL),(38,38,'r',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'r',0,NULL,NULL),(41,41,'r',0,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'s',1,40,NULL),(48,48,'r',1,NULL,NULL),(49,49,'s',1,NULL,NULL),(50,50,'r',0,NULL,NULL),(51,51,'s',1,NULL,NULL),(52,52,'r',0,NULL,NULL),(53,53,'r',0,NULL,NULL),(54,54,'r',0,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'r',0,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'a',1,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'s',1,NULL,NULL),(66,66,'s',1,NULL,NULL),(67,67,'r',1,NULL,NULL),(68,68,'r',0,NULL,NULL),(69,69,'r',0,NULL,NULL),(70,70,'r',0,NULL,NULL),(71,71,'r',0,NULL,NULL),(72,72,'r',0,NULL,NULL),(73,73,'r',1,48,NULL),(74,78,'r',1,NULL,NULL),(75,80,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,5),(3,3,3),(4,4,1),(5,5,5),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,4),(11,11,5),(12,12,4),(13,13,6),(14,14,6),(15,15,10),(16,16,6),(17,17,6),(18,18,10),(19,19,10),(20,20,10),(21,21,6),(22,22,10),(23,23,10),(24,24,6),(25,25,30),(26,25,29),(27,25,21),(28,26,21),(29,27,21),(30,27,30),(31,27,29),(32,28,25),(33,29,25),(34,30,21),(35,31,21),(36,32,21),(37,33,25),(38,34,27),(39,35,25),(40,36,25),(41,37,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,74,'<com.apperhand.device.android.dma.AndroidShortcutsDMA: void addShortcut(com.apperhand.common.dto.Shortcut)>',7,'r',NULL),(2,75,'<com.apperhand.device.android.dma.BaseBrowserAction: long createBrowserItem(android.content.ContentResolver,com.apperhand.common.dto.BaseBrowserItem,android.net.Uri,java.lang.String)>',22,'p',NULL),(3,3,'<com.apperhand.manage.PermissionsListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(4,1,'<com.apperhand.manage.ApplicationsListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',9,'a',NULL),(5,74,'<com.apperhand.device.android.dma.AndroidShortcutsDMA: java.util.List openCursors()>',14,'p',NULL),(6,5,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,java.lang.String,java.lang.String)>',18,'s',NULL),(7,1,'<com.apperhand.manage.ApplicationsListActivity: boolean onContextItemSelected(android.view.MenuItem)>',34,'a',NULL),(8,1,'<com.apperhand.manage.ApplicationsListActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(9,1,'<com.apperhand.manage.ApplicationsListActivity: boolean onContextItemSelected(android.view.MenuItem)>',23,'a',NULL),(10,4,'<com.apperhand.manage.ApplicationsPerPermissionListActivity: boolean onContextItemSelected(android.view.MenuItem)>',34,'a',NULL),(11,75,'<com.apperhand.device.android.dma.BaseBrowserAction: boolean deleteBrowserItem(android.content.ContentResolver,android.net.Uri,long)>',7,'p',NULL),(12,4,'<com.apperhand.manage.ApplicationsPerPermissionListActivity: boolean onContextItemSelected(android.view.MenuItem)>',23,'a',NULL),(13,6,'<com.calsto.statusbar.jb.Setting: boolean SaveSettingsReboot()>',26,'s',NULL),(14,76,'<com.calsto.statusbar.jb.Setting$3: void onClick(android.view.View)>',6,'s',NULL),(15,77,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(16,6,'<com.calsto.statusbar.jb.Setting: void ACCESSIBILITY_MENU(android.view.View)>',4,'a',NULL),(17,10,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(18,79,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(19,77,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(20,79,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(21,6,'<com.calsto.statusbar.jb.Setting: void ChooseApps(android.view.View)>',4,'a',NULL),(22,77,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(23,79,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(24,76,'<com.calsto.statusbar.jb.Setting$3: void onClick(android.view.View)>',11,'s',NULL),(25,81,'<com.Leadbolt.AdController: void displayIcon()>',67,'r',NULL),(26,25,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(27,81,'<com.Leadbolt.AdController: void displayIcon()>',94,'p',NULL),(28,82,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(29,83,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(30,21,'<com.car.racing.puzzlegame.JigdrawPuzzleMain: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',NULL),(31,21,'<com.car.racing.puzzlegame.JigdrawPuzzleMain: void chooseGameImage()>',5,'a',NULL),(32,21,'<com.car.racing.puzzlegame.JigdrawPuzzleMain: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(33,82,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(34,27,'<com.moolah.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',29,'s',NULL),(35,83,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(36,82,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(37,83,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,13),(2,5,14),(3,7,1),(4,8,14),(5,9,1),(6,13,16),(7,16,13),(8,19,13),(9,20,13),(10,21,13),(11,23,13),(12,25,17),(13,26,18),(14,27,19),(15,28,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,7,1),(2,9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/apperhand/manage/ApplicationsPerPermissionListActivity'),(2,3,'com/apperhand/manage/PermissionsPerApplicationListActivity'),(3,4,'com/apperhand/device/android/AndroidSDKProvider'),(4,6,'com/apperhand/manage/PermissionsListActivity'),(5,7,'NULL-CONSTANT'),(6,9,'NULL-CONSTANT'),(7,10,'com/calsto/statusbar/jb/OverlayService'),(8,12,'com/calsto/statusbar/jb/OverlayService'),(9,14,'com/apperhand/device/android/AndroidSDKProvider'),(10,15,'com/calsto/statusbar/jb/Launchalot'),(11,18,'com/calsto/statusbar/jb/OverlayService'),(12,22,'com/apperhand/device/android/AndroidSDKProvider'),(13,24,'com/car/racing/puzzlegame/PreferSettingActivity'),(14,27,'com/moolah/NotificationService'),(15,28,'com/moolah/NotificationService');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,3),(2,8,4),(3,26,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.shortcut.NAME'),(2,1,'android.intent.extra.shortcut.ICON'),(3,1,'android.intent.extra.shortcut.INTENT'),(4,2,'com.apperhand.manage.PermissionName'),(5,3,'com.apperhand.manage.AppPermissions'),(6,4,'USER_AGENT'),(7,4,'M_SERVER_URL'),(8,4,'DEVELOPER_ID'),(9,4,'FIRST_RUN'),(10,4,'APPLICATION_ID'),(11,14,'M_SERVER_URL'),(12,14,'USER_AGENT'),(13,14,'SERVICE_MODE'),(14,14,'FIRST_RUN'),(15,14,'DEVELOPER_ID'),(16,14,'APPLICATION_ID'),(17,16,'android.intent.extra.shortcut.NAME'),(18,16,'android.intent.extra.shortcut.ICON'),(19,16,'android.intent.extra.shortcut.INTENT'),(20,19,'android.intent.extra.shortcut.NAME'),(21,19,'android.intent.extra.shortcut.ICON_RESOURCE'),(22,19,'android.intent.extra.shortcut.INTENT'),(23,20,'android.intent.extra.shortcut.NAME'),(24,20,'android.intent.extra.shortcut.ICON'),(25,20,'android.intent.extra.shortcut.ICON_RESOURCE'),(26,20,'android.intent.extra.shortcut.INTENT'),(27,21,'android.intent.extra.shortcut.NAME'),(28,21,'android.intent.extra.shortcut.ICON'),(29,21,'android.intent.extra.shortcut.INTENT'),(30,22,'M_SERVER_URL'),(31,22,'USER_AGENT'),(32,22,'SERVICE_MODE'),(33,22,'FIRST_RUN'),(34,22,'DEVELOPER_ID'),(35,22,'APPLICATION_ID'),(36,23,'android.intent.extra.shortcut.NAME'),(37,23,'android.intent.extra.shortcut.ICON'),(38,23,'android.intent.extra.shortcut.INTENT'),(39,26,'sms_body'),(40,27,'test_mode'),(41,28,'notif_sig'),(42,28,'test_mode');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,4),(6,6,5),(7,7,1),(8,8,6),(9,9,5),(10,10,5),(11,11,1),(12,12,3),(13,13,7),(14,14,8),(15,15,1),(16,16,5),(17,17,5),(18,18,3),(19,19,5),(20,20,9),(21,21,8),(22,22,5),(23,23,5),(24,24,5),(25,25,1),(26,29,10),(27,30,8),(28,31,5),(29,32,5),(30,33,11),(31,34,12),(32,35,15),(33,36,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,6,2),(4,7,1),(5,9,2),(6,11,1),(7,15,1),(8,16,2),(9,22,2),(10,25,1),(11,25,3),(12,25,4),(13,26,4),(14,26,3),(15,27,4),(16,27,3),(17,28,3),(18,28,4),(19,32,2),(20,33,5),(21,34,5);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,25,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.apperhand.manage'),(2,3,'com.apperhand.manage'),(3,4,'com.apperhand.manage'),(4,6,'com.apperhand.manage'),(5,7,'NULL-CONSTANT'),(6,9,'NULL-CONSTANT'),(7,10,'com.calsto.statusbar.jb'),(8,12,'com.calsto.statusbar.jb'),(9,14,'com.calsto.statusbar.jb'),(10,15,'com.calsto.statusbar.jb'),(11,18,'com.calsto.statusbar.jb'),(12,22,'com.jree.jigsawcar'),(13,24,'com.jree.jigsawcar'),(14,27,'com.jree.jigsawcar'),(15,28,'com.jree.jigsawcar');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,9,0),(4,13,0),(5,15,0),(6,20,0),(7,22,0),(8,26,0),(9,28,0),(10,30,0),(11,31,0),(12,35,0),(13,36,0),(14,37,0),(15,39,0),(16,42,0),(17,46,0),(18,47,0),(19,48,0),(20,49,0),(21,51,0),(22,55,0),(23,56,0),(24,57,0),(25,59,0),(26,60,0),(27,61,0),(28,62,0),(29,65,0),(30,66,0),(31,67,0),(32,67,0),(33,73,0),(34,73,0),(35,74,0),(36,75,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,3,0,0),(3,4,0,0),(4,6,0,0),(5,7,1,0),(6,8,0,0),(7,9,0,0),(8,10,1,0),(9,12,0,0),(10,13,0,0),(11,14,1,0),(12,14,0,0),(13,16,1,0),(14,17,0,0),(15,21,0,0),(16,23,1,0),(17,24,1,0),(18,24,0,0),(19,25,1,0),(20,25,1,0),(21,25,1,0),(22,26,0,0),(23,29,1,0),(24,30,0,0),(25,31,1,0),(26,32,1,0),(27,34,0,0),(28,34,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,3,2,2,NULL),(2,6,3,2,NULL),(3,8,1,2,NULL),(4,5,6,2,NULL),(5,13,1,2,NULL),(6,5,9,2,NULL),(7,5,74,2,NULL),(8,5,75,2,NULL),(9,5,13,2,NULL),(10,5,15,2,NULL),(11,5,20,2,NULL),(12,26,1,2,NULL),(13,5,22,2,NULL),(14,5,26,2,NULL),(15,5,28,2,NULL),(16,5,30,2,NULL),(17,5,31,2,NULL),(18,5,35,2,NULL),(19,5,36,2,NULL),(20,5,37,2,NULL),(21,5,42,2,NULL),(22,5,46,2,NULL),(23,5,48,2,NULL),(24,5,39,2,NULL),(25,5,47,2,NULL),(26,5,49,2,NULL),(27,5,51,2,NULL),(28,5,55,2,NULL),(29,5,56,2,NULL),(30,5,57,2,NULL),(31,5,59,2,NULL),(32,5,60,2,NULL),(33,5,61,2,NULL),(34,5,62,2,NULL),(35,5,65,2,NULL),(36,5,66,2,NULL),(37,5,67,2,NULL),(38,5,73,2,NULL),(39,2,4,2,NULL),(40,8,6,2,NULL),(41,8,9,2,NULL),(42,8,74,2,NULL),(43,8,75,2,NULL),(44,8,13,2,NULL),(45,8,15,2,NULL),(46,8,20,2,NULL),(47,8,22,2,NULL),(48,8,26,2,NULL),(49,8,28,2,NULL),(50,8,30,2,NULL),(51,8,31,2,NULL),(52,8,35,2,NULL),(53,8,36,2,NULL),(54,8,37,2,NULL),(55,8,42,2,NULL),(56,8,46,2,NULL),(57,8,48,2,NULL),(58,8,39,2,NULL),(59,8,47,2,NULL),(60,8,49,2,NULL),(61,8,51,2,NULL),(62,8,55,2,NULL),(63,8,56,2,NULL),(64,8,57,2,NULL),(65,8,59,2,NULL),(66,8,60,2,NULL),(67,8,61,2,NULL),(68,8,62,2,NULL),(69,8,65,2,NULL),(70,8,66,2,NULL),(71,8,67,2,NULL),(72,8,73,2,NULL),(73,4,5,2,NULL),(74,4,10,2,NULL),(75,4,14,2,NULL),(76,4,25,2,NULL),(77,4,34,2,NULL),(78,4,45,2,NULL),(79,4,64,2,NULL),(80,10,8,2,NULL),(81,15,7,2,NULL),(82,13,9,2,NULL),(83,13,74,2,NULL),(84,13,75,2,NULL),(85,13,13,2,NULL),(86,13,15,2,NULL),(87,13,20,2,NULL),(88,26,6,2,NULL),(89,13,22,2,NULL),(90,13,26,2,NULL),(91,13,28,2,NULL),(92,13,30,2,NULL),(93,13,31,2,NULL),(94,13,35,2,NULL),(95,13,36,2,NULL),(96,13,37,2,NULL),(97,13,42,2,NULL),(98,13,46,2,NULL),(99,13,48,2,NULL),(100,13,39,2,NULL),(101,13,47,2,NULL),(102,13,49,2,NULL),(103,13,51,2,NULL),(104,13,55,2,NULL),(105,13,56,2,NULL),(106,13,57,2,NULL),(107,13,59,2,NULL),(108,13,60,2,NULL),(109,13,61,2,NULL),(110,13,62,2,NULL),(111,13,65,2,NULL),(112,13,66,2,NULL),(113,13,67,2,NULL),(114,13,73,2,NULL),(115,26,9,2,NULL),(116,14,5,2,NULL),(117,14,10,2,NULL),(118,14,14,2,NULL),(119,14,25,2,NULL),(120,14,34,2,NULL),(121,14,45,2,NULL),(122,14,64,2,NULL),(123,26,74,2,NULL),(124,26,75,2,NULL),(125,26,39,2,NULL),(126,26,47,2,NULL),(127,26,49,2,NULL),(128,26,51,2,NULL),(129,26,55,2,NULL),(130,26,56,2,NULL),(131,26,57,2,NULL),(132,26,59,2,NULL),(133,26,60,2,NULL),(134,26,61,2,NULL),(135,26,62,2,NULL),(136,26,65,2,NULL),(137,26,66,2,NULL),(138,26,67,2,NULL),(139,26,73,2,NULL),(140,26,31,2,NULL),(141,26,35,2,NULL),(142,26,36,2,NULL),(143,26,37,2,NULL),(144,26,42,2,NULL),(145,26,46,2,NULL),(146,26,48,2,NULL),(147,24,23,2,NULL),(148,26,13,2,NULL),(149,26,15,2,NULL),(150,26,20,2,NULL),(151,26,22,2,NULL),(152,26,26,2,NULL),(153,26,28,2,NULL),(154,26,30,2,NULL),(155,22,5,2,NULL),(156,22,10,2,NULL),(157,22,14,2,NULL),(158,22,25,2,NULL),(159,22,34,2,NULL),(160,22,45,2,NULL),(161,22,64,2,NULL),(162,27,24,2,NULL),(163,28,24,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (19,'android.permission.ACCESS_COARSE_LOCATION'),(24,'android.permission.ACCESS_FINE_LOCATION'),(39,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(27,'android.permission.ACCESS_NETWORK_STATE'),(3,'android.permission.ACCESS_WIFI_STATE'),(21,'android.permission.ACCESS_WIMAX_STATE'),(40,'android.permission.BIND_WALLPAPER'),(31,'android.permission.BLUETOOTH'),(36,'android.permission.BLUETOOTH_ADMIN'),(25,'android.permission.BROADCAST_STICKY'),(42,'android.permission.CALL_PHONE'),(35,'android.permission.CHANGE_NETWORK_STATE'),(32,'android.permission.CHANGE_WIFI_STATE'),(28,'android.permission.EXPAND_STATUS_BAR'),(43,'android.permission.GET_ACCOUNTS'),(15,'android.permission.GET_TASKS'),(8,'android.permission.INTERNET'),(20,'android.permission.READ_CONTACTS'),(18,'android.permission.READ_LOGS'),(6,'android.permission.READ_PHONE_STATE'),(22,'android.permission.READ_SMS'),(23,'android.permission.RECEIVE_BOOT_COMPLETED'),(45,'android.permission.SEND_SMS'),(41,'android.permission.SET_WALLPAPER'),(29,'android.permission.SYSTEM_ALERT_WINDOW'),(34,'android.permission.VIBRATE'),(37,'android.permission.WAKE_LOCK'),(16,'android.permission.WRITE_EXTERNAL_STORAGE'),(30,'android.permission.WRITE_SETTINGS'),(47,'ccom.inimitable.lie_detector.permission.C2D_MESSAGE'),(12,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(9,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(11,'com.android.launcher.permission.READ_SETTINGS'),(5,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(10,'com.fede.launcher.permission.READ_SETTINGS'),(46,'com.google.android.c2dm.permission.RECEIVE'),(48,'com.google.android.c2dm.permission.SEND'),(4,'com.htc.launcher.permission.READ_SETTINGS'),(44,'com.inimitable.lie_detector.permission.C2D_MESSAGE'),(14,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(7,'com.lge.launcher.permission.READ_SETTINGS'),(17,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(2,'com.motorola.dlauncher.permission.READ_SETTINGS'),(26,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(13,'com.motorola.launcher.permission.READ_SETTINGS'),(38,'om.android.launcher.permission.INSTALL_SHORTCUT'),(33,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (47,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(2,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(10,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(11,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(14,NULL,NULL,'sms:',NULL,NULL,NULL),(15,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(16,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(17,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(18,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(19,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,5,2),(3,11,5),(4,15,6),(5,18,7),(6,19,8),(7,20,9),(8,20,10),(9,22,11),(10,27,12),(11,28,13),(12,33,15),(13,35,16),(14,35,17),(15,36,18),(16,37,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,1,12),(14,2,2),(15,1,13),(16,2,3),(17,2,4),(18,2,5),(19,2,6),(20,2,7),(21,2,8),(22,2,9),(23,2,10),(24,2,11),(25,2,12),(26,2,13),(27,2,14),(28,2,15),(29,2,17),(30,2,16),(31,2,19),(32,2,18),(33,2,21),(34,2,20),(35,2,23),(36,2,22),(37,2,25),(38,2,24),(39,2,27),(40,2,26),(41,2,29),(42,2,28),(43,2,31),(44,2,30),(45,2,34),(46,2,35),(47,2,32),(48,2,33),(49,2,36),(50,3,1),(51,3,2),(52,3,3),(53,3,4),(54,3,5),(55,3,6),(56,3,7),(57,3,8),(58,3,9),(59,3,10),(60,3,11),(61,3,12),(62,3,13),(63,3,14),(64,3,17),(65,3,16),(66,3,19),(67,3,23),(68,3,24),(69,3,27),(70,3,26),(71,3,34),(72,3,33),(73,3,38),(74,3,39),(75,3,37),(76,4,1),(77,4,2),(78,4,33),(79,4,3),(80,4,4),(81,4,5),(82,4,6),(83,4,37),(84,4,7),(85,4,42),(86,4,8),(87,4,43),(88,4,9),(89,4,10),(90,4,41),(91,4,12),(92,4,13),(93,4,14),(94,4,17),(95,4,23),(96,4,27),(97,4,26),(98,5,1),(99,5,2),(100,5,3),(101,5,4),(102,5,5),(103,5,6),(104,5,7),(105,5,8),(106,5,9),(107,5,10),(108,5,11),(109,5,12),(110,5,13),(111,5,14),(112,5,17),(113,5,16),(114,5,19),(115,5,20),(116,5,23),(117,5,22),(118,5,27),(119,5,26),(120,5,34),(121,6,1),(122,5,33),(123,6,2),(124,5,37),(125,6,3),(126,5,43),(127,6,4),(128,6,5),(129,6,6),(130,6,7),(131,6,8),(132,6,9),(133,6,10),(134,6,11),(135,6,12),(136,6,13),(137,6,14),(138,6,17),(139,6,16),(140,6,19),(141,6,20),(142,6,23),(143,6,22),(144,6,27),(145,6,26),(146,6,34),(147,6,33),(148,6,37),(149,6,43),(150,7,1),(151,7,2),(152,7,3),(153,7,4),(154,7,5),(155,7,6),(156,7,7),(157,7,8),(158,7,9),(159,7,10),(160,7,11),(161,7,12),(162,7,13),(163,7,14),(164,7,17),(165,7,16),(166,7,19),(167,7,20),(168,7,23),(169,7,24),(170,7,27),(171,7,26),(172,7,34),(173,7,33),(174,7,37),(175,7,43),(176,7,46),(177,7,44),(178,7,45);
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

-- Dump completed on 2015-10-12  3:31:24
