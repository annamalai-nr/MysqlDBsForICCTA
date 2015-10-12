-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_409
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (19,'(.*)'),(18,'.ImageTestActivity'),(15,'.Myhall'),(14,'.Web'),(7,'.efaWJifm14'),(2,'android.intent.action.BOOT_COMPLETED'),(22,'android.intent.action.CLOSE_SYSTEM_DIALOGS'),(11,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.PACKAGE_REMOVED'),(21,'android.intent.action.SCREEN_OFF'),(5,'android.intent.action.USER_PRESENT'),(4,'android.intent.action.VIEW'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(12,'com.conceptcars.GameBootReceiver'),(17,'com.conceptcars.ImageTestActivity'),(16,'com.conceptcars.Myhall'),(13,'com.conceptcars.Web'),(20,'com.heyzap.android'),(9,'org.android_keajfm.efaWJifm12'),(6,'org.android_keajfm.efaWJifm14');
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
INSERT INTO `Applications` VALUES (1,'org.tig.gqek',10023),(2,'org.android_keajfm',1100),(3,'com.conceptcars',10019),(4,'eri.kehgrcccnt.erkvu',10032),(5,'com.nuumtbis.lvphmdd.naoa_ak',10021),(6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh',10038),(7,'pipo.feopqov',10037);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'org.tig.gqek.MenuActivity'),(2,1,'org.cst.game.GameActivity'),(3,1,'com.ENfai.pVplbvLoM'),(4,1,'com.ENfai.vUpmInLcTApNQ'),(5,2,'org.android_keajfm.image.efaWJifm19'),(6,2,'org.android_keajfm.image.efaWJifm18'),(7,2,'org.android_keajfm.efaWJifm8'),(8,2,'org.android_keajfm.efaWJifm9'),(9,2,'org.android_keajfm.efaWJifm2'),(10,2,'org.android_keajfm.efaWJifm10'),(11,2,'org.android_keajfm.efaWJifm11'),(12,2,'org.android_keajfm.efaWJifm12'),(13,3,'com.conceptcars.Myhall'),(14,3,'com.conceptcars.Web'),(15,3,'com.conceptcars.HomeActivity'),(16,3,'com.conceptcars.SortActivity1'),(17,3,'com.conceptcars.SortActivity2'),(18,3,'com.conceptcars.SearchActivity'),(19,3,'com.conceptcars.ManagerActivity'),(20,3,'com.conceptcars.GameInfo'),(21,3,'com.conceptcars.TableClass'),(22,3,'com.conceptcars.GameAlertDialog'),(23,3,'com.conceptcars.DevelopmentSettings'),(24,3,'com.conceptcars.qimg.ImageTestActivity'),(25,3,'com.conceptcars.qimg.ADactivity'),(26,3,'com.conceptcars.GameService'),(27,3,'com.conceptcars.GameBootReceiver'),(28,4,'eri.kehgrcccnt.erkvu.GameActivity'),(29,4,'eri.kehgrcccnt.erkvu.PreferencesFromXml'),(30,4,'eri.kehgrcccnt.erkvu.About'),(31,4,'eri.kehgrcccnt.erkvu.MoreGamesActivity'),(32,5,'com.nuumtbis.lvphmdd.naoa_ak.GloftSETT'),(33,4,'com.google.ads.AdActivity'),(34,5,'com.AFPgNn.AkfUcwshMQDdQ'),(35,4,'com.openfeint.internal.ui.IntroFlow'),(36,5,'com.AFPgNn.vEphGedQWhKRkQ'),(37,4,'com.openfeint.api.ui.Dashboard'),(38,4,'com.openfeint.internal.ui.Settings'),(39,4,'com.openfeint.internal.ui.NativeBrowser'),(40,4,'com.wswqGaBfk.ujQQLoKHkeFa'),(41,4,'com.wswqGaBfk.IQCLFEHFOSUMb'),(42,4,'com.wswqGaBfk.nubFUsvB'),(43,4,'com.wswqGaBfk.jcEFEUtvmEBl'),(44,4,'com.wswqGaBfk.GHJklgGLsNQr'),(45,4,'com.wswqGaBfk.CiBEpgWfr'),(46,4,'com.wswqGaBfk.userPermissionReceiver'),(47,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireActivity'),(48,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireGameActivity'),(49,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireHelp'),(50,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireGameChooser'),(51,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.StatsActivty'),(52,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.BackgroundChooser'),(53,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.CardChooser'),(54,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.GameSettings'),(55,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.SupportInfo'),(56,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.WinnerActivity'),(57,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireGameChooserTab'),(58,6,'com.google.ads.AdActivity'),(59,6,'com.tWuRE.TacUDekenMNC'),(60,6,'com.tWuRE.EfhCdluTkvoEsa'),(61,6,'com.tWuRE.QGaMmrUhd'),(62,6,'com.tWuRE.BDoWuFdqIfmVo'),(63,6,'com.tWuRE.tSppnJTqPh'),(64,6,'com.tWuRE.GUwsUhEcKB'),(65,6,'com.tWuRE.userPermissionReceiver'),(66,7,'pipo.feopqov.SpeedTesting'),(67,7,'pipo.feopqov.HiScoreScreen'),(68,7,'pipo.feopqov.GameScreen'),(69,7,'pipo.feopqov.Preferences'),(70,7,'com.mobclix.android.sdk.MobclixBrowserActivity'),(71,7,'com.papaya.base.EntryActivity'),(72,7,'com.papaya.web.WebActivity'),(73,7,'com.papaya.web.ExternalWebActivity'),(74,7,'com.papaya.social.SocialRegistrationActivity'),(75,7,'com.papaya.chat.FriendsActivity'),(76,7,'com.papaya.chat.ChatActivity'),(77,7,'com.papaya.utils.CountryCodeActivity'),(78,7,'com.DkAJJRP.dNeOirPRqh'),(79,7,'com.DkAJJRP.fjaRDRLafoqdgU'),(80,2,'l'),(81,7,'com.nd.dianjin.activity.OfferAppActivity'),(82,7,'com.papaya.social.PPYSocialContentProvider'),(83,2,'k'),(84,2,'e'),(85,3,'dw'),(86,3,'cj'),(87,3,'bt'),(88,3,'bc'),(89,3,'ar'),(90,3,'cq'),(91,3,'cc'),(92,3,'ck'),(93,3,'ba'),(94,3,'ag'),(95,3,'be'),(96,4,'eri.kehgrcccnt.erkvu.GameActivity$5'),(97,4,'com.wswqGaBfk.ad'),(98,4,'com.openfeint.internal.ImagePicker'),(99,4,'com.heyzap.sdk.PreMarketDialog$1'),(100,4,'com.heyzap.sdk.HeyzapLib'),(101,4,'eri.kehgrcccnt.erkvu.GameActivity$2'),(102,4,'com.google.ads.util.AdUtil$UserActivityReceiver'),(103,4,'com.mopub.mobileads.MoPubView$1'),(104,4,'com.heyzap.sdk.ClickableToast$DismissToastBroadcastReceiver'),(105,4,'com.wswqGaBfk.ab'),(106,4,'com.wswqGaBfk.o'),(107,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(108,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireActivity$1'),(109,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.GameSettings$1'),(110,6,'com.tWuRE.ad'),(111,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.GameSettings$2'),(112,6,'ad'),(113,6,'com.tWuRE.ae'),(114,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireActivity$3'),(115,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireActivity$5'),(116,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireActivity$4'),(117,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireGameChooser$1'),(118,6,'com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireActivity$2'),(119,6,'com.tWuRE.ah');
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'filepath'),(2,10,'content'),(3,9,'from'),(4,7,'title'),(5,10,'version_code'),(6,7,'fromtype'),(7,9,'isDirectFromTable'),(8,7,'from_table'),(9,7,'status'),(10,7,'from_alert'),(11,10,'btn_txt'),(12,7,'game'),(13,11,'stylebox'),(14,5,'stylebox'),(15,10,'fromtable'),(16,10,'title'),(17,10,'package_name'),(18,10,'apk_url'),(19,17,'nextclassid'),(20,14,'service_channel'),(21,10,'url'),(22,22,'btn_txt'),(23,19,'package_name'),(24,13,'nextclassid'),(25,26,'service_channel'),(26,19,'soft_id'),(27,19,'icon'),(28,22,'apk_url'),(29,19,'app_name'),(30,24,'service_channel'),(31,13,'service_channel'),(32,22,'version_code'),(33,19,'status'),(34,19,'filepath'),(35,18,'version_code'),(36,17,'package_name'),(37,20,'title'),(38,17,'status'),(39,19,'url'),(40,20,'filepath'),(41,18,'status'),(42,20,'from_alert'),(43,19,'total'),(44,22,'url'),(45,20,'status'),(46,22,'content'),(47,20,'fromtype'),(48,22,'title'),(49,19,'completed'),(50,20,'game'),(51,20,'from_table'),(52,18,'package_name'),(53,22,'package_name'),(54,28,'(.*)'),(55,44,'fileURL'),(56,38,'mForceOffline'),(57,37,'mForceOffline'),(58,35,'mForceOffline'),(59,45,'fileURL'),(60,38,'mCreatingDeviceSession'),(61,37,'mCreatingDeviceSession'),(62,35,'mCreatingDeviceSession'),(63,38,'mApproved'),(64,37,'mApproved'),(65,35,'mApproved'),(66,44,'packageName'),(67,42,'apkInfo'),(68,42,'np_app_key'),(69,41,'np_app_key'),(70,40,'np_app_key'),(71,43,'np_app_key'),(72,28,'np_app_key'),(73,45,'np_app_key'),(74,31,'np_app_key'),(75,38,'_of_cookie_(.*)value'),(76,37,'_of_cookie_(.*)value'),(77,35,'_of_cookie_(.*)value'),(78,38,'screenName'),(79,37,'screenName'),(80,35,'screenName'),(81,38,'content_name'),(82,37,'content_name'),(83,35,'content_name'),(84,42,'imageURL'),(85,28,'error_type'),(86,38,'com.openfeint.internal.ui.NativeBrowser.argument.result'),(87,38,'mDeclined'),(88,37,'mDeclined'),(89,35,'mDeclined'),(90,42,'packageName'),(91,42,'detailFlag'),(92,38,'mDeviceSessionCreated'),(93,37,'mDeviceSessionCreated'),(94,35,'mDeviceSessionCreated'),(95,39,'com.openfeint.internal.ui.NativeBrowser.argument.src'),(96,42,'iconURL'),(97,38,'com.openfeint.internal.ui.NativeBrowser.argument.failure_desc'),(98,38,'mCurrentUser'),(99,37,'mCurrentUser'),(100,35,'mCurrentUser'),(101,42,'apkURL'),(102,28,'failing_url'),(103,33,'action'),(104,45,'fileName'),(105,42,'apkTitle'),(106,38,'mBanned'),(107,37,'mBanned'),(108,35,'mBanned'),(109,42,'apkSoftID'),(110,38,'com.openfeint.internal.ui.NativeBrowser.argument.failed'),(111,42,'apkVersion'),(112,33,'params'),(113,28,'error'),(114,38,'_of_cookie_(.*)expiry'),(115,37,'_of_cookie_(.*)expiry'),(116,35,'_of_cookie_(.*)expiry'),(117,42,'apkSize'),(118,28,'expires_in'),(119,28,'access_token'),(120,39,'com.openfeint.internal.ui.NativeBrowser.argument.timeout'),(121,38,'_of_cookie_(.*)path'),(122,37,'_of_cookie_(.*)path'),(123,35,'_of_cookie_(.*)path'),(124,38,'mCurrentlyLoggingIn'),(125,37,'mCurrentlyLoggingIn'),(126,35,'mCurrentlyLoggingIn'),(127,33,'com.google.ads.AdOpener'),(128,38,'_of_cookie_(.*)domain'),(129,37,'_of_cookie_(.*)domain'),(130,35,'_of_cookie_(.*)domain'),(131,61,'apkURL'),(132,61,'apkTitle'),(133,61,'packageName'),(134,58,'com.google.ads.AdOpener'),(135,57,'np_app_key'),(136,47,'np_app_key'),(137,62,'np_app_key'),(138,59,'np_app_key'),(139,60,'np_app_key'),(140,61,'np_app_key'),(141,50,'np_app_key'),(142,64,'np_app_key'),(143,58,'np_app_key'),(144,48,'np_app_key'),(145,61,'apkSize'),(146,58,'params'),(147,63,'packageName'),(148,64,'fileURL'),(149,49,'game'),(150,61,'apkInfo'),(151,61,'imageURL'),(152,58,'action'),(153,61,'apkSoftID'),(154,61,'apkVersion'),(155,61,'detailFlag'),(156,61,'iconURL'),(157,63,'fileURL'),(158,64,'fileName');
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',1,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'r',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'r',0,NULL,NULL),(65,65,'r',1,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',1,NULL,NULL),(80,81,'a',0,NULL,NULL),(81,82,'p',0,NULL,NULL),(82,102,'r',1,NULL,NULL),(83,45,'r',1,NULL,NULL),(84,103,'r',1,NULL,NULL),(85,104,'r',1,NULL,NULL),(86,107,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,1),(3,3,3),(4,4,34),(5,5,34),(6,6,5),(7,7,10),(8,8,5),(9,9,7),(10,10,7),(11,11,12),(12,12,12),(13,13,10),(14,13,9),(15,13,8),(16,14,7),(17,15,7),(18,16,7),(19,17,7),(20,18,7),(21,19,7),(22,20,8),(23,21,10),(24,22,12),(25,23,10),(26,24,7),(27,25,5),(28,26,7),(29,27,10),(30,28,8),(31,28,9),(32,28,10),(33,29,7),(34,30,15),(35,31,8),(36,32,20),(37,33,7),(38,34,17),(39,35,15),(40,36,18),(41,37,13),(42,38,22),(43,39,17),(44,40,25),(45,41,22),(46,42,19),(47,43,21),(48,44,25),(49,45,25),(50,46,20),(51,47,20),(52,48,14),(53,49,13),(54,50,13),(55,51,19),(56,52,27),(57,53,17),(58,54,14),(59,55,21),(60,55,22),(61,56,17),(62,57,13),(63,58,20),(64,59,24),(65,60,22),(66,61,18),(67,62,15),(68,63,20),(69,64,13),(70,65,17),(71,66,27),(72,67,21),(73,67,22),(74,68,14),(75,69,15),(76,70,21),(77,71,13),(78,72,19),(79,73,27),(80,74,22),(81,75,15),(82,76,13),(83,77,15),(84,78,24),(85,79,24),(86,80,17),(87,81,41),(88,81,28),(89,81,31),(90,82,41),(91,83,40),(92,84,45),(93,85,46),(94,86,35),(95,86,38),(96,87,44),(97,88,28),(98,88,41),(99,88,31),(100,89,33),(101,90,41),(102,90,28),(103,90,31),(104,91,41),(105,92,41),(106,93,41),(107,93,28),(108,93,31),(109,94,40),(110,95,41),(111,96,31),(112,97,41),(113,98,42),(114,98,31),(115,98,41),(116,98,28),(117,99,29),(118,100,40),(119,101,40),(120,102,42),(121,102,41),(122,102,28),(123,102,31),(124,103,42),(125,104,56),(126,105,48),(127,106,63),(128,107,48),(129,108,60),(130,109,60),(131,109,47),(132,109,48),(133,109,50),(134,109,57),(135,109,58),(136,110,60),(137,111,54),(138,112,48),(139,113,61),(140,114,59),(141,115,54),(142,116,60),(143,117,48),(144,118,58),(145,118,57),(146,118,60),(147,118,50),(148,118,47),(149,118,48),(150,119,58),(151,120,60),(152,120,50),(153,120,47),(154,120,61),(155,120,48),(156,120,57),(157,120,58),(158,121,64),(159,122,50),(160,122,57),(161,122,48),(162,122,47),(163,122,58),(164,122,60),(165,123,48),(166,124,58),(167,124,57),(168,124,60),(169,124,50),(170,124,48),(171,124,47),(172,125,50),(173,125,48),(174,125,47),(175,125,60),(176,125,58),(177,125,57),(178,126,59),(179,127,56),(180,128,47),(181,128,48),(182,128,50),(183,128,57),(184,128,58),(185,128,60),(186,128,61),(187,129,56),(188,130,59),(189,131,60),(190,131,58),(191,131,48),(192,131,47),(193,131,50),(194,131,57),(195,132,60),(196,132,47),(197,132,48),(198,132,50),(199,132,58),(200,132,57),(201,133,48),(202,134,59),(203,135,65),(204,136,50),(205,136,48),(206,136,47),(207,136,60),(208,136,57),(209,136,58);
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.ENfai.pVplbvLoM: void a(java.lang.String)>',10,'a',NULL),(2,1,'<org.tig.gqek.MenuActivity: void handleMessage(int)>',17,'a',NULL),(3,3,'<com.ENfai.pVplbvLoM: void a()>',3,'a',NULL),(4,34,'<com.AFPgNn.AkfUcwshMQDdQ: void a(java.lang.String)>',10,'a',NULL),(5,34,'<com.AFPgNn.AkfUcwshMQDdQ: void a()>',3,'a',NULL),(6,5,'<org.android_keajfm.image.efaWJifm19: void onCreate(android.os.Bundle)>',122,'s',NULL),(7,10,'<org.android_keajfm.efaWJifm10: void onClick(android.view.View)>',66,'a',NULL),(8,5,'<org.android_keajfm.image.efaWJifm19: void onCreate(android.os.Bundle)>',126,'s',NULL),(9,80,'<l: void onClick(android.view.View)>',221,'a',NULL),(10,7,'<org.android_keajfm.efaWJifm8: void onCreate(android.os.Bundle)>',177,'a',NULL),(11,12,'<org.android_keajfm.efaWJifm12: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(12,12,'<org.android_keajfm.efaWJifm12: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(13,9,'<org.android_keajfm.efaWJifm2: void a(int,boolean)>',10,'s',NULL),(14,7,'<org.android_keajfm.efaWJifm8: void onCreate(android.os.Bundle)>',33,'s',NULL),(15,80,'<l: void onClick(android.view.View)>',242,'a',NULL),(16,83,'<k: void onClick(android.view.View)>',218,'a',NULL),(17,84,'<e: void onClick(android.view.View)>',218,'a',NULL),(18,7,'<org.android_keajfm.efaWJifm8: void onCreate(android.os.Bundle)>',172,'a',NULL),(19,7,'<org.android_keajfm.efaWJifm8: void onCreate(android.os.Bundle)>',90,'s',NULL),(20,8,'<org.android_keajfm.efaWJifm9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(21,10,'<org.android_keajfm.efaWJifm10: void onClick(android.view.View)>',75,'a',NULL),(22,12,'<org.android_keajfm.efaWJifm12: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(23,10,'<org.android_keajfm.efaWJifm10: void onClick(android.view.View)>',53,'a',NULL),(24,7,'<org.android_keajfm.efaWJifm8: void onCreate(android.os.Bundle)>',81,'a',NULL),(25,5,'<org.android_keajfm.image.efaWJifm19: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(26,84,'<e: void onClick(android.view.View)>',239,'a',NULL),(27,10,'<org.android_keajfm.efaWJifm10: void onClick(android.view.View)>',84,'a',NULL),(28,9,'<org.android_keajfm.efaWJifm2: void a(int,boolean)>',63,'a',NULL),(29,7,'<org.android_keajfm.efaWJifm8: void onCreate(android.os.Bundle)>',76,'a',NULL),(30,15,'<com.conceptcars.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(31,8,'<org.android_keajfm.efaWJifm9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(32,85,'<dw: void onClick(android.view.View)>',239,'a',NULL),(33,83,'<k: void onClick(android.view.View)>',239,'a',NULL),(34,86,'<cj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(35,87,'<bt: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(36,18,'<com.conceptcars.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(37,88,'<bc: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(38,22,'<com.conceptcars.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(39,17,'<com.conceptcars.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(40,25,'<com.conceptcars.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(41,22,'<com.conceptcars.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(42,19,'<com.conceptcars.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(43,21,'<com.conceptcars.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(44,89,'<ar: void onClick(android.view.View)>',6,'a',NULL),(45,25,'<com.conceptcars.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(46,20,'<com.conceptcars.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(47,20,'<com.conceptcars.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(48,90,'<cq: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(49,88,'<bc: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(50,88,'<bc: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(51,91,'<cc: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(52,27,'<com.conceptcars.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(53,92,'<ck: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(54,14,'<com.conceptcars.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(55,93,'<ba: void a(int,boolean)>',10,'s',NULL),(56,92,'<ck: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(57,13,'<com.conceptcars.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(58,20,'<com.conceptcars.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(59,94,'<ag: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(60,22,'<com.conceptcars.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(61,18,'<com.conceptcars.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(62,87,'<bt: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(63,85,'<dw: void onClick(android.view.View)>',218,'a',NULL),(64,95,'<be: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(65,17,'<com.conceptcars.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(66,27,'<com.conceptcars.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(67,93,'<ba: void a(int,boolean)>',57,'a',NULL),(68,14,'<com.conceptcars.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(69,15,'<com.conceptcars.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(70,21,'<com.conceptcars.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(71,88,'<bc: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(72,91,'<cc: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(73,27,'<com.conceptcars.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(74,22,'<com.conceptcars.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(75,87,'<bt: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(76,13,'<com.conceptcars.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(77,15,'<com.conceptcars.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(78,24,'<com.conceptcars.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(79,24,'<com.conceptcars.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(80,92,'<ck: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(81,96,'<eri.kehgrcccnt.erkvu.GameActivity$5: void onClick(android.view.View)>',7,'a',0),(82,41,'<com.wswqGaBfk.IQCLFEHFOSUMb: void a(boolean)>',5,'a',NULL),(83,40,'<com.wswqGaBfk.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',15,'a',NULL),(84,45,'<com.wswqGaBfk.CiBEpgWfr: void a(android.content.Context)>',76,'a',NULL),(85,97,'<com.wswqGaBfk.ad: void run()>',25,'s',NULL),(86,98,'<com.openfeint.internal.ImagePicker: android.graphics.Bitmap onImagePickerActivityResult(android.app.Activity,int,int,android.content.Intent)>',10,'p',0),(87,44,'<com.wswqGaBfk.GHJklgGLsNQr: void a(java.lang.String)>',10,'a',NULL),(88,99,'<com.heyzap.sdk.PreMarketDialog$1: void onClick(android.view.View)>',25,'a',NULL),(89,33,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(90,100,'<com.heyzap.sdk.HeyzapLib: void launchCheckinForm(android.content.Context,java.lang.String)>',13,'a',NULL),(91,41,'<com.wswqGaBfk.IQCLFEHFOSUMb: void b()>',43,'a',NULL),(92,41,'<com.wswqGaBfk.IQCLFEHFOSUMb: void a()>',3,'a',NULL),(93,101,'<eri.kehgrcccnt.erkvu.GameActivity$2: void onClick(android.view.View)>',7,'a',0),(94,40,'<com.wswqGaBfk.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',30,'a',NULL),(95,41,'<com.wswqGaBfk.IQCLFEHFOSUMb: void b()>',50,'a',NULL),(96,31,'<eri.kehgrcccnt.erkvu.MoreGamesActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',0),(97,41,'<com.wswqGaBfk.IQCLFEHFOSUMb: void a(boolean)>',15,'a',NULL),(98,42,'<com.wswqGaBfk.nubFUsvB: void a(com.wswqGaBfk.nubFUsvB,android.content.Context,java.lang.String)>',5,'a',NULL),(99,29,'<eri.kehgrcccnt.erkvu.PreferencesFromXml: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',31,'a',0),(100,105,'<com.wswqGaBfk.ab: void run()>',8,'s',NULL),(101,40,'<com.wswqGaBfk.ujQQLoKHkeFa: void onCreate(android.os.Bundle)>',25,'a',0),(102,106,'<com.wswqGaBfk.o: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(103,42,'<com.wswqGaBfk.nubFUsvB: void onCreate(android.os.Bundle)>',74,'a',NULL),(104,56,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.WinnerActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(105,48,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireGameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(106,63,'<com.tWuRE.tSppnJTqPh: void a(java.lang.String)>',10,'a',NULL),(107,48,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireGameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',32,'a',NULL),(108,60,'<com.tWuRE.EfhCdluTkvoEsa: void b()>',45,'a',NULL),(109,108,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireActivity$1: void onClick(android.view.View)>',11,'a',NULL),(110,60,'<com.tWuRE.EfhCdluTkvoEsa: void b()>',55,'a',NULL),(111,109,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.GameSettings$1: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(112,48,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireGameActivity: void launchStats()>',3,'a',NULL),(113,61,'<com.tWuRE.QGaMmrUhd: void onCreate(android.os.Bundle)>',67,'a',NULL),(114,110,'<com.tWuRE.ad: void run()>',8,'s',NULL),(115,111,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.GameSettings$2: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(116,60,'<com.tWuRE.EfhCdluTkvoEsa: void onBackPressed()>',5,'a',NULL),(117,48,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireGameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(118,112,'<ad: void run()>',5,'p',NULL),(119,58,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(120,113,'<com.tWuRE.ae: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(121,64,'<com.tWuRE.GUwsUhEcKB: void c(android.content.Context)>',74,'a',NULL),(122,114,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireActivity$3: void onClick(android.view.View)>',6,'a',NULL),(123,48,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireGameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(124,115,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireActivity$5: void onClick(android.view.View)>',9,'a',NULL),(125,116,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireActivity$4: void onClick(android.view.View)>',6,'a',NULL),(126,59,'<com.tWuRE.TacUDekenMNC: void onCreate(android.os.Bundle)>',31,'a',0),(127,56,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.WinnerActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(128,61,'<com.tWuRE.QGaMmrUhd: void a(com.tWuRE.QGaMmrUhd,android.content.Context,java.lang.String)>',5,'a',NULL),(129,56,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.WinnerActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(130,59,'<com.tWuRE.TacUDekenMNC: void onCreate(android.os.Bundle)>',21,'a',NULL),(131,117,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireGameChooser$1: void onClick(android.view.View)>',12,'a',NULL),(132,118,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireActivity$2: void onClick(android.view.View)>',6,'a',NULL),(133,48,'<com.nvgbwvevlutlkui.olgaduacgcuneveqh.SolitaireGameActivity: void launchHelp()>',5,'a',NULL),(134,59,'<com.tWuRE.TacUDekenMNC: void onCreate(android.os.Bundle)>',36,'a',NULL),(135,119,'<com.tWuRE.ah: void run()>',25,'s',NULL),(136,60,'<com.tWuRE.EfhCdluTkvoEsa: void a()>',3,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,4),(2,4,4),(3,6,6),(4,7,7),(5,8,4),(6,9,4),(7,11,4),(8,12,4),(9,14,9),(10,18,1),(11,19,1),(12,20,1),(13,21,1),(14,22,4),(15,23,4),(16,24,4),(17,25,4),(18,29,3),(19,30,9),(20,34,1),(21,35,1),(22,36,1),(23,37,1),(24,42,1),(25,43,1),(26,44,1),(27,45,1),(28,46,1),(29,47,1),(30,48,1),(31,49,1),(32,50,1),(33,51,1),(34,53,4),(35,56,4),(36,57,4),(37,62,1),(38,63,1),(39,65,4),(40,68,4),(41,71,11),(42,72,12),(43,76,4),(44,79,4),(45,80,3),(46,83,4),(47,84,4),(48,85,4),(49,89,13),(50,90,14),(51,91,4),(52,94,1),(53,95,1),(54,96,12),(55,99,15),(56,100,16),(57,103,17),(58,104,18),(59,110,4),(60,111,4),(61,112,4),(62,113,19),(63,114,19),(64,115,20),(65,121,1),(66,122,1),(67,124,4),(68,125,1),(69,126,1),(70,129,4),(71,136,1),(72,137,1),(73,142,4),(74,143,19),(75,144,19),(76,145,4),(77,152,1),(78,153,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,18,1),(2,19,4),(3,20,1),(4,21,4),(5,34,1),(6,35,4),(7,36,1),(8,37,4),(9,42,1),(10,43,4),(11,44,1),(12,45,4),(13,46,1),(14,47,1),(15,48,4),(16,49,4),(17,50,1),(18,51,4),(19,62,1),(20,63,4),(21,94,1),(22,95,4),(23,115,1),(24,121,1),(25,122,4),(26,125,1),(27,126,4),(28,136,1),(29,137,4),(30,152,1),(31,153,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'org/cst/game/GameActivity'),(2,3,'org/tig/gqek/MenuActivity'),(3,5,'com/nuumtbis/lvphmdd/naoa_ak/GloftSETT'),(4,6,'org/android_keajfm/efaWJifm11'),(5,7,'org/android_keajfm/efaWJifm11'),(6,10,'org/android_keajfm/efaWJifm11'),(7,13,'org/android_keajfm/image/efaWJifm19'),(8,14,'org/android_keajfm/efaWJifm11'),(9,15,'org/android_keajfm/efaWJifm11'),(10,16,'org/android_keajfm/efaWJifm11'),(11,17,'org/android_keajfm/efaWJifm11'),(12,26,'org/android_keajfm/image/efaWJifm19'),(13,27,'org/android_keajfm/efaWJifm11'),(14,28,'org/android_keajfm/efaWJifm8'),(15,30,'org/android_keajfm/efaWJifm11'),(16,31,'org/android_keajfm/efaWJifm8'),(17,32,'org/android_keajfm/image/efaWJifm19'),(18,33,'org/android_keajfm/image/efaWJifm18'),(19,38,'org/android_keajfm/efaWJifm10'),(20,39,'org/android_keajfm/image/efaWJifm19'),(21,40,'org/android_keajfm/image/efaWJifm19'),(22,41,'com/conceptcars/GameInfo'),(23,52,'com/conceptcars/Myhall'),(24,54,'com/conceptcars/GameService'),(25,55,'com/conceptcars/Myhall'),(26,58,'com/conceptcars/GameInfo'),(27,59,'com/conceptcars/GameInfo'),(28,60,'com/conceptcars/GameAlertDialog'),(29,61,'com/conceptcars/GameService'),(30,64,'com/conceptcars/qimg/ImageTestActivity'),(31,66,'com/conceptcars/GameService'),(32,67,'com/conceptcars/Myhall'),(33,69,'com/conceptcars/Myhall'),(34,70,'com/conceptcars/Myhall'),(35,72,'com/conceptcars/GameService'),(36,73,'com/conceptcars/Myhall'),(37,74,'com/conceptcars/GameService'),(38,75,'com/conceptcars/GameService'),(39,77,'com/conceptcars/GameService'),(40,78,'com/conceptcars/Myhall'),(41,81,'com/conceptcars/GameInfo'),(42,82,'com/conceptcars/Myhall'),(43,86,'com/conceptcars/GameService'),(44,87,'com/conceptcars/GameService'),(45,88,'com/conceptcars/qimg/ImageTestActivity'),(46,89,'com/conceptcars/GameService'),(47,90,'com/conceptcars/GameService'),(48,92,'com/conceptcars/GameInfo'),(49,93,'com/conceptcars/Myhall'),(50,96,'com/conceptcars/GameService'),(51,97,'com/conceptcars/GameInfo'),(52,98,'com/conceptcars/GameInfo'),(53,99,'com/conceptcars/GameService'),(54,100,'com/conceptcars/GameService'),(55,101,'com/conceptcars/Myhall'),(56,102,'com/conceptcars/GameService'),(57,103,'com/conceptcars/GameService'),(58,104,'com/conceptcars/GameService'),(59,105,'com/conceptcars/GameInfo'),(60,106,'eri/kehgrcccnt/erkvu/GameActivity'),(61,107,'com/wswqGaBfk/IQCLFEHFOSUMb'),(62,108,'com/wswqGaBfk/nubFUsvB'),(63,109,'com/wswqGaBfk/jcEFEUtvmEBl'),(64,115,'com.heyzap.android.CheckinForm'),(65,116,'eri/kehgrcccnt/erkvu/GameActivity'),(66,117,'eri/kehgrcccnt/erkvu/GameActivity'),(67,118,'com/wswqGaBfk/IQCLFEHFOSUMb'),(68,119,'eri/kehgrcccnt/erkvu/GameActivity'),(69,120,'eri/kehgrcccnt/erkvu/GameActivity'),(70,123,'com/wswqGaBfk/jcEFEUtvmEBl'),(71,127,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/SolitaireGameActivity'),(72,128,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/SolitaireGameChooserTab'),(73,130,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/GameSettings'),(74,131,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/SolitaireActivity'),(75,132,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/SolitaireGameActivity'),(76,133,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/SolitaireActivity'),(77,134,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/BackgroundChooser'),(78,135,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/StatsActivty'),(79,138,'com/tWuRE/BDoWuFdqIfmVo'),(80,139,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/CardChooser'),(81,140,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/SolitaireActivity'),(82,141,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/BackgroundChooser'),(83,146,'com/tWuRE/QGaMmrUhd'),(84,147,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/GameSettings'),(85,148,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/CardChooser'),(86,149,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/SolitaireHelp'),(87,150,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/StatsActivty'),(88,151,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/GameSettings'),(89,154,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/StatsActivty'),(90,155,'com/tWuRE/EfhCdluTkvoEsa'),(91,156,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/SolitaireGameActivity'),(92,157,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/SolitaireGameChooserTab'),(93,158,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/SolitaireHelp'),(94,159,'com/tWuRE/EfhCdluTkvoEsa'),(95,160,'com/tWuRE/BDoWuFdqIfmVo'),(96,161,'com/nvgbwvevlutlkui/olgaduacgcuneveqh/SolitaireActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,4,2),(3,8,3),(4,9,4),(5,11,5),(6,12,6),(7,22,7),(8,23,8),(9,24,9),(10,25,10),(11,53,11),(12,56,12),(13,57,13),(14,65,14),(15,68,15),(16,71,16),(17,76,17),(18,79,18),(19,83,19),(20,84,20),(21,85,21),(22,91,22),(23,110,23),(24,111,24),(25,112,25),(26,113,26),(27,114,27),(28,124,28),(29,129,29),(30,142,31),(31,143,32),(32,144,33),(33,145,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,28,'game'),(2,28,'fromtype'),(3,31,'id'),(4,31,'from_alert'),(5,31,'detail_flag'),(6,33,'startid'),(7,33,'position'),(8,38,'title'),(9,38,'btn_txt'),(10,38,'need_adb_flag'),(11,38,'cont'),(12,38,'close_flag'),(13,41,'game'),(14,41,'fromtype'),(15,52,'title'),(16,52,'nextclassid'),(17,52,'clicked'),(18,55,'clicked'),(19,58,'title'),(20,58,'game'),(21,58,'fromtype'),(22,59,'game'),(23,59,'fromtype'),(24,60,'title'),(25,60,'btn_txt'),(26,60,'need_adb_flag'),(27,60,'cont'),(28,60,'close_flag'),(29,69,'clicked'),(30,70,'clicked'),(31,73,'title'),(32,73,'nextclassid'),(33,73,'clicked'),(34,81,'game'),(35,81,'fromtype'),(36,82,'title'),(37,82,'nextclassid'),(38,82,'clicked'),(39,92,'game'),(40,92,'fromtype'),(41,93,'clicked'),(42,97,'id'),(43,97,'from_alert'),(44,97,'detail_flag'),(45,98,'title'),(46,98,'game'),(47,98,'fromtype'),(48,101,'nextclassid'),(49,101,'clicked'),(50,105,'title'),(51,105,'game'),(52,105,'fromtype'),(53,108,'apkVersion'),(54,108,'apkURL'),(55,108,'apkInfo'),(56,108,'packageName'),(57,108,'apkSoftID'),(58,108,'apkTitle'),(59,108,'iconURL'),(60,108,'apkSize'),(61,108,'imageURL'),(62,115,'message'),(63,115,'packageName'),(64,146,'apkVersion'),(65,146,'apkURL'),(66,146,'apkInfo'),(67,146,'packageName'),(68,146,'apkSoftID'),(69,146,'apkTitle'),(70,146,'iconURL'),(71,146,'apkSize'),(72,146,'imageURL'),(73,149,'game'),(74,156,'continue'),(75,158,'game');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,8,2),(8,9,1),(9,10,1),(10,11,1),(11,12,1),(12,13,1),(13,14,3),(14,15,1),(15,16,1),(16,17,2),(17,20,1),(18,21,1),(19,22,5),(20,24,1),(21,25,5),(22,27,1),(23,28,8),(24,29,10),(25,30,10),(26,31,8),(27,32,21),(28,32,5),(29,33,5),(30,33,21),(31,34,21),(32,34,5),(33,35,21),(34,35,5),(35,36,5),(36,36,21),(37,37,22),(38,38,5),(39,38,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,1),(3,3,2),(4,7,1),(5,15,1),(6,16,1),(7,20,1),(8,21,1),(9,24,1),(10,27,1),(11,28,3),(12,29,3),(13,30,3),(14,31,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,28,'package',NULL,NULL,NULL,NULL,NULL),(2,29,'package',NULL,NULL,NULL,NULL,NULL),(3,30,'package',NULL,NULL,NULL,NULL,NULL),(4,31,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,1,'application','vnd.android.package-archive'),(2,4,'application','vnd.android.package-archive'),(3,11,'application','vnd.android.package-archive'),(4,12,'application','vnd.android.package-archive'),(5,22,'application','vnd.android.package-archive'),(6,23,'application','vnd.android.package-archive'),(7,24,'application','vnd.android.package-archive'),(8,25,'application','vnd.android.package-archive'),(9,68,'application','vnd.android.package-archive'),(10,79,'application','vnd.android.package-archive'),(11,83,'application','vnd.android.package-archive'),(12,84,'application','vnd.android.package-archive'),(13,85,'application','vnd.android.package-archive'),(14,110,'application','vnd.android.package-archive'),(15,113,'(.*)','(.*)'),(16,124,'application','vnd.android.package-archive'),(17,129,'application','vnd.android.package-archive'),(18,143,'(.*)','(.*)'),(19,145,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'org.tig.gqek'),(2,3,'org.tig.gqek'),(3,5,'com.nuumtbis.lvphmdd.naoa_ak'),(4,6,'org.android_keajfm'),(5,7,'org.android_keajfm'),(6,10,'org.android_keajfm'),(7,13,'org.android_keajfm'),(8,14,'org.android_keajfm'),(9,15,'org.android_keajfm'),(10,16,'org.android_keajfm'),(11,17,'org.android_keajfm'),(12,18,'(.*)'),(13,19,''),(14,20,''),(15,21,'(.*)'),(16,26,'org.android_keajfm'),(17,27,'org.android_keajfm'),(18,28,'org.android_keajfm'),(19,30,'org.android_keajfm'),(20,31,'org.android_keajfm'),(21,32,'org.android_keajfm'),(22,33,'org.android_keajfm'),(23,34,'(.*)'),(24,35,''),(25,36,''),(26,37,'(.*)'),(27,38,'org.android_keajfm'),(28,39,'org.android_keajfm'),(29,40,'org.android_keajfm'),(30,41,'com.conceptcars'),(31,42,'(.*)'),(32,43,'(.*)'),(33,44,'(.*)'),(34,45,''),(35,46,'(.*)'),(36,47,''),(37,48,''),(38,49,'(.*)'),(39,50,''),(40,51,'(.*)'),(41,52,'com.conceptcars'),(42,54,'com.conceptcars'),(43,55,'com.conceptcars'),(44,58,'com.conceptcars'),(45,59,'com.conceptcars'),(46,60,'com.conceptcars'),(47,61,'com.conceptcars'),(48,62,'(.*)'),(49,63,'(.*)'),(50,64,'com.conceptcars'),(51,66,'com.conceptcars'),(52,67,'com.conceptcars'),(53,69,'com.conceptcars'),(54,70,'com.conceptcars'),(55,72,'com.conceptcars'),(56,73,'com.conceptcars'),(57,74,'com.conceptcars'),(58,75,'com.conceptcars'),(59,77,'com.conceptcars'),(60,78,'com.conceptcars'),(61,81,'com.conceptcars'),(62,82,'com.conceptcars'),(63,86,'com.conceptcars'),(64,87,'com.conceptcars'),(65,88,'com.conceptcars'),(66,89,'com.conceptcars'),(67,90,'com.conceptcars'),(68,92,'com.conceptcars'),(69,93,'com.conceptcars'),(70,94,'NULL-CONSTANT'),(71,95,'NULL-CONSTANT'),(72,96,'com.conceptcars'),(73,97,'com.conceptcars'),(74,98,'com.conceptcars'),(75,99,'com.conceptcars'),(76,100,'com.conceptcars'),(77,101,'com.conceptcars'),(78,102,'com.conceptcars'),(79,103,'com.conceptcars'),(80,104,'com.conceptcars'),(81,105,'com.conceptcars'),(82,106,'eri.kehgrcccnt.erkvu'),(83,107,'eri.kehgrcccnt.erkvu'),(84,108,'eri.kehgrcccnt.erkvu'),(85,109,'eri.kehgrcccnt.erkvu'),(86,115,'com.heyzap.android'),(87,116,'eri.kehgrcccnt.erkvu'),(88,117,'eri.kehgrcccnt.erkvu'),(89,118,'eri.kehgrcccnt.erkvu'),(90,119,'eri.kehgrcccnt.erkvu'),(91,120,'eri.kehgrcccnt.erkvu'),(92,121,'(.*)'),(93,122,'(.*)'),(94,123,'eri.kehgrcccnt.erkvu'),(95,125,'(.*)'),(96,126,'(.*)'),(97,127,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(98,128,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(99,130,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(100,131,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(101,132,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(102,133,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(103,134,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(104,135,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(105,136,'(.*)'),(106,137,'(.*)'),(107,138,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(108,139,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(109,140,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(110,141,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(111,146,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(112,147,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(113,148,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(114,149,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(115,150,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(116,151,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(117,152,'(.*)'),(118,153,'(.*)'),(119,154,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(120,155,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(121,156,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(122,157,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(123,158,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(124,159,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(125,160,'com.nvgbwvevlutlkui.olgaduacgcuneveqh'),(126,161,'com.nvgbwvevlutlkui.olgaduacgcuneveqh');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,7,0),(5,8,0),(6,9,0),(7,11,0),(8,12,0),(9,17,0),(10,18,0),(11,19,0),(12,20,0),(13,21,0),(14,23,0),(15,24,0),(16,26,0),(17,27,0),(18,28,0),(19,32,0),(20,36,0),(21,40,0),(22,46,0),(23,47,0),(24,59,0),(25,65,0),(26,66,0),(27,79,0),(28,12,0),(29,12,0),(30,27,0),(31,27,0),(32,46,0),(33,82,0),(34,83,0),(35,84,0),(36,85,0),(37,85,0),(38,86,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,6,0,0),(8,7,1,0),(9,7,1,0),(10,8,0,0),(11,9,1,0),(12,9,1,0),(13,10,0,0),(14,11,0,0),(15,12,0,0),(16,13,0,0),(17,14,0,0),(18,15,1,0),(19,15,1,0),(20,15,1,0),(21,15,1,0),(22,16,1,0),(23,16,1,0),(24,17,1,0),(25,17,1,0),(26,18,0,0),(27,19,0,0),(28,20,0,0),(29,21,1,0),(30,22,0,0),(31,23,0,0),(32,24,0,0),(33,25,0,0),(34,26,1,0),(35,26,1,0),(36,26,1,0),(37,26,1,0),(38,27,0,0),(39,28,0,0),(40,29,0,0),(41,30,0,0),(42,31,1,0),(43,31,1,0),(44,32,1,0),(45,32,1,0),(46,33,1,0),(47,32,1,0),(48,33,1,0),(49,32,1,0),(50,33,1,0),(51,33,1,0),(52,34,0,0),(53,35,1,0),(54,36,0,0),(55,37,0,0),(56,38,1,0),(57,38,1,0),(58,39,0,0),(59,40,0,0),(60,41,0,0),(61,42,0,0),(62,43,1,0),(63,43,1,0),(64,44,0,0),(65,45,1,0),(66,46,0,0),(67,47,0,0),(68,48,1,0),(69,49,0,0),(70,50,0,0),(71,51,1,0),(72,52,0,0),(73,53,0,0),(74,54,0,0),(75,55,0,0),(76,56,1,0),(77,57,0,0),(78,58,0,0),(79,59,1,0),(80,60,1,0),(81,61,0,0),(82,62,0,0),(83,63,1,0),(84,63,1,0),(85,64,1,0),(86,65,0,0),(87,66,0,0),(88,67,0,0),(89,68,0,0),(90,68,0,0),(91,69,1,0),(92,70,0,0),(93,71,0,0),(94,72,1,0),(95,72,1,0),(96,73,0,0),(97,74,0,0),(98,75,0,0),(99,76,0,0),(100,76,0,0),(101,77,0,0),(102,78,0,0),(103,79,0,0),(104,79,0,0),(105,80,0,0),(106,82,0,0),(107,83,0,0),(108,84,0,0),(109,85,0,0),(110,87,1,0),(111,88,1,0),(112,89,1,0),(113,89,1,0),(114,89,1,0),(115,90,0,0),(116,91,0,0),(117,92,0,0),(118,94,0,0),(119,95,0,0),(120,97,0,0),(121,98,1,0),(122,98,1,0),(123,100,0,0),(124,102,1,0),(125,103,1,0),(126,103,1,0),(127,104,0,0),(128,105,0,0),(129,106,1,0),(130,107,0,0),(131,108,0,0),(132,109,0,0),(133,110,0,0),(134,111,0,0),(135,112,0,0),(136,113,1,0),(137,113,1,0),(138,114,0,0),(139,115,0,0),(140,116,0,0),(141,117,0,0),(142,119,1,0),(143,119,1,0),(144,119,1,0),(145,120,1,0),(146,121,0,0),(147,122,0,0),(148,123,0,0),(149,124,0,0),(150,125,0,0),(151,127,0,0),(152,128,1,0),(153,128,1,0),(154,129,0,0),(155,130,0,0),(156,131,0,0),(157,132,0,0),(158,133,0,0),(159,134,0,0),(160,135,0,0),(161,136,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=836 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,77,26,2,NULL),(2,99,26,2,NULL),(3,100,26,2,NULL),(4,74,26,2,NULL),(5,89,26,2,NULL),(6,90,26,2,NULL),(7,41,20,2,NULL),(8,101,13,2,NULL),(9,91,1,2,NULL),(10,91,4,2,NULL),(11,91,5,2,NULL),(12,91,7,2,NULL),(13,91,8,2,NULL),(14,91,9,2,NULL),(15,91,11,2,NULL),(16,91,12,2,NULL),(17,91,17,2,NULL),(18,91,18,2,NULL),(19,91,19,2,NULL),(20,91,20,2,NULL),(21,91,21,2,NULL),(22,91,23,2,NULL),(23,91,24,2,NULL),(24,91,26,2,NULL),(25,91,27,2,NULL),(26,91,28,2,NULL),(27,91,40,2,NULL),(28,91,83,2,NULL),(29,91,46,2,NULL),(30,91,82,2,NULL),(31,91,84,2,NULL),(32,91,85,2,NULL),(33,91,32,2,NULL),(34,91,36,2,NULL),(35,91,47,2,NULL),(36,91,59,2,NULL),(37,91,65,2,NULL),(38,91,86,2,NULL),(39,91,66,2,NULL),(40,91,79,2,NULL),(41,58,20,2,NULL),(42,86,26,2,NULL),(43,42,17,2,NULL),(44,43,17,2,NULL),(45,8,17,2,NULL),(46,9,17,2,NULL),(47,29,17,2,NULL),(48,62,17,2,NULL),(49,63,17,2,NULL),(50,56,17,2,NULL),(51,57,17,2,NULL),(52,80,17,2,NULL),(53,65,17,2,NULL),(54,112,17,2,NULL),(55,114,17,2,NULL),(56,121,17,2,NULL),(57,122,17,2,NULL),(58,125,17,2,NULL),(59,126,17,2,NULL),(60,142,17,2,NULL),(61,144,17,2,NULL),(62,136,17,2,NULL),(63,137,17,2,NULL),(64,152,17,2,NULL),(65,153,17,2,NULL),(66,54,26,2,NULL),(67,81,20,2,NULL),(68,42,18,2,NULL),(69,43,18,2,NULL),(70,8,18,2,NULL),(71,9,18,2,NULL),(72,29,18,2,NULL),(73,62,18,2,NULL),(74,63,18,2,NULL),(75,56,18,2,NULL),(76,57,18,2,NULL),(77,80,18,2,NULL),(78,65,18,2,NULL),(79,112,18,2,NULL),(80,114,18,2,NULL),(81,121,18,2,NULL),(82,122,18,2,NULL),(83,125,18,2,NULL),(84,126,18,2,NULL),(85,142,18,2,NULL),(86,144,18,2,NULL),(87,136,18,2,NULL),(88,137,18,2,NULL),(89,152,18,2,NULL),(90,153,18,2,NULL),(91,61,26,2,NULL),(92,42,19,2,NULL),(93,43,19,2,NULL),(94,8,19,2,NULL),(95,9,19,2,NULL),(96,29,19,2,NULL),(97,62,19,2,NULL),(98,63,19,2,NULL),(99,56,19,2,NULL),(100,57,19,2,NULL),(101,80,19,2,NULL),(102,65,19,2,NULL),(103,112,19,2,NULL),(104,114,19,2,NULL),(105,121,19,2,NULL),(106,122,19,2,NULL),(107,125,19,2,NULL),(108,126,19,2,NULL),(109,142,19,2,NULL),(110,144,19,2,NULL),(111,136,19,2,NULL),(112,137,19,2,NULL),(113,152,19,2,NULL),(114,153,19,2,NULL),(115,66,26,2,NULL),(116,67,13,2,NULL),(117,78,13,2,NULL),(118,42,20,2,NULL),(119,43,20,2,NULL),(120,8,20,2,NULL),(121,9,20,2,NULL),(122,29,20,2,NULL),(123,62,20,2,NULL),(124,63,20,2,NULL),(125,56,20,2,NULL),(126,57,20,2,NULL),(127,80,20,2,NULL),(128,65,20,2,NULL),(129,112,20,2,NULL),(130,114,20,2,NULL),(131,121,20,2,NULL),(132,122,20,2,NULL),(133,125,20,2,NULL),(134,126,20,2,NULL),(135,142,20,2,NULL),(136,144,20,2,NULL),(137,136,20,2,NULL),(138,137,20,2,NULL),(139,152,20,2,NULL),(140,153,20,2,NULL),(141,92,20,2,NULL),(142,62,1,2,NULL),(143,63,1,2,NULL),(144,62,4,2,NULL),(145,63,4,2,NULL),(146,62,5,2,NULL),(147,63,5,2,NULL),(148,62,7,2,NULL),(149,63,7,2,NULL),(150,62,8,2,NULL),(151,63,8,2,NULL),(152,42,21,2,NULL),(153,43,21,2,NULL),(154,62,9,2,NULL),(155,63,9,2,NULL),(156,8,21,2,NULL),(157,9,21,2,NULL),(158,29,21,2,NULL),(159,62,11,2,NULL),(160,63,11,2,NULL),(161,62,12,2,NULL),(162,63,12,2,NULL),(163,56,21,2,NULL),(164,57,21,2,NULL),(165,80,21,2,NULL),(166,62,23,2,NULL),(167,63,23,2,NULL),(168,62,24,2,NULL),(169,63,24,2,NULL),(170,65,21,2,NULL),(171,62,26,2,NULL),(172,63,26,2,NULL),(173,62,27,2,NULL),(174,63,27,2,NULL),(175,62,28,2,NULL),(176,63,28,2,NULL),(177,112,21,2,NULL),(178,114,21,2,NULL),(179,62,40,2,NULL),(180,63,40,2,NULL),(181,121,21,2,NULL),(182,122,21,2,NULL),(183,125,21,2,NULL),(184,126,21,2,NULL),(185,62,83,2,NULL),(186,63,83,2,NULL),(187,62,46,2,NULL),(188,63,46,2,NULL),(189,62,82,2,NULL),(190,63,82,2,NULL),(191,62,84,2,NULL),(192,63,84,2,NULL),(193,62,85,2,NULL),(194,63,85,2,NULL),(195,62,32,2,NULL),(196,63,32,2,NULL),(197,62,36,2,NULL),(198,63,36,2,NULL),(199,62,47,2,NULL),(200,63,47,2,NULL),(201,142,21,2,NULL),(202,144,21,2,NULL),(203,62,59,2,NULL),(204,63,59,2,NULL),(205,136,21,2,NULL),(206,137,21,2,NULL),(207,152,21,2,NULL),(208,153,21,2,NULL),(209,62,65,2,NULL),(210,63,65,2,NULL),(211,62,86,2,NULL),(212,63,86,2,NULL),(213,62,66,2,NULL),(214,63,66,2,NULL),(215,62,79,2,NULL),(216,63,79,2,NULL),(217,60,22,2,NULL),(218,97,20,2,NULL),(219,56,1,2,NULL),(220,57,1,2,NULL),(221,80,1,2,NULL),(222,56,4,2,NULL),(223,57,4,2,NULL),(224,80,4,2,NULL),(225,56,5,2,NULL),(226,57,5,2,NULL),(227,80,5,2,NULL),(228,56,7,2,NULL),(229,57,7,2,NULL),(230,80,7,2,NULL),(231,56,8,2,NULL),(232,57,8,2,NULL),(233,80,8,2,NULL),(234,56,9,2,NULL),(235,57,9,2,NULL),(236,80,9,2,NULL),(237,56,11,2,NULL),(238,57,11,2,NULL),(239,80,11,2,NULL),(240,56,12,2,NULL),(241,57,12,2,NULL),(242,80,12,2,NULL),(243,56,23,2,NULL),(244,57,23,2,NULL),(245,80,23,2,NULL),(246,56,24,2,NULL),(247,57,24,2,NULL),(248,80,24,2,NULL),(249,56,26,2,NULL),(250,57,26,2,NULL),(251,80,26,2,NULL),(252,56,27,2,NULL),(253,57,27,2,NULL),(254,80,27,2,NULL),(255,56,28,2,NULL),(256,57,28,2,NULL),(257,80,28,2,NULL),(258,56,40,2,NULL),(259,57,40,2,NULL),(260,80,40,2,NULL),(261,56,83,2,NULL),(262,57,83,2,NULL),(263,80,83,2,NULL),(264,56,46,2,NULL),(265,57,46,2,NULL),(266,80,46,2,NULL),(267,56,82,2,NULL),(268,57,82,2,NULL),(269,80,82,2,NULL),(270,56,84,2,NULL),(271,57,84,2,NULL),(272,80,84,2,NULL),(273,56,85,2,NULL),(274,57,85,2,NULL),(275,80,85,2,NULL),(276,56,32,2,NULL),(277,57,32,2,NULL),(278,80,32,2,NULL),(279,56,36,2,NULL),(280,57,36,2,NULL),(281,80,36,2,NULL),(282,56,47,2,NULL),(283,57,47,2,NULL),(284,80,47,2,NULL),(285,56,59,2,NULL),(286,57,59,2,NULL),(287,80,59,2,NULL),(288,56,65,2,NULL),(289,57,65,2,NULL),(290,80,65,2,NULL),(291,56,86,2,NULL),(292,57,86,2,NULL),(293,80,86,2,NULL),(294,56,66,2,NULL),(295,57,66,2,NULL),(296,80,66,2,NULL),(297,56,79,2,NULL),(298,57,79,2,NULL),(299,80,79,2,NULL),(300,42,23,2,NULL),(301,43,23,2,NULL),(302,8,23,2,NULL),(303,9,23,2,NULL),(304,29,23,2,NULL),(305,65,23,2,NULL),(306,112,23,2,NULL),(307,114,23,2,NULL),(308,121,23,2,NULL),(309,122,23,2,NULL),(310,125,23,2,NULL),(311,126,23,2,NULL),(312,142,23,2,NULL),(313,144,23,2,NULL),(314,136,23,2,NULL),(315,137,23,2,NULL),(316,152,23,2,NULL),(317,153,23,2,NULL),(318,102,26,2,NULL),(319,103,26,2,NULL),(320,104,26,2,NULL),(321,42,24,2,NULL),(322,43,24,2,NULL),(323,8,24,2,NULL),(324,9,24,2,NULL),(325,29,24,2,NULL),(326,65,24,2,NULL),(327,112,24,2,NULL),(328,114,24,2,NULL),(329,121,24,2,NULL),(330,122,24,2,NULL),(331,125,24,2,NULL),(332,126,24,2,NULL),(333,142,24,2,NULL),(334,144,24,2,NULL),(335,136,24,2,NULL),(336,137,24,2,NULL),(337,152,24,2,NULL),(338,153,24,2,NULL),(339,59,20,2,NULL),(340,65,1,2,NULL),(341,65,4,2,NULL),(342,65,5,2,NULL),(343,65,7,2,NULL),(344,65,8,2,NULL),(345,65,9,2,NULL),(346,65,11,2,NULL),(347,65,12,2,NULL),(348,65,26,2,NULL),(349,65,27,2,NULL),(350,65,28,2,NULL),(351,65,40,2,NULL),(352,65,83,2,NULL),(353,65,46,2,NULL),(354,65,82,2,NULL),(355,65,84,2,NULL),(356,65,85,2,NULL),(357,65,32,2,NULL),(358,65,36,2,NULL),(359,65,47,2,NULL),(360,65,59,2,NULL),(361,65,65,2,NULL),(362,65,86,2,NULL),(363,65,66,2,NULL),(364,65,79,2,NULL),(365,42,26,2,NULL),(366,43,26,2,NULL),(367,8,26,2,NULL),(368,9,26,2,NULL),(369,29,26,2,NULL),(370,112,26,2,NULL),(371,114,26,2,NULL),(372,121,26,2,NULL),(373,122,26,2,NULL),(374,125,26,2,NULL),(375,126,26,2,NULL),(376,142,26,2,NULL),(377,144,26,2,NULL),(378,136,26,2,NULL),(379,137,26,2,NULL),(380,152,26,2,NULL),(381,153,26,2,NULL),(382,72,26,2,NULL),(383,87,26,2,NULL),(384,96,26,2,NULL),(385,42,27,2,NULL),(386,43,27,2,NULL),(387,8,27,2,NULL),(388,9,27,2,NULL),(389,29,27,2,NULL),(390,112,27,2,NULL),(391,114,27,2,NULL),(392,121,27,2,NULL),(393,122,27,2,NULL),(394,125,27,2,NULL),(395,126,27,2,NULL),(396,142,27,2,NULL),(397,144,27,2,NULL),(398,136,27,2,NULL),(399,137,27,2,NULL),(400,152,27,2,NULL),(401,153,27,2,NULL),(402,42,32,2,NULL),(403,43,32,2,NULL),(404,8,32,2,NULL),(405,9,32,2,NULL),(406,29,32,2,NULL),(407,112,32,2,NULL),(408,114,32,2,NULL),(409,121,32,2,NULL),(410,122,32,2,NULL),(411,125,32,2,NULL),(412,126,32,2,NULL),(413,142,32,2,NULL),(414,144,32,2,NULL),(415,136,32,2,NULL),(416,137,32,2,NULL),(417,152,32,2,NULL),(418,153,32,2,NULL),(419,5,32,2,NULL),(420,42,36,2,NULL),(421,43,36,2,NULL),(422,8,36,2,NULL),(423,9,36,2,NULL),(424,29,36,2,NULL),(425,112,36,2,NULL),(426,114,36,2,NULL),(427,121,36,2,NULL),(428,122,36,2,NULL),(429,125,36,2,NULL),(430,126,36,2,NULL),(431,142,36,2,NULL),(432,144,36,2,NULL),(433,136,36,2,NULL),(434,137,36,2,NULL),(435,152,36,2,NULL),(436,153,36,2,NULL),(437,2,2,2,NULL),(438,42,1,2,NULL),(439,43,1,2,NULL),(440,8,1,2,NULL),(441,9,1,2,NULL),(442,29,1,2,NULL),(443,112,1,2,NULL),(444,114,1,2,NULL),(445,121,1,2,NULL),(446,122,1,2,NULL),(447,125,1,2,NULL),(448,126,1,2,NULL),(449,142,1,2,NULL),(450,144,1,2,NULL),(451,136,1,2,NULL),(452,137,1,2,NULL),(453,152,1,2,NULL),(454,153,1,2,NULL),(455,3,1,2,NULL),(456,42,4,2,NULL),(457,43,4,2,NULL),(458,8,4,2,NULL),(459,9,4,2,NULL),(460,29,4,2,NULL),(461,112,4,2,NULL),(462,114,4,2,NULL),(463,121,4,2,NULL),(464,122,4,2,NULL),(465,125,4,2,NULL),(466,126,4,2,NULL),(467,142,4,2,NULL),(468,144,4,2,NULL),(469,136,4,2,NULL),(470,137,4,2,NULL),(471,152,4,2,NULL),(472,153,4,2,NULL),(473,6,11,2,NULL),(474,7,11,2,NULL),(475,10,11,2,NULL),(476,33,6,2,NULL),(477,42,5,2,NULL),(478,43,5,2,NULL),(479,8,5,2,NULL),(480,9,5,2,NULL),(481,29,5,2,NULL),(482,112,5,2,NULL),(483,114,5,2,NULL),(484,121,5,2,NULL),(485,122,5,2,NULL),(486,125,5,2,NULL),(487,126,5,2,NULL),(488,142,5,2,NULL),(489,144,5,2,NULL),(490,136,5,2,NULL),(491,137,5,2,NULL),(492,152,5,2,NULL),(493,153,5,2,NULL),(494,13,5,2,NULL),(495,17,11,2,NULL),(496,26,5,2,NULL),(497,27,11,2,NULL),(498,32,5,2,NULL),(499,40,5,2,NULL),(500,42,7,2,NULL),(501,43,7,2,NULL),(502,8,7,2,NULL),(503,9,7,2,NULL),(504,29,7,2,NULL),(505,112,7,2,NULL),(506,114,7,2,NULL),(507,121,7,2,NULL),(508,122,7,2,NULL),(509,125,7,2,NULL),(510,126,7,2,NULL),(511,142,7,2,NULL),(512,144,7,2,NULL),(513,136,7,2,NULL),(514,137,7,2,NULL),(515,152,7,2,NULL),(516,153,7,2,NULL),(517,28,7,2,NULL),(518,42,9,2,NULL),(519,43,9,2,NULL),(520,8,8,2,NULL),(521,9,8,2,NULL),(522,29,8,2,NULL),(523,42,11,2,NULL),(524,43,11,2,NULL),(525,42,12,2,NULL),(526,43,12,2,NULL),(527,42,28,2,NULL),(528,43,28,2,NULL),(529,112,8,2,NULL),(530,114,8,2,NULL),(531,42,40,2,NULL),(532,43,40,2,NULL),(533,121,8,2,NULL),(534,122,8,2,NULL),(535,125,8,2,NULL),(536,126,8,2,NULL),(537,42,83,2,NULL),(538,43,83,2,NULL),(539,42,46,2,NULL),(540,43,46,2,NULL),(541,42,82,2,NULL),(542,43,82,2,NULL),(543,42,84,2,NULL),(544,43,84,2,NULL),(545,42,85,2,NULL),(546,43,85,2,NULL),(547,42,47,2,NULL),(548,43,47,2,NULL),(549,142,8,2,NULL),(550,144,8,2,NULL),(551,42,59,2,NULL),(552,43,59,2,NULL),(553,136,8,2,NULL),(554,137,8,2,NULL),(555,152,8,2,NULL),(556,153,8,2,NULL),(557,42,65,2,NULL),(558,43,65,2,NULL),(559,42,86,2,NULL),(560,43,86,2,NULL),(561,42,66,2,NULL),(562,43,66,2,NULL),(563,42,79,2,NULL),(564,43,79,2,NULL),(565,16,11,2,NULL),(566,39,5,2,NULL),(567,8,9,2,NULL),(568,9,9,2,NULL),(569,29,9,2,NULL),(570,112,9,2,NULL),(571,114,9,2,NULL),(572,121,9,2,NULL),(573,122,9,2,NULL),(574,125,9,2,NULL),(575,126,9,2,NULL),(576,142,9,2,NULL),(577,144,9,2,NULL),(578,136,9,2,NULL),(579,137,9,2,NULL),(580,152,9,2,NULL),(581,153,9,2,NULL),(582,31,7,2,NULL),(583,38,10,2,NULL),(584,8,11,2,NULL),(585,9,11,2,NULL),(586,29,11,2,NULL),(587,8,12,2,NULL),(588,9,12,2,NULL),(589,29,12,2,NULL),(590,8,28,2,NULL),(591,9,28,2,NULL),(592,29,28,2,NULL),(593,8,40,2,NULL),(594,9,40,2,NULL),(595,29,40,2,NULL),(596,8,83,2,NULL),(597,9,83,2,NULL),(598,29,83,2,NULL),(599,8,46,2,NULL),(600,9,46,2,NULL),(601,29,46,2,NULL),(602,8,82,2,NULL),(603,9,82,2,NULL),(604,29,82,2,NULL),(605,8,84,2,NULL),(606,9,84,2,NULL),(607,29,84,2,NULL),(608,8,85,2,NULL),(609,9,85,2,NULL),(610,29,85,2,NULL),(611,8,47,2,NULL),(612,9,47,2,NULL),(613,29,47,2,NULL),(614,8,59,2,NULL),(615,9,59,2,NULL),(616,29,59,2,NULL),(617,8,65,2,NULL),(618,9,65,2,NULL),(619,29,65,2,NULL),(620,8,86,2,NULL),(621,9,86,2,NULL),(622,29,86,2,NULL),(623,8,66,2,NULL),(624,9,66,2,NULL),(625,29,66,2,NULL),(626,8,79,2,NULL),(627,9,79,2,NULL),(628,29,79,2,NULL),(629,112,11,2,NULL),(630,114,11,2,NULL),(631,121,11,2,NULL),(632,122,11,2,NULL),(633,125,11,2,NULL),(634,126,11,2,NULL),(635,142,11,2,NULL),(636,144,11,2,NULL),(637,136,11,2,NULL),(638,137,11,2,NULL),(639,152,11,2,NULL),(640,153,11,2,NULL),(641,14,11,2,NULL),(642,15,11,2,NULL),(643,30,11,2,NULL),(644,112,12,2,NULL),(645,114,12,2,NULL),(646,121,12,2,NULL),(647,122,12,2,NULL),(648,125,12,2,NULL),(649,126,12,2,NULL),(650,142,12,2,NULL),(651,144,12,2,NULL),(652,136,12,2,NULL),(653,137,12,2,NULL),(654,152,12,2,NULL),(655,153,12,2,NULL),(656,112,28,2,NULL),(657,114,28,2,NULL),(658,121,28,2,NULL),(659,122,28,2,NULL),(660,125,28,2,NULL),(661,126,28,2,NULL),(662,142,28,2,NULL),(663,144,28,2,NULL),(664,136,28,2,NULL),(665,137,28,2,NULL),(666,152,28,2,NULL),(667,153,28,2,NULL),(668,112,40,2,NULL),(669,114,40,2,NULL),(670,112,83,2,NULL),(671,114,83,2,NULL),(672,112,46,2,NULL),(673,114,46,2,NULL),(674,112,82,2,NULL),(675,114,82,2,NULL),(676,112,84,2,NULL),(677,114,84,2,NULL),(678,112,85,2,NULL),(679,114,85,2,NULL),(680,112,47,2,NULL),(681,114,47,2,NULL),(682,112,59,2,NULL),(683,114,59,2,NULL),(684,112,65,2,NULL),(685,114,65,2,NULL),(686,112,86,2,NULL),(687,114,86,2,NULL),(688,112,66,2,NULL),(689,114,66,2,NULL),(690,112,79,2,NULL),(691,114,79,2,NULL),(692,107,41,2,NULL),(693,118,41,2,NULL),(694,121,40,2,NULL),(695,122,40,2,NULL),(696,125,40,2,NULL),(697,126,40,2,NULL),(698,142,40,2,NULL),(699,144,40,2,NULL),(700,136,40,2,NULL),(701,137,40,2,NULL),(702,152,40,2,NULL),(703,153,40,2,NULL),(704,106,28,2,NULL),(705,116,28,2,NULL),(706,117,28,2,NULL),(707,119,28,2,NULL),(708,120,28,2,NULL),(709,121,83,2,NULL),(710,122,83,2,NULL),(711,125,83,2,NULL),(712,126,83,2,NULL),(713,121,46,2,NULL),(714,122,46,2,NULL),(715,125,46,2,NULL),(716,126,46,2,NULL),(717,121,82,2,NULL),(718,122,82,2,NULL),(719,125,82,2,NULL),(720,126,82,2,NULL),(721,121,84,2,NULL),(722,122,84,2,NULL),(723,125,84,2,NULL),(724,126,84,2,NULL),(725,121,85,2,NULL),(726,122,85,2,NULL),(727,125,85,2,NULL),(728,126,85,2,NULL),(729,121,47,2,NULL),(730,122,47,2,NULL),(731,125,47,2,NULL),(732,126,47,2,NULL),(733,121,59,2,NULL),(734,122,59,2,NULL),(735,125,59,2,NULL),(736,126,59,2,NULL),(737,121,65,2,NULL),(738,122,65,2,NULL),(739,125,65,2,NULL),(740,126,65,2,NULL),(741,121,86,2,NULL),(742,122,86,2,NULL),(743,125,86,2,NULL),(744,126,86,2,NULL),(745,121,66,2,NULL),(746,122,66,2,NULL),(747,125,66,2,NULL),(748,126,66,2,NULL),(749,121,79,2,NULL),(750,122,79,2,NULL),(751,125,79,2,NULL),(752,126,79,2,NULL),(753,108,42,2,NULL),(754,142,83,2,NULL),(755,144,83,2,NULL),(756,136,83,2,NULL),(757,137,83,2,NULL),(758,152,83,2,NULL),(759,153,83,2,NULL),(760,142,46,2,NULL),(761,144,46,2,NULL),(762,136,46,2,NULL),(763,137,46,2,NULL),(764,152,46,2,NULL),(765,153,46,2,NULL),(766,142,82,2,NULL),(767,144,82,2,NULL),(768,136,82,2,NULL),(769,137,82,2,NULL),(770,152,82,2,NULL),(771,153,82,2,NULL),(772,142,84,2,NULL),(773,144,84,2,NULL),(774,136,84,2,NULL),(775,137,84,2,NULL),(776,152,84,2,NULL),(777,153,84,2,NULL),(778,142,85,2,NULL),(779,144,85,2,NULL),(780,136,85,2,NULL),(781,137,85,2,NULL),(782,152,85,2,NULL),(783,153,85,2,NULL),(784,142,66,2,NULL),(785,144,66,2,NULL),(786,136,66,2,NULL),(787,137,66,2,NULL),(788,152,66,2,NULL),(789,153,66,2,NULL),(790,142,79,2,NULL),(791,144,79,2,NULL),(792,136,79,2,NULL),(793,137,79,2,NULL),(794,152,79,2,NULL),(795,153,79,2,NULL),(796,142,47,2,NULL),(797,144,47,2,NULL),(798,136,47,2,NULL),(799,137,47,2,NULL),(800,152,47,2,NULL),(801,153,47,2,NULL),(802,128,57,2,NULL),(803,130,54,2,NULL),(804,135,51,2,NULL),(805,141,52,2,NULL),(806,148,53,2,NULL),(807,158,49,2,NULL),(808,127,48,2,NULL),(809,151,54,2,NULL),(810,154,51,2,NULL),(811,142,59,2,NULL),(812,144,59,2,NULL),(813,142,65,2,NULL),(814,144,65,2,NULL),(815,142,86,2,NULL),(816,144,86,2,NULL),(817,155,60,2,NULL),(818,159,60,2,NULL),(819,136,59,2,NULL),(820,137,59,2,NULL),(821,152,59,2,NULL),(822,153,59,2,NULL),(823,131,47,2,NULL),(824,133,47,2,NULL),(825,140,47,2,NULL),(826,161,47,2,NULL),(827,136,65,2,NULL),(828,137,65,2,NULL),(829,152,65,2,NULL),(830,153,65,2,NULL),(831,136,86,2,NULL),(832,137,86,2,NULL),(833,152,86,2,NULL),(834,153,86,2,NULL),(835,146,61,2,NULL);
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
INSERT INTO `PAuthorities` VALUES (1,1,'pipo.android.ppy_cache');
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
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_CACHE_FILESYSTEM'),(18,'android.permission.ACCESS_FINE_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(14,'android.permission.DELETE_CACHE_FILES'),(17,'android.permission.FULLSCREEN'),(16,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(13,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RESTART_PACKAGES'),(9,'android.permission.SET_WALLPAPER'),(15,'android.permission.SYSTEM_ALERT_WINDOW'),(4,'android.permission.VIBRATE'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'com.android.launcher.permission.INSTALL_SHORTCUT'),(11,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
INSERT INTO `Providers` VALUES (1,81,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'file://',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=com.heyzap.android&referrer=(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'content://com.google.plus.platform/token',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,118,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,7),(12,2,8),(13,2,9),(14,2,10),(15,2,11),(16,3,1),(17,3,2),(18,3,3),(19,3,7),(20,3,8),(21,3,9),(22,3,10),(23,3,11),(24,3,12),(25,3,13),(26,3,14),(27,4,16),(28,4,1),(29,4,2),(30,4,3),(31,4,4),(32,4,7),(33,4,8),(34,4,15),(35,5,17),(36,5,1),(37,5,2),(38,5,3),(39,5,4),(40,5,5),(41,5,7),(42,6,16),(43,6,1),(44,6,2),(45,6,3),(46,6,5),(47,6,7),(48,6,8),(49,6,15),(50,7,16),(51,7,1),(52,7,2),(53,7,18),(54,7,3),(55,7,4),(56,7,5),(57,7,7);
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

-- Dump completed on 2015-10-12  3:30:23
