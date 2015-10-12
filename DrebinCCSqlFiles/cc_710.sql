-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_710
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (26,'(.*)'),(27,'NULL-CONSTANT'),(13,'android.appwidget.action.APPWIDGET_CONFIGURE'),(20,'android.appwidget.action.APPWIDGET_UPDATE'),(6,'android.intent.action.BOOT_COMPLETED'),(2,'android.intent.action.CREATIOSOFTCUBE'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.MEDIA_EJECT'),(11,'android.intent.action.MEDIA_MOUNTED'),(25,'android.intent.action.VIEW'),(10,'android.net.conn.CONNECTIVITY_CHANGE'),(7,'android.service.wallpaper.WallpaperService'),(18,'com.airpush.android.PushServiceStart16424'),(17,'com.airpush.android.PushServiceStart27767'),(16,'com.airpush.android.PushServiceStart31806'),(4,'com.airpush.android.PushServiceStart43937'),(12,'com.airpush.android.PushServiceStart52905'),(23,'com.android.launcher.action.INSTALL_SHORTCUT'),(15,'com.android.vending.INSTALL_REFERRER'),(24,'com.apperhand.action.show.eula'),(28,'com.flurry.android.ACTION_CATALOG'),(21,'com.google.android.c2dm.intent.RECEIVE'),(19,'com.google.android.c2dm.intent.REGISTRATION'),(5,'com.inoxpush.adnetwork.PushServiceStart10001'),(3,'com.jiubang.goscreenlock.theme'),(22,'com.ptowngames.puzzles.camels.(.*)'),(14,'com.senddroid.AdServicenet.akaish.videolw.water4'),(8,'net.akaish.art.rem.services.ARTCommonTasksService');
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
INSERT INTO `Applications` VALUES (1,'com.ss.go.locker.theme.launcher.ex.sky',5),(2,'com.creatiosoft.rubicscube',3),(3,'com.Madjad.JigSaw.Lions',19),(4,'net.akaish.videolw.water4',13),(5,'org.tonee.fly.widgets.free',11),(6,'com.ptowngames.puzzles.camels',3),(7,'com.redmicapps.puzzles.ladies3',2);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(5,'android.intent.category.HOME'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.SAMPLE_CODE'),(6,'com.ss.go.locker.theme.launcher.ex.sky');
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,2,'com.creatiosoft.rubicscube.RSplashActivity'),(2,2,'com.creatiosoft.rubicscube.RCubeActivity'),(3,2,'com.creatiosoft.rubicscube.Menu_Screen'),(4,1,'com.ss.go.locker.theme.launcher.ex.sky.GOLockerInstallDialog'),(5,3,'com.Madjad.JigSaw.Lions.JigsawPuzzle'),(6,2,'com.creatiosoft.rubicscube.ResultActivity'),(7,4,'net.akaish.videolw.water4.WelcomeScreen'),(8,2,'com.airpush.android.PushAds'),(9,3,'com.Madjad.JigSaw.Lions.GameView'),(10,2,'com.airpush.android.PushService'),(11,5,'org.tonee.fly.widgets.free.AcHelp'),(12,4,'net.akaish.videolw.water4.AboutUs'),(13,4,'net.akaish.art.ui.WebClientActivity'),(14,1,'com.airpush.android.PushAds'),(15,2,'com.airpush.android.UserDetailsReceiver'),(16,5,'org.tonee.fly.widgets.free.AcFullVersion'),(17,4,'net.akaish.art.oups.OupsGDialogMain'),(18,3,'com.google.ads.AdActivity'),(19,1,'com.inox.referrer.SendDataService'),(20,2,'com.airpush.android.MessageReceiver'),(21,4,'net.akaish.art.ui.GDialogWebIntent'),(22,5,'org.tonee.fly.widgets.free.AcMyAppsFragment'),(23,3,'com.Madjad.JigSaw.Lions.SettingsList'),(24,1,'com.inoxpush.downloadticker.DownloadTickerService'),(25,4,'net.akaish.videolw.water4.AdvertSettings'),(26,2,'com.airpush.android.DeliveryReceiver'),(27,5,'org.tonee.fly.widgets.free.AcApplicationsList'),(28,1,'com.inoxpush.adnetwork.PushAdService'),(29,2,'com.creatiosoft.rubicscube.BReceiver'),(30,4,'com.google.ads.AdActivity'),(31,5,'org.tonee.fly.widgets.free.AcApplicationsLoader'),(32,3,'com.Madjad.JigSaw.Lions.GalleryLevel'),(33,4,'com.airpush.android.PushAds'),(34,5,'org.tonee.fly.widgets.free.AcExitMessage'),(35,3,'com.Madjad.JigSaw.Lions.ProVersion'),(36,4,'net.akaish.videolw.water4.VideoWallpaperService'),(37,5,'org.tonee.fly.widgets.free.AcNoAdsMessage'),(38,1,'com.ss.go.locker.theme.launcher.ex.sky.C2DMService'),(39,5,'org.tonee.fly.widgets.free.AcRateMeWith5Stars'),(40,1,'com.ss.go.locker.theme.launcher.ex.sky.GoDownloadServiceervice'),(41,5,'org.tonee.fly.widgets.free.AcNewspaper'),(42,3,'com.airpush.android.PushAds'),(43,1,'com.moolah.NotificationService'),(44,2,'com.Leadbolt.AdNotification'),(45,4,'net.akaish.art.rem.services.ARTCommonTasksService'),(46,5,'org.tonee.fly.widgets.free.AcAbout'),(47,3,'com.Madjad.JigSaw.Lions.DownloadService'),(48,1,'com.airpush.android.PushService'),(49,5,'org.tonee.fly.widgets.free.AcConfigure1x2'),(50,4,'com.senddroid.AdService'),(51,3,'com.apperhand.device.android.AndroidSDKProvider'),(52,1,'com.apperhand.device.android.AndroidSDKProvider'),(53,5,'org.tonee.fly.widgets.free.AcConfigure1x3'),(54,1,'com.inox.referrer.Receiver'),(55,3,'com.airpush.android.PushService'),(56,4,'com.airpush.android.PushService'),(57,5,'com.airpush.android.PushAds'),(58,3,'com.airpush.android.UserDetailsReceiver'),(59,1,'com.inoxpush.adnetwork.DeviceDetailsReceiver'),(60,5,'com.apperhand.device.android.AndroidSDKProvider'),(61,1,'com.inoxpush.adnetwork.AdMessageReceiver'),(62,3,'com.airpush.android.MessageReceiver'),(63,4,'com.apperhand.device.android.AndroidSDKProvider'),(64,5,'com.airpush.android.PushService'),(65,1,'com.inoxpush.adnetwork.ClickAdReceiver'),(66,3,'com.airpush.android.DeliveryReceiver'),(67,4,'com.Leadbolt.AdNotification'),(68,3,'com.Madjad.JigSaw.Lions.BootReceiver'),(69,1,'com.ss.go.locker.theme.launcher.ex.sky.C2DMRegistrationReceiver'),(70,4,'net.akaish.art.rem.services.ARTBroadcastReciever'),(71,5,'org.tonee.fly.widgets.free.Widget1x2'),(72,4,'com.airpush.android.UserDetailsReceiver'),(73,4,'com.airpush.android.MessageReceiver'),(74,4,'com.airpush.android.DeliveryReceiver'),(75,5,'org.tonee.fly.widgets.free.Widget1x3'),(76,1,'com.ss.go.locker.theme.launcher.ex.sky.C2DMMessageReceiver'),(77,4,'net.akaish.videolw.water4.BootReceiver'),(78,5,'com.airpush.android.UserDetailsReceiver'),(79,5,'com.airpush.android.MessageReceiver'),(80,1,'com.moolah.MessageReceiver'),(81,5,'com.airpush.android.DeliveryReceiver'),(82,1,'com.moolah.BootReceiver'),(83,5,'org.tonee.fly.widgets.free.airpush.BootReceiver'),(84,1,'com.airpush.android.UserDetailsReceiver'),(85,1,'com.airpush.android.MessageReceiver'),(86,1,'com.airpush.android.DeliveryReceiver'),(87,1,'com.ss.go.locker.theme.launcher.ex.sky.BootReceiver'),(88,1,'com.Leadbolt.AdNotification'),(89,6,'com.ptowngames.puzzles.camels.Game'),(90,6,'com.google.ads.AdActivity'),(91,6,'com.apperhand.device.android.EULAActivity'),(92,6,'com.zooz.android.lib.CheckoutActivity'),(93,6,'com.paypal.android.MEP.PayPalActivity'),(94,6,'com.apperhand.device.android.AndroidSDKProvider'),(95,7,'com.redmicapps.puzzles.ladies3.Game'),(96,7,'com.google.ads.AdActivity'),(97,7,'com.apperhand.device.android.AndroidSDKProvider'),(98,6,'net.robotmedia.billing.BillingService'),(99,6,'com.apperhand.device.android.a.e'),(100,6,'com.apperhand.device.android.a.b'),(101,6,'com.apperhand.device.android.a.c'),(102,6,'com.flurry.android.ao'),(103,7,'com.apperhand.device.android.a.a'),(104,7,'com.flurry.android.ab'),(105,7,'com.apperhand.device.android.a.g');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,94,'DEVELOPER_ID'),(2,94,'SERVICE_MODE'),(3,90,'com.google.ads.AdOpener'),(4,90,'com.google.circles.platform.result.extra.CONFIRMATION'),(5,94,'FIRST_RUN'),(6,94,'M_SERVER_URL'),(7,94,'USER_AGENT'),(8,94,'eulaAcceptDetails'),(9,90,'com.google.circles.platform.result.extra.ACTION'),(10,90,'action'),(11,90,'params'),(12,94,'APPLICATION_ID'),(13,96,'com.google.circles.platform.result.extra.CONFIRMATION'),(14,97,'APPLICATION_ID'),(15,96,'com.google.ads.AdOpener'),(16,97,'DEVELOPER_ID'),(17,97,'USER_AGENT'),(18,96,'params'),(19,97,'FIRST_RUN'),(20,97,'SERVICE_MODE'),(21,96,'com.google.circles.platform.result.extra.ACTION'),(22,97,'M_SERVER_URL'),(23,96,'action'),(24,97,'permanent');
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,5,'a',1,NULL,NULL),(5,4,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'s',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'r',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'r',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,26,'r',0,NULL,NULL),(26,25,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,37,'a',0,NULL,NULL),(37,38,'s',0,NULL,NULL),(38,36,'s',1,32,NULL),(39,39,'a',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'r',0,NULL,NULL),(45,45,'s',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',1,NULL,NULL),(48,48,'s',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'s',1,NULL,NULL),(51,52,'s',0,NULL,NULL),(52,51,'s',0,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'s',1,NULL,NULL),(56,56,'s',1,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,59,'r',0,NULL,NULL),(59,58,'r',0,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,62,'r',0,NULL,NULL),(62,61,'r',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'s',1,NULL,NULL),(65,65,'r',0,NULL,NULL),(66,66,'r',0,NULL,NULL),(67,67,'r',0,NULL,NULL),(68,68,'r',1,NULL,NULL),(69,70,'r',0,NULL,NULL),(70,69,'r',1,33,NULL),(71,71,'r',1,NULL,NULL),(72,72,'r',0,NULL,NULL),(73,73,'r',0,NULL,NULL),(74,74,'r',0,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,76,'r',1,33,NULL),(77,77,'r',1,NULL,NULL),(78,78,'r',0,NULL,NULL),(79,79,'r',0,NULL,NULL),(80,80,'r',0,NULL,NULL),(81,81,'r',0,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,83,'r',1,NULL,NULL),(84,84,'r',0,NULL,NULL),(85,85,'r',0,NULL,NULL),(86,86,'r',0,NULL,NULL),(87,87,'r',1,NULL,NULL),(88,88,'r',0,NULL,NULL),(89,89,'a',1,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'s',0,NULL,NULL),(95,95,'a',1,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'s',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,89),(2,2,90),(3,3,94),(4,4,94),(5,5,94),(6,6,94),(7,7,89),(8,8,94),(9,9,89),(10,10,90),(11,11,94),(12,12,89),(13,13,94),(14,14,90),(15,15,96),(16,16,97),(17,17,96),(18,18,95),(19,19,97),(20,20,96),(21,21,97),(22,22,97),(23,23,97),(24,24,97);
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
INSERT INTO `ExitPoints` VALUES (1,98,'<net.robotmedia.billing.BillingService: void a(android.content.Context)>',3,'s',NULL),(2,90,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(3,99,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(4,99,'<com.apperhand.device.android.a.e: void a(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(5,99,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(6,100,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(7,98,'<net.robotmedia.billing.BillingService: void a(android.content.Context,long)>',6,'s',NULL),(8,101,'<com.apperhand.device.android.a.c: void a(java.lang.String,java.lang.String)>',13,'r',NULL),(9,94,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,boolean)>',64,'a',NULL),(10,90,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(11,100,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(12,94,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',32,'s',NULL),(13,100,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',19,'p',NULL),(14,102,'<com.flurry.android.ao: void b(android.content.Context,com.flurry.android.aj,java.lang.String)>',12,'a',NULL),(15,96,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(16,103,'<com.apperhand.device.android.a.a: void a(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(17,104,'<com.flurry.android.ab: void onClick(android.view.View)>',38,'a',NULL),(18,97,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(19,105,'<com.apperhand.device.android.a.g: java.util.List a()>',13,'p',NULL),(20,96,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(21,105,'<com.apperhand.device.android.a.g: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(22,105,'<com.apperhand.device.android.a.g: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(23,103,'<com.apperhand.device.android.a.a: android.database.Cursor a(com.apperhand.device.android.a.a$a)>',10,'p',NULL),(24,103,'<com.apperhand.device.android.a.a: android.database.Cursor a(com.apperhand.device.android.a.a$a)>',24,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,22),(2,3,23),(3,4,22),(4,5,24),(5,6,24),(6,9,25),(7,10,26),(8,11,26),(9,12,25),(10,15,27),(11,16,27),(12,17,28),(13,18,28),(14,20,23),(15,21,27),(16,22,27),(17,23,28),(18,24,28),(19,27,25),(20,28,26),(21,29,26),(22,30,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,1),(2,15,2),(3,16,2),(4,17,2),(5,18,2),(6,19,1),(7,21,2),(8,22,2),(9,23,2),(10,24,2);
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
INSERT INTO `IClasses` VALUES (1,1,'net/robotmedia/billing/BillingService'),(2,2,'com.google.android.apps.circles.platform.PlusOneActivity'),(3,4,'net/robotmedia/billing/BillingService'),(4,7,'com/apperhand/device/android/EULAActivity'),(5,8,'com/apperhand/device/android/EULAActivity'),(6,13,'com/apperhand/device/android/AndroidSDKProvider'),(7,14,'com/apperhand/device/android/AndroidSDKProvider'),(8,19,'com.google.android.apps.circles.platform.PlusOneActivity'),(9,25,'com/apperhand/device/android/AndroidSDKProvider'),(10,26,'com/apperhand/device/android/AndroidSDKProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,9,5),(2,10,6),(3,11,7),(4,12,8),(5,27,12),(6,28,13),(7,29,14),(8,30,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'com.google.circles.platform.intent.extra.ACTION'),(2,2,'(.*)'),(3,2,'com.google.circles.platform.intent.extra.ENTITY'),(4,2,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(5,3,'android.intent.extra.shortcut.NAME'),(6,3,'android.intent.extra.shortcut.ICON'),(7,3,'android.intent.extra.shortcut.INTENT'),(8,4,'EXTRA_NONCE'),(9,6,'footerHTML'),(10,6,'bodyHTML'),(11,13,'M_SERVER_URL'),(12,13,'USER_AGENT'),(13,13,'SERVICE_MODE'),(14,13,'FIRST_RUN'),(15,13,'DEVELOPER_ID'),(16,13,'APPLICATION_ID'),(17,14,'eulaAcceptDetails'),(18,14,'M_SERVER_URL'),(19,14,'USER_AGENT'),(20,14,'SERVICE_MODE'),(21,14,'FIRST_RUN'),(22,14,'DEVELOPER_ID'),(23,14,'APPLICATION_ID'),(24,15,'u'),(25,15,'o'),(26,16,'u'),(27,17,'u'),(28,18,'u'),(29,18,'o'),(30,19,'com.google.circles.platform.intent.extra.ACTION'),(31,19,'(.*)'),(32,19,'com.google.circles.platform.intent.extra.ENTITY'),(33,19,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(34,20,'android.intent.extra.shortcut.NAME'),(35,20,'android.intent.extra.shortcut.ICON'),(36,20,'android.intent.extra.shortcut.INTENT'),(37,21,'u'),(38,21,'o'),(39,22,'u'),(40,23,'u'),(41,24,'u'),(42,24,'o'),(43,25,'M_SERVER_URL'),(44,25,'USER_AGENT'),(45,25,'SERVICE_MODE'),(46,25,'FIRST_RUN'),(47,25,'DEVELOPER_ID'),(48,25,'APPLICATION_ID'),(49,26,'M_SERVER_URL'),(50,26,'USER_AGENT'),(51,26,'SERVICE_MODE'),(52,26,'FIRST_RUN'),(53,26,'DEVELOPER_ID'),(54,26,'(.*)'),(55,26,'APPLICATION_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,1),(6,6,3),(7,7,1),(8,8,1),(9,9,4),(10,10,1),(11,11,5),(12,12,6),(13,13,1),(14,14,6),(15,15,7),(16,16,8),(17,17,12),(18,18,9),(19,18,10),(20,18,11),(21,19,13),(22,20,14),(23,21,13),(24,23,15),(25,22,16),(26,24,17),(27,25,18),(28,26,6),(29,27,20),(30,28,19),(31,29,20),(32,30,6),(33,31,21),(34,32,6),(35,33,6),(36,34,6),(37,35,1),(38,36,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,5,1),(6,6,3),(7,7,1),(8,8,4),(9,10,4),(10,12,5),(11,13,4),(12,26,5),(13,28,6),(14,30,5),(15,31,6),(16,32,5),(17,33,5),(18,34,5),(19,35,1),(20,36,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,10,'(.*)','(.*)'),(2,12,'(.*)','(.*)'),(3,28,'(.*)','(.*)'),(4,30,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.ptowngames.puzzles.camels'),(2,2,'com.google.android.apps.plus'),(3,4,'com.ptowngames.puzzles.camels'),(4,5,'com.ptowngames.puzzles.camels'),(5,6,'com.ptowngames.puzzles.camels'),(6,7,'com.ptowngames.puzzles.camels'),(7,8,'com.ptowngames.puzzles.camels'),(8,13,'com.ptowngames.puzzles.camels'),(9,14,'com.ptowngames.puzzles.camels'),(10,19,'com.google.android.apps.plus'),(11,25,'com.redmicapps.puzzles.ladies3'),(12,26,'com.redmicapps.puzzles.ladies3');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,5,0),(5,7,0),(6,5,0),(7,11,0),(8,9,0),(9,10,0),(10,23,0),(11,28,0),(12,29,0),(13,35,0),(14,29,0),(15,38,0),(16,45,0),(17,48,0),(18,47,0),(19,49,0),(20,50,0),(21,53,0),(22,55,0),(23,54,0),(24,56,0),(25,64,0),(26,68,0),(27,71,0),(28,70,0),(29,75,0),(30,77,0),(31,76,0),(32,82,0),(33,83,0),(34,87,0),(35,89,0),(36,95,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,4,1,0),(4,7,0,0),(5,8,1,0),(6,8,1,0),(7,9,0,0),(8,9,0,0),(9,10,1,0),(10,10,1,0),(11,10,1,0),(12,10,1,0),(13,12,0,0),(14,12,0,0),(15,14,1,0),(16,14,1,0),(17,14,1,0),(18,14,1,0),(19,15,0,0),(20,16,1,0),(21,17,1,0),(22,17,1,0),(23,17,1,0),(24,17,1,0),(25,18,0,0),(26,18,0,0),(27,20,1,0),(28,20,1,0),(29,20,1,0),(30,20,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(31,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(17,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(32,'android.permission.BIND_WALLPAPER'),(8,'android.permission.CALL_PHONE'),(9,'android.permission.GET_ACCOUNTS'),(22,'android.permission.INTERNET'),(10,'android.permission.READ_CONTACTS'),(11,'android.permission.READ_PHONE_STATE'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(29,'android.permission.SET_WALLPAPER'),(25,'android.permission.VIBRATE'),(30,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(28,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(14,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(18,'com.android.launcher.permission.INSTALL_SHORTCUT'),(26,'com.android.launcher.permission.READ_SETTINGS'),(20,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(23,'com.fede.launcher.permission.READ_SETTINGS'),(21,'com.google.android.c2dm.permission.RECEIVE'),(33,'com.google.android.c2dm.permission.SEND'),(19,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(13,'com.lge.launcher.permission.READ_SETTINGS'),(4,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(5,'com.motorola.dlauncher.permission.READ_SETTINGS'),(16,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(27,'com.motorola.launcher.permission.READ_SETTINGS'),(1,'com.ss.go.locker.theme.launcher.ex.sky.permission.C2D_MESSAGE'),(24,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (1,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(2,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(3,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(11,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(17,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(18,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(19,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(20,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,3,1),(2,3,2),(3,5,3),(4,6,4),(5,11,9),(6,13,10),(7,19,11),(8,21,16),(9,22,17),(10,23,18),(11,23,19),(12,24,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,3),(3,1,2),(4,2,6),(5,1,3),(6,2,7),(7,1,4),(8,2,11),(9,1,5),(10,2,12),(11,3,2),(12,1,6),(13,4,2),(14,2,14),(15,3,3),(16,1,7),(17,2,15),(18,4,3),(19,3,4),(20,1,8),(21,2,17),(22,4,4),(23,3,5),(24,1,9),(25,2,18),(26,4,5),(27,1,10),(28,3,6),(29,4,6),(30,2,20),(31,1,11),(32,3,7),(33,2,22),(34,4,7),(35,1,12),(36,3,11),(37,2,25),(38,4,11),(39,3,12),(40,1,13),(41,4,12),(42,2,26),(43,1,14),(44,3,13),(45,4,13),(46,2,28),(47,1,15),(48,3,14),(49,4,14),(50,1,17),(51,3,15),(52,4,15),(53,1,16),(54,3,17),(55,4,17),(56,1,19),(57,3,16),(58,4,16),(59,5,2),(60,3,19),(61,1,18),(62,4,19),(63,5,4),(64,3,18),(65,1,21),(66,4,18),(67,5,5),(68,3,20),(69,1,20),(70,4,20),(71,5,6),(72,3,23),(73,1,23),(74,4,23),(75,5,11),(76,3,22),(77,1,22),(78,4,22),(79,5,12),(80,3,25),(81,1,25),(82,4,25),(83,5,13),(84,3,24),(85,1,24),(86,5,14),(87,4,24),(88,3,27),(89,1,27),(90,4,27),(91,5,17),(92,3,26),(93,1,26),(94,4,26),(95,5,16),(96,3,29),(97,1,28),(98,4,28),(99,5,19),(100,3,28),(101,4,31),(102,5,18),(103,4,30),(104,5,20),(105,5,22),(106,5,27),(107,5,26),(108,5,28),(109,6,2),(110,6,3),(111,6,4),(112,6,5),(113,6,6),(114,6,11),(115,6,13),(116,6,14),(117,6,17),(118,6,16),(119,6,19),(120,6,18),(121,6,20),(122,6,23),(123,6,22),(124,6,25),(125,6,24),(126,6,27),(127,6,26),(128,6,28),(129,7,2),(130,7,3),(131,7,4),(132,7,5),(133,7,6),(134,7,11),(135,7,13),(136,7,14),(137,7,17),(138,7,16),(139,7,19),(140,7,18),(141,7,20),(142,7,23),(143,7,22),(144,7,24),(145,7,27),(146,7,26),(147,7,28);
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

-- Dump completed on 2015-10-09  0:40:55
