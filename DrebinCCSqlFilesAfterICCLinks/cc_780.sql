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
) ENGINE=InnoDB AUTO_INCREMENT=2241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,4,56,2,NULL),(2,103,40,2,NULL),(3,6,56,2,NULL),(4,4,41,2,NULL),(5,7,56,2,NULL),(6,6,41,2,NULL),(7,8,56,2,NULL),(8,7,41,2,NULL),(9,13,56,2,NULL),(10,8,41,2,NULL),(11,15,56,2,NULL),(12,13,41,2,NULL),(13,16,56,2,NULL),(14,15,41,2,NULL),(15,17,56,2,NULL),(16,16,41,2,NULL),(17,26,56,2,NULL),(18,17,41,2,NULL),(19,27,56,2,NULL),(20,26,41,2,NULL),(21,28,56,2,NULL),(22,27,41,2,NULL),(23,29,56,2,NULL),(24,28,41,2,NULL),(25,30,56,2,NULL),(26,29,41,2,NULL),(27,32,56,2,NULL),(28,30,41,2,NULL),(29,34,56,2,NULL),(30,32,41,2,NULL),(31,36,56,2,NULL),(32,34,41,2,NULL),(33,38,56,2,NULL),(34,36,41,2,NULL),(35,39,56,2,NULL),(36,38,41,2,NULL),(37,41,56,2,NULL),(38,39,41,2,NULL),(39,46,56,2,NULL),(40,41,41,2,NULL),(41,48,56,2,NULL),(42,46,41,2,NULL),(43,52,56,2,NULL),(44,48,41,2,NULL),(45,54,56,2,NULL),(46,52,41,2,NULL),(47,58,56,2,NULL),(48,54,41,2,NULL),(49,20,56,2,NULL),(50,58,41,2,NULL),(51,22,56,2,NULL),(52,20,41,2,NULL),(53,40,56,2,NULL),(54,22,41,2,NULL),(55,43,56,2,NULL),(56,40,41,2,NULL),(57,44,56,2,NULL),(58,43,41,2,NULL),(59,49,56,2,NULL),(60,44,41,2,NULL),(61,50,56,2,NULL),(62,49,41,2,NULL),(63,55,56,2,NULL),(64,50,41,2,NULL),(65,57,56,2,NULL),(66,55,41,2,NULL),(67,60,56,2,NULL),(68,57,41,2,NULL),(69,42,56,2,NULL),(70,60,41,2,NULL),(71,45,56,2,NULL),(72,42,41,2,NULL),(73,47,56,2,NULL),(74,45,41,2,NULL),(75,51,56,2,NULL),(76,47,41,2,NULL),(77,53,56,2,NULL),(78,51,41,2,NULL),(79,56,56,2,NULL),(80,53,41,2,NULL),(81,59,56,2,NULL),(82,56,41,2,NULL),(83,61,56,2,NULL),(84,59,41,2,NULL),(85,78,56,2,NULL),(86,61,41,2,NULL),(87,80,56,2,NULL),(88,78,41,2,NULL),(89,75,56,2,NULL),(90,80,41,2,NULL),(91,76,56,2,NULL),(92,75,41,2,NULL),(93,85,56,2,NULL),(94,76,41,2,NULL),(95,92,56,2,NULL),(96,85,41,2,NULL),(97,93,56,2,NULL),(98,92,41,2,NULL),(99,94,56,2,NULL),(100,93,41,2,NULL),(101,95,56,2,NULL),(102,94,41,2,NULL),(103,96,56,2,NULL),(104,95,41,2,NULL),(105,91,56,2,NULL),(106,96,41,2,NULL),(107,104,56,2,NULL),(108,91,41,2,NULL),(109,106,56,2,NULL),(110,104,41,2,NULL),(111,100,56,2,NULL),(112,106,41,2,NULL),(113,110,56,2,NULL),(114,100,41,2,NULL),(115,112,56,2,NULL),(116,110,41,2,NULL),(117,113,56,2,NULL),(118,112,41,2,NULL),(119,114,56,2,NULL),(120,113,41,2,NULL),(121,137,56,2,NULL),(122,114,41,2,NULL),(123,130,56,2,NULL),(124,137,41,2,NULL),(125,152,56,2,NULL),(126,130,41,2,NULL),(127,140,56,2,NULL),(128,152,41,2,NULL),(129,142,56,2,NULL),(130,140,41,2,NULL),(131,4,61,2,NULL),(132,142,41,2,NULL),(133,6,61,2,NULL),(134,104,1,2,NULL),(135,7,61,2,NULL),(136,106,1,2,NULL),(137,8,61,2,NULL),(138,104,8,2,NULL),(139,13,61,2,NULL),(140,106,8,2,NULL),(141,15,61,2,NULL),(142,104,9,2,NULL),(143,16,61,2,NULL),(144,106,9,2,NULL),(145,17,61,2,NULL),(146,104,64,2,NULL),(147,26,61,2,NULL),(148,106,64,2,NULL),(149,27,61,2,NULL),(150,104,10,2,NULL),(151,28,61,2,NULL),(152,106,10,2,NULL),(153,29,61,2,NULL),(154,104,24,2,NULL),(155,30,61,2,NULL),(156,106,24,2,NULL),(157,32,61,2,NULL),(158,104,25,2,NULL),(159,34,61,2,NULL),(160,106,25,2,NULL),(161,36,61,2,NULL),(162,104,38,2,NULL),(163,38,61,2,NULL),(164,106,38,2,NULL),(165,39,61,2,NULL),(166,104,39,2,NULL),(167,41,61,2,NULL),(168,106,39,2,NULL),(169,46,61,2,NULL),(170,104,83,2,NULL),(171,48,61,2,NULL),(172,106,83,2,NULL),(173,52,61,2,NULL),(174,104,84,2,NULL),(175,54,61,2,NULL),(176,106,84,2,NULL),(177,58,61,2,NULL),(178,104,48,2,NULL),(179,20,61,2,NULL),(180,106,48,2,NULL),(181,22,61,2,NULL),(182,104,51,2,NULL),(183,40,61,2,NULL),(184,106,51,2,NULL),(185,43,61,2,NULL),(186,104,52,2,NULL),(187,44,61,2,NULL),(188,106,52,2,NULL),(189,49,61,2,NULL),(190,104,53,2,NULL),(191,50,61,2,NULL),(192,106,53,2,NULL),(193,55,61,2,NULL),(194,104,55,2,NULL),(195,57,61,2,NULL),(196,106,55,2,NULL),(197,60,61,2,NULL),(198,104,57,2,NULL),(199,42,61,2,NULL),(200,106,57,2,NULL),(201,45,61,2,NULL),(202,104,59,2,NULL),(203,47,61,2,NULL),(204,106,59,2,NULL),(205,51,61,2,NULL),(206,104,62,2,NULL),(207,53,61,2,NULL),(208,106,62,2,NULL),(209,56,61,2,NULL),(210,104,85,2,NULL),(211,59,61,2,NULL),(212,106,85,2,NULL),(213,61,61,2,NULL),(214,104,86,2,NULL),(215,78,61,2,NULL),(216,106,86,2,NULL),(217,80,61,2,NULL),(218,104,87,2,NULL),(219,75,61,2,NULL),(220,106,87,2,NULL),(221,76,61,2,NULL),(222,104,88,2,NULL),(223,85,61,2,NULL),(224,106,88,2,NULL),(225,92,61,2,NULL),(226,104,89,2,NULL),(227,93,61,2,NULL),(228,106,89,2,NULL),(229,94,61,2,NULL),(230,104,61,2,NULL),(231,95,61,2,NULL),(232,106,61,2,NULL),(233,96,61,2,NULL),(234,104,65,2,NULL),(235,91,61,2,NULL),(236,106,65,2,NULL),(237,100,61,2,NULL),(238,104,82,2,NULL),(239,110,61,2,NULL),(240,106,82,2,NULL),(241,112,61,2,NULL),(242,104,90,2,NULL),(243,113,61,2,NULL),(244,106,90,2,NULL),(245,114,61,2,NULL),(246,104,91,2,NULL),(247,137,61,2,NULL),(248,106,91,2,NULL),(249,130,61,2,NULL),(250,104,92,2,NULL),(251,152,61,2,NULL),(252,106,92,2,NULL),(253,140,61,2,NULL),(254,104,93,2,NULL),(255,142,61,2,NULL),(256,106,93,2,NULL),(257,104,94,2,NULL),(258,106,94,2,NULL),(259,99,32,2,NULL),(260,99,43,2,NULL),(261,111,32,2,NULL),(262,111,43,2,NULL),(263,100,1,2,NULL),(264,110,1,2,NULL),(265,112,1,2,NULL),(266,113,1,2,NULL),(267,114,1,2,NULL),(268,100,8,2,NULL),(269,110,8,2,NULL),(270,112,8,2,NULL),(271,113,8,2,NULL),(272,114,8,2,NULL),(273,100,9,2,NULL),(274,110,9,2,NULL),(275,112,9,2,NULL),(276,113,9,2,NULL),(277,114,9,2,NULL),(278,100,64,2,NULL),(279,110,64,2,NULL),(280,112,64,2,NULL),(281,113,64,2,NULL),(282,114,64,2,NULL),(283,100,10,2,NULL),(284,110,10,2,NULL),(285,112,10,2,NULL),(286,113,10,2,NULL),(287,114,10,2,NULL),(288,100,24,2,NULL),(289,110,24,2,NULL),(290,112,24,2,NULL),(291,113,24,2,NULL),(292,114,24,2,NULL),(293,100,25,2,NULL),(294,110,25,2,NULL),(295,112,25,2,NULL),(296,113,25,2,NULL),(297,114,25,2,NULL),(298,100,38,2,NULL),(299,110,38,2,NULL),(300,112,38,2,NULL),(301,113,38,2,NULL),(302,114,38,2,NULL),(303,100,39,2,NULL),(304,110,39,2,NULL),(305,112,39,2,NULL),(306,113,39,2,NULL),(307,114,39,2,NULL),(308,100,83,2,NULL),(309,110,83,2,NULL),(310,112,83,2,NULL),(311,113,83,2,NULL),(312,114,83,2,NULL),(313,100,84,2,NULL),(314,110,84,2,NULL),(315,112,84,2,NULL),(316,113,84,2,NULL),(317,114,84,2,NULL),(318,100,48,2,NULL),(319,110,48,2,NULL),(320,112,48,2,NULL),(321,113,48,2,NULL),(322,114,48,2,NULL),(323,100,51,2,NULL),(324,110,51,2,NULL),(325,112,51,2,NULL),(326,113,51,2,NULL),(327,114,51,2,NULL),(328,100,52,2,NULL),(329,110,52,2,NULL),(330,112,52,2,NULL),(331,113,52,2,NULL),(332,114,52,2,NULL),(333,100,53,2,NULL),(334,110,53,2,NULL),(335,112,53,2,NULL),(336,113,53,2,NULL),(337,114,53,2,NULL),(338,100,55,2,NULL),(339,110,55,2,NULL),(340,112,55,2,NULL),(341,113,55,2,NULL),(342,114,55,2,NULL),(343,100,57,2,NULL),(344,110,57,2,NULL),(345,112,57,2,NULL),(346,113,57,2,NULL),(347,114,57,2,NULL),(348,100,59,2,NULL),(349,110,59,2,NULL),(350,112,59,2,NULL),(351,113,59,2,NULL),(352,114,59,2,NULL),(353,100,62,2,NULL),(354,110,62,2,NULL),(355,112,62,2,NULL),(356,113,62,2,NULL),(357,114,62,2,NULL),(358,100,85,2,NULL),(359,110,85,2,NULL),(360,112,85,2,NULL),(361,113,85,2,NULL),(362,114,85,2,NULL),(363,100,86,2,NULL),(364,110,86,2,NULL),(365,112,86,2,NULL),(366,113,86,2,NULL),(367,114,86,2,NULL),(368,100,87,2,NULL),(369,110,87,2,NULL),(370,112,87,2,NULL),(371,113,87,2,NULL),(372,114,87,2,NULL),(373,100,88,2,NULL),(374,110,88,2,NULL),(375,112,88,2,NULL),(376,113,88,2,NULL),(377,114,88,2,NULL),(378,100,89,2,NULL),(379,110,89,2,NULL),(380,112,89,2,NULL),(381,113,89,2,NULL),(382,114,89,2,NULL),(383,100,65,2,NULL),(384,110,65,2,NULL),(385,112,65,2,NULL),(386,113,65,2,NULL),(387,114,65,2,NULL),(388,100,82,2,NULL),(389,110,82,2,NULL),(390,112,82,2,NULL),(391,113,82,2,NULL),(392,114,82,2,NULL),(393,100,90,2,NULL),(394,110,90,2,NULL),(395,112,90,2,NULL),(396,113,90,2,NULL),(397,114,90,2,NULL),(398,100,91,2,NULL),(399,110,91,2,NULL),(400,112,91,2,NULL),(401,113,91,2,NULL),(402,114,91,2,NULL),(403,100,92,2,NULL),(404,110,92,2,NULL),(405,112,92,2,NULL),(406,113,92,2,NULL),(407,114,92,2,NULL),(408,100,93,2,NULL),(409,110,93,2,NULL),(410,112,93,2,NULL),(411,113,93,2,NULL),(412,114,93,2,NULL),(413,100,94,2,NULL),(414,110,94,2,NULL),(415,112,94,2,NULL),(416,113,94,2,NULL),(417,114,94,2,NULL),(418,4,48,2,NULL),(419,6,48,2,NULL),(420,7,48,2,NULL),(421,8,48,2,NULL),(422,13,48,2,NULL),(423,15,48,2,NULL),(424,16,48,2,NULL),(425,17,48,2,NULL),(426,26,48,2,NULL),(427,27,48,2,NULL),(428,28,48,2,NULL),(429,29,48,2,NULL),(430,30,48,2,NULL),(431,32,48,2,NULL),(432,34,48,2,NULL),(433,36,48,2,NULL),(434,38,48,2,NULL),(435,39,48,2,NULL),(436,41,48,2,NULL),(437,46,48,2,NULL),(438,48,48,2,NULL),(439,52,48,2,NULL),(440,54,48,2,NULL),(441,58,48,2,NULL),(442,20,48,2,NULL),(443,22,48,2,NULL),(444,40,48,2,NULL),(445,43,48,2,NULL),(446,44,48,2,NULL),(447,49,48,2,NULL),(448,50,48,2,NULL),(449,55,48,2,NULL),(450,57,48,2,NULL),(451,60,48,2,NULL),(452,42,48,2,NULL),(453,45,48,2,NULL),(454,47,48,2,NULL),(455,51,48,2,NULL),(456,53,48,2,NULL),(457,56,48,2,NULL),(458,59,48,2,NULL),(459,61,48,2,NULL),(460,78,48,2,NULL),(461,80,48,2,NULL),(462,75,48,2,NULL),(463,76,48,2,NULL),(464,85,48,2,NULL),(465,92,48,2,NULL),(466,93,48,2,NULL),(467,94,48,2,NULL),(468,95,48,2,NULL),(469,96,48,2,NULL),(470,91,48,2,NULL),(471,137,48,2,NULL),(472,130,48,2,NULL),(473,152,48,2,NULL),(474,140,48,2,NULL),(475,142,48,2,NULL),(476,4,51,2,NULL),(477,6,51,2,NULL),(478,7,51,2,NULL),(479,8,51,2,NULL),(480,13,51,2,NULL),(481,15,51,2,NULL),(482,16,51,2,NULL),(483,17,51,2,NULL),(484,26,51,2,NULL),(485,27,51,2,NULL),(486,28,51,2,NULL),(487,29,51,2,NULL),(488,30,51,2,NULL),(489,32,51,2,NULL),(490,34,51,2,NULL),(491,36,51,2,NULL),(492,38,51,2,NULL),(493,39,51,2,NULL),(494,41,51,2,NULL),(495,46,51,2,NULL),(496,48,51,2,NULL),(497,52,51,2,NULL),(498,54,51,2,NULL),(499,58,51,2,NULL),(500,20,51,2,NULL),(501,22,51,2,NULL),(502,40,51,2,NULL),(503,43,51,2,NULL),(504,44,51,2,NULL),(505,49,51,2,NULL),(506,50,51,2,NULL),(507,55,51,2,NULL),(508,57,51,2,NULL),(509,60,51,2,NULL),(510,42,51,2,NULL),(511,45,51,2,NULL),(512,47,51,2,NULL),(513,51,51,2,NULL),(514,53,51,2,NULL),(515,56,51,2,NULL),(516,59,51,2,NULL),(517,61,51,2,NULL),(518,78,51,2,NULL),(519,80,51,2,NULL),(520,75,51,2,NULL),(521,76,51,2,NULL),(522,85,51,2,NULL),(523,92,51,2,NULL),(524,93,51,2,NULL),(525,94,51,2,NULL),(526,95,51,2,NULL),(527,96,51,2,NULL),(528,91,51,2,NULL),(529,137,51,2,NULL),(530,130,51,2,NULL),(531,152,51,2,NULL),(532,140,51,2,NULL),(533,142,51,2,NULL),(534,4,52,2,NULL),(535,6,52,2,NULL),(536,7,52,2,NULL),(537,8,52,2,NULL),(538,13,52,2,NULL),(539,15,52,2,NULL),(540,16,52,2,NULL),(541,17,52,2,NULL),(542,26,52,2,NULL),(543,27,52,2,NULL),(544,28,52,2,NULL),(545,29,52,2,NULL),(546,30,52,2,NULL),(547,32,52,2,NULL),(548,34,52,2,NULL),(549,36,52,2,NULL),(550,38,52,2,NULL),(551,39,52,2,NULL),(552,41,52,2,NULL),(553,46,52,2,NULL),(554,48,52,2,NULL),(555,52,52,2,NULL),(556,54,52,2,NULL),(557,58,52,2,NULL),(558,20,52,2,NULL),(559,22,52,2,NULL),(560,40,52,2,NULL),(561,43,52,2,NULL),(562,44,52,2,NULL),(563,49,52,2,NULL),(564,50,52,2,NULL),(565,55,52,2,NULL),(566,57,52,2,NULL),(567,60,52,2,NULL),(568,42,52,2,NULL),(569,45,52,2,NULL),(570,47,52,2,NULL),(571,51,52,2,NULL),(572,53,52,2,NULL),(573,56,52,2,NULL),(574,59,52,2,NULL),(575,61,52,2,NULL),(576,78,52,2,NULL),(577,80,52,2,NULL),(578,75,52,2,NULL),(579,76,52,2,NULL),(580,85,52,2,NULL),(581,92,52,2,NULL),(582,93,52,2,NULL),(583,94,52,2,NULL),(584,95,52,2,NULL),(585,96,52,2,NULL),(586,91,52,2,NULL),(587,137,52,2,NULL),(588,130,52,2,NULL),(589,152,52,2,NULL),(590,140,52,2,NULL),(591,142,52,2,NULL),(592,4,53,2,NULL),(593,6,53,2,NULL),(594,7,53,2,NULL),(595,8,53,2,NULL),(596,13,53,2,NULL),(597,15,53,2,NULL),(598,16,53,2,NULL),(599,17,53,2,NULL),(600,26,53,2,NULL),(601,27,53,2,NULL),(602,28,53,2,NULL),(603,29,53,2,NULL),(604,30,53,2,NULL),(605,32,53,2,NULL),(606,34,53,2,NULL),(607,36,53,2,NULL),(608,38,53,2,NULL),(609,39,53,2,NULL),(610,41,53,2,NULL),(611,46,53,2,NULL),(612,48,53,2,NULL),(613,52,53,2,NULL),(614,54,53,2,NULL),(615,58,53,2,NULL),(616,20,53,2,NULL),(617,22,53,2,NULL),(618,40,53,2,NULL),(619,43,53,2,NULL),(620,44,53,2,NULL),(621,49,53,2,NULL),(622,50,53,2,NULL),(623,55,53,2,NULL),(624,57,53,2,NULL),(625,60,53,2,NULL),(626,42,53,2,NULL),(627,45,53,2,NULL),(628,47,53,2,NULL),(629,51,53,2,NULL),(630,53,53,2,NULL),(631,56,53,2,NULL),(632,59,53,2,NULL),(633,61,53,2,NULL),(634,78,53,2,NULL),(635,80,53,2,NULL),(636,75,53,2,NULL),(637,76,53,2,NULL),(638,85,53,2,NULL),(639,92,53,2,NULL),(640,93,53,2,NULL),(641,94,53,2,NULL),(642,95,53,2,NULL),(643,96,53,2,NULL),(644,91,53,2,NULL),(645,137,53,2,NULL),(646,62,11,2,NULL),(647,130,53,2,NULL),(648,74,11,2,NULL),(649,152,53,2,NULL),(650,4,10,2,NULL),(651,140,53,2,NULL),(652,6,10,2,NULL),(653,142,53,2,NULL),(654,7,10,2,NULL),(655,4,55,2,NULL),(656,8,10,2,NULL),(657,6,55,2,NULL),(658,13,10,2,NULL),(659,7,55,2,NULL),(660,15,10,2,NULL),(661,8,55,2,NULL),(662,16,10,2,NULL),(663,13,55,2,NULL),(664,17,10,2,NULL),(665,15,55,2,NULL),(666,26,10,2,NULL),(667,16,55,2,NULL),(668,27,10,2,NULL),(669,17,55,2,NULL),(670,117,68,2,NULL),(671,28,10,2,NULL),(672,26,55,2,NULL),(673,132,72,2,NULL),(674,29,10,2,NULL),(675,27,55,2,NULL),(676,144,72,2,NULL),(677,30,10,2,NULL),(678,28,55,2,NULL),(679,157,73,2,NULL),(680,32,10,2,NULL),(681,29,55,2,NULL),(682,4,65,2,NULL),(683,34,10,2,NULL),(684,30,55,2,NULL),(685,6,65,2,NULL),(686,36,10,2,NULL),(687,32,55,2,NULL),(688,7,65,2,NULL),(689,38,10,2,NULL),(690,34,55,2,NULL),(691,8,65,2,NULL),(692,39,10,2,NULL),(693,36,55,2,NULL),(694,13,65,2,NULL),(695,41,10,2,NULL),(696,38,55,2,NULL),(697,15,65,2,NULL),(698,46,10,2,NULL),(699,39,55,2,NULL),(700,16,65,2,NULL),(701,48,10,2,NULL),(702,41,55,2,NULL),(703,17,65,2,NULL),(704,52,10,2,NULL),(705,46,55,2,NULL),(706,26,65,2,NULL),(707,54,10,2,NULL),(708,48,55,2,NULL),(709,27,65,2,NULL),(710,58,10,2,NULL),(711,52,55,2,NULL),(712,28,65,2,NULL),(713,20,10,2,NULL),(714,54,55,2,NULL),(715,29,65,2,NULL),(716,22,10,2,NULL),(717,58,55,2,NULL),(718,30,65,2,NULL),(719,40,10,2,NULL),(720,20,55,2,NULL),(721,32,65,2,NULL),(722,43,10,2,NULL),(723,22,55,2,NULL),(724,34,65,2,NULL),(725,44,10,2,NULL),(726,40,55,2,NULL),(727,36,65,2,NULL),(728,49,10,2,NULL),(729,43,55,2,NULL),(730,38,65,2,NULL),(731,50,10,2,NULL),(732,44,55,2,NULL),(733,39,65,2,NULL),(734,55,10,2,NULL),(735,49,55,2,NULL),(736,41,65,2,NULL),(737,57,10,2,NULL),(738,50,55,2,NULL),(739,46,65,2,NULL),(740,60,10,2,NULL),(741,55,55,2,NULL),(742,48,65,2,NULL),(743,42,10,2,NULL),(744,57,55,2,NULL),(745,52,65,2,NULL),(746,45,10,2,NULL),(747,60,55,2,NULL),(748,54,65,2,NULL),(749,47,10,2,NULL),(750,42,55,2,NULL),(751,58,65,2,NULL),(752,51,10,2,NULL),(753,45,55,2,NULL),(754,20,65,2,NULL),(755,53,10,2,NULL),(756,47,55,2,NULL),(757,22,65,2,NULL),(758,56,10,2,NULL),(759,51,55,2,NULL),(760,40,65,2,NULL),(761,59,10,2,NULL),(762,53,55,2,NULL),(763,43,65,2,NULL),(764,61,10,2,NULL),(765,56,55,2,NULL),(766,44,65,2,NULL),(767,78,10,2,NULL),(768,59,55,2,NULL),(769,49,65,2,NULL),(770,80,10,2,NULL),(771,61,55,2,NULL),(772,50,65,2,NULL),(773,75,10,2,NULL),(774,78,55,2,NULL),(775,55,65,2,NULL),(776,76,10,2,NULL),(777,80,55,2,NULL),(778,57,65,2,NULL),(779,85,10,2,NULL),(780,75,55,2,NULL),(781,60,65,2,NULL),(782,92,10,2,NULL),(783,76,55,2,NULL),(784,42,65,2,NULL),(785,93,10,2,NULL),(786,85,55,2,NULL),(787,45,65,2,NULL),(788,94,10,2,NULL),(789,92,55,2,NULL),(790,47,65,2,NULL),(791,95,10,2,NULL),(792,93,55,2,NULL),(793,51,65,2,NULL),(794,96,10,2,NULL),(795,94,55,2,NULL),(796,53,65,2,NULL),(797,91,10,2,NULL),(798,95,55,2,NULL),(799,56,65,2,NULL),(800,137,10,2,NULL),(801,96,55,2,NULL),(802,59,65,2,NULL),(803,130,10,2,NULL),(804,91,55,2,NULL),(805,61,65,2,NULL),(806,152,10,2,NULL),(807,78,65,2,NULL),(808,137,55,2,NULL),(809,140,10,2,NULL),(810,130,55,2,NULL),(811,80,65,2,NULL),(812,142,10,2,NULL),(813,152,55,2,NULL),(814,75,65,2,NULL),(815,64,15,2,NULL),(816,140,55,2,NULL),(817,76,65,2,NULL),(818,67,15,2,NULL),(819,142,55,2,NULL),(820,85,65,2,NULL),(821,66,15,2,NULL),(822,4,57,2,NULL),(823,92,65,2,NULL),(824,69,15,2,NULL),(825,6,57,2,NULL),(826,93,65,2,NULL),(827,40,1,2,NULL),(828,7,57,2,NULL),(829,94,65,2,NULL),(830,43,1,2,NULL),(831,8,57,2,NULL),(832,95,65,2,NULL),(833,44,1,2,NULL),(834,13,57,2,NULL),(835,96,65,2,NULL),(836,49,1,2,NULL),(837,15,57,2,NULL),(838,91,65,2,NULL),(839,50,1,2,NULL),(840,16,57,2,NULL),(841,137,65,2,NULL),(842,55,1,2,NULL),(843,17,57,2,NULL),(844,130,65,2,NULL),(845,57,1,2,NULL),(846,152,65,2,NULL),(847,26,57,2,NULL),(848,60,1,2,NULL),(849,27,57,2,NULL),(850,140,65,2,NULL),(851,42,1,2,NULL),(852,28,57,2,NULL),(853,142,65,2,NULL),(854,45,1,2,NULL),(855,29,57,2,NULL),(856,135,68,2,NULL),(857,47,1,2,NULL),(858,30,57,2,NULL),(859,139,68,2,NULL),(860,51,1,2,NULL),(861,32,57,2,NULL),(862,137,1,2,NULL),(863,53,1,2,NULL),(864,34,57,2,NULL),(865,137,8,2,NULL),(866,56,1,2,NULL),(867,36,57,2,NULL),(868,137,9,2,NULL),(869,59,1,2,NULL),(870,38,57,2,NULL),(871,137,64,2,NULL),(872,61,1,2,NULL),(873,39,57,2,NULL),(874,137,24,2,NULL),(875,40,8,2,NULL),(876,41,57,2,NULL),(877,137,25,2,NULL),(878,43,8,2,NULL),(879,46,57,2,NULL),(880,137,38,2,NULL),(881,44,8,2,NULL),(882,48,57,2,NULL),(883,137,39,2,NULL),(884,49,8,2,NULL),(885,52,57,2,NULL),(886,137,83,2,NULL),(887,50,8,2,NULL),(888,54,57,2,NULL),(889,137,84,2,NULL),(890,55,8,2,NULL),(891,58,57,2,NULL),(892,137,57,2,NULL),(893,57,8,2,NULL),(894,20,57,2,NULL),(895,137,59,2,NULL),(896,60,8,2,NULL),(897,22,57,2,NULL),(898,137,62,2,NULL),(899,42,8,2,NULL),(900,40,57,2,NULL),(901,137,85,2,NULL),(902,45,8,2,NULL),(903,43,57,2,NULL),(904,137,86,2,NULL),(905,47,8,2,NULL),(906,137,87,2,NULL),(907,44,57,2,NULL),(908,51,8,2,NULL),(909,137,88,2,NULL),(910,49,57,2,NULL),(911,53,8,2,NULL),(912,50,57,2,NULL),(913,137,89,2,NULL),(914,56,8,2,NULL),(915,55,57,2,NULL),(916,137,82,2,NULL),(917,59,8,2,NULL),(918,57,57,2,NULL),(919,137,90,2,NULL),(920,61,8,2,NULL),(921,60,57,2,NULL),(922,137,91,2,NULL),(923,40,9,2,NULL),(924,42,57,2,NULL),(925,137,92,2,NULL),(926,43,9,2,NULL),(927,45,57,2,NULL),(928,137,93,2,NULL),(929,44,9,2,NULL),(930,47,57,2,NULL),(931,137,94,2,NULL),(932,49,9,2,NULL),(933,51,57,2,NULL),(934,118,66,2,NULL),(935,50,9,2,NULL),(936,53,57,2,NULL),(937,146,65,2,NULL),(938,55,9,2,NULL),(939,56,57,2,NULL),(940,156,65,2,NULL),(941,57,9,2,NULL),(942,59,57,2,NULL),(943,130,1,2,NULL),(944,60,9,2,NULL),(945,130,8,2,NULL),(946,61,57,2,NULL),(947,42,9,2,NULL),(948,130,9,2,NULL),(949,78,57,2,NULL),(950,45,9,2,NULL),(951,80,57,2,NULL),(952,130,64,2,NULL),(953,47,9,2,NULL),(954,75,57,2,NULL),(955,130,24,2,NULL),(956,51,9,2,NULL),(957,76,57,2,NULL),(958,130,25,2,NULL),(959,53,9,2,NULL),(960,85,57,2,NULL),(961,130,38,2,NULL),(962,56,9,2,NULL),(963,130,39,2,NULL),(964,92,57,2,NULL),(965,59,9,2,NULL),(966,130,83,2,NULL),(967,93,57,2,NULL),(968,61,9,2,NULL),(969,130,84,2,NULL),(970,94,57,2,NULL),(971,40,64,2,NULL),(972,95,57,2,NULL),(973,130,57,2,NULL),(974,43,64,2,NULL),(975,96,57,2,NULL),(976,130,59,2,NULL),(977,44,64,2,NULL),(978,91,57,2,NULL),(979,130,62,2,NULL),(980,49,64,2,NULL),(981,130,85,2,NULL),(982,152,57,2,NULL),(983,50,64,2,NULL),(984,140,57,2,NULL),(985,130,86,2,NULL),(986,55,64,2,NULL),(987,130,87,2,NULL),(988,142,57,2,NULL),(989,57,64,2,NULL),(990,130,88,2,NULL),(991,4,59,2,NULL),(992,60,64,2,NULL),(993,6,59,2,NULL),(994,130,89,2,NULL),(995,42,64,2,NULL),(996,7,59,2,NULL),(997,130,82,2,NULL),(998,45,64,2,NULL),(999,8,59,2,NULL),(1000,130,90,2,NULL),(1001,47,64,2,NULL),(1002,13,59,2,NULL),(1003,130,91,2,NULL),(1004,51,64,2,NULL),(1005,15,59,2,NULL),(1006,130,92,2,NULL),(1007,53,64,2,NULL),(1008,16,59,2,NULL),(1009,130,93,2,NULL),(1010,56,64,2,NULL),(1011,17,59,2,NULL),(1012,130,94,2,NULL),(1013,59,64,2,NULL),(1014,26,59,2,NULL),(1015,152,1,2,NULL),(1016,61,64,2,NULL),(1017,27,59,2,NULL),(1018,152,8,2,NULL),(1019,40,24,2,NULL),(1020,28,59,2,NULL),(1021,152,9,2,NULL),(1022,43,24,2,NULL),(1023,152,64,2,NULL),(1024,29,59,2,NULL),(1025,44,24,2,NULL),(1026,30,59,2,NULL),(1027,152,24,2,NULL),(1028,49,24,2,NULL),(1029,32,59,2,NULL),(1030,152,25,2,NULL),(1031,50,24,2,NULL),(1032,34,59,2,NULL),(1033,152,38,2,NULL),(1034,55,24,2,NULL),(1035,152,39,2,NULL),(1036,36,59,2,NULL),(1037,57,24,2,NULL),(1038,152,83,2,NULL),(1039,38,59,2,NULL),(1040,60,24,2,NULL),(1041,152,84,2,NULL),(1042,39,59,2,NULL),(1043,42,24,2,NULL),(1044,41,59,2,NULL),(1045,152,59,2,NULL),(1046,45,24,2,NULL),(1047,46,59,2,NULL),(1048,152,62,2,NULL),(1049,47,24,2,NULL),(1050,48,59,2,NULL),(1051,152,85,2,NULL),(1052,51,24,2,NULL),(1053,52,59,2,NULL),(1054,152,86,2,NULL),(1055,53,24,2,NULL),(1056,54,59,2,NULL),(1057,152,87,2,NULL),(1058,56,24,2,NULL),(1059,152,88,2,NULL),(1060,58,59,2,NULL),(1061,59,24,2,NULL),(1062,152,89,2,NULL),(1063,20,59,2,NULL),(1064,61,24,2,NULL),(1065,22,59,2,NULL),(1066,152,82,2,NULL),(1067,40,25,2,NULL),(1068,40,59,2,NULL),(1069,152,90,2,NULL),(1070,43,25,2,NULL),(1071,43,59,2,NULL),(1072,152,91,2,NULL),(1073,44,25,2,NULL),(1074,44,59,2,NULL),(1075,152,92,2,NULL),(1076,49,25,2,NULL),(1077,49,59,2,NULL),(1078,152,93,2,NULL),(1079,50,25,2,NULL),(1080,50,59,2,NULL),(1081,152,94,2,NULL),(1082,55,25,2,NULL),(1083,55,59,2,NULL),(1084,116,65,2,NULL),(1085,57,25,2,NULL),(1086,57,59,2,NULL),(1087,154,65,2,NULL),(1088,60,25,2,NULL),(1089,60,59,2,NULL),(1090,140,1,2,NULL),(1091,42,25,2,NULL),(1092,42,59,2,NULL),(1093,142,1,2,NULL),(1094,45,25,2,NULL),(1095,140,8,2,NULL),(1096,45,59,2,NULL),(1097,47,25,2,NULL),(1098,142,8,2,NULL),(1099,47,59,2,NULL),(1100,51,25,2,NULL),(1101,140,9,2,NULL),(1102,51,59,2,NULL),(1103,53,25,2,NULL),(1104,53,59,2,NULL),(1105,142,9,2,NULL),(1106,56,25,2,NULL),(1107,56,59,2,NULL),(1108,140,64,2,NULL),(1109,59,25,2,NULL),(1110,59,59,2,NULL),(1111,142,64,2,NULL),(1112,61,25,2,NULL),(1113,61,59,2,NULL),(1114,140,24,2,NULL),(1115,40,38,2,NULL),(1116,78,59,2,NULL),(1117,142,24,2,NULL),(1118,43,38,2,NULL),(1119,80,59,2,NULL),(1120,140,25,2,NULL),(1121,44,38,2,NULL),(1122,142,25,2,NULL),(1123,75,59,2,NULL),(1124,49,38,2,NULL),(1125,140,38,2,NULL),(1126,76,59,2,NULL),(1127,50,38,2,NULL),(1128,142,38,2,NULL),(1129,85,59,2,NULL),(1130,55,38,2,NULL),(1131,92,59,2,NULL),(1132,140,39,2,NULL),(1133,57,38,2,NULL),(1134,142,39,2,NULL),(1135,93,59,2,NULL),(1136,60,38,2,NULL),(1137,140,83,2,NULL),(1138,94,59,2,NULL),(1139,42,38,2,NULL),(1140,142,83,2,NULL),(1141,95,59,2,NULL),(1142,45,38,2,NULL),(1143,96,59,2,NULL),(1144,140,84,2,NULL),(1145,47,38,2,NULL),(1146,142,84,2,NULL),(1147,91,59,2,NULL),(1148,51,38,2,NULL),(1149,140,59,2,NULL),(1150,142,59,2,NULL),(1151,53,38,2,NULL),(1152,140,62,2,NULL),(1153,4,62,2,NULL),(1154,56,38,2,NULL),(1155,6,62,2,NULL),(1156,142,62,2,NULL),(1157,59,38,2,NULL),(1158,7,62,2,NULL),(1159,140,85,2,NULL),(1160,61,38,2,NULL),(1161,8,62,2,NULL),(1162,142,85,2,NULL),(1163,40,39,2,NULL),(1164,13,62,2,NULL),(1165,140,86,2,NULL),(1166,43,39,2,NULL),(1167,15,62,2,NULL),(1168,142,86,2,NULL),(1169,44,39,2,NULL),(1170,140,87,2,NULL),(1171,16,62,2,NULL),(1172,49,39,2,NULL),(1173,142,87,2,NULL),(1174,17,62,2,NULL),(1175,50,39,2,NULL),(1176,140,88,2,NULL),(1177,26,62,2,NULL),(1178,55,39,2,NULL),(1179,27,62,2,NULL),(1180,142,88,2,NULL),(1181,57,39,2,NULL),(1182,28,62,2,NULL),(1183,140,89,2,NULL),(1184,60,39,2,NULL),(1185,29,62,2,NULL),(1186,142,89,2,NULL),(1187,42,39,2,NULL),(1188,30,62,2,NULL),(1189,140,82,2,NULL),(1190,45,39,2,NULL),(1191,32,62,2,NULL),(1192,142,82,2,NULL),(1193,47,39,2,NULL),(1194,34,62,2,NULL),(1195,140,90,2,NULL),(1196,51,39,2,NULL),(1197,142,90,2,NULL),(1198,36,62,2,NULL),(1199,53,39,2,NULL),(1200,38,62,2,NULL),(1201,140,91,2,NULL),(1202,56,39,2,NULL),(1203,39,62,2,NULL),(1204,142,91,2,NULL),(1205,59,39,2,NULL),(1206,41,62,2,NULL),(1207,140,92,2,NULL),(1208,61,39,2,NULL),(1209,46,62,2,NULL),(1210,142,92,2,NULL),(1211,40,83,2,NULL),(1212,48,62,2,NULL),(1213,140,93,2,NULL),(1214,43,83,2,NULL),(1215,142,93,2,NULL),(1216,52,62,2,NULL),(1217,44,83,2,NULL),(1218,54,62,2,NULL),(1219,140,94,2,NULL),(1220,49,83,2,NULL),(1221,58,62,2,NULL),(1222,142,94,2,NULL),(1223,50,83,2,NULL),(1224,20,62,2,NULL),(1225,4,82,2,NULL),(1226,55,83,2,NULL),(1227,22,62,2,NULL),(1228,6,82,2,NULL),(1229,57,83,2,NULL),(1230,40,62,2,NULL),(1231,7,82,2,NULL),(1232,60,83,2,NULL),(1233,43,62,2,NULL),(1234,8,82,2,NULL),(1235,42,83,2,NULL),(1236,44,62,2,NULL),(1237,13,82,2,NULL),(1238,45,83,2,NULL),(1239,49,62,2,NULL),(1240,15,82,2,NULL),(1241,47,83,2,NULL),(1242,50,62,2,NULL),(1243,16,82,2,NULL),(1244,51,83,2,NULL),(1245,55,62,2,NULL),(1246,17,82,2,NULL),(1247,53,83,2,NULL),(1248,57,62,2,NULL),(1249,26,82,2,NULL),(1250,56,83,2,NULL),(1251,60,62,2,NULL),(1252,27,82,2,NULL),(1253,59,83,2,NULL),(1254,42,62,2,NULL),(1255,28,82,2,NULL),(1256,61,83,2,NULL),(1257,45,62,2,NULL),(1258,29,82,2,NULL),(1259,40,84,2,NULL),(1260,47,62,2,NULL),(1261,30,82,2,NULL),(1262,43,84,2,NULL),(1263,51,62,2,NULL),(1264,32,82,2,NULL),(1265,44,84,2,NULL),(1266,53,62,2,NULL),(1267,34,82,2,NULL),(1268,49,84,2,NULL),(1269,56,62,2,NULL),(1270,36,82,2,NULL),(1271,50,84,2,NULL),(1272,59,62,2,NULL),(1273,38,82,2,NULL),(1274,55,84,2,NULL),(1275,61,62,2,NULL),(1276,39,82,2,NULL),(1277,57,84,2,NULL),(1278,78,62,2,NULL),(1279,41,82,2,NULL),(1280,60,84,2,NULL),(1281,80,62,2,NULL),(1282,46,82,2,NULL),(1283,42,84,2,NULL),(1284,75,62,2,NULL),(1285,48,82,2,NULL),(1286,45,84,2,NULL),(1287,76,62,2,NULL),(1288,52,82,2,NULL),(1289,47,84,2,NULL),(1290,85,62,2,NULL),(1291,54,82,2,NULL),(1292,51,84,2,NULL),(1293,92,62,2,NULL),(1294,58,82,2,NULL),(1295,53,84,2,NULL),(1296,93,62,2,NULL),(1297,20,82,2,NULL),(1298,56,84,2,NULL),(1299,94,62,2,NULL),(1300,22,82,2,NULL),(1301,59,84,2,NULL),(1302,95,62,2,NULL),(1303,40,82,2,NULL),(1304,61,84,2,NULL),(1305,96,62,2,NULL),(1306,43,82,2,NULL),(1307,91,62,2,NULL),(1308,44,82,2,NULL),(1309,4,85,2,NULL),(1310,49,82,2,NULL),(1311,40,85,2,NULL),(1312,6,85,2,NULL),(1313,50,82,2,NULL),(1314,43,85,2,NULL),(1315,7,85,2,NULL),(1316,55,82,2,NULL),(1317,44,85,2,NULL),(1318,8,85,2,NULL),(1319,49,85,2,NULL),(1320,57,82,2,NULL),(1321,13,85,2,NULL),(1322,60,82,2,NULL),(1323,50,85,2,NULL),(1324,15,85,2,NULL),(1325,42,82,2,NULL),(1326,55,85,2,NULL),(1327,16,85,2,NULL),(1328,45,82,2,NULL),(1329,57,85,2,NULL),(1330,17,85,2,NULL),(1331,47,82,2,NULL),(1332,60,85,2,NULL),(1333,26,85,2,NULL),(1334,51,82,2,NULL),(1335,42,85,2,NULL),(1336,27,85,2,NULL),(1337,53,82,2,NULL),(1338,45,85,2,NULL),(1339,28,85,2,NULL),(1340,56,82,2,NULL),(1341,47,85,2,NULL),(1342,29,85,2,NULL),(1343,59,82,2,NULL),(1344,51,85,2,NULL),(1345,30,85,2,NULL),(1346,61,82,2,NULL),(1347,53,85,2,NULL),(1348,32,85,2,NULL),(1349,56,85,2,NULL),(1350,78,82,2,NULL),(1351,34,85,2,NULL),(1352,80,82,2,NULL),(1353,59,85,2,NULL),(1354,36,85,2,NULL),(1355,75,82,2,NULL),(1356,61,85,2,NULL),(1357,38,85,2,NULL),(1358,76,82,2,NULL),(1359,40,86,2,NULL),(1360,39,85,2,NULL),(1361,43,86,2,NULL),(1362,85,82,2,NULL),(1363,41,85,2,NULL),(1364,44,86,2,NULL),(1365,92,82,2,NULL),(1366,46,85,2,NULL),(1367,93,82,2,NULL),(1368,49,86,2,NULL),(1369,48,85,2,NULL),(1370,50,86,2,NULL),(1371,94,82,2,NULL),(1372,52,85,2,NULL),(1373,55,86,2,NULL),(1374,95,82,2,NULL),(1375,54,85,2,NULL),(1376,57,86,2,NULL),(1377,96,82,2,NULL),(1378,58,85,2,NULL),(1379,91,82,2,NULL),(1380,60,86,2,NULL),(1381,20,85,2,NULL),(1382,42,86,2,NULL),(1383,4,90,2,NULL),(1384,22,85,2,NULL),(1385,45,86,2,NULL),(1386,6,90,2,NULL),(1387,78,85,2,NULL),(1388,47,86,2,NULL),(1389,7,90,2,NULL),(1390,80,85,2,NULL),(1391,51,86,2,NULL),(1392,8,90,2,NULL),(1393,75,85,2,NULL),(1394,53,86,2,NULL),(1395,13,90,2,NULL),(1396,76,85,2,NULL),(1397,56,86,2,NULL),(1398,15,90,2,NULL),(1399,85,85,2,NULL),(1400,59,86,2,NULL),(1401,16,90,2,NULL),(1402,92,85,2,NULL),(1403,61,86,2,NULL),(1404,17,90,2,NULL),(1405,93,85,2,NULL),(1406,40,87,2,NULL),(1407,26,90,2,NULL),(1408,94,85,2,NULL),(1409,43,87,2,NULL),(1410,27,90,2,NULL),(1411,95,85,2,NULL),(1412,44,87,2,NULL),(1413,28,90,2,NULL),(1414,96,85,2,NULL),(1415,49,87,2,NULL),(1416,29,90,2,NULL),(1417,91,85,2,NULL),(1418,30,90,2,NULL),(1419,50,87,2,NULL),(1420,4,86,2,NULL),(1421,55,87,2,NULL),(1422,32,90,2,NULL),(1423,6,86,2,NULL),(1424,57,87,2,NULL),(1425,34,90,2,NULL),(1426,7,86,2,NULL),(1427,60,87,2,NULL),(1428,36,90,2,NULL),(1429,8,86,2,NULL),(1430,42,87,2,NULL),(1431,38,90,2,NULL),(1432,13,86,2,NULL),(1433,45,87,2,NULL),(1434,15,86,2,NULL),(1435,39,90,2,NULL),(1436,47,87,2,NULL),(1437,16,86,2,NULL),(1438,51,87,2,NULL),(1439,41,90,2,NULL),(1440,17,86,2,NULL),(1441,53,87,2,NULL),(1442,46,90,2,NULL),(1443,26,86,2,NULL),(1444,48,90,2,NULL),(1445,56,87,2,NULL),(1446,27,86,2,NULL),(1447,59,87,2,NULL),(1448,52,90,2,NULL),(1449,28,86,2,NULL),(1450,61,87,2,NULL),(1451,54,90,2,NULL),(1452,29,86,2,NULL),(1453,40,88,2,NULL),(1454,58,90,2,NULL),(1455,30,86,2,NULL),(1456,20,90,2,NULL),(1457,43,88,2,NULL),(1458,32,86,2,NULL),(1459,44,88,2,NULL),(1460,22,90,2,NULL),(1461,34,86,2,NULL),(1462,49,88,2,NULL),(1463,40,90,2,NULL),(1464,36,86,2,NULL),(1465,50,88,2,NULL),(1466,43,90,2,NULL),(1467,38,86,2,NULL),(1468,55,88,2,NULL),(1469,44,90,2,NULL),(1470,39,86,2,NULL),(1471,57,88,2,NULL),(1472,49,90,2,NULL),(1473,41,86,2,NULL),(1474,60,88,2,NULL),(1475,50,90,2,NULL),(1476,46,86,2,NULL),(1477,42,88,2,NULL),(1478,55,90,2,NULL),(1479,48,86,2,NULL),(1480,45,88,2,NULL),(1481,57,90,2,NULL),(1482,52,86,2,NULL),(1483,47,88,2,NULL),(1484,60,90,2,NULL),(1485,54,86,2,NULL),(1486,51,88,2,NULL),(1487,42,90,2,NULL),(1488,58,86,2,NULL),(1489,53,88,2,NULL),(1490,45,90,2,NULL),(1491,20,86,2,NULL),(1492,56,88,2,NULL),(1493,47,90,2,NULL),(1494,22,86,2,NULL),(1495,59,88,2,NULL),(1496,51,90,2,NULL),(1497,78,86,2,NULL),(1498,61,88,2,NULL),(1499,53,90,2,NULL),(1500,80,86,2,NULL),(1501,40,89,2,NULL),(1502,56,90,2,NULL),(1503,75,86,2,NULL),(1504,43,89,2,NULL),(1505,59,90,2,NULL),(1506,76,86,2,NULL),(1507,44,89,2,NULL),(1508,61,90,2,NULL),(1509,85,86,2,NULL),(1510,49,89,2,NULL),(1511,78,90,2,NULL),(1512,92,86,2,NULL),(1513,50,89,2,NULL),(1514,80,90,2,NULL),(1515,93,86,2,NULL),(1516,55,89,2,NULL),(1517,75,90,2,NULL),(1518,94,86,2,NULL),(1519,57,89,2,NULL),(1520,76,90,2,NULL),(1521,95,86,2,NULL),(1522,60,89,2,NULL),(1523,85,90,2,NULL),(1524,96,86,2,NULL),(1525,42,89,2,NULL),(1526,92,90,2,NULL),(1527,91,86,2,NULL),(1528,45,89,2,NULL),(1529,93,90,2,NULL),(1530,4,87,2,NULL),(1531,47,89,2,NULL),(1532,94,90,2,NULL),(1533,6,87,2,NULL),(1534,51,89,2,NULL),(1535,95,90,2,NULL),(1536,7,87,2,NULL),(1537,53,89,2,NULL),(1538,96,90,2,NULL),(1539,8,87,2,NULL),(1540,56,89,2,NULL),(1541,91,90,2,NULL),(1542,13,87,2,NULL),(1543,59,89,2,NULL),(1544,15,87,2,NULL),(1545,4,91,2,NULL),(1546,61,89,2,NULL),(1547,16,87,2,NULL),(1548,6,91,2,NULL),(1549,17,87,2,NULL),(1550,7,91,2,NULL),(1551,26,87,2,NULL),(1552,8,91,2,NULL),(1553,27,87,2,NULL),(1554,40,91,2,NULL),(1555,13,91,2,NULL),(1556,28,87,2,NULL),(1557,15,91,2,NULL),(1558,43,91,2,NULL),(1559,29,87,2,NULL),(1560,44,91,2,NULL),(1561,16,91,2,NULL),(1562,30,87,2,NULL),(1563,17,91,2,NULL),(1564,49,91,2,NULL),(1565,32,87,2,NULL),(1566,26,91,2,NULL),(1567,50,91,2,NULL),(1568,34,87,2,NULL),(1569,27,91,2,NULL),(1570,55,91,2,NULL),(1571,36,87,2,NULL),(1572,57,91,2,NULL),(1573,28,91,2,NULL),(1574,38,87,2,NULL),(1575,29,91,2,NULL),(1576,60,91,2,NULL),(1577,39,87,2,NULL),(1578,30,91,2,NULL),(1579,42,91,2,NULL),(1580,41,87,2,NULL),(1581,45,91,2,NULL),(1582,32,91,2,NULL),(1583,46,87,2,NULL),(1584,47,91,2,NULL),(1585,34,91,2,NULL),(1586,48,87,2,NULL),(1587,36,91,2,NULL),(1588,51,91,2,NULL),(1589,52,87,2,NULL),(1590,38,91,2,NULL),(1591,53,91,2,NULL),(1592,54,87,2,NULL),(1593,39,91,2,NULL),(1594,56,91,2,NULL),(1595,58,87,2,NULL),(1596,41,91,2,NULL),(1597,59,91,2,NULL),(1598,20,87,2,NULL),(1599,46,91,2,NULL),(1600,61,91,2,NULL),(1601,22,87,2,NULL),(1602,48,91,2,NULL),(1603,40,92,2,NULL),(1604,78,87,2,NULL),(1605,52,91,2,NULL),(1606,43,92,2,NULL),(1607,80,87,2,NULL),(1608,54,91,2,NULL),(1609,44,92,2,NULL),(1610,75,87,2,NULL),(1611,58,91,2,NULL),(1612,49,92,2,NULL),(1613,76,87,2,NULL),(1614,20,91,2,NULL),(1615,50,92,2,NULL),(1616,85,87,2,NULL),(1617,22,91,2,NULL),(1618,55,92,2,NULL),(1619,92,87,2,NULL),(1620,57,92,2,NULL),(1621,78,91,2,NULL),(1622,93,87,2,NULL),(1623,80,91,2,NULL),(1624,60,92,2,NULL),(1625,94,87,2,NULL),(1626,75,91,2,NULL),(1627,42,92,2,NULL),(1628,95,87,2,NULL),(1629,76,91,2,NULL),(1630,45,92,2,NULL),(1631,96,87,2,NULL),(1632,85,91,2,NULL),(1633,47,92,2,NULL),(1634,91,87,2,NULL),(1635,92,91,2,NULL),(1636,51,92,2,NULL),(1637,4,88,2,NULL),(1638,93,91,2,NULL),(1639,53,92,2,NULL),(1640,6,88,2,NULL),(1641,94,91,2,NULL),(1642,56,92,2,NULL),(1643,7,88,2,NULL),(1644,95,91,2,NULL),(1645,59,92,2,NULL),(1646,8,88,2,NULL),(1647,96,91,2,NULL),(1648,61,92,2,NULL),(1649,13,88,2,NULL),(1650,91,91,2,NULL),(1651,40,93,2,NULL),(1652,15,88,2,NULL),(1653,43,93,2,NULL),(1654,16,88,2,NULL),(1655,4,92,2,NULL),(1656,44,93,2,NULL),(1657,17,88,2,NULL),(1658,6,92,2,NULL),(1659,49,93,2,NULL),(1660,26,88,2,NULL),(1661,7,92,2,NULL),(1662,50,93,2,NULL),(1663,27,88,2,NULL),(1664,8,92,2,NULL),(1665,55,93,2,NULL),(1666,28,88,2,NULL),(1667,13,92,2,NULL),(1668,57,93,2,NULL),(1669,29,88,2,NULL),(1670,15,92,2,NULL),(1671,60,93,2,NULL),(1672,30,88,2,NULL),(1673,16,92,2,NULL),(1674,42,93,2,NULL),(1675,32,88,2,NULL),(1676,17,92,2,NULL),(1677,45,93,2,NULL),(1678,34,88,2,NULL),(1679,26,92,2,NULL),(1680,47,93,2,NULL),(1681,36,88,2,NULL),(1682,27,92,2,NULL),(1683,51,93,2,NULL),(1684,38,88,2,NULL),(1685,28,92,2,NULL),(1686,53,93,2,NULL),(1687,39,88,2,NULL),(1688,29,92,2,NULL),(1689,56,93,2,NULL),(1690,41,88,2,NULL),(1691,30,92,2,NULL),(1692,4,25,2,NULL),(1693,59,93,2,NULL),(1694,46,88,2,NULL),(1695,32,92,2,NULL),(1696,61,93,2,NULL),(1697,48,88,2,NULL),(1698,34,92,2,NULL),(1699,6,25,2,NULL),(1700,40,94,2,NULL),(1701,52,88,2,NULL),(1702,36,92,2,NULL),(1703,7,25,2,NULL),(1704,43,94,2,NULL),(1705,54,88,2,NULL),(1706,38,92,2,NULL),(1707,44,94,2,NULL),(1708,8,25,2,NULL),(1709,58,88,2,NULL),(1710,39,92,2,NULL),(1711,49,94,2,NULL),(1712,20,88,2,NULL),(1713,41,92,2,NULL),(1714,50,94,2,NULL),(1715,13,25,2,NULL),(1716,22,88,2,NULL),(1717,46,92,2,NULL),(1718,55,94,2,NULL),(1719,15,25,2,NULL),(1720,48,92,2,NULL),(1721,78,88,2,NULL),(1722,57,94,2,NULL),(1723,52,92,2,NULL),(1724,16,25,2,NULL),(1725,80,88,2,NULL),(1726,60,94,2,NULL),(1727,54,92,2,NULL),(1728,75,88,2,NULL),(1729,42,94,2,NULL),(1730,17,25,2,NULL),(1731,58,92,2,NULL),(1732,76,88,2,NULL),(1733,45,94,2,NULL),(1734,20,92,2,NULL),(1735,26,25,2,NULL),(1736,85,88,2,NULL),(1737,47,94,2,NULL),(1738,22,92,2,NULL),(1739,92,88,2,NULL),(1740,51,94,2,NULL),(1741,27,25,2,NULL),(1742,93,88,2,NULL),(1743,53,94,2,NULL),(1744,78,92,2,NULL),(1745,28,25,2,NULL),(1746,94,88,2,NULL),(1747,56,94,2,NULL),(1748,80,92,2,NULL),(1749,29,25,2,NULL),(1750,95,88,2,NULL),(1751,59,94,2,NULL),(1752,75,92,2,NULL),(1753,30,25,2,NULL),(1754,96,88,2,NULL),(1755,61,94,2,NULL),(1756,76,92,2,NULL),(1757,32,25,2,NULL),(1758,91,88,2,NULL),(1759,85,92,2,NULL),(1760,4,24,2,NULL),(1761,34,25,2,NULL),(1762,92,92,2,NULL),(1763,6,24,2,NULL),(1764,4,89,2,NULL),(1765,36,25,2,NULL),(1766,93,92,2,NULL),(1767,7,24,2,NULL),(1768,6,89,2,NULL),(1769,94,92,2,NULL),(1770,8,24,2,NULL),(1771,38,25,2,NULL),(1772,7,89,2,NULL),(1773,95,92,2,NULL),(1774,13,24,2,NULL),(1775,39,25,2,NULL),(1776,8,89,2,NULL),(1777,96,92,2,NULL),(1778,15,24,2,NULL),(1779,13,89,2,NULL),(1780,41,25,2,NULL),(1781,91,92,2,NULL),(1782,16,24,2,NULL),(1783,15,89,2,NULL),(1784,46,25,2,NULL),(1785,17,24,2,NULL),(1786,16,89,2,NULL),(1787,4,93,2,NULL),(1788,48,25,2,NULL),(1789,26,24,2,NULL),(1790,17,89,2,NULL),(1791,6,93,2,NULL),(1792,27,24,2,NULL),(1793,52,25,2,NULL),(1794,26,89,2,NULL),(1795,7,93,2,NULL),(1796,28,24,2,NULL),(1797,27,89,2,NULL),(1798,8,93,2,NULL),(1799,54,25,2,NULL),(1800,29,24,2,NULL),(1801,28,89,2,NULL),(1802,13,93,2,NULL),(1803,30,24,2,NULL),(1804,58,25,2,NULL),(1805,29,89,2,NULL),(1806,15,93,2,NULL),(1807,32,24,2,NULL),(1808,30,89,2,NULL),(1809,16,93,2,NULL),(1810,20,25,2,NULL),(1811,34,24,2,NULL),(1812,32,89,2,NULL),(1813,17,93,2,NULL),(1814,36,24,2,NULL),(1815,22,25,2,NULL),(1816,26,93,2,NULL),(1817,38,24,2,NULL),(1818,27,93,2,NULL),(1819,34,89,2,NULL),(1820,39,24,2,NULL),(1821,78,25,2,NULL),(1822,36,89,2,NULL),(1823,28,93,2,NULL),(1824,41,24,2,NULL),(1825,38,89,2,NULL),(1826,29,93,2,NULL),(1827,80,25,2,NULL),(1828,46,24,2,NULL),(1829,39,89,2,NULL),(1830,30,93,2,NULL),(1831,75,25,2,NULL),(1832,48,24,2,NULL),(1833,32,93,2,NULL),(1834,41,89,2,NULL),(1835,76,25,2,NULL),(1836,52,24,2,NULL),(1837,46,89,2,NULL),(1838,34,93,2,NULL),(1839,85,25,2,NULL),(1840,54,24,2,NULL),(1841,48,89,2,NULL),(1842,36,93,2,NULL),(1843,92,25,2,NULL),(1844,58,24,2,NULL),(1845,52,89,2,NULL),(1846,38,93,2,NULL),(1847,93,25,2,NULL),(1848,20,24,2,NULL),(1849,54,89,2,NULL),(1850,39,93,2,NULL),(1851,94,25,2,NULL),(1852,22,24,2,NULL),(1853,58,89,2,NULL),(1854,41,93,2,NULL),(1855,95,25,2,NULL),(1856,78,24,2,NULL),(1857,20,89,2,NULL),(1858,46,93,2,NULL),(1859,96,25,2,NULL),(1860,80,24,2,NULL),(1861,22,89,2,NULL),(1862,48,93,2,NULL),(1863,91,25,2,NULL),(1864,75,24,2,NULL),(1865,52,93,2,NULL),(1866,78,89,2,NULL),(1867,78,1,2,NULL),(1868,76,24,2,NULL),(1869,80,89,2,NULL),(1870,54,93,2,NULL),(1871,85,24,2,NULL),(1872,80,1,2,NULL),(1873,75,89,2,NULL),(1874,58,93,2,NULL),(1875,92,24,2,NULL),(1876,78,8,2,NULL),(1877,76,89,2,NULL),(1878,20,93,2,NULL),(1879,93,24,2,NULL),(1880,80,8,2,NULL),(1881,85,89,2,NULL),(1882,22,93,2,NULL),(1883,94,24,2,NULL),(1884,78,9,2,NULL),(1885,92,89,2,NULL),(1886,95,24,2,NULL),(1887,80,9,2,NULL),(1888,78,93,2,NULL),(1889,93,89,2,NULL),(1890,96,24,2,NULL),(1891,78,64,2,NULL),(1892,94,89,2,NULL),(1893,80,93,2,NULL),(1894,80,64,2,NULL),(1895,95,89,2,NULL),(1896,75,93,2,NULL),(1897,91,24,2,NULL),(1898,78,38,2,NULL),(1899,96,89,2,NULL),(1900,76,93,2,NULL),(1901,91,89,2,NULL),(1902,85,93,2,NULL),(1903,80,38,2,NULL),(1904,92,93,2,NULL),(1905,78,39,2,NULL),(1906,93,93,2,NULL),(1907,80,39,2,NULL),(1908,94,93,2,NULL),(1909,78,83,2,NULL),(1910,95,93,2,NULL),(1911,80,83,2,NULL),(1912,96,93,2,NULL),(1913,78,84,2,NULL),(1914,91,93,2,NULL),(1915,80,84,2,NULL),(1916,4,94,2,NULL),(1917,78,94,2,NULL),(1918,6,94,2,NULL),(1919,80,94,2,NULL),(1920,7,94,2,NULL),(1921,82,32,2,NULL),(1922,8,94,2,NULL),(1923,82,43,2,NULL),(1924,13,94,2,NULL),(1925,83,32,2,NULL),(1926,15,94,2,NULL),(1927,83,43,2,NULL),(1928,16,94,2,NULL),(1929,89,32,2,NULL),(1930,17,94,2,NULL),(1931,89,43,2,NULL),(1932,26,94,2,NULL),(1933,90,32,2,NULL),(1934,27,94,2,NULL),(1935,90,43,2,NULL),(1936,28,94,2,NULL),(1937,75,1,2,NULL),(1938,29,94,2,NULL),(1939,76,1,2,NULL),(1940,30,94,2,NULL),(1941,85,1,2,NULL),(1942,32,94,2,NULL),(1943,92,1,2,NULL),(1944,34,94,2,NULL),(1945,93,1,2,NULL),(1946,36,94,2,NULL),(1947,94,1,2,NULL),(1948,38,94,2,NULL),(1949,95,1,2,NULL),(1950,39,94,2,NULL),(1951,96,1,2,NULL),(1952,41,94,2,NULL),(1953,75,8,2,NULL),(1954,46,94,2,NULL),(1955,76,8,2,NULL),(1956,48,94,2,NULL),(1957,85,8,2,NULL),(1958,52,94,2,NULL),(1959,92,8,2,NULL),(1960,54,94,2,NULL),(1961,93,8,2,NULL),(1962,58,94,2,NULL),(1963,94,8,2,NULL),(1964,20,94,2,NULL),(1965,95,8,2,NULL),(1966,22,94,2,NULL),(1967,96,8,2,NULL),(1968,75,94,2,NULL),(1969,75,9,2,NULL),(1970,76,94,2,NULL),(1971,76,9,2,NULL),(1972,85,94,2,NULL),(1973,85,9,2,NULL),(1974,92,94,2,NULL),(1975,92,9,2,NULL),(1976,93,94,2,NULL),(1977,93,9,2,NULL),(1978,94,94,2,NULL),(1979,94,9,2,NULL),(1980,95,94,2,NULL),(1981,95,9,2,NULL),(1982,96,94,2,NULL),(1983,96,9,2,NULL),(1984,91,94,2,NULL),(1985,75,64,2,NULL),(1986,76,64,2,NULL),(1987,85,64,2,NULL),(1988,92,64,2,NULL),(1989,93,64,2,NULL),(1990,94,64,2,NULL),(1991,95,64,2,NULL),(1992,96,64,2,NULL),(1993,75,38,2,NULL),(1994,76,38,2,NULL),(1995,85,38,2,NULL),(1996,92,38,2,NULL),(1997,93,38,2,NULL),(1998,94,38,2,NULL),(1999,95,38,2,NULL),(2000,96,38,2,NULL),(2001,75,39,2,NULL),(2002,76,39,2,NULL),(2003,85,39,2,NULL),(2004,92,39,2,NULL),(2005,93,39,2,NULL),(2006,94,39,2,NULL),(2007,95,39,2,NULL),(2008,96,39,2,NULL),(2009,75,83,2,NULL),(2010,76,83,2,NULL),(2011,85,83,2,NULL),(2012,92,83,2,NULL),(2013,93,83,2,NULL),(2014,94,83,2,NULL),(2015,95,83,2,NULL),(2016,96,83,2,NULL),(2017,75,84,2,NULL),(2018,76,84,2,NULL),(2019,85,84,2,NULL),(2020,92,84,2,NULL),(2021,93,84,2,NULL),(2022,94,84,2,NULL),(2023,95,84,2,NULL),(2024,96,84,2,NULL),(2025,91,1,2,NULL),(2026,91,8,2,NULL),(2027,91,9,2,NULL),(2028,91,64,2,NULL),(2029,91,38,2,NULL),(2030,91,39,2,NULL),(2031,91,83,2,NULL),(2032,91,84,2,NULL),(2033,4,38,2,NULL),(2034,6,38,2,NULL),(2035,7,38,2,NULL),(2036,8,38,2,NULL),(2037,13,38,2,NULL),(2038,15,38,2,NULL),(2039,16,38,2,NULL),(2040,17,38,2,NULL),(2041,26,38,2,NULL),(2042,27,38,2,NULL),(2043,28,38,2,NULL),(2044,29,38,2,NULL),(2045,30,38,2,NULL),(2046,32,38,2,NULL),(2047,34,38,2,NULL),(2048,36,38,2,NULL),(2049,38,38,2,NULL),(2050,39,38,2,NULL),(2051,41,38,2,NULL),(2052,46,38,2,NULL),(2053,48,38,2,NULL),(2054,52,38,2,NULL),(2055,54,38,2,NULL),(2056,58,38,2,NULL),(2057,20,38,2,NULL),(2058,22,38,2,NULL),(2059,4,39,2,NULL),(2060,6,39,2,NULL),(2061,7,39,2,NULL),(2062,8,39,2,NULL),(2063,13,39,2,NULL),(2064,15,39,2,NULL),(2065,16,39,2,NULL),(2066,17,39,2,NULL),(2067,26,39,2,NULL),(2068,27,39,2,NULL),(2069,28,39,2,NULL),(2070,29,39,2,NULL),(2071,30,39,2,NULL),(2072,32,39,2,NULL),(2073,34,39,2,NULL),(2074,36,39,2,NULL),(2075,38,39,2,NULL),(2076,39,39,2,NULL),(2077,41,39,2,NULL),(2078,46,39,2,NULL),(2079,48,39,2,NULL),(2080,52,39,2,NULL),(2081,54,39,2,NULL),(2082,58,39,2,NULL),(2083,20,39,2,NULL),(2084,22,39,2,NULL),(2085,4,83,2,NULL),(2086,6,83,2,NULL),(2087,7,83,2,NULL),(2088,8,83,2,NULL),(2089,13,83,2,NULL),(2090,15,83,2,NULL),(2091,16,83,2,NULL),(2092,17,83,2,NULL),(2093,26,83,2,NULL),(2094,27,83,2,NULL),(2095,28,83,2,NULL),(2096,29,83,2,NULL),(2097,30,83,2,NULL),(2098,32,83,2,NULL),(2099,34,83,2,NULL),(2100,36,83,2,NULL),(2101,38,83,2,NULL),(2102,39,83,2,NULL),(2103,41,83,2,NULL),(2104,46,83,2,NULL),(2105,48,83,2,NULL),(2106,52,83,2,NULL),(2107,54,83,2,NULL),(2108,58,83,2,NULL),(2109,20,83,2,NULL),(2110,22,83,2,NULL),(2111,4,84,2,NULL),(2112,6,84,2,NULL),(2113,7,84,2,NULL),(2114,8,84,2,NULL),(2115,13,84,2,NULL),(2116,15,84,2,NULL),(2117,16,84,2,NULL),(2118,17,84,2,NULL),(2119,26,84,2,NULL),(2120,27,84,2,NULL),(2121,28,84,2,NULL),(2122,29,84,2,NULL),(2123,30,84,2,NULL),(2124,32,84,2,NULL),(2125,34,84,2,NULL),(2126,36,84,2,NULL),(2127,38,84,2,NULL),(2128,39,84,2,NULL),(2129,41,84,2,NULL),(2130,46,84,2,NULL),(2131,48,84,2,NULL),(2132,52,84,2,NULL),(2133,54,84,2,NULL),(2134,58,84,2,NULL),(2135,20,84,2,NULL),(2136,22,84,2,NULL),(2137,4,1,2,NULL),(2138,6,1,2,NULL),(2139,7,1,2,NULL),(2140,8,1,2,NULL),(2141,13,1,2,NULL),(2142,15,1,2,NULL),(2143,16,1,2,NULL),(2144,17,1,2,NULL),(2145,26,1,2,NULL),(2146,27,1,2,NULL),(2147,28,1,2,NULL),(2148,29,1,2,NULL),(2149,30,1,2,NULL),(2150,32,1,2,NULL),(2151,34,1,2,NULL),(2152,36,1,2,NULL),(2153,38,1,2,NULL),(2154,39,1,2,NULL),(2155,41,1,2,NULL),(2156,46,1,2,NULL),(2157,48,1,2,NULL),(2158,52,1,2,NULL),(2159,54,1,2,NULL),(2160,58,1,2,NULL),(2161,20,1,2,NULL),(2162,22,1,2,NULL),(2163,4,8,2,NULL),(2164,6,8,2,NULL),(2165,7,8,2,NULL),(2166,8,8,2,NULL),(2167,13,8,2,NULL),(2168,15,8,2,NULL),(2169,16,8,2,NULL),(2170,17,8,2,NULL),(2171,26,8,2,NULL),(2172,27,8,2,NULL),(2173,28,8,2,NULL),(2174,29,8,2,NULL),(2175,30,8,2,NULL),(2176,32,8,2,NULL),(2177,34,8,2,NULL),(2178,36,8,2,NULL),(2179,38,8,2,NULL),(2180,39,8,2,NULL),(2181,41,8,2,NULL),(2182,46,8,2,NULL),(2183,48,8,2,NULL),(2184,52,8,2,NULL),(2185,54,8,2,NULL),(2186,58,8,2,NULL),(2187,4,9,2,NULL),(2188,6,9,2,NULL),(2189,7,9,2,NULL),(2190,8,9,2,NULL),(2191,13,9,2,NULL),(2192,15,9,2,NULL),(2193,16,9,2,NULL),(2194,17,9,2,NULL),(2195,26,9,2,NULL),(2196,27,9,2,NULL),(2197,28,9,2,NULL),(2198,29,9,2,NULL),(2199,30,9,2,NULL),(2200,32,9,2,NULL),(2201,34,9,2,NULL),(2202,36,9,2,NULL),(2203,38,9,2,NULL),(2204,39,9,2,NULL),(2205,41,9,2,NULL),(2206,46,9,2,NULL),(2207,48,9,2,NULL),(2208,52,9,2,NULL),(2209,54,9,2,NULL),(2210,58,9,2,NULL),(2211,4,64,2,NULL),(2212,6,64,2,NULL),(2213,7,64,2,NULL),(2214,8,64,2,NULL),(2215,13,64,2,NULL),(2216,15,64,2,NULL),(2217,16,64,2,NULL),(2218,17,64,2,NULL),(2219,26,64,2,NULL),(2220,27,64,2,NULL),(2221,28,64,2,NULL),(2222,29,64,2,NULL),(2223,30,64,2,NULL),(2224,32,64,2,NULL),(2225,34,64,2,NULL),(2226,36,64,2,NULL),(2227,38,64,2,NULL),(2228,39,64,2,NULL),(2229,41,64,2,NULL),(2230,46,64,2,NULL),(2231,48,64,2,NULL),(2232,52,64,2,NULL),(2233,54,64,2,NULL),(2234,58,64,2,NULL),(2235,20,8,2,NULL),(2236,22,8,2,NULL),(2237,20,9,2,NULL),(2238,22,9,2,NULL),(2239,20,64,2,NULL),(2240,22,64,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:44
