-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_683
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (1,'MyReminderProWidget11'),(4,'android.appwidget.action.APPWIDGET_UPDATE'),(3,'android.intent.action.BOOT_COMPLETED'),(24,'android.intent.action.CHOOSER'),(22,'android.intent.action.GET_CONTENT'),(2,'android.intent.action.MAIN'),(15,'android.intent.action.PACKAGE_ADDED'),(20,'android.intent.action.SCREEN_OFF'),(21,'android.intent.action.SCREEN_ON'),(19,'android.intent.action.VIEW'),(23,'android.media.action.IMAGE_CAPTURE'),(5,'android.service.wallpaper.WallpaperService'),(6,'com.airpush.android.PushServiceStart23402'),(8,'com.airpush.android.PushServiceStart58284'),(13,'com.airpush.android.PushServiceStart61434'),(16,'com.android.launcher.action.INSTALL_SHORTCUT'),(10,'com.android.vending.INSTALL_REFERRER'),(18,'com.appbrain.CHECK'),(9,'com.applovin.sdk.AppLovinService'),(12,'com.google.android.c2dm.intent.RECEIVE'),(17,'com.google.android.c2dm.intent.REGISTER'),(11,'com.google.android.c2dm.intent.REGISTRATION'),(7,'com.senddroid.AdServicecom.custom.lwp.sexy_girl_washing_your_phone_2_ap'),(14,'com.senddroid.AdServicesimple.mp3.music.downloader');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.apperhand.my.reminder.widget.pro',1),(2,'com.wallpaper.fall',1),(3,'com.custom.lwp.sexy_girl_washing_your_phone_2_ap',4),(4,'com.djd.leatherworkingwowguide',1),(5,'org.soft88.pizza',6),(6,'simple.mp3.music.downloader',362);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.TEST'),(4,'com.djd.leatherworkingwowguide');
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.apperhand.my.reminder.widget.pro.NewReminder'),(2,1,'com.apperhand.my.reminder.widget.pro.NotificationDialogActivity'),(3,1,'com.apperhand.my.reminder.widget.pro.Main'),(4,1,'com.apperhand.my.reminder.widget.pro.SettingsActivity'),(5,1,'com.apperhand.device.android.AndroidSDKProvider'),(6,1,'com.apperhand.my.reminder.widget.pro.BootReceiver'),(7,1,'com.apperhand.my.reminder.widget.pro.Widget11'),(8,1,'com.apperhand.my.reminder.widget.pro.TimesUpReceiver'),(9,3,'com.custom.lwp.sexy_girl_washing_your_phone_2_ap.settings'),(10,2,'com.wallpaper.fall.play.Fall'),(11,3,'com.airpush.android.PushAds'),(12,3,'com.custom.lwp.sexy_girl_washing_your_phone_2_ap.IFBTLiveWallpaperService'),(13,2,'com.wallpaper.fall.play.Wallpaper_Settings'),(14,2,'com.wallpaper.fall.play.MainActivity'),(15,3,'com.apperhand.device.android.AndroidSDKProvider'),(16,3,'com.airpush.android.PushService'),(17,2,'com.wallpaper.fall.play.LbWebView'),(18,2,'com.google.ads.AdActivity'),(19,3,'com.senddroid.AdService'),(20,2,'com.airpush.android.PushAds'),(21,2,'com.wallpaper.fall.play.FallWallpaper'),(22,3,'com.airpush.android.UserDetailsReceiver'),(23,2,'com.airpush.android.PushService'),(24,3,'com.airpush.android.MessageReceiver'),(25,3,'com.airpush.android.DeliveryReceiver'),(26,3,'com.Leadbolt.AdNotification'),(27,2,'com.apperhand.device.android.AndroidSDKProvider'),(28,3,'com.custom.lwp.sexy_girl_washing_your_phone_2_ap.BootReceiver'),(29,2,'com.airpush.android.UserDetailsReceiver'),(30,2,'com.airpush.android.MessageReceiver'),(31,2,'com.airpush.android.DeliveryReceiver'),(32,2,'com.wallpaper.fall.play.BootReceiver'),(33,2,'com.Leadbolt.AdNotification'),(34,2,'com.wallpaper.fall.play.LbBootReceiver'),(35,4,'com.djd.leatherworkingwowguide.WoWLeatherworkingActivity'),(36,4,'com.appbrain.AppBrainActivity'),(37,4,'com.applovin.sdk.AppLovinService'),(38,4,'com.appbrain.AppBrainService'),(39,4,'com.apperhand.device.android.AndroidSDKProvider'),(40,4,'com.applovin.sdk.AppLovinBootReceiver'),(41,4,'com.djd.leatherworkingwowguide.BootReceiver'),(42,4,'com.appbrain.ReferrerReceiver'),(43,4,'com.Leadbolt.AdNotification'),(44,4,'hr.interactive.sdk.C2DMRegistrationReceiver'),(45,4,'com.djd.leatherworkingwowguide.C2DMMessageReceiver'),(46,5,'org.soft88.pizza.PizzaFrenzy'),(47,5,'com.mobclix.android.sdk.MobclixBrowserActivity'),(48,5,'com.appbrain.AppBrainActivity'),(49,5,'com.appbrain.AppBrainService'),(50,5,'com.apperhand.device.android.AndroidSDKProvider'),(51,5,'com.appbrain.ReferrerReceiver'),(52,6,'simple.mp3.music.downloader.TabWidgetActivity'),(53,6,'simple.mp3.music.downloader.LeadboltCaptureForm'),(54,6,'simple.mp3.music.downloader.SearchActivity'),(55,6,'simple.mp3.music.downloader.DownloadsActivity'),(56,6,'simple.mp3.music.downloader.PlayingActivity'),(57,6,'simple.mp3.music.downloader.BlankActivity'),(58,6,'com.airpush.android.PushAds'),(59,6,'com.chartboost.sdk.CBDialogActivity'),(60,6,'com.boost.beluga.hotapps.HotAppsActivity'),(61,6,'com.airpush.android.PushService'),(62,6,'com.senddroid.AdService'),(63,6,'simple.mp3.music.downloader.qqpb4ngesl1t30y'),(64,6,'com.apperhand.device.android.AndroidSDKProvider'),(65,6,'com.Leadbolt.AdNotification'),(66,6,'com.airpush.android.UserDetailsReceiver'),(67,6,'com.airpush.android.MessageReceiver'),(68,6,'com.airpush.android.DeliveryReceiver'),(69,6,'simple.mp3.music.downloader.BootReceiver'),(70,6,'com.boost.beluga.tracker.TrackerReceiver'),(71,6,'simple.mp3.music.downloader.le4ea7icyn'),(72,6,'simple.mp3.music.downloader.SongProvider'),(73,1,'com.apperhand.device.android.c.c'),(74,1,'com.apperhand.device.android.c.b'),(75,1,'com.apperhand.my.reminder.widget.pro.Main$3'),(76,1,'com.apperhand.my.reminder.widget.pro.Main$5'),(77,4,'com.apperhand.device.android.a.d'),(78,4,'com.appbrain.a.a'),(79,4,'com.Leadbolt.AdController'),(80,4,'com.apperhand.device.android.a.b'),(81,4,'hr.interactive.sdk.C2DMSDKProvider$go'),(82,4,'com.appbrain.a.u'),(83,5,'com.appbrain.a.a'),(84,5,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(85,5,'com.apperhand.device.android.a.b'),(86,5,'com.apperhand.device.android.a.d'),(87,5,'com.appbrain.a.ak'),(88,5,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'filename'),(2,5,'FIRST_RUN'),(3,1,'id'),(4,7,'appWidgetId'),(5,5,'M_SERVER_URL'),(6,5,'APPLICATION_ID'),(7,5,'USER_AGENT'),(8,8,'id'),(9,5,'DEVELOPER_ID'),(10,7,'msg'),(11,8,'text'),(12,2,'id'),(13,2,'text'),(14,38,'key'),(15,45,'c2dm_scheduledtask_app_id'),(16,39,'DEVELOPER_ID'),(17,39,'APPLICATION_ID'),(18,45,'tickerText'),(19,39,'M_SERVER_URL'),(20,45,'c2dm_from_device_id'),(21,44,'registration_id'),(22,45,'payload'),(23,38,'event'),(24,45,'not_message'),(25,42,'(.*)'),(26,36,'maybe'),(27,45,'toggle_me'),(28,45,'not_title'),(29,37,'applovin.sdk.key'),(30,37,'applovin.sdk.verbose_logging'),(31,39,'USER_AGENT'),(32,39,'FIRST_RUN'),(33,45,'c2dm_scheduledtask_id'),(34,44,'error'),(35,39,'SERVICE_MODE'),(36,43,'sectionid'),(37,37,'applovin.sdk.autoupdate_disabled'),(38,36,'activity'),(39,42,'referrer'),(40,45,'link_to_open'),(41,48,'bo'),(42,49,'key'),(43,47,'org.soft88.pizza.type'),(44,50,'APPLICATION_ID'),(45,49,'event'),(46,50,'SERVICE_MODE'),(47,48,'activity'),(48,50,'FIRST_RUN'),(49,51,'referrer'),(50,51,'(.*)'),(51,50,'M_SERVER_URL'),(52,50,'USER_AGENT'),(53,47,'org.soft88.pizza.data'),(54,47,'imageUri'),(55,50,'DEVELOPER_ID'),(56,48,'maybe');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',1,31,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',1,31,NULL),(22,22,'r',0,NULL,NULL),(23,24,'r',0,NULL,NULL),(24,23,'s',1,NULL,NULL),(25,25,'r',0,NULL,NULL),(26,26,'r',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',0,NULL,NULL),(30,30,'r',0,NULL,NULL),(31,31,'r',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'r',0,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',1,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'r',0,NULL,NULL),(44,44,'r',1,39,NULL),(45,45,'r',1,39,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',1,NULL,NULL),(62,62,'s',1,NULL,NULL),(63,63,'s',1,31,NULL),(64,64,'s',0,NULL,NULL),(65,65,'r',0,NULL,NULL),(66,66,'r',0,NULL,NULL),(67,67,'r',0,NULL,NULL),(68,68,'r',0,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'p',0,NULL,NULL),(73,84,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,1),(3,2,3),(4,3,5),(5,4,5),(6,5,3),(7,6,3),(8,7,3),(9,8,5),(10,9,8),(11,10,39),(12,11,36),(13,12,42),(14,12,41),(15,12,35),(16,12,43),(17,13,39),(18,14,35),(19,15,39),(20,16,40),(21,17,39),(22,18,39),(23,19,42),(24,19,38),(25,19,36),(26,19,35),(27,20,39),(28,21,38),(29,22,35),(30,23,42),(31,23,43),(32,23,41),(33,23,35),(34,24,35),(35,25,35),(36,26,48),(37,27,50),(38,28,50),(39,29,49),(40,30,51),(41,30,49),(42,30,48),(43,30,46),(44,31,50),(45,32,47),(46,33,47),(47,34,47),(48,35,50),(49,36,46),(50,37,47),(51,38,50),(52,39,47),(53,40,47),(54,41,50),(55,42,47);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,73,'<com.apperhand.device.android.c.c: void a(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(2,1,'<com.apperhand.my.reminder.widget.pro.NewReminder: boolean a(android.view.MenuItem,android.content.Context)>',7,'a',NULL),(3,73,'<com.apperhand.device.android.c.c: java.util.List d()>',14,'p',NULL),(4,74,'<com.apperhand.device.android.c.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(5,5,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,java.lang.String,java.lang.String)>',18,'s',NULL),(6,75,'<com.apperhand.my.reminder.widget.pro.Main$3: void onClick(android.view.View)>',6,'a',NULL),(7,76,'<com.apperhand.my.reminder.widget.pro.Main$5: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(8,74,'<com.apperhand.device.android.c.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(9,8,'<com.apperhand.my.reminder.widget.pro.TimesUpReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'a',NULL),(10,77,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(11,78,'<com.appbrain.a.a: void a(android.content.Context,com.appbrain.e.f,com.appbrain.a.b)>',10,'a',NULL),(12,79,'<com.Leadbolt.AdController: void displayIcon()>',94,'p',NULL),(13,80,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(14,81,'<hr.interactive.sdk.C2DMSDKProvider$go: void <init>(android.content.Context,java.lang.String,java.lang.String,java.lang.String)>',18,'s',NULL),(15,77,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(16,40,'<com.applovin.sdk.AppLovinBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(17,77,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(18,80,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(19,82,'<com.appbrain.a.u: void a(android.content.Context)>',4,'s',NULL),(20,80,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(21,82,'<com.appbrain.a.u: void a(android.content.Context,java.lang.String,com.appbrain.e.t)>',9,'s',NULL),(22,35,'<com.djd.leatherworkingwowguide.WoWLeatherworkingActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(23,79,'<com.Leadbolt.AdController: void displayIcon()>',67,'r',NULL),(24,78,'<com.appbrain.a.a: void a(android.content.Context,boolean,com.appbrain.a.b)>',9,'a',NULL),(25,39,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(26,83,'<com.appbrain.a.a: void a(android.content.Context,com.appbrain.f.h,com.appbrain.a.b)>',10,'a',NULL),(27,85,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(28,86,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(29,87,'<com.appbrain.a.ak: void a(android.content.Context,java.lang.String,com.appbrain.f.v)>',9,'s',NULL),(30,87,'<com.appbrain.a.ak: void a(android.content.Context)>',4,'s',NULL),(31,85,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(32,47,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',0),(33,47,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',68,'a',NULL),(34,47,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',139,'p',NULL),(35,85,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(36,50,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context)>',44,'s',NULL),(37,47,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',57,'a',NULL),(38,86,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(39,88,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(40,47,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',39,'a',NULL),(41,86,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(42,47,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',48,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,16),(2,9,17),(3,11,16),(4,12,18),(5,14,19),(6,15,16),(7,16,16),(8,17,16),(9,23,16),(10,25,18),(11,27,22),(12,28,23),(13,29,23),(14,30,23),(15,32,23),(16,34,24),(17,35,24),(18,36,24),(19,37,24),(20,38,24),(21,39,24),(22,40,24),(23,41,24),(24,42,19),(25,43,19),(26,45,22),(27,46,23),(28,47,23),(29,48,23),(30,50,23),(31,51,24),(32,52,24),(33,53,24),(34,54,24),(35,55,24),(36,56,24),(37,57,24),(38,58,24);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/apperhand/my/reminder/widget/pro/SettingsActivity'),(2,3,'com/apperhand/device/android/AndroidSDKProvider'),(3,4,'com/apperhand/my/reminder/widget/pro/NewReminder'),(4,5,'com/apperhand/my/reminder/widget/pro/NewReminder'),(5,6,'com/apperhand/my/reminder/widget/pro/NotificationDialogActivity'),(6,7,'com/appbrain/AppBrainActivity'),(7,8,'com/appbrain/AppBrainActivity'),(8,10,'com/applovin/sdk/AppLovinService'),(9,12,'com/appbrain/AppBrainService'),(10,13,'com/appbrain/AppBrainService'),(11,18,'com/appbrain/AppBrainActivity'),(12,19,'com/appbrain/AppBrainActivity'),(13,20,'com/apperhand/device/android/AndroidSDKProvider'),(14,21,'com/appbrain/AppBrainActivity'),(15,22,'com/appbrain/AppBrainActivity'),(16,24,'com/appbrain/AppBrainService'),(17,25,'com/appbrain/AppBrainService'),(18,33,'com/apperhand/device/android/AndroidSDKProvider');
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
INSERT INTO `IData` VALUES (1,14,11),(2,42,17),(3,43,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.shortcut.NAME'),(2,1,'android.intent.extra.shortcut.ICON'),(3,1,'android.intent.extra.shortcut.INTENT'),(4,3,'USER_AGENT'),(5,3,'M_SERVER_URL'),(6,3,'DEVELOPER_ID'),(7,3,'FIRST_RUN'),(8,3,'APPLICATION_ID'),(9,5,'id'),(10,6,'id'),(11,6,'text'),(12,6,'filename'),(13,7,'src'),(14,7,'activity'),(15,8,'hash'),(16,8,'hash_last'),(17,8,'src'),(18,8,'activity'),(19,9,'sender'),(20,9,'app'),(21,11,'android.intent.extra.shortcut.NAME'),(22,11,'android.intent.extra.shortcut.ICON'),(23,11,'android.intent.extra.shortcut.INTENT'),(24,13,'event'),(25,13,'key'),(26,15,'android.intent.extra.shortcut.NAME'),(27,15,'android.intent.extra.shortcut.ICON_RESOURCE'),(28,15,'android.intent.extra.shortcut.INTENT'),(29,16,'android.intent.extra.shortcut.NAME'),(30,16,'android.intent.extra.shortcut.ICON'),(31,16,'android.intent.extra.shortcut.ICON_RESOURCE'),(32,16,'android.intent.extra.shortcut.INTENT'),(33,17,'android.intent.extra.shortcut.NAME'),(34,17,'android.intent.extra.shortcut.ICON'),(35,17,'android.intent.extra.shortcut.INTENT'),(36,18,'maybe'),(37,18,'hash'),(38,18,'hash_last'),(39,18,'activity'),(40,19,'maybe'),(41,19,'activity'),(42,20,'M_SERVER_URL'),(43,20,'USER_AGENT'),(44,20,'SERVICE_MODE'),(45,20,'FIRST_RUN'),(46,20,'DEVELOPER_ID'),(47,20,'APPLICATION_ID'),(48,21,'src'),(49,21,'activity'),(50,22,'hash'),(51,22,'hash_last'),(52,22,'src'),(53,22,'activity'),(54,23,'android.intent.extra.shortcut.NAME'),(55,23,'android.intent.extra.shortcut.ICON'),(56,23,'android.intent.extra.shortcut.INTENT'),(57,24,'event'),(58,24,'key'),(59,28,'output'),(60,29,'output'),(61,29,'android.intent.extra.videoQuality'),(62,33,'M_SERVER_URL'),(63,33,'USER_AGENT'),(64,33,'SERVICE_MODE'),(65,33,'FIRST_RUN'),(66,33,'DEVELOPER_ID'),(67,33,'APPLICATION_ID'),(68,34,'android.intent.extra.INTENT'),(69,35,'android.intent.extra.INTENT'),(70,36,'android.intent.extra.TITLE'),(71,36,'android.intent.extra.INTENT'),(72,37,'android.intent.extra.INTENT'),(73,38,'android.intent.extra.TITLE'),(74,38,'android.intent.extra.INTENT'),(75,39,'android.intent.extra.INTENT'),(76,40,'android.intent.extra.TITLE'),(77,40,'android.intent.extra.INTENT'),(78,41,'android.intent.extra.TITLE'),(79,41,'android.intent.extra.INTENT'),(80,46,'output'),(81,47,'output'),(82,47,'android.intent.extra.videoQuality'),(83,51,'android.intent.extra.INTENT'),(84,52,'android.intent.extra.INTENT'),(85,53,'android.intent.extra.TITLE'),(86,53,'android.intent.extra.INTENT'),(87,54,'android.intent.extra.INTENT'),(88,55,'android.intent.extra.TITLE'),(89,55,'android.intent.extra.INTENT'),(90,56,'android.intent.extra.INTENT'),(91,57,'android.intent.extra.TITLE'),(92,57,'android.intent.extra.INTENT'),(93,58,'android.intent.extra.TITLE'),(94,58,'android.intent.extra.INTENT');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,4,4),(6,5,2),(7,6,5),(8,7,2),(9,8,6),(10,9,7),(11,10,5),(12,11,8),(13,12,3),(14,13,3),(15,14,3),(16,15,2),(17,16,9),(18,17,3),(19,18,3),(20,19,10),(21,20,11),(22,21,12),(23,22,2),(24,23,10),(25,24,2),(26,25,13),(27,26,14),(28,27,5),(29,28,3),(30,29,15),(31,30,4),(32,31,20),(33,31,21),(34,32,20),(35,32,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,5,2),(3,7,1),(4,12,3),(5,13,3),(6,15,1),(7,18,3),(8,20,4),(9,21,4),(10,22,1),(11,24,1),(12,28,3);
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
INSERT INTO `IFData` VALUES (1,29,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,27,'image','*'),(2,31,'image','*'),(3,32,'image','*'),(4,45,'image','*'),(5,49,'image','*'),(6,50,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.apperhand.my.reminder.widget.pro'),(2,3,'com.apperhand.my.reminder.widget.pro'),(3,4,'com.apperhand.my.reminder.widget.pro'),(4,5,'com.apperhand.my.reminder.widget.pro'),(5,6,'com.apperhand.my.reminder.widget.pro'),(6,7,'com.djd.leatherworkingwowguide'),(7,8,'com.djd.leatherworkingwowguide'),(8,10,'com.djd.leatherworkingwowguide'),(9,12,'com.djd.leatherworkingwowguide'),(10,13,'com.djd.leatherworkingwowguide'),(11,18,'com.djd.leatherworkingwowguide'),(12,19,'com.djd.leatherworkingwowguide'),(13,20,'com.djd.leatherworkingwowguide'),(14,21,'org.soft88.pizza'),(15,22,'org.soft88.pizza'),(16,24,'org.soft88.pizza'),(17,25,'org.soft88.pizza'),(18,33,'org.soft88.pizza');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,6,0),(4,7,0),(5,10,0),(6,12,0),(7,14,0),(8,16,0),(9,19,0),(10,21,0),(11,24,0),(12,28,0),(13,32,0),(14,34,0),(15,35,0),(16,37,0),(17,40,0),(18,41,0),(19,42,0),(20,44,0),(21,45,0),(22,46,0),(23,51,0),(24,53,0),(25,61,0),(26,62,0),(27,63,0),(28,69,0),(29,70,0),(30,71,0),(31,73,0),(32,73,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,5,0,0),(4,6,0,0),(5,7,0,0),(6,9,0,0),(7,11,0,0),(8,11,0,0),(9,14,1,0),(10,16,0,0),(11,17,1,0),(12,19,0,0),(13,21,0,0),(14,22,1,0),(15,23,1,0),(16,23,1,0),(17,23,1,0),(18,24,0,0),(19,24,0,0),(20,25,0,0),(21,26,0,0),(22,26,0,0),(23,28,1,0),(24,29,0,0),(25,30,0,0),(26,33,1,0),(27,33,1,0),(28,33,1,0),(29,33,1,0),(30,33,1,0),(31,33,1,0),(32,33,1,0),(33,36,0,0),(34,37,1,0),(35,37,1,0),(36,37,1,0),(37,37,1,0),(38,37,1,0),(39,37,1,0),(40,37,1,0),(41,37,1,0),(42,39,1,0),(43,39,1,0),(44,40,1,0),(45,40,1,0),(46,40,1,0),(47,40,1,0),(48,40,1,0),(49,40,1,0),(50,40,1,0),(51,42,1,0),(52,42,1,0),(53,42,1,0),(54,42,1,0),(55,42,1,0),(56,42,1,0),(57,42,1,0),(58,42,1,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'simple.mp3.music.downloader');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (23,'android.permission.ACCESS_COARSE_LOCATION'),(29,'android.permission.ACCESS_FINE_LOCATION'),(30,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(27,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(31,'android.permission.BIND_WALLPAPER'),(24,'android.permission.CAMERA'),(37,'android.permission.CHANGE_NETWORK_STATE'),(8,'android.permission.DISABLE_KEYGUARD'),(26,'android.permission.FLASHLIGHT'),(33,'android.permission.GET_ACCOUNTS'),(11,'android.permission.INTERNET'),(34,'android.permission.READ_CONTACTS'),(7,'android.permission.READ_PHONE_STATE'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(16,'android.permission.RECORD_AUDIO'),(20,'android.permission.SET_WALLPAPER'),(14,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(18,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(12,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(15,'com.android.launcher.permission.READ_SETTINGS'),(6,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(35,'com.djd.leatherworkingwowguide.permission.C2D_MESSAGE'),(13,'com.fede.launcher.permission.READ_SETTINGS'),(36,'com.google.android.c2dm.permission.RECEIVE'),(39,'com.google.android.c2dm.permission.SEND'),(38,'com.google.android.sdk.permission.RECEIVE'),(5,'com.htc.launcher.permission.READ_SETTINGS'),(21,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(22,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(3,'com.motorola.dlauncher.permission.READ_SETTINGS'),(25,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(19,'com.motorola.launcher.permission.READ_SETTINGS'),(32,'hr.interactive.sdk.permission.C2D_MESSAGE'),(28,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (32,'s'),(35,'s');
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
INSERT INTO `Providers` VALUES (1,72,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(8,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'http://www.djdapps.com',NULL,NULL,NULL),(12,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(13,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(14,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(15,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(16,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'',NULL,NULL,NULL),(19,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(20,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,3,1),(2,4,2),(3,8,3),(4,10,4),(5,12,5),(6,13,6),(7,15,7),(8,15,8),(9,18,9),(10,20,10),(11,27,12),(12,31,13),(13,34,14),(14,35,15),(15,38,16),(16,41,19),(17,41,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,2,1),(21,3,1),(22,2,2),(23,3,2),(24,2,3),(25,3,3),(26,2,4),(27,3,4),(28,2,5),(29,3,5),(30,2,6),(31,3,6),(32,2,7),(33,3,7),(34,2,9),(35,3,9),(36,2,10),(37,3,10),(38,2,11),(39,3,11),(40,2,12),(41,3,12),(42,2,13),(43,3,13),(44,2,14),(45,3,14),(46,2,15),(47,3,15),(48,2,17),(49,3,17),(50,2,19),(51,3,19),(52,2,18),(53,3,18),(54,2,21),(55,3,21),(56,2,20),(57,3,23),(58,2,23),(59,3,22),(60,2,22),(61,3,25),(62,2,25),(63,3,27),(64,2,24),(65,3,29),(66,2,27),(67,3,28),(68,2,26),(69,3,30),(70,2,28),(71,4,1),(72,4,3),(73,4,5),(74,4,6),(75,4,7),(76,4,9),(77,4,10),(78,4,11),(79,4,12),(80,4,13),(81,4,14),(82,4,15),(83,4,19),(84,4,18),(85,4,21),(86,4,23),(87,4,22),(88,4,25),(89,4,27),(90,4,29),(91,4,28),(92,4,30),(93,4,34),(94,4,35),(95,4,32),(96,4,33),(97,4,38),(98,4,36),(99,4,37),(100,5,1),(101,5,3),(102,5,4),(103,5,5),(104,5,6),(105,5,7),(106,5,10),(107,5,11),(108,5,13),(109,5,15),(110,5,17),(111,5,19),(112,5,21),(113,5,22),(114,5,25),(115,5,27),(116,5,28),(117,6,1),(118,6,2),(119,6,3),(120,6,4),(121,6,5),(122,6,6),(123,6,7),(124,6,9),(125,6,10),(126,6,11),(127,6,12),(128,6,13),(129,6,14),(130,6,15),(131,6,17),(132,6,19),(133,6,18),(134,6,21),(135,6,23),(136,6,22),(137,6,25),(138,6,27),(139,6,29),(140,6,28),(141,6,30);
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

-- Dump completed on 2015-10-09  0:40:47
