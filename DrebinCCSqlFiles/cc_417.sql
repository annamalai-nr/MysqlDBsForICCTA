-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_417
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
INSERT INTO `ActionStrings` VALUES (11,'(.*)'),(19,'android.intent.action.BATTERY_CHANGED'),(2,'android.intent.action.BOOT_COMPLETED'),(13,'android.intent.action.CHOOSER'),(18,'android.intent.action.DIAL'),(14,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.PACKAGE_ADDED'),(7,'android.intent.action.PACKAGE_REMOVED'),(9,'android.intent.action.SCREEN_OFF'),(10,'android.intent.action.SCREEN_ON'),(3,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(15,'android.media.action.IMAGE_CAPTURE'),(16,'com.android.music.musicservicecommand'),(12,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(5,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq.UDaJP12'),(17,'qlg.dghjuegq.oqcuecrhs.UAoSjbFFk12'),(8,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w.BootReceiver');
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
INSERT INTO `Applications` VALUES (1,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq',10001),(2,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w',10024),(3,'com.qmkgwsnmwju.weipacrbmct',10037),(4,'com.fgtcqhimp.kvakqnoptiop',10036),(5,'qlg.dghjuegq.oqcuecrhs',10002),(6,'com.mji.ktpijpg.jmaou',10026),(7,'com.stclnolwe.uahuorjjqk.uovkatscj.rgo',10023);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(6,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq.Main'),(2,1,'cdw.LBvqSSkOs.MyActivity'),(3,1,'cdw.LBvqSSkOs.ApopMain'),(4,1,'cdw.LBvqSSkOs.UDaJP16'),(5,1,'cdw.LBvqSSkOs.UDaJP8'),(6,1,'cdw.LBvqSSkOs.UDaJP9'),(7,1,'cdw.LBvqSSkOs.UDaJP2'),(8,1,'cdw.LBvqSSkOs.UDaJP10'),(9,1,'cdw.LBvqSSkOs.UDaJP11'),(10,1,'cdw.LBvqSSkOs.UDaJP12'),(11,2,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w.Gamelet'),(12,2,'com.SOgTmP.PGlvKJiwGWPK'),(13,2,'com.SOgTmP.NRorLrbWGUsQQpo'),(14,3,'com.qmkgwsnmwju.weipacrbmct.first'),(15,2,'com.SOgTmP.MyAppInfo'),(16,3,'com.MvOgU.qTKDeheiWPsiQ'),(17,3,'com.MvOgU.jGwHcWMJOAop'),(18,2,'com.SOgTmP.WalmUAkfNjmTKdg'),(19,2,'com.SOgTmP.AKUjSKLQKFdNN'),(20,2,'com.SOgTmP.MyAppAlertDialog'),(21,2,'com.SOgTmP.kiNrwKavdGufS'),(22,2,'com.SOgTmP.MyAppService'),(23,2,'com.SOgTmP.BootReceiverService'),(24,4,'com.fgtcqhimp.kvakqnoptiop.BunnyBlaster'),(25,4,'com.fgtcqhimp.kvakqnoptiop.Game'),(26,4,'com.mobclix.android.sdk.MobclixBrowserActivity'),(27,4,'com.google.ads.AdActivity'),(28,4,'com.bMoML.dqFbiRIWw'),(29,4,'com.bMoML.ihbAnQwRk'),(30,5,'com.mobclix.android.sdk.MobclixBrowserActivity'),(31,5,'qlg.dghjuegq.oqcuecrhs.DroidDots'),(32,5,'qlg.dghjuegq.oqcuecrhs.About'),(33,5,'qlg.dghjuegq.oqcuecrhs.Prefs'),(34,5,'com.google.ads.AdActivity'),(35,5,'com.millennialmedia.android.MMAdViewOverlayActivity'),(36,6,'com.mji.ktpijpg.jmaou.WSOP3'),(37,5,'com.millennialmedia.android.VideoPlayer'),(38,5,'qlg.dghjuegq.oqcuecrhs.Game'),(39,6,'com.openfeint.internal.ui.IntroFlow'),(40,5,'owc.AqPqL.UAoSjbFFk21'),(41,6,'com.openfeint.api.ui.Dashboard'),(42,6,'com.openfeint.internal.ui.Settings'),(43,6,'com.openfeint.internal.ui.NativeBrowser'),(44,5,'owc.AqPqL.ApopMain'),(45,6,'com.RMQAleLi.ToLfMCuwehGNtc'),(46,5,'owc.AqPqL.UAoSjbFFk16'),(47,6,'com.RMQAleLi.ukfJcLptQgJjml'),(48,5,'owc.AqPqL.UAoSjbFFk8'),(49,5,'owc.AqPqL.UAoSjbFFk9'),(50,6,'com.nd.dianjin.activity.OfferAppActivity'),(51,6,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(52,5,'owc.AqPqL.UAoSjbFFk2'),(53,5,'owc.AqPqL.UAoSjbFFk10'),(54,5,'owc.AqPqL.UAoSjbFFk22'),(55,5,'owc.AqPqL.UAoSjbFFk11'),(56,5,'owc.AqPqL.UAoSjbFFk12'),(57,1,'cdw.LBvqSSkOs.d'),(58,7,'com.stclnolwe.uahuorjjqk.uovkatscj.rgo.Application'),(59,7,'com.idreamsky.gamecenter.ui.Profile'),(60,7,'com.idreamsky.gamecenter.ui.ScoreActivity'),(61,7,'com.idreamsky.gamecenter.ui.LoginActivity'),(62,7,'com.stclnolwe.uahuorjjqk.uovkatscj.rgo.ProductsActivity'),(63,7,'com.JahMmN.VemfFBVA'),(64,7,'com.JahMmN.wwltBMCp'),(65,1,'cdw.LBvqSSkOs.v'),(66,7,'com.nd.dianjin.activity.OfferAppActivity'),(67,7,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(68,1,'com.netmite.andme.launcher.Launcher'),(69,1,'cdw.LBvqSSkOs.ClickableToast'),(70,4,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(71,1,'cdw.LBvqSSkOs.bh'),(72,1,'cdw.LBvqSSkOs.i'),(73,2,'com.SOgTmP.be'),(74,4,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(75,2,'com.SOgTmP.af'),(76,1,'cdw.LBvqSSkOs.h'),(77,2,'com.SOgTmP.bp'),(78,2,'com.SOgTmP.z'),(79,2,'com.SOgTmP.ai'),(80,2,'com.SOgTmP.ac'),(81,2,'com.SOgTmP.y'),(82,4,'com.google.ads.util.AdUtil$UserActivityReceiver'),(83,6,'com.openfeint.internal.ImagePicker'),(84,1,'cdw.LBvqSSkOs.z'),(85,2,'com.netmite.andme.launcher.Launcher'),(86,1,'cdw.LBvqSSkOs.bb'),(87,6,'com.nd.dianjin.DianJinPlatform'),(88,2,'com.SOgTmP.bf'),(89,5,'owc.AqPqL.u'),(90,5,'com.millennialmedia.android.MillennialMediaView'),(91,5,'owc.AqPqL.ClickableToast'),(92,5,'com.mobclix.android.sdk.MobclixCreative$Action'),(93,5,'owc.AqPqL.bo'),(94,5,'owc.AqPqL.y'),(95,5,'owc.AqPqL.aj'),(96,5,'owc.AqPqL.z'),(97,5,'owc.AqPqL.bs'),(98,5,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(99,5,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(100,5,'owc.AqPqL.ak'),(101,5,'com.mobclix.android.sdk.Mobclix$2'),(102,7,'com.idreamsky.gamecenter.ui.EditProfileView$6'),(103,7,'com.idreamsky.gamecenter.ui.InviteFriendsView'),(104,7,'com.nd.dianjin.DianJinPlatform'),(105,7,'com.idreamsky.gamecenter.ui.Profile$10'),(106,7,'com.nd.dianjin.broadcastreceiver.PackageChangedBroadcastReceiver'),(107,7,'com.stclnolwe.uahuorjjqk.uovkatscj.rgo.SMSHandler'),(108,7,'com.stclnolwe.uahuorjjqk.uovkatscj.rgo.TextField$Internals$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'title'),(2,8,'version_code'),(3,5,'from_table'),(4,8,'url'),(5,15,'from_table'),(6,13,'popurl'),(7,19,'from'),(8,8,'package_name'),(9,8,'title'),(10,15,'status'),(11,21,'apkurl'),(12,20,'package_name'),(13,15,'filepath'),(14,19,'isDirectFromTable'),(15,9,'service_channel'),(16,15,'title'),(17,20,'title'),(18,12,'soft_id'),(19,13,'poptitle'),(20,26,'com.fgtcqhimp.kvakqnoptiop.type'),(21,5,'game'),(22,4,'popurl'),(23,27,'params'),(24,25,'level'),(25,8,'btn_txt'),(26,20,'fromtable'),(27,20,'apk_url'),(28,26,'com.fgtcqhimp.kvakqnoptiop.data'),(29,26,'imageUri'),(30,20,'version_code'),(31,12,'NEW_APP_ID'),(32,13,'NEW_APP_ID'),(33,27,'com.google.ads.AdOpener'),(34,21,'packagename'),(35,20,'btn_txt'),(36,21,'title'),(37,20,'url'),(38,7,'from'),(39,27,'action'),(40,4,'service_channel'),(41,2,'service_channel'),(42,15,'fromtype'),(43,5,'from_alert'),(44,25,'lowestHighScore'),(45,42,'screenName'),(46,41,'screenName'),(47,39,'screenName'),(48,8,'content'),(49,5,'status'),(50,43,'com.openfeint.internal.ui.NativeBrowser.argument.timeout'),(51,42,'_of_cookie_(.*)path'),(52,41,'_of_cookie_(.*)path'),(53,39,'_of_cookie_(.*)path'),(54,2,'soft_id'),(55,2,'version_code'),(56,42,'mCurrentUser'),(57,41,'mCurrentUser'),(58,39,'mCurrentUser'),(59,42,'mBanned'),(60,7,'isDirectFromTable'),(61,41,'mBanned'),(62,39,'mBanned'),(63,42,'_of_cookie_(.*)expiry'),(64,41,'_of_cookie_(.*)expiry'),(65,39,'_of_cookie_(.*)expiry'),(66,42,'com.openfeint.internal.ui.NativeBrowser.argument.failure_desc'),(67,42,'mCurrentlyLoggingIn'),(68,41,'mCurrentlyLoggingIn'),(69,8,'fromtable'),(70,39,'mCurrentlyLoggingIn'),(71,4,'poptitle'),(72,42,'mDeviceSessionCreated'),(73,41,'mDeviceSessionCreated'),(74,39,'mDeviceSessionCreated'),(75,42,'mCreatingDeviceSession'),(76,41,'mCreatingDeviceSession'),(77,39,'mCreatingDeviceSession'),(78,43,'com.openfeint.internal.ui.NativeBrowser.argument.src'),(79,42,'com.openfeint.internal.ui.NativeBrowser.argument.result'),(80,42,'mApproved'),(81,41,'mApproved'),(82,39,'mApproved'),(83,42,'_of_cookie_(.*)value'),(84,41,'_of_cookie_(.*)value'),(85,39,'_of_cookie_(.*)value'),(86,5,'fromtype'),(87,42,'com.openfeint.internal.ui.NativeBrowser.argument.failed'),(88,8,'apk_url'),(89,42,'_of_cookie_(.*)domain'),(90,41,'_of_cookie_(.*)domain'),(91,39,'_of_cookie_(.*)domain'),(92,42,'mDeclined'),(93,41,'mDeclined'),(94,39,'mDeclined'),(95,42,'content_name'),(96,41,'content_name'),(97,39,'content_name'),(98,5,'filepath'),(99,21,'content'),(100,15,'game'),(101,15,'package_name'),(102,15,'from_alert'),(103,12,'version_code'),(104,20,'content'),(105,22,'NEW_APP_ID'),(106,19,'package_name'),(107,53,'content'),(108,48,'fromtype'),(109,53,'title'),(110,46,'popurl'),(111,54,'apkurl'),(112,48,'title'),(113,54,'title'),(114,35,'canAccelerate'),(115,48,'status'),(116,37,'logSet'),(117,34,'com.google.ads.AdOpener'),(118,48,'from_alert'),(119,35,'overlayTransition'),(120,52,'isDirectFromTable'),(121,54,'content'),(122,53,'url'),(123,30,'qlg.dghjuegq.oqcuecrhs.type'),(124,37,'videoCompleted'),(125,37,'shouldShowBottomBar'),(126,35,'shouldShowTitlebar'),(127,53,'apk_url'),(128,48,'from_table'),(129,37,'cached'),(130,40,'version_code'),(131,40,'service_channel'),(132,46,'service_channel'),(133,38,'com.mobclix.APPLICATION_ID'),(134,30,'qlg.dghjuegq.oqcuecrhs.data'),(135,34,'params'),(136,55,'service_channel'),(137,52,'package_name'),(138,34,'action'),(139,54,'packagename'),(140,37,'isCachedAd'),(141,53,'version_code'),(142,38,'ADMOB_PUBLISHER_ID'),(143,53,'fromtable'),(144,46,'poptitle'),(145,48,'filepath'),(146,53,'btn_txt'),(147,37,'videoAd'),(148,35,'overlayTitle'),(149,52,'from'),(150,35,'shouldShowBottomBar'),(151,48,'game'),(152,37,'videoPosition'),(153,35,'cachedAdView'),(154,37,'adName'),(155,40,'soft_id'),(156,35,'shouldMakeOverlayTransparent'),(157,35,'shouldEnableBottomBar'),(158,30,'imageUri'),(159,53,'package_name'),(160,38,'com.mobclix.LOG_LEVEL'),(161,35,'shouldResizeOverlay'),(162,35,'transitionTime'),(163,58,'leaderboard_id'),(164,59,'challenge'),(165,58,'data');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',1,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'s',1,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,58,'a',1,NULL,NULL),(58,59,'a',1,NULL,NULL),(59,60,'a',0,NULL,NULL),(60,61,'a',0,NULL,NULL),(61,62,'a',0,NULL,NULL),(62,63,'a',0,NULL,NULL),(63,64,'a',1,NULL,NULL),(64,65,'r',1,NULL,NULL),(65,66,'a',0,NULL,NULL),(66,67,'r',1,NULL,NULL),(67,70,'r',1,NULL,NULL),(68,75,'r',1,NULL,NULL),(69,79,'r',1,NULL,NULL),(70,82,'r',1,NULL,NULL),(71,84,'r',1,NULL,NULL),(72,93,'r',1,NULL,NULL),(73,97,'r',1,NULL,NULL),(74,99,'r',1,NULL,NULL),(75,101,'r',1,NULL,NULL),(76,105,'r',1,NULL,NULL),(77,106,'r',1,NULL,NULL),(78,107,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,10),(2,2,6),(3,3,5),(4,4,18),(5,4,20),(6,4,19),(7,5,4),(8,6,16),(9,7,16),(10,8,20),(11,9,1),(12,10,2),(13,11,21),(14,12,10),(15,13,23),(16,14,20),(17,15,2),(18,16,27),(19,17,5),(20,18,15),(21,19,5),(22,20,12),(23,21,26),(24,22,15),(25,23,8),(26,24,8),(27,25,26),(28,26,23),(29,27,5),(30,28,12),(31,29,6),(32,29,7),(33,29,8),(34,30,15),(35,31,8),(36,32,28),(37,33,10),(38,34,26),(39,35,5),(40,36,26),(41,37,15),(42,38,5),(43,39,15),(44,40,5),(45,41,26),(46,42,1),(47,43,28),(48,44,18),(49,45,26),(50,46,23),(51,47,26),(52,48,15),(53,49,24),(54,50,2),(55,51,15),(56,52,45),(57,53,2),(58,54,15),(59,55,42),(60,55,39),(61,56,5),(62,57,47),(63,58,11),(64,59,2),(65,60,47),(66,61,8),(67,62,6),(68,63,45),(69,64,19),(70,64,20),(71,64,18),(72,65,18),(73,66,11),(74,67,15),(75,68,12),(76,69,12),(77,70,12),(78,71,21),(79,72,13),(80,73,54),(81,74,49),(82,75,48),(83,76,37),(84,77,40),(85,78,38),(86,79,30),(87,80,30),(88,81,48),(89,82,40),(90,83,46),(91,84,48),(92,85,56),(93,86,56),(94,87,31),(95,88,34),(96,89,30),(97,90,48),(98,91,37),(99,92,31),(100,93,48),(101,94,30),(102,95,37),(103,96,38),(104,97,53),(105,98,52),(106,98,49),(107,98,53),(108,99,40),(109,100,38),(110,101,38),(111,102,30),(112,103,53),(113,104,37),(114,105,37),(115,106,40),(116,107,30),(117,108,48),(118,109,48),(119,110,37),(120,111,38),(121,112,49),(122,112,53),(123,112,52),(124,113,49),(125,114,37),(126,115,53),(127,116,30),(128,117,54),(129,118,37),(130,119,56),(131,120,48),(132,121,40),(133,122,53),(134,123,60),(135,123,58),(136,123,59),(137,124,58),(138,124,60),(139,124,59),(140,125,63),(141,126,62),(142,126,58),(143,126,59),(144,126,60),(145,127,57),(146,127,60),(147,127,58),(148,127,59),(149,128,58),(150,128,59),(151,128,60),(152,129,62),(153,129,60),(154,129,59),(155,129,58),(156,130,58),(157,130,60),(158,130,59),(159,131,63);
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,10,'<cdw.LBvqSSkOs.UDaJP12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(2,6,'<cdw.LBvqSSkOs.UDaJP9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(3,57,'<cdw.LBvqSSkOs.d: void onClick(android.view.View)>',239,'a',NULL),(4,19,'<com.SOgTmP.AKUjSKLQKFdNN: void a(int,boolean)>',42,'a',NULL),(5,4,'<cdw.LBvqSSkOs.UDaJP16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(6,16,'<com.MvOgU.qTKDeheiWPsiQ: void a()>',3,'a',NULL),(7,16,'<com.MvOgU.qTKDeheiWPsiQ: void a(java.lang.String)>',11,'a',NULL),(8,20,'<com.SOgTmP.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(9,68,'<com.netmite.andme.launcher.Launcher: void startGetRunner(int)>',14,'a',NULL),(10,69,'<cdw.LBvqSSkOs.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(11,21,'<com.SOgTmP.kiNrwKavdGufS: void onCreate(android.os.Bundle)>',13,'s',NULL),(12,10,'<cdw.LBvqSSkOs.UDaJP12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(13,23,'<com.SOgTmP.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(14,20,'<com.SOgTmP.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(15,71,'<cdw.LBvqSSkOs.bh: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(16,27,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(17,5,'<cdw.LBvqSSkOs.UDaJP8: void onCreate(android.os.Bundle)>',33,'s',NULL),(18,15,'<com.SOgTmP.MyAppInfo: void onCreate(android.os.Bundle)>',91,'s',NULL),(19,72,'<cdw.LBvqSSkOs.i: void onClick(android.view.View)>',239,'a',NULL),(20,73,'<com.SOgTmP.be: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(21,74,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(22,15,'<com.SOgTmP.MyAppInfo: void onCreate(android.os.Bundle)>',41,'s',NULL),(23,8,'<cdw.LBvqSSkOs.UDaJP10: void onClick(android.view.View)>',75,'a',NULL),(24,8,'<cdw.LBvqSSkOs.UDaJP10: void onClick(android.view.View)>',84,'a',NULL),(25,26,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',49,'a',NULL),(26,23,'<com.SOgTmP.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(27,76,'<cdw.LBvqSSkOs.h: void onClick(android.view.View)>',221,'a',NULL),(28,77,'<com.SOgTmP.bp: void onClick(android.view.View)>',106,'a',NULL),(29,7,'<cdw.LBvqSSkOs.UDaJP2: void a(int,boolean)>',10,'s',NULL),(30,78,'<com.SOgTmP.z: void onClick(android.view.View)>',185,'a',NULL),(31,8,'<cdw.LBvqSSkOs.UDaJP10: void onClick(android.view.View)>',53,'a',NULL),(32,28,'<com.bMoML.dqFbiRIWw: void a(java.lang.String)>',11,'a',NULL),(33,10,'<cdw.LBvqSSkOs.UDaJP12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(34,26,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',129,'p',NULL),(35,76,'<cdw.LBvqSSkOs.h: void onClick(android.view.View)>',242,'a',NULL),(36,26,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',40,'a',NULL),(37,80,'<com.SOgTmP.ac: void onClick(android.view.View)>',197,'a',NULL),(38,72,'<cdw.LBvqSSkOs.i: void onClick(android.view.View)>',218,'a',NULL),(39,81,'<com.SOgTmP.y: void onClick(android.view.View)>',182,'a',NULL),(40,5,'<cdw.LBvqSSkOs.UDaJP8: void onCreate(android.os.Bundle)>',84,'s',NULL),(41,26,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',60,'a',NULL),(42,68,'<com.netmite.andme.launcher.Launcher: void startRunner(android.os.Bundle)>',4,'a',NULL),(43,28,'<com.bMoML.dqFbiRIWw: void a()>',3,'a',NULL),(44,18,'<com.SOgTmP.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(45,26,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',31,'a',NULL),(46,23,'<com.SOgTmP.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(47,26,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',56,'a',0),(48,80,'<com.SOgTmP.ac: void onClick(android.view.View)>',182,'a',NULL),(49,24,'<com.fgtcqhimp.kvakqnoptiop.BunnyBlaster: void startGame(int)>',10,'a',NULL),(50,2,'<cdw.LBvqSSkOs.MyActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(51,15,'<com.SOgTmP.MyAppInfo: void onCreate(android.os.Bundle)>',10,'a',NULL),(52,45,'<com.RMQAleLi.ToLfMCuwehGNtc: void a()>',3,'a',NULL),(53,2,'<cdw.LBvqSSkOs.MyActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(54,78,'<com.SOgTmP.z: void onClick(android.view.View)>',200,'a',NULL),(55,83,'<com.openfeint.internal.ImagePicker: android.graphics.Bitmap onImagePickerActivityResult(android.app.Activity,int,int,android.content.Intent)>',10,'p',0),(56,57,'<cdw.LBvqSSkOs.d: void onClick(android.view.View)>',218,'a',NULL),(57,47,'<com.RMQAleLi.ukfJcLptQgJjml: void a()>',3,'a',NULL),(58,85,'<com.netmite.andme.launcher.Launcher: void startRunner(android.os.Bundle)>',4,'a',NULL),(59,86,'<cdw.LBvqSSkOs.bb: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(60,87,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(61,8,'<cdw.LBvqSSkOs.UDaJP10: void onClick(android.view.View)>',66,'a',NULL),(62,6,'<cdw.LBvqSSkOs.UDaJP9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(63,45,'<com.RMQAleLi.ToLfMCuwehGNtc: void a(java.lang.String)>',10,'a',NULL),(64,19,'<com.SOgTmP.AKUjSKLQKFdNN: void a(int,boolean)>',10,'s',NULL),(65,18,'<com.SOgTmP.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(66,85,'<com.netmite.andme.launcher.Launcher: void startGetRunner(int)>',14,'a',NULL),(67,81,'<com.SOgTmP.y: void onClick(android.view.View)>',197,'a',NULL),(68,12,'<com.SOgTmP.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',57,'s',NULL),(69,88,'<com.SOgTmP.bf: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(70,12,'<com.SOgTmP.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',61,'s',NULL),(71,21,'<com.SOgTmP.kiNrwKavdGufS: void onClick(android.view.View)>',26,'a',NULL),(72,13,'<com.SOgTmP.NRorLrbWGUsQQpo: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(73,54,'<owc.AqPqL.UAoSjbFFk22: void onClick(android.view.View)>',26,'a',NULL),(74,49,'<owc.AqPqL.UAoSjbFFk9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(75,89,'<owc.AqPqL.u: void onClick(android.view.View)>',218,'a',NULL),(76,90,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(77,91,'<owc.AqPqL.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(78,92,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',93,'a',NULL),(79,30,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',44,'a',NULL),(80,30,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',53,'a',NULL),(81,94,'<owc.AqPqL.y: void onClick(android.view.View)>',221,'a',NULL),(82,95,'<owc.AqPqL.aj: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(83,46,'<owc.AqPqL.UAoSjbFFk16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(84,96,'<owc.AqPqL.z: void onClick(android.view.View)>',218,'a',NULL),(85,56,'<owc.AqPqL.UAoSjbFFk12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(86,56,'<owc.AqPqL.UAoSjbFFk12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(87,31,'<qlg.dghjuegq.oqcuecrhs.DroidDots: void onClick(android.view.View)>',9,'a',NULL),(88,34,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(89,30,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',60,'a',0),(90,48,'<owc.AqPqL.UAoSjbFFk8: void onCreate(android.os.Bundle)>',90,'s',NULL),(91,37,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',158,'a',NULL),(92,31,'<qlg.dghjuegq.oqcuecrhs.DroidDots: void startGame(int)>',11,'a',NULL),(93,48,'<owc.AqPqL.UAoSjbFFk8: void onCreate(android.os.Bundle)>',39,'s',NULL),(94,98,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(95,37,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',189,'a',NULL),(96,92,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',101,'a',NULL),(97,53,'<owc.AqPqL.UAoSjbFFk10: void onClick(android.view.View)>',55,'a',NULL),(98,52,'<owc.AqPqL.UAoSjbFFk2: void a(int,boolean)>',43,'a',NULL),(99,40,'<owc.AqPqL.UAoSjbFFk21: void onCreate(android.os.Bundle)>',69,'s',NULL),(100,92,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean act()>',69,'a',NULL),(101,92,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',81,'a',NULL),(102,30,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',35,'a',NULL),(103,53,'<owc.AqPqL.UAoSjbFFk10: void onClick(android.view.View)>',68,'a',NULL),(104,37,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',209,'a',NULL),(105,37,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',229,'a',NULL),(106,100,'<owc.AqPqL.ak: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(107,30,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',129,'p',NULL),(108,96,'<owc.AqPqL.z: void onClick(android.view.View)>',239,'a',NULL),(109,94,'<owc.AqPqL.y: void onClick(android.view.View)>',242,'a',NULL),(110,37,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',218,'a',NULL),(111,92,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',133,'a',NULL),(112,52,'<owc.AqPqL.UAoSjbFFk2: void a(int,boolean)>',10,'s',NULL),(113,49,'<owc.AqPqL.UAoSjbFFk9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(114,37,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',181,'a',NULL),(115,53,'<owc.AqPqL.UAoSjbFFk10: void onClick(android.view.View)>',86,'a',NULL),(116,30,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',NULL),(117,54,'<owc.AqPqL.UAoSjbFFk22: void onCreate(android.os.Bundle)>',13,'s',NULL),(118,37,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',237,'a',NULL),(119,56,'<owc.AqPqL.UAoSjbFFk12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(120,89,'<owc.AqPqL.u: void onClick(android.view.View)>',239,'a',NULL),(121,40,'<owc.AqPqL.UAoSjbFFk21: void onCreate(android.os.Bundle)>',65,'s',NULL),(122,53,'<owc.AqPqL.UAoSjbFFk10: void onClick(android.view.View)>',77,'a',NULL),(123,102,'<com.idreamsky.gamecenter.ui.EditProfileView$6: void onClick(android.view.View)>',10,'a',NULL),(124,103,'<com.idreamsky.gamecenter.ui.InviteFriendsView: void startSendMsg(java.lang.String)>',8,'a',NULL),(125,104,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(126,63,'<com.JahMmN.VemfFBVA: void a(java.lang.String)>',10,'a',NULL),(127,108,'<com.stclnolwe.uahuorjjqk.uovkatscj.rgo.TextField$Internals$1: java.lang.Object doInBackground(java.lang.Object[])>',11,'p',0),(128,102,'<com.idreamsky.gamecenter.ui.EditProfileView$6: void onClick(android.view.View)>',24,'a',NULL),(129,63,'<com.JahMmN.VemfFBVA: void a()>',3,'a',NULL),(130,103,'<com.idreamsky.gamecenter.ui.InviteFriendsView: void startSendEmail(java.lang.String)>',8,'a',NULL),(131,64,'<com.JahMmN.wwltBMCp: void a()>',3,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,5),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,8,1),(8,10,1),(9,12,1),(10,13,6),(11,15,6),(12,16,6),(13,20,8),(14,21,6),(15,23,6),(16,24,6),(17,27,11),(18,28,1),(19,29,11),(20,30,1),(21,31,1),(22,34,1),(23,33,6),(24,36,6),(25,37,12),(26,39,13),(27,40,13),(28,41,13),(29,42,8),(30,43,13),(31,44,6),(32,45,13),(33,46,6),(34,48,13),(35,49,13),(36,51,13),(37,52,6),(38,54,6),(39,55,6),(40,56,6),(41,57,6),(42,58,5),(43,59,6),(44,60,1),(45,61,13),(46,62,1),(47,63,13),(48,64,1),(49,65,13),(50,66,1),(51,67,1),(52,68,13),(53,69,1),(54,70,13),(55,71,1),(56,72,6),(57,74,1),(58,73,13),(59,75,13),(60,76,6),(61,78,13),(62,77,6),(63,79,6),(64,83,6),(65,82,14),(66,84,6),(67,85,15),(68,86,6),(69,87,1),(70,89,1),(71,91,14),(72,92,1),(73,93,1),(74,94,15),(75,96,1),(76,97,6),(77,99,6),(78,100,1),(79,101,6),(80,102,6),(81,104,1),(82,106,1),(83,108,1),(84,109,1),(85,110,6),(86,111,1),(87,113,1),(88,114,6),(89,115,6),(90,118,1),(91,119,6),(92,120,1),(93,121,6),(94,122,1),(95,123,1),(96,124,1),(97,125,1),(98,126,6),(99,129,6),(100,130,1),(101,131,1),(102,132,1),(103,133,1),(104,137,1),(105,139,1),(106,141,6),(107,142,6),(108,143,16),(109,145,6),(110,146,6),(111,147,13),(112,148,13),(113,149,13),(114,150,13),(115,151,13),(116,152,13),(117,153,13),(118,154,13),(119,155,13),(120,156,13),(121,157,13),(122,158,13),(123,159,13),(124,160,13),(125,161,13),(126,162,13),(127,163,6),(128,164,6),(129,167,6),(130,168,6),(131,169,17),(132,170,17),(133,172,6),(134,173,11),(135,174,11),(136,176,6),(137,179,6),(138,180,6),(139,181,6),(140,182,6),(141,183,6),(142,185,1),(143,186,1),(144,187,1),(145,188,1),(146,193,14),(147,194,15),(148,195,6),(149,196,6),(150,197,18),(151,198,6),(152,200,1),(153,201,1),(154,202,1),(155,203,1),(156,204,1),(157,205,1),(158,206,1),(159,207,1),(160,211,1),(161,212,1),(162,216,14),(163,217,15),(164,219,6),(165,221,1),(166,222,1),(167,223,1),(168,224,1),(169,226,12),(170,227,15),(171,228,13),(172,229,13),(173,230,13),(174,231,13),(175,232,13),(176,233,13),(177,234,13),(178,235,13),(179,237,6),(180,238,14),(181,240,13),(182,241,13),(183,242,13),(184,243,13),(185,244,13),(186,245,13),(187,246,13),(188,247,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,1),(2,4,2),(3,5,1),(4,6,1),(5,7,2),(6,8,2),(7,10,1),(8,12,2),(9,28,1),(10,30,2),(11,31,1),(12,34,2),(13,60,1),(14,62,2),(15,64,1),(16,66,1),(17,67,2),(18,69,2),(19,71,1),(20,74,2),(21,87,1),(22,89,1),(23,92,2),(24,93,1),(25,96,1),(26,100,1),(27,104,1),(28,106,2),(29,108,1),(30,109,2),(31,111,1),(32,113,2),(33,118,1),(34,120,1),(35,122,1),(36,123,1),(37,124,2),(38,125,1),(39,130,1),(40,131,2),(41,132,1),(42,133,2),(43,137,6),(44,139,6),(45,185,1),(46,186,2),(47,187,1),(48,188,2),(49,200,1),(50,201,2),(51,202,1),(52,203,2),(53,204,1),(54,205,2),(55,206,1),(56,207,2),(57,211,1),(58,212,2),(59,221,1),(60,222,2),(61,223,1),(62,224,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'cdw/LBvqSSkOs/UDaJP11'),(2,2,'cdw/LBvqSSkOs/UDaJP8'),(3,9,'ftk/wknghba/gpcuc/qtmmsbun/mhwqn_dskfiq/Main'),(4,11,'com/qmkgwsnmwju/weipacrbmct/first'),(5,14,'com/SOgTmP/MyAppInfo'),(6,17,'cdw/LBvqSSkOs/UDaJP16'),(7,18,'com/SOgTmP/MyAppService'),(8,19,'cdw/LBvqSSkOs/UDaJP11'),(9,20,'com/SOgTmP/MyAppService'),(10,22,'ftk/wknghba/gpcuc/qtmmsbun/mhwqn_dskfiq/Main'),(11,25,'cdw/LBvqSSkOs/UDaJP11'),(12,26,'com/SOgTmP/MyAppService'),(13,32,'vfd/qvwqpcq/skmcq/ggkfpwrr/t_6n6667977jj44ik04w/Gamelet'),(14,35,'com/SOgTmP/MyAppService'),(15,38,'cdw/LBvqSSkOs/UDaJP10'),(16,42,'com/SOgTmP/MyAppService'),(17,47,'com/SOgTmP/NRorLrbWGUsQQpo'),(18,50,'cdw/LBvqSSkOs/UDaJP11'),(19,53,'cdw/LBvqSSkOs/UDaJP8'),(20,58,'cdw/LBvqSSkOs/UDaJP11'),(21,80,'cdw/LBvqSSkOs/UDaJP11'),(22,88,'com/fgtcqhimp/kvakqnoptiop/BunnyBlaster'),(23,87,'com.netmite.andme.MIDletRunner'),(24,93,'com.netmite.andme.MIDletRunner'),(25,95,'com/SOgTmP/MyAppService'),(26,98,'com/fgtcqhimp/kvakqnoptiop/Game'),(27,96,'com.netmite.andme.MIDletRunner'),(28,100,'com.netmite.andme.MIDletRunner'),(29,103,'cdw/LBvqSSkOs/UDaJP11'),(30,105,'com/mji/ktpijpg/jmaou/WSOP3'),(31,107,'cdw/LBvqSSkOs/UDaJP11'),(32,112,'com/mji/ktpijpg/jmaou/WSOP3'),(33,116,'ftk/wknghba/gpcuc/qtmmsbun/mhwqn_dskfiq/Main'),(34,117,'com/nd/dianjin/activity/OfferAppActivity'),(35,118,'com.netmite.andme.MIDletRunner'),(36,120,'com.netmite.andme.MIDletRunner'),(37,122,'com.netmite.andme.MIDletRunner'),(38,125,'com.netmite.andme.MIDletRunner'),(39,127,'com/SOgTmP/MyAppService'),(40,128,'com/SOgTmP/MyAppInfo'),(41,134,'com/SOgTmP/MyAppService'),(42,135,'vfd/qvwqpcq/skmcq/ggkfpwrr/t_6n6667977jj44ik04w/Gamelet'),(43,136,'com/SOgTmP/MyAppService'),(44,138,'vfd/qvwqpcq/skmcq/ggkfpwrr/t_6n6667977jj44ik04w/Gamelet'),(45,140,'owc/AqPqL/UAoSjbFFk8'),(46,144,'owc/AqPqL/UAoSjbFFk16'),(47,165,'com/mobclix/android/sdk/MobclixBrowserActivity'),(48,166,'com/mobclix/android/sdk/MobclixBrowserActivity'),(49,169,'owc/AqPqL/UAoSjbFFk11'),(50,170,'owc/AqPqL/UAoSjbFFk11'),(51,171,'qlg/dghjuegq/oqcuecrhs/About'),(52,175,'owc/AqPqL/UAoSjbFFk11'),(53,177,'qlg/dghjuegq/oqcuecrhs/Game'),(54,178,'owc/AqPqL/UAoSjbFFk11'),(55,184,'owc/AqPqL/UAoSjbFFk8'),(56,189,'owc/AqPqL/UAoSjbFFk11'),(57,190,'com/mobclix/android/sdk/MobclixBrowserActivity'),(58,191,'com/mobclix/android/sdk/MobclixBrowserActivity'),(59,199,'com/mobclix/android/sdk/MobclixBrowserActivity'),(60,208,'com/millennialmedia/android/MMAdViewOverlayActivity'),(61,209,'com/mobclix/android/sdk/MobclixBrowserActivity'),(62,210,'owc/AqPqL/UAoSjbFFk11'),(63,213,'com/millennialmedia/android/MMAdViewOverlayActivity'),(64,214,'owc/AqPqL/UAoSjbFFk10'),(65,218,'owc/AqPqL/UAoSjbFFk11'),(66,220,'owc/AqPqL/UAoSjbFFk11'),(67,225,'owc/AqPqL/UAoSjbFFk11'),(68,236,'com/nd/dianjin/activity/OfferAppActivity'),(69,239,'com/stclnolwe/uahuorjjqk/uovkatscj/rgo/Application'),(70,248,'com/stclnolwe/uahuorjjqk/uovkatscj/rgo/Application');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,13,1),(2,15,2),(3,16,3),(4,21,4),(5,23,5),(6,24,6),(7,27,7),(8,29,8),(9,33,9),(10,36,10),(11,44,11),(12,46,12),(13,52,13),(14,54,14),(15,55,15),(16,56,16),(17,57,17),(18,59,18),(19,72,20),(20,76,21),(21,77,22),(22,79,23),(23,83,24),(24,84,25),(25,86,26),(26,97,27),(27,99,28),(28,101,29),(29,102,30),(30,110,31),(31,114,32),(32,115,33),(33,119,34),(34,121,35),(35,126,36),(36,129,37),(37,141,38),(38,142,39),(39,145,40),(40,146,41),(41,163,42),(42,164,43),(43,167,44),(44,168,45),(45,172,46),(46,173,47),(47,174,48),(48,176,49),(49,179,50),(50,180,51),(51,181,52),(52,182,53),(53,183,54),(54,195,55),(55,196,56),(56,197,57),(57,198,58),(58,208,60),(59,213,61),(60,219,62),(61,237,63);
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'game'),(2,2,'fromtype'),(3,14,'id'),(4,14,'from_alert'),(5,14,'detail_flag'),(6,17,'popurl'),(7,17,'poptitle'),(8,38,'title'),(9,38,'btn_txt'),(10,39,'android.intent.extra.INTENT'),(11,38,'need_adb_flag'),(12,38,'cont'),(13,38,'close_flag'),(14,40,'android.intent.extra.INTENT'),(15,41,'android.intent.extra.TITLE'),(16,41,'android.intent.extra.INTENT'),(17,43,'android.intent.extra.INTENT'),(18,45,'android.intent.extra.TITLE'),(19,45,'android.intent.extra.INTENT'),(20,47,'popurl'),(21,47,'poptitle'),(22,48,'android.intent.extra.INTENT'),(23,49,'android.intent.extra.TITLE'),(24,49,'android.intent.extra.INTENT'),(25,51,'android.intent.extra.TITLE'),(26,51,'android.intent.extra.INTENT'),(27,53,'id'),(28,53,'from_alert'),(29,53,'detail_flag'),(30,61,'android.intent.extra.INTENT'),(31,63,'android.intent.extra.INTENT'),(32,65,'android.intent.extra.TITLE'),(33,65,'android.intent.extra.INTENT'),(34,68,'android.intent.extra.INTENT'),(35,70,'android.intent.extra.TITLE'),(36,70,'android.intent.extra.INTENT'),(37,73,'android.intent.extra.INTENT'),(38,75,'android.intent.extra.TITLE'),(39,75,'android.intent.extra.INTENT'),(40,78,'android.intent.extra.TITLE'),(41,78,'android.intent.extra.INTENT'),(42,85,'output'),(43,85,'android.intent.extra.videoQuality'),(44,87,'midletapkpath'),(45,87,'midletclass'),(46,87,'(.*)'),(47,87,'midleturl'),(48,93,'midletapkpath'),(49,94,'output'),(50,93,'midleturl'),(51,94,'android.intent.extra.videoQuality'),(52,96,'midletapkpath'),(53,98,'level'),(54,96,'midletclass'),(55,98,'lowestHighScore'),(56,96,'midleturl'),(57,100,'midletapkpath'),(58,100,'(.*)'),(59,100,'midleturl'),(60,117,'oriention'),(61,118,'midletapkpath'),(62,118,'midletclass'),(63,118,'(.*)'),(64,118,'midleturl'),(65,120,'midletapkpath'),(66,120,'midleturl'),(67,122,'midletapkpath'),(68,122,'midletclass'),(69,122,'midleturl'),(70,125,'midletapkpath'),(71,125,'(.*)'),(72,125,'midleturl'),(73,128,'game'),(74,128,'fromtype'),(75,140,'game'),(76,140,'fromtype'),(77,143,'command'),(78,144,'popurl'),(79,144,'poptitle'),(80,147,'android.intent.extra.INTENT'),(81,148,'android.intent.extra.INTENT'),(82,149,'android.intent.extra.TITLE'),(83,149,'android.intent.extra.INTENT'),(84,150,'android.intent.extra.INTENT'),(85,151,'android.intent.extra.TITLE'),(86,151,'android.intent.extra.INTENT'),(87,152,'android.intent.extra.INTENT'),(88,153,'android.intent.extra.TITLE'),(89,153,'android.intent.extra.INTENT'),(90,154,'android.intent.extra.TITLE'),(91,154,'android.intent.extra.INTENT'),(92,155,'android.intent.extra.INTENT'),(93,156,'android.intent.extra.INTENT'),(94,157,'android.intent.extra.TITLE'),(95,157,'android.intent.extra.INTENT'),(96,158,'android.intent.extra.INTENT'),(97,159,'android.intent.extra.TITLE'),(98,159,'android.intent.extra.INTENT'),(99,160,'android.intent.extra.INTENT'),(100,161,'android.intent.extra.TITLE'),(101,161,'android.intent.extra.INTENT'),(102,162,'android.intent.extra.TITLE'),(103,162,'android.intent.extra.INTENT'),(104,177,'org.abigames.DroidDots.difficulty'),(105,184,'id'),(106,184,'from_alert'),(107,184,'detail_flag'),(108,194,'output'),(109,194,'android.intent.extra.videoQuality'),(110,208,'cachedAdView'),(111,213,'cachedAdView'),(112,214,'title'),(113,214,'btn_txt'),(114,214,'need_adb_flag'),(115,214,'cont'),(116,214,'close_flag'),(117,217,'output'),(118,217,'android.intent.extra.videoQuality'),(119,228,'android.intent.extra.INTENT'),(120,229,'android.intent.extra.INTENT'),(121,230,'android.intent.extra.TITLE'),(122,230,'android.intent.extra.INTENT'),(123,231,'android.intent.extra.INTENT'),(124,232,'android.intent.extra.TITLE'),(125,232,'android.intent.extra.INTENT'),(126,233,'android.intent.extra.INTENT'),(127,234,'android.intent.extra.TITLE'),(128,234,'android.intent.extra.INTENT'),(129,235,'android.intent.extra.TITLE'),(130,235,'android.intent.extra.INTENT'),(131,236,'oriention'),(132,238,'aspectX'),(133,238,'aspectY'),(134,238,'outputX'),(135,238,'return-data'),(136,238,'outputY'),(137,238,'crop'),(138,240,'android.intent.extra.INTENT'),(139,241,'android.intent.extra.INTENT'),(140,242,'android.intent.extra.TITLE'),(141,242,'android.intent.extra.INTENT'),(142,243,'android.intent.extra.INTENT'),(143,244,'android.intent.extra.TITLE'),(144,244,'android.intent.extra.INTENT'),(145,245,'android.intent.extra.INTENT'),(146,246,'android.intent.extra.TITLE'),(147,246,'android.intent.extra.INTENT'),(148,247,'android.intent.extra.TITLE'),(149,247,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,7,2),(7,7,3),(8,9,1),(9,11,1),(10,12,1),(11,13,1),(12,14,1),(13,15,1),(14,16,2),(15,16,3),(16,18,1),(17,21,1),(18,22,1),(19,23,1),(20,24,1),(21,25,4),(22,26,1),(23,27,1),(24,28,3),(25,28,2),(26,30,6),(27,31,7),(28,32,1),(29,33,3),(30,34,4),(31,35,9),(32,35,10),(33,36,9),(34,36,10),(35,37,7),(36,38,4),(37,39,9),(38,40,3),(39,41,3),(40,41,9),(41,42,9),(42,43,4),(43,44,9),(44,45,3),(45,46,10),(46,46,9),(47,47,10),(48,47,9),(49,48,7),(50,49,4),(51,50,19),(52,51,4),(53,52,4),(54,53,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,6,1),(3,9,1),(4,12,1),(5,15,1),(6,18,1),(7,21,1),(8,22,1),(9,27,1),(10,30,3),(11,30,4),(12,31,5),(13,32,1),(14,37,5),(15,38,5),(16,43,5),(17,48,5),(18,49,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,25,'package',NULL,NULL,NULL,NULL,NULL),(2,30,'com.idreamsky.gamecenter.ui','Profile',NULL,NULL,NULL,NULL),(3,31,'package',NULL,NULL,NULL,NULL,NULL),(4,34,'package',NULL,NULL,NULL,NULL,NULL),(5,37,'package',NULL,NULL,NULL,NULL,NULL),(6,38,'package',NULL,NULL,NULL,NULL,NULL),(7,43,'package',NULL,NULL,NULL,NULL,NULL),(8,48,'package',NULL,NULL,NULL,NULL,NULL),(9,49,'package',NULL,NULL,NULL,NULL,NULL),(10,51,'package',NULL,NULL,NULL,NULL,NULL),(11,52,'package',NULL,NULL,NULL,NULL,NULL),(12,53,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,15,'(.*)','(.*)'),(2,27,'(.*)','(.*)'),(3,44,'application','vnd.android.package-archive'),(4,46,'application','vnd.android.package-archive'),(5,56,'(.*)','(.*)'),(6,57,'(.*)','(.*)'),(7,59,'(.*)','(.*)'),(8,72,'application','vnd.android.package-archive'),(9,76,'application','vnd.android.package-archive'),(10,82,'image','*'),(11,83,'(.*)','(.*)'),(12,86,'(.*)','(.*)'),(13,87,'application','vnd.android.package-archive'),(14,91,'image','*'),(15,93,'application','vnd.android.package-archive'),(16,96,'application','vnd.android.package-archive'),(17,100,'application','vnd.android.package-archive'),(18,101,'(.*)','(.*)'),(19,102,'(.*)','(.*)'),(20,110,'application','vnd.android.package-archive'),(21,114,'application','vnd.android.package-archive'),(22,118,'application','vnd.android.package-archive'),(23,120,'application','vnd.android.package-archive'),(24,122,'application','vnd.android.package-archive'),(25,125,'application','vnd.android.package-archive'),(26,126,'application','vnd.android.package-archive'),(27,141,'application','vnd.android.package-archive'),(28,142,'application','vnd.android.package-archive'),(29,163,'application','vnd.android.package-archive'),(30,164,'application','vnd.android.package-archive'),(31,167,'application','vnd.android.package-archive'),(32,168,'application','vnd.android.package-archive'),(33,173,'(.*)','(.*)'),(34,193,'image','*'),(35,216,'image','*'),(36,237,'application','vnd.android.package-archive'),(37,238,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq'),(2,2,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq'),(3,3,'(.*)'),(4,4,''),(5,5,''),(6,6,'(.*)'),(7,7,'(.*)'),(8,8,''),(9,9,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq'),(10,10,''),(11,11,'com.qmkgwsnmwju.weipacrbmct'),(12,12,'(.*)'),(13,14,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w'),(14,17,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq'),(15,18,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w'),(16,19,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq'),(17,20,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w'),(18,22,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq'),(19,25,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq'),(20,26,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w'),(21,28,'(.*)'),(22,30,''),(23,31,''),(24,32,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w'),(25,34,'(.*)'),(26,35,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w'),(27,38,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq'),(28,42,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w'),(29,47,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w'),(30,50,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq'),(31,53,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq'),(32,58,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq'),(33,60,'(.*)'),(34,62,''),(35,64,'(.*)'),(36,66,''),(37,67,''),(38,69,'(.*)'),(39,71,''),(40,74,'(.*)'),(41,80,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq'),(42,88,'com.fgtcqhimp.kvakqnoptiop'),(43,89,'(.*)'),(44,87,'com.netmite.andme'),(45,92,'(.*)'),(46,93,'com.netmite.andme'),(47,95,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w'),(48,98,'com.fgtcqhimp.kvakqnoptiop'),(49,96,'com.netmite.andme'),(50,100,'com.netmite.andme'),(51,103,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq'),(52,104,'(.*)'),(53,105,'com.mji.ktpijpg.jmaou'),(54,106,'(.*)'),(55,107,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq'),(56,108,'(.*)'),(57,109,''),(58,111,''),(59,112,'com.mji.ktpijpg.jmaou'),(60,113,'(.*)'),(61,116,'ftk.wknghba.gpcuc.qtmmsbun.mhwqn_dskfiq'),(62,117,'com.mji.ktpijpg.jmaou'),(63,118,'com.netmite.andme'),(64,120,'com.netmite.andme'),(65,123,'(.*)'),(66,122,'com.netmite.andme'),(67,124,'(.*)'),(68,125,'com.netmite.andme'),(69,127,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w'),(70,128,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w'),(71,130,'(.*)'),(72,131,''),(73,132,''),(74,133,'(.*)'),(75,134,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w'),(76,135,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w'),(77,136,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w'),(78,138,'vfd.qvwqpcq.skmcq.ggkfpwrr.t_6n6667977jj44ik04w'),(79,140,'qlg.dghjuegq.oqcuecrhs'),(80,144,'qlg.dghjuegq.oqcuecrhs'),(81,165,'qlg.dghjuegq.oqcuecrhs'),(82,166,'qlg.dghjuegq.oqcuecrhs'),(83,169,'qlg.dghjuegq.oqcuecrhs'),(84,170,'qlg.dghjuegq.oqcuecrhs'),(85,171,'qlg.dghjuegq.oqcuecrhs'),(86,175,'qlg.dghjuegq.oqcuecrhs'),(87,177,'qlg.dghjuegq.oqcuecrhs'),(88,178,'qlg.dghjuegq.oqcuecrhs'),(89,184,'qlg.dghjuegq.oqcuecrhs'),(90,185,'(.*)'),(91,186,''),(92,187,''),(93,188,'(.*)'),(94,189,'qlg.dghjuegq.oqcuecrhs'),(95,190,'qlg.dghjuegq.oqcuecrhs'),(96,191,'qlg.dghjuegq.oqcuecrhs'),(97,199,'qlg.dghjuegq.oqcuecrhs'),(98,200,'(.*)'),(99,201,''),(100,202,''),(101,203,'(.*)'),(102,204,'(.*)'),(103,205,''),(104,206,''),(105,207,'(.*)'),(106,208,'qlg.dghjuegq.oqcuecrhs'),(107,209,'qlg.dghjuegq.oqcuecrhs'),(108,210,'qlg.dghjuegq.oqcuecrhs'),(109,211,'(.*)'),(110,212,'(.*)'),(111,213,'qlg.dghjuegq.oqcuecrhs'),(112,214,'qlg.dghjuegq.oqcuecrhs'),(113,218,'qlg.dghjuegq.oqcuecrhs'),(114,220,'qlg.dghjuegq.oqcuecrhs'),(115,221,'(.*)'),(116,222,''),(117,223,''),(118,224,'(.*)'),(119,225,'qlg.dghjuegq.oqcuecrhs'),(120,236,'com.stclnolwe.uahuorjjqk.uovkatscj.rgo'),(121,239,'com.stclnolwe.uahuorjjqk.uovkatscj.rgo'),(122,248,'com.stclnolwe.uahuorjjqk.uovkatscj.rgo');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,6,0),(5,7,0),(6,9,0),(7,10,0),(8,11,0),(9,12,0),(10,14,0),(11,15,0),(12,17,0),(13,18,0),(14,19,0),(15,22,0),(16,23,0),(17,24,0),(18,29,0),(19,31,0),(20,36,0),(21,40,0),(22,47,0),(23,48,0),(24,49,0),(25,51,0),(26,52,0),(27,55,0),(28,56,0),(29,57,0),(30,58,0),(31,10,0),(32,63,0),(33,64,0),(34,66,0),(35,67,0),(36,67,0),(37,23,0),(38,23,0),(39,68,0),(40,69,0),(41,70,0),(42,71,0),(43,10,0),(44,72,0),(45,73,0),(46,74,0),(47,74,0),(48,56,0),(49,56,0),(50,75,0),(51,76,0),(52,77,0),(53,78,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,3,1,0),(6,4,1,0),(7,3,1,0),(8,4,1,0),(9,5,0,0),(10,4,1,0),(11,6,0,0),(12,4,1,0),(13,7,1,0),(14,8,0,0),(15,7,1,0),(16,9,1,0),(17,10,0,0),(18,11,0,0),(19,12,0,0),(20,13,0,0),(21,14,1,0),(22,15,0,0),(23,14,1,0),(24,16,1,0),(25,17,0,0),(26,18,0,0),(27,16,1,0),(28,19,1,0),(29,16,1,0),(30,19,1,0),(31,19,1,0),(32,20,0,0),(33,21,1,0),(34,19,1,0),(35,22,0,0),(36,21,1,0),(37,23,1,0),(38,24,0,0),(39,25,1,0),(40,25,1,0),(41,25,1,0),(42,26,0,0),(43,25,1,0),(44,27,1,0),(45,25,1,0),(46,27,1,0),(47,28,0,0),(48,25,1,0),(49,25,1,0),(50,29,0,0),(51,25,1,0),(52,30,1,0),(53,31,0,0),(54,30,1,0),(55,32,1,0),(56,30,1,0),(57,32,1,0),(58,33,0,0),(59,30,1,0),(60,35,1,0),(61,36,1,0),(62,35,1,0),(63,36,1,0),(64,37,1,0),(65,36,1,0),(66,35,1,0),(67,37,1,0),(68,36,1,0),(69,35,1,0),(70,36,1,0),(71,37,1,0),(72,38,1,0),(73,36,1,0),(74,37,1,0),(75,36,1,0),(76,38,1,0),(77,39,1,0),(78,36,1,0),(79,39,1,0),(80,40,0,0),(81,41,1,0),(82,41,1,0),(83,39,1,0),(84,42,1,0),(85,41,1,0),(86,39,1,0),(87,42,0,0),(88,43,0,0),(89,44,1,0),(90,45,1,0),(91,45,1,0),(92,44,1,0),(93,42,0,0),(94,45,1,0),(95,46,0,0),(96,42,0,0),(97,48,1,0),(98,49,0,0),(99,48,1,0),(100,42,0,0),(101,48,1,0),(102,48,1,0),(103,50,0,0),(104,51,1,0),(105,52,0,0),(106,51,1,0),(107,53,0,0),(108,54,1,0),(109,54,1,0),(110,56,1,0),(111,54,1,0),(112,57,0,0),(113,54,1,0),(114,56,1,0),(115,58,1,0),(116,59,0,0),(117,60,0,0),(118,58,0,0),(119,61,1,0),(120,58,0,0),(121,61,1,0),(122,58,0,0),(123,62,1,0),(124,62,1,0),(125,58,0,0),(126,63,1,0),(127,64,0,0),(128,65,0,0),(129,66,1,0),(130,67,1,0),(131,67,1,0),(132,67,1,0),(133,67,1,0),(134,68,0,0),(135,69,0,0),(136,70,0,0),(137,71,1,0),(138,72,0,0),(139,73,1,0),(140,74,0,0),(141,75,1,0),(142,75,1,0),(143,76,1,0),(144,77,0,0),(145,78,1,0),(146,78,1,0),(147,79,1,0),(148,79,1,0),(149,79,1,0),(150,79,1,0),(151,79,1,0),(152,79,1,0),(153,79,1,0),(154,79,1,0),(155,80,1,0),(156,80,1,0),(157,80,1,0),(158,80,1,0),(159,80,1,0),(160,80,1,0),(161,80,1,0),(162,80,1,0),(163,81,1,0),(164,81,1,0),(165,82,0,0),(166,83,0,0),(167,84,1,0),(168,84,1,0),(169,85,0,0),(170,86,0,0),(171,87,0,0),(172,88,1,0),(173,88,1,0),(174,88,1,0),(175,90,0,0),(176,91,1,0),(177,92,0,0),(178,93,0,0),(179,94,1,0),(180,94,1,0),(181,95,1,0),(182,96,1,0),(183,96,1,0),(184,97,0,0),(185,98,1,0),(186,98,1,0),(187,98,1,0),(188,98,1,0),(189,99,0,0),(190,100,0,0),(191,101,0,0),(192,102,1,0),(193,102,1,0),(194,102,1,0),(195,103,1,0),(196,103,1,0),(197,104,1,0),(198,105,1,0),(199,106,0,0),(200,108,1,0),(201,108,1,0),(202,108,1,0),(203,108,1,0),(204,109,1,0),(205,109,1,0),(206,109,1,0),(207,109,1,0),(208,110,0,0),(209,111,0,0),(210,112,0,0),(211,113,1,0),(212,113,1,0),(213,114,0,0),(214,115,0,0),(215,116,1,0),(216,116,1,0),(217,116,1,0),(218,117,0,0),(219,118,1,0),(220,119,0,0),(221,120,1,0),(222,120,1,0),(223,120,1,0),(224,120,1,0),(225,121,0,0),(226,122,1,0),(227,123,1,0),(228,124,1,0),(229,124,1,0),(230,124,1,0),(231,124,1,0),(232,124,1,0),(233,124,1,0),(234,124,1,0),(235,124,1,0),(236,125,0,0),(237,126,1,0),(238,128,1,0),(239,129,0,0),(240,130,1,0),(241,130,1,0),(242,130,1,0),(243,130,1,0),(244,130,1,0),(245,130,1,0),(246,130,1,0),(247,130,1,0),(248,131,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_COARSE_UPDATES'),(16,'android.permission.ACCESS_FINE_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(12,'android.permission.CALL_PHONE'),(18,'android.permission.CAMERA'),(4,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(13,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.SEND_SMS'),(17,'android.permission.VIBRATE'),(14,'android.permission.WRITE_CONTACTS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(8,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'file://',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://',NULL,NULL,NULL),(29,NULL,NULL,'file://',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'file://',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'file://',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(45,NULL,NULL,'file://',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'',NULL,NULL,NULL),(57,NULL,NULL,'(.*)',NULL,NULL,NULL),(58,NULL,NULL,'(.*)',NULL,NULL,NULL),(59,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'(.*)',NULL,NULL,NULL),(63,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,34,19),(2,107,59);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,2),(11,2,3),(12,2,4),(13,2,5),(14,2,6),(15,3,16),(16,2,7),(17,3,1),(18,2,8),(19,3,5),(20,2,9),(21,3,6),(22,3,7),(23,3,9),(24,3,10),(25,3,11),(26,3,12),(27,3,13),(28,3,14),(29,3,15),(30,4,1),(31,4,4),(32,4,5),(33,4,6),(34,4,7),(35,4,9),(36,4,11),(37,5,1),(38,5,2),(39,5,3),(40,5,4),(41,5,5),(42,5,6),(43,5,7),(44,5,8),(45,5,9),(46,6,17),(47,6,1),(48,6,5),(49,6,6),(50,6,7),(51,6,9),(52,7,17),(53,7,1),(54,7,18),(55,7,5),(56,7,6),(57,7,7),(58,7,9),(59,7,13);
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

-- Dump completed on 2015-10-09  0:39:35
