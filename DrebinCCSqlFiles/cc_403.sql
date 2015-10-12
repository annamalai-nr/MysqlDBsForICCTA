-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_403
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
INSERT INTO `ActionStrings` VALUES (22,'.ImageTestActivity'),(17,'.Myhall'),(10,'.PintuActivity'),(16,'.Plsqj7'),(19,'.Web'),(2,'android.intent.action.BOOT_COMPLETED'),(13,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.PACKAGE_ADDED'),(8,'android.intent.action.PACKAGE_REMOVED'),(27,'android.intent.action.SCREEN_OFF'),(6,'android.intent.action.USER_PRESENT'),(9,'android.intent.action.VIEW'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(4,'com.android.vending.INSTALL_REFERRER'),(23,'com.android_ossnyfk.ImageTestActivity'),(20,'com.android_ossnyfk.Plsqj1'),(15,'com.android_ossnyfk.Plsqj7'),(25,'com.android_ossnyfk.Web'),(14,'com.m_tszmndbp.GameBootReceiver'),(24,'com.m_tszmndbp.ImageTestActivity'),(18,'com.m_tszmndbp.Myhall'),(21,'com.m_tszmndbp.Web'),(7,'com.pintu_zxwyppk.GameBootReceiver'),(11,'com.pintu_zxwyppk.PintuActivity'),(5,'com.simpleg.ragingthunder.action.timeup'),(28,'fvf.vaseuq.UTfelpdQf12'),(26,'org.kaqrmwj.osaeraeofpcl.BootReceiver');
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
INSERT INTO `Applications` VALUES (1,'com.pintu_zxwyppk',20007),(2,'com.m_tszmndbp',10019),(3,'com.irjauelk.nrcsupidlodvl',10023),(4,'com.oufnle.bpgrisipdkqshve',10021),(5,'com.android_ossnyfk',10022),(6,'org.kaqrmwj.osaeraeofpcl',10024),(7,'fvf.vaseuq',27);
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
INSERT INTO `CategoryStrings` VALUES (6,'android.intent.category.BROWSABLE'),(1,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(5,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.pintu_zxwyppk.PintuActivity'),(2,1,'com.pintu_zxwyppk.GameInfo'),(3,1,'com.pintu_zxwyppk.TableClass'),(4,1,'com.pintu_zxwyppk.GameAlertDialog'),(5,1,'com.pintu_zxwyppk.GameService'),(6,1,'com.pintu_zxwyppk.GameBootReceiver'),(7,2,'com.m_tszmndbp.Myhall'),(8,2,'com.m_tszmndbp.Web'),(9,2,'com.m_tszmndbp.HomeActivity'),(10,2,'com.m_tszmndbp.SortActivity1'),(11,2,'com.m_tszmndbp.SortActivity2'),(12,2,'com.m_tszmndbp.SearchActivity'),(13,2,'com.m_tszmndbp.ManagerActivity'),(14,3,'com.polarbit.ragingthunder.ragingthunder'),(15,4,'com.oufnle.bpgrisipdkqshve.baby'),(16,2,'com.m_tszmndbp.GameInfo'),(17,3,'com.injectxj.InjectActivity'),(18,4,'com.oufnle.bpgrisipdkqshve.App'),(19,3,'com.googleApk.OffersWebView'),(20,4,'com.oufnle.bpgrisipdkqshve.help'),(21,2,'com.m_tszmndbp.TableClass'),(22,4,'com.oufnle.bpgrisipdkqshve.options'),(23,3,'com.simpleg.Home'),(24,4,'com.oufnle.bpgrisipdkqshve.Moreapps'),(25,3,'com.simpleg.timeUp'),(26,2,'com.m_tszmndbp.GameAlertDialog'),(27,4,'com.admob.android.ads.AdMobActivity'),(28,3,'com.waxx.OffersWebView'),(29,2,'com.m_tszmndbp.DevelopmentSettings'),(30,3,'com.CQSsBKiMw.pVplbvLoM'),(31,4,'com.RATFHQ.AkfUcwshMQDdQ'),(32,5,'com.android_ossnyfk.Plsqj7'),(33,3,'com.CQSsBKiMw.vUpmInLcTApNQ'),(34,4,'com.RATFHQ.vEphGedQWhKRkQ'),(35,5,'com.android_ossnyfk.Web'),(36,2,'com.m_tszmndbp.image.ImageTestActivity'),(37,5,'com.android_ossnyfk.Plsqj13'),(38,3,'com.simpleg.BootBroadcastReceiver'),(39,4,'com.admob.android.ads.analytics.InstallReceiver'),(40,5,'com.android_ossnyfk.Plsqj3'),(41,2,'com.m_tszmndbp.image.ADactivity'),(42,5,'com.android_ossnyfk.Plsqj9'),(43,2,'com.m_tszmndbp.GameService'),(44,5,'com.android_ossnyfk.Plsqj10'),(45,3,'com.simpleg.TimeBroadcastReceiver'),(46,2,'com.m_tszmndbp.GameBootReceiver'),(47,5,'com.android_ossnyfk.Plsqj11'),(48,5,'com.android_ossnyfk.Plsqj4'),(49,5,'com.android_ossnyfk.Plsqj8'),(50,5,'com.android_ossnyfk.Plsqj5'),(51,5,'com.android_ossnyfk.Plsqj12'),(52,5,'com.android_ossnyfk.DevelopmentSettings'),(53,5,'com.android_ossnyfk.image.ImageTestActivity'),(54,5,'com.android_ossnyfk.image.ADactivity'),(55,5,'com.android_ossnyfk.Plsqj2'),(56,5,'com.android_ossnyfk.Plsqj1'),(57,6,'com.batterypoweredgames.lightracer3dbasic.LightRacerMainMenuActivity'),(58,6,'com.batterypoweredgames.lightracer3dbasic.LightRacerGameActivity'),(59,6,'com.batterypoweredgames.lightracer3dbasic.LightRacerHowToPlayActivity'),(60,6,'com.batterypoweredgames.lightracer3dbasic.PlaySoloActivity'),(61,6,'com.batterypoweredgames.lightracer3dbasic.JoinGameActivity'),(62,6,'com.batterypoweredgames.lightracer3dbasic.HostGameActivity'),(63,6,'com.batterypoweredgames.lightracer3dbasic.EndGameActivity'),(64,6,'com.batterypoweredgames.lightracer3dbasic.MultiplayerClientActivity'),(65,6,'com.batterypoweredgames.lightracer3dbasic.MultiplayerResultsActivity'),(66,6,'com.batterypoweredgames.lightracer3dbasic.LightRacerPreferencesActivity'),(67,6,'com.batterypoweredgames.lightracer3dbasic.LeaderboardsActivity'),(68,6,'com.batterypoweredgames.lightracer3dbasic.LeaderboardActivity'),(69,6,'com.batterypoweredgames.lightracer3dbasic.AchievementsActivity'),(70,6,'com.batterypoweredgames.lightracer3dbasic.LeaderboardScoreListActivity'),(71,6,'com.batterypoweredgames.lightracer3dbasic.SubmitScoreActivity'),(72,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(73,6,'com.JpNkVtKj.PGlvKJiwGWPK'),(74,6,'com.JpNkVtKj.NRorLrbWGUsQQpo'),(75,6,'com.JpNkVtKj.MyAppInfo'),(76,6,'com.JpNkVtKj.WalmUAkfNjmTKdg'),(77,6,'com.JpNkVtKj.AKUjSKLQKFdNN'),(78,6,'com.JpNkVtKj.MyAppAlertDialog'),(79,6,'com.JpNkVtKj.kiNrwKavdGufS'),(80,6,'org.kaqrmwj.osaeraeofpcl.multiplayer.MultiplayerService'),(81,6,'com.JpNkVtKj.MyAppService'),(82,6,'com.JpNkVtKj.BootReceiverService'),(83,1,'d'),(84,1,'p'),(85,1,'l'),(86,1,'q'),(87,7,'fvf.vaseuq.main'),(88,7,'fvf.vaseuq.BoardActivity'),(89,4,'com.oufnle.bpgrisipdkqshve.Moreapps$10'),(90,7,'fvf.vaseuq.WeiboView'),(91,7,'fvf.vaseuq.DiagActivity'),(92,4,'com.oufnle.bpgrisipdkqshve.baby$10'),(93,7,'fvf.vaseuq.SgfTabView'),(94,7,'fvf.vaseuq.EntryView'),(95,7,'fvf.vaseuq.DeskListActivity'),(96,7,'fvf.vaseuq.GoActivity'),(97,7,'fvf.vaseuq.SgfActivity'),(98,7,'fvf.vaseuq.OptionsView'),(99,2,'ah'),(100,4,'com.oufnle.bpgrisipdkqshve.Moreapps$13'),(101,7,'fvf.vaseuq.OneThread'),(102,7,'cn.domob.android.ads.DomobActivity'),(103,7,'noc.RtGUQRV.MyActivity'),(104,7,'noc.RtGUQRV.ApopMain'),(105,7,'noc.RtGUQRV.UTfelpdQf16'),(106,7,'noc.RtGUQRV.UTfelpdQf8'),(107,4,'com.oufnle.bpgrisipdkqshve.baby$clicker14'),(108,7,'noc.RtGUQRV.UTfelpdQf9'),(109,4,'com.oufnle.bpgrisipdkqshve.baby$clicker_fbconnect'),(110,7,'noc.RtGUQRV.UTfelpdQf2'),(111,7,'noc.RtGUQRV.UTfelpdQf10'),(112,7,'fvf.vaseuq.MyService'),(113,5,'s'),(114,7,'noc.RtGUQRV.UTfelpdQf11'),(115,4,'com.oufnle.bpgrisipdkqshve.Moreapps$5'),(116,7,'noc.RtGUQRV.UTfelpdQf12'),(117,2,'ch'),(118,3,'com.googleApk.o'),(119,4,'com.oufnle.bpgrisipdkqshve.baby$4'),(120,5,'ca'),(121,3,'com.waxx.aa'),(122,3,'com.googleApk.AppConnect'),(123,4,'com.oufnle.bpgrisipdkqshve.baby$clicker_more'),(124,2,'dy'),(125,4,'com.oufnle.bpgrisipdkqshve.Moreapps$3'),(126,3,'com.googleApk.x'),(127,4,'com.oufnle.bpgrisipdkqshve.baby$clicker_opt'),(128,5,'cu'),(129,4,'com.oufnle.bpgrisipdkqshve.Moreapps$11'),(130,4,'com.oufnle.bpgrisipdkqshve.Moreapps$2'),(131,5,'bd'),(132,2,'ap'),(133,4,'com.oufnle.bpgrisipdkqshve.Moreapps$1'),(134,3,'com.googleApk.aa'),(135,2,'aa'),(136,2,'ak'),(137,3,'com.waxx.y'),(138,4,'com.oufnle.bpgrisipdkqshve.Moreapps$8'),(139,4,'com.oufnle.bpgrisipdkqshve.Moreapps$9'),(140,4,'com.oufnle.bpgrisipdkqshve.Moreapps$7'),(141,5,'cs'),(142,4,'com.oufnle.bpgrisipdkqshve.Moreapps$4'),(143,3,'com.googleApk.q'),(144,4,'com.oufnle.bpgrisipdkqshve.Moreapps$12'),(145,3,'com.waxx.q'),(146,4,'com.oufnle.bpgrisipdkqshve.Moreapps$6'),(147,3,'com.waxx.o'),(148,4,'com.oufnle.bpgrisipdkqshve.baby$6'),(149,5,'dj'),(150,3,'com.googleApk.y'),(151,4,'com.oufnle.bpgrisipdkqshve.help$1'),(152,2,'by'),(153,3,'com.waxx.x'),(154,5,'db'),(155,5,'ch'),(156,2,'ea'),(157,5,'bv'),(158,2,'e'),(159,2,'dm'),(160,5,'dh'),(161,2,'cc'),(162,6,'com.JpNkVtKj.bp'),(163,6,'com.JpNkVtKj.z'),(164,6,'com.JpNkVtKj.ai'),(165,6,'com.JpNkVtKj.be'),(166,6,'com.JpNkVtKj.y'),(167,6,'com.JpNkVtKj.ac'),(168,6,'com.JpNkVtKj.bf'),(169,6,'com.JpNkVtKj.af'),(170,6,'com.batterypoweredgames.lightracer3dbasic.LiteUtil$2'),(171,6,'com.batterypoweredgames.lightracer3dbasic.HostGameActivity$1'),(172,7,'cn.domob.android.ads.o$5'),(173,7,'cn.domob.android.a.a$a'),(174,7,'cn.domob.android.ads.o'),(175,7,'noc.RtGUQRV.br'),(176,7,'noc.RtGUQRV.ag'),(177,7,'noc.RtGUQRV.bo'),(178,7,'noc.RtGUQRV.ClickableToast'),(179,7,'noc.RtGUQRV.af'),(180,7,'noc.RtGUQRV.am'),(181,7,'cn.domob.android.ads.e'),(182,7,'noc.RtGUQRV.al'),(183,7,'fvf.vaseuq.GoActivity$16'),(184,7,'cn.domob.android.ads.g$1'),(185,7,'noc.RtGUQRV.ae'),(186,7,'cn.domob.android.ads.DomobAdManager');
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
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'url'),(2,2,'from_table'),(3,4,'btn_txt'),(4,4,'package_name'),(5,4,'version_code'),(6,2,'game'),(7,1,'service_channel'),(8,2,'title'),(9,2,'filepath'),(10,2,'status'),(11,2,'fromtype'),(12,4,'title'),(13,2,'from_alert'),(14,4,'apk_url'),(15,4,'content'),(16,28,'o'),(17,5,'service_channel'),(18,28,'mi'),(19,28,'cs'),(20,28,'si'),(21,16,'title'),(22,28,'a'),(23,16,'game'),(24,28,'sin'),(25,13,'app_name'),(26,28,'ad'),(27,28,'t'),(28,28,'u'),(29,28,'sc'),(30,27,'USER_ID'),(31,14,'DEVICE_ID'),(32,24,'DEVICE_ID'),(33,19,'DEVICE_ID'),(34,19,'URL'),(35,28,'msm'),(36,28,'su'),(37,38,'ADMOB_PUBLISHER_ID'),(38,38,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(39,28,'tr'),(40,13,'icon'),(41,28,'nosk'),(42,13,'completed'),(43,13,'total'),(44,14,'MYPIdentity'),(45,24,'MYPIdentity'),(46,19,'MYPIdentity'),(47,19,'Offers_URL'),(48,27,'Notify_Url_Params'),(49,28,'ru'),(50,13,'filepath'),(51,28,'rd'),(52,38,'(.*)'),(53,27,'ACTIVITY_FLAG'),(54,19,'Notify_Id'),(55,27,'SHWO_FLAG'),(56,28,'json'),(57,49,'title'),(58,14,'APP_ID'),(59,27,'APP_ID'),(60,28,'sku'),(61,19,'UrlPath'),(62,27,'DEVICE_ID'),(63,28,'$'),(64,28,'oi'),(65,38,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(66,27,'UrlPath'),(67,19,'URL_PARAMS'),(68,48,'url'),(69,36,'service_channel'),(70,13,'status'),(71,26,'title'),(72,28,'au'),(73,13,'package_name'),(74,19,'CLIENT_PACKAGE'),(75,24,'APP_ID'),(76,28,'c'),(77,19,'APP_ID'),(78,48,'total'),(79,26,'version_code'),(80,11,'package_name'),(81,28,'skd'),(82,28,'cbo'),(83,28,'int'),(84,28,'ap'),(85,38,'referrer'),(86,27,'URL'),(87,14,'WAXX_ID'),(88,27,'WAXX_ID'),(89,14,'channelnumber'),(90,48,'status'),(91,37,'isDirectFromTable'),(92,51,'version_code'),(93,53,'service_channel'),(94,48,'soft_id'),(95,44,'status'),(96,49,'status'),(97,28,'b'),(98,32,'nextclassid'),(99,14,'MYIdentity'),(100,24,'MYIdentity'),(101,19,'MYIdentity'),(102,19,'Notify_Url_Params'),(103,27,'offers_webview_tag'),(104,28,'s'),(105,16,'filepath'),(106,28,'sd'),(107,11,'nextclassid'),(108,28,'or'),(109,13,'soft_id'),(110,49,'game'),(111,51,'content'),(112,28,'p'),(113,16,'fromtype'),(114,27,'Offers_URL'),(115,19,'SHWO_FLAG'),(116,14,'CLIENT_PACKAGE'),(117,27,'CLIENT_PACKAGE'),(118,48,'icon'),(119,51,'fromtable'),(120,19,'isFinshClose'),(121,16,'from_table'),(122,11,'status'),(123,48,'app_name'),(124,49,'from_alert'),(125,19,'USER_ID'),(126,24,'CLIENT_PACKAGE'),(127,49,'fromtype'),(128,48,'completed'),(129,55,'service_channel'),(130,48,'filepath'),(131,27,'Notify_Id'),(132,19,'ACTIVITY_FLAG'),(133,19,'offers_webview_tag'),(134,14,'WAXX_PID'),(135,27,'WAXX_PID'),(136,27,'URL_PARAMS'),(137,27,'isFinshClose'),(138,12,'package_name'),(139,48,'package_name'),(140,43,'service_channel'),(141,47,'package_name'),(142,33,'service_channel'),(143,44,'nextclassid'),(144,12,'status'),(145,51,'package_name'),(146,51,'btn_txt'),(147,26,'url'),(148,32,'service_channel'),(149,51,'url'),(150,13,'url'),(151,7,'service_channel'),(152,7,'nextclassid'),(153,49,'from_table'),(154,51,'title'),(155,44,'package_name'),(156,26,'content'),(157,26,'apk_url'),(158,12,'version_code'),(159,8,'service_channel'),(160,49,'filepath'),(161,16,'from_alert'),(162,26,'btn_txt'),(163,47,'status'),(164,26,'package_name'),(165,16,'status'),(166,51,'apk_url'),(167,37,'from'),(168,47,'version_code'),(169,79,'apkurl'),(170,72,'shouldEnableBottomBar'),(171,72,'transitionTime'),(172,78,'version_code'),(173,75,'title'),(174,78,'fromtable'),(175,58,'Mode'),(176,75,'game'),(177,78,'btn_txt'),(178,78,'title'),(179,65,'P1Name'),(180,78,'content'),(181,70,'SoloScores'),(182,75,'from_table'),(183,75,'status'),(184,77,'isDirectFromTable'),(185,65,'P3Name'),(186,72,'overlayTitle'),(187,65,'Achievements'),(188,79,'title'),(189,81,'NEW_APP_ID'),(190,73,'NEW_APP_ID'),(191,78,'url'),(192,75,'from_alert'),(193,74,'popurl'),(194,75,'fromtype'),(195,72,'shouldMakeOverlayTransparent'),(196,58,'InfLives'),(197,74,'NEW_APP_ID'),(198,72,'url'),(199,79,'packagename'),(200,65,'Tie'),(201,70,'SpeedTrialScores'),(202,72,'overlayTransition'),(203,72,'shouldShowTitlebar'),(204,78,'package_name'),(205,72,'shouldShowBottomBar'),(206,63,'ScoreSubmitted'),(207,78,'apk_url'),(208,73,'version_code'),(209,77,'package_name'),(210,58,'Difficulty'),(211,79,'content'),(212,75,'package_name'),(213,74,'poptitle'),(214,73,'soft_id'),(215,65,'P2Name'),(216,72,'shouldResizeOverlay'),(217,77,'from'),(218,75,'filepath'),(219,94,'appName'),(220,98,'fromtype'),(221,100,'isDirectFromTable'),(222,98,'game'),(223,98,'from_table'),(224,101,'fromtable'),(225,101,'url'),(226,101,'version_code'),(227,89,'DOMOB_ALLOW_LOCATION'),(228,91,'DOMOB_ALLOW_LOCATION'),(229,90,'DOMOB_ALLOW_LOCATION'),(230,95,'DOMOB_ALLOW_LOCATION'),(231,84,'DOMOB_ALLOW_LOCATION'),(232,103,'DOMOB_ALLOW_LOCATION'),(233,100,'DOMOB_ALLOW_LOCATION'),(234,88,'DOMOB_ALLOW_LOCATION'),(235,101,'DOMOB_ALLOW_LOCATION'),(236,99,'DOMOB_ALLOW_LOCATION'),(237,98,'DOMOB_ALLOW_LOCATION'),(238,98,'title'),(239,97,'poptitle'),(240,95,'service_channel'),(241,97,'service_channel'),(242,94,'appId'),(243,100,'from'),(244,101,'package_name'),(245,101,'apk_url'),(246,101,'content'),(247,98,'status'),(248,101,'title'),(249,98,'from_alert'),(250,97,'popurl'),(251,89,'DOMOB_PID'),(252,91,'DOMOB_PID'),(253,90,'DOMOB_PID'),(254,95,'DOMOB_PID'),(255,84,'DOMOB_PID'),(256,103,'DOMOB_PID'),(257,100,'DOMOB_PID'),(258,88,'DOMOB_PID'),(259,101,'DOMOB_PID'),(260,99,'DOMOB_PID'),(261,98,'DOMOB_PID'),(262,89,'DOMOB_TEST_MODE'),(263,91,'DOMOB_TEST_MODE'),(264,90,'DOMOB_TEST_MODE'),(265,95,'DOMOB_TEST_MODE'),(266,84,'DOMOB_TEST_MODE'),(267,103,'DOMOB_TEST_MODE'),(268,100,'DOMOB_TEST_MODE'),(269,88,'DOMOB_TEST_MODE'),(270,101,'DOMOB_TEST_MODE'),(271,99,'DOMOB_TEST_MODE'),(272,98,'DOMOB_TEST_MODE'),(273,95,'version_code'),(274,95,'soft_id'),(275,98,'filepath'),(276,94,'actType'),(277,103,'service_channel'),(278,101,'btn_txt');
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',1,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,23,'a',0,NULL,NULL),(23,22,'a',0,NULL,NULL),(24,25,'a',0,NULL,NULL),(25,24,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,28,'a',0,NULL,NULL),(28,27,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,30,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,35,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,33,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,39,'r',1,NULL,NULL),(39,38,'r',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'s',1,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',1,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',1,NULL,NULL),(76,76,'a',1,NULL,NULL),(77,77,'a',1,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'s',1,NULL,NULL),(82,82,'r',1,NULL,NULL),(83,87,'a',1,NULL,NULL),(84,88,'a',0,NULL,NULL),(85,90,'a',1,NULL,NULL),(86,91,'a',0,NULL,NULL),(87,93,'a',0,NULL,NULL),(88,94,'a',0,NULL,NULL),(89,95,'a',0,NULL,NULL),(90,96,'a',0,NULL,NULL),(91,97,'a',0,NULL,NULL),(92,98,'a',0,NULL,NULL),(93,101,'a',0,NULL,NULL),(94,102,'a',0,NULL,NULL),(95,103,'a',1,NULL,NULL),(96,104,'a',0,NULL,NULL),(97,105,'a',0,NULL,NULL),(98,106,'a',1,NULL,NULL),(99,108,'a',1,NULL,NULL),(100,110,'a',1,NULL,NULL),(101,111,'a',0,NULL,NULL),(102,112,'s',0,NULL,NULL),(103,114,'s',1,NULL,NULL),(104,116,'r',1,NULL,NULL),(105,143,'r',1,NULL,NULL),(106,145,'r',1,NULL,NULL),(107,164,'r',1,NULL,NULL),(108,169,'r',1,NULL,NULL),(109,175,'r',1,NULL,NULL),(110,177,'r',1,NULL,NULL),(111,181,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,6),(3,3,2),(4,4,4),(5,5,2),(6,6,4),(7,6,3),(8,7,2),(9,8,3),(10,8,4),(11,9,2),(12,10,4),(13,11,2),(14,12,2),(15,13,2),(16,14,2),(17,15,3),(18,16,2),(19,17,3),(20,18,1),(21,19,4),(22,20,1),(23,21,2),(24,22,4),(25,23,18),(26,24,25),(27,25,2),(28,26,15),(29,27,30),(30,28,6),(31,29,16),(32,30,9),(33,31,25),(34,32,2),(35,33,12),(36,34,15),(37,35,9),(38,36,15),(39,37,9),(40,38,27),(41,39,49),(42,40,25),(43,41,13),(44,42,19),(45,43,15),(46,44,7),(47,45,54),(48,46,27),(49,47,46),(50,48,15),(51,49,32),(52,50,24),(53,51,15),(54,52,7),(55,53,25),(56,54,7),(57,55,49),(58,56,45),(59,57,30),(60,58,8),(61,59,19),(62,60,56),(63,61,15),(64,62,23),(65,63,19),(66,64,32),(67,65,25),(68,66,13),(69,67,51),(70,67,50),(71,67,37),(72,68,16),(73,69,39),(74,70,25),(75,71,40),(76,72,26),(77,72,21),(78,73,25),(79,74,19),(80,75,53),(81,77,27),(82,76,11),(83,78,25),(84,79,16),(85,80,27),(86,81,25),(87,82,50),(88,83,20),(89,84,25),(90,85,48),(91,86,12),(92,87,19),(93,88,25),(94,89,32),(95,90,31),(96,91,21),(97,92,25),(98,93,54),(99,94,25),(100,95,9),(101,96,40),(102,97,25),(103,99,7),(104,98,27),(105,100,32),(106,101,15),(107,102,11),(108,103,44),(109,104,19),(110,105,20),(111,106,36),(112,107,51),(113,108,13),(114,109,27),(115,110,49),(116,111,7),(117,112,33),(118,113,31),(119,114,9),(120,115,27),(121,116,56),(122,117,26),(123,118,32),(124,120,19),(125,119,11),(126,121,48),(127,122,21),(128,123,47),(129,124,7),(130,125,56),(131,126,40),(132,127,36),(133,128,50),(134,129,26),(135,130,51),(136,131,46),(137,132,33),(138,133,41),(139,134,44),(140,135,26),(141,136,32),(142,137,16),(143,138,40),(144,139,7),(145,140,49),(146,141,9),(147,142,53),(148,143,8),(149,144,48),(150,145,26),(151,146,47),(152,147,51),(153,148,26),(154,148,21),(155,149,40),(156,150,11),(157,151,54),(158,152,11),(159,153,33),(160,154,41),(161,155,44),(162,156,11),(163,157,44),(164,158,36),(165,159,40),(166,160,41),(167,161,16),(168,162,32),(169,163,49),(170,164,46),(171,165,44),(172,166,8),(173,167,53),(174,168,44),(175,169,51),(176,170,50),(177,170,51),(178,170,37),(179,171,73),(180,172,75),(181,173,68),(182,174,78),(183,175,60),(184,176,78),(185,177,75),(186,178,73),(187,179,77),(188,179,76),(189,179,78),(190,180,61),(191,181,76),(192,182,57),(193,183,57),(194,184,76),(195,185,75),(196,186,67),(197,187,61),(198,188,75),(199,189,61),(200,190,82),(201,191,73),(202,192,73),(203,193,58),(204,194,75),(205,195,62),(206,196,75),(207,197,58),(208,198,65),(209,199,69),(210,200,75),(211,201,65),(212,202,62),(213,203,64),(214,204,64),(215,205,62),(216,206,74),(217,207,57),(218,208,73),(219,209,79),(220,210,82),(221,211,79),(222,212,75),(223,213,82),(224,214,76),(225,214,78),(226,214,77),(227,215,60),(228,216,60),(229,216,57),(230,217,63),(231,218,58),(232,219,62),(233,220,75),(234,221,85),(235,222,84),(236,222,103),(237,222,100),(238,222,99),(239,222,98),(240,222,95),(241,222,90),(242,222,89),(243,223,104),(244,224,95),(245,225,92),(246,226,98),(247,227,101),(248,228,88),(249,228,101),(250,228,90),(251,228,99),(252,228,89),(253,228,100),(254,228,84),(255,228,103),(256,228,95),(257,228,98),(258,228,91),(259,229,100),(260,229,101),(261,229,84),(262,229,103),(263,229,91),(264,229,90),(265,229,89),(266,229,88),(267,229,95),(268,229,99),(269,229,98),(270,230,90),(271,231,101),(272,232,98),(273,233,95),(274,234,101),(275,234,100),(276,234,99),(277,235,90),(278,236,98),(279,237,101),(280,238,95),(281,239,104),(282,240,95),(283,241,98),(284,242,98),(285,243,98),(286,244,84),(287,245,90),(288,246,100),(289,246,99),(290,246,98),(291,246,84),(292,246,95),(293,246,91),(294,246,90),(295,246,89),(296,246,103),(297,246,88),(298,246,101),(299,247,98),(300,248,99),(301,249,92),(302,250,89),(303,251,87),(304,252,95),(305,253,97),(306,254,92),(307,255,98),(308,255,99),(309,255,100),(310,255,88),(311,255,89),(312,255,101),(313,255,90),(314,255,91),(315,255,95),(316,255,103),(317,255,84),(318,256,99),(319,257,101),(320,258,104),(321,259,98);
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
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<com.pintu_zxwyppk.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(2,6,'<com.pintu_zxwyppk.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(3,2,'<com.pintu_zxwyppk.GameInfo: void onCreate(android.os.Bundle)>',172,'a',NULL),(4,4,'<com.pintu_zxwyppk.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(5,2,'<com.pintu_zxwyppk.GameInfo: void onCreate(android.os.Bundle)>',76,'a',NULL),(6,83,'<d: void a(int,boolean)>',57,'a',NULL),(7,2,'<com.pintu_zxwyppk.GameInfo: void onCreate(android.os.Bundle)>',177,'a',NULL),(8,83,'<d: void a(int,boolean)>',10,'s',NULL),(9,84,'<p: void onClick(android.view.View)>',242,'a',NULL),(10,4,'<com.pintu_zxwyppk.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(11,2,'<com.pintu_zxwyppk.GameInfo: void onCreate(android.os.Bundle)>',81,'a',NULL),(12,85,'<l: void onClick(android.view.View)>',239,'a',NULL),(13,86,'<q: void onClick(android.view.View)>',239,'a',NULL),(14,86,'<q: void onClick(android.view.View)>',218,'a',NULL),(15,3,'<com.pintu_zxwyppk.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(16,84,'<p: void onClick(android.view.View)>',221,'a',NULL),(17,3,'<com.pintu_zxwyppk.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(18,1,'<com.pintu_zxwyppk.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(19,4,'<com.pintu_zxwyppk.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(20,1,'<com.pintu_zxwyppk.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(21,2,'<com.pintu_zxwyppk.GameInfo: void onCreate(android.os.Bundle)>',33,'s',NULL),(22,4,'<com.pintu_zxwyppk.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(23,18,'<com.oufnle.bpgrisipdkqshve.App: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(24,89,'<com.oufnle.bpgrisipdkqshve.Moreapps$10: void onClick(android.view.View)>',13,'a',NULL),(25,85,'<l: void onClick(android.view.View)>',218,'a',NULL),(26,92,'<com.oufnle.bpgrisipdkqshve.baby$10: void onClick(android.content.DialogInterface,int)>',34,'p',NULL),(27,31,'<com.RATFHQ.AkfUcwshMQDdQ: void a(java.lang.String)>',10,'a',NULL),(28,6,'<com.pintu_zxwyppk.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(29,16,'<com.m_tszmndbp.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(30,99,'<ah: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(31,100,'<com.oufnle.bpgrisipdkqshve.Moreapps$13: void onClick(android.view.View)>',13,'a',NULL),(32,2,'<com.pintu_zxwyppk.GameInfo: void onCreate(android.os.Bundle)>',90,'s',NULL),(33,12,'<com.m_tszmndbp.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(34,107,'<com.oufnle.bpgrisipdkqshve.baby$clicker14: void onClick(android.view.View)>',30,'a',NULL),(35,9,'<com.m_tszmndbp.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(36,109,'<com.oufnle.bpgrisipdkqshve.baby$clicker_fbconnect: void onClick(android.view.View)>',30,'a',NULL),(37,99,'<ah: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(38,28,'<com.waxx.OffersWebView: void onCreate(android.os.Bundle)>',350,'a',NULL),(39,113,'<s: void onClick(android.view.View)>',239,'a',NULL),(40,115,'<com.oufnle.bpgrisipdkqshve.Moreapps$5: void onClick(android.view.View)>',13,'a',NULL),(41,117,'<ch: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(42,118,'<com.googleApk.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(43,119,'<com.oufnle.bpgrisipdkqshve.baby$4: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(44,7,'<com.m_tszmndbp.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(45,120,'<ca: void onClick(android.view.View)>',6,'a',NULL),(46,121,'<com.waxx.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(47,46,'<com.m_tszmndbp.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(48,92,'<com.oufnle.bpgrisipdkqshve.baby$10: void onClick(android.content.DialogInterface,int)>',31,'p',NULL),(49,32,'<com.android_ossnyfk.Plsqj7: void onCreate(android.os.Bundle)>',98,'s',NULL),(50,122,'<com.googleApk.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(51,123,'<com.oufnle.bpgrisipdkqshve.baby$clicker_more: void onClick(android.view.View)>',48,'a',NULL),(52,124,'<dy: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(53,125,'<com.oufnle.bpgrisipdkqshve.Moreapps$3: void onClick(android.view.View)>',13,'a',NULL),(54,7,'<com.m_tszmndbp.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(55,113,'<s: void onClick(android.view.View)>',218,'a',NULL),(56,45,'<com.simpleg.TimeBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'a',NULL),(57,31,'<com.RATFHQ.AkfUcwshMQDdQ: void a()>',3,'a',NULL),(58,8,'<com.m_tszmndbp.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(59,126,'<com.googleApk.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(60,56,'<com.android_ossnyfk.Plsqj1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(61,127,'<com.oufnle.bpgrisipdkqshve.baby$clicker_opt: void onClick(android.view.View)>',48,'a',NULL),(62,22,'<com.oufnle.bpgrisipdkqshve.options: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(63,19,'<com.googleApk.OffersWebView: void onCreate(android.os.Bundle)>',350,'a',NULL),(64,128,'<cu: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(65,129,'<com.oufnle.bpgrisipdkqshve.Moreapps$11: void onClick(android.view.View)>',14,'a',NULL),(66,13,'<com.m_tszmndbp.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(67,37,'<com.android_ossnyfk.Plsqj13: void a(int,boolean)>',63,'a',NULL),(68,16,'<com.m_tszmndbp.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(69,38,'<com.simpleg.BootBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'a',NULL),(70,130,'<com.oufnle.bpgrisipdkqshve.Moreapps$2: void onClick(android.view.View)>',13,'a',NULL),(71,131,'<bd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(72,132,'<ap: void a(int,boolean)>',57,'a',NULL),(73,133,'<com.oufnle.bpgrisipdkqshve.Moreapps$1: void onClick(android.view.View)>',13,'a',NULL),(74,134,'<com.googleApk.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(75,53,'<com.android_ossnyfk.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(76,135,'<aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(77,28,'<com.waxx.OffersWebView: void onCreate(android.os.Bundle)>',375,'a',NULL),(78,24,'<com.oufnle.bpgrisipdkqshve.Moreapps: boolean onKeyDown(int,android.view.KeyEvent)>',7,'a',NULL),(79,136,'<ak: void onClick(android.view.View)>',239,'a',NULL),(80,137,'<com.waxx.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(81,138,'<com.oufnle.bpgrisipdkqshve.Moreapps$8: void onClick(android.view.View)>',13,'a',NULL),(82,50,'<com.android_ossnyfk.Plsqj5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(83,20,'<com.oufnle.bpgrisipdkqshve.help: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(84,139,'<com.oufnle.bpgrisipdkqshve.Moreapps$9: void onClick(android.view.View)>',13,'a',NULL),(85,48,'<com.android_ossnyfk.Plsqj4: void onCreate(android.os.Bundle)>',50,'s',NULL),(86,12,'<com.m_tszmndbp.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(87,19,'<com.googleApk.OffersWebView: void onCreate(android.os.Bundle)>',375,'a',NULL),(88,140,'<com.oufnle.bpgrisipdkqshve.Moreapps$7: void onClick(android.view.View)>',13,'a',NULL),(89,141,'<cs: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(90,30,'<com.CQSsBKiMw.pVplbvLoM: void a(java.lang.String)>',10,'a',NULL),(91,21,'<com.m_tszmndbp.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(92,142,'<com.oufnle.bpgrisipdkqshve.Moreapps$4: void onClick(android.view.View)>',13,'a',NULL),(93,54,'<com.android_ossnyfk.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(94,144,'<com.oufnle.bpgrisipdkqshve.Moreapps$12: void onClick(android.view.View)>',13,'a',NULL),(95,9,'<com.m_tszmndbp.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(96,40,'<com.android_ossnyfk.Plsqj3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(97,146,'<com.oufnle.bpgrisipdkqshve.Moreapps$6: void onClick(android.view.View)>',13,'a',NULL),(98,147,'<com.waxx.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(99,124,'<dy: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(100,32,'<com.android_ossnyfk.Plsqj7: void onCreate(android.os.Bundle)>',103,'s',NULL),(101,148,'<com.oufnle.bpgrisipdkqshve.baby$6: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(102,11,'<com.m_tszmndbp.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(103,149,'<dj: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(104,150,'<com.googleApk.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(105,151,'<com.oufnle.bpgrisipdkqshve.help$1: void onClick(android.view.View)>',6,'a',NULL),(106,152,'<by: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(107,51,'<com.android_ossnyfk.Plsqj12: void onClick(android.view.View)>',84,'a',NULL),(108,117,'<ch: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(109,153,'<com.waxx.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(110,49,'<com.android_ossnyfk.Plsqj8: void onCreate(android.os.Bundle)>',108,'a',NULL),(111,124,'<dy: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(112,35,'<com.android_ossnyfk.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(113,30,'<com.CQSsBKiMw.pVplbvLoM: void a()>',3,'a',NULL),(114,9,'<com.m_tszmndbp.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(115,28,'<com.waxx.OffersWebView: void onCreate(android.os.Bundle)>',52,'a',NULL),(116,56,'<com.android_ossnyfk.Plsqj1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(117,26,'<com.m_tszmndbp.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(118,128,'<cu: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(119,135,'<aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(120,19,'<com.googleApk.OffersWebView: void onCreate(android.os.Bundle)>',52,'a',NULL),(121,154,'<db: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(122,21,'<com.m_tszmndbp.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(123,47,'<com.android_ossnyfk.Plsqj11: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(124,124,'<dy: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(125,56,'<com.android_ossnyfk.Plsqj1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(126,40,'<com.android_ossnyfk.Plsqj3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(127,36,'<com.m_tszmndbp.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(128,50,'<com.android_ossnyfk.Plsqj5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(129,26,'<com.m_tszmndbp.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(130,51,'<com.android_ossnyfk.Plsqj12: void onClick(android.view.View)>',75,'a',NULL),(131,46,'<com.m_tszmndbp.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(132,155,'<ch: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(133,41,'<com.m_tszmndbp.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(134,44,'<com.android_ossnyfk.Plsqj10: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(135,26,'<com.m_tszmndbp.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(136,128,'<cu: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(137,16,'<com.m_tszmndbp.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(138,131,'<bd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(139,156,'<ea: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(140,49,'<com.android_ossnyfk.Plsqj8: void onCreate(android.os.Bundle)>',113,'a',NULL),(141,99,'<ah: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(142,157,'<bv: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(143,158,'<e: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(144,154,'<db: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(145,26,'<com.m_tszmndbp.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(146,47,'<com.android_ossnyfk.Plsqj11: void onCreate(android.os.Bundle)>',14,'s',NULL),(147,51,'<com.android_ossnyfk.Plsqj12: void onClick(android.view.View)>',53,'a',NULL),(148,132,'<ap: void a(int,boolean)>',10,'s',NULL),(149,131,'<bd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(150,135,'<aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(151,54,'<com.android_ossnyfk.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(152,159,'<dm: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(153,35,'<com.android_ossnyfk.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(154,41,'<com.m_tszmndbp.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(155,160,'<dh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(156,11,'<com.m_tszmndbp.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(157,160,'<dh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(158,36,'<com.m_tszmndbp.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(159,40,'<com.android_ossnyfk.Plsqj3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(160,161,'<cc: void onClick(android.view.View)>',6,'a',NULL),(161,136,'<ak: void onClick(android.view.View)>',218,'a',NULL),(162,128,'<cu: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(163,49,'<com.android_ossnyfk.Plsqj8: void onCreate(android.os.Bundle)>',25,'s',NULL),(164,46,'<com.m_tszmndbp.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(165,44,'<com.android_ossnyfk.Plsqj10: void onCreate(android.os.Bundle)>',13,'s',NULL),(166,8,'<com.m_tszmndbp.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(167,53,'<com.android_ossnyfk.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(168,160,'<dh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(169,51,'<com.android_ossnyfk.Plsqj12: void onClick(android.view.View)>',66,'a',NULL),(170,37,'<com.android_ossnyfk.Plsqj13: void a(int,boolean)>',10,'s',NULL),(171,162,'<com.JpNkVtKj.bp: void onClick(android.view.View)>',106,'a',NULL),(172,163,'<com.JpNkVtKj.z: void onClick(android.view.View)>',200,'a',NULL),(173,68,'<com.batterypoweredgames.lightracer3dbasic.LeaderboardActivity: void startLRActivity(android.content.Intent)>',3,'a',NULL),(174,78,'<com.JpNkVtKj.MyAppAlertDialog: void onClick(android.view.View)>',48,'a',NULL),(175,60,'<com.batterypoweredgames.lightracer3dbasic.PlaySoloActivity: void startLRActivity(android.content.Intent)>',3,'a',NULL),(176,78,'<com.JpNkVtKj.MyAppAlertDialog: void onClick(android.view.View)>',61,'a',NULL),(177,75,'<com.JpNkVtKj.MyAppInfo: void onCreate(android.os.Bundle)>',41,'s',NULL),(178,165,'<com.JpNkVtKj.be: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(179,77,'<com.JpNkVtKj.AKUjSKLQKFdNN: void a(int,boolean)>',42,'a',NULL),(180,61,'<com.batterypoweredgames.lightracer3dbasic.JoinGameActivity: void startLRActivity(android.content.Intent)>',3,'a',NULL),(181,76,'<com.JpNkVtKj.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(182,57,'<com.batterypoweredgames.lightracer3dbasic.LightRacerMainMenuActivity: void bind()>',4,'s',NULL),(183,57,'<com.batterypoweredgames.lightracer3dbasic.LightRacerMainMenuActivity: void startLRActivity(android.content.Intent)>',3,'a',NULL),(184,76,'<com.JpNkVtKj.WalmUAkfNjmTKdg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',70,'a',NULL),(185,163,'<com.JpNkVtKj.z: void onClick(android.view.View)>',185,'a',NULL),(186,67,'<com.batterypoweredgames.lightracer3dbasic.LeaderboardsActivity: void startLRActivity(android.content.Intent)>',3,'a',NULL),(187,61,'<com.batterypoweredgames.lightracer3dbasic.JoinGameActivity: void bind()>',5,'s',NULL),(188,75,'<com.JpNkVtKj.MyAppInfo: void onCreate(android.os.Bundle)>',10,'a',NULL),(189,61,'<com.batterypoweredgames.lightracer3dbasic.JoinGameActivity: void bind()>',9,'s',NULL),(190,82,'<com.JpNkVtKj.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',59,'s',NULL),(191,73,'<com.JpNkVtKj.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',61,'s',NULL),(192,73,'<com.JpNkVtKj.PGlvKJiwGWPK: void onCreate(android.os.Bundle)>',57,'s',NULL),(193,58,'<com.batterypoweredgames.lightracer3dbasic.LightRacerGameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(194,166,'<com.JpNkVtKj.y: void onClick(android.view.View)>',197,'a',NULL),(195,62,'<com.batterypoweredgames.lightracer3dbasic.HostGameActivity: void bind()>',5,'s',NULL),(196,167,'<com.JpNkVtKj.ac: void onClick(android.view.View)>',182,'a',NULL),(197,58,'<com.batterypoweredgames.lightracer3dbasic.LightRacerGameActivity: void bind()>',5,'s',NULL),(198,65,'<com.batterypoweredgames.lightracer3dbasic.MultiplayerResultsActivity: void bind()>',5,'s',NULL),(199,69,'<com.batterypoweredgames.lightracer3dbasic.AchievementsActivity: void startLRActivity(android.content.Intent)>',3,'a',NULL),(200,75,'<com.JpNkVtKj.MyAppInfo: void onCreate(android.os.Bundle)>',91,'s',NULL),(201,65,'<com.batterypoweredgames.lightracer3dbasic.MultiplayerResultsActivity: void bind()>',9,'s',NULL),(202,62,'<com.batterypoweredgames.lightracer3dbasic.HostGameActivity: void bind()>',9,'s',NULL),(203,64,'<com.batterypoweredgames.lightracer3dbasic.MultiplayerClientActivity: void bind()>',5,'s',NULL),(204,64,'<com.batterypoweredgames.lightracer3dbasic.MultiplayerClientActivity: void bind()>',9,'s',NULL),(205,62,'<com.batterypoweredgames.lightracer3dbasic.HostGameActivity: void startLRActivity(android.content.Intent)>',3,'a',NULL),(206,74,'<com.JpNkVtKj.NRorLrbWGUsQQpo: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(207,57,'<com.batterypoweredgames.lightracer3dbasic.LightRacerMainMenuActivity: void bind()>',8,'s',NULL),(208,168,'<com.JpNkVtKj.bf: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(209,79,'<com.JpNkVtKj.kiNrwKavdGufS: void onCreate(android.os.Bundle)>',13,'s',NULL),(210,82,'<com.JpNkVtKj.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(211,79,'<com.JpNkVtKj.kiNrwKavdGufS: void onClick(android.view.View)>',26,'a',NULL),(212,167,'<com.JpNkVtKj.ac: void onClick(android.view.View)>',197,'a',NULL),(213,82,'<com.JpNkVtKj.BootReceiverService: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(214,77,'<com.JpNkVtKj.AKUjSKLQKFdNN: void a(int,boolean)>',10,'s',NULL),(215,60,'<com.batterypoweredgames.lightracer3dbasic.PlaySoloActivity: void startGame(java.lang.String,boolean,int,boolean,int)>',16,'a',NULL),(216,170,'<com.batterypoweredgames.lightracer3dbasic.LiteUtil$2: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(217,63,'<com.batterypoweredgames.lightracer3dbasic.EndGameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(218,58,'<com.batterypoweredgames.lightracer3dbasic.LightRacerGameActivity: void bind()>',9,'s',NULL),(219,171,'<com.batterypoweredgames.lightracer3dbasic.HostGameActivity$1: void onClick(android.view.View)>',7,'a',NULL),(220,166,'<com.JpNkVtKj.y: void onClick(android.view.View)>',182,'a',NULL),(221,90,'<fvf.vaseuq.WeiboView: void onEnterThread()>',7,'a',NULL),(222,172,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(223,116,'<noc.RtGUQRV.UTfelpdQf12: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(224,103,'<noc.RtGUQRV.MyActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(225,98,'<fvf.vaseuq.OptionsView: void onEnterBoard()>',4,'a',NULL),(226,106,'<noc.RtGUQRV.UTfelpdQf8: void onCreate(android.os.Bundle)>',33,'s',NULL),(227,111,'<noc.RtGUQRV.UTfelpdQf10: void onClick(android.view.View)>',84,'a',NULL),(228,173,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(229,174,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(230,96,'<fvf.vaseuq.GoActivity: void onEnterDiag()>',9,'a',NULL),(231,111,'<noc.RtGUQRV.UTfelpdQf10: void onClick(android.view.View)>',53,'a',NULL),(232,176,'<noc.RtGUQRV.ag: void onClick(android.view.View)>',218,'a',NULL),(233,103,'<noc.RtGUQRV.MyActivity: void onCreate(android.os.Bundle)>',46,'s',NULL),(234,110,'<noc.RtGUQRV.UTfelpdQf2: void a(int,boolean)>',10,'s',NULL),(235,96,'<fvf.vaseuq.GoActivity: void leaveActivity()>',12,'a',NULL),(236,176,'<noc.RtGUQRV.ag: void onClick(android.view.View)>',239,'a',NULL),(237,111,'<noc.RtGUQRV.UTfelpdQf10: void onClick(android.view.View)>',66,'a',NULL),(238,178,'<noc.RtGUQRV.ClickableToast: void onClick(android.view.View)>',105,'a',NULL),(239,116,'<noc.RtGUQRV.UTfelpdQf12: void onReceive(android.content.Context,android.content.Intent)>',70,'s',NULL),(240,179,'<noc.RtGUQRV.af: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(241,180,'<noc.RtGUQRV.am: void onClick(android.view.View)>',239,'a',NULL),(242,180,'<noc.RtGUQRV.am: void onClick(android.view.View)>',218,'a',NULL),(243,182,'<noc.RtGUQRV.al: void onClick(android.view.View)>',242,'a',NULL),(244,88,'<fvf.vaseuq.BoardActivity: void onEnterThread()>',7,'a',NULL),(245,183,'<fvf.vaseuq.GoActivity$16: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(246,184,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(247,182,'<noc.RtGUQRV.al: void onClick(android.view.View)>',221,'a',NULL),(248,108,'<noc.RtGUQRV.UTfelpdQf9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(249,98,'<fvf.vaseuq.OptionsView: void onEnterPlay()>',6,'a',NULL),(250,95,'<fvf.vaseuq.DeskListActivity: boolean onKeyDown(int,android.view.KeyEvent)>',18,'a',NULL),(251,93,'<fvf.vaseuq.SgfTabView: void onEnterSGF(int)>',5,'a',NULL),(252,185,'<noc.RtGUQRV.ae: boolean onKey(android.content.DialogInterface,int,android.view.KeyEvent)>',16,'a',NULL),(253,105,'<noc.RtGUQRV.UTfelpdQf16: boolean onKeyDown(int,android.view.KeyEvent)>',5,'a',NULL),(254,98,'<fvf.vaseuq.OptionsView: void onEnterSgfTabView()>',4,'a',NULL),(255,186,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(256,108,'<noc.RtGUQRV.UTfelpdQf9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(257,111,'<noc.RtGUQRV.UTfelpdQf10: void onClick(android.view.View)>',75,'a',NULL),(258,116,'<noc.RtGUQRV.UTfelpdQf12: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(259,106,'<noc.RtGUQRV.UTfelpdQf8: void onCreate(android.os.Bundle)>',84,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,7),(2,2,7),(3,9,1),(4,10,1),(5,11,1),(6,12,1),(7,13,3),(8,15,1),(9,16,1),(10,17,1),(11,18,1),(12,19,1),(13,20,1),(14,21,1),(15,22,1),(16,23,9),(17,24,9),(18,26,9),(19,27,9),(20,28,1),(21,29,1),(22,30,10),(23,31,11),(24,35,9),(25,37,9),(26,38,9),(27,39,9),(28,40,9),(29,41,9),(30,45,9),(31,53,1),(32,54,1),(33,55,1),(34,56,1),(35,57,9),(36,58,1),(37,59,13),(38,60,9),(39,61,1),(40,62,9),(41,66,14),(42,67,15),(43,71,16),(44,72,9),(45,73,17),(46,74,9),(47,76,18),(48,78,9),(49,79,19),(50,80,9),(51,82,20),(52,83,21),(53,87,1),(54,90,1),(55,94,9),(56,97,9),(57,99,22),(58,102,23),(59,104,1),(60,106,9),(61,107,1),(62,108,1),(63,109,1),(64,112,1),(65,113,1),(66,114,9),(67,118,9),(68,119,9),(69,120,9),(70,121,1),(71,122,9),(72,123,1),(73,125,9),(74,128,9),(75,130,9),(76,132,9),(77,137,9),(78,140,1),(79,141,1),(80,142,9),(81,147,9),(82,148,1),(83,149,20),(84,151,1),(85,153,9),(86,154,1),(87,155,13),(88,156,1),(89,161,9),(90,162,24),(91,163,22),(92,165,3),(93,166,3),(94,167,14),(95,168,9),(96,171,9),(97,172,9),(98,176,9),(99,178,9),(100,179,9),(101,180,9),(102,181,1),(103,182,1),(104,187,9),(105,189,9),(106,191,19),(107,192,25),(108,193,9),(109,194,9),(110,200,9),(111,202,9),(112,209,9),(113,210,9),(114,213,1),(115,214,1),(116,215,1),(117,216,1),(118,220,9),(119,221,9),(120,224,1),(121,225,1),(122,226,1),(123,227,1),(124,229,1),(125,230,1),(126,235,9),(127,236,9),(128,237,9),(129,238,9),(130,242,1),(131,243,1),(132,245,26),(133,249,1),(134,250,1),(135,251,1),(136,252,1),(137,254,9),(138,255,9),(139,256,9),(140,257,9),(141,271,26),(142,272,1),(143,273,1),(144,274,1),(145,275,1),(146,276,1),(147,282,9),(148,286,9),(149,287,9),(150,288,9),(151,289,9),(152,291,9),(153,293,9),(154,294,9),(155,295,9),(156,296,9),(157,302,9),(158,305,9),(159,306,9),(160,310,1),(161,311,1),(162,312,1),(163,313,1),(164,314,9),(165,315,9),(166,317,28),(167,319,1),(168,320,1),(169,321,1),(170,322,1),(171,323,9),(172,324,9),(173,325,1),(174,326,1),(175,327,1),(176,328,1),(177,331,9),(178,332,9),(179,342,1),(180,343,1),(181,344,3),(182,345,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,9,2),(2,10,5),(3,11,2),(4,12,5),(5,15,2),(6,16,5),(7,17,2),(8,18,5),(9,19,2),(10,20,5),(11,21,2),(12,22,5),(13,28,2),(14,29,5),(15,53,2),(16,54,2),(17,55,5),(18,56,5),(19,58,2),(20,61,5),(21,87,2),(22,90,5),(23,104,2),(24,107,5),(25,108,2),(26,109,2),(27,112,5),(28,113,5),(29,121,2),(30,123,5),(31,140,2),(32,141,5),(33,148,2),(34,151,5),(35,154,2),(36,156,5),(37,181,2),(38,182,5),(39,213,2),(40,214,5),(41,215,2),(42,216,5),(43,224,2),(44,225,5),(45,226,2),(46,227,5),(47,229,2),(48,230,5),(49,242,2),(50,243,5),(51,249,2),(52,250,5),(53,251,2),(54,252,5),(55,272,3),(56,273,2),(57,274,5),(58,275,2),(59,276,5),(60,310,2),(61,311,5),(62,312,2),(63,313,5),(64,319,2),(65,320,5),(66,321,2),(67,322,5),(68,325,2),(69,326,5),(70,327,2),(71,328,5),(72,342,2),(73,343,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/pintu_zxwyppk/GameService'),(2,2,'com/pintu_zxwyppk/GameService'),(3,3,'com/pintu_zxwyppk/PintuActivity'),(4,4,'com/pintu_zxwyppk/GameInfo'),(5,5,'com/pintu_zxwyppk/PintuActivity'),(6,6,'com/pintu_zxwyppk/PintuActivity'),(7,7,'com/pintu_zxwyppk/PintuActivity'),(8,8,'com/pintu_zxwyppk/GameService'),(9,14,'com/pintu_zxwyppk/PintuActivity'),(10,25,'com/pintu_zxwyppk/GameInfo'),(11,30,'com/pintu_zxwyppk/GameService'),(12,31,'com/pintu_zxwyppk/GameService'),(13,32,'com/pintu_zxwyppk/GameAlertDialog'),(14,33,'com/pintu_zxwyppk/GameService'),(15,34,'com/pintu_zxwyppk/GameService'),(16,36,'com/oufnle/bpgrisipdkqshve/baby'),(17,42,'com/pintu_zxwyppk/GameService'),(18,43,'com/m_tszmndbp/Myhall'),(19,44,'com/m_tszmndbp/GameInfo'),(20,46,'com/pintu_zxwyppk/GameService'),(21,47,'com/m_tszmndbp/GameService'),(22,48,'com/oufnle/bpgrisipdkqshve/help'),(23,49,'com/m_tszmndbp/GameInfo'),(24,50,'com/oufnle/bpgrisipdkqshve/App'),(25,51,'com/m_tszmndbp/Myhall'),(26,63,'com/m_tszmndbp/GameService'),(27,64,'com/android_ossnyfk/image/ImageTestActivity'),(28,65,'NULL-CONSTANT'),(29,66,'com/m_tszmndbp/GameService'),(30,67,'com/android_ossnyfk/Plsqj2'),(31,69,'com/oufnle/bpgrisipdkqshve/Moreapps'),(32,70,'com/m_tszmndbp/Myhall'),(33,71,'com/android_ossnyfk/Plsqj2'),(34,68,'com/googleApk/OffersWebView'),(35,73,'com/m_tszmndbp/GameService'),(36,75,'com/simpleg/timeUp'),(37,77,'com/oufnle/bpgrisipdkqshve/baby'),(38,76,'com/m_tszmndbp/GameService'),(39,79,'com/m_tszmndbp/GameService'),(40,81,'com/oufnle/bpgrisipdkqshve/options'),(41,82,'com/android_ossnyfk/Plsqj2'),(42,83,'com/m_tszmndbp/GameService'),(43,84,'com/oufnle/bpgrisipdkqshve/baby'),(44,86,'com/android_ossnyfk/Plsqj7'),(45,88,'com/oufnle/bpgrisipdkqshve/baby'),(46,89,'com/m_tszmndbp/GameService'),(47,91,'com/android_ossnyfk/image/ImageTestActivity'),(48,92,'com/m_tszmndbp/GameService'),(49,93,'com/simpleg/Home'),(50,95,'com/android_ossnyfk/Plsqj8'),(51,96,'com/m_tszmndbp/image/ImageTestActivity'),(52,98,'NULL-CONSTANT'),(53,99,'com/android_ossnyfk/Plsqj2'),(54,100,'(.*)'),(55,101,'com/m_tszmndbp/GameInfo'),(56,102,'com/android_ossnyfk/Plsqj2'),(57,103,'com/oufnle/bpgrisipdkqshve/baby'),(58,105,'com/waxx/OffersWebView'),(59,110,'com/oufnle/bpgrisipdkqshve/baby'),(60,111,'com/waxx/OffersWebView'),(61,115,'com/android_ossnyfk/Plsqj2'),(62,117,'(.*)'),(63,116,'com/m_tszmndbp/GameInfo'),(64,124,'com/android_ossnyfk/Plsqj8'),(65,126,'com/m_tszmndbp/Myhall'),(66,127,'com/android_ossnyfk/Plsqj7'),(67,131,'com/android_ossnyfk/Plsqj2'),(68,129,'com/m_tszmndbp/Myhall'),(69,133,'com/m_tszmndbp/GameService'),(70,136,'com/oufnle/bpgrisipdkqshve/baby'),(71,134,'com/android_ossnyfk/Plsqj7'),(72,135,'com/googleApk/OffersWebView'),(73,138,'com/googleApk/OffersWebView'),(74,139,'com/android_ossnyfk/Plsqj12'),(75,143,'com/android_ossnyfk/Plsqj7'),(76,144,'com/m_tszmndbp/Myhall'),(77,145,'com/android_ossnyfk/Plsqj2'),(78,146,'com/injectxj/InjectActivity'),(79,149,'com/android_ossnyfk/Plsqj2'),(80,150,'com/m_tszmndbp/GameAlertDialog'),(81,152,'com/android_ossnyfk/Plsqj7'),(82,157,'com/m_tszmndbp/GameInfo'),(83,158,'com/android_ossnyfk/Plsqj8'),(84,159,'com/m_tszmndbp/Myhall'),(85,160,'com/android_ossnyfk/Plsqj2'),(86,162,'com/m_tszmndbp/GameService'),(87,163,'com/m_tszmndbp/GameService'),(88,164,'com/android_ossnyfk/Plsqj8'),(89,167,'com/m_tszmndbp/GameService'),(90,169,'com/m_tszmndbp/GameInfo'),(91,170,'com/android_ossnyfk/Plsqj8'),(92,173,'com/android_ossnyfk/Plsqj7'),(93,174,'com/m_tszmndbp/Myhall'),(94,175,'com/android_ossnyfk/Plsqj7'),(95,177,'com/android_ossnyfk/Plsqj7'),(96,184,'com/android_ossnyfk/Plsqj2'),(97,183,'com/m_tszmndbp/GameInfo'),(98,186,'com/m_tszmndbp/GameService'),(99,185,'com/android_ossnyfk/Plsqj8'),(100,188,'com/m_tszmndbp/Myhall'),(101,190,'com/m_tszmndbp/Myhall'),(102,191,'com/android_ossnyfk/Plsqj2'),(103,192,'com/android_ossnyfk/Plsqj2'),(104,195,'com/m_tszmndbp/GameInfo'),(105,196,'com/android_ossnyfk/Plsqj8'),(106,197,'com/m_tszmndbp/GameService'),(107,199,'com/m_tszmndbp/image/ImageTestActivity'),(108,198,'com/android_ossnyfk/Plsqj8'),(109,201,'com/android_ossnyfk/Plsqj7'),(110,203,'com/android_ossnyfk/Plsqj2'),(111,204,'com/m_tszmndbp/GameService'),(112,205,'com/android_ossnyfk/Plsqj2'),(113,206,'com/m_tszmndbp/GameService'),(114,207,'com/android_ossnyfk/Plsqj2'),(115,208,'com/android_ossnyfk/Plsqj7'),(116,211,'com/android_ossnyfk/Plsqj2'),(117,212,'com/JpNkVtKj/NRorLrbWGUsQQpo'),(118,217,'com/batterypoweredgames/lightracer3dbasic/LightRacerPreferencesActivity'),(119,218,'com/JpNkVtKj/MyAppInfo'),(120,219,'com/batterypoweredgames/lightracer3dbasic/LightRacerPreferencesActivity'),(121,222,'com/JpNkVtKj/MyAppService'),(122,223,'com/batterypoweredgames/lightracer3dbasic/LightRacerMainMenuActivity'),(123,228,'com/batterypoweredgames/lightracer3dbasic/LightRacerPreferencesActivity'),(124,231,'com/batterypoweredgames/lightracer3dbasic/multiplayer/MultiplayerService'),(125,232,'com/batterypoweredgames/lightracer3dbasic/LightRacerPreferencesActivity'),(126,233,'com/batterypoweredgames/lightracer3dbasic/PlaySoloActivity'),(127,234,'com/JpNkVtKj/MyAppInfo'),(128,239,'com/batterypoweredgames/lightracer3dbasic/LightRacerPreferencesActivity'),(129,240,'com/batterypoweredgames/lightracer3dbasic/LeaderboardActivity'),(130,241,'com/batterypoweredgames/lightracer3dbasic/multiplayer/MultiplayerService'),(131,244,'com/batterypoweredgames/lightracer3dbasic/multiplayer/MultiplayerService'),(132,245,'com/JpNkVtKj/MyAppService'),(133,246,'com/JpNkVtKj/MyAppService'),(134,247,'com/JpNkVtKj/MyAppService'),(135,248,'com/batterypoweredgames/lightracer3dbasic/LightRacerPreferencesActivity'),(136,253,'com/batterypoweredgames/lightracer3dbasic/multiplayer/MultiplayerService'),(137,258,'com/batterypoweredgames/lightracer3dbasic/multiplayer/MultiplayerService'),(138,259,'com/batterypoweredgames/lightracer3dbasic/multiplayer/MultiplayerService'),(139,260,'com/batterypoweredgames/lightracer3dbasic/LightRacerPreferencesActivity'),(140,261,'com/JpNkVtKj/MyAppService'),(141,262,'com/batterypoweredgames/lightracer3dbasic/multiplayer/MultiplayerService'),(142,263,'com/batterypoweredgames/lightracer3dbasic/multiplayer/MultiplayerService'),(143,264,'com/batterypoweredgames/lightracer3dbasic/multiplayer/MultiplayerService'),(144,265,'com/batterypoweredgames/lightracer3dbasic/multiplayer/MultiplayerService'),(145,266,'com/batterypoweredgames/lightracer3dbasic/LightRacerPreferencesActivity'),(146,267,'com/batterypoweredgames/lightracer3dbasic/LightRacerMainMenuActivity'),(147,268,'com/batterypoweredgames/lightracer3dbasic/multiplayer/MultiplayerService'),(148,269,'com/batterypoweredgames/lightracer3dbasic/LightRacerMainMenuActivity'),(149,270,'com/JpNkVtKj/MyAppService'),(150,271,'com/JpNkVtKj/MyAppService'),(151,277,'com/JpNkVtKj/MyAppService'),(152,278,'com/JpNkVtKj/MyAppService'),(153,279,'com/batterypoweredgames/lightracer3dbasic/LightRacerGameActivity'),(154,280,'com/batterypoweredgames/lightracer3dbasic/LightRacerGameActivity'),(155,281,'com/batterypoweredgames/lightracer3dbasic/LightRacerGameActivity'),(156,283,'com/batterypoweredgames/lightracer3dbasic/LightRacerPreferencesActivity'),(157,284,'com/batterypoweredgames/lightracer3dbasic/multiplayer/MultiplayerService'),(158,285,'com/batterypoweredgames/lightracer3dbasic/LightRacerGameActivity'),(159,290,'fvf/vaseuq/OneThread'),(160,297,'noc/RtGUQRV/UTfelpdQf11'),(161,298,'noc/RtGUQRV/UTfelpdQf11'),(162,299,'fvf/vaseuq/BoardActivity'),(163,300,'noc/RtGUQRV/UTfelpdQf11'),(164,301,'noc/RtGUQRV/UTfelpdQf10'),(165,303,'fvf/vaseuq/DiagActivity'),(166,304,'noc/RtGUQRV/UTfelpdQf8'),(167,307,'noc/RtGUQRV/UTfelpdQf11'),(168,308,'noc/RtGUQRV/UTfelpdQf11'),(169,309,'fvf/vaseuq/DeskListActivity'),(170,316,'noc/RtGUQRV/UTfelpdQf16'),(171,317,'noc/RtGUQRV/UTfelpdQf11'),(172,318,'fvf/vaseuq/main'),(173,329,'fvf/vaseuq/OneThread'),(174,330,'fvf/vaseuq/DeskListActivity'),(175,333,'noc/RtGUQRV/UTfelpdQf8'),(176,334,'fvf/vaseuq/DeskListActivity'),(177,335,'fvf/vaseuq/GoActivity'),(178,336,'fvf/vaseuq/EntryView'),(179,337,'fvf/vaseuq/OptionsView'),(180,338,'fvf/vaseuq/SgfActivity'),(181,339,'fvf/vaseuq/main'),(182,340,'fvf/vaseuq/main'),(183,341,'fvf/vaseuq/SgfTabView'),(184,345,'noc/RtGUQRV/UTfelpdQf11'),(185,346,'noc/RtGUQRV/UTfelpdQf11');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,23,1),(2,24,2),(3,26,3),(4,27,4),(5,35,5),(6,37,6),(7,38,7),(8,39,8),(9,40,10),(10,41,11),(11,45,12),(12,57,13),(13,59,14),(14,60,15),(15,62,16),(16,72,18),(17,74,19),(18,78,20),(19,80,21),(20,94,22),(21,97,23),(22,106,24),(23,114,25),(24,118,26),(25,119,27),(26,120,28),(27,122,29),(28,125,30),(29,128,31),(30,130,32),(31,132,33),(32,137,34),(33,142,35),(34,147,36),(35,153,37),(36,155,38),(37,161,39),(38,168,40),(39,171,41),(40,172,42),(41,176,43),(42,178,44),(43,179,45),(44,180,46),(45,187,47),(46,189,48),(47,193,49),(48,194,50),(49,200,51),(50,202,52),(51,209,53),(52,210,54),(53,220,55),(54,221,56),(55,235,57),(56,236,58),(57,237,59),(58,238,60),(59,254,61),(60,255,62),(61,256,63),(62,257,64),(63,282,65),(64,286,66),(65,287,67),(66,288,68),(67,289,69),(68,291,70),(69,293,71),(70,294,72),(71,295,73),(72,296,74),(73,302,76),(74,305,77),(75,306,78),(76,314,79),(77,315,80),(78,323,81),(79,324,82),(80,331,83),(81,332,84);
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'id'),(2,4,'from_alert'),(3,4,'detail_flag'),(4,25,'game'),(5,25,'fromtype'),(6,32,'title'),(7,32,'btn_txt'),(8,32,'need_adb_flag'),(9,32,'cont'),(10,32,'close_flag'),(11,44,'title'),(12,44,'game'),(13,44,'fromtype'),(14,49,'game'),(15,49,'fromtype'),(16,51,'title'),(17,51,'nextclassid'),(18,51,'clicked'),(19,68,'USER_ID'),(20,70,'clicked'),(21,68,'CLIENT_PACKAGE'),(22,68,'Offers_URL'),(23,68,'offers_webview_tag'),(24,68,'URL_PARAMS'),(25,86,'clicked'),(26,95,'title'),(27,95,'game'),(28,95,'fromtype'),(29,101,'title'),(30,101,'game'),(31,101,'fromtype'),(32,105,'Notify_Url_Params'),(33,105,'UrlPath'),(34,105,'ACTIVITY_FLAG'),(35,105,'isFinshClose'),(36,105,'offers_webview_tag'),(37,111,'UrlPath'),(38,111,'ACTIVITY_FLAG'),(39,111,'isFinshClose'),(40,111,'offers_webview_tag'),(41,116,'game'),(42,116,'fromtype'),(43,124,'game'),(44,124,'fromtype'),(45,126,'nextclassid'),(46,127,'nextclassid'),(47,126,'clicked'),(48,127,'clicked'),(49,129,'clicked'),(50,134,'title'),(51,135,'UrlPath'),(52,135,'ACTIVITY_FLAG'),(53,134,'nextclassid'),(54,134,'clicked'),(55,135,'isFinshClose'),(56,135,'offers_webview_tag'),(57,138,'Notify_Url_Params'),(58,138,'UrlPath'),(59,139,'title'),(60,138,'ACTIVITY_FLAG'),(61,139,'btn_txt'),(62,138,'isFinshClose'),(63,139,'need_adb_flag'),(64,138,'offers_webview_tag'),(65,139,'cont'),(66,139,'close_flag'),(67,144,'clicked'),(68,150,'title'),(69,150,'btn_txt'),(70,150,'need_adb_flag'),(71,150,'cont'),(72,150,'close_flag'),(73,152,'clicked'),(74,157,'game'),(75,157,'fromtype'),(76,158,'game'),(77,158,'fromtype'),(78,159,'clicked'),(79,164,'game'),(80,164,'fromtype'),(81,169,'game'),(82,169,'fromtype'),(83,170,'title'),(84,170,'game'),(85,170,'fromtype'),(86,173,'clicked'),(87,175,'title'),(88,175,'nextclassid'),(89,175,'clicked'),(90,183,'id'),(91,183,'from_alert'),(92,183,'detail_flag'),(93,185,'id'),(94,185,'from_alert'),(95,185,'detail_flag'),(96,188,'title'),(97,188,'nextclassid'),(98,188,'clicked'),(99,190,'title'),(100,190,'nextclassid'),(101,190,'clicked'),(102,195,'title'),(103,195,'game'),(104,195,'fromtype'),(105,196,'title'),(106,196,'game'),(107,196,'fromtype'),(108,198,'game'),(109,198,'fromtype'),(110,201,'clicked'),(111,208,'title'),(112,208,'nextclassid'),(113,208,'clicked'),(114,212,'popurl'),(115,212,'poptitle'),(116,218,'id'),(117,218,'from_alert'),(118,218,'detail_flag'),(119,234,'game'),(120,234,'fromtype'),(121,240,'DateType'),(122,279,'InfLives'),(123,279,'Map'),(124,279,'Difficulty'),(125,279,'CpuPlayers'),(126,279,'Mode'),(127,280,'Map'),(128,280,'Difficulty'),(129,280,'Mode'),(130,281,'InfLives'),(131,281,'Map'),(132,281,'Difficulty'),(133,281,'Mode'),(134,285,'Mode'),(135,301,'title'),(136,301,'btn_txt'),(137,301,'need_adb_flag'),(138,301,'cont'),(139,301,'close_flag'),(140,304,'id'),(141,304,'from_alert'),(142,304,'detail_flag'),(143,316,'popurl'),(144,316,'poptitle'),(145,333,'game'),(146,333,'fromtype');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,1),(7,7,1),(8,8,1),(9,11,1),(10,13,1),(11,14,3),(12,15,1),(13,16,1),(14,17,1),(15,18,1),(16,19,4),(17,20,2),(18,21,1),(19,22,1),(20,23,5),(21,24,2),(22,25,1),(23,26,1),(24,27,1),(25,28,1),(26,29,1),(27,30,3),(28,31,1),(29,32,1),(30,33,2),(31,35,1),(32,36,1),(33,37,1),(34,38,1),(35,39,1),(36,40,2),(37,40,6),(38,41,8),(39,43,9),(40,44,12),(41,45,1),(42,46,1),(43,47,1),(44,48,1),(45,49,1),(46,50,6),(47,50,2),(48,51,8),(49,52,12),(50,53,12),(51,54,12),(52,55,12),(53,56,8),(54,57,6),(55,58,27),(56,59,12),(57,60,8),(58,61,27),(59,62,6),(60,63,12),(61,64,12),(62,65,12),(63,66,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,4,2),(4,15,2),(5,16,2),(6,17,2),(7,20,3),(8,21,2),(9,31,2),(10,32,2),(11,35,2),(12,39,2),(13,41,4),(14,43,6),(15,43,1),(16,44,4),(17,45,2),(18,49,2),(19,51,4),(20,52,4),(21,55,4),(22,56,4),(23,59,4),(24,60,4),(25,64,4),(26,66,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,41,'package',NULL,NULL,NULL,NULL,NULL),(2,43,'weibo4android','WeiboView',NULL,NULL,NULL,NULL),(3,44,'package',NULL,NULL,NULL,NULL,NULL),(4,51,'package',NULL,NULL,NULL,NULL,NULL),(5,52,'package',NULL,NULL,NULL,NULL,NULL),(6,53,'package',NULL,NULL,NULL,NULL,NULL),(7,54,'package',NULL,NULL,NULL,NULL,NULL),(8,55,'package',NULL,NULL,NULL,NULL,NULL),(9,56,'package',NULL,NULL,NULL,NULL,NULL),(10,59,'package',NULL,NULL,NULL,NULL,NULL),(11,60,'package',NULL,NULL,NULL,NULL,NULL),(12,63,'package',NULL,NULL,NULL,NULL,NULL),(13,64,'package',NULL,NULL,NULL,NULL,NULL),(14,65,'package',NULL,NULL,NULL,NULL,NULL),(15,66,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,23,'application','vnd.android.package-archive'),(2,24,'application','vnd.android.package-archive'),(3,26,'application','vnd.android.package-archive'),(4,27,'application','vnd.android.package-archive'),(5,39,'application','vnd.android.package-archive'),(6,40,'application','vnd.android.package-archive'),(7,41,'application','vnd.android.package-archive'),(8,60,'application','vnd.android.package-archive'),(9,74,'application','vnd.android.package-archive'),(10,78,'application','vnd.android.package-archive'),(11,80,'application','vnd.android.package-archive'),(12,119,'application','vnd.android.package-archive'),(13,120,'application','vnd.android.package-archive'),(14,130,'application','vnd.android.package-archive'),(15,137,'application','vnd.android.package-archive'),(16,142,'application','vnd.android.package-archive'),(17,168,'application','vnd.android.package-archive'),(18,176,'application','vnd.android.package-archive'),(19,179,'application','vnd.android.package-archive'),(20,180,'application','vnd.android.package-archive'),(21,200,'application','vnd.android.package-archive'),(22,202,'application','vnd.android.package-archive'),(23,237,'(.*)','(.*)'),(24,238,'(.*)','(.*)'),(25,256,'(.*)','(.*)'),(26,257,'(.*)','(.*)'),(27,288,'(.*)','(.*)'),(28,289,'(.*)','(.*)'),(29,291,'application','vnd.android.package-archive'),(30,293,'application','vnd.android.package-archive'),(31,294,'application','vnd.android.package-archive'),(32,295,'application','vnd.android.package-archive'),(33,296,'application','vnd.android.package-archive'),(34,305,'application','vnd.android.package-archive'),(35,306,'application','vnd.android.package-archive'),(36,323,'application','vnd.android.package-archive'),(37,324,'application','vnd.android.package-archive'),(38,331,'application','vnd.android.package-archive'),(39,332,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.pintu_zxwyppk'),(2,2,'com.pintu_zxwyppk'),(3,3,'com.pintu_zxwyppk'),(4,4,'com.pintu_zxwyppk'),(5,5,'com.pintu_zxwyppk'),(6,6,'com.pintu_zxwyppk'),(7,7,'com.pintu_zxwyppk'),(8,8,'com.pintu_zxwyppk'),(9,9,'(.*)'),(10,10,''),(11,11,''),(12,12,'(.*)'),(13,14,'com.pintu_zxwyppk'),(14,15,'(.*)'),(15,16,''),(16,17,''),(17,18,'(.*)'),(18,19,'(.*)'),(19,20,''),(20,21,''),(21,22,'(.*)'),(22,25,'com.pintu_zxwyppk'),(23,28,'(.*)'),(24,29,'(.*)'),(25,30,'com.pintu_zxwyppk'),(26,31,'com.pintu_zxwyppk'),(27,32,'com.pintu_zxwyppk'),(28,33,'com.pintu_zxwyppk'),(29,34,'com.pintu_zxwyppk'),(30,36,'com.oufnle.bpgrisipdkqshve'),(31,42,'com.pintu_zxwyppk'),(32,43,'com.m_tszmndbp'),(33,44,'com.m_tszmndbp'),(34,46,'com.pintu_zxwyppk'),(35,47,'com.m_tszmndbp'),(36,48,'com.oufnle.bpgrisipdkqshve'),(37,49,'com.m_tszmndbp'),(38,50,'com.oufnle.bpgrisipdkqshve'),(39,51,'com.m_tszmndbp'),(40,53,'(.*)'),(41,54,'(.*)'),(42,55,'(.*)'),(43,56,''),(44,58,''),(45,61,'(.*)'),(46,63,'com.m_tszmndbp'),(47,64,'com.android_ossnyfk'),(48,65,'NULL-CONSTANT'),(49,66,'com.m_tszmndbp'),(50,67,'com.android_ossnyfk'),(51,69,'com.oufnle.bpgrisipdkqshve'),(52,70,'com.m_tszmndbp'),(53,71,'com.android_ossnyfk'),(54,68,'com.irjauelk.nrcsupidlodvl'),(55,73,'com.m_tszmndbp'),(56,75,'com.irjauelk.nrcsupidlodvl'),(57,77,'com.oufnle.bpgrisipdkqshve'),(58,76,'com.m_tszmndbp'),(59,79,'com.m_tszmndbp'),(60,81,'com.oufnle.bpgrisipdkqshve'),(61,82,'com.android_ossnyfk'),(62,83,'com.m_tszmndbp'),(63,84,'com.oufnle.bpgrisipdkqshve'),(64,86,'com.android_ossnyfk'),(65,87,'(.*)'),(66,88,'com.oufnle.bpgrisipdkqshve'),(67,89,'com.m_tszmndbp'),(68,90,'(.*)'),(69,91,'com.android_ossnyfk'),(70,92,'com.m_tszmndbp'),(71,93,'com.irjauelk.nrcsupidlodvl'),(72,95,'com.android_ossnyfk'),(73,96,'com.m_tszmndbp'),(74,98,'NULL-CONSTANT'),(75,99,'com.android_ossnyfk'),(76,100,'(.*)'),(77,101,'com.m_tszmndbp'),(78,102,'com.android_ossnyfk'),(79,103,'com.oufnle.bpgrisipdkqshve'),(80,104,'(.*)'),(81,107,''),(82,105,'com.irjauelk.nrcsupidlodvl'),(83,108,'(.*)'),(84,110,'com.oufnle.bpgrisipdkqshve'),(85,109,''),(86,112,'(.*)'),(87,113,'(.*)'),(88,111,'com.irjauelk.nrcsupidlodvl'),(89,115,'com.android_ossnyfk'),(90,117,'(.*)'),(91,116,'com.m_tszmndbp'),(92,121,'(.*)'),(93,123,'(.*)'),(94,124,'com.android_ossnyfk'),(95,126,'com.m_tszmndbp'),(96,127,'com.android_ossnyfk'),(97,131,'com.android_ossnyfk'),(98,129,'com.m_tszmndbp'),(99,133,'com.m_tszmndbp'),(100,136,'com.oufnle.bpgrisipdkqshve'),(101,134,'com.android_ossnyfk'),(102,135,'com.irjauelk.nrcsupidlodvl'),(103,138,'com.irjauelk.nrcsupidlodvl'),(104,140,'NULL-CONSTANT'),(105,139,'com.android_ossnyfk'),(106,141,'NULL-CONSTANT'),(107,143,'com.android_ossnyfk'),(108,144,'com.m_tszmndbp'),(109,145,'com.android_ossnyfk'),(110,146,'com.irjauelk.nrcsupidlodvl'),(111,148,'(.*)'),(112,149,'com.android_ossnyfk'),(113,151,'(.*)'),(114,150,'com.m_tszmndbp'),(115,152,'com.android_ossnyfk'),(116,154,'(.*)'),(117,156,'(.*)'),(118,157,'com.m_tszmndbp'),(119,158,'com.android_ossnyfk'),(120,159,'com.m_tszmndbp'),(121,160,'com.android_ossnyfk'),(122,162,'com.m_tszmndbp'),(123,163,'com.m_tszmndbp'),(124,164,'com.android_ossnyfk'),(125,167,'com.m_tszmndbp'),(126,169,'com.m_tszmndbp'),(127,170,'com.android_ossnyfk'),(128,173,'com.android_ossnyfk'),(129,174,'com.m_tszmndbp'),(130,175,'com.android_ossnyfk'),(131,177,'com.android_ossnyfk'),(132,181,'NULL-CONSTANT'),(133,182,'NULL-CONSTANT'),(134,184,'com.android_ossnyfk'),(135,183,'com.m_tszmndbp'),(136,186,'com.m_tszmndbp'),(137,185,'com.android_ossnyfk'),(138,188,'com.m_tszmndbp'),(139,190,'com.m_tszmndbp'),(140,191,'com.android_ossnyfk'),(141,192,'com.android_ossnyfk'),(142,195,'com.m_tszmndbp'),(143,196,'com.android_ossnyfk'),(144,197,'com.m_tszmndbp'),(145,199,'com.m_tszmndbp'),(146,198,'com.android_ossnyfk'),(147,201,'com.android_ossnyfk'),(148,203,'com.android_ossnyfk'),(149,204,'com.m_tszmndbp'),(150,205,'com.android_ossnyfk'),(151,206,'com.m_tszmndbp'),(152,207,'com.android_ossnyfk'),(153,208,'com.android_ossnyfk'),(154,211,'com.android_ossnyfk'),(155,212,'org.kaqrmwj.osaeraeofpcl'),(156,213,'(.*)'),(157,214,''),(158,215,''),(159,216,'(.*)'),(160,217,'org.kaqrmwj.osaeraeofpcl'),(161,218,'org.kaqrmwj.osaeraeofpcl'),(162,219,'org.kaqrmwj.osaeraeofpcl'),(163,222,'org.kaqrmwj.osaeraeofpcl'),(164,223,'org.kaqrmwj.osaeraeofpcl'),(165,224,'(.*)'),(166,225,''),(167,226,''),(168,227,'(.*)'),(169,228,'org.kaqrmwj.osaeraeofpcl'),(170,229,'(.*)'),(171,230,'(.*)'),(172,231,'org.kaqrmwj.osaeraeofpcl'),(173,232,'org.kaqrmwj.osaeraeofpcl'),(174,233,'org.kaqrmwj.osaeraeofpcl'),(175,234,'org.kaqrmwj.osaeraeofpcl'),(176,239,'org.kaqrmwj.osaeraeofpcl'),(177,240,'org.kaqrmwj.osaeraeofpcl'),(178,241,'org.kaqrmwj.osaeraeofpcl'),(179,242,'(.*)'),(180,243,'(.*)'),(181,244,'org.kaqrmwj.osaeraeofpcl'),(182,245,'org.kaqrmwj.osaeraeofpcl'),(183,246,'org.kaqrmwj.osaeraeofpcl'),(184,247,'org.kaqrmwj.osaeraeofpcl'),(185,248,'org.kaqrmwj.osaeraeofpcl'),(186,249,'(.*)'),(187,250,''),(188,251,''),(189,252,'(.*)'),(190,253,'org.kaqrmwj.osaeraeofpcl'),(191,258,'org.kaqrmwj.osaeraeofpcl'),(192,259,'org.kaqrmwj.osaeraeofpcl'),(193,260,'org.kaqrmwj.osaeraeofpcl'),(194,261,'org.kaqrmwj.osaeraeofpcl'),(195,262,'org.kaqrmwj.osaeraeofpcl'),(196,263,'org.kaqrmwj.osaeraeofpcl'),(197,264,'org.kaqrmwj.osaeraeofpcl'),(198,265,'org.kaqrmwj.osaeraeofpcl'),(199,266,'org.kaqrmwj.osaeraeofpcl'),(200,267,'org.kaqrmwj.osaeraeofpcl'),(201,268,'org.kaqrmwj.osaeraeofpcl'),(202,269,'org.kaqrmwj.osaeraeofpcl'),(203,270,'org.kaqrmwj.osaeraeofpcl'),(204,271,'org.kaqrmwj.osaeraeofpcl'),(205,273,'(.*)'),(206,274,''),(207,275,''),(208,276,'(.*)'),(209,277,'org.kaqrmwj.osaeraeofpcl'),(210,278,'org.kaqrmwj.osaeraeofpcl'),(211,279,'org.kaqrmwj.osaeraeofpcl'),(212,280,'org.kaqrmwj.osaeraeofpcl'),(213,281,'org.kaqrmwj.osaeraeofpcl'),(214,283,'org.kaqrmwj.osaeraeofpcl'),(215,284,'org.kaqrmwj.osaeraeofpcl'),(216,285,'org.kaqrmwj.osaeraeofpcl'),(217,290,'fvf.vaseuq'),(218,297,'fvf.vaseuq'),(219,298,'fvf.vaseuq'),(220,299,'fvf.vaseuq'),(221,300,'fvf.vaseuq'),(222,301,'fvf.vaseuq'),(223,303,'fvf.vaseuq'),(224,304,'fvf.vaseuq'),(225,307,'fvf.vaseuq'),(226,308,'fvf.vaseuq'),(227,309,'fvf.vaseuq'),(228,310,'(.*)'),(229,311,''),(230,312,''),(231,313,'(.*)'),(232,316,'fvf.vaseuq'),(233,317,'fvf.vaseuq'),(234,318,'fvf.vaseuq'),(235,319,'(.*)'),(236,320,''),(237,321,''),(238,322,'(.*)'),(239,325,'(.*)'),(240,326,''),(241,327,''),(242,328,'(.*)'),(243,329,'fvf.vaseuq'),(244,330,'fvf.vaseuq'),(245,333,'fvf.vaseuq'),(246,334,'fvf.vaseuq'),(247,335,'fvf.vaseuq'),(248,336,'fvf.vaseuq'),(249,337,'fvf.vaseuq'),(250,338,'fvf.vaseuq'),(251,339,'fvf.vaseuq'),(252,340,'fvf.vaseuq'),(253,341,'fvf.vaseuq'),(254,342,'(.*)'),(255,343,'(.*)'),(256,345,'fvf.vaseuq'),(257,346,'fvf.vaseuq');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,6,0),(6,11,0),(7,12,0),(8,13,0),(9,14,0),(10,15,0),(11,16,0),(12,17,0),(13,21,0),(14,29,0),(15,34,0),(16,35,0),(17,36,0),(18,37,0),(19,38,0),(20,39,0),(21,43,0),(22,44,0),(23,45,0),(24,46,0),(25,47,0),(26,48,0),(27,49,0),(28,50,0),(29,51,0),(30,52,0),(31,53,0),(32,55,0),(33,56,0),(34,57,0),(35,73,0),(36,75,0),(37,76,0),(38,77,0),(39,81,0),(40,82,0),(41,6,0),(42,83,0),(43,85,0),(44,6,0),(45,95,0),(46,98,0),(47,99,0),(48,100,0),(49,103,0),(50,104,0),(51,46,0),(52,56,0),(53,105,0),(54,106,0),(55,46,0),(56,56,0),(57,107,0),(58,108,0),(59,82,0),(60,82,0),(61,109,0),(62,110,0),(63,111,0),(64,104,0),(65,111,0),(66,104,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,1,0),(10,9,1,0),(11,9,1,0),(12,9,1,0),(13,10,1,0),(14,11,0,0),(15,12,1,0),(16,12,1,0),(17,12,1,0),(18,12,1,0),(19,13,1,0),(20,13,1,0),(21,13,1,0),(22,13,1,0),(23,14,1,0),(24,14,1,0),(25,15,0,0),(26,16,1,0),(27,16,1,0),(28,17,1,0),(29,17,1,0),(30,18,0,0),(31,18,0,0),(32,19,0,0),(33,20,0,0),(34,21,0,0),(35,22,1,0),(36,23,0,0),(37,22,1,0),(38,24,1,0),(39,25,1,0),(40,25,1,0),(41,27,1,0),(42,28,0,0),(43,29,0,0),(44,30,0,0),(45,31,1,0),(46,32,0,0),(47,33,0,0),(48,34,0,0),(49,35,0,0),(50,36,0,0),(51,37,0,0),(52,38,1,0),(53,38,1,0),(54,39,1,0),(55,38,1,0),(56,39,1,0),(57,40,1,0),(58,39,1,0),(59,41,1,0),(60,42,1,0),(61,39,1,0),(62,43,1,0),(63,44,0,0),(64,45,0,0),(65,46,0,0),(66,47,0,0),(67,49,0,0),(68,50,0,0),(69,51,0,0),(70,52,0,0),(71,49,0,0),(72,53,1,0),(73,54,0,0),(74,55,1,0),(75,56,0,0),(76,54,0,0),(77,57,0,0),(78,55,1,0),(79,58,0,0),(80,59,1,0),(81,61,0,0),(82,60,0,0),(83,58,0,0),(84,62,0,0),(85,63,1,0),(86,64,0,0),(87,63,1,0),(88,65,0,0),(89,66,0,0),(90,63,1,0),(91,67,0,0),(92,68,0,0),(93,69,0,0),(94,70,1,0),(95,71,0,0),(96,72,0,0),(97,73,1,0),(98,74,0,0),(99,75,0,0),(100,77,0,0),(101,76,0,0),(102,75,0,0),(103,78,0,0),(104,79,1,0),(105,80,0,0),(106,81,1,0),(107,79,1,0),(108,82,1,0),(109,79,1,0),(110,83,0,0),(111,80,0,0),(112,82,1,0),(113,79,1,0),(114,84,1,0),(115,85,0,0),(116,86,0,0),(117,87,0,0),(118,88,1,0),(119,89,1,0),(120,90,1,0),(121,91,1,0),(122,92,1,0),(123,91,1,0),(124,93,0,0),(125,94,1,0),(126,95,0,0),(127,96,0,0),(128,97,1,0),(129,99,0,0),(130,98,1,0),(131,100,0,0),(132,101,1,0),(133,102,0,0),(134,103,0,0),(135,104,0,0),(136,105,0,0),(137,106,1,0),(138,104,0,0),(139,107,0,0),(140,108,1,0),(141,108,1,0),(142,109,1,0),(143,110,0,0),(144,111,0,0),(145,112,0,0),(146,113,0,0),(147,114,1,0),(148,115,1,0),(149,116,0,0),(150,117,0,0),(151,115,1,0),(152,118,0,0),(153,119,1,0),(154,120,1,0),(155,121,1,0),(156,120,1,0),(157,122,0,0),(158,123,0,0),(159,124,0,0),(160,125,0,0),(161,126,1,0),(162,127,0,0),(163,127,0,0),(164,128,0,0),(165,129,1,0),(166,130,1,0),(167,131,0,0),(168,132,1,0),(169,133,0,0),(170,134,0,0),(171,135,1,0),(172,135,1,0),(173,136,0,0),(174,137,0,0),(175,138,0,0),(176,139,1,0),(177,140,0,0),(178,141,1,0),(179,142,1,0),(180,143,1,0),(181,144,1,0),(182,144,1,0),(183,145,0,0),(184,146,0,0),(185,147,0,0),(186,148,0,0),(187,149,1,0),(188,150,0,0),(189,151,1,0),(190,152,0,0),(191,153,0,0),(192,153,0,0),(193,154,1,0),(194,155,1,0),(195,156,0,0),(196,157,0,0),(197,158,0,0),(198,159,0,0),(199,160,0,0),(200,161,1,0),(201,162,0,0),(202,161,1,0),(203,163,0,0),(204,164,0,0),(205,165,0,0),(206,166,0,0),(207,167,0,0),(208,168,0,0),(209,169,1,0),(210,169,1,0),(211,170,0,0),(212,171,0,0),(213,172,1,0),(214,172,1,0),(215,172,1,0),(216,172,1,0),(217,173,0,0),(218,174,0,0),(219,175,0,0),(220,176,1,0),(221,176,1,0),(222,177,0,0),(223,178,0,0),(224,179,1,0),(225,179,1,0),(226,179,1,0),(227,179,1,0),(228,180,0,0),(229,181,1,0),(230,181,1,0),(231,182,0,0),(232,183,0,0),(233,183,0,0),(234,184,0,0),(235,185,1,0),(236,185,1,0),(237,185,1,0),(238,185,1,0),(239,186,0,0),(240,186,0,0),(241,187,0,0),(242,188,1,0),(243,188,1,0),(244,189,0,0),(245,190,0,0),(246,191,0,0),(247,192,0,0),(248,193,0,0),(249,194,1,0),(250,194,1,0),(251,194,1,0),(252,194,1,0),(253,195,0,0),(254,196,1,0),(255,196,1,0),(256,196,1,0),(257,196,1,0),(258,197,0,0),(259,198,0,0),(260,199,0,0),(261,200,0,0),(262,201,0,0),(263,202,0,0),(264,203,0,0),(265,204,0,0),(266,205,0,0),(267,206,0,0),(268,207,0,0),(269,208,0,0),(270,209,0,0),(271,210,0,0),(272,211,1,0),(273,212,1,0),(274,212,1,0),(275,212,1,0),(276,212,1,0),(277,213,0,0),(278,214,0,0),(279,215,0,0),(280,215,0,0),(281,215,0,0),(282,216,1,0),(283,217,0,0),(284,218,0,0),(285,219,0,0),(286,220,1,0),(287,220,1,0),(288,220,1,0),(289,220,1,0),(290,221,0,0),(291,222,1,0),(292,222,1,0),(293,222,1,0),(294,222,1,0),(295,222,1,0),(296,222,1,0),(297,223,0,0),(298,224,0,0),(299,225,0,0),(300,226,0,0),(301,227,0,0),(302,229,1,0),(303,230,0,0),(304,231,0,0),(305,232,1,0),(306,232,1,0),(307,233,0,0),(308,234,0,0),(309,235,0,0),(310,236,1,0),(311,236,1,0),(312,236,1,0),(313,236,1,0),(314,237,1,0),(315,237,1,0),(316,238,0,0),(317,239,0,0),(318,240,0,0),(319,241,1,0),(320,241,1,0),(321,241,1,0),(322,241,1,0),(323,242,1,0),(324,242,1,0),(325,243,1,0),(326,243,1,0),(327,243,1,0),(328,243,1,0),(329,244,0,0),(330,245,0,0),(331,247,1,0),(332,247,1,0),(333,248,0,0),(334,249,0,0),(335,249,0,0),(336,249,0,0),(337,250,0,0),(338,251,0,0),(339,252,0,0),(340,253,0,0),(341,254,0,0),(342,256,1,0),(343,256,1,0),(344,257,1,0),(345,258,0,0),(346,259,0,0);
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
INSERT INTO `PermissionStrings` VALUES (4,'android.permission.ACCESS_CACHE_FILESYSTEM'),(18,'android.permission.ACCESS_COARSE_LOCATION'),(9,'android.permission.ACCESS_NETWORK_STATE'),(13,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.DELETE_CACHE_FILES'),(12,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(16,'android.permission.KILL_BACKGROUND_PROCESSES'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.RECORD_AUDIO'),(14,'android.permission.RESTART_PACKAGES'),(11,'android.permission.SET_WALLPAPER'),(17,'android.permission.VIBRATE'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(10,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=com.oziapp.gunsmokepro',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(10,NULL,NULL,'file://',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=com.oziapp.talkingbabypro',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.Oziapp.BassBall2011',NULL,NULL,NULL),(14,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=com.oziapp.talkingbabypro',NULL,NULL,NULL),(17,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=com.oziapp.coolLanding',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'market://details?id=com.oziapp.BirdHuntingPro',NULL,NULL,NULL),(23,NULL,NULL,'market://details?id=com.oziapp.BirdHuntingLite',NULL,NULL,NULL),(24,NULL,NULL,'market://details?id=com.oziapp.talkingpoochpro',NULL,NULL,NULL),(25,NULL,NULL,'market://details?id=com.oziapp.gunsmokelite',NULL,NULL,NULL),(26,NULL,NULL,'market://details?id=com.oziapp.talkingpoochlite',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'market://details?id=com.oziapp.FlightControlPro',NULL,NULL,NULL),(30,NULL,NULL,'market://details?id=com.oziapp.talkingbabylite',NULL,NULL,NULL),(31,NULL,NULL,'market://details?id=com.Oziapp.BassBall2011Pro',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'market://details?id=com.oziapp.talkingbabylite',NULL,NULL,NULL),(34,NULL,NULL,'file://',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'file://',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'',NULL,NULL,NULL),(43,NULL,NULL,'file://',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'file://',NULL,NULL,NULL),(46,NULL,NULL,'file://',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(52,NULL,NULL,'file://',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(58,NULL,NULL,'file://',NULL,NULL,NULL),(59,NULL,NULL,'file://',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(61,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(62,NULL,NULL,'file://',NULL,NULL,NULL),(63,NULL,NULL,'file://',NULL,NULL,NULL),(64,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(65,NULL,NULL,'market://search?q=pname:com.batterypoweredgames.lightracer3d',NULL,NULL,NULL),(66,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(67,NULL,NULL,'file://',NULL,NULL,NULL),(68,NULL,NULL,'file://',NULL,NULL,NULL),(69,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(70,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(71,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(72,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(73,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(74,NULL,NULL,'file://',NULL,NULL,NULL),(75,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(76,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(77,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(78,NULL,NULL,'file://',NULL,NULL,NULL),(79,NULL,NULL,'(.*)',NULL,NULL,NULL),(80,NULL,NULL,'',NULL,NULL,NULL),(81,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(82,NULL,NULL,'file://',NULL,NULL,NULL),(83,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(84,NULL,NULL,'file://',NULL,NULL,NULL),(85,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,26,9),(2,48,17),(3,228,75),(4,255,85);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,2,2),(13,2,3),(14,2,4),(15,2,5),(16,2,6),(17,2,7),(18,2,8),(19,2,9),(20,2,10),(21,2,11),(22,3,1),(23,3,5),(24,4,16),(25,3,6),(26,4,1),(27,3,9),(28,4,5),(29,3,12),(30,4,6),(31,4,9),(32,3,13),(33,3,14),(34,4,13),(35,4,15),(36,5,1),(37,5,2),(38,5,3),(39,5,4),(40,5,5),(41,5,6),(42,5,7),(43,5,8),(44,5,9),(45,5,10),(46,5,11),(47,6,17),(48,6,1),(49,6,2),(50,6,18),(51,6,3),(52,6,5),(53,6,6),(54,6,9),(55,6,10),(56,6,12),(57,6,13),(58,7,17),(59,7,1),(60,7,2),(61,7,3),(62,7,5),(63,7,6),(64,7,9),(65,7,10),(66,7,12),(67,7,13);
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

-- Dump completed on 2015-10-09  0:39:31
