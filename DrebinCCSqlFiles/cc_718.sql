-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_718
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (14,'(.*)'),(6,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.CAMERA_BUTTON'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.VIEW'),(8,'android.service.wallpaper.WallpaperService'),(4,'com.airpush.android.PushServiceStart28411'),(3,'com.airpush.android.PushServiceStart51886'),(9,'com.airpush.android.PushServiceStart57431'),(13,'com.android.launcher.action.INSTALL_SHORTCUT'),(11,'com.android.vending.INSTALL_REFERRER'),(16,'com.android.vending.billing.IN_APP_NOTIFY'),(17,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(18,'com.android.vending.billing.RESPONSE_CODE'),(20,'com.appbrain.CHECK'),(10,'com.applovin.sdk.AppLovinService'),(7,'com.google.android.c2dm.intent.RECEIVE'),(5,'com.google.android.c2dm.intent.REGISTRATION'),(2,'com.jiubang.goscreenlock.theme'),(15,'com.quipper.a.query'),(21,'com.tremorvideo.sdk.android.videoad.Playvideo');
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
INSERT INTO `Applications` VALUES (1,'com.geeksoft.screenshot',25),(2,'com.terabyte.iphonelockbasketball',11),(3,'com.popstar.kattyperry',1),(4,'com.custom.lwp.MagictouchDrawsunonbeachone',3),(5,'org.soft88.ttf',2),(6,'com.quipack.a.b4fb0e5d81cd3230001005a94',2),(7,'com.apostek.apps.touchfootball',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (6,'android.intent.category.BROWSABLE'),(7,'android.intent.category.EMBED'),(4,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'com.quipper.a.query.TOPIC'),(3,'com.terabyte.iphonelockbasketball');
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.geeksoft.screenshot.main'),(2,1,'com.geeksoft.screenshot.aboutcls'),(3,1,'com.google.ads.AdActivity'),(4,1,'com.apperhand.device.android.AndroidSDKProvider'),(5,2,'com.terabyte.iphonelockbasketball.GOLockerInstallDialog'),(6,3,'com.popstar.kattyperry.GOLockerInstallDialog'),(7,2,'com.airpush.android.PushAds'),(8,3,'com.airpush.android.PushAds'),(9,2,'com.terabyte.iphonelockbasketball.C2DMService'),(10,3,'com.popstar.kattyperry.GoDownloadServiceervice'),(11,2,'com.terabyte.iphonelockbasketball.GoDownloadServiceervice'),(12,3,'com.airpush.android.PushService'),(13,2,'com.airpush.android.PushService'),(14,3,'com.apperhand.device.android.AndroidSDKProvider'),(15,2,'com.apperhand.device.android.AndroidSDKProvider'),(16,3,'com.airpush.android.UserDetailsReceiver'),(17,2,'com.terabyte.iphonelockbasketball.C2DMRegistrationReceiver'),(18,4,'com.custom.lwp.MagictouchDrawsunonbeachone.vickyWallpaperOptions'),(19,3,'com.airpush.android.MessageReceiver'),(20,4,'com.custom.lwp.MagictouchDrawsunonbeachone.vickyLauncher'),(21,3,'com.airpush.android.DeliveryReceiver'),(22,3,'com.popstar.kattyperry.BootReceiver'),(23,4,'com.custom.uilib.FilePicker'),(24,2,'com.terabyte.iphonelockbasketball.C2DMMessageReceiver'),(25,4,'com.airpush.android.PushAds'),(26,3,'com.Leadbolt.AdNotification'),(27,4,'com.custom.lwp.MagictouchDrawsunonbeachone.vickyWallpaperService'),(28,2,'com.Leadbolt.AdNotification'),(29,2,'com.airpush.android.UserDetailsReceiver'),(30,4,'com.apperhand.device.android.AndroidSDKProvider'),(31,2,'com.airpush.android.MessageReceiver'),(32,2,'com.airpush.android.DeliveryReceiver'),(33,4,'com.airpush.android.PushService'),(34,2,'com.terabyte.iphonelockbasketball.BootReceiver'),(35,4,'com.airpush.android.UserDetailsReceiver'),(36,4,'com.airpush.android.MessageReceiver'),(37,4,'com.airpush.android.DeliveryReceiver'),(38,4,'com.Leadbolt.AdNotification'),(39,4,'com.custom.lwp.MagictouchDrawsunonbeachone.BootReceiver'),(40,5,'org.soft88.ttf.TTF'),(41,5,'com.appbrain.AppBrainActivity'),(42,5,'com.appbrain.AppBrainService'),(43,5,'com.applovin.sdk.AppLovinService'),(44,5,'com.apperhand.device.android.AndroidSDKProvider'),(45,5,'com.appbrain.ReferrerReceiver'),(46,5,'com.applovin.sdk.AppLovinBootReceiver'),(47,5,'com.LeadBolt.AdNotification'),(48,1,'com.geeksoft.screenshot.main$8'),(49,1,'com.apperhand.device.android.a.a'),(50,1,'com.apperhand.device.android.a.e'),(51,6,'com.quipper.a.v5.single.activities.QuipperV5SingleStartActivity'),(52,6,'com.quipper.a.v5.single.activities.SingleLanderActivity'),(53,6,'com.quipper.a.v5.single.activities.ReportTopicActivity'),(54,6,'com.quipper.a.v5.single.activities.PurchaseActivity'),(55,6,'com.quipper.a.v5.activities.FlowControlActivity'),(56,6,'com.quipper.a.v5.activities.WebViewActivity'),(57,6,'com.quipper.a.v5.activities.LanderRibbonActivity'),(58,6,'com.quipper.a.v5.activities.UserPriorityActivity'),(59,6,'com.quipper.a.v5.single.activities.TopicActivity'),(60,6,'com.quipper.a.v5.activities.TopicReviewActivity'),(61,6,'com.quipper.a.v5.activities.VideoPlayerActivity'),(62,6,'com.quipper.a.v5.activities.FlagQuestionActivity'),(63,6,'com.quipper.a.v5.activities.ShareActivity'),(64,6,'com.quipper.a.v5.activities.QuipperDialog'),(65,6,'com.quipper.a.v5.single.activities.FlashCardPurchaseDialog'),(66,6,'com.quipper.a.v5.activities.LoginActivity'),(67,6,'com.quipper.a.v5.activities.SignupActivity'),(68,6,'com.quipper.a.v5.activities.AgreementActivity'),(69,6,'com.quipper.a.v5.activities.FacebookConnectActivity'),(70,6,'com.quipper.a.v5.single.billing.BillingService'),(71,6,'com.quipper.a.v5.services.UpdateRibbonsAndTopicsService'),(72,6,'com.apperhand.device.android.AndroidSDKProvider'),(73,6,'com.quipper.a.v5.single.receivers.TopicReceiver'),(74,6,'com.quipper.a.v5.single.billing.BillingReceiver'),(75,1,'com.geeksoft.screenshot.main$3'),(76,6,'com.Leadbolt.AdNotification'),(77,6,'com.quipper.a.v5.single.BootReceiver'),(78,5,'com.apperhand.device.android.a.b'),(79,5,'com.apperhand.device.android.a.d'),(80,5,'com.appbrain.a.u'),(81,5,'com.Leadbolt.AdController'),(82,5,'com.appbrain.a.a'),(83,7,'com.apostek.apps.touchfootball.TFGameIntro'),(84,7,'com.apostek.apps.touchfootball.HomeScreen'),(85,7,'com.apostek.apps.touchfootball.GameIntermediateScreen'),(86,7,'com.apostek.apps.touchfootball.CreditsScreen'),(87,7,'com.apostek.apps.touchfootball.ChallengeSelectScreen'),(88,7,'com.apostek.apps.touchfootball.ChallengeGameScreen'),(89,7,'com.apostek.apps.touchfootball.InfoScreen'),(90,7,'com.apostek.library.ActivityOtherApps'),(91,7,'com.apostek.apps.touchfootball.HelpScreen'),(92,7,'com.apostek.apps.touchfootball.ShareOnFacebook'),(93,7,'com.apostek.apps.touchfootball.GameScreen'),(94,7,'com.apostek.apps.touchfootball.LeaderboardExplorer'),(95,7,'com.apostek.apps.touchfootball.ScoreExplorer'),(96,7,'com.apostek.apps.touchfootball.OpenFeintExample'),(97,7,'com.apostek.apps.touchfootball.ScorePoster'),(98,7,'com.apostek.apps.touchfootball.AchievementExplorer'),(99,7,'com.apostek.apps.touchfootball.AchievementInvestigator'),(100,7,'com.apostek.apps.touchfootball.UserExplorer'),(101,7,'com.apostek.apps.touchfootball.TimeExplorer'),(102,7,'com.openfeint.internal.ui.IntroFlow'),(103,7,'com.openfeint.api.ui.Dashboard'),(104,7,'com.openfeint.internal.ui.Settings'),(105,7,'com.openfeint.internal.ui.NativeBrowser'),(106,7,'com.google.ads.AdActivity'),(107,7,'com.mobfox.sdk.InAppWebView'),(108,7,'com.millennialmedia.android.VideoPlayer'),(109,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(110,7,'com.mobclix.android.sdk.MobclixBrowserActivity'),(111,7,'com.greystripe.android.sdk.AdView'),(112,7,'com.mdotm.android.ads.MdotmLandingPage'),(113,7,'com.tremorvideo.sdk.android.videoad.Playvideo'),(114,7,'com.apostek.apps.touchfootball.inapp.BillingService'),(115,7,'com.apostek.common.ApostekReceiver'),(116,7,'com.apostek.apps.touchfootball.inapp.BillingReceiver'),(117,7,'com.greystripe.android.sdk.AdContentProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'APPLICATION_ID'),(2,4,'SERVICE_MODE'),(3,4,'USER_AGENT'),(4,4,'M_SERVER_URL'),(5,3,'params'),(6,3,'com.google.ads.AdOpener'),(7,4,'FIRST_RUN'),(8,4,'DEVELOPER_ID'),(9,3,'action'),(10,4,'permanent'),(11,44,'M_SERVER_URL'),(12,44,'SERVICE_MODE'),(13,41,'maybe'),(14,45,'(.*)'),(15,43,'applovin.sdk.key'),(16,45,'referrer'),(17,44,'USER_AGENT'),(18,42,'event'),(19,44,'APPLICATION_ID'),(20,41,'activity'),(21,42,'key'),(22,44,'DEVELOPER_ID'),(23,44,'FIRST_RUN'),(24,43,'applovin.sdk.verbose_logging'),(25,43,'applovin.sdk.autoupdate_disabled');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'s',1,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'r',0,NULL,NULL),(17,18,'a',1,NULL,NULL),(18,17,'r',1,28,NULL),(19,19,'r',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'r',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'r',1,28,NULL),(25,25,'a',0,NULL,NULL),(26,26,'r',0,NULL,NULL),(27,27,'s',1,29,NULL),(28,28,'r',0,NULL,NULL),(29,29,'r',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'r',0,NULL,NULL),(32,32,'r',0,NULL,NULL),(33,33,'s',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'r',0,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'r',0,NULL,NULL),(38,38,'r',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'s',1,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'r',0,NULL,NULL),(48,51,'a',1,NULL,NULL),(49,52,'a',0,NULL,NULL),(50,53,'a',0,NULL,NULL),(51,54,'a',0,NULL,NULL),(52,55,'a',0,NULL,NULL),(53,56,'a',0,NULL,NULL),(54,57,'a',0,NULL,NULL),(55,58,'a',0,NULL,NULL),(56,59,'a',0,NULL,NULL),(57,60,'a',0,NULL,NULL),(58,61,'a',0,NULL,NULL),(59,62,'a',0,NULL,NULL),(60,63,'a',0,NULL,NULL),(61,64,'a',0,NULL,NULL),(62,65,'a',0,NULL,NULL),(63,66,'a',0,NULL,NULL),(64,67,'a',0,NULL,NULL),(65,68,'a',0,NULL,NULL),(66,69,'a',0,NULL,NULL),(67,70,'s',0,NULL,NULL),(68,71,'s',0,NULL,NULL),(69,72,'s',0,NULL,NULL),(70,73,'r',1,NULL,NULL),(71,74,'r',1,NULL,NULL),(72,75,'r',1,NULL,NULL),(73,76,'r',0,NULL,NULL),(74,77,'r',1,NULL,NULL),(75,83,'a',1,NULL,NULL),(76,84,'a',0,NULL,NULL),(77,85,'a',0,NULL,NULL),(78,86,'a',0,NULL,NULL),(79,87,'a',0,NULL,NULL),(80,88,'a',0,NULL,NULL),(81,89,'a',0,NULL,NULL),(82,90,'a',0,NULL,NULL),(83,91,'a',0,NULL,NULL),(84,92,'a',0,NULL,NULL),(85,93,'a',0,NULL,NULL),(86,94,'a',0,NULL,NULL),(87,95,'a',0,NULL,NULL),(88,96,'a',0,NULL,NULL),(89,97,'a',0,NULL,NULL),(90,98,'a',0,NULL,NULL),(91,99,'a',0,NULL,NULL),(92,100,'a',0,NULL,NULL),(93,101,'a',0,NULL,NULL),(94,102,'a',0,NULL,NULL),(95,103,'a',0,NULL,NULL),(96,104,'a',0,NULL,NULL),(97,105,'a',0,NULL,NULL),(98,106,'a',0,NULL,NULL),(99,107,'a',0,NULL,NULL),(100,108,'a',0,NULL,NULL),(101,109,'a',0,NULL,NULL),(102,110,'a',0,NULL,NULL),(103,111,'a',0,NULL,NULL),(104,112,'a',1,NULL,NULL),(105,113,'a',1,NULL,NULL),(106,114,'s',0,NULL,NULL),(107,115,'r',1,NULL,NULL),(108,116,'r',1,NULL,NULL),(109,117,'p',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,4),(5,5,4),(6,6,4),(7,7,1),(8,8,4),(9,9,4),(10,10,1),(11,11,4),(12,12,3),(13,13,46),(14,14,44),(15,15,44),(16,16,44),(17,17,45),(18,17,40),(19,17,41),(20,17,42),(21,18,42),(22,19,44),(23,20,44),(24,21,44),(25,22,40),(26,22,45),(27,23,41),(28,24,40),(29,24,45);
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
INSERT INTO `ExitPoints` VALUES (1,1,'<com.geeksoft.screenshot.main: void takeScreenshot()>',26,'p',NULL),(2,1,'<com.geeksoft.screenshot.main: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(3,48,'<com.geeksoft.screenshot.main$8: boolean onTouch(android.view.View,android.view.MotionEvent)>',10,'a',NULL),(4,49,'<com.apperhand.device.android.a.a: java.util.List a()>',13,'p',NULL),(5,50,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',24,'p',NULL),(6,50,'<com.apperhand.device.android.a.e: android.database.Cursor a(com.apperhand.device.android.a.e$a)>',10,'p',NULL),(7,1,'<com.geeksoft.screenshot.main: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(8,49,'<com.apperhand.device.android.a.a: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(9,50,'<com.apperhand.device.android.a.e: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(10,4,'<com.apperhand.device.android.AndroidSDKProvider: void a(android.content.Context,int,android.os.Bundle)>',28,'s',NULL),(11,49,'<com.apperhand.device.android.a.a: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(12,3,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(13,46,'<com.applovin.sdk.AppLovinBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(14,78,'<com.apperhand.device.android.a.b: long a(com.apperhand.common.dto.Bookmark)>',21,'p',NULL),(15,79,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',24,'p',NULL),(16,79,'<com.apperhand.device.android.a.d: void b(com.apperhand.common.dto.Shortcut)>',21,'r',NULL),(17,80,'<com.appbrain.a.u: void a(android.content.Context)>',4,'s',NULL),(18,80,'<com.appbrain.a.u: void a(android.content.Context,java.lang.String,com.appbrain.e.t)>',9,'s',NULL),(19,78,'<com.apperhand.device.android.a.b: java.util.List a(java.lang.String)>',20,'p',NULL),(20,79,'<com.apperhand.device.android.a.d: android.database.Cursor a(com.apperhand.device.android.a.d$a)>',10,'p',NULL),(21,78,'<com.apperhand.device.android.a.b: void b(com.apperhand.common.dto.Bookmark)>',8,'p',NULL),(22,81,'<com.Leadbolt.AdController: void displayIcon()>',67,'r',NULL),(23,82,'<com.appbrain.a.a: void a(android.content.Context,com.appbrain.e.f,com.appbrain.a.b)>',10,'a',NULL),(24,81,'<com.Leadbolt.AdController: void displayIcon()>',94,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,12),(2,2,12),(3,4,13),(4,7,12),(5,8,14),(6,9,14),(7,11,13),(8,12,20),(9,14,13),(10,15,13),(11,16,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/geeksoft/screenshot/aboutcls'),(2,5,'com/apperhand/device/android/AndroidSDKProvider'),(3,6,'com/apperhand/device/android/AndroidSDKProvider'),(4,10,'com/applovin/sdk/AppLovinService'),(5,12,'com/appbrain/AppBrainService'),(6,13,'com/appbrain/AppBrainService'),(7,17,'com/appbrain/AppBrainActivity'),(8,18,'com/appbrain/AppBrainActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,2),(2,2,3),(3,7,10),(4,8,11),(5,9,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'android.intent.extra.shortcut.NAME'),(2,4,'android.intent.extra.shortcut.ICON'),(3,4,'android.intent.extra.shortcut.INTENT'),(4,5,'M_SERVER_URL'),(5,5,'USER_AGENT'),(6,5,'SERVICE_MODE'),(7,5,'FIRST_RUN'),(8,5,'DEVELOPER_ID'),(9,5,'(.*)'),(10,5,'APPLICATION_ID'),(11,6,'M_SERVER_URL'),(12,6,'USER_AGENT'),(13,6,'SERVICE_MODE'),(14,6,'FIRST_RUN'),(15,6,'DEVELOPER_ID'),(16,6,'APPLICATION_ID'),(17,11,'android.intent.extra.shortcut.NAME'),(18,11,'android.intent.extra.shortcut.ICON'),(19,11,'android.intent.extra.shortcut.INTENT'),(20,13,'event'),(21,13,'key'),(22,14,'android.intent.extra.shortcut.NAME'),(23,14,'android.intent.extra.shortcut.ICON_RESOURCE'),(24,14,'android.intent.extra.shortcut.INTENT'),(25,15,'android.intent.extra.shortcut.NAME'),(26,15,'android.intent.extra.shortcut.ICON'),(27,15,'android.intent.extra.shortcut.ICON_RESOURCE'),(28,15,'android.intent.extra.shortcut.INTENT'),(29,16,'android.intent.extra.shortcut.NAME'),(30,16,'android.intent.extra.shortcut.ICON'),(31,16,'android.intent.extra.shortcut.INTENT'),(32,17,'hash'),(33,17,'hash_last'),(34,17,'src'),(35,17,'activity'),(36,18,'src'),(37,18,'activity');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,2),(6,6,3),(7,7,4),(8,8,1),(9,9,5),(10,10,6),(11,11,7),(12,12,8),(13,14,6),(14,13,9),(15,15,6),(16,16,1),(17,17,10),(18,18,11),(19,19,6),(20,20,1),(21,21,15),(22,22,16),(23,22,18),(24,22,17),(25,23,19),(26,24,6),(27,25,1),(28,27,21),(29,28,11),(30,29,18),(31,29,17),(32,29,16);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,2),(5,5,2),(6,8,1),(7,9,3),(8,10,4),(9,11,3),(10,14,4),(11,15,4),(12,16,1),(13,20,1),(14,21,5),(15,25,1),(16,26,6),(17,27,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.geeksoft.screenshot'),(2,5,'com.geeksoft.screenshot'),(3,6,'com.geeksoft.screenshot'),(4,10,'org.soft88.ttf'),(5,12,'org.soft88.ttf'),(6,13,'org.soft88.ttf'),(7,17,'org.soft88.ttf'),(8,18,'org.soft88.ttf');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,5,0),(5,6,0),(6,12,0),(7,13,0),(8,20,0),(9,18,0),(10,22,0),(11,24,0),(12,27,0),(13,33,0),(14,34,0),(15,39,0),(16,40,0),(17,43,0),(18,45,0),(19,46,0),(20,48,0),(21,70,0),(22,71,0),(23,72,0),(24,74,0),(25,75,0),(26,104,0),(27,105,0),(28,107,0),(29,108,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,1,0),(2,3,1,0),(3,7,0,0),(4,9,1,0),(5,10,0,0),(6,10,0,0),(7,12,1,0),(8,12,1,0),(9,12,1,0),(10,13,0,0),(11,16,1,0),(12,17,0,0),(13,18,0,0),(14,22,1,0),(15,22,1,0),(16,22,1,0),(17,23,0,0),(18,23,0,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.apostek.apps.touchfootball');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (18,'android.permission.ACCESS_COARSE_LOCATION'),(21,'android.permission.ACCESS_FINE_LOCATION'),(27,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(16,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(29,'android.permission.BIND_WALLPAPER'),(32,'android.permission.GET_TASKS'),(11,'android.permission.INTERNET'),(30,'android.permission.READ_CONTACTS'),(9,'android.permission.READ_PHONE_STATE'),(19,'android.permission.RECEIVE_BOOT_COMPLETED'),(24,'android.permission.VIBRATE'),(26,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(25,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(20,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(14,'com.android.launcher.permission.READ_SETTINGS'),(8,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(31,'com.android.vending.BILLING'),(12,'com.fede.launcher.permission.READ_SETTINGS'),(22,'com.google.android.c2dm.permission.RECEIVE'),(28,'com.google.android.c2dm.permission.SEND'),(7,'com.htc.launcher.permission.READ_SETTINGS'),(2,'com.lge.launcher.permission.INSTALL_SHORTCUT'),(10,'com.lge.launcher.permission.READ_SETTINGS'),(4,'com.motorola.dlauncher.permission.INSTALL_SHORTCUT'),(5,'com.motorola.dlauncher.permission.READ_SETTINGS'),(15,'com.motorola.launcher.permission.INSTALL_SHORTCUT'),(17,'com.motorola.launcher.permission.READ_SETTINGS'),(23,'com.terabyte.iphonelockbasketball.permission.C2D_MESSAGE'),(13,'org.adw.launcher.permission.READ_SETTINGS');
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
INSERT INTO `Permissions` VALUES (23,'s');
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
INSERT INTO `Providers` VALUES (1,109,0,NULL,NULL);
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(2,NULL,NULL,'http://www.kastorsoft.com',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=com.kastorsoft.screenshotfull',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(6,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(7,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(14,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(15,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(16,NULL,NULL,'content://(.*).settings/favorites?notify=false',NULL,NULL,NULL),(17,NULL,NULL,'content://NULL-CONSTANT.settings/favorites?notify=false',NULL,NULL,NULL),(18,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(19,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,4,4),(3,5,5),(4,6,6),(5,6,7),(6,8,8),(7,11,9),(8,14,13),(9,15,14),(10,19,15),(11,20,16),(12,20,17),(13,21,18),(14,24,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,2,1),(19,2,2),(20,2,3),(21,2,4),(22,2,5),(23,2,6),(24,3,1),(25,3,2),(26,2,7),(27,3,3),(28,2,8),(29,3,4),(30,2,9),(31,3,5),(32,2,10),(33,2,11),(34,3,6),(35,2,12),(36,3,7),(37,2,13),(38,3,8),(39,2,14),(40,3,9),(41,2,15),(42,3,10),(43,2,17),(44,3,11),(45,2,16),(46,3,12),(47,2,19),(48,3,13),(49,2,18),(50,3,14),(51,2,21),(52,3,15),(53,2,20),(54,3,17),(55,2,23),(56,3,16),(57,2,22),(58,3,19),(59,2,25),(60,3,18),(61,2,24),(62,3,21),(63,4,1),(64,3,20),(65,4,2),(66,4,3),(67,3,25),(68,4,4),(69,3,24),(70,4,5),(71,3,26),(72,4,6),(73,4,7),(74,4,8),(75,4,9),(76,4,10),(77,4,11),(78,4,12),(79,4,13),(80,4,14),(81,4,15),(82,4,17),(83,4,16),(84,4,19),(85,4,18),(86,4,21),(87,4,20),(88,4,25),(89,4,24),(90,4,27),(91,4,26),(92,5,1),(93,5,2),(94,5,4),(95,5,5),(96,5,6),(97,5,7),(98,5,8),(99,5,9),(100,5,10),(101,5,11),(102,5,12),(103,5,13),(104,5,14),(105,5,15),(106,5,17),(107,5,16),(108,5,20),(109,5,25),(110,5,26),(111,5,30),(112,6,1),(113,6,2),(114,6,3),(115,6,4),(116,6,5),(117,6,6),(118,6,7),(119,6,8),(120,6,9),(121,6,10),(122,6,11),(123,6,12),(124,6,13),(125,6,14),(126,6,15),(127,6,17),(128,6,16),(129,6,19),(130,6,18),(131,6,21),(132,6,20),(133,6,25),(134,6,24),(135,6,27),(136,6,31),(137,7,16),(138,7,32),(139,7,18),(140,7,3),(141,7,21),(142,7,6),(143,7,24),(144,7,9),(145,7,11),(146,7,31);
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

-- Dump completed on 2015-10-09  0:40:57
