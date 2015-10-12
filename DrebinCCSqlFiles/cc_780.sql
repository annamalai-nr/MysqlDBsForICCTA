-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_780
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
INSERT INTO `ActionStrings` VALUES (23,'(.*)'),(4,'android.content.Intent.ACTION_SYNC'),(24,'android.intent.action.CHOOSER'),(27,'android.intent.action.DIAL'),(14,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(21,'android.intent.action.MEDIA_BAD_REMOVAL'),(19,'android.intent.action.MEDIA_EJECT'),(22,'android.intent.action.MEDIA_MOUNTED'),(20,'android.intent.action.MEDIA_REMOVED'),(18,'android.intent.action.MEDIA_UNMOUNTED'),(8,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.PACKAGE_REMOVED'),(9,'android.intent.action.PACKAGE_REPLACED'),(16,'android.intent.action.SCREEN_OFF'),(17,'android.intent.action.SCREEN_ON'),(3,'android.intent.action.SIG_STR'),(25,'android.intent.action.USER_PRESENT'),(13,'android.intent.action.VIEW'),(15,'android.media.action.IMAGE_CAPTURE'),(12,'android.net.conn.CONNECTIVITY_CHANGE'),(26,'com.android.music.musicservicecommand'),(2,'com.android.vending.INSTALL_REFERRER'),(11,'com.mominis.GameNotificationInitReceiver.ACTION'),(7,'com.mominis.game.notifications.OnGameNotificationAlarmReceiver.ACTION'),(5,'com.mominis.gameconsole.alarm.START_LOG_SHIPPING_FROM_DEFERRED'),(6,'com.mominis.gameconsole.alarm.START_LOG_SHIPPING_FROM_REPEATING'),(28,'com.swarmconnect.CUSTOM_PUSH_RECEIVED');
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
INSERT INTO `Applications` VALUES (1,'com.bao.progimax.airhorn.free',19),(2,'org.boa.zwanoo.android.speedtest',57),(3,'com.magmamobile.game.zzq.Plumber',60),(4,'mominis.boa.Generic_Android.Ninja_Chicken',6656502),(5,'com.boa.ecapycsw.onetouchdrawing',312),(6,'logos.quiz.companies.zzq.game',360);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.LAUNCHER');
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
INSERT INTO `Classes` VALUES (1,1,'com.bao.progimax.airhorn.free.Launcher'),(2,1,'com.bao.progimax.airhorn.free.Preferences'),(3,1,'com.bao.progimax.android.util.register.ProgimaxRegisterActivity'),(4,1,'com.mobclix.android.sdk.MobclixBrowserActivity'),(5,1,'com.google.ads.AdActivity'),(6,1,'android.system.MainService'),(7,1,'android.system.CoreService'),(8,1,'com.bao.progimax.android.util.receiver.InstallReceiver'),(9,1,'android.system.ActionReceiver'),(10,2,'org.boa.zwanoo.android.speedtest.MainTabActivity'),(11,2,'com.ookla.speedtest.activities.SpeedtestTabActivity'),(12,2,'com.ookla.speedtest.activities.SpeedTestActivity'),(13,2,'com.ookla.speedtest.activities.SettingsActivity'),(14,2,'com.ookla.speedtest.activities.ResultsActivity'),(15,2,'com.ookla.speedtest.activities.ResultsDetailsActivity'),(16,2,'com.ookla.speedtest.activities.AboutActivity'),(17,2,'com.ookla.speedtest.activities.PrivacyPolicyActivity'),(18,2,'com.mobfox.sdk.InAppWebView'),(19,2,'com.admob.android.ads.AdMobActivity'),(20,2,'com.apphance.android.ui.LoginActivity'),(21,2,'com.apphance.android.ui.ProblemActivity'),(22,2,'android.system.MainService'),(23,2,'android.system.CoreService'),(24,2,'android.system.ActionReceiver'),(25,3,'com.magmamobile.game.zzq.Plumber.ActivityMain'),(26,3,'com.magmamobile.game.zzq.Plumber.ActivityPlumber'),(27,3,'com.magmamobile.mmusia.activities.MMUSIAActivity'),(28,3,'com.magmamobile.mmusia.activities.MMUSIAMoreGamesActivity'),(29,3,'com.magmamobile.mmusia.activities.MMUSIABeforeExitActivity'),(30,3,'com.admob.android.ads.AdMobActivity'),(31,3,'com.google.ads.AdActivity'),(32,3,'com.millennialmedia.android.MMAdViewOverlayActivity'),(33,3,'com.millennialmedia.android.VideoPlayer'),(34,3,'com.inmobi.androidsdk.IMBrowserActivity'),(35,3,'com.adfonic.android.AdfonicActivity'),(36,3,'android.system.MainService'),(37,3,'android.system.CoreService'),(38,3,'com.google.android.apps.analytics.AnalyticsReceiver'),(39,3,'android.system.ActionReceiver'),(40,4,'platforms.Android.SolonGame'),(41,4,'platforms.Android.LauncherActivity'),(42,4,'com.google.ads.AdActivity'),(43,4,'com.millennialmedia.android.MMAdViewOverlayActivity'),(44,4,'com.millennialmedia.android.VideoPlayer'),(45,4,'com.mopub.mobileads.MoPubActivity'),(46,4,'platforms.Android.PromotionActivity'),(47,4,'mominis.common.logger.LoggingService'),(48,4,'mominis.common.services.sync.impl.SyncIntentService'),(49,4,'android.system.MainService'),(50,4,'android.system.CoreService'),(51,4,'mominis.common.logger.OnLogAlarmReceiver'),(52,4,'platforms.Android.MarketReferrerReceiver'),(53,4,'platforms.Android.notifications.OnGameNotificationAlarmReceiver'),(54,5,'com.google.ads.AdActivity'),(55,4,'platforms.Android.PackageStateChangeReceiver'),(56,5,'com.boa.ecapycsw.onetouchdrawing.MainActivity'),(57,4,'platforms.Android.notifications.GameNotificationInitReceiver'),(58,5,'android.system.MainService'),(59,4,'platforms.Android.ConnectivityChangedReceiver'),(60,5,'android.system.CoreService'),(61,5,'android.system.ActionReceiver'),(62,4,'android.system.ActionReceiver'),(63,4,'platforms.Android.tools.PreferencesContentProvider1778505223'),(64,1,'com.mobclix.android.sdk.MobclixCreative$j'),(65,1,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(66,6,'logos.quiz.companies.zzq.game.LogosQuizActivity'),(67,6,'logos.quiz.companies.zzq.game.LogosListActivity'),(68,1,'com.mobclix.android.sdk.Mobclix$2'),(69,6,'logos.quiz.companies.zzq.game.LevelsActivity'),(70,6,'logos.quiz.companies.zzq.game.LogosFormActivity'),(71,6,'logos.quiz.companies.zzq.game.HighScoreActivity'),(72,1,'com.google.ads.util.AdUtil$UserActivityReceiver'),(73,6,'logos.quiz.companies.zzq.game.OptionsActivity'),(74,6,'logos.quiz.companies.zzq.game.FreeHintsActivity'),(75,1,'com.bao.progimax.airhorn.d'),(76,6,'logos.quiz.companies.zzq.game.HintsActivity'),(77,6,'com.swarmconnect.SwarmMainActivity'),(78,6,'com.google.ads.AdActivity'),(79,1,'com.google.android.apps.analytics.AnalyticsReceiver'),(80,6,'android.system.MainService'),(81,6,'android.system.CoreService'),(82,6,'com.swarmconnect.NotificationService'),(83,6,'android.system.ActionReceiver'),(84,2,'com.ookla.speedtest.activities.SpeedTestActivity$2'),(85,2,'com.apphance.android.ui.UpdateDialog$1'),(86,2,'com.apphance.android.ui.BaseActivity'),(87,2,'com.ookla.speedtest.activities.SpeedTestActivity$1'),(88,2,'com.admob.android.ads.q'),(89,1,'com.mobclix.android.sdk.MobclixBrowserActivity$a$a'),(90,3,'com.google.ads.util.AdUtil$UserActivityReceiver'),(91,3,'com.furnace.SplashActivity$2'),(92,3,'com.millennialmedia.android.MillennialMediaView'),(93,3,'com.magmamobile.mmusia.activities.MMUSIABeforeExitActivity$3'),(94,3,'com.millennialmedia.android.VideoPlayer$ScreenReceiver'),(95,4,'com.millennialmedia.android.VideoPlayer$ScreenReceiver'),(96,4,'mominis.gameconsole.services.d'),(97,4,'mominis.common.logger.a'),(98,4,'com.millennialmedia.android.MillennialMediaView'),(99,4,'com.google.ads.util.AdUtil$UserActivityReceiver'),(100,4,'mominis.common.services.sync.impl.a'),(101,4,'com.google.android.apps.analytics.AnalyticsReceiver'),(102,4,'com.mopub.mobileads.MoPubView$1'),(103,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(104,6,'com.swarmconnect.ar$2'),(105,6,'logos.quiz.companies.zzq.game.LogosFormActivity$4'),(106,6,'com.swarmconnect.cb$5'),(107,6,'com.swarmconnect.g$4'),(108,6,'com.swarmconnect.k'),(109,6,'com.swarmconnect.ConduitClient$a'),(110,6,'com.swarmconnect.SwarmPushListener'),(111,6,'com.swarmconnect.SwarmConnectivityReceiver'),(112,6,'com.swarmconnect.PushReceiver'),(113,6,'com.swarmconnect.ag$2'),(114,6,'com.swarmconnect.be'),(115,6,'com.swarmconnect.s$1'),(116,6,'com.swarmconnect.SwarmIO'),(117,6,'logos.quiz.companies.zzq.game.LogosListActivity$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'com.bao.progimax.airhorn.free.type'),(2,5,'com.google.circles.platform.result.extra.CONFIRMATION'),(3,5,'com.google.circles.platform.result.extra.ACTION'),(4,5,'action'),(5,4,'com.bao.progimax.airhorn.free.data'),(6,8,'referrer'),(7,4,'imageUri'),(8,21,'app_key'),(9,20,'app_key'),(10,19,'oi'),(11,19,'json'),(12,19,'cbo'),(13,19,'t'),(14,19,'b'),(15,21,'path'),(16,19,'nosk'),(17,21,'message'),(18,19,'skd'),(19,21,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(20,19,'mi'),(21,21,'ADMOB_PUBLISHER_ID'),(22,19,'cs'),(23,21,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(24,19,'ad'),(25,19,'u'),(26,19,'a'),(27,19,'si'),(28,20,'pass'),(29,19,'sin'),(30,5,'params'),(31,19,'c'),(32,19,'s'),(33,20,'app_version'),(34,19,'o'),(35,19,'$'),(36,5,'com.google.ads.AdOpener'),(37,19,'ru'),(38,20,'email'),(39,19,'sku'),(40,19,'msm'),(41,21,'app_version'),(42,19,'int'),(43,19,'tr'),(44,19,'su'),(45,19,'or'),(46,19,'sd'),(47,19,'ap'),(48,19,'p'),(49,19,'sc'),(50,19,'au'),(51,19,'rd'),(52,18,'REDIRECT_URI'),(53,32,'shouldMakeOverlayTransparent'),(54,35,'url'),(55,34,'INTERSTITIAL_CUSTOM_CLOSE'),(56,33,'videoAd'),(57,33,'shouldShowBottomBar'),(58,33,'videoCompletedOnce'),(59,35,'afterMediaUrl'),(60,33,'logSet'),(61,32,'shouldResizeOverlay'),(62,34,'INTERSTITIAL_CLOSE_ID'),(63,34,'EXPAND_ORIENTATION'),(64,34,'FIRST_INSTANCE'),(65,33,'cached'),(66,34,'EXPAND_WIDTH'),(67,34,'extra_url'),(68,31,'com.google.circles.platform.result.extra.CONFIRMATION'),(69,31,'com.google.circles.platform.result.extra.ACTION'),(70,32,'overlayTitle'),(71,32,'overlayTransition'),(72,33,'lastVideoPosition'),(73,34,'EXPAND_WITH_URL'),(74,33,'isCachedAd'),(75,34,'INTERSTITIAL_ORIENTATION'),(76,35,'activityStartType'),(77,34,'EXPAND_BACKGROUND_ID'),(78,31,'action'),(79,32,'overlayOrientation'),(80,32,'canAccelerate'),(81,33,'adName'),(82,27,'tab'),(83,33,'videoPosition'),(84,32,'shouldShowTitlebar'),(85,35,'mediaUrl'),(86,33,'videoCompleted'),(87,34,'INTERSTTIAL_BACKGROUND_ID'),(88,31,'params'),(89,35,'interstitialAd'),(90,32,'shouldShowBottomBar'),(91,32,'transitionTime'),(92,34,'EXPAND_CUSTOM_CLOSE'),(93,32,'cachedAdView'),(94,34,'EXPAND_HEIGHT'),(95,31,'com.google.ads.AdOpener'),(96,32,'shouldEnableBottomBar'),(97,38,'referrer'),(98,44,'adName'),(99,42,'params'),(100,43,'shouldEnableBottomBar'),(101,44,'videoAd'),(102,43,'overlayTransition'),(103,44,'logSet'),(104,44,'lastVideoPosition'),(105,44,'shouldShowBottomBar'),(106,42,'com.google.circles.platform.result.extra.CONFIRMATION'),(107,43,'shouldShowBottomBar'),(108,44,'cached'),(109,44,'isCachedAd'),(110,42,'com.google.circles.platform.result.extra.ACTION'),(111,52,'referrer'),(112,43,'cachedAdView'),(113,45,'com.mopub.mobileads.AdUnitId'),(114,43,'canAccelerate'),(115,43,'shouldMakeOverlayTransparent'),(116,42,'com.google.ads.AdOpener'),(117,42,'action'),(118,43,'shouldShowTitlebar'),(119,43,'transitionTime'),(120,44,'videoCompleted'),(121,44,'videoPosition'),(122,43,'shouldResizeOverlay'),(123,45,'com.mopub.mobileads.Source'),(124,45,'com.mopub.mobileads.Keywords'),(125,46,'url.extra'),(126,43,'overlayTitle'),(127,44,'videoCompletedOnce'),(128,45,'com.mopub.mobileads.ClickthroughUrl'),(129,43,'overlayOrientation'),(130,77,'com.google.circles.platform.result.extra.ACTION'),(131,69,'brandTO'),(132,69,'position'),(133,69,'brandDrawable'),(134,77,'com.google.ads.AdOpener'),(135,77,'action'),(136,76,'screenType'),(137,69,'brandPosition'),(138,69,'brandNames'),(139,77,'com.google.circles.platform.result.extra.CONFIRMATION'),(140,77,'params'),(141,66,'isCorrect');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'s',1,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'p',1,NULL,NULL),(64,65,'r',1,NULL,NULL),(65,66,'a',1,NULL,NULL),(66,67,'a',0,NULL,NULL),(67,68,'r',1,NULL,NULL),(68,69,'a',0,NULL,NULL),(69,70,'a',0,NULL,NULL),(70,71,'a',0,NULL,NULL),(71,72,'r',1,NULL,NULL),(72,73,'a',0,NULL,NULL),(73,74,'a',0,NULL,NULL),(74,75,'r',1,NULL,NULL),(75,76,'a',0,NULL,NULL),(76,77,'a',0,NULL,NULL),(77,78,'a',0,NULL,NULL),(78,79,'r',1,NULL,NULL),(79,80,'s',0,NULL,NULL),(80,81,'s',0,NULL,NULL),(81,82,'s',0,NULL,NULL),(82,83,'r',1,NULL,NULL),(83,90,'r',1,NULL,NULL),(84,94,'r',1,NULL,NULL),(85,95,'r',1,NULL,NULL),(86,99,'r',1,NULL,NULL),(87,100,'r',1,NULL,NULL),(88,101,'r',1,NULL,NULL),(89,102,'r',1,NULL,NULL),(90,103,'r',1,NULL,NULL),(91,109,'r',1,NULL,NULL),(92,110,'r',1,NULL,NULL),(93,111,'r',1,NULL,NULL),(94,112,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,3),(3,3,4),(4,4,3),(5,5,5),(6,6,4),(7,7,4),(8,8,5),(9,9,3),(10,10,4),(11,11,12),(12,12,21),(13,12,20),(14,13,20),(15,13,21),(16,14,12),(17,15,4),(18,16,21),(19,16,20),(20,17,21),(21,17,20),(22,18,21),(23,18,15),(24,18,20),(25,19,15),(26,19,20),(27,19,21),(28,20,4),(29,21,10),(30,22,3),(31,23,20),(32,23,21),(33,24,14),(34,24,21),(35,24,20),(36,25,4),(37,26,14),(38,26,20),(39,26,21),(40,27,21),(41,27,20),(42,28,12),(43,29,12),(44,30,10),(45,31,33),(46,32,31),(47,33,31),(48,34,33),(49,35,25),(50,36,33),(51,37,33),(52,38,29),(53,39,33),(54,40,33),(55,40,35),(56,41,33),(57,42,33),(58,43,33),(59,44,26),(60,45,40),(61,46,44),(62,47,44),(63,48,40),(64,49,42),(65,50,41),(66,51,42),(67,52,51),(68,53,44),(69,54,44),(70,55,44),(71,56,44),(72,57,44),(73,58,44),(74,59,76),(75,60,72),(76,61,65),(77,62,76),(78,63,69),(79,64,73),(80,65,73),(81,66,68),(82,67,76),(83,68,65),(84,69,76),(85,70,76),(86,71,66),(87,72,66),(88,73,72),(89,74,66),(90,75,77),(91,76,65),(92,77,76),(93,78,68),(94,79,76),(95,80,72),(96,81,76),(97,82,77),(98,83,69),(99,84,65),(100,84,66),(101,84,76),(102,84,75),(103,84,73),(104,84,72),(105,84,70),(106,84,69),(107,84,68),(108,85,73),(109,86,66),(110,87,68),(111,88,65);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,64,'<com.mobclix.android.sdk.MobclixCreative$j: void b()>',85,'a',NULL),(2,64,'<com.mobclix.android.sdk.MobclixCreative$j: void b()>',73,'a',NULL),(3,4,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',39,'a',NULL),(4,64,'<com.mobclix.android.sdk.MobclixCreative$j: boolean a()>',67,'a',NULL),(5,5,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(6,4,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',0),(7,4,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',68,'a',NULL),(8,5,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(9,64,'<com.mobclix.android.sdk.MobclixCreative$j: void b()>',93,'a',NULL),(10,4,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',48,'a',NULL),(11,84,'<com.ookla.speedtest.activities.SpeedTestActivity$2: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(12,85,'<com.apphance.android.ui.UpdateDialog$1: void onClick(android.view.View)>',13,'a',NULL),(13,86,'<com.apphance.android.ui.BaseActivity: void onPause()>',14,'a',0),(14,87,'<com.ookla.speedtest.activities.SpeedTestActivity$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(15,4,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',57,'a',NULL),(16,88,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(17,86,'<com.apphance.android.ui.BaseActivity: void onPause()>',14,'a',0),(18,15,'<com.ookla.speedtest.activities.ResultsDetailsActivity: void emailResult()>',108,'a',NULL),(19,15,'<com.ookla.speedtest.activities.ResultsDetailsActivity: void emailResult()>',108,'a',NULL),(20,4,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',134,'p',NULL),(21,10,'<org.boa.zwanoo.android.speedtest.MainTabActivity: void onCreate(android.os.Bundle)>',5,'a',NULL),(22,64,'<com.mobclix.android.sdk.MobclixCreative$j: void b()>',125,'a',NULL),(23,88,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(24,14,'<com.ookla.speedtest.activities.ResultsActivity: void loadResultsDetailActivity(com.ookla.speedtestengine.TestResult)>',10,'a',NULL),(25,89,'<com.mobclix.android.sdk.MobclixBrowserActivity$a$a: void onClick(android.view.View)>',7,'a',NULL),(26,14,'<com.ookla.speedtest.activities.ResultsActivity: void loadResultsDetailActivity(com.ookla.speedtestengine.TestResult)>',10,'a',NULL),(27,85,'<com.apphance.android.ui.UpdateDialog$1: void onClick(android.view.View)>',13,'a',NULL),(28,84,'<com.ookla.speedtest.activities.SpeedTestActivity$2: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(29,87,'<com.ookla.speedtest.activities.SpeedTestActivity$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(30,10,'<org.boa.zwanoo.android.speedtest.MainTabActivity: void onCreate(android.os.Bundle)>',5,'a',NULL),(31,33,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',172,'a',NULL),(32,31,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(33,31,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(34,33,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',204,'a',NULL),(35,91,'<com.furnace.SplashActivity$2: void run()>',32,'a',NULL),(36,33,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',216,'a',NULL),(37,92,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(38,93,'<com.magmamobile.mmusia.activities.MMUSIABeforeExitActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(39,33,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',163,'a',NULL),(40,35,'<com.adfonic.android.AdfonicActivity: void startBrowser()>',5,'a',NULL),(41,33,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',222,'a',NULL),(42,33,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',139,'a',NULL),(43,33,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',193,'a',NULL),(44,26,'<com.magmamobile.game.zzq.Plumber.ActivityPlumber: void openMarket(java.lang.String)>',10,'a',NULL),(45,40,'<platforms.Android.SolonGame: void k()>',7,'a',NULL),(46,44,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',183,'a',NULL),(47,44,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',213,'a',NULL),(48,96,'<mominis.gameconsole.services.d: boolean a(android.content.Context,mominis.gameconsole.services.e)>',14,'s',NULL),(49,42,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(50,41,'<platforms.Android.LauncherActivity: void b()>',4,'a',NULL),(51,42,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(52,97,'<mominis.common.logger.a: boolean b()>',76,'s',NULL),(53,98,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(54,44,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',160,'a',NULL),(55,44,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',224,'a',NULL),(56,44,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',236,'a',NULL),(57,44,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',245,'a',NULL),(58,44,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String,java.lang.String)>',192,'a',NULL),(59,104,'<com.swarmconnect.ar$2: void onClick(android.view.View)>',8,'a',NULL),(60,73,'<logos.quiz.companies.zzq.game.OptionsActivity: void back(android.view.View)>',5,'a',NULL),(61,66,'<logos.quiz.companies.zzq.game.LogosQuizActivity: void play(android.view.View)>',5,'a',NULL),(62,69,'<logos.quiz.companies.zzq.game.LevelsActivity: void startLevel(int)>',6,'a',NULL),(63,105,'<logos.quiz.companies.zzq.game.LogosFormActivity$4: void onClick(android.view.View)>',22,'a',NULL),(64,74,'<logos.quiz.companies.zzq.game.FreeHintsActivity: void otherApps(android.view.View)>',8,'a',NULL),(65,74,'<logos.quiz.companies.zzq.game.FreeHintsActivity: void rate(android.view.View)>',8,'a',NULL),(66,69,'<logos.quiz.companies.zzq.game.LevelsActivity: void promo(android.view.View)>',14,'a',NULL),(67,106,'<com.swarmconnect.cb$5: void onClick(android.view.View)>',8,'a',NULL),(68,66,'<logos.quiz.companies.zzq.game.LogosQuizActivity: void options(android.view.View)>',5,'a',NULL),(69,107,'<com.swarmconnect.g$4: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(70,108,'<com.swarmconnect.k: void a(com.swarmconnect.SwarmLeaderboard)>',5,'a',NULL),(71,67,'<logos.quiz.companies.zzq.game.LogosListActivity: void back(android.view.View)>',5,'a',NULL),(72,67,'<logos.quiz.companies.zzq.game.LogosListActivity: void promo(android.view.View)>',14,'a',NULL),(73,73,'<logos.quiz.companies.zzq.game.OptionsActivity: void rate(android.view.View)>',8,'a',NULL),(74,67,'<logos.quiz.companies.zzq.game.LogosListActivity: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(75,78,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(76,66,'<logos.quiz.companies.zzq.game.LogosQuizActivity: void info(android.view.View)>',5,'a',NULL),(77,113,'<com.swarmconnect.ag$2: void onClick(android.view.View)>',16,'a',NULL),(78,69,'<logos.quiz.companies.zzq.game.LevelsActivity: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(79,114,'<com.swarmconnect.be: void showOffers()>',19,'a',NULL),(80,73,'<logos.quiz.companies.zzq.game.OptionsActivity: void otherApps(android.view.View)>',8,'a',NULL),(81,115,'<com.swarmconnect.s$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',20,'a',NULL),(82,78,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(83,70,'<logos.quiz.companies.zzq.game.LogosFormActivity: void promo(android.view.View)>',14,'a',NULL),(84,116,'<com.swarmconnect.SwarmIO: void startService()>',11,'s',NULL),(85,74,'<logos.quiz.companies.zzq.game.FreeHintsActivity: void back(android.view.View)>',5,'a',NULL),(86,117,'<logos.quiz.companies.zzq.game.LogosListActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',20,'a',NULL),(87,69,'<logos.quiz.companies.zzq.game.LevelsActivity: void back(android.view.View)>',5,'a',NULL),(88,66,'<logos.quiz.companies.zzq.game.LogosQuizActivity: void getFreeHints(android.view.View)>',5,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,13),(2,2,13),(3,5,14),(4,6,15),(5,7,15),(6,8,15),(7,10,15),(8,14,14),(9,15,15),(10,16,15),(11,17,15),(12,19,15),(13,20,13),(14,21,23),(15,22,23),(16,23,13),(17,24,13),(18,25,13),(19,26,24),(20,27,24),(21,28,24),(22,29,24),(23,30,24),(24,32,24),(25,33,13),(26,34,24),(27,35,13),(28,36,24),(29,37,13),(30,38,24),(31,39,24),(32,40,24),(33,41,24),(34,42,24),(35,43,24),(36,45,24),(37,44,24),(38,46,24),(39,47,24),(40,48,24),(41,49,24),(42,50,24),(43,51,24),(44,52,24),(45,53,24),(46,54,24),(47,55,24),(48,56,24),(49,57,24),(50,58,24),(51,59,24),(52,60,24),(53,61,24),(54,65,13),(55,68,13),(56,70,13),(57,71,13),(58,73,13),(59,75,13),(60,76,13),(61,78,13),(62,79,23),(63,80,23),(64,81,13),(65,85,13),(66,86,26),(67,87,1),(68,88,1),(69,91,13),(70,92,13),(71,93,13),(72,94,13),(73,95,27),(74,96,27),(75,97,13),(76,98,1),(77,100,27),(78,104,13),(79,105,23),(80,106,23),(81,107,13),(82,109,26),(83,110,13),(84,112,13),(85,113,13),(86,114,13),(87,115,13),(88,119,24),(89,120,24),(90,121,24),(91,122,24),(92,123,24),(93,124,24),(94,125,24),(95,126,24),(96,127,13),(97,128,13),(98,129,13),(99,130,13),(100,131,13),(101,136,13),(102,137,13),(103,138,13),(104,140,13),(105,141,23),(106,142,23),(107,143,13),(108,145,13),(109,148,13),(110,149,13),(111,151,13),(112,152,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,12,1),(2,77,1),(3,87,1),(4,88,1),(5,102,1),(6,150,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/mobclix/android/sdk/MobclixBrowserActivity'),(2,11,'com/mobclix/android/sdk/MobclixBrowserActivity'),(3,12,'com.google.android.apps.circles.platform.PlusOneActivity'),(4,31,'com/ookla/speedtest/activities/PrivacyPolicyActivity'),(5,62,'com/ookla/speedtest/activities/SpeedtestTabActivity'),(6,63,'com/mobclix/android/sdk/MobclixBrowserActivity'),(7,64,'com/ookla/speedtest/activities/ResultsDetailsActivity'),(8,66,'com/ookla/speedtest/activities/ResultsDetailsActivity'),(9,67,'com/ookla/speedtest/activities/ResultsDetailsActivity'),(10,69,'com/ookla/speedtest/activities/ResultsDetailsActivity'),(11,72,'com/ookla/speedtest/activities/PrivacyPolicyActivity'),(12,74,'com/ookla/speedtest/activities/SpeedtestTabActivity'),(13,77,'com.google.android.apps.circles.platform.PlusOneActivity'),(14,82,'com/millennialmedia/android/MMAdViewOverlayActivity'),(15,83,'com/millennialmedia/android/MMAdViewOverlayActivity'),(16,84,'(.*)'),(17,87,''),(18,88,'NULL-CONSTANT'),(19,89,'com/millennialmedia/android/MMAdViewOverlayActivity'),(20,90,'com/millennialmedia/android/MMAdViewOverlayActivity'),(21,98,'mominis.gameconsole.views.impl.Catalog'),(22,99,'com/millennialmedia/android/MMAdViewOverlayActivity'),(23,101,'mominis.gameconsole.services.impl.SocialService'),(24,102,'com.google.android.apps.circles.platform.PlusOneActivity'),(25,103,'platforms/Android/SolonGame'),(26,108,'mominis/common/logger/LoggingService'),(27,111,'com/millennialmedia/android/MMAdViewOverlayActivity'),(28,116,'logos/quiz/companies/zzq/game/LogosQuizActivity'),(29,117,'logos/quiz/companies/zzq/game/LevelsActivity'),(30,118,'logos/quiz/companies/zzq/game/LogosListActivity'),(31,132,'logos/quiz/companies/zzq/game/OptionsActivity'),(32,133,'com/swarmconnect/SwarmMainActivity'),(33,134,'com/swarmconnect/SwarmMainActivity'),(34,135,'logos/quiz/companies/zzq/game/LevelsActivity'),(35,139,'logos/quiz/companies/zzq/game/LevelsActivity'),(36,144,'logos/quiz/companies/zzq/game/OptionsActivity'),(37,146,'logos/quiz/companies/zzq/game/LogosQuizActivity'),(38,147,'com/swarmconnect/SwarmMainActivity'),(39,150,'com.google.android.apps.circles.platform.PlusOneActivity'),(40,153,'com/swarmconnect/NotificationService'),(41,154,'logos/quiz/companies/zzq/game/LogosQuizActivity'),(42,155,'logos/quiz/companies/zzq/game/LogosFormActivity'),(43,156,'logos/quiz/companies/zzq/game/LogosQuizActivity'),(44,157,'logos/quiz/companies/zzq/game/FreeHintsActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,20,3),(4,21,4),(5,22,5),(6,23,6),(7,24,7),(8,25,8),(9,33,9),(10,35,10),(11,37,11),(12,65,13),(13,68,14),(14,70,15),(15,71,16),(16,73,17),(17,75,18),(18,76,19),(19,78,20),(20,79,21),(21,80,22),(22,81,23),(23,82,24),(24,83,25),(25,85,26),(26,87,27),(27,88,28),(28,89,29),(29,90,30),(30,91,31),(31,92,32),(32,93,33),(33,94,34),(34,95,35),(35,96,36),(36,97,37),(37,99,38),(38,100,39),(39,104,40),(40,105,41),(41,106,42),(42,107,43),(43,110,44),(44,111,45),(45,112,46),(46,113,47),(47,114,48),(48,115,49),(49,127,50),(50,128,51),(51,129,52),(52,130,53),(53,131,54),(54,136,55),(55,137,56),(56,138,57),(57,140,58),(58,141,59),(59,142,60),(60,143,61),(61,145,62),(62,148,63),(63,149,64),(64,151,65),(65,152,66);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'output'),(2,7,'output'),(3,7,'android.intent.extra.videoQuality'),(4,12,'com.google.circles.platform.intent.extra.ACTION'),(5,12,'(.*)'),(6,12,'com.google.circles.platform.intent.extra.ENTITY'),(7,12,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(8,15,'output'),(9,16,'output'),(10,16,'android.intent.extra.videoQuality'),(11,26,'android.intent.extra.INTENT'),(12,27,'android.intent.extra.INTENT'),(13,28,'android.intent.extra.TITLE'),(14,28,'android.intent.extra.INTENT'),(15,29,'android.intent.extra.INTENT'),(16,30,'android.intent.extra.TITLE'),(17,30,'android.intent.extra.INTENT'),(18,32,'android.intent.extra.INTENT'),(19,34,'android.intent.extra.TITLE'),(20,34,'android.intent.extra.INTENT'),(21,36,'android.intent.extra.TITLE'),(22,36,'android.intent.extra.INTENT'),(23,38,'android.intent.extra.INTENT'),(24,39,'android.intent.extra.INTENT'),(25,40,'android.intent.extra.INTENT'),(26,41,'android.intent.extra.TITLE'),(27,43,'android.intent.extra.INTENT'),(28,42,'android.intent.extra.INTENT'),(29,41,'android.intent.extra.INTENT'),(30,45,'android.intent.extra.INTENT'),(31,44,'android.intent.extra.TITLE'),(32,46,'android.intent.extra.INTENT'),(33,44,'android.intent.extra.INTENT'),(34,47,'android.intent.extra.TITLE'),(35,48,'android.intent.extra.TITLE'),(36,49,'android.intent.extra.INTENT'),(37,47,'android.intent.extra.INTENT'),(38,48,'android.intent.extra.INTENT'),(39,51,'android.intent.extra.INTENT'),(40,50,'android.intent.extra.TITLE'),(41,52,'android.intent.extra.INTENT'),(42,50,'android.intent.extra.INTENT'),(43,53,'android.intent.extra.TITLE'),(44,54,'android.intent.extra.TITLE'),(45,55,'android.intent.extra.INTENT'),(46,53,'android.intent.extra.INTENT'),(47,54,'android.intent.extra.INTENT'),(48,56,'android.intent.extra.INTENT'),(49,57,'android.intent.extra.TITLE'),(50,58,'android.intent.extra.TITLE'),(51,57,'android.intent.extra.INTENT'),(52,58,'android.intent.extra.INTENT'),(53,59,'android.intent.extra.TITLE'),(54,60,'android.intent.extra.TITLE'),(55,59,'android.intent.extra.INTENT'),(56,60,'android.intent.extra.INTENT'),(57,61,'android.intent.extra.TITLE'),(58,61,'android.intent.extra.INTENT'),(59,64,'testResultId'),(60,66,'testResultId'),(61,67,'testDate'),(62,67,'testResultId'),(63,69,'testDate'),(64,69,'testResultId'),(65,77,'com.google.circles.platform.intent.extra.ACTION'),(66,77,'(.*)'),(67,77,'com.google.circles.platform.intent.extra.ENTITY'),(68,77,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(69,82,'overlayOrientation'),(70,82,'cachedAdView'),(71,83,'overlayOrientation'),(72,83,'cachedAdView'),(73,86,'command'),(74,89,'overlayOrientation'),(75,89,'cachedAdView'),(76,90,'overlayOrientation'),(77,90,'cachedAdView'),(78,98,'mominis.gameconsole.services.SocialServiceFactory.LAUNCH_EVENT_KEY'),(79,98,'mominis.gameconsole.services.SocialServiceFactory.BUNDLED_PACKAGE_NAME_KEY'),(80,99,'overlayOrientation'),(81,99,'cachedAdView'),(82,102,'com.google.circles.platform.intent.extra.ACTION'),(83,102,'(.*)'),(84,102,'com.google.circles.platform.intent.extra.ENTITY'),(85,102,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(86,108,'shippable.log.filename'),(87,109,'command'),(88,111,'overlayOrientation'),(89,111,'cachedAdView'),(90,119,'android.intent.extra.INTENT'),(91,120,'android.intent.extra.INTENT'),(92,121,'android.intent.extra.TITLE'),(93,121,'android.intent.extra.INTENT'),(94,122,'android.intent.extra.INTENT'),(95,123,'android.intent.extra.TITLE'),(96,123,'android.intent.extra.INTENT'),(97,124,'android.intent.extra.INTENT'),(98,125,'android.intent.extra.TITLE'),(99,125,'android.intent.extra.INTENT'),(100,126,'android.intent.extra.TITLE'),(101,126,'android.intent.extra.INTENT'),(102,133,'thread'),(103,133,'screenType'),(104,134,'leaderboard'),(105,134,'screenType'),(106,147,'USER_ID'),(107,147,'CLIENT_PACKAGE'),(108,147,'screenType'),(109,147,'URL_PARAMS'),(110,150,'com.google.circles.platform.intent.extra.ACTION'),(111,150,'(.*)'),(112,150,'com.google.circles.platform.intent.extra.ENTITY'),(113,150,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(114,155,'position'),(115,155,'brandPosition'),(116,155,'brandDrawable'),(117,155,'brandNames'),(118,155,'brandTO');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,1),(6,6,3),(7,7,3),(8,8,1),(9,9,2),(10,10,3),(11,11,1),(12,12,4),(13,13,6),(14,13,5),(15,14,2),(16,15,7),(17,16,8),(18,16,9),(19,16,10),(20,17,1),(21,18,11),(22,19,12),(23,20,3),(24,21,3),(25,22,16),(26,22,17),(27,23,22),(28,23,18),(29,23,19),(30,23,20),(31,23,21),(32,24,1),(33,25,18),(34,25,19),(35,25,20),(36,25,21),(37,25,22),(38,26,19),(39,26,20),(40,26,18),(41,26,21),(42,26,22),(43,27,22),(44,27,21),(45,27,20),(46,27,19),(47,27,18),(48,28,20),(49,28,19),(50,28,22),(51,28,21),(52,28,18),(53,29,22),(54,29,21),(55,29,20),(56,29,19),(57,29,18),(58,30,22),(59,30,21),(60,30,18),(61,30,20),(62,30,19),(63,31,3),(64,32,16),(65,32,17),(66,33,16),(67,33,25),(68,34,17),(69,34,25),(70,34,16),(71,35,25),(72,35,16),(73,35,17),(74,36,25),(75,36,16),(76,37,25),(77,37,16),(78,38,25),(79,38,16),(80,39,16),(81,39,25),(82,40,16),(83,40,25),(84,41,16),(85,41,25),(86,42,16),(87,42,25),(88,43,16),(89,43,25),(90,44,16),(91,44,25),(92,45,16),(93,45,25),(94,46,16),(95,46,25),(96,47,25),(97,47,16),(98,48,25),(99,48,16),(100,49,12),(101,50,12),(102,51,12),(103,52,12),(104,53,12),(105,54,12),(106,55,12),(107,56,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,5,1),(4,8,1),(5,11,1),(6,17,1),(7,24,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,16,NULL,NULL,NULL,'*mominis*',NULL,NULL),(2,16,'package',NULL,NULL,NULL,NULL,NULL),(3,23,'file',NULL,NULL,NULL,NULL,NULL),(4,25,'file',NULL,NULL,NULL,NULL,NULL),(5,26,'file',NULL,NULL,NULL,NULL,NULL),(6,27,'file',NULL,NULL,NULL,NULL,NULL),(7,28,'file',NULL,NULL,NULL,NULL,NULL),(8,29,'file',NULL,NULL,NULL,NULL,NULL),(9,30,'file',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,5,'image','*'),(2,9,'image','*'),(3,10,'image','*'),(4,14,'image','*'),(5,18,'image','*'),(6,19,'image','*'),(7,21,'(.*)','(.*)'),(8,23,'(.*)','(.*)'),(9,79,'(.*)','(.*)'),(10,81,'(.*)','(.*)'),(11,105,'(.*)','(.*)'),(12,107,'(.*)','(.*)'),(13,141,'(.*)','(.*)'),(14,143,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.bao.progimax.airhorn.free'),(2,11,'com.bao.progimax.airhorn.free'),(3,12,'com.google.android.apps.plus'),(4,31,'org.boa.zwanoo.android.speedtest'),(5,62,'org.boa.zwanoo.android.speedtest'),(6,63,'com.bao.progimax.airhorn.free'),(7,64,'org.boa.zwanoo.android.speedtest'),(8,66,'org.boa.zwanoo.android.speedtest'),(9,67,'org.boa.zwanoo.android.speedtest'),(10,69,'org.boa.zwanoo.android.speedtest'),(11,72,'org.boa.zwanoo.android.speedtest'),(12,74,'org.boa.zwanoo.android.speedtest'),(13,77,'com.google.android.apps.plus'),(14,82,'com.magmamobile.game.zzq.Plumber'),(15,83,'com.magmamobile.game.zzq.Plumber'),(16,84,'com.magmamobile.game.zzq.Plumber'),(17,87,'(.*)'),(18,88,'(.*)'),(19,89,'com.magmamobile.game.zzq.Plumber'),(20,90,'com.magmamobile.game.zzq.Plumber'),(21,98,'playscape.mominis.gameconsole.com'),(22,99,'mominis.boa.Generic_Android.Ninja_Chicken'),(23,101,'playscape.mominis.gameconsole.com'),(24,102,'com.google.android.apps.plus'),(25,103,'mominis.boa.Generic_Android.Ninja_Chicken'),(26,108,'mominis.boa.Generic_Android.Ninja_Chicken'),(27,111,'mominis.boa.Generic_Android.Ninja_Chicken'),(28,116,'logos.quiz.companies.zzq.game'),(29,117,'logos.quiz.companies.zzq.game'),(30,118,'logos.quiz.companies.zzq.game'),(31,132,'logos.quiz.companies.zzq.game'),(32,133,'logos.quiz.companies.zzq.game'),(33,134,'logos.quiz.companies.zzq.game'),(34,135,'logos.quiz.companies.zzq.game'),(35,139,'logos.quiz.companies.zzq.game'),(36,144,'logos.quiz.companies.zzq.game'),(37,146,'logos.quiz.companies.zzq.game'),(38,147,'logos.quiz.companies.zzq.game'),(39,150,'com.google.android.apps.plus'),(40,153,'logos.quiz.companies.zzq.game'),(41,154,'logos.quiz.companies.zzq.game'),(42,155,'logos.quiz.companies.zzq.game'),(43,156,'logos.quiz.companies.zzq.game'),(44,157,'logos.quiz.companies.zzq.game');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,8,0),(3,9,0),(4,10,0),(5,10,0),(6,24,0),(7,24,0),(8,25,0),(9,38,0),(10,39,0),(11,41,0),(12,48,0),(13,51,0),(14,52,0),(15,53,0),(16,55,0),(17,56,0),(18,57,0),(19,59,0),(20,61,0),(21,62,0),(22,64,0),(23,8,0),(24,65,0),(25,64,0),(26,67,0),(27,71,0),(28,74,0),(29,78,0),(30,9,0),(31,82,0),(32,64,0),(33,83,0),(34,84,0),(35,85,0),(36,57,0),(37,53,0),(38,51,0),(39,59,0),(40,86,0),(41,87,0),(42,55,0),(43,88,0),(44,62,0),(45,89,0),(46,52,0),(47,85,0),(48,90,0),(49,91,0),(50,90,0),(51,92,0),(52,93,0),(53,94,0),(54,82,0),(55,93,0),(56,92,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,3,1,0),(5,3,1,0),(6,3,1,0),(7,3,1,0),(8,3,1,0),(9,3,1,0),(10,3,1,0),(11,4,0,0),(12,5,0,0),(13,7,1,0),(14,7,1,0),(15,7,1,0),(16,7,1,0),(17,7,1,0),(18,7,1,0),(19,7,1,0),(20,8,1,0),(21,8,1,0),(22,8,1,0),(23,8,1,0),(24,9,1,0),(25,9,1,0),(26,10,1,0),(27,10,1,0),(28,10,1,0),(29,10,1,0),(30,10,1,0),(31,11,0,0),(32,10,1,0),(33,12,1,0),(34,10,1,0),(35,12,1,0),(36,10,1,0),(37,14,1,0),(38,15,1,0),(39,15,1,0),(40,18,1,0),(41,15,1,0),(42,19,1,0),(43,18,1,0),(44,18,1,0),(45,19,1,0),(46,15,1,0),(47,19,1,0),(48,15,1,0),(49,18,1,0),(50,18,1,0),(51,19,1,0),(52,15,1,0),(53,19,1,0),(54,15,1,0),(55,18,1,0),(56,19,1,0),(57,18,1,0),(58,15,1,0),(59,19,1,0),(60,18,1,0),(61,19,1,0),(62,21,0,0),(63,22,0,0),(64,24,0,0),(65,25,1,0),(66,26,0,0),(67,24,0,0),(68,25,1,0),(69,26,0,0),(70,27,1,0),(71,27,1,0),(72,28,0,0),(73,29,1,0),(74,30,0,0),(75,31,1,0),(76,31,1,0),(77,32,0,0),(78,33,1,0),(79,33,1,0),(80,33,1,0),(81,33,1,0),(82,34,0,0),(83,34,0,0),(84,35,0,0),(85,36,1,0),(86,37,1,0),(87,38,0,0),(88,38,0,0),(89,39,0,0),(90,39,0,0),(91,40,1,0),(92,41,1,0),(93,41,1,0),(94,42,1,0),(95,43,1,0),(96,43,1,0),(97,44,1,0),(98,45,0,0),(99,46,0,0),(100,47,1,0),(101,48,0,0),(102,49,0,0),(103,50,0,0),(104,51,1,0),(105,51,1,0),(106,51,1,0),(107,51,1,0),(108,52,0,0),(109,53,1,0),(110,54,1,0),(111,55,0,0),(112,56,1,0),(113,57,1,0),(114,58,1,0),(115,59,1,0),(116,60,0,0),(117,61,0,0),(118,62,0,0),(119,63,1,0),(120,63,1,0),(121,63,1,0),(122,63,1,0),(123,63,1,0),(124,63,1,0),(125,63,1,0),(126,63,1,0),(127,64,1,0),(128,65,1,0),(129,66,1,0),(130,66,1,0),(131,67,1,0),(132,68,0,0),(133,69,0,0),(134,70,0,0),(135,71,0,0),(136,72,1,0),(137,72,1,0),(138,73,1,0),(139,74,0,0),(140,75,1,0),(141,75,1,0),(142,75,1,0),(143,75,1,0),(144,76,0,0),(145,77,1,0),(146,78,0,0),(147,79,0,0),(148,80,1,0),(149,81,1,0),(150,82,0,0),(151,83,1,0),(152,83,1,0),(153,84,0,0),(154,85,0,0),(155,86,0,0),(156,87,0,0),(157,88,0,0);
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
INSERT INTO `PAuthorities` VALUES (1,1,'mominis.boa.Generic_Android.ninja_chicken.preferences');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(6,'android.permission.ACCESS_FINE_LOCATION'),(5,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.INTERNET'),(1,'android.permission.READ_PHONE_STATE'),(4,'android.permission.RECORD_AUDIO'),(9,'android.permission.VIBRATE'),(11,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(10,'com.mominis.permission.preferences.provider.READ_WRITE');
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
INSERT INTO `Permissions` VALUES (10,'s');
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
INSERT INTO `Providers` VALUES (1,63,0,'com.mominis.permission.preferences.provider.READ_WRITE','com.mominis.permission.preferences.provider.READ_WRITE');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'http://NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=org.zwanoo.android.speedtest',NULL,NULL,NULL),(12,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'http://NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=org.zwanoo.android.speedtest',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(28,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(29,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'market://details?id=com.magmamobile.game.zzq.Plumber',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'http://api.swarmconnect.com//privacy.html',NULL,NULL,NULL),(50,NULL,NULL,'market://search?q=Mateusz+Klaczak',NULL,NULL,NULL),(51,NULL,NULL,'market://details?id=logos.quiz.companies.game',NULL,NULL,NULL),(52,NULL,NULL,'market://details?id=flag.quiz.world.national.names.learn',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'http://api.swarmconnect.com//privacy.html',NULL,NULL,NULL),(55,NULL,NULL,'market://details?id=flag.quiz.world.national.names.learn',NULL,NULL,NULL),(56,NULL,NULL,'(.*)',NULL,NULL,NULL),(57,NULL,NULL,'market://details?id=logos.quiz.companies.game',NULL,NULL,NULL),(58,NULL,NULL,'(.*)',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(63,NULL,NULL,'market://search?q=bubble+co.',NULL,NULL,NULL),(64,NULL,NULL,'market://details?id=NULL-CONSTANT',NULL,NULL,NULL),(65,NULL,NULL,'market://details?id=flag.quiz.world.national.names.learn',NULL,NULL,NULL),(66,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,20,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,5),(10,2,6),(11,2,7),(12,2,8),(13,3,1),(14,3,2),(15,3,3),(16,3,5),(17,3,7),(18,3,9),(19,4,1),(20,4,2),(21,4,3),(22,4,5),(23,4,10),(24,4,11),(25,5,1),(26,5,2),(27,5,3),(28,5,5),(29,5,7),(30,6,1),(31,6,2),(32,6,3),(33,6,5),(34,6,7),(35,6,9);
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

-- Dump completed on 2015-10-09  0:41:09
