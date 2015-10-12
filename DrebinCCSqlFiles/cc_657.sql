-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_657
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (18,'(.*)'),(9,'.xjessuhp4kyd3akiy'),(12,'android.appwidget.action.APPWIDGET_UPDATE'),(5,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.SCREEN_OFF'),(20,'android.intent.action.USER_PRESENT'),(16,'android.intent.action.VIEW'),(15,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(2,'android.service.wallpaper.WallpaperService'),(4,'com.airpush.android.PushServiceStart48438'),(6,'com.airpush.android.PushServiceStart52035'),(14,'com.airpush.android.PushServiceStart52196'),(13,'com.airpush.android.PushServiceStart55655'),(10,'com.airpush.android.PushServiceStart55824'),(17,'com.android.launcher.action.INSTALL_SHORTCUT'),(8,'com.applovin.sdk.AppLovinService'),(3,'com.senddroid.AdServicecom.jarodyv.lwp.globelite'),(11,'com.senddroid.AdServiceiwin.doors.room.escape'),(7,'com.senddroid.AdServiceorg.drhu.spring');
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
INSERT INTO `Applications` VALUES (1,'com.crazyapps.angry.birds.multi.user',2),(2,'com.jarodyv.lwp.globelite',18),(3,'com.custom.lwp.MagictouchIcecubesinwaterone',3),(4,'org.drhu.spring',21),(5,'iwin.doors.room.escape',962),(6,'org.drhu.ChainGemFree',24),(7,'fourshared.music.download',15);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.crazyapps.angry.birds.multi.user.AngryBirdsMultiUserMain'),(2,1,'com.crazyapps.angry.birds.multi.user.ProfilesActivity'),(3,1,'com.crazyapps.angry.birds.multi.user.RestoreActivity'),(4,1,'com.plankton.device.android.service.AndroidMDKService'),(5,1,'com.crazyapps.angry.birds.multi.user.af'),(6,1,'com.crazyapps.angry.birds.multi.user.ab'),(7,2,'com.jarodyv.lwp.globelite.GlobeSettingActivity'),(8,2,'com.jarodyv.lwp.globelite.PopActivity'),(9,2,'com.jarodyv.lwp.globelite.PicselectActivity'),(10,2,'com.jarodyv.lwp.globelite.HowToActivity'),(11,1,'com.crazyapps.angry.birds.multi.user.ae'),(12,2,'com.google.ads.AdActivity'),(13,2,'com.jarodyv.lwp.globelite.GlobeWallpaperService'),(14,2,'com.sdk.android.AndroidSDKService'),(15,3,'com.custom.lwp.MagictouchIcecubesinwaterone.vickyWallpaperOptions'),(16,2,'com.apperhand.device.android.AndroidSDKProvider'),(17,1,'com.crazyapps.angry.birds.multi.user.ac'),(18,3,'com.custom.lwp.MagictouchIcecubesinwaterone.vickyLauncher'),(19,2,'com.senddroid.AdService'),(20,3,'com.custom.uilib.FilePicker'),(21,3,'com.airpush.android.PushAds'),(22,3,'com.custom.lwp.MagictouchIcecubesinwaterone.vickyWallpaperService'),(23,3,'com.apperhand.device.android.AndroidSDKProvider'),(24,3,'com.airpush.android.PushService'),(25,3,'com.airpush.android.UserDetailsReceiver'),(26,3,'com.airpush.android.MessageReceiver'),(27,3,'com.airpush.android.DeliveryReceiver'),(28,3,'com.Leadbolt.AdNotification'),(29,3,'com.custom.lwp.MagictouchIcecubesinwaterone.BootReceiver'),(30,4,'org.drhu.spring.OurApps'),(31,4,'org.drhu.spring.SpringSettings'),(32,4,'org.drhu.spring.WebviewActivity'),(33,4,'org.drhu.spring.Flowers'),(34,4,'org.drhu.spring.WebOfferActivity'),(35,4,'com.airpush.android.PushAds'),(36,4,'org.drhu.spring.Spring'),(37,4,'com.airpush.android.PushService'),(38,5,'iwin.doors.room.escape.tmha8vk0f0ccjlf59qju'),(39,4,'com.apperhand.device.android.AndroidSDKProvider'),(40,4,'com.senddroid.AdService'),(41,5,'iwin.doors.room.escape.rmog9ucfmxtt'),(42,5,'iwin.doors.room.escape.d2xzlirphh4s7dm'),(43,5,'iwin.doors.room.escape.kc3huwbt4l9v'),(44,4,'com.applovin.sdk.AppLovinService'),(45,5,'iwin.doors.room.escape.o3agh5ddxinecjbk85h'),(46,5,'com.airpush.android.PushAds'),(47,4,'com.airpush.android.UserDetailsReceiver'),(48,5,'iwin.doors.room.escape.rathk0kui29'),(49,4,'com.airpush.android.MessageReceiver'),(50,5,'com.inmobi.androidsdk.IMBrowserActivity'),(51,4,'com.airpush.android.DeliveryReceiver'),(52,5,'com.mobfox.sdk.InAppWebView'),(53,4,'org.drhu.spring.BootReceiver'),(54,5,'iwin.doors.room.escape.erknfkdytp8'),(55,5,'iwin.doors.room.escape.xjessuhp4kyd3akiy'),(56,4,'com.Leadbolt.AdNotification'),(57,5,'com.airpush.android.PushService'),(58,4,'com.applovin.sdk.AppLovinNotificationReceiver'),(59,5,'com.apperhand.device.android.AndroidSDKProvider'),(60,5,'com.senddroid.AdService'),(61,5,'iwin.doors.room.escape.y5dg9bmg4w0'),(62,5,'iwin.doors.room.escape.wp85k014zs2kv7k'),(63,6,'org.drhu.ChainGemFree.ChainGem'),(64,5,'iwin.doors.room.escape.vec5lahdm1kku2dgcash'),(65,6,'org.drhu.ChainGemFree.Welcome'),(66,5,'iwin.doors.room.escape.kd4yequm83dyk8x901g8'),(67,6,'org.drhu.ChainGemFree.Begin'),(68,6,'org.drhu.ChainGemFree.Game'),(69,5,'com.Leadbolt.AdNotification'),(70,6,'org.drhu.ChainGemFree.Pause'),(71,5,'com.airpush.android.UserDetailsReceiver'),(72,6,'org.drhu.ChainGemFree.GameOver'),(73,5,'com.airpush.android.MessageReceiver'),(74,6,'org.drhu.ChainGemFree.LevelList'),(75,5,'com.airpush.android.DeliveryReceiver'),(76,6,'org.drhu.ChainGemFree.PackList'),(77,5,'iwin.doors.room.escape.yhx6m543sjx3y'),(78,6,'org.drhu.ChainGemFree.Help'),(79,6,'org.drhu.ChainGemFree.WebOfferActivity'),(80,6,'com.scoreloop.client.android.ui.EntryScreenActivity'),(81,6,'com.scoreloop.client.android.ui.ShowResultOverlayActivity'),(82,6,'com.scoreloop.client.android.ui.component.market.MarketHeaderActivity'),(83,6,'com.scoreloop.client.android.ui.component.market.MarketListActivity'),(84,6,'com.scoreloop.client.android.ui.component.entry.EntryListActivity'),(85,6,'com.scoreloop.client.android.ui.component.post.PostOverlayActivity'),(86,6,'com.scoreloop.client.android.ui.component.score.ScoreHeaderActivity'),(87,6,'com.scoreloop.client.android.ui.component.score.ScoreListActivity'),(88,6,'com.scoreloop.client.android.ui.component.user.UserAddBuddyListActivity'),(89,7,'fourshared.music.download.App_TabWidgetActivity'),(90,6,'com.scoreloop.client.android.ui.component.user.UserHeaderActivity'),(91,7,'fourshared.music.download.App_LeadboltCaptureForm'),(92,6,'com.scoreloop.client.android.ui.component.user.UserDetailListActivity'),(93,6,'com.scoreloop.client.android.ui.component.user.UserListActivity'),(94,6,'com.scoreloop.client.android.ui.component.game.GameDetailHeaderActivity'),(95,7,'fourshared.music.download.App_SearchActivity'),(96,6,'com.scoreloop.client.android.ui.component.game.GameDetailListActivity'),(97,7,'fourshared.music.download.App_DownloadsActivity'),(98,6,'com.scoreloop.client.android.ui.component.game.GameListActivity'),(99,7,'fourshared.music.download.App_PlayingActivity'),(100,6,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsListActivity'),(101,7,'com.airpush.android.PushAds'),(102,6,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsPictureListActivity'),(103,7,'com.airpush.android.PushService'),(104,6,'com.scoreloop.client.android.ui.LeaderboardsScreenActivity'),(105,6,'com.scoreloop.client.android.ui.framework.ScreenActivity'),(106,7,'com.apperhand.device.android.AndroidSDKProvider'),(107,6,'com.scoreloop.client.android.ui.framework.TabsActivity'),(108,7,'fourshared.music.download.App_BootReceiver'),(109,6,'com.scoreloop.client.android.ui.ProfileScreenActivity'),(110,6,'com.airpush.android.PushAds'),(111,6,'com.airpush.android.PushService'),(112,7,'com.Leadbolt.AdNotification'),(113,7,'com.airpush.android.UserDetailsReceiver'),(114,7,'com.airpush.android.MessageReceiver'),(115,6,'com.apperhand.device.android.AndroidSDKProvider'),(116,7,'com.airpush.android.DeliveryReceiver'),(117,6,'com.airpush.android.UserDetailsReceiver'),(118,7,'fourshared.music.download.App_SongProvider'),(119,6,'com.airpush.android.MessageReceiver'),(120,6,'com.airpush.android.DeliveryReceiver'),(121,6,'org.drhu.ChainGemFree.BootReceiver'),(122,6,'com.Leadbolt.AdNotification'),(123,2,'com.jarodyv.lwp.globelite.PicselectActivity$1$2'),(124,2,'com.apperhand.device.android.a.b'),(125,2,'com.senddroid.SendDroid'),(126,2,'com.jarodyv.lwp.globelite.GlobeSettingActivity$1'),(127,2,'com.sdk.android.impl.ShortcutImpl'),(128,2,'com.sdk.android.impl.BookmarkImpl'),(129,2,'com.apperhand.device.android.a.e'),(130,2,'com.jarodyv.lwp.globelite.PopActivity$1'),(131,2,'com.google.ads.util.AdUtil$UserActivityReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'DEVELOPER_ID'),(2,2,'isNormalGameFound'),(3,4,'M_SERVER_URL'),(4,4,'APPLICATION_ID'),(5,2,'ANGRY_BIRDS_SEASONS_HIGHSCORES_FILENAME_PATH'),(6,2,'ANGRY_BIRDS_SEASONS_SETTINGS_FILENAME_PATH'),(7,2,'isRioGameFound'),(8,2,'isSeasonsGameFound'),(9,2,'ANGRY_BIRDS_HIGHSCORES_FILENAME_PATH'),(10,4,'M_INSTALLATION_URL'),(11,2,'ANGRY_BIRDS_RIO_SETTINGS_FILENAME_PATH'),(12,2,'ANGRY_BIRDS_SETTINGS_FILENAME_PATH'),(13,2,'ANGRY_BIRDS_RIO_HIGHSCORES_FILENAME_PATH'),(14,11,'M_SERVER_URL'),(15,11,'APPLICATION_ID'),(16,9,'com.google.circles.platform.result.extra.CONFIRMATION'),(17,11,'permanent'),(18,11,'DEVELOPER_ID'),(19,11,'FIRST_RUN'),(20,9,'params'),(21,13,'FIRST_RUN'),(22,9,'com.google.ads.AdOpener'),(23,11,'PACKAGE_NAME'),(24,13,'permanent'),(25,13,'M_SERVER_URL'),(26,13,'SERVICE_MODE'),(27,9,'com.google.circles.platform.result.extra.ACTION'),(28,13,'USER_AGENT'),(29,9,'action'),(30,11,'SERVICE_MODE'),(31,13,'DEVELOPER_ID'),(32,11,'USER_AGENT'),(33,13,'APPLICATION_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,7,'a',1,NULL,NULL),(6,8,'a',0,NULL,NULL),(7,9,'a',0,NULL,NULL),(8,10,'a',1,NULL,NULL),(9,12,'a',0,NULL,NULL),(10,13,'s',1,32,NULL),(11,14,'s',0,NULL,NULL),(12,15,'a',1,NULL,NULL),(13,16,'s',0,NULL,NULL),(14,18,'a',1,NULL,NULL),(15,19,'s',1,NULL,NULL),(16,20,'a',0,NULL,NULL),(17,21,'a',0,NULL,NULL),(18,22,'s',1,32,NULL),(19,23,'s',0,NULL,NULL),(20,24,'s',1,NULL,NULL),(21,25,'r',0,NULL,NULL),(22,26,'r',0,NULL,NULL),(23,27,'r',0,NULL,NULL),(24,28,'r',0,NULL,NULL),(25,29,'r',1,NULL,NULL),(26,30,'a',0,NULL,NULL),(27,31,'a',1,NULL,NULL),(28,32,'a',1,NULL,NULL),(29,33,'a',1,NULL,NULL),(30,34,'a',0,NULL,NULL),(31,35,'a',0,NULL,NULL),(32,36,'s',1,32,NULL),(33,37,'s',1,NULL,NULL),(34,38,'a',1,NULL,NULL),(35,39,'s',0,NULL,NULL),(36,40,'s',1,NULL,NULL),(37,41,'a',0,NULL,NULL),(38,42,'a',0,NULL,NULL),(39,43,'a',0,NULL,NULL),(40,44,'s',1,NULL,NULL),(41,45,'a',0,NULL,NULL),(42,46,'a',0,NULL,NULL),(43,47,'r',0,NULL,NULL),(44,48,'a',0,NULL,NULL),(45,49,'r',0,NULL,NULL),(46,50,'a',0,NULL,NULL),(47,51,'r',0,NULL,NULL),(48,52,'a',0,NULL,NULL),(49,53,'r',1,NULL,NULL),(50,54,'s',1,32,NULL),(51,55,'s',1,NULL,NULL),(52,56,'r',0,NULL,NULL),(53,57,'s',1,NULL,NULL),(54,58,'r',0,NULL,NULL),(55,59,'s',0,NULL,NULL),(56,60,'s',1,NULL,NULL),(57,61,'s',0,NULL,NULL),(58,62,'r',1,NULL,NULL),(59,63,'a',1,NULL,NULL),(60,64,'r',1,NULL,NULL),(61,65,'a',0,NULL,NULL),(62,66,'r',1,NULL,NULL),(63,67,'a',0,NULL,NULL),(64,68,'a',0,NULL,NULL),(65,69,'r',0,NULL,NULL),(66,70,'a',0,NULL,NULL),(67,71,'r',0,NULL,NULL),(68,72,'a',0,NULL,NULL),(69,73,'r',0,NULL,NULL),(70,74,'a',0,NULL,NULL),(71,75,'r',0,NULL,NULL),(72,76,'a',0,NULL,NULL),(73,77,'r',0,NULL,NULL),(74,78,'a',0,NULL,NULL),(75,79,'a',0,NULL,NULL),(76,80,'a',0,NULL,NULL),(77,81,'a',0,NULL,NULL),(78,82,'a',0,NULL,NULL),(79,83,'a',0,NULL,NULL),(80,84,'a',0,NULL,NULL),(81,85,'a',0,NULL,NULL),(82,86,'a',0,NULL,NULL),(83,87,'a',0,NULL,NULL),(84,88,'a',0,NULL,NULL),(85,89,'a',0,NULL,NULL),(86,90,'a',0,NULL,NULL),(87,91,'a',1,NULL,NULL),(88,92,'a',0,NULL,NULL),(89,93,'a',0,NULL,NULL),(90,94,'a',0,NULL,NULL),(91,95,'a',0,NULL,NULL),(92,96,'a',0,NULL,NULL),(93,97,'a',0,NULL,NULL),(94,98,'a',0,NULL,NULL),(95,99,'a',0,NULL,NULL),(96,100,'a',0,NULL,NULL),(97,101,'a',0,NULL,NULL),(98,102,'a',0,NULL,NULL),(99,103,'s',1,NULL,NULL),(100,104,'a',0,NULL,NULL),(101,105,'a',0,NULL,NULL),(102,106,'s',0,NULL,NULL),(103,107,'a',0,NULL,NULL),(104,108,'r',1,NULL,NULL),(105,109,'a',0,NULL,NULL),(106,110,'a',0,NULL,NULL),(107,111,'s',1,NULL,NULL),(108,112,'r',0,NULL,NULL),(109,113,'r',0,NULL,NULL),(110,114,'r',0,NULL,NULL),(111,115,'s',0,NULL,NULL),(112,116,'r',0,NULL,NULL),(113,117,'r',0,NULL,NULL),(114,118,'p',0,NULL,NULL),(115,119,'r',0,NULL,NULL),(116,120,'r',0,NULL,NULL),(117,121,'r',1,NULL,NULL),(118,122,'r',0,NULL,NULL),(119,131,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,1),(6,6,1),(7,7,8),(8,8,7),(9,9,13),(10,10,9),(11,11,15),(12,12,5),(13,13,11),(14,14,15),(15,15,13),(16,16,13),(17,17,11),(18,18,13),(19,19,13),(20,20,13),(21,21,9),(22,22,6),(23,23,5),(24,24,11),(25,25,8),(26,25,5),(27,25,7),(28,26,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.crazyapps.angry.birds.multi.user.af: void onClick(android.view.View)>',10,'a',NULL),(2,6,'<com.crazyapps.angry.birds.multi.user.ab: void onClick(android.view.View)>',33,'a',NULL),(3,11,'<com.crazyapps.angry.birds.multi.user.ae: void onClick(android.view.View)>',10,'a',NULL),(4,2,'<com.crazyapps.angry.birds.multi.user.ProfilesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(5,17,'<com.crazyapps.angry.birds.multi.user.ac: void onClick(android.view.View)>',10,'a',NULL),(6,4,'<com.plankton.device.android.service.AndroidMDKService: void a(android.content.Context,java.lang.String,java.lang.String)>',12,'s',NULL),(7,10,'<com.jarodyv.lwp.globelite.HowToActivity: void onCreate(android.os.Bundle)>',8,'a',NULL),(8,123,'<com.jarodyv.lwp.globelite.PicselectActivity$1$2: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(9,124,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(10,12,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(11,125,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',110,'p',NULL),(12,126,'<com.jarodyv.lwp.globelite.GlobeSettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(13,127,'<com.sdk.android.impl.ShortcutImpl: android.database.Cursor a(com.sdk.android.impl.ShortcutImpl$a)>',24,'p',NULL),(14,125,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',58,'r',NULL),(15,124,'<com.apperhand.device.android.a.b: java.util.List a()>',13,'p',NULL),(16,124,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(17,128,'<com.sdk.android.impl.BookmarkImpl: java.util.List a()>',13,'p',NULL),(18,129,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(19,129,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(20,129,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(21,12,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(22,130,'<com.jarodyv.lwp.globelite.PopActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(23,7,'<com.jarodyv.lwp.globelite.GlobeSettingActivity: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',27,'a',NULL),(24,127,'<com.sdk.android.impl.ShortcutImpl: android.database.Cursor a(com.sdk.android.impl.ShortcutImpl$a)>',10,'p',NULL),(25,14,'<com.sdk.android.AndroidSDKService: void a(android.content.Context,int,android.os.Bundle)>',54,'s',NULL),(26,125,'<com.senddroid.SendDroid: void dropIcon(com.senddroid.AdRequest)>',135,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,3,1),(3,5,1),(4,7,15),(5,8,16),(6,10,16),(7,11,17),(8,12,17),(9,13,16),(10,14,18),(11,15,18),(12,16,16),(13,17,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com.rovio.ka3d.App'),(2,2,'com/crazyapps/angry/birds/multi/user/ProfilesActivity'),(3,3,'com.rovio.ka3d.App'),(4,4,'com/crazyapps/angry/birds/multi/user/RestoreActivity'),(5,5,'com.rovio.ka3d.App'),(6,6,'com/plankton/device/android/service/AndroidMDKService'),(7,9,'com.google.android.apps.circles.platform.PlusOneActivity'),(8,18,'com/jarodyv/lwp/globelite/PicselectActivity'),(9,19,'com/sdk/android/AndroidSDKService'),(10,20,'com/sdk/android/AndroidSDKService');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,8,1),(2,10,4),(3,13,12),(4,14,13),(5,15,14),(6,16,15),(7,17,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'ANGRY_BIRDS_RIO_SETTINGS_FILENAME_PATH'),(2,2,'isNormalGameFound'),(3,2,'ANGRY_BIRDS_RIO_HIGHSCORES_FILENAME_PATH'),(4,2,'ANGRY_BIRDS_SEASONS_SETTINGS_FILENAME_PATH'),(5,2,'isSeasonsGameFound'),(6,2,'ANGRY_BIRDS_HIGHSCORES_FILENAME_PATH'),(7,2,'isRioGameFound'),(8,2,'ANGRY_BIRDS_SETTINGS_FILENAME_PATH'),(9,2,'ANGRY_BIRDS_SEASONS_HIGHSCORES_FILENAME_PATH'),(10,6,'M_SERVER_URL'),(11,6,'DEVELOPER_ID'),(12,6,'APPLICATION_ID'),(13,6,'M_INSTALLATION_URL'),(14,9,'com.google.circles.platform.intent.extra.ACTION'),(15,9,'(.*)'),(16,9,'com.google.circles.platform.intent.extra.ENTITY'),(17,9,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(18,11,'duplicate'),(19,11,'android.intent.extra.shortcut.NAME'),(20,11,'android.intent.extra.shortcut.ICON'),(21,11,'android.intent.extra.shortcut.INTENT'),(22,12,'android.intent.extra.shortcut.NAME'),(23,12,'android.intent.extra.shortcut.ICON'),(24,12,'android.intent.extra.shortcut.INTENT'),(25,19,'M_SERVER_URL'),(26,19,'USER_AGENT'),(27,19,'SERVICE_MODE'),(28,19,'FIRST_RUN'),(29,19,'DEVELOPER_ID'),(30,19,'APPLICATION_ID'),(31,19,'PACKAGE_NAME'),(32,20,'M_SERVER_URL'),(33,20,'USER_AGENT'),(34,20,'SERVICE_MODE'),(35,20,'FIRST_RUN'),(36,20,'(.*)'),(37,20,'DEVELOPER_ID'),(38,20,'APPLICATION_ID'),(39,20,'PACKAGE_NAME');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,3),(6,6,2),(7,7,4),(8,8,5),(9,9,1),(10,10,2),(11,11,6),(12,12,1),(13,13,7),(14,14,8),(15,15,5),(16,16,2),(17,17,5),(18,18,9),(19,19,5),(20,20,10),(21,21,11),(22,22,12),(23,23,1),(24,24,5),(25,25,9),(26,26,1),(27,27,13),(28,28,5),(29,29,14),(30,30,5),(31,31,5),(32,32,19),(33,32,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,4,1),(4,8,3),(5,9,1),(6,12,1),(7,15,3),(8,19,3),(9,23,1),(10,24,3),(11,26,1),(12,28,3),(13,30,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,14,'(.*)','(.*)'),(2,16,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.rovio.angrybirds'),(2,2,'com.crazyapps.angry.birds.multi.user'),(3,3,'com.rovio.angrybirdsrio'),(4,4,'com.crazyapps.angry.birds.multi.user'),(5,5,'com.rovio.angrybirdsseasons'),(6,6,'com.crazyapps.angry.birds.multi.user'),(7,9,'com.google.android.apps.plus'),(8,18,'com.jarodyv.lwp.globelite'),(9,19,'com.jarodyv.lwp.globelite'),(10,20,'com.jarodyv.lwp.globelite');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,8,0),(3,10,0),(4,14,0),(5,15,0),(6,18,0),(7,20,0),(8,25,0),(9,29,0),(10,32,0),(11,33,0),(12,34,0),(13,36,0),(14,40,0),(15,49,0),(16,50,0),(17,49,0),(18,51,0),(19,49,0),(20,53,0),(21,56,0),(22,58,0),(23,59,0),(24,60,0),(25,62,0),(26,87,0),(27,99,0),(28,104,0),(29,107,0),(30,117,0),(31,117,0),(32,119,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,1,0),(8,8,1,0),(9,10,0,0),(10,12,1,0),(11,14,1,0),(12,20,1,0),(13,21,1,0),(14,21,1,0),(15,21,1,0),(16,21,1,0),(17,22,1,0),(18,23,0,0),(19,25,0,0),(20,25,0,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'fourshared.music.download');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (27,'android.permission.ACCESS_COARSE_LOCATION'),(29,'android.permission.ACCESS_FINE_LOCATION'),(30,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(26,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(32,'android.permission.BIND_WALLPAPER'),(35,'android.permission.CHANGE_WIFI_STATE'),(34,'android.permission.GET_ACCOUNTS'),(12,'android.permission.INTERNET'),(33,'android.permission.READ_CONTACTS'),(4,'android.permission.READ_LOGS'),(9,'android.permission.READ_PHONE_STATE'),(28,'android.permission.RECEIVE_BOOT_COMPLETED'),(31,'android.permission.VIBRATE'),(25,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(36,'android.permission.WRITE_SETTINGS'),(18,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(13,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(14,'com.android.launcher.permission.READ_SETTINGS'),(8,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(17,'com.android.launcher.permission.WRITE_SETTINGS'),(23,'com.fede.launcher.permission.READ_SETTINGS'),(7,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(11,'com.lge.launcher.permission.READ_SETTINGS'),(20,'com.lge.launcher.permission.UNINSTALL_SHORTCUT'),(16,'com.lge.launcher.permission.WRITE_SETTINGS'),(21,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(22,'com.motorola.dlauncher.permission.READ_SETTINGS'),(15,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(19,'com.motorola.launcher.permission.READ_SETTINGS'),(10,'com.motorola.launcher.permission.UNINSTALL_SHORTCUT'),(5,'com.motorola.launcher.permission.WRITE_SETTINGS'),(24,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Providers` VALUES (1,114,0,NULL,NULL);
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=com.jarodyv.lwp.globe',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=com.jarodyv.lwp.globe',NULL,NULL,NULL),(5,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(6,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(7,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(10,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(11,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=com.jarodyv.lwp.globe',NULL,NULL,NULL),(17,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(18,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(19,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,9,2),(2,11,3),(3,13,5),(4,15,6),(5,16,7),(6,17,8),(7,18,9),(8,18,10),(9,19,11),(10,24,17),(11,24,18),(12,26,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,20),(21,2,1),(22,2,2),(23,2,6),(24,2,7),(25,2,8),(26,2,9),(27,2,11),(28,2,12),(29,2,14),(30,2,15),(31,2,19),(32,2,21),(33,2,23),(34,3,1),(35,2,22),(36,3,2),(37,2,25),(38,3,3),(39,2,24),(40,3,6),(41,2,26),(42,3,7),(43,3,8),(44,3,9),(45,3,11),(46,3,12),(47,3,13),(48,3,14),(49,3,15),(50,3,19),(51,3,18),(52,3,21),(53,3,23),(54,3,22),(55,3,25),(56,3,24),(57,3,27),(58,3,26),(59,3,29),(60,3,28),(61,3,31),(62,3,30),(63,4,34),(64,4,1),(65,4,2),(66,4,33),(67,4,6),(68,4,7),(69,4,8),(70,4,9),(71,4,11),(72,4,12),(73,4,13),(74,4,14),(75,4,15),(76,4,19),(77,4,18),(78,4,21),(79,4,23),(80,4,22),(81,4,25),(82,4,24),(83,5,1),(84,4,27),(85,5,2),(86,4,26),(87,5,3),(88,4,29),(89,5,6),(90,4,28),(91,5,7),(92,4,30),(93,5,8),(94,5,9),(95,5,11),(96,5,12),(97,5,13),(98,5,14),(99,5,15),(100,5,19),(101,5,18),(102,5,21),(103,5,23),(104,5,22),(105,5,25),(106,5,24),(107,5,27),(108,5,26),(109,5,29),(110,5,28),(111,5,31),(112,5,30),(113,5,34),(114,5,35),(115,6,1),(116,6,2),(117,6,3),(118,6,6),(119,6,7),(120,6,8),(121,6,9),(122,6,11),(123,6,12),(124,6,13),(125,6,14),(126,6,15),(127,6,19),(128,6,18),(129,6,21),(130,6,23),(131,6,22),(132,6,25),(133,6,24),(134,6,27),(135,6,26),(136,6,29),(137,6,28),(138,6,31),(139,6,30),(140,6,34),(141,6,33),(142,7,1),(143,7,2),(144,7,3),(145,7,6),(146,7,7),(147,7,8),(148,7,9),(149,7,11),(150,7,12),(151,7,13),(152,7,14),(153,7,15),(154,7,19),(155,7,18),(156,7,21),(157,7,23),(158,7,22),(159,7,25),(160,7,24),(161,7,27),(162,7,26),(163,7,29),(164,7,28),(165,7,31),(166,7,30),(167,7,34),(168,7,36);
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

-- Dump completed on 2015-10-09  0:40:39
