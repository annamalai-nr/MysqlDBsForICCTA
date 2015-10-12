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
) ENGINE=InnoDB AUTO_INCREMENT=2959 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,98,25,2,NULL),(2,123,24,2,NULL),(3,124,24,2,NULL),(4,37,24,2,NULL),(5,119,24,2,NULL),(6,121,24,2,NULL),(7,104,24,2,NULL),(8,106,24,2,NULL),(9,89,24,2,NULL),(10,92,24,2,NULL),(11,6,24,2,NULL),(12,8,24,2,NULL),(13,10,24,2,NULL),(14,12,24,2,NULL),(15,21,24,2,NULL),(16,23,24,2,NULL),(17,137,24,2,NULL),(18,39,24,2,NULL),(19,40,24,2,NULL),(20,41,24,2,NULL),(21,43,24,2,NULL),(22,45,24,2,NULL),(23,48,24,2,NULL),(24,49,24,2,NULL),(25,51,24,2,NULL),(26,61,24,2,NULL),(27,63,24,2,NULL),(28,65,24,2,NULL),(29,68,24,2,NULL),(30,70,24,2,NULL),(31,73,24,2,NULL),(32,75,24,2,NULL),(33,78,24,2,NULL),(34,81,24,2,NULL),(35,85,24,2,NULL),(36,90,24,2,NULL),(37,94,24,2,NULL),(38,24,24,2,NULL),(39,29,24,2,NULL),(40,147,24,2,NULL),(41,148,24,2,NULL),(42,149,24,2,NULL),(43,150,24,2,NULL),(44,151,24,2,NULL),(45,152,24,2,NULL),(46,153,24,2,NULL),(47,154,24,2,NULL),(48,155,24,2,NULL),(49,156,24,2,NULL),(50,157,24,2,NULL),(51,158,24,2,NULL),(52,159,24,2,NULL),(53,160,24,2,NULL),(54,161,24,2,NULL),(55,162,24,2,NULL),(56,192,24,2,NULL),(57,194,24,2,NULL),(58,215,24,2,NULL),(59,217,24,2,NULL),(60,172,24,2,NULL),(61,174,24,2,NULL),(62,176,24,2,NULL),(63,181,24,2,NULL),(64,197,24,2,NULL),(65,198,24,2,NULL),(66,219,24,2,NULL),(67,211,24,2,NULL),(68,212,24,2,NULL),(69,185,24,2,NULL),(70,186,24,2,NULL),(71,187,24,2,NULL),(72,188,24,2,NULL),(73,195,24,2,NULL),(74,196,24,2,NULL),(75,226,24,2,NULL),(76,139,24,2,NULL),(77,39,1,2,NULL),(78,40,1,2,NULL),(79,41,1,2,NULL),(80,43,1,2,NULL),(81,45,1,2,NULL),(82,48,1,2,NULL),(83,49,1,2,NULL),(84,51,1,2,NULL),(85,61,1,2,NULL),(86,63,1,2,NULL),(87,65,1,2,NULL),(88,68,1,2,NULL),(89,70,1,2,NULL),(90,73,1,2,NULL),(91,75,1,2,NULL),(92,78,1,2,NULL),(93,81,1,2,NULL),(94,85,1,2,NULL),(95,90,1,2,NULL),(96,94,1,2,NULL),(97,39,2,2,NULL),(98,40,2,2,NULL),(99,41,2,2,NULL),(100,43,2,2,NULL),(101,45,2,2,NULL),(102,48,2,2,NULL),(103,49,2,2,NULL),(104,51,2,2,NULL),(105,61,2,2,NULL),(106,63,2,2,NULL),(107,65,2,2,NULL),(108,68,2,2,NULL),(109,70,2,2,NULL),(110,73,2,2,NULL),(111,75,2,2,NULL),(112,78,2,2,NULL),(113,81,2,2,NULL),(114,85,2,2,NULL),(115,90,2,2,NULL),(116,94,2,2,NULL),(117,39,5,2,NULL),(118,40,5,2,NULL),(119,41,5,2,NULL),(120,43,5,2,NULL),(121,45,5,2,NULL),(122,48,5,2,NULL),(123,49,5,2,NULL),(124,51,5,2,NULL),(125,61,5,2,NULL),(126,63,5,2,NULL),(127,65,5,2,NULL),(128,68,5,2,NULL),(129,70,5,2,NULL),(130,73,5,2,NULL),(131,75,5,2,NULL),(132,78,5,2,NULL),(133,81,5,2,NULL),(134,85,5,2,NULL),(135,90,5,2,NULL),(136,94,5,2,NULL),(137,39,6,2,NULL),(138,40,6,2,NULL),(139,41,6,2,NULL),(140,43,6,2,NULL),(141,45,6,2,NULL),(142,48,6,2,NULL),(143,49,6,2,NULL),(144,51,6,2,NULL),(145,61,6,2,NULL),(146,63,6,2,NULL),(147,65,6,2,NULL),(148,68,6,2,NULL),(149,70,6,2,NULL),(150,73,6,2,NULL),(151,75,6,2,NULL),(152,78,6,2,NULL),(153,81,6,2,NULL),(154,85,6,2,NULL),(155,90,6,2,NULL),(156,94,6,2,NULL),(157,39,7,2,NULL),(158,40,7,2,NULL),(159,41,7,2,NULL),(160,43,7,2,NULL),(161,45,7,2,NULL),(162,48,7,2,NULL),(163,49,7,2,NULL),(164,51,7,2,NULL),(165,61,7,2,NULL),(166,63,7,2,NULL),(167,65,7,2,NULL),(168,68,7,2,NULL),(169,70,7,2,NULL),(170,73,7,2,NULL),(171,75,7,2,NULL),(172,78,7,2,NULL),(173,81,7,2,NULL),(174,85,7,2,NULL),(175,90,7,2,NULL),(176,94,7,2,NULL),(177,39,9,2,NULL),(178,40,9,2,NULL),(179,41,9,2,NULL),(180,43,9,2,NULL),(181,45,9,2,NULL),(182,48,9,2,NULL),(183,49,9,2,NULL),(184,51,9,2,NULL),(185,61,9,2,NULL),(186,63,9,2,NULL),(187,65,9,2,NULL),(188,68,9,2,NULL),(189,70,9,2,NULL),(190,73,9,2,NULL),(191,75,9,2,NULL),(192,78,9,2,NULL),(193,81,9,2,NULL),(194,85,9,2,NULL),(195,90,9,2,NULL),(196,94,9,2,NULL),(197,39,10,2,NULL),(198,40,10,2,NULL),(199,41,10,2,NULL),(200,43,10,2,NULL),(201,45,10,2,NULL),(202,48,10,2,NULL),(203,49,10,2,NULL),(204,51,10,2,NULL),(205,61,10,2,NULL),(206,63,10,2,NULL),(207,65,10,2,NULL),(208,68,10,2,NULL),(209,70,10,2,NULL),(210,73,10,2,NULL),(211,75,10,2,NULL),(212,78,10,2,NULL),(213,81,10,2,NULL),(214,85,10,2,NULL),(215,90,10,2,NULL),(216,94,10,2,NULL),(217,39,64,2,NULL),(218,40,64,2,NULL),(219,41,64,2,NULL),(220,43,64,2,NULL),(221,45,64,2,NULL),(222,48,64,2,NULL),(223,49,64,2,NULL),(224,51,64,2,NULL),(225,61,64,2,NULL),(226,63,64,2,NULL),(227,65,64,2,NULL),(228,68,64,2,NULL),(229,70,64,2,NULL),(230,73,64,2,NULL),(231,75,64,2,NULL),(232,78,64,2,NULL),(233,81,64,2,NULL),(234,85,64,2,NULL),(235,90,64,2,NULL),(236,94,64,2,NULL),(237,39,71,2,NULL),(238,40,71,2,NULL),(239,41,71,2,NULL),(240,43,71,2,NULL),(241,45,71,2,NULL),(242,48,71,2,NULL),(243,49,71,2,NULL),(244,51,71,2,NULL),(245,61,71,2,NULL),(246,63,71,2,NULL),(247,65,71,2,NULL),(248,68,71,2,NULL),(249,70,71,2,NULL),(250,73,71,2,NULL),(251,75,71,2,NULL),(252,78,71,2,NULL),(253,81,71,2,NULL),(254,85,71,2,NULL),(255,90,71,2,NULL),(256,94,71,2,NULL),(257,39,11,2,NULL),(258,40,11,2,NULL),(259,41,11,2,NULL),(260,43,11,2,NULL),(261,45,11,2,NULL),(262,48,11,2,NULL),(263,49,11,2,NULL),(264,51,11,2,NULL),(265,61,11,2,NULL),(266,63,11,2,NULL),(267,65,11,2,NULL),(268,68,11,2,NULL),(269,70,11,2,NULL),(270,73,11,2,NULL),(271,75,11,2,NULL),(272,78,11,2,NULL),(273,81,11,2,NULL),(274,85,11,2,NULL),(275,90,11,2,NULL),(276,94,11,2,NULL),(277,39,12,2,NULL),(278,40,12,2,NULL),(279,41,12,2,NULL),(280,43,12,2,NULL),(281,45,12,2,NULL),(282,48,12,2,NULL),(283,49,12,2,NULL),(284,51,12,2,NULL),(285,61,12,2,NULL),(286,63,12,2,NULL),(287,65,12,2,NULL),(288,68,12,2,NULL),(289,70,12,2,NULL),(290,73,12,2,NULL),(291,75,12,2,NULL),(292,78,12,2,NULL),(293,81,12,2,NULL),(294,85,12,2,NULL),(295,90,12,2,NULL),(296,94,12,2,NULL),(297,39,15,2,NULL),(298,40,15,2,NULL),(299,41,15,2,NULL),(300,43,15,2,NULL),(301,45,15,2,NULL),(302,48,15,2,NULL),(303,49,15,2,NULL),(304,51,15,2,NULL),(305,61,15,2,NULL),(306,63,15,2,NULL),(307,65,15,2,NULL),(308,68,15,2,NULL),(309,70,15,2,NULL),(310,73,15,2,NULL),(311,75,15,2,NULL),(312,78,15,2,NULL),(313,81,15,2,NULL),(314,85,15,2,NULL),(315,90,15,2,NULL),(316,94,15,2,NULL),(317,39,18,2,NULL),(318,40,18,2,NULL),(319,41,18,2,NULL),(320,43,18,2,NULL),(321,45,18,2,NULL),(322,48,18,2,NULL),(323,49,18,2,NULL),(324,51,18,2,NULL),(325,61,18,2,NULL),(326,63,18,2,NULL),(327,65,18,2,NULL),(328,68,18,2,NULL),(329,70,18,2,NULL),(330,73,18,2,NULL),(331,75,18,2,NULL),(332,78,18,2,NULL),(333,81,18,2,NULL),(334,85,18,2,NULL),(335,90,18,2,NULL),(336,94,18,2,NULL),(337,39,19,2,NULL),(338,40,19,2,NULL),(339,41,19,2,NULL),(340,43,19,2,NULL),(341,45,19,2,NULL),(342,48,19,2,NULL),(343,49,19,2,NULL),(344,51,19,2,NULL),(345,61,19,2,NULL),(346,63,19,2,NULL),(347,65,19,2,NULL),(348,68,19,2,NULL),(349,70,19,2,NULL),(350,73,19,2,NULL),(351,75,19,2,NULL),(352,78,19,2,NULL),(353,81,19,2,NULL),(354,85,19,2,NULL),(355,90,19,2,NULL),(356,94,19,2,NULL),(357,39,22,2,NULL),(358,40,22,2,NULL),(359,41,22,2,NULL),(360,43,22,2,NULL),(361,45,22,2,NULL),(362,48,22,2,NULL),(363,49,22,2,NULL),(364,51,22,2,NULL),(365,61,22,2,NULL),(366,63,22,2,NULL),(367,65,22,2,NULL),(368,68,22,2,NULL),(369,70,22,2,NULL),(370,73,22,2,NULL),(371,75,22,2,NULL),(372,78,22,2,NULL),(373,81,22,2,NULL),(374,85,22,2,NULL),(375,90,22,2,NULL),(376,94,22,2,NULL),(377,39,23,2,NULL),(378,40,23,2,NULL),(379,41,23,2,NULL),(380,43,23,2,NULL),(381,45,23,2,NULL),(382,48,23,2,NULL),(383,49,23,2,NULL),(384,51,23,2,NULL),(385,61,23,2,NULL),(386,63,23,2,NULL),(387,65,23,2,NULL),(388,68,23,2,NULL),(389,70,23,2,NULL),(390,73,23,2,NULL),(391,75,23,2,NULL),(392,78,23,2,NULL),(393,81,23,2,NULL),(394,85,23,2,NULL),(395,90,23,2,NULL),(396,94,23,2,NULL),(397,39,68,2,NULL),(398,40,68,2,NULL),(399,41,68,2,NULL),(400,43,68,2,NULL),(401,45,68,2,NULL),(402,48,68,2,NULL),(403,49,68,2,NULL),(404,51,68,2,NULL),(405,61,68,2,NULL),(406,63,68,2,NULL),(407,65,68,2,NULL),(408,68,68,2,NULL),(409,70,68,2,NULL),(410,73,68,2,NULL),(411,75,68,2,NULL),(412,78,68,2,NULL),(413,81,68,2,NULL),(414,85,68,2,NULL),(415,90,68,2,NULL),(416,94,68,2,NULL),(417,39,69,2,NULL),(418,40,69,2,NULL),(419,41,69,2,NULL),(420,43,69,2,NULL),(421,45,69,2,NULL),(422,48,69,2,NULL),(423,49,69,2,NULL),(424,51,69,2,NULL),(425,61,69,2,NULL),(426,63,69,2,NULL),(427,65,69,2,NULL),(428,68,69,2,NULL),(429,70,69,2,NULL),(430,73,69,2,NULL),(431,75,69,2,NULL),(432,78,69,2,NULL),(433,81,69,2,NULL),(434,85,69,2,NULL),(435,90,69,2,NULL),(436,94,69,2,NULL),(437,39,14,2,NULL),(438,40,14,2,NULL),(439,41,14,2,NULL),(440,43,14,2,NULL),(441,45,14,2,NULL),(442,48,14,2,NULL),(443,49,14,2,NULL),(444,51,14,2,NULL),(445,61,14,2,NULL),(446,63,14,2,NULL),(447,65,14,2,NULL),(448,68,14,2,NULL),(449,70,14,2,NULL),(450,73,14,2,NULL),(451,75,14,2,NULL),(452,78,14,2,NULL),(453,81,14,2,NULL),(454,85,14,2,NULL),(455,90,14,2,NULL),(456,94,14,2,NULL),(457,39,17,2,NULL),(458,40,17,2,NULL),(459,41,17,2,NULL),(460,43,17,2,NULL),(461,45,17,2,NULL),(462,48,17,2,NULL),(463,49,17,2,NULL),(464,51,17,2,NULL),(465,61,17,2,NULL),(466,63,17,2,NULL),(467,65,17,2,NULL),(468,68,17,2,NULL),(469,70,17,2,NULL),(470,73,17,2,NULL),(471,75,17,2,NULL),(472,78,17,2,NULL),(473,81,17,2,NULL),(474,85,17,2,NULL),(475,90,17,2,NULL),(476,94,17,2,NULL),(477,39,29,2,NULL),(478,40,29,2,NULL),(479,41,29,2,NULL),(480,43,29,2,NULL),(481,45,29,2,NULL),(482,48,29,2,NULL),(483,49,29,2,NULL),(484,51,29,2,NULL),(485,61,29,2,NULL),(486,63,29,2,NULL),(487,65,29,2,NULL),(488,68,29,2,NULL),(489,70,29,2,NULL),(490,73,29,2,NULL),(491,75,29,2,NULL),(492,78,29,2,NULL),(493,81,29,2,NULL),(494,85,29,2,NULL),(495,90,29,2,NULL),(496,94,29,2,NULL),(497,39,67,2,NULL),(498,40,67,2,NULL),(499,41,67,2,NULL),(500,43,67,2,NULL),(501,45,67,2,NULL),(502,48,67,2,NULL),(503,49,67,2,NULL),(504,51,67,2,NULL),(505,61,67,2,NULL),(506,63,67,2,NULL),(507,65,67,2,NULL),(508,68,67,2,NULL),(509,70,67,2,NULL),(510,73,67,2,NULL),(511,75,67,2,NULL),(512,78,67,2,NULL),(513,81,67,2,NULL),(514,85,67,2,NULL),(515,90,67,2,NULL),(516,94,67,2,NULL),(517,39,70,2,NULL),(518,40,70,2,NULL),(519,41,70,2,NULL),(520,43,70,2,NULL),(521,45,70,2,NULL),(522,48,70,2,NULL),(523,49,70,2,NULL),(524,51,70,2,NULL),(525,61,70,2,NULL),(526,63,70,2,NULL),(527,65,70,2,NULL),(528,68,70,2,NULL),(529,70,70,2,NULL),(530,73,70,2,NULL),(531,75,70,2,NULL),(532,78,70,2,NULL),(533,81,70,2,NULL),(534,85,70,2,NULL),(535,90,70,2,NULL),(536,94,70,2,NULL),(537,39,31,2,NULL),(538,40,31,2,NULL),(539,41,31,2,NULL),(540,43,31,2,NULL),(541,45,31,2,NULL),(542,48,31,2,NULL),(543,49,31,2,NULL),(544,51,31,2,NULL),(545,61,31,2,NULL),(546,63,31,2,NULL),(547,65,31,2,NULL),(548,68,31,2,NULL),(549,70,31,2,NULL),(550,73,31,2,NULL),(551,75,31,2,NULL),(552,78,31,2,NULL),(553,81,31,2,NULL),(554,85,31,2,NULL),(555,90,31,2,NULL),(556,94,31,2,NULL),(557,39,40,2,NULL),(558,40,40,2,NULL),(559,41,40,2,NULL),(560,43,40,2,NULL),(561,45,40,2,NULL),(562,48,40,2,NULL),(563,49,40,2,NULL),(564,51,40,2,NULL),(565,61,40,2,NULL),(566,63,40,2,NULL),(567,65,40,2,NULL),(568,68,40,2,NULL),(569,70,40,2,NULL),(570,73,40,2,NULL),(571,75,40,2,NULL),(572,78,40,2,NULL),(573,81,40,2,NULL),(574,85,40,2,NULL),(575,90,40,2,NULL),(576,94,40,2,NULL),(577,39,48,2,NULL),(578,40,48,2,NULL),(579,41,48,2,NULL),(580,43,48,2,NULL),(581,45,48,2,NULL),(582,48,48,2,NULL),(583,49,48,2,NULL),(584,51,48,2,NULL),(585,61,48,2,NULL),(586,63,48,2,NULL),(587,65,48,2,NULL),(588,68,48,2,NULL),(589,123,36,2,NULL),(590,70,48,2,NULL),(591,124,36,2,NULL),(592,73,48,2,NULL),(593,37,36,2,NULL),(594,75,48,2,NULL),(595,119,36,2,NULL),(596,78,48,2,NULL),(597,121,36,2,NULL),(598,81,48,2,NULL),(599,104,36,2,NULL),(600,85,48,2,NULL),(601,106,36,2,NULL),(602,90,48,2,NULL),(603,89,36,2,NULL),(604,94,48,2,NULL),(605,92,36,2,NULL),(606,39,49,2,NULL),(607,6,36,2,NULL),(608,40,49,2,NULL),(609,8,36,2,NULL),(610,41,49,2,NULL),(611,10,36,2,NULL),(612,43,49,2,NULL),(613,12,36,2,NULL),(614,45,49,2,NULL),(615,21,36,2,NULL),(616,48,49,2,NULL),(617,23,36,2,NULL),(618,49,49,2,NULL),(619,137,36,2,NULL),(620,51,49,2,NULL),(621,39,36,2,NULL),(622,61,49,2,NULL),(623,40,36,2,NULL),(624,63,49,2,NULL),(625,41,36,2,NULL),(626,65,49,2,NULL),(627,43,36,2,NULL),(628,68,49,2,NULL),(629,45,36,2,NULL),(630,70,49,2,NULL),(631,48,36,2,NULL),(632,73,49,2,NULL),(633,49,36,2,NULL),(634,75,49,2,NULL),(635,51,36,2,NULL),(636,78,49,2,NULL),(637,61,36,2,NULL),(638,81,49,2,NULL),(639,63,36,2,NULL),(640,85,49,2,NULL),(641,65,36,2,NULL),(642,90,49,2,NULL),(643,68,36,2,NULL),(644,94,49,2,NULL),(645,70,36,2,NULL),(646,39,52,2,NULL),(647,73,36,2,NULL),(648,40,52,2,NULL),(649,75,36,2,NULL),(650,41,52,2,NULL),(651,78,36,2,NULL),(652,43,52,2,NULL),(653,81,36,2,NULL),(654,45,52,2,NULL),(655,85,36,2,NULL),(656,48,52,2,NULL),(657,90,36,2,NULL),(658,49,52,2,NULL),(659,94,36,2,NULL),(660,51,52,2,NULL),(661,24,36,2,NULL),(662,61,52,2,NULL),(663,29,36,2,NULL),(664,63,52,2,NULL),(665,147,36,2,NULL),(666,65,52,2,NULL),(667,148,36,2,NULL),(668,68,52,2,NULL),(669,149,36,2,NULL),(670,70,52,2,NULL),(671,150,36,2,NULL),(672,73,52,2,NULL),(673,151,36,2,NULL),(674,75,52,2,NULL),(675,152,36,2,NULL),(676,78,52,2,NULL),(677,153,36,2,NULL),(678,81,52,2,NULL),(679,154,36,2,NULL),(680,85,52,2,NULL),(681,155,36,2,NULL),(682,90,52,2,NULL),(683,156,36,2,NULL),(684,94,52,2,NULL),(685,157,36,2,NULL),(686,39,55,2,NULL),(687,158,36,2,NULL),(688,40,55,2,NULL),(689,159,36,2,NULL),(690,41,55,2,NULL),(691,160,36,2,NULL),(692,43,55,2,NULL),(693,161,36,2,NULL),(694,45,55,2,NULL),(695,162,36,2,NULL),(696,48,55,2,NULL),(697,192,36,2,NULL),(698,49,55,2,NULL),(699,194,36,2,NULL),(700,51,55,2,NULL),(701,215,36,2,NULL),(702,61,55,2,NULL),(703,217,36,2,NULL),(704,63,55,2,NULL),(705,172,36,2,NULL),(706,65,55,2,NULL),(707,174,36,2,NULL),(708,68,55,2,NULL),(709,176,36,2,NULL),(710,70,55,2,NULL),(711,181,36,2,NULL),(712,73,55,2,NULL),(713,197,36,2,NULL),(714,75,55,2,NULL),(715,198,36,2,NULL),(716,78,55,2,NULL),(717,219,36,2,NULL),(718,81,55,2,NULL),(719,211,36,2,NULL),(720,85,55,2,NULL),(721,212,36,2,NULL),(722,90,55,2,NULL),(723,185,36,2,NULL),(724,94,55,2,NULL),(725,186,36,2,NULL),(726,39,56,2,NULL),(727,187,36,2,NULL),(728,40,56,2,NULL),(729,188,36,2,NULL),(730,41,56,2,NULL),(731,195,36,2,NULL),(732,43,56,2,NULL),(733,196,36,2,NULL),(734,45,56,2,NULL),(735,226,36,2,NULL),(736,48,56,2,NULL),(737,139,36,2,NULL),(738,49,56,2,NULL),(739,105,36,2,NULL),(740,51,56,2,NULL),(741,112,36,2,NULL),(742,61,56,2,NULL),(743,123,47,2,NULL),(744,63,56,2,NULL),(745,124,47,2,NULL),(746,65,56,2,NULL),(747,37,47,2,NULL),(748,68,56,2,NULL),(749,119,47,2,NULL),(750,70,56,2,NULL),(751,121,47,2,NULL),(752,73,56,2,NULL),(753,104,47,2,NULL),(754,75,56,2,NULL),(755,106,47,2,NULL),(756,78,56,2,NULL),(757,89,47,2,NULL),(758,81,56,2,NULL),(759,92,47,2,NULL),(760,85,56,2,NULL),(761,6,47,2,NULL),(762,90,56,2,NULL),(763,8,47,2,NULL),(764,94,56,2,NULL),(765,10,47,2,NULL),(766,39,72,2,NULL),(767,12,47,2,NULL),(768,40,72,2,NULL),(769,21,47,2,NULL),(770,41,72,2,NULL),(771,23,47,2,NULL),(772,43,72,2,NULL),(773,137,47,2,NULL),(774,45,72,2,NULL),(775,39,47,2,NULL),(776,48,72,2,NULL),(777,40,47,2,NULL),(778,49,72,2,NULL),(779,41,47,2,NULL),(780,51,72,2,NULL),(781,43,47,2,NULL),(782,61,72,2,NULL),(783,45,47,2,NULL),(784,63,72,2,NULL),(785,48,47,2,NULL),(786,65,72,2,NULL),(787,49,47,2,NULL),(788,68,72,2,NULL),(789,51,47,2,NULL),(790,70,72,2,NULL),(791,61,47,2,NULL),(792,73,72,2,NULL),(793,63,47,2,NULL),(794,75,72,2,NULL),(795,65,47,2,NULL),(796,78,72,2,NULL),(797,68,47,2,NULL),(798,81,72,2,NULL),(799,70,47,2,NULL),(800,85,72,2,NULL),(801,73,47,2,NULL),(802,90,72,2,NULL),(803,75,47,2,NULL),(804,94,72,2,NULL),(805,78,47,2,NULL),(806,39,73,2,NULL),(807,81,47,2,NULL),(808,40,73,2,NULL),(809,85,47,2,NULL),(810,41,73,2,NULL),(811,90,47,2,NULL),(812,43,73,2,NULL),(813,94,47,2,NULL),(814,45,73,2,NULL),(815,24,47,2,NULL),(816,48,73,2,NULL),(817,29,47,2,NULL),(818,49,73,2,NULL),(819,147,47,2,NULL),(820,51,73,2,NULL),(821,148,47,2,NULL),(822,61,73,2,NULL),(823,149,47,2,NULL),(824,63,73,2,NULL),(825,150,47,2,NULL),(826,65,73,2,NULL),(827,151,47,2,NULL),(828,68,73,2,NULL),(829,152,47,2,NULL),(830,70,73,2,NULL),(831,153,47,2,NULL),(832,73,73,2,NULL),(833,154,47,2,NULL),(834,75,73,2,NULL),(835,155,47,2,NULL),(836,78,73,2,NULL),(837,156,47,2,NULL),(838,81,73,2,NULL),(839,157,47,2,NULL),(840,85,73,2,NULL),(841,158,47,2,NULL),(842,90,73,2,NULL),(843,159,47,2,NULL),(844,94,73,2,NULL),(845,160,47,2,NULL),(846,39,74,2,NULL),(847,161,47,2,NULL),(848,40,74,2,NULL),(849,162,47,2,NULL),(850,41,74,2,NULL),(851,192,47,2,NULL),(852,43,74,2,NULL),(853,194,47,2,NULL),(854,45,74,2,NULL),(855,215,47,2,NULL),(856,48,74,2,NULL),(857,217,47,2,NULL),(858,49,74,2,NULL),(859,172,47,2,NULL),(860,51,74,2,NULL),(861,174,47,2,NULL),(862,61,74,2,NULL),(863,176,47,2,NULL),(864,63,74,2,NULL),(865,181,47,2,NULL),(866,65,74,2,NULL),(867,197,47,2,NULL),(868,68,74,2,NULL),(869,198,47,2,NULL),(870,70,74,2,NULL),(871,219,47,2,NULL),(872,73,74,2,NULL),(873,211,47,2,NULL),(874,75,74,2,NULL),(875,212,47,2,NULL),(876,78,74,2,NULL),(877,185,47,2,NULL),(878,81,74,2,NULL),(879,186,47,2,NULL),(880,85,74,2,NULL),(881,187,47,2,NULL),(882,90,74,2,NULL),(883,188,47,2,NULL),(884,94,74,2,NULL),(885,195,47,2,NULL),(886,39,75,2,NULL),(887,196,47,2,NULL),(888,40,75,2,NULL),(889,226,47,2,NULL),(890,41,75,2,NULL),(891,139,47,2,NULL),(892,43,75,2,NULL),(893,45,75,2,NULL),(894,48,75,2,NULL),(895,49,75,2,NULL),(896,51,75,2,NULL),(897,61,75,2,NULL),(898,63,75,2,NULL),(899,65,75,2,NULL),(900,68,75,2,NULL),(901,70,75,2,NULL),(902,73,75,2,NULL),(903,75,75,2,NULL),(904,78,75,2,NULL),(905,81,75,2,NULL),(906,85,75,2,NULL),(907,90,75,2,NULL),(908,94,75,2,NULL),(909,39,57,2,NULL),(910,40,57,2,NULL),(911,41,57,2,NULL),(912,43,57,2,NULL),(913,45,57,2,NULL),(914,48,57,2,NULL),(915,49,57,2,NULL),(916,51,57,2,NULL),(917,61,57,2,NULL),(918,63,57,2,NULL),(919,65,57,2,NULL),(920,68,57,2,NULL),(921,70,57,2,NULL),(922,73,57,2,NULL),(923,75,57,2,NULL),(924,78,57,2,NULL),(925,81,57,2,NULL),(926,85,57,2,NULL),(927,90,57,2,NULL),(928,94,57,2,NULL),(929,39,63,2,NULL),(930,40,63,2,NULL),(931,41,63,2,NULL),(932,43,63,2,NULL),(933,45,63,2,NULL),(934,48,63,2,NULL),(935,49,63,2,NULL),(936,51,63,2,NULL),(937,61,63,2,NULL),(938,63,63,2,NULL),(939,65,63,2,NULL),(940,68,63,2,NULL),(941,70,63,2,NULL),(942,73,63,2,NULL),(943,75,63,2,NULL),(944,78,63,2,NULL),(945,81,63,2,NULL),(946,85,63,2,NULL),(947,90,63,2,NULL),(948,94,63,2,NULL),(949,24,1,2,NULL),(950,29,1,2,NULL),(951,24,2,2,NULL),(952,29,2,2,NULL),(953,24,5,2,NULL),(954,29,5,2,NULL),(955,24,6,2,NULL),(956,29,6,2,NULL),(957,24,7,2,NULL),(958,29,7,2,NULL),(959,24,9,2,NULL),(960,29,9,2,NULL),(961,24,10,2,NULL),(962,29,10,2,NULL),(963,24,64,2,NULL),(964,29,64,2,NULL),(965,24,71,2,NULL),(966,29,71,2,NULL),(967,24,11,2,NULL),(968,29,11,2,NULL),(969,24,12,2,NULL),(970,29,12,2,NULL),(971,24,15,2,NULL),(972,29,15,2,NULL),(973,24,18,2,NULL),(974,29,18,2,NULL),(975,24,19,2,NULL),(976,29,19,2,NULL),(977,24,22,2,NULL),(978,29,22,2,NULL),(979,24,23,2,NULL),(980,29,23,2,NULL),(981,24,68,2,NULL),(982,29,68,2,NULL),(983,24,69,2,NULL),(984,29,69,2,NULL),(985,24,14,2,NULL),(986,29,14,2,NULL),(987,24,17,2,NULL),(988,29,17,2,NULL),(989,24,29,2,NULL),(990,29,29,2,NULL),(991,24,67,2,NULL),(992,29,67,2,NULL),(993,24,70,2,NULL),(994,29,70,2,NULL),(995,24,31,2,NULL),(996,29,31,2,NULL),(997,24,40,2,NULL),(998,29,40,2,NULL),(999,24,48,2,NULL),(1000,29,48,2,NULL),(1001,24,49,2,NULL),(1002,29,49,2,NULL),(1003,24,52,2,NULL),(1004,29,52,2,NULL),(1005,24,55,2,NULL),(1006,29,55,2,NULL),(1007,24,56,2,NULL),(1008,29,56,2,NULL),(1009,24,72,2,NULL),(1010,29,72,2,NULL),(1011,24,73,2,NULL),(1012,29,73,2,NULL),(1013,24,74,2,NULL),(1014,29,74,2,NULL),(1015,24,75,2,NULL),(1016,29,75,2,NULL),(1017,24,57,2,NULL),(1018,29,57,2,NULL),(1019,24,63,2,NULL),(1020,29,63,2,NULL),(1021,88,24,2,NULL),(1022,123,29,2,NULL),(1023,124,29,2,NULL),(1024,37,29,2,NULL),(1025,119,29,2,NULL),(1026,121,29,2,NULL),(1027,104,29,2,NULL),(1028,106,29,2,NULL),(1029,89,29,2,NULL),(1030,92,29,2,NULL),(1031,6,29,2,NULL),(1032,8,29,2,NULL),(1033,10,29,2,NULL),(1034,12,29,2,NULL),(1035,21,29,2,NULL),(1036,23,29,2,NULL),(1037,137,29,2,NULL),(1038,147,29,2,NULL),(1039,148,29,2,NULL),(1040,149,29,2,NULL),(1041,150,29,2,NULL),(1042,151,29,2,NULL),(1043,152,29,2,NULL),(1044,153,29,2,NULL),(1045,154,29,2,NULL),(1046,155,29,2,NULL),(1047,156,29,2,NULL),(1048,157,29,2,NULL),(1049,158,29,2,NULL),(1050,159,29,2,NULL),(1051,160,29,2,NULL),(1052,161,29,2,NULL),(1053,162,29,2,NULL),(1054,192,29,2,NULL),(1055,194,29,2,NULL),(1056,215,29,2,NULL),(1057,217,29,2,NULL),(1058,172,29,2,NULL),(1059,174,29,2,NULL),(1060,176,29,2,NULL),(1061,181,29,2,NULL),(1062,197,29,2,NULL),(1063,198,29,2,NULL),(1064,219,29,2,NULL),(1065,211,29,2,NULL),(1066,212,29,2,NULL),(1067,185,29,2,NULL),(1068,186,29,2,NULL),(1069,187,29,2,NULL),(1070,188,29,2,NULL),(1071,195,29,2,NULL),(1072,196,29,2,NULL),(1073,226,29,2,NULL),(1074,139,29,2,NULL),(1075,123,67,2,NULL),(1076,124,67,2,NULL),(1077,37,67,2,NULL),(1078,119,67,2,NULL),(1079,121,67,2,NULL),(1080,104,67,2,NULL),(1081,106,67,2,NULL),(1082,89,67,2,NULL),(1083,92,67,2,NULL),(1084,6,67,2,NULL),(1085,8,67,2,NULL),(1086,10,67,2,NULL),(1087,12,67,2,NULL),(1088,21,67,2,NULL),(1089,23,67,2,NULL),(1090,137,67,2,NULL),(1091,147,67,2,NULL),(1092,148,67,2,NULL),(1093,149,67,2,NULL),(1094,150,67,2,NULL),(1095,151,67,2,NULL),(1096,152,67,2,NULL),(1097,153,67,2,NULL),(1098,154,67,2,NULL),(1099,155,67,2,NULL),(1100,156,67,2,NULL),(1101,157,67,2,NULL),(1102,158,67,2,NULL),(1103,159,67,2,NULL),(1104,160,67,2,NULL),(1105,161,67,2,NULL),(1106,162,67,2,NULL),(1107,192,67,2,NULL),(1108,194,67,2,NULL),(1109,215,67,2,NULL),(1110,217,67,2,NULL),(1111,172,67,2,NULL),(1112,174,67,2,NULL),(1113,176,67,2,NULL),(1114,181,67,2,NULL),(1115,197,67,2,NULL),(1116,198,67,2,NULL),(1117,219,67,2,NULL),(1118,211,67,2,NULL),(1119,212,67,2,NULL),(1120,185,67,2,NULL),(1121,186,67,2,NULL),(1122,187,67,2,NULL),(1123,188,67,2,NULL),(1124,195,67,2,NULL),(1125,196,67,2,NULL),(1126,226,67,2,NULL),(1127,139,67,2,NULL),(1128,123,70,2,NULL),(1129,124,70,2,NULL),(1130,37,70,2,NULL),(1131,119,70,2,NULL),(1132,121,70,2,NULL),(1133,104,70,2,NULL),(1134,106,70,2,NULL),(1135,89,70,2,NULL),(1136,92,70,2,NULL),(1137,6,70,2,NULL),(1138,8,70,2,NULL),(1139,10,70,2,NULL),(1140,12,70,2,NULL),(1141,21,70,2,NULL),(1142,23,70,2,NULL),(1143,137,70,2,NULL),(1144,147,70,2,NULL),(1145,148,70,2,NULL),(1146,149,70,2,NULL),(1147,150,70,2,NULL),(1148,151,70,2,NULL),(1149,152,70,2,NULL),(1150,153,70,2,NULL),(1151,154,70,2,NULL),(1152,155,70,2,NULL),(1153,156,70,2,NULL),(1154,157,70,2,NULL),(1155,158,70,2,NULL),(1156,159,70,2,NULL),(1157,160,70,2,NULL),(1158,161,70,2,NULL),(1159,162,70,2,NULL),(1160,192,70,2,NULL),(1161,194,70,2,NULL),(1162,215,70,2,NULL),(1163,217,70,2,NULL),(1164,172,70,2,NULL),(1165,174,70,2,NULL),(1166,176,70,2,NULL),(1167,181,70,2,NULL),(1168,197,70,2,NULL),(1169,198,70,2,NULL),(1170,219,70,2,NULL),(1171,211,70,2,NULL),(1172,212,70,2,NULL),(1173,185,70,2,NULL),(1174,186,70,2,NULL),(1175,187,70,2,NULL),(1176,188,70,2,NULL),(1177,195,70,2,NULL),(1178,196,70,2,NULL),(1179,226,70,2,NULL),(1180,139,70,2,NULL),(1181,123,11,2,NULL),(1182,124,11,2,NULL),(1183,37,11,2,NULL),(1184,119,11,2,NULL),(1185,121,11,2,NULL),(1186,104,11,2,NULL),(1187,106,11,2,NULL),(1188,89,11,2,NULL),(1189,92,11,2,NULL),(1190,6,11,2,NULL),(1191,8,11,2,NULL),(1192,10,11,2,NULL),(1193,12,11,2,NULL),(1194,21,11,2,NULL),(1195,23,11,2,NULL),(1196,137,11,2,NULL),(1197,147,11,2,NULL),(1198,148,11,2,NULL),(1199,149,11,2,NULL),(1200,150,11,2,NULL),(1201,151,11,2,NULL),(1202,152,11,2,NULL),(1203,153,11,2,NULL),(1204,154,11,2,NULL),(1205,155,11,2,NULL),(1206,156,11,2,NULL),(1207,157,11,2,NULL),(1208,158,11,2,NULL),(1209,159,11,2,NULL),(1210,160,11,2,NULL),(1211,161,11,2,NULL),(1212,162,11,2,NULL),(1213,192,11,2,NULL),(1214,194,11,2,NULL),(1215,215,11,2,NULL),(1216,217,11,2,NULL),(1217,172,11,2,NULL),(1218,174,11,2,NULL),(1219,176,11,2,NULL),(1220,181,11,2,NULL),(1221,197,11,2,NULL),(1222,198,11,2,NULL),(1223,219,11,2,NULL),(1224,211,11,2,NULL),(1225,212,11,2,NULL),(1226,185,11,2,NULL),(1227,186,11,2,NULL),(1228,187,11,2,NULL),(1229,188,11,2,NULL),(1230,195,11,2,NULL),(1231,196,11,2,NULL),(1232,226,11,2,NULL),(1233,139,11,2,NULL),(1234,134,22,2,NULL),(1235,136,22,2,NULL),(1236,123,12,2,NULL),(1237,124,12,2,NULL),(1238,37,12,2,NULL),(1239,119,12,2,NULL),(1240,121,12,2,NULL),(1241,104,12,2,NULL),(1242,106,12,2,NULL),(1243,89,12,2,NULL),(1244,92,12,2,NULL),(1245,6,12,2,NULL),(1246,8,12,2,NULL),(1247,10,12,2,NULL),(1248,12,12,2,NULL),(1249,21,12,2,NULL),(1250,23,12,2,NULL),(1251,137,12,2,NULL),(1252,147,12,2,NULL),(1253,148,12,2,NULL),(1254,149,12,2,NULL),(1255,150,12,2,NULL),(1256,151,12,2,NULL),(1257,152,12,2,NULL),(1258,153,12,2,NULL),(1259,154,12,2,NULL),(1260,155,12,2,NULL),(1261,156,12,2,NULL),(1262,157,12,2,NULL),(1263,158,12,2,NULL),(1264,159,12,2,NULL),(1265,160,12,2,NULL),(1266,161,12,2,NULL),(1267,162,12,2,NULL),(1268,192,12,2,NULL),(1269,194,12,2,NULL),(1270,215,12,2,NULL),(1271,217,12,2,NULL),(1272,172,12,2,NULL),(1273,174,12,2,NULL),(1274,176,12,2,NULL),(1275,181,12,2,NULL),(1276,197,12,2,NULL),(1277,198,12,2,NULL),(1278,219,12,2,NULL),(1279,211,12,2,NULL),(1280,212,12,2,NULL),(1281,185,12,2,NULL),(1282,186,12,2,NULL),(1283,187,12,2,NULL),(1284,188,12,2,NULL),(1285,195,12,2,NULL),(1286,196,12,2,NULL),(1287,226,12,2,NULL),(1288,139,12,2,NULL),(1289,138,11,2,NULL),(1290,26,22,2,NULL),(1291,35,22,2,NULL),(1292,104,1,2,NULL),(1293,106,1,2,NULL),(1294,104,2,2,NULL),(1295,106,2,2,NULL),(1296,104,5,2,NULL),(1297,106,5,2,NULL),(1298,104,6,2,NULL),(1299,106,6,2,NULL),(1300,123,15,2,NULL),(1301,124,15,2,NULL),(1302,104,7,2,NULL),(1303,106,7,2,NULL),(1304,37,15,2,NULL),(1305,119,15,2,NULL),(1306,121,15,2,NULL),(1307,104,9,2,NULL),(1308,106,9,2,NULL),(1309,104,10,2,NULL),(1310,106,10,2,NULL),(1311,104,64,2,NULL),(1312,106,64,2,NULL),(1313,104,71,2,NULL),(1314,106,71,2,NULL),(1315,104,18,2,NULL),(1316,106,18,2,NULL),(1317,89,15,2,NULL),(1318,92,15,2,NULL),(1319,104,19,2,NULL),(1320,106,19,2,NULL),(1321,6,15,2,NULL),(1322,8,15,2,NULL),(1323,10,15,2,NULL),(1324,12,15,2,NULL),(1325,21,15,2,NULL),(1326,23,15,2,NULL),(1327,137,15,2,NULL),(1328,104,22,2,NULL),(1329,106,22,2,NULL),(1330,104,23,2,NULL),(1331,106,23,2,NULL),(1332,104,68,2,NULL),(1333,106,68,2,NULL),(1334,104,69,2,NULL),(1335,106,69,2,NULL),(1336,104,14,2,NULL),(1337,106,14,2,NULL),(1338,104,17,2,NULL),(1339,106,17,2,NULL),(1340,147,15,2,NULL),(1341,148,15,2,NULL),(1342,149,15,2,NULL),(1343,150,15,2,NULL),(1344,151,15,2,NULL),(1345,152,15,2,NULL),(1346,153,15,2,NULL),(1347,154,15,2,NULL),(1348,155,15,2,NULL),(1349,156,15,2,NULL),(1350,157,15,2,NULL),(1351,158,15,2,NULL),(1352,159,15,2,NULL),(1353,160,15,2,NULL),(1354,161,15,2,NULL),(1355,162,15,2,NULL),(1356,192,15,2,NULL),(1357,194,15,2,NULL),(1358,215,15,2,NULL),(1359,217,15,2,NULL),(1360,104,31,2,NULL),(1361,106,31,2,NULL),(1362,172,15,2,NULL),(1363,174,15,2,NULL),(1364,176,15,2,NULL),(1365,181,15,2,NULL),(1366,197,15,2,NULL),(1367,198,15,2,NULL),(1368,219,15,2,NULL),(1369,104,40,2,NULL),(1370,106,40,2,NULL),(1371,104,48,2,NULL),(1372,106,48,2,NULL),(1373,104,49,2,NULL),(1374,106,49,2,NULL),(1375,211,15,2,NULL),(1376,212,15,2,NULL),(1377,104,52,2,NULL),(1378,106,52,2,NULL),(1379,185,15,2,NULL),(1380,186,15,2,NULL),(1381,187,15,2,NULL),(1382,188,15,2,NULL),(1383,195,15,2,NULL),(1384,196,15,2,NULL),(1385,226,15,2,NULL),(1386,139,15,2,NULL),(1387,104,55,2,NULL),(1388,106,55,2,NULL),(1389,104,56,2,NULL),(1390,106,56,2,NULL),(1391,104,72,2,NULL),(1392,106,72,2,NULL),(1393,104,73,2,NULL),(1394,106,73,2,NULL),(1395,104,74,2,NULL),(1396,106,74,2,NULL),(1397,104,75,2,NULL),(1398,106,75,2,NULL),(1399,104,57,2,NULL),(1400,106,57,2,NULL),(1401,104,63,2,NULL),(1402,106,63,2,NULL),(1403,128,15,2,NULL),(1404,89,1,2,NULL),(1405,92,1,2,NULL),(1406,89,2,2,NULL),(1407,92,2,2,NULL),(1408,89,5,2,NULL),(1409,92,5,2,NULL),(1410,89,6,2,NULL),(1411,92,6,2,NULL),(1412,123,18,2,NULL),(1413,124,18,2,NULL),(1414,89,7,2,NULL),(1415,92,7,2,NULL),(1416,37,18,2,NULL),(1417,119,18,2,NULL),(1418,121,18,2,NULL),(1419,89,9,2,NULL),(1420,92,9,2,NULL),(1421,89,10,2,NULL),(1422,92,10,2,NULL),(1423,89,64,2,NULL),(1424,92,64,2,NULL),(1425,89,71,2,NULL),(1426,92,71,2,NULL),(1427,89,19,2,NULL),(1428,92,19,2,NULL),(1429,6,18,2,NULL),(1430,8,18,2,NULL),(1431,10,18,2,NULL),(1432,12,18,2,NULL),(1433,21,18,2,NULL),(1434,23,18,2,NULL),(1435,137,18,2,NULL),(1436,89,22,2,NULL),(1437,92,22,2,NULL),(1438,89,23,2,NULL),(1439,92,23,2,NULL),(1440,89,68,2,NULL),(1441,92,68,2,NULL),(1442,89,69,2,NULL),(1443,92,69,2,NULL),(1444,89,14,2,NULL),(1445,92,14,2,NULL),(1446,89,17,2,NULL),(1447,92,17,2,NULL),(1448,147,18,2,NULL),(1449,148,18,2,NULL),(1450,149,18,2,NULL),(1451,150,18,2,NULL),(1452,151,18,2,NULL),(1453,152,18,2,NULL),(1454,153,18,2,NULL),(1455,154,18,2,NULL),(1456,155,18,2,NULL),(1457,156,18,2,NULL),(1458,157,18,2,NULL),(1459,158,18,2,NULL),(1460,159,18,2,NULL),(1461,160,18,2,NULL),(1462,161,18,2,NULL),(1463,162,18,2,NULL),(1464,192,18,2,NULL),(1465,194,18,2,NULL),(1466,215,18,2,NULL),(1467,217,18,2,NULL),(1468,89,31,2,NULL),(1469,92,31,2,NULL),(1470,172,18,2,NULL),(1471,174,18,2,NULL),(1472,176,18,2,NULL),(1473,181,18,2,NULL),(1474,197,18,2,NULL),(1475,198,18,2,NULL),(1476,219,18,2,NULL),(1477,89,40,2,NULL),(1478,92,40,2,NULL),(1479,89,48,2,NULL),(1480,92,48,2,NULL),(1481,89,49,2,NULL),(1482,92,49,2,NULL),(1483,211,18,2,NULL),(1484,212,18,2,NULL),(1485,89,52,2,NULL),(1486,92,52,2,NULL),(1487,185,18,2,NULL),(1488,186,18,2,NULL),(1489,187,18,2,NULL),(1490,188,18,2,NULL),(1491,195,18,2,NULL),(1492,196,18,2,NULL),(1493,226,18,2,NULL),(1494,139,18,2,NULL),(1495,89,55,2,NULL),(1496,92,55,2,NULL),(1497,89,56,2,NULL),(1498,92,56,2,NULL),(1499,89,72,2,NULL),(1500,92,72,2,NULL),(1501,89,73,2,NULL),(1502,92,73,2,NULL),(1503,89,74,2,NULL),(1504,92,74,2,NULL),(1505,89,75,2,NULL),(1506,92,75,2,NULL),(1507,89,57,2,NULL),(1508,92,57,2,NULL),(1509,89,63,2,NULL),(1510,92,63,2,NULL),(1511,127,22,2,NULL),(1512,6,1,2,NULL),(1513,8,1,2,NULL),(1514,10,1,2,NULL),(1515,12,1,2,NULL),(1516,6,2,2,NULL),(1517,8,2,2,NULL),(1518,10,2,2,NULL),(1519,12,2,2,NULL),(1520,6,5,2,NULL),(1521,8,5,2,NULL),(1522,10,5,2,NULL),(1523,12,5,2,NULL),(1524,6,6,2,NULL),(1525,8,6,2,NULL),(1526,10,6,2,NULL),(1527,12,6,2,NULL),(1528,123,19,2,NULL),(1529,124,19,2,NULL),(1530,6,7,2,NULL),(1531,8,7,2,NULL),(1532,10,7,2,NULL),(1533,12,7,2,NULL),(1534,37,19,2,NULL),(1535,119,19,2,NULL),(1536,121,19,2,NULL),(1537,6,9,2,NULL),(1538,8,9,2,NULL),(1539,10,9,2,NULL),(1540,12,9,2,NULL),(1541,6,10,2,NULL),(1542,8,10,2,NULL),(1543,10,10,2,NULL),(1544,12,10,2,NULL),(1545,6,64,2,NULL),(1546,8,64,2,NULL),(1547,10,64,2,NULL),(1548,12,64,2,NULL),(1549,6,71,2,NULL),(1550,8,71,2,NULL),(1551,10,71,2,NULL),(1552,12,71,2,NULL),(1553,21,19,2,NULL),(1554,23,19,2,NULL),(1555,137,19,2,NULL),(1556,6,22,2,NULL),(1557,8,22,2,NULL),(1558,10,22,2,NULL),(1559,12,22,2,NULL),(1560,6,23,2,NULL),(1561,8,23,2,NULL),(1562,10,23,2,NULL),(1563,12,23,2,NULL),(1564,6,68,2,NULL),(1565,8,68,2,NULL),(1566,10,68,2,NULL),(1567,12,68,2,NULL),(1568,6,69,2,NULL),(1569,8,69,2,NULL),(1570,10,69,2,NULL),(1571,12,69,2,NULL),(1572,6,14,2,NULL),(1573,8,14,2,NULL),(1574,10,14,2,NULL),(1575,12,14,2,NULL),(1576,6,17,2,NULL),(1577,8,17,2,NULL),(1578,10,17,2,NULL),(1579,12,17,2,NULL),(1580,147,19,2,NULL),(1581,148,19,2,NULL),(1582,149,19,2,NULL),(1583,150,19,2,NULL),(1584,151,19,2,NULL),(1585,152,19,2,NULL),(1586,153,19,2,NULL),(1587,154,19,2,NULL),(1588,155,19,2,NULL),(1589,156,19,2,NULL),(1590,157,19,2,NULL),(1591,158,19,2,NULL),(1592,159,19,2,NULL),(1593,160,19,2,NULL),(1594,161,19,2,NULL),(1595,162,19,2,NULL),(1596,192,19,2,NULL),(1597,194,19,2,NULL),(1598,215,19,2,NULL),(1599,217,19,2,NULL),(1600,6,31,2,NULL),(1601,8,31,2,NULL),(1602,10,31,2,NULL),(1603,12,31,2,NULL),(1604,172,19,2,NULL),(1605,174,19,2,NULL),(1606,176,19,2,NULL),(1607,181,19,2,NULL),(1608,197,19,2,NULL),(1609,198,19,2,NULL),(1610,219,19,2,NULL),(1611,6,40,2,NULL),(1612,8,40,2,NULL),(1613,10,40,2,NULL),(1614,12,40,2,NULL),(1615,6,48,2,NULL),(1616,8,48,2,NULL),(1617,10,48,2,NULL),(1618,12,48,2,NULL),(1619,6,49,2,NULL),(1620,8,49,2,NULL),(1621,10,49,2,NULL),(1622,12,49,2,NULL),(1623,211,19,2,NULL),(1624,212,19,2,NULL),(1625,6,52,2,NULL),(1626,8,52,2,NULL),(1627,10,52,2,NULL),(1628,12,52,2,NULL),(1629,185,19,2,NULL),(1630,186,19,2,NULL),(1631,187,19,2,NULL),(1632,188,19,2,NULL),(1633,195,19,2,NULL),(1634,196,19,2,NULL),(1635,226,19,2,NULL),(1636,139,19,2,NULL),(1637,6,55,2,NULL),(1638,8,55,2,NULL),(1639,10,55,2,NULL),(1640,12,55,2,NULL),(1641,6,56,2,NULL),(1642,8,56,2,NULL),(1643,10,56,2,NULL),(1644,12,56,2,NULL),(1645,6,72,2,NULL),(1646,8,72,2,NULL),(1647,10,72,2,NULL),(1648,12,72,2,NULL),(1649,6,73,2,NULL),(1650,8,73,2,NULL),(1651,10,73,2,NULL),(1652,12,73,2,NULL),(1653,6,74,2,NULL),(1654,8,74,2,NULL),(1655,10,74,2,NULL),(1656,12,74,2,NULL),(1657,6,75,2,NULL),(1658,8,75,2,NULL),(1659,10,75,2,NULL),(1660,12,75,2,NULL),(1661,6,57,2,NULL),(1662,8,57,2,NULL),(1663,10,57,2,NULL),(1664,12,57,2,NULL),(1665,6,63,2,NULL),(1666,8,63,2,NULL),(1667,10,63,2,NULL),(1668,12,63,2,NULL),(1669,14,15,2,NULL),(1670,21,1,2,NULL),(1671,23,1,2,NULL),(1672,21,2,2,NULL),(1673,23,2,2,NULL),(1674,21,5,2,NULL),(1675,23,5,2,NULL),(1676,21,6,2,NULL),(1677,23,6,2,NULL),(1678,21,7,2,NULL),(1679,23,7,2,NULL),(1680,21,9,2,NULL),(1681,23,9,2,NULL),(1682,21,10,2,NULL),(1683,23,10,2,NULL),(1684,21,64,2,NULL),(1685,23,64,2,NULL),(1686,21,71,2,NULL),(1687,23,71,2,NULL),(1688,21,22,2,NULL),(1689,23,22,2,NULL),(1690,21,23,2,NULL),(1691,23,23,2,NULL),(1692,21,68,2,NULL),(1693,23,68,2,NULL),(1694,21,69,2,NULL),(1695,23,69,2,NULL),(1696,21,14,2,NULL),(1697,23,14,2,NULL),(1698,21,17,2,NULL),(1699,23,17,2,NULL),(1700,21,31,2,NULL),(1701,23,31,2,NULL),(1702,21,40,2,NULL),(1703,23,40,2,NULL),(1704,21,48,2,NULL),(1705,23,48,2,NULL),(1706,21,49,2,NULL),(1707,23,49,2,NULL),(1708,21,52,2,NULL),(1709,23,52,2,NULL),(1710,21,55,2,NULL),(1711,23,55,2,NULL),(1712,21,56,2,NULL),(1713,23,56,2,NULL),(1714,21,72,2,NULL),(1715,23,72,2,NULL),(1716,21,73,2,NULL),(1717,23,73,2,NULL),(1718,21,74,2,NULL),(1719,23,74,2,NULL),(1720,21,75,2,NULL),(1721,23,75,2,NULL),(1722,21,57,2,NULL),(1723,23,57,2,NULL),(1724,21,63,2,NULL),(1725,23,63,2,NULL),(1726,18,22,2,NULL),(1727,137,1,2,NULL),(1728,137,2,2,NULL),(1729,137,5,2,NULL),(1730,137,6,2,NULL),(1731,137,7,2,NULL),(1732,137,9,2,NULL),(1733,137,10,2,NULL),(1734,137,64,2,NULL),(1735,137,71,2,NULL),(1736,137,22,2,NULL),(1737,137,23,2,NULL),(1738,137,68,2,NULL),(1739,137,69,2,NULL),(1740,137,14,2,NULL),(1741,137,17,2,NULL),(1742,137,31,2,NULL),(1743,137,40,2,NULL),(1744,137,48,2,NULL),(1745,137,49,2,NULL),(1746,137,52,2,NULL),(1747,137,55,2,NULL),(1748,137,56,2,NULL),(1749,137,72,2,NULL),(1750,137,73,2,NULL),(1751,137,74,2,NULL),(1752,137,75,2,NULL),(1753,137,57,2,NULL),(1754,137,63,2,NULL),(1755,123,22,2,NULL),(1756,124,22,2,NULL),(1757,37,22,2,NULL),(1758,119,22,2,NULL),(1759,121,22,2,NULL),(1760,147,22,2,NULL),(1761,148,22,2,NULL),(1762,149,22,2,NULL),(1763,150,22,2,NULL),(1764,151,22,2,NULL),(1765,152,22,2,NULL),(1766,153,22,2,NULL),(1767,154,22,2,NULL),(1768,155,22,2,NULL),(1769,156,22,2,NULL),(1770,157,22,2,NULL),(1771,158,22,2,NULL),(1772,159,22,2,NULL),(1773,160,22,2,NULL),(1774,161,22,2,NULL),(1775,162,22,2,NULL),(1776,192,22,2,NULL),(1777,194,22,2,NULL),(1778,215,22,2,NULL),(1779,217,22,2,NULL),(1780,172,22,2,NULL),(1781,174,22,2,NULL),(1782,176,22,2,NULL),(1783,181,22,2,NULL),(1784,197,22,2,NULL),(1785,198,22,2,NULL),(1786,219,22,2,NULL),(1787,211,22,2,NULL),(1788,212,22,2,NULL),(1789,185,22,2,NULL),(1790,186,22,2,NULL),(1791,187,22,2,NULL),(1792,188,22,2,NULL),(1793,195,22,2,NULL),(1794,196,22,2,NULL),(1795,226,22,2,NULL),(1796,139,22,2,NULL),(1797,20,22,2,NULL),(1798,42,22,2,NULL),(1799,95,22,2,NULL),(1800,123,23,2,NULL),(1801,124,23,2,NULL),(1802,37,23,2,NULL),(1803,119,23,2,NULL),(1804,121,23,2,NULL),(1805,147,23,2,NULL),(1806,148,23,2,NULL),(1807,149,23,2,NULL),(1808,150,23,2,NULL),(1809,151,23,2,NULL),(1810,152,23,2,NULL),(1811,153,23,2,NULL),(1812,154,23,2,NULL),(1813,155,23,2,NULL),(1814,156,23,2,NULL),(1815,157,23,2,NULL),(1816,158,23,2,NULL),(1817,159,23,2,NULL),(1818,160,23,2,NULL),(1819,161,23,2,NULL),(1820,162,23,2,NULL),(1821,192,23,2,NULL),(1822,194,23,2,NULL),(1823,215,23,2,NULL),(1824,217,23,2,NULL),(1825,172,23,2,NULL),(1826,174,23,2,NULL),(1827,176,23,2,NULL),(1828,181,23,2,NULL),(1829,197,23,2,NULL),(1830,198,23,2,NULL),(1831,219,23,2,NULL),(1832,211,23,2,NULL),(1833,212,23,2,NULL),(1834,185,23,2,NULL),(1835,186,23,2,NULL),(1836,187,23,2,NULL),(1837,188,23,2,NULL),(1838,195,23,2,NULL),(1839,196,23,2,NULL),(1840,226,23,2,NULL),(1841,139,23,2,NULL),(1842,123,68,2,NULL),(1843,124,68,2,NULL),(1844,37,68,2,NULL),(1845,119,68,2,NULL),(1846,121,68,2,NULL),(1847,147,68,2,NULL),(1848,148,68,2,NULL),(1849,149,68,2,NULL),(1850,150,68,2,NULL),(1851,151,68,2,NULL),(1852,152,68,2,NULL),(1853,153,68,2,NULL),(1854,154,68,2,NULL),(1855,155,68,2,NULL),(1856,156,68,2,NULL),(1857,157,68,2,NULL),(1858,158,68,2,NULL),(1859,159,68,2,NULL),(1860,160,68,2,NULL),(1861,161,68,2,NULL),(1862,162,68,2,NULL),(1863,192,68,2,NULL),(1864,194,68,2,NULL),(1865,215,68,2,NULL),(1866,217,68,2,NULL),(1867,172,68,2,NULL),(1868,174,68,2,NULL),(1869,176,68,2,NULL),(1870,181,68,2,NULL),(1871,197,68,2,NULL),(1872,198,68,2,NULL),(1873,219,68,2,NULL),(1874,211,68,2,NULL),(1875,212,68,2,NULL),(1876,185,68,2,NULL),(1877,186,68,2,NULL),(1878,187,68,2,NULL),(1879,188,68,2,NULL),(1880,195,68,2,NULL),(1881,196,68,2,NULL),(1882,226,68,2,NULL),(1883,139,68,2,NULL),(1884,123,69,2,NULL),(1885,124,69,2,NULL),(1886,37,69,2,NULL),(1887,119,69,2,NULL),(1888,121,69,2,NULL),(1889,147,69,2,NULL),(1890,148,69,2,NULL),(1891,149,69,2,NULL),(1892,150,69,2,NULL),(1893,151,69,2,NULL),(1894,152,69,2,NULL),(1895,153,69,2,NULL),(1896,154,69,2,NULL),(1897,155,69,2,NULL),(1898,156,69,2,NULL),(1899,157,69,2,NULL),(1900,158,69,2,NULL),(1901,159,69,2,NULL),(1902,160,69,2,NULL),(1903,161,69,2,NULL),(1904,162,69,2,NULL),(1905,192,69,2,NULL),(1906,194,69,2,NULL),(1907,215,69,2,NULL),(1908,217,69,2,NULL),(1909,172,69,2,NULL),(1910,174,69,2,NULL),(1911,176,69,2,NULL),(1912,181,69,2,NULL),(1913,197,69,2,NULL),(1914,198,69,2,NULL),(1915,219,69,2,NULL),(1916,211,69,2,NULL),(1917,212,69,2,NULL),(1918,185,69,2,NULL),(1919,186,69,2,NULL),(1920,187,69,2,NULL),(1921,188,69,2,NULL),(1922,195,69,2,NULL),(1923,196,69,2,NULL),(1924,226,69,2,NULL),(1925,139,69,2,NULL),(1926,147,1,2,NULL),(1927,148,1,2,NULL),(1928,149,1,2,NULL),(1929,150,1,2,NULL),(1930,151,1,2,NULL),(1931,152,1,2,NULL),(1932,153,1,2,NULL),(1933,154,1,2,NULL),(1934,155,1,2,NULL),(1935,156,1,2,NULL),(1936,157,1,2,NULL),(1937,158,1,2,NULL),(1938,159,1,2,NULL),(1939,160,1,2,NULL),(1940,123,14,2,NULL),(1941,161,1,2,NULL),(1942,124,14,2,NULL),(1943,162,1,2,NULL),(1944,37,14,2,NULL),(1945,192,1,2,NULL),(1946,119,14,2,NULL),(1947,194,1,2,NULL),(1948,121,14,2,NULL),(1949,215,1,2,NULL),(1950,217,1,2,NULL),(1951,147,14,2,NULL),(1952,147,2,2,NULL),(1953,148,14,2,NULL),(1954,148,2,2,NULL),(1955,149,14,2,NULL),(1956,149,2,2,NULL),(1957,150,14,2,NULL),(1958,150,2,2,NULL),(1959,151,14,2,NULL),(1960,151,2,2,NULL),(1961,152,14,2,NULL),(1962,152,2,2,NULL),(1963,153,14,2,NULL),(1964,153,2,2,NULL),(1965,154,14,2,NULL),(1966,154,2,2,NULL),(1967,155,14,2,NULL),(1968,155,2,2,NULL),(1969,156,14,2,NULL),(1970,156,2,2,NULL),(1971,157,14,2,NULL),(1972,157,2,2,NULL),(1973,158,14,2,NULL),(1974,158,2,2,NULL),(1975,159,14,2,NULL),(1976,159,2,2,NULL),(1977,160,14,2,NULL),(1978,160,2,2,NULL),(1979,161,14,2,NULL),(1980,161,2,2,NULL),(1981,162,14,2,NULL),(1982,162,2,2,NULL),(1983,192,14,2,NULL),(1984,192,2,2,NULL),(1985,194,14,2,NULL),(1986,194,2,2,NULL),(1987,215,14,2,NULL),(1988,215,2,2,NULL),(1989,217,14,2,NULL),(1990,217,2,2,NULL),(1991,172,14,2,NULL),(1992,147,5,2,NULL),(1993,174,14,2,NULL),(1994,148,5,2,NULL),(1995,176,14,2,NULL),(1996,149,5,2,NULL),(1997,181,14,2,NULL),(1998,150,5,2,NULL),(1999,197,14,2,NULL),(2000,151,5,2,NULL),(2001,198,14,2,NULL),(2002,152,5,2,NULL),(2003,219,14,2,NULL),(2004,153,5,2,NULL),(2005,211,14,2,NULL),(2006,154,5,2,NULL),(2007,212,14,2,NULL),(2008,155,5,2,NULL),(2009,185,14,2,NULL),(2010,156,5,2,NULL),(2011,186,14,2,NULL),(2012,157,5,2,NULL),(2013,187,14,2,NULL),(2014,158,5,2,NULL),(2015,188,14,2,NULL),(2016,159,5,2,NULL),(2017,195,14,2,NULL),(2018,160,5,2,NULL),(2019,196,14,2,NULL),(2020,161,5,2,NULL),(2021,226,14,2,NULL),(2022,162,5,2,NULL),(2023,139,14,2,NULL),(2024,192,5,2,NULL),(2025,11,14,2,NULL),(2026,194,5,2,NULL),(2027,123,17,2,NULL),(2028,215,5,2,NULL),(2029,124,17,2,NULL),(2030,217,5,2,NULL),(2031,37,17,2,NULL),(2032,147,6,2,NULL),(2033,119,17,2,NULL),(2034,148,6,2,NULL),(2035,121,17,2,NULL),(2036,149,6,2,NULL),(2037,147,17,2,NULL),(2038,150,6,2,NULL),(2039,148,17,2,NULL),(2040,151,6,2,NULL),(2041,149,17,2,NULL),(2042,152,6,2,NULL),(2043,150,17,2,NULL),(2044,153,6,2,NULL),(2045,151,17,2,NULL),(2046,154,6,2,NULL),(2047,152,17,2,NULL),(2048,155,6,2,NULL),(2049,153,17,2,NULL),(2050,156,6,2,NULL),(2051,154,17,2,NULL),(2052,157,6,2,NULL),(2053,155,17,2,NULL),(2054,158,6,2,NULL),(2055,156,17,2,NULL),(2056,159,6,2,NULL),(2057,157,17,2,NULL),(2058,160,6,2,NULL),(2059,158,17,2,NULL),(2060,161,6,2,NULL),(2061,159,17,2,NULL),(2062,162,6,2,NULL),(2063,160,17,2,NULL),(2064,192,6,2,NULL),(2065,161,17,2,NULL),(2066,194,6,2,NULL),(2067,162,17,2,NULL),(2068,215,6,2,NULL),(2069,192,17,2,NULL),(2070,217,6,2,NULL),(2071,194,17,2,NULL),(2072,147,7,2,NULL),(2073,215,17,2,NULL),(2074,148,7,2,NULL),(2075,217,17,2,NULL),(2076,149,7,2,NULL),(2077,172,17,2,NULL),(2078,150,7,2,NULL),(2079,174,17,2,NULL),(2080,151,7,2,NULL),(2081,176,17,2,NULL),(2082,152,7,2,NULL),(2083,181,17,2,NULL),(2084,153,7,2,NULL),(2085,197,17,2,NULL),(2086,154,7,2,NULL),(2087,198,17,2,NULL),(2088,155,7,2,NULL),(2089,219,17,2,NULL),(2090,156,7,2,NULL),(2091,211,17,2,NULL),(2092,157,7,2,NULL),(2093,212,17,2,NULL),(2094,158,7,2,NULL),(2095,185,17,2,NULL),(2096,159,7,2,NULL),(2097,186,17,2,NULL),(2098,160,7,2,NULL),(2099,187,17,2,NULL),(2100,161,7,2,NULL),(2101,188,17,2,NULL),(2102,162,7,2,NULL),(2103,195,17,2,NULL),(2104,192,7,2,NULL),(2105,196,17,2,NULL),(2106,194,7,2,NULL),(2107,226,17,2,NULL),(2108,215,7,2,NULL),(2109,139,17,2,NULL),(2110,217,7,2,NULL),(2111,147,9,2,NULL),(2112,148,9,2,NULL),(2113,149,9,2,NULL),(2114,150,9,2,NULL),(2115,151,9,2,NULL),(2116,152,9,2,NULL),(2117,153,9,2,NULL),(2118,154,9,2,NULL),(2119,155,9,2,NULL),(2120,156,9,2,NULL),(2121,157,9,2,NULL),(2122,158,9,2,NULL),(2123,159,9,2,NULL),(2124,160,9,2,NULL),(2125,161,9,2,NULL),(2126,162,9,2,NULL),(2127,192,9,2,NULL),(2128,194,9,2,NULL),(2129,215,9,2,NULL),(2130,217,9,2,NULL),(2131,147,10,2,NULL),(2132,148,10,2,NULL),(2133,149,10,2,NULL),(2134,150,10,2,NULL),(2135,151,10,2,NULL),(2136,152,10,2,NULL),(2137,153,10,2,NULL),(2138,154,10,2,NULL),(2139,155,10,2,NULL),(2140,156,10,2,NULL),(2141,157,10,2,NULL),(2142,158,10,2,NULL),(2143,159,10,2,NULL),(2144,160,10,2,NULL),(2145,161,10,2,NULL),(2146,162,10,2,NULL),(2147,192,10,2,NULL),(2148,194,10,2,NULL),(2149,215,10,2,NULL),(2150,217,10,2,NULL),(2151,147,64,2,NULL),(2152,148,64,2,NULL),(2153,149,64,2,NULL),(2154,150,64,2,NULL),(2155,151,64,2,NULL),(2156,152,64,2,NULL),(2157,153,64,2,NULL),(2158,154,64,2,NULL),(2159,155,64,2,NULL),(2160,156,64,2,NULL),(2161,157,64,2,NULL),(2162,158,64,2,NULL),(2163,159,64,2,NULL),(2164,160,64,2,NULL),(2165,161,64,2,NULL),(2166,162,64,2,NULL),(2167,192,64,2,NULL),(2168,194,64,2,NULL),(2169,215,64,2,NULL),(2170,217,64,2,NULL),(2171,147,71,2,NULL),(2172,148,71,2,NULL),(2173,149,71,2,NULL),(2174,150,71,2,NULL),(2175,151,71,2,NULL),(2176,152,71,2,NULL),(2177,153,71,2,NULL),(2178,154,71,2,NULL),(2179,155,71,2,NULL),(2180,156,71,2,NULL),(2181,157,71,2,NULL),(2182,158,71,2,NULL),(2183,159,71,2,NULL),(2184,160,71,2,NULL),(2185,161,71,2,NULL),(2186,162,71,2,NULL),(2187,192,71,2,NULL),(2188,194,71,2,NULL),(2189,215,71,2,NULL),(2190,217,71,2,NULL),(2191,147,31,2,NULL),(2192,148,31,2,NULL),(2193,149,31,2,NULL),(2194,150,31,2,NULL),(2195,151,31,2,NULL),(2196,152,31,2,NULL),(2197,153,31,2,NULL),(2198,154,31,2,NULL),(2199,155,31,2,NULL),(2200,156,31,2,NULL),(2201,157,31,2,NULL),(2202,158,31,2,NULL),(2203,159,31,2,NULL),(2204,160,31,2,NULL),(2205,161,31,2,NULL),(2206,162,31,2,NULL),(2207,192,31,2,NULL),(2208,194,31,2,NULL),(2209,215,31,2,NULL),(2210,217,31,2,NULL),(2211,147,40,2,NULL),(2212,148,40,2,NULL),(2213,149,40,2,NULL),(2214,150,40,2,NULL),(2215,151,40,2,NULL),(2216,152,40,2,NULL),(2217,153,40,2,NULL),(2218,154,40,2,NULL),(2219,155,40,2,NULL),(2220,156,40,2,NULL),(2221,157,40,2,NULL),(2222,158,40,2,NULL),(2223,159,40,2,NULL),(2224,160,40,2,NULL),(2225,161,40,2,NULL),(2226,162,40,2,NULL),(2227,192,40,2,NULL),(2228,194,40,2,NULL),(2229,215,40,2,NULL),(2230,217,40,2,NULL),(2231,147,48,2,NULL),(2232,148,48,2,NULL),(2233,149,48,2,NULL),(2234,150,48,2,NULL),(2235,151,48,2,NULL),(2236,152,48,2,NULL),(2237,153,48,2,NULL),(2238,154,48,2,NULL),(2239,155,48,2,NULL),(2240,156,48,2,NULL),(2241,157,48,2,NULL),(2242,158,48,2,NULL),(2243,159,48,2,NULL),(2244,160,48,2,NULL),(2245,161,48,2,NULL),(2246,162,48,2,NULL),(2247,192,48,2,NULL),(2248,194,48,2,NULL),(2249,215,48,2,NULL),(2250,217,48,2,NULL),(2251,147,49,2,NULL),(2252,148,49,2,NULL),(2253,149,49,2,NULL),(2254,150,49,2,NULL),(2255,151,49,2,NULL),(2256,152,49,2,NULL),(2257,153,49,2,NULL),(2258,154,49,2,NULL),(2259,155,49,2,NULL),(2260,156,49,2,NULL),(2261,157,49,2,NULL),(2262,158,49,2,NULL),(2263,159,49,2,NULL),(2264,160,49,2,NULL),(2265,161,49,2,NULL),(2266,162,49,2,NULL),(2267,192,49,2,NULL),(2268,194,49,2,NULL),(2269,215,49,2,NULL),(2270,217,49,2,NULL),(2271,147,52,2,NULL),(2272,148,52,2,NULL),(2273,149,52,2,NULL),(2274,150,52,2,NULL),(2275,151,52,2,NULL),(2276,152,52,2,NULL),(2277,153,52,2,NULL),(2278,154,52,2,NULL),(2279,155,52,2,NULL),(2280,156,52,2,NULL),(2281,157,52,2,NULL),(2282,158,52,2,NULL),(2283,159,52,2,NULL),(2284,160,52,2,NULL),(2285,161,52,2,NULL),(2286,162,52,2,NULL),(2287,192,52,2,NULL),(2288,194,52,2,NULL),(2289,215,52,2,NULL),(2290,217,52,2,NULL),(2291,147,55,2,NULL),(2292,148,55,2,NULL),(2293,149,55,2,NULL),(2294,150,55,2,NULL),(2295,151,55,2,NULL),(2296,152,55,2,NULL),(2297,153,55,2,NULL),(2298,154,55,2,NULL),(2299,155,55,2,NULL),(2300,156,55,2,NULL),(2301,157,55,2,NULL),(2302,158,55,2,NULL),(2303,159,55,2,NULL),(2304,160,55,2,NULL),(2305,161,55,2,NULL),(2306,162,55,2,NULL),(2307,192,55,2,NULL),(2308,194,55,2,NULL),(2309,215,55,2,NULL),(2310,217,55,2,NULL),(2311,147,56,2,NULL),(2312,148,56,2,NULL),(2313,149,56,2,NULL),(2314,150,56,2,NULL),(2315,151,56,2,NULL),(2316,152,56,2,NULL),(2317,153,56,2,NULL),(2318,154,56,2,NULL),(2319,155,56,2,NULL),(2320,156,56,2,NULL),(2321,157,56,2,NULL),(2322,158,56,2,NULL),(2323,159,56,2,NULL),(2324,160,56,2,NULL),(2325,161,56,2,NULL),(2326,162,56,2,NULL),(2327,192,56,2,NULL),(2328,194,56,2,NULL),(2329,215,56,2,NULL),(2330,217,56,2,NULL),(2331,147,72,2,NULL),(2332,148,72,2,NULL),(2333,149,72,2,NULL),(2334,150,72,2,NULL),(2335,151,72,2,NULL),(2336,152,72,2,NULL),(2337,153,72,2,NULL),(2338,154,72,2,NULL),(2339,155,72,2,NULL),(2340,156,72,2,NULL),(2341,157,72,2,NULL),(2342,158,72,2,NULL),(2343,159,72,2,NULL),(2344,160,72,2,NULL),(2345,161,72,2,NULL),(2346,162,72,2,NULL),(2347,192,72,2,NULL),(2348,194,72,2,NULL),(2349,215,72,2,NULL),(2350,217,72,2,NULL),(2351,147,73,2,NULL),(2352,148,73,2,NULL),(2353,149,73,2,NULL),(2354,150,73,2,NULL),(2355,151,73,2,NULL),(2356,152,73,2,NULL),(2357,153,73,2,NULL),(2358,154,73,2,NULL),(2359,155,73,2,NULL),(2360,156,73,2,NULL),(2361,157,73,2,NULL),(2362,158,73,2,NULL),(2363,159,73,2,NULL),(2364,160,73,2,NULL),(2365,161,73,2,NULL),(2366,162,73,2,NULL),(2367,192,73,2,NULL),(2368,194,73,2,NULL),(2369,215,73,2,NULL),(2370,217,73,2,NULL),(2371,147,74,2,NULL),(2372,148,74,2,NULL),(2373,149,74,2,NULL),(2374,150,74,2,NULL),(2375,151,74,2,NULL),(2376,152,74,2,NULL),(2377,153,74,2,NULL),(2378,154,74,2,NULL),(2379,155,74,2,NULL),(2380,156,74,2,NULL),(2381,157,74,2,NULL),(2382,158,74,2,NULL),(2383,159,74,2,NULL),(2384,160,74,2,NULL),(2385,161,74,2,NULL),(2386,162,74,2,NULL),(2387,192,74,2,NULL),(2388,194,74,2,NULL),(2389,215,74,2,NULL),(2390,217,74,2,NULL),(2391,147,75,2,NULL),(2392,148,75,2,NULL),(2393,149,75,2,NULL),(2394,150,75,2,NULL),(2395,151,75,2,NULL),(2396,152,75,2,NULL),(2397,153,75,2,NULL),(2398,154,75,2,NULL),(2399,155,75,2,NULL),(2400,156,75,2,NULL),(2401,157,75,2,NULL),(2402,158,75,2,NULL),(2403,159,75,2,NULL),(2404,160,75,2,NULL),(2405,161,75,2,NULL),(2406,162,75,2,NULL),(2407,192,75,2,NULL),(2408,194,75,2,NULL),(2409,215,75,2,NULL),(2410,217,75,2,NULL),(2411,147,57,2,NULL),(2412,148,57,2,NULL),(2413,149,57,2,NULL),(2414,150,57,2,NULL),(2415,151,57,2,NULL),(2416,152,57,2,NULL),(2417,153,57,2,NULL),(2418,154,57,2,NULL),(2419,155,57,2,NULL),(2420,156,57,2,NULL),(2421,157,57,2,NULL),(2422,158,57,2,NULL),(2423,159,57,2,NULL),(2424,160,57,2,NULL),(2425,161,57,2,NULL),(2426,162,57,2,NULL),(2427,192,57,2,NULL),(2428,194,57,2,NULL),(2429,215,57,2,NULL),(2430,217,57,2,NULL),(2431,147,63,2,NULL),(2432,148,63,2,NULL),(2433,149,63,2,NULL),(2434,150,63,2,NULL),(2435,151,63,2,NULL),(2436,152,63,2,NULL),(2437,153,63,2,NULL),(2438,154,63,2,NULL),(2439,155,63,2,NULL),(2440,156,63,2,NULL),(2441,157,63,2,NULL),(2442,158,63,2,NULL),(2443,159,63,2,NULL),(2444,160,63,2,NULL),(2445,161,63,2,NULL),(2446,162,63,2,NULL),(2447,192,63,2,NULL),(2448,194,63,2,NULL),(2449,215,63,2,NULL),(2450,217,63,2,NULL),(2451,171,32,2,NULL),(2452,177,38,2,NULL),(2453,123,31,2,NULL),(2454,124,31,2,NULL),(2455,37,31,2,NULL),(2456,119,31,2,NULL),(2457,121,31,2,NULL),(2458,172,31,2,NULL),(2459,174,31,2,NULL),(2460,176,31,2,NULL),(2461,181,31,2,NULL),(2462,197,31,2,NULL),(2463,198,31,2,NULL),(2464,219,31,2,NULL),(2465,211,31,2,NULL),(2466,212,31,2,NULL),(2467,185,31,2,NULL),(2468,186,31,2,NULL),(2469,187,31,2,NULL),(2470,188,31,2,NULL),(2471,195,31,2,NULL),(2472,196,31,2,NULL),(2473,226,31,2,NULL),(2474,139,31,2,NULL),(2475,172,1,2,NULL),(2476,174,1,2,NULL),(2477,172,2,2,NULL),(2478,174,2,2,NULL),(2479,172,5,2,NULL),(2480,174,5,2,NULL),(2481,172,6,2,NULL),(2482,174,6,2,NULL),(2483,172,7,2,NULL),(2484,174,7,2,NULL),(2485,172,9,2,NULL),(2486,174,9,2,NULL),(2487,172,10,2,NULL),(2488,174,10,2,NULL),(2489,172,64,2,NULL),(2490,174,64,2,NULL),(2491,172,71,2,NULL),(2492,174,71,2,NULL),(2493,172,40,2,NULL),(2494,174,40,2,NULL),(2495,172,48,2,NULL),(2496,174,48,2,NULL),(2497,172,49,2,NULL),(2498,174,49,2,NULL),(2499,172,52,2,NULL),(2500,174,52,2,NULL),(2501,172,55,2,NULL),(2502,174,55,2,NULL),(2503,172,56,2,NULL),(2504,174,56,2,NULL),(2505,172,72,2,NULL),(2506,174,72,2,NULL),(2507,172,73,2,NULL),(2508,174,73,2,NULL),(2509,172,74,2,NULL),(2510,174,74,2,NULL),(2511,172,75,2,NULL),(2512,174,75,2,NULL),(2513,172,57,2,NULL),(2514,174,57,2,NULL),(2515,172,63,2,NULL),(2516,174,63,2,NULL),(2517,208,35,2,NULL),(2518,213,35,2,NULL),(2519,176,1,2,NULL),(2520,181,1,2,NULL),(2521,197,1,2,NULL),(2522,198,1,2,NULL),(2523,219,1,2,NULL),(2524,176,2,2,NULL),(2525,181,2,2,NULL),(2526,197,2,2,NULL),(2527,198,2,2,NULL),(2528,219,2,2,NULL),(2529,176,5,2,NULL),(2530,181,5,2,NULL),(2531,197,5,2,NULL),(2532,198,5,2,NULL),(2533,219,5,2,NULL),(2534,176,6,2,NULL),(2535,181,6,2,NULL),(2536,197,6,2,NULL),(2537,198,6,2,NULL),(2538,219,6,2,NULL),(2539,176,7,2,NULL),(2540,181,7,2,NULL),(2541,197,7,2,NULL),(2542,198,7,2,NULL),(2543,219,7,2,NULL),(2544,176,9,2,NULL),(2545,181,9,2,NULL),(2546,197,9,2,NULL),(2547,198,9,2,NULL),(2548,219,9,2,NULL),(2549,176,10,2,NULL),(2550,181,10,2,NULL),(2551,197,10,2,NULL),(2552,198,10,2,NULL),(2553,219,10,2,NULL),(2554,176,64,2,NULL),(2555,181,64,2,NULL),(2556,197,64,2,NULL),(2557,198,64,2,NULL),(2558,219,64,2,NULL),(2559,176,71,2,NULL),(2560,181,71,2,NULL),(2561,197,71,2,NULL),(2562,198,71,2,NULL),(2563,219,71,2,NULL),(2564,176,40,2,NULL),(2565,181,40,2,NULL),(2566,197,40,2,NULL),(2567,198,40,2,NULL),(2568,219,40,2,NULL),(2569,176,48,2,NULL),(2570,181,48,2,NULL),(2571,197,48,2,NULL),(2572,198,48,2,NULL),(2573,219,48,2,NULL),(2574,176,49,2,NULL),(2575,181,49,2,NULL),(2576,197,49,2,NULL),(2577,198,49,2,NULL),(2578,219,49,2,NULL),(2579,176,52,2,NULL),(2580,181,52,2,NULL),(2581,197,52,2,NULL),(2582,198,52,2,NULL),(2583,219,52,2,NULL),(2584,176,55,2,NULL),(2585,181,55,2,NULL),(2586,197,55,2,NULL),(2587,198,55,2,NULL),(2588,219,55,2,NULL),(2589,176,56,2,NULL),(2590,181,56,2,NULL),(2591,197,56,2,NULL),(2592,198,56,2,NULL),(2593,219,56,2,NULL),(2594,176,72,2,NULL),(2595,181,72,2,NULL),(2596,197,72,2,NULL),(2597,198,72,2,NULL),(2598,219,72,2,NULL),(2599,176,73,2,NULL),(2600,181,73,2,NULL),(2601,197,73,2,NULL),(2602,198,73,2,NULL),(2603,219,73,2,NULL),(2604,176,74,2,NULL),(2605,181,74,2,NULL),(2606,197,74,2,NULL),(2607,198,74,2,NULL),(2608,219,74,2,NULL),(2609,176,75,2,NULL),(2610,181,75,2,NULL),(2611,197,75,2,NULL),(2612,198,75,2,NULL),(2613,219,75,2,NULL),(2614,176,57,2,NULL),(2615,181,57,2,NULL),(2616,197,57,2,NULL),(2617,198,57,2,NULL),(2618,219,57,2,NULL),(2619,176,63,2,NULL),(2620,181,63,2,NULL),(2621,197,63,2,NULL),(2622,198,63,2,NULL),(2623,219,63,2,NULL),(2624,189,55,2,NULL),(2625,225,55,2,NULL),(2626,123,40,2,NULL),(2627,124,40,2,NULL),(2628,123,57,2,NULL),(2629,37,40,2,NULL),(2630,124,57,2,NULL),(2631,119,40,2,NULL),(2632,37,57,2,NULL),(2633,121,40,2,NULL),(2634,119,57,2,NULL),(2635,121,57,2,NULL),(2636,211,40,2,NULL),(2637,211,57,2,NULL),(2638,212,40,2,NULL),(2639,212,57,2,NULL),(2640,185,40,2,NULL),(2641,185,57,2,NULL),(2642,186,40,2,NULL),(2643,186,57,2,NULL),(2644,187,40,2,NULL),(2645,187,57,2,NULL),(2646,188,40,2,NULL),(2647,188,57,2,NULL),(2648,195,40,2,NULL),(2649,195,57,2,NULL),(2650,196,40,2,NULL),(2651,196,57,2,NULL),(2652,226,40,2,NULL),(2653,226,57,2,NULL),(2654,139,40,2,NULL),(2655,139,57,2,NULL),(2656,166,26,2,NULL),(2657,239,57,2,NULL),(2658,166,30,2,NULL),(2659,248,57,2,NULL),(2660,175,55,2,NULL),(2661,123,63,2,NULL),(2662,178,55,2,NULL),(2663,124,63,2,NULL),(2664,123,48,2,NULL),(2665,37,63,2,NULL),(2666,124,48,2,NULL),(2667,119,63,2,NULL),(2668,37,48,2,NULL),(2669,121,63,2,NULL),(2670,119,48,2,NULL),(2671,121,48,2,NULL),(2672,211,63,2,NULL),(2673,212,63,2,NULL),(2674,185,63,2,NULL),(2675,211,48,2,NULL),(2676,186,63,2,NULL),(2677,212,48,2,NULL),(2678,187,63,2,NULL),(2679,185,48,2,NULL),(2680,188,63,2,NULL),(2681,186,48,2,NULL),(2682,195,63,2,NULL),(2683,187,48,2,NULL),(2684,196,63,2,NULL),(2685,188,48,2,NULL),(2686,226,63,2,NULL),(2687,195,48,2,NULL),(2688,139,63,2,NULL),(2689,196,48,2,NULL),(2690,226,48,2,NULL),(2691,139,48,2,NULL),(2692,140,48,2,NULL),(2693,211,1,2,NULL),(2694,212,1,2,NULL),(2695,211,2,2,NULL),(2696,212,2,2,NULL),(2697,211,5,2,NULL),(2698,212,5,2,NULL),(2699,211,6,2,NULL),(2700,212,6,2,NULL),(2701,123,49,2,NULL),(2702,124,49,2,NULL),(2703,211,7,2,NULL),(2704,212,7,2,NULL),(2705,37,49,2,NULL),(2706,119,49,2,NULL),(2707,121,49,2,NULL),(2708,211,9,2,NULL),(2709,212,9,2,NULL),(2710,211,10,2,NULL),(2711,212,10,2,NULL),(2712,211,64,2,NULL),(2713,212,64,2,NULL),(2714,211,71,2,NULL),(2715,212,71,2,NULL),(2716,211,52,2,NULL),(2717,212,52,2,NULL),(2718,185,49,2,NULL),(2719,186,49,2,NULL),(2720,187,49,2,NULL),(2721,188,49,2,NULL),(2722,195,49,2,NULL),(2723,196,49,2,NULL),(2724,226,49,2,NULL),(2725,139,49,2,NULL),(2726,211,55,2,NULL),(2727,212,55,2,NULL),(2728,211,56,2,NULL),(2729,212,56,2,NULL),(2730,211,72,2,NULL),(2731,212,72,2,NULL),(2732,211,73,2,NULL),(2733,212,73,2,NULL),(2734,211,74,2,NULL),(2735,212,74,2,NULL),(2736,211,75,2,NULL),(2737,212,75,2,NULL),(2738,210,55,2,NULL),(2739,185,1,2,NULL),(2740,186,1,2,NULL),(2741,187,1,2,NULL),(2742,188,1,2,NULL),(2743,185,2,2,NULL),(2744,186,2,2,NULL),(2745,187,2,2,NULL),(2746,188,2,2,NULL),(2747,185,5,2,NULL),(2748,186,5,2,NULL),(2749,187,5,2,NULL),(2750,188,5,2,NULL),(2751,185,6,2,NULL),(2752,186,6,2,NULL),(2753,187,6,2,NULL),(2754,188,6,2,NULL),(2755,123,52,2,NULL),(2756,124,52,2,NULL),(2757,185,7,2,NULL),(2758,186,7,2,NULL),(2759,187,7,2,NULL),(2760,188,7,2,NULL),(2761,37,52,2,NULL),(2762,119,52,2,NULL),(2763,121,52,2,NULL),(2764,185,9,2,NULL),(2765,186,9,2,NULL),(2766,187,9,2,NULL),(2767,188,9,2,NULL),(2768,185,10,2,NULL),(2769,186,10,2,NULL),(2770,187,10,2,NULL),(2771,188,10,2,NULL),(2772,185,64,2,NULL),(2773,186,64,2,NULL),(2774,187,64,2,NULL),(2775,188,64,2,NULL),(2776,185,71,2,NULL),(2777,186,71,2,NULL),(2778,187,71,2,NULL),(2779,188,71,2,NULL),(2780,195,52,2,NULL),(2781,196,52,2,NULL),(2782,226,52,2,NULL),(2783,139,52,2,NULL),(2784,185,55,2,NULL),(2785,186,55,2,NULL),(2786,187,55,2,NULL),(2787,188,55,2,NULL),(2788,185,56,2,NULL),(2789,186,56,2,NULL),(2790,187,56,2,NULL),(2791,188,56,2,NULL),(2792,185,72,2,NULL),(2793,186,72,2,NULL),(2794,187,72,2,NULL),(2795,188,72,2,NULL),(2796,185,73,2,NULL),(2797,186,73,2,NULL),(2798,187,73,2,NULL),(2799,188,73,2,NULL),(2800,185,74,2,NULL),(2801,186,74,2,NULL),(2802,187,74,2,NULL),(2803,188,74,2,NULL),(2804,185,75,2,NULL),(2805,186,75,2,NULL),(2806,187,75,2,NULL),(2807,188,75,2,NULL),(2808,184,48,2,NULL),(2809,214,53,2,NULL),(2810,195,1,2,NULL),(2811,196,1,2,NULL),(2812,226,1,2,NULL),(2813,195,2,2,NULL),(2814,196,2,2,NULL),(2815,226,2,2,NULL),(2816,195,5,2,NULL),(2817,196,5,2,NULL),(2818,226,5,2,NULL),(2819,195,6,2,NULL),(2820,196,6,2,NULL),(2821,226,6,2,NULL),(2822,195,7,2,NULL),(2823,196,7,2,NULL),(2824,226,7,2,NULL),(2825,195,9,2,NULL),(2826,196,9,2,NULL),(2827,226,9,2,NULL),(2828,195,10,2,NULL),(2829,196,10,2,NULL),(2830,226,10,2,NULL),(2831,195,64,2,NULL),(2832,196,64,2,NULL),(2833,226,64,2,NULL),(2834,195,71,2,NULL),(2835,196,71,2,NULL),(2836,226,71,2,NULL),(2837,195,55,2,NULL),(2838,196,55,2,NULL),(2839,226,55,2,NULL),(2840,195,56,2,NULL),(2841,196,56,2,NULL),(2842,226,56,2,NULL),(2843,195,72,2,NULL),(2844,196,72,2,NULL),(2845,226,72,2,NULL),(2846,195,73,2,NULL),(2847,196,73,2,NULL),(2848,226,73,2,NULL),(2849,195,74,2,NULL),(2850,196,74,2,NULL),(2851,226,74,2,NULL),(2852,195,75,2,NULL),(2853,196,75,2,NULL),(2854,226,75,2,NULL),(2855,218,55,2,NULL),(2856,139,1,2,NULL),(2857,139,2,2,NULL),(2858,139,5,2,NULL),(2859,139,6,2,NULL),(2860,139,7,2,NULL),(2861,139,9,2,NULL),(2862,139,10,2,NULL),(2863,139,64,2,NULL),(2864,139,71,2,NULL),(2865,139,55,2,NULL),(2866,139,56,2,NULL),(2867,139,72,2,NULL),(2868,139,73,2,NULL),(2869,139,74,2,NULL),(2870,139,75,2,NULL),(2871,123,55,2,NULL),(2872,124,55,2,NULL),(2873,37,55,2,NULL),(2874,119,55,2,NULL),(2875,121,55,2,NULL),(2876,169,55,2,NULL),(2877,170,55,2,NULL),(2878,220,55,2,NULL),(2879,123,56,2,NULL),(2880,124,56,2,NULL),(2881,37,56,2,NULL),(2882,119,56,2,NULL),(2883,121,56,2,NULL),(2884,123,72,2,NULL),(2885,124,72,2,NULL),(2886,37,72,2,NULL),(2887,119,72,2,NULL),(2888,121,72,2,NULL),(2889,123,73,2,NULL),(2890,124,73,2,NULL),(2891,37,73,2,NULL),(2892,119,73,2,NULL),(2893,121,73,2,NULL),(2894,123,74,2,NULL),(2895,124,74,2,NULL),(2896,37,74,2,NULL),(2897,119,74,2,NULL),(2898,121,74,2,NULL),(2899,123,75,2,NULL),(2900,124,75,2,NULL),(2901,37,75,2,NULL),(2902,119,75,2,NULL),(2903,121,75,2,NULL),(2904,123,1,2,NULL),(2905,124,1,2,NULL),(2906,37,1,2,NULL),(2907,119,1,2,NULL),(2908,121,1,2,NULL),(2909,103,9,2,NULL),(2910,107,9,2,NULL),(2911,123,2,2,NULL),(2912,124,2,2,NULL),(2913,37,2,2,NULL),(2914,119,2,2,NULL),(2915,121,2,2,NULL),(2916,9,1,2,NULL),(2917,25,9,2,NULL),(2918,80,9,2,NULL),(2919,123,5,2,NULL),(2920,124,5,2,NULL),(2921,37,5,2,NULL),(2922,119,5,2,NULL),(2923,121,5,2,NULL),(2924,2,5,2,NULL),(2925,123,7,2,NULL),(2926,124,7,2,NULL),(2927,37,6,2,NULL),(2928,119,6,2,NULL),(2929,121,6,2,NULL),(2930,123,9,2,NULL),(2931,124,9,2,NULL),(2932,123,10,2,NULL),(2933,124,10,2,NULL),(2934,123,64,2,NULL),(2935,124,64,2,NULL),(2936,123,71,2,NULL),(2937,124,71,2,NULL),(2938,50,9,2,NULL),(2939,37,7,2,NULL),(2940,119,7,2,NULL),(2941,121,7,2,NULL),(2942,38,8,2,NULL),(2943,53,5,2,NULL),(2944,37,9,2,NULL),(2945,119,9,2,NULL),(2946,121,9,2,NULL),(2947,37,10,2,NULL),(2948,119,10,2,NULL),(2949,121,10,2,NULL),(2950,37,64,2,NULL),(2951,119,64,2,NULL),(2952,121,64,2,NULL),(2953,37,71,2,NULL),(2954,119,71,2,NULL),(2955,121,71,2,NULL),(2956,1,9,2,NULL),(2957,19,9,2,NULL),(2958,58,9,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:25
