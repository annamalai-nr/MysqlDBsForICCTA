-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_642
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (26,'(.*)'),(15,'android.intent.action.ACTION_POWER_CONNECTED'),(4,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.NEW_OUTGOING_CALL'),(20,'android.intent.action.PACKAGE_ADDED'),(21,'android.intent.action.PACKAGE_REMOVED'),(9,'android.intent.action.PHONE_STATE'),(24,'android.intent.action.SCREEN_OFF'),(25,'android.intent.action.USER_PRESENT'),(5,'android.intent.action.VIEW'),(13,'android.net.conn.CONNECTIVITY_CHANGE'),(6,'android.service.wallpaper.WallpaperService'),(7,'com.airpush.android.PushServiceStart11858'),(10,'com.airpush.android.PushServiceStart23917'),(2,'com.airpush.android.PushServiceStart48582'),(23,'com.android.launcher.action.INSTALL_SHORTCUT'),(12,'com.apperhand.amazon.appstore.free.app.of.the.day.RUN_NOW'),(11,'com.apperhand.amazon.appstore.free.app.of.the.day.SET_ALERT_TIME'),(22,'com.hyperkani.hyppely.flurry'),(3,'com.senddroid.AdServicecom.test.t000004'),(14,'com.xtify.android.sdk.IMainService'),(19,'com.xtify.android.sdk.NOTIFICATION_CLEARED'),(18,'com.xtify.android.sdk.NOTIFICATION_CLICKED'),(16,'com.xtify.android.sdk.SEND_SETTINGS'),(17,'com.xtify.android.sdk.SHOW_NOTIFICATION');
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
INSERT INTO `Applications` VALUES (1,'com.test.t000004',1),(2,'com.wimolife.wallpaper.fractalfree',30),(3,'com.apps.andromadhu.hauntedslider',2),(4,'com.apperhand.amazon.appstore.free.app.of.the.day',1),(5,'com.favasben.ijumpingmonkeyp',1),(6,'com.apostek.slotmachinevalentine',11),(7,'com.hyperkani.hyppely',25);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(6,'com.xtify.android.sdk.IMainService'),(5,'com.xtify.android.sdk.IMainService.V1050');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.test.t000004.SHMenu'),(2,1,'com.test.t000004.AboutAct'),(3,1,'com.test.t000004.SHActivity'),(4,1,'com.airpush.android.PushAds'),(5,1,'com.test.t000004.SHServ'),(6,1,'com.airpush.android.PushService'),(7,1,'com.apperhand.device.android.AndroidSDKProvider'),(8,1,'com.senddroid.AdService'),(9,1,'com.airpush.android.UserDetailsReceiver'),(10,1,'com.airpush.android.MessageReceiver'),(11,1,'com.airpush.android.DeliveryReceiver'),(12,1,'com.test.t000004.Boot1'),(13,1,'com.test.t000004.Boot2'),(14,2,'com.wimolife.wallpaper.fractalfree.Settings'),(15,2,'com.wimolife.wallpaper.fractalfree.VideoPlayer'),(16,2,'com.wimolife.wallpaper.fractalfree.LWActivity'),(17,2,'com.airpush.android.PushAds'),(18,2,'com.cyberbounty.adapplib.ADScreen'),(19,2,'com.sellaring.sdk.PostCallScreenActivity'),(20,2,'com.wimolife.wallpaper.fractalfree.FractalWallpaper'),(21,2,'com.airpush.android.PushService'),(22,2,'com.apperhand.device.android.AndroidSDKProvider'),(23,2,'com.airpush.android.UserDetailsReceiver'),(24,2,'com.airpush.android.MessageReceiver'),(25,2,'com.airpush.android.DeliveryReceiver'),(26,2,'com.wimolife.wallpaper.fractalfree.BootReceiver'),(27,2,'com.sellaring.sdk.AlarmReceiver'),(28,2,'com.sellaring.sdk.RestartAlarmServiceReceiver'),(29,2,'com.sellaring.sdk.PhoneStateReceiver'),(30,3,'com.apps.andromadhu.hauntedslider.LiveWallpaperTemplateSettings'),(31,3,'com.airpush.android.PushAds'),(32,3,'com.apperhand.device.android.AndroidSDKProvider'),(33,3,'com.apps.andromadhu.hauntedslider.LiveWallpaperTemplate'),(34,3,'com.airpush.android.PushService'),(35,3,'com.airpush.android.UserDetailsReceiver'),(36,3,'com.airpush.android.MessageReceiver'),(37,3,'com.airpush.android.DeliveryReceiver'),(38,3,'com.apps.andromadhu.hauntedslider.BootReceiver'),(39,4,'com.apperhand.amazon.appstore.free.app.of.the.day.SettingsActivity'),(40,4,'com.apperhand.amazon.appstore.free.app.of.the.day.SetAlertTimeActivity'),(41,4,'com.apperhand.amazon.appstore.free.app.of.the.day.RunNowActivity'),(42,4,'com.apperhand.amazon.appstore.free.app.of.the.day.StartAmazonAppActivity'),(43,4,'com.apperhand.device.android.AndroidSDKProvider'),(44,4,'com.apperhand.amazon.appstore.free.app.of.the.day.BootReceiver'),(45,4,'com.apperhand.amazon.appstore.free.app.of.the.day.TimesUpReceiver'),(46,5,'com.favasben.ijumpingmonkeyp.PontiflexWebviewSDKDemoActivity'),(47,5,'com.pontiflex.mobile.webview.sdk.activities.MultiOfferActivity'),(48,5,'com.pontiflex.mobile.webview.sdk.activities.RegistrationActivity'),(49,5,'com.favasben.ijumpingmonkeyp.Main'),(50,5,'com.favasben.ijumpingmonkeyp.Game'),(51,5,'com.google.ads.AdActivity'),(52,5,'com.apperhand.device.android.AndroidSDKProvider'),(53,6,'com.apostek.slotmachinevalentine.PlayGame'),(54,6,'com.apostek.slotmachinevalentine.CustomDialogActivity'),(55,6,'com.apostek.slotmachinevalentine.CustomDialogActivityHighScore'),(56,6,'com.apostek.slotmachinevalentine.CustomUserNameDialogActivity'),(57,6,'com.apostek.slotmachinevalentine.LeaderboardView'),(58,6,'com.apostek.slotmachinevalentine.Info'),(59,6,'com.apostek.slotmachinevalentine.ActivityOtherApps'),(60,6,'com.apostek.slotmachinevalentine.FingerPaint'),(61,6,'com.apostek.slotmachinevalentine.OffersActivity'),(62,6,'com.google.ads.AdActivity'),(63,6,'com.mobfox.sdk.InAppWebView'),(64,6,'com.mobclix.android.sdk.MobclixBrowserActivity'),(65,6,'com.millennialmedia.android.VideoPlayer'),(66,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(67,6,'com.mdotm.android.ads.MdotmLandingPage'),(68,6,'com.greystripe.android.sdk.AdView'),(69,6,'com.adyip.FullAdActivity'),(70,6,'com.apostek.slotmachinevalentine.shop'),(71,6,'com.apostek.slotmachinevalentine.ShareOnFacebook'),(72,6,'com.xtify.android.sdk.SettingsActivity'),(73,6,'com.xtify.android.sdk.NotificationDetailsActivity'),(74,6,'com.xtify.android.sdk.NotificationSettingsActivity'),(75,6,'com.apperhand.device.android.AndroidSDKProvider'),(76,6,'com.xtify.android.sdk.MainService'),(77,6,'com.xtify.android.sdk.MainReceiver'),(78,6,'com.apostek.slotmachinevalentine.XtifyBlocker'),(79,6,'com.greystripe.android.sdk.AdContentProvider'),(80,7,'com.hyperkani.hyppely.Hyppely'),(81,7,'com.papaya.social.SocialRegistrationActivity'),(82,7,'com.papaya.base.EntryActivity'),(83,7,'com.papaya.web.WebActivity'),(84,7,'com.papaya.web.ExternalWebActivity'),(85,7,'com.papaya.chat.FriendsActivity'),(86,7,'com.papaya.chat.ChatActivity'),(87,7,'com.papaya.utils.CountryCodeActivity'),(88,7,'com.flurry.android.CatalogActivity'),(89,7,'com.apperhand.device.android.AndroidSDKProvider'),(90,7,'com.papaya.social.PPYSocialContentProvider'),(91,4,'com.apperhand.device.android.dma.AndroidShortcutsDMA'),(92,4,'com.apperhand.device.android.dma.BaseBrowserAction'),(93,5,'com.pontiflex.mobile.webview.sdk.AdManager'),(94,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(95,5,'com.favasben.ijumpingmonkeyp.Game$2'),(96,5,'com.apperhand.device.android.a.d'),(97,5,'com.apperhand.device.android.a.a'),(98,5,'com.favasben.ijumpingmonkeyp.Main$2'),(99,5,'com.favasben.ijumpingmonkeyp.Game$2$2'),(100,5,'com.favasben.ijumpingmonkeyp.Game$2$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,43,'M_SERVER_URL'),(2,45,'addAlarm'),(3,43,'DEVELOPER_ID'),(4,43,'USER_AGENT'),(5,42,'asin'),(6,43,'APPLICATION_ID'),(7,43,'FIRST_RUN'),(8,52,'SERVICE_MODE'),(9,52,'permanent'),(10,52,'FIRST_RUN'),(11,51,'params'),(12,52,'DEVELOPER_ID'),(13,51,'com.google.ads.AdOpener'),(14,52,'M_SERVER_URL'),(15,52,'APPLICATION_ID'),(16,51,'action'),(17,52,'USER_AGENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'s',1,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'r',0,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'r',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',1,34,NULL),(21,21,'s',1,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'r',0,NULL,NULL),(24,24,'r',0,NULL,NULL),(25,25,'r',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'s',1,34,NULL),(34,34,'s',1,NULL,NULL),(35,35,'r',0,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'r',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'r',0,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'s',1,NULL,NULL),(77,77,'r',1,NULL,NULL),(78,78,'r',1,NULL,NULL),(79,79,'p',0,NULL,NULL),(80,80,'a',1,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',1,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'p',0,NULL,NULL),(91,94,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,43),(2,2,43),(3,3,43),(4,4,39),(5,5,42),(6,6,43),(7,7,49),(8,8,46),(9,9,46),(10,10,51),(11,11,50),(12,11,51),(13,11,49),(14,12,52),(15,13,52),(16,14,52),(17,15,51),(18,15,50),(19,15,49),(20,16,51),(21,16,50),(22,16,49),(23,17,49),(24,18,52),(25,19,46),(26,20,50),(27,20,49),(28,20,51),(29,21,52),(30,22,49),(31,22,50),(32,22,51),(33,23,46),(34,24,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,91,'<com.apperhand.device.android.dma.AndroidShortcutsDMA: java.util.List openCursors()>',14,'p',NULL),(2,91,'<com.apperhand.device.android.dma.AndroidShortcutsDMA: void addShortcut(com.apperhand.common.dto.Shortcut)>',7,'r',NULL),(3,92,'<com.apperhand.device.android.dma.BaseBrowserAction: boolean deleteBrowserItem(android.content.ContentResolver,android.net.Uri,long)>',7,'p',NULL),(4,43,'<com.apperhand.device.android.AndroidSDKProvider: void initSDK(android.content.Context,java.lang.String,java.lang.String)>',18,'s',NULL),(5,42,'<com.apperhand.amazon.appstore.free.app.of.the.day.StartAmazonAppActivity: void onCreate(android.os.Bundle)>',12,'a',NULL),(6,92,'<com.apperhand.device.android.dma.BaseBrowserAction: long createBrowserItem(android.content.ContentResolver,com.apperhand.common.dto.BaseBrowserItem,android.net.Uri,java.lang.String)>',22,'p',NULL),(7,49,'<com.favasben.ijumpingmonkeyp.Main: void onCreate(android.os.Bundle)>',123,'a',NULL),(8,93,'<com.pontiflex.mobile.webview.sdk.AdManager: void startRegistrationActivity(android.app.Activity)>',24,'a',NULL),(9,46,'<com.favasben.ijumpingmonkeyp.PontiflexWebviewSDKDemoActivity: void onResume()>',25,'a',NULL),(10,51,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(11,95,'<com.favasben.ijumpingmonkeyp.Game$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',49,'a',NULL),(12,96,'<com.apperhand.device.android.a.d: java.util.List b(java.util.List)>',16,'p',NULL),(13,97,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(14,96,'<com.apperhand.device.android.a.d: java.util.List b(java.util.List)>',27,'p',NULL),(15,98,'<com.favasben.ijumpingmonkeyp.Main$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',20,'a',NULL),(16,95,'<com.favasben.ijumpingmonkeyp.Game$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',31,'a',NULL),(17,52,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(18,96,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(19,46,'<com.favasben.ijumpingmonkeyp.PontiflexWebviewSDKDemoActivity: void onResume()>',15,'a',NULL),(20,99,'<com.favasben.ijumpingmonkeyp.Game$2$2: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(21,97,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(22,100,'<com.favasben.ijumpingmonkeyp.Game$2$1: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(23,93,'<com.pontiflex.mobile.webview.sdk.AdManager: void startMultiOfferActivity(android.app.Activity)>',25,'a',NULL),(24,97,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,23),(2,3,1),(3,7,5),(4,8,26),(5,9,26),(6,15,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/apperhand/device/android/AndroidSDKProvider'),(2,3,'(.*)'),(3,4,'com/favasben/ijumpingmonkeyp/Game'),(4,5,'com/pontiflex/mobile/webview/sdk/activities/RegistrationActivity'),(5,6,'com/favasben/ijumpingmonkeyp/Main'),(6,10,'com/favasben/ijumpingmonkeyp/Game'),(7,11,'com/favasben/ijumpingmonkeyp/Game'),(8,12,'com/favasben/ijumpingmonkeyp/Main'),(9,13,'com/apperhand/device/android/AndroidSDKProvider'),(10,14,'com/apperhand/device/android/AndroidSDKProvider'),(11,16,'com/favasben/ijumpingmonkeyp/Main'),(12,17,'com/favasben/ijumpingmonkeyp/Main'),(13,18,'com/favasben/ijumpingmonkeyp/PontiflexWebviewSDKDemoActivity'),(14,19,'com/pontiflex/mobile/webview/sdk/activities/MultiOfferActivity');
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
INSERT INTO `IData` VALUES (1,7,4),(2,8,5),(3,9,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.shortcut.NAME'),(2,1,'android.intent.extra.shortcut.ICON'),(3,1,'android.intent.extra.shortcut.INTENT'),(4,2,'USER_AGENT'),(5,2,'M_SERVER_URL'),(6,2,'DEVELOPER_ID'),(7,2,'FIRST_RUN'),(8,2,'APPLICATION_ID'),(9,3,'asin'),(10,13,'M_SERVER_URL'),(11,13,'USER_AGENT'),(12,13,'SERVICE_MODE'),(13,13,'FIRST_RUN'),(14,13,'DEVELOPER_ID'),(15,13,'APPLICATION_ID'),(16,14,'M_SERVER_URL'),(17,14,'USER_AGENT'),(18,14,'SERVICE_MODE'),(19,14,'FIRST_RUN'),(20,14,'DEVELOPER_ID'),(21,14,'(.*)'),(22,14,'APPLICATION_ID'),(23,15,'android.intent.extra.shortcut.NAME'),(24,15,'android.intent.extra.shortcut.ICON'),(25,15,'android.intent.extra.shortcut.INTENT'),(26,19,'offerCount');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,4),(6,6,5),(7,7,1),(8,8,6),(9,9,7),(10,10,4),(11,11,4),(12,12,8),(13,12,9),(14,13,6),(15,14,10),(16,15,4),(17,16,1),(18,17,11),(19,18,12),(20,19,4),(21,20,1),(22,21,13),(23,21,1),(24,23,14),(25,24,4),(26,24,15),(27,24,16),(28,25,17),(29,25,18),(30,25,19),(31,26,20),(32,26,21),(33,27,17),(34,28,1),(35,29,22),(36,30,24),(37,30,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,2),(3,5,2),(4,6,3),(5,7,1),(6,10,2),(7,15,2),(8,16,1),(9,17,3),(10,18,3),(11,20,1),(12,21,1),(13,22,4),(14,23,6),(15,23,5),(16,28,1),(17,29,3);
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
INSERT INTO `IFData` VALUES (1,25,'notif','notification.xtify.com',NULL,'/80e94987-39a8-4b56-8018-5c62c31373e3(.*)',NULL,NULL),(2,26,'package',NULL,NULL,NULL,NULL,NULL),(3,27,'notif','notification.xtify.com',NULL,'/80e94987-39a8-4b56-8018-5c62c31373e3(.*)',NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,8,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.apperhand.amazon.appstore.free.app.of.the.day'),(2,3,'(.*)'),(3,4,'com.favasben.ijumpingmonkeyp'),(4,5,'com.favasben.ijumpingmonkeyp'),(5,6,'com.favasben.ijumpingmonkeyp'),(6,10,'com.favasben.ijumpingmonkeyp'),(7,11,'com.favasben.ijumpingmonkeyp'),(8,12,'com.favasben.ijumpingmonkeyp'),(9,13,'com.favasben.ijumpingmonkeyp'),(10,14,'com.favasben.ijumpingmonkeyp'),(11,16,'com.favasben.ijumpingmonkeyp'),(12,17,'com.favasben.ijumpingmonkeyp'),(13,18,'com.favasben.ijumpingmonkeyp'),(14,19,'com.favasben.ijumpingmonkeyp');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,8,0),(4,12,0),(5,13,0),(6,15,0),(7,16,0),(8,20,0),(9,21,0),(10,26,0),(11,28,0),(12,29,0),(13,33,0),(14,34,0),(15,38,0),(16,39,0),(17,40,0),(18,41,0),(19,44,0),(20,46,0),(21,53,0),(22,67,0),(23,76,0),(24,77,0),(25,77,0),(26,77,0),(27,78,0),(28,80,0),(29,88,0),(30,91,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,1,0),(2,4,0,0),(3,5,0,0),(4,7,0,0),(5,8,0,0),(6,9,0,0),(7,10,1,0),(8,10,1,0),(9,10,1,0),(10,11,0,0),(11,15,0,0),(12,16,0,0),(13,17,0,0),(14,17,0,0),(15,18,1,0),(16,19,0,0),(17,20,0,0),(18,22,0,0),(19,23,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.apostek.slotmachinevalentine'),(2,2,'com.hyperkani.hyppely.ppy_cache');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(19,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(34,'android.permission.BIND_WALLPAPER'),(9,'android.permission.CALL_PHONE'),(20,'android.permission.FLASHLIGHT'),(10,'android.permission.GET_ACCOUNTS'),(3,'android.permission.GET_TASKS'),(22,'android.permission.INSTALL_PACKAGES'),(25,'android.permission.INTERNET'),(12,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(32,'android.permission.PROCESS_OUTGOING_CALLS'),(11,'android.permission.READ_PHONE_STATE'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(2,'android.permission.SET_WALLPAPER'),(33,'android.permission.SET_WALLPAPER_HINTS'),(28,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(31,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(15,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(21,'com.android.launcher.permission.INSTALL_SHORTCUT'),(29,'com.android.launcher.permission.READ_SETTINGS'),(24,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(26,'com.fede.launcher.permission.READ_SETTINGS'),(23,'com.htc.launcher.permission.READ_SETTINGS'),(1,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(14,'com.lge.launcher.permission.READ_SETTINGS'),(5,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(6,'com.motorola.dlauncher.permission.READ_SETTINGS'),(17,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(30,'com.motorola.launcher.permission.READ_SETTINGS'),(27,'org.adw.launcher.permission.READ_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,79,0,NULL,NULL),(2,90,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,3,2),(3,6,3),(4,12,7),(5,13,8),(6,14,9),(7,21,10),(8,24,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,23),(23,1,22),(24,1,25),(25,1,24),(26,1,27),(27,1,26),(28,1,29),(29,1,28),(30,1,31),(31,1,30),(32,2,1),(33,2,2),(34,2,4),(35,2,5),(36,2,6),(37,2,7),(38,2,8),(39,2,9),(40,2,10),(41,2,11),(42,2,13),(43,2,14),(44,2,15),(45,2,17),(46,2,16),(47,2,19),(48,2,21),(49,2,23),(50,2,25),(51,2,24),(52,2,27),(53,2,26),(54,2,29),(55,2,31),(56,2,30),(57,2,32),(58,2,33),(59,3,4),(60,3,6),(61,3,7),(62,3,8),(63,3,11),(64,3,13),(65,3,14),(66,3,15),(67,3,16),(68,3,19),(69,3,18),(70,3,21),(71,3,20),(72,3,23),(73,3,25),(74,3,24),(75,3,29),(76,3,28),(77,3,31),(78,3,30),(79,4,6),(80,4,7),(81,4,11),(82,4,13),(83,4,14),(84,4,15),(85,4,21),(86,4,23),(87,4,25),(88,4,24),(89,4,26),(90,4,29),(91,4,28),(92,4,31),(93,4,30),(94,5,1),(95,5,5),(96,5,6),(97,5,7),(98,5,10),(99,5,11),(100,5,14),(101,5,15),(102,5,17),(103,5,19),(104,5,21),(105,5,23),(106,5,25),(107,5,24),(108,5,27),(109,5,26),(110,5,29),(111,5,31),(112,5,30),(113,6,1),(114,6,3),(115,6,4),(116,6,5),(117,6,6),(118,6,7),(119,6,8),(120,6,11),(121,6,14),(122,6,15),(123,6,17),(124,6,16),(125,6,19),(126,6,21),(127,6,23),(128,6,25),(129,6,24),(130,6,29),(131,6,28),(132,6,31),(133,6,30),(134,7,1),(135,7,5),(136,7,6),(137,7,7),(138,7,11),(139,7,14),(140,7,15),(141,7,17),(142,7,19),(143,7,18),(144,7,21),(145,7,23),(146,7,25),(147,7,24),(148,7,27),(149,7,26),(150,7,29),(151,7,31),(152,7,30);
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

-- Dump completed on 2015-10-09  0:40:34
