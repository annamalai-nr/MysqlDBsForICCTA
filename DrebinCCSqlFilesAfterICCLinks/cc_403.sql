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
) ENGINE=InnoDB AUTO_INCREMENT=2404 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,67,55,2,NULL),(2,71,55,2,NULL),(3,131,55,2,NULL),(4,145,55,2,NULL),(5,191,55,2,NULL),(6,192,55,2,NULL),(7,91,53,2,NULL),(8,211,55,2,NULL),(9,28,37,2,NULL),(10,29,37,2,NULL),(11,13,37,2,NULL),(12,35,37,2,NULL),(13,37,37,2,NULL),(14,147,37,2,NULL),(15,121,37,2,NULL),(16,123,37,2,NULL),(17,165,37,2,NULL),(18,171,37,2,NULL),(19,172,37,2,NULL),(20,193,37,2,NULL),(21,85,37,2,NULL),(22,87,37,2,NULL),(23,90,37,2,NULL),(24,154,37,2,NULL),(25,156,37,2,NULL),(26,52,37,2,NULL),(27,53,37,2,NULL),(28,55,37,2,NULL),(29,148,37,2,NULL),(30,151,37,2,NULL),(31,161,37,2,NULL),(32,108,37,2,NULL),(33,112,37,2,NULL),(34,166,37,2,NULL),(35,209,37,2,NULL),(36,210,37,2,NULL),(37,189,37,2,NULL),(38,242,37,2,NULL),(39,243,37,2,NULL),(40,229,37,2,NULL),(41,230,37,2,NULL),(42,224,37,2,NULL),(43,225,37,2,NULL),(44,226,37,2,NULL),(45,227,37,2,NULL),(46,220,37,2,NULL),(47,221,37,2,NULL),(48,272,37,2,NULL),(49,342,37,2,NULL),(50,343,37,2,NULL),(51,314,37,2,NULL),(52,315,37,2,NULL),(53,344,37,2,NULL),(54,127,32,2,NULL),(55,198,49,2,NULL),(56,161,1,2,NULL),(57,161,2,2,NULL),(58,161,3,2,NULL),(59,161,5,2,NULL),(60,161,6,2,NULL),(61,161,11,2,NULL),(62,161,12,2,NULL),(63,161,13,2,NULL),(64,161,16,2,NULL),(65,161,21,2,NULL),(66,161,29,2,NULL),(67,161,36,2,NULL),(68,161,43,2,NULL),(69,161,46,2,NULL),(70,161,14,2,NULL),(71,161,17,2,NULL),(72,161,35,2,NULL),(73,161,39,2,NULL),(74,161,45,2,NULL),(75,161,15,2,NULL),(76,161,34,2,NULL),(77,161,38,2,NULL),(78,161,44,2,NULL),(79,161,47,2,NULL),(80,161,48,2,NULL),(81,161,49,2,NULL),(82,161,50,2,NULL),(83,161,51,2,NULL),(84,161,52,2,NULL),(85,161,53,2,NULL),(86,161,55,2,NULL),(87,161,56,2,NULL),(88,161,57,2,NULL),(89,161,73,2,NULL),(90,161,75,2,NULL),(91,161,76,2,NULL),(92,161,77,2,NULL),(93,161,81,2,NULL),(94,161,82,2,NULL),(95,161,107,2,NULL),(96,161,108,2,NULL),(97,161,83,2,NULL),(98,161,95,2,NULL),(99,161,98,2,NULL),(100,161,99,2,NULL),(101,161,100,2,NULL),(102,161,103,2,NULL),(103,161,104,2,NULL),(104,161,109,2,NULL),(105,161,110,2,NULL),(106,170,49,2,NULL),(107,205,55,2,NULL),(108,28,44,2,NULL),(109,29,44,2,NULL),(110,13,44,2,NULL),(111,35,44,2,NULL),(112,37,44,2,NULL),(113,147,44,2,NULL),(114,121,44,2,NULL),(115,123,44,2,NULL),(116,165,44,2,NULL),(117,171,44,2,NULL),(118,172,44,2,NULL),(119,193,44,2,NULL),(120,85,44,2,NULL),(121,87,44,2,NULL),(122,90,44,2,NULL),(123,28,15,2,NULL),(124,154,44,2,NULL),(125,29,15,2,NULL),(126,156,44,2,NULL),(127,13,15,2,NULL),(128,52,44,2,NULL),(129,35,15,2,NULL),(130,53,44,2,NULL),(131,37,15,2,NULL),(132,55,44,2,NULL),(133,147,15,2,NULL),(134,148,44,2,NULL),(135,121,15,2,NULL),(136,151,44,2,NULL),(137,123,15,2,NULL),(138,108,44,2,NULL),(139,165,15,2,NULL),(140,112,44,2,NULL),(141,171,15,2,NULL),(142,166,44,2,NULL),(143,172,15,2,NULL),(144,209,44,2,NULL),(145,193,15,2,NULL),(146,210,44,2,NULL),(147,85,15,2,NULL),(148,189,44,2,NULL),(149,87,15,2,NULL),(150,242,44,2,NULL),(151,90,15,2,NULL),(152,243,44,2,NULL),(153,154,15,2,NULL),(154,229,44,2,NULL),(155,156,15,2,NULL),(156,230,44,2,NULL),(157,52,15,2,NULL),(158,224,44,2,NULL),(159,53,15,2,NULL),(160,225,44,2,NULL),(161,55,15,2,NULL),(162,226,44,2,NULL),(163,148,15,2,NULL),(164,227,44,2,NULL),(165,151,15,2,NULL),(166,220,44,2,NULL),(167,108,15,2,NULL),(168,221,44,2,NULL),(169,112,15,2,NULL),(170,272,44,2,NULL),(171,166,15,2,NULL),(172,342,44,2,NULL),(173,209,15,2,NULL),(174,343,44,2,NULL),(175,210,15,2,NULL),(176,314,44,2,NULL),(177,189,15,2,NULL),(178,315,44,2,NULL),(179,242,15,2,NULL),(180,344,44,2,NULL),(181,243,15,2,NULL),(182,158,49,2,NULL),(183,229,15,2,NULL),(184,184,55,2,NULL),(185,230,15,2,NULL),(186,28,47,2,NULL),(187,224,15,2,NULL),(188,29,47,2,NULL),(189,225,15,2,NULL),(190,13,47,2,NULL),(191,226,15,2,NULL),(192,35,47,2,NULL),(193,227,15,2,NULL),(194,37,47,2,NULL),(195,220,15,2,NULL),(196,147,47,2,NULL),(197,221,15,2,NULL),(198,121,47,2,NULL),(199,272,15,2,NULL),(200,123,47,2,NULL),(201,342,15,2,NULL),(202,165,47,2,NULL),(203,343,15,2,NULL),(204,171,47,2,NULL),(205,314,15,2,NULL),(206,172,47,2,NULL),(207,315,15,2,NULL),(208,193,47,2,NULL),(209,344,15,2,NULL),(210,85,47,2,NULL),(211,36,15,2,NULL),(212,87,47,2,NULL),(213,110,15,2,NULL),(214,90,47,2,NULL),(215,84,15,2,NULL),(216,154,47,2,NULL),(217,103,15,2,NULL),(218,156,47,2,NULL),(219,77,15,2,NULL),(220,52,47,2,NULL),(221,28,34,2,NULL),(222,53,47,2,NULL),(223,29,34,2,NULL),(224,55,47,2,NULL),(225,13,34,2,NULL),(226,148,47,2,NULL),(227,35,34,2,NULL),(228,151,47,2,NULL),(229,37,34,2,NULL),(230,108,47,2,NULL),(231,147,34,2,NULL),(232,112,47,2,NULL),(233,121,34,2,NULL),(234,166,47,2,NULL),(235,123,34,2,NULL),(236,209,47,2,NULL),(237,165,34,2,NULL),(238,210,47,2,NULL),(239,171,34,2,NULL),(240,189,47,2,NULL),(241,172,34,2,NULL),(242,242,47,2,NULL),(243,193,34,2,NULL),(244,243,47,2,NULL),(245,85,34,2,NULL),(246,229,47,2,NULL),(247,87,34,2,NULL),(248,230,47,2,NULL),(249,90,34,2,NULL),(250,224,47,2,NULL),(251,154,34,2,NULL),(252,225,47,2,NULL),(253,156,34,2,NULL),(254,226,47,2,NULL),(255,52,34,2,NULL),(256,227,47,2,NULL),(257,53,34,2,NULL),(258,220,47,2,NULL),(259,55,34,2,NULL),(260,221,47,2,NULL),(261,148,34,2,NULL),(262,272,47,2,NULL),(263,151,34,2,NULL),(264,342,47,2,NULL),(265,108,34,2,NULL),(266,343,47,2,NULL),(267,112,34,2,NULL),(268,314,47,2,NULL),(269,166,34,2,NULL),(270,315,47,2,NULL),(271,209,34,2,NULL),(272,344,47,2,NULL),(273,210,34,2,NULL),(274,115,55,2,NULL),(275,189,34,2,NULL),(276,28,48,2,NULL),(277,242,34,2,NULL),(278,29,48,2,NULL),(279,243,34,2,NULL),(280,13,48,2,NULL),(281,63,43,2,NULL),(282,229,34,2,NULL),(283,35,48,2,NULL),(284,73,43,2,NULL),(285,230,34,2,NULL),(286,37,48,2,NULL),(287,76,43,2,NULL),(288,224,34,2,NULL),(289,147,48,2,NULL),(290,225,34,2,NULL),(291,79,43,2,NULL),(292,121,48,2,NULL),(293,226,34,2,NULL),(294,83,43,2,NULL),(295,123,48,2,NULL),(296,227,34,2,NULL),(297,206,43,2,NULL),(298,165,48,2,NULL),(299,220,34,2,NULL),(300,49,16,2,NULL),(301,171,48,2,NULL),(302,221,34,2,NULL),(303,126,7,2,NULL),(304,172,48,2,NULL),(305,272,34,2,NULL),(306,147,1,2,NULL),(307,193,48,2,NULL),(308,342,34,2,NULL),(309,147,2,2,NULL),(310,85,48,2,NULL),(311,343,34,2,NULL),(312,147,3,2,NULL),(313,87,48,2,NULL),(314,314,34,2,NULL),(315,147,5,2,NULL),(316,90,48,2,NULL),(317,315,34,2,NULL),(318,147,6,2,NULL),(319,154,48,2,NULL),(320,344,34,2,NULL),(321,147,11,2,NULL),(322,156,48,2,NULL),(323,28,38,2,NULL),(324,147,12,2,NULL),(325,52,48,2,NULL),(326,29,38,2,NULL),(327,147,13,2,NULL),(328,53,48,2,NULL),(329,13,38,2,NULL),(330,147,16,2,NULL),(331,55,48,2,NULL),(332,35,38,2,NULL),(333,147,21,2,NULL),(334,148,48,2,NULL),(335,37,38,2,NULL),(336,147,29,2,NULL),(337,151,48,2,NULL),(338,147,38,2,NULL),(339,147,36,2,NULL),(340,108,48,2,NULL),(341,121,38,2,NULL),(342,147,43,2,NULL),(343,112,48,2,NULL),(344,123,38,2,NULL),(345,166,48,2,NULL),(346,147,46,2,NULL),(347,165,38,2,NULL),(348,209,48,2,NULL),(349,147,14,2,NULL),(350,171,38,2,NULL),(351,210,48,2,NULL),(352,172,38,2,NULL),(353,147,17,2,NULL),(354,189,48,2,NULL),(355,193,38,2,NULL),(356,147,35,2,NULL),(357,242,48,2,NULL),(358,85,38,2,NULL),(359,243,48,2,NULL),(360,147,39,2,NULL),(361,87,38,2,NULL),(362,229,48,2,NULL),(363,147,45,2,NULL),(364,90,38,2,NULL),(365,230,48,2,NULL),(366,147,49,2,NULL),(367,154,38,2,NULL),(368,224,48,2,NULL),(369,156,38,2,NULL),(370,147,50,2,NULL),(371,225,48,2,NULL),(372,52,38,2,NULL),(373,147,51,2,NULL),(374,226,48,2,NULL),(375,53,38,2,NULL),(376,147,52,2,NULL),(377,227,48,2,NULL),(378,55,38,2,NULL),(379,147,53,2,NULL),(380,220,48,2,NULL),(381,148,38,2,NULL),(382,147,55,2,NULL),(383,221,48,2,NULL),(384,151,38,2,NULL),(385,147,56,2,NULL),(386,272,48,2,NULL),(387,108,38,2,NULL),(388,147,57,2,NULL),(389,342,48,2,NULL),(390,147,73,2,NULL),(391,112,38,2,NULL),(392,343,48,2,NULL),(393,166,38,2,NULL),(394,147,75,2,NULL),(395,314,48,2,NULL),(396,209,38,2,NULL),(397,147,76,2,NULL),(398,315,48,2,NULL),(399,210,38,2,NULL),(400,147,77,2,NULL),(401,344,48,2,NULL),(402,189,38,2,NULL),(403,147,81,2,NULL),(404,143,32,2,NULL),(405,242,38,2,NULL),(406,147,82,2,NULL),(407,177,32,2,NULL),(408,243,38,2,NULL),(409,147,107,2,NULL),(410,203,55,2,NULL),(411,229,38,2,NULL),(412,147,108,2,NULL),(413,28,49,2,NULL),(414,230,38,2,NULL),(415,147,83,2,NULL),(416,29,49,2,NULL),(417,147,95,2,NULL),(418,224,38,2,NULL),(419,13,49,2,NULL),(420,147,98,2,NULL),(421,225,38,2,NULL),(422,35,49,2,NULL),(423,147,99,2,NULL),(424,226,38,2,NULL),(425,37,49,2,NULL),(426,147,100,2,NULL),(427,227,38,2,NULL),(428,121,49,2,NULL),(429,220,38,2,NULL),(430,147,103,2,NULL),(431,123,49,2,NULL),(432,221,38,2,NULL),(433,147,104,2,NULL),(434,165,49,2,NULL),(435,272,38,2,NULL),(436,147,109,2,NULL),(437,171,49,2,NULL),(438,342,38,2,NULL),(439,147,110,2,NULL),(440,172,49,2,NULL),(441,343,38,2,NULL),(442,133,43,2,NULL),(443,193,49,2,NULL),(444,314,38,2,NULL),(445,195,16,2,NULL),(446,85,49,2,NULL),(447,315,38,2,NULL),(448,28,11,2,NULL),(449,87,49,2,NULL),(450,344,38,2,NULL),(451,29,11,2,NULL),(452,90,49,2,NULL),(453,13,11,2,NULL),(454,154,49,2,NULL),(455,35,11,2,NULL),(456,156,49,2,NULL),(457,37,11,2,NULL),(458,52,49,2,NULL),(459,121,11,2,NULL),(460,53,49,2,NULL),(461,123,11,2,NULL),(462,55,49,2,NULL),(463,165,11,2,NULL),(464,148,49,2,NULL),(465,171,11,2,NULL),(466,151,49,2,NULL),(467,172,11,2,NULL),(468,108,49,2,NULL),(469,193,11,2,NULL),(470,112,49,2,NULL),(471,85,11,2,NULL),(472,166,49,2,NULL),(473,87,11,2,NULL),(474,209,49,2,NULL),(475,90,11,2,NULL),(476,210,49,2,NULL),(477,154,11,2,NULL),(478,189,49,2,NULL),(479,156,11,2,NULL),(480,242,49,2,NULL),(481,52,11,2,NULL),(482,243,49,2,NULL),(483,53,11,2,NULL),(484,229,49,2,NULL),(485,55,11,2,NULL),(486,230,49,2,NULL),(487,148,11,2,NULL),(488,224,49,2,NULL),(489,151,11,2,NULL),(490,225,49,2,NULL),(491,108,11,2,NULL),(492,226,49,2,NULL),(493,112,11,2,NULL),(494,227,49,2,NULL),(495,166,11,2,NULL),(496,220,49,2,NULL),(497,209,11,2,NULL),(498,221,49,2,NULL),(499,210,11,2,NULL),(500,272,49,2,NULL),(501,189,11,2,NULL),(502,342,49,2,NULL),(503,242,11,2,NULL),(504,343,49,2,NULL),(505,243,11,2,NULL),(506,314,49,2,NULL),(507,229,11,2,NULL),(508,315,49,2,NULL),(509,230,11,2,NULL),(510,344,49,2,NULL),(511,224,11,2,NULL),(512,164,49,2,NULL),(513,225,11,2,NULL),(514,108,1,2,NULL),(515,226,11,2,NULL),(516,112,1,2,NULL),(517,227,11,2,NULL),(518,108,2,2,NULL),(519,220,11,2,NULL),(520,112,2,2,NULL),(521,221,11,2,NULL),(522,108,3,2,NULL),(523,272,11,2,NULL),(524,112,3,2,NULL),(525,342,11,2,NULL),(526,28,50,2,NULL),(527,343,11,2,NULL),(528,29,50,2,NULL),(529,314,11,2,NULL),(530,13,50,2,NULL),(531,315,11,2,NULL),(532,35,50,2,NULL),(533,344,11,2,NULL),(534,37,50,2,NULL),(535,47,43,2,NULL),(536,108,5,2,NULL),(537,116,16,2,NULL),(538,112,5,2,NULL),(539,28,12,2,NULL),(540,108,6,2,NULL),(541,29,12,2,NULL),(542,112,6,2,NULL),(543,13,12,2,NULL),(544,108,12,2,NULL),(545,35,12,2,NULL),(546,112,12,2,NULL),(547,37,12,2,NULL),(548,108,13,2,NULL),(549,121,12,2,NULL),(550,112,13,2,NULL),(551,123,12,2,NULL),(552,108,16,2,NULL),(553,165,12,2,NULL),(554,112,16,2,NULL),(555,171,12,2,NULL),(556,108,21,2,NULL),(557,172,12,2,NULL),(558,112,21,2,NULL),(559,193,12,2,NULL),(560,121,50,2,NULL),(561,85,12,2,NULL),(562,123,50,2,NULL),(563,87,12,2,NULL),(564,165,50,2,NULL),(565,90,12,2,NULL),(566,171,50,2,NULL),(567,154,12,2,NULL),(568,172,50,2,NULL),(569,156,12,2,NULL),(570,108,29,2,NULL),(571,52,12,2,NULL),(572,112,29,2,NULL),(573,53,12,2,NULL),(574,108,36,2,NULL),(575,55,12,2,NULL),(576,112,36,2,NULL),(577,148,12,2,NULL),(578,193,50,2,NULL),(579,151,12,2,NULL),(580,108,43,2,NULL),(581,166,12,2,NULL),(582,112,43,2,NULL),(583,209,12,2,NULL),(584,108,46,2,NULL),(585,210,12,2,NULL),(586,112,46,2,NULL),(587,189,12,2,NULL),(588,108,14,2,NULL),(589,242,12,2,NULL),(590,112,14,2,NULL),(591,243,12,2,NULL),(592,108,17,2,NULL),(593,229,12,2,NULL),(594,112,17,2,NULL),(595,230,12,2,NULL),(596,232,66,2,NULL),(597,85,50,2,NULL),(598,224,12,2,NULL),(599,87,50,2,NULL),(600,233,60,2,NULL),(601,225,12,2,NULL),(602,90,50,2,NULL),(603,28,57,2,NULL),(604,226,12,2,NULL),(605,154,50,2,NULL),(606,29,57,2,NULL),(607,227,12,2,NULL),(608,156,50,2,NULL),(609,13,57,2,NULL),(610,220,12,2,NULL),(611,52,50,2,NULL),(612,35,57,2,NULL),(613,221,12,2,NULL),(614,53,50,2,NULL),(615,37,57,2,NULL),(616,272,12,2,NULL),(617,55,50,2,NULL),(618,121,57,2,NULL),(619,148,50,2,NULL),(620,342,12,2,NULL),(621,123,57,2,NULL),(622,151,50,2,NULL),(623,343,12,2,NULL),(624,165,57,2,NULL),(625,108,35,2,NULL),(626,314,12,2,NULL),(627,171,57,2,NULL),(628,112,35,2,NULL),(629,315,12,2,NULL),(630,172,57,2,NULL),(631,108,39,2,NULL),(632,344,12,2,NULL),(633,193,57,2,NULL),(634,112,39,2,NULL),(635,89,43,2,NULL),(636,85,57,2,NULL),(637,108,45,2,NULL),(638,28,13,2,NULL),(639,87,57,2,NULL),(640,112,45,2,NULL),(641,29,13,2,NULL),(642,90,57,2,NULL),(643,108,51,2,NULL),(644,13,13,2,NULL),(645,154,57,2,NULL),(646,112,51,2,NULL),(647,35,13,2,NULL),(648,156,57,2,NULL),(649,166,50,2,NULL),(650,37,13,2,NULL),(651,52,57,2,NULL),(652,209,50,2,NULL),(653,121,13,2,NULL),(654,53,57,2,NULL),(655,210,50,2,NULL),(656,123,13,2,NULL),(657,55,57,2,NULL),(658,108,52,2,NULL),(659,165,13,2,NULL),(660,148,57,2,NULL),(661,112,52,2,NULL),(662,171,13,2,NULL),(663,151,57,2,NULL),(664,108,53,2,NULL),(665,172,13,2,NULL),(666,108,57,2,NULL),(667,112,53,2,NULL),(668,193,13,2,NULL),(669,112,57,2,NULL),(670,189,50,2,NULL),(671,85,13,2,NULL),(672,108,55,2,NULL),(673,166,57,2,NULL),(674,87,13,2,NULL),(675,112,55,2,NULL),(676,209,57,2,NULL),(677,90,13,2,NULL),(678,108,56,2,NULL),(679,210,57,2,NULL),(680,154,13,2,NULL),(681,112,56,2,NULL),(682,189,57,2,NULL),(683,156,13,2,NULL),(684,108,73,2,NULL),(685,242,57,2,NULL),(686,52,13,2,NULL),(687,112,73,2,NULL),(688,243,57,2,NULL),(689,53,13,2,NULL),(690,108,75,2,NULL),(691,229,57,2,NULL),(692,55,13,2,NULL),(693,112,75,2,NULL),(694,230,57,2,NULL),(695,148,13,2,NULL),(696,242,50,2,NULL),(697,224,57,2,NULL),(698,151,13,2,NULL),(699,243,50,2,NULL),(700,225,57,2,NULL),(701,166,13,2,NULL),(702,108,76,2,NULL),(703,226,57,2,NULL),(704,209,13,2,NULL),(705,112,76,2,NULL),(706,227,57,2,NULL),(707,210,13,2,NULL),(708,229,50,2,NULL),(709,220,57,2,NULL),(710,189,13,2,NULL),(711,230,50,2,NULL),(712,221,57,2,NULL),(713,242,13,2,NULL),(714,108,77,2,NULL),(715,272,57,2,NULL),(716,243,13,2,NULL),(717,112,77,2,NULL),(718,342,57,2,NULL),(719,229,13,2,NULL),(720,224,50,2,NULL),(721,343,57,2,NULL),(722,230,13,2,NULL),(723,225,50,2,NULL),(724,314,57,2,NULL),(725,224,13,2,NULL),(726,226,50,2,NULL),(727,315,57,2,NULL),(728,225,13,2,NULL),(729,227,50,2,NULL),(730,344,57,2,NULL),(731,226,13,2,NULL),(732,220,50,2,NULL),(733,248,66,2,NULL),(734,227,13,2,NULL),(735,221,50,2,NULL),(736,219,66,2,NULL),(737,220,13,2,NULL),(738,272,50,2,NULL),(739,279,58,2,NULL),(740,221,13,2,NULL),(741,108,81,2,NULL),(742,280,58,2,NULL),(743,272,13,2,NULL),(744,112,81,2,NULL),(745,281,58,2,NULL),(746,342,13,2,NULL),(747,108,82,2,NULL),(748,228,66,2,NULL),(749,343,13,2,NULL),(750,112,82,2,NULL),(751,266,66,2,NULL),(752,314,13,2,NULL),(753,108,107,2,NULL),(754,283,66,2,NULL),(755,315,13,2,NULL),(756,112,107,2,NULL),(757,239,66,2,NULL),(758,344,13,2,NULL),(759,108,108,2,NULL),(760,240,68,2,NULL),(761,43,7,2,NULL),(762,112,108,2,NULL),(763,217,66,2,NULL),(764,92,43,2,NULL),(765,108,83,2,NULL),(766,260,66,2,NULL),(767,174,7,2,NULL),(768,112,83,2,NULL),(769,246,81,2,NULL),(770,28,16,2,NULL),(771,108,95,2,NULL),(772,247,81,2,NULL),(773,29,16,2,NULL),(774,112,95,2,NULL),(775,28,73,2,NULL),(776,13,16,2,NULL),(777,108,98,2,NULL),(778,29,73,2,NULL),(779,35,16,2,NULL),(780,112,98,2,NULL),(781,13,73,2,NULL),(782,37,16,2,NULL),(783,108,99,2,NULL),(784,35,73,2,NULL),(785,121,16,2,NULL),(786,112,99,2,NULL),(787,37,73,2,NULL),(788,123,16,2,NULL),(789,342,50,2,NULL),(790,121,73,2,NULL),(791,165,16,2,NULL),(792,343,50,2,NULL),(793,123,73,2,NULL),(794,171,16,2,NULL),(795,108,100,2,NULL),(796,165,73,2,NULL),(797,172,16,2,NULL),(798,112,100,2,NULL),(799,171,73,2,NULL),(800,193,16,2,NULL),(801,314,50,2,NULL),(802,172,73,2,NULL),(803,85,16,2,NULL),(804,315,50,2,NULL),(805,193,73,2,NULL),(806,87,16,2,NULL),(807,344,50,2,NULL),(808,85,73,2,NULL),(809,90,16,2,NULL),(810,108,103,2,NULL),(811,87,73,2,NULL),(812,154,16,2,NULL),(813,112,103,2,NULL),(814,90,73,2,NULL),(815,156,16,2,NULL),(816,108,104,2,NULL),(817,154,73,2,NULL),(818,52,16,2,NULL),(819,112,104,2,NULL),(820,156,73,2,NULL),(821,53,16,2,NULL),(822,108,109,2,NULL),(823,52,73,2,NULL),(824,55,16,2,NULL),(825,112,109,2,NULL),(826,53,73,2,NULL),(827,148,16,2,NULL),(828,108,110,2,NULL),(829,55,73,2,NULL),(830,151,16,2,NULL),(831,112,110,2,NULL),(832,148,73,2,NULL),(833,166,16,2,NULL),(834,139,51,2,NULL),(835,151,73,2,NULL),(836,209,16,2,NULL),(837,185,49,2,NULL),(838,166,73,2,NULL),(839,210,16,2,NULL),(840,166,1,2,NULL),(841,209,73,2,NULL),(842,189,16,2,NULL),(843,210,73,2,NULL),(844,242,16,2,NULL),(845,189,73,2,NULL),(846,209,1,2,NULL),(847,243,16,2,NULL),(848,242,73,2,NULL),(849,210,1,2,NULL),(850,229,16,2,NULL),(851,243,73,2,NULL),(852,166,2,2,NULL),(853,230,16,2,NULL),(854,229,73,2,NULL),(855,209,2,2,NULL),(856,224,16,2,NULL),(857,230,73,2,NULL),(858,210,2,2,NULL),(859,225,16,2,NULL),(860,224,73,2,NULL),(861,226,16,2,NULL),(862,166,3,2,NULL),(863,225,73,2,NULL),(864,209,3,2,NULL),(865,227,16,2,NULL),(866,226,73,2,NULL),(867,210,3,2,NULL),(868,220,16,2,NULL),(869,227,73,2,NULL),(870,28,51,2,NULL),(871,221,16,2,NULL),(872,220,73,2,NULL),(873,29,51,2,NULL),(874,272,16,2,NULL),(875,221,73,2,NULL),(876,342,16,2,NULL),(877,13,51,2,NULL),(878,272,73,2,NULL),(879,343,16,2,NULL),(880,35,51,2,NULL),(881,342,73,2,NULL),(882,314,16,2,NULL),(883,37,51,2,NULL),(884,343,73,2,NULL),(885,166,5,2,NULL),(886,315,16,2,NULL),(887,314,73,2,NULL),(888,209,5,2,NULL),(889,344,16,2,NULL),(890,315,73,2,NULL),(891,210,5,2,NULL),(892,157,16,2,NULL),(893,344,73,2,NULL),(894,166,6,2,NULL),(895,121,1,2,NULL),(896,267,57,2,NULL),(897,209,6,2,NULL),(898,123,1,2,NULL),(899,222,81,2,NULL),(900,210,6,2,NULL),(901,121,2,2,NULL),(902,261,81,2,NULL),(903,123,2,2,NULL),(904,166,21,2,NULL),(905,242,1,2,NULL),(906,209,21,2,NULL),(907,121,3,2,NULL),(908,243,1,2,NULL),(909,210,21,2,NULL),(910,123,3,2,NULL),(911,242,2,2,NULL),(912,121,51,2,NULL),(913,28,21,2,NULL),(914,243,2,2,NULL),(915,123,51,2,NULL),(916,29,21,2,NULL),(917,242,3,2,NULL),(918,165,51,2,NULL),(919,13,21,2,NULL),(920,243,3,2,NULL),(921,35,21,2,NULL),(922,171,51,2,NULL),(923,28,75,2,NULL),(924,172,51,2,NULL),(925,37,21,2,NULL),(926,29,75,2,NULL),(927,166,29,2,NULL),(928,121,5,2,NULL),(929,13,75,2,NULL),(930,209,29,2,NULL),(931,123,5,2,NULL),(932,35,75,2,NULL),(933,210,29,2,NULL),(934,121,6,2,NULL),(935,37,75,2,NULL),(936,166,36,2,NULL),(937,123,6,2,NULL),(938,242,5,2,NULL),(939,209,36,2,NULL),(940,165,21,2,NULL),(941,243,5,2,NULL),(942,210,36,2,NULL),(943,171,21,2,NULL),(944,242,6,2,NULL),(945,193,51,2,NULL),(946,172,21,2,NULL),(947,243,6,2,NULL),(948,166,43,2,NULL),(949,121,29,2,NULL),(950,242,21,2,NULL),(951,209,43,2,NULL),(952,123,29,2,NULL),(953,243,21,2,NULL),(954,210,43,2,NULL),(955,121,36,2,NULL),(956,121,75,2,NULL),(957,166,46,2,NULL),(958,123,36,2,NULL),(959,123,75,2,NULL),(960,209,46,2,NULL),(961,193,21,2,NULL),(962,165,75,2,NULL),(963,210,46,2,NULL),(964,121,43,2,NULL),(965,171,75,2,NULL),(966,166,14,2,NULL),(967,123,43,2,NULL),(968,172,75,2,NULL),(969,209,14,2,NULL),(970,121,46,2,NULL),(971,242,29,2,NULL),(972,210,14,2,NULL),(973,123,46,2,NULL),(974,243,29,2,NULL),(975,166,17,2,NULL),(976,121,14,2,NULL),(977,242,36,2,NULL),(978,209,17,2,NULL),(979,123,14,2,NULL),(980,243,36,2,NULL),(981,210,17,2,NULL),(982,121,17,2,NULL),(983,193,75,2,NULL),(984,85,51,2,NULL),(985,123,17,2,NULL),(986,242,43,2,NULL),(987,87,51,2,NULL),(988,85,21,2,NULL),(989,243,43,2,NULL),(990,90,51,2,NULL),(991,87,21,2,NULL),(992,242,46,2,NULL),(993,154,51,2,NULL),(994,90,21,2,NULL),(995,243,46,2,NULL),(996,156,51,2,NULL),(997,154,21,2,NULL),(998,242,14,2,NULL),(999,52,51,2,NULL),(1000,156,21,2,NULL),(1001,243,14,2,NULL),(1002,53,51,2,NULL),(1003,52,21,2,NULL),(1004,242,17,2,NULL),(1005,55,51,2,NULL),(1006,53,21,2,NULL),(1007,243,17,2,NULL),(1008,55,21,2,NULL),(1009,148,51,2,NULL),(1010,85,75,2,NULL),(1011,151,51,2,NULL),(1012,148,21,2,NULL),(1013,87,75,2,NULL),(1014,166,35,2,NULL),(1015,151,21,2,NULL),(1016,90,75,2,NULL),(1017,209,35,2,NULL),(1018,121,35,2,NULL),(1019,154,75,2,NULL),(1020,210,35,2,NULL),(1021,123,35,2,NULL),(1022,156,75,2,NULL),(1023,121,39,2,NULL),(1024,166,39,2,NULL),(1025,52,75,2,NULL),(1026,209,39,2,NULL),(1027,123,39,2,NULL),(1028,53,75,2,NULL),(1029,121,45,2,NULL),(1030,210,39,2,NULL),(1031,55,75,2,NULL),(1032,166,45,2,NULL),(1033,123,45,2,NULL),(1034,148,75,2,NULL),(1035,209,45,2,NULL),(1036,121,52,2,NULL),(1037,151,75,2,NULL),(1038,123,52,2,NULL),(1039,210,45,2,NULL),(1040,242,35,2,NULL),(1041,121,53,2,NULL),(1042,166,52,2,NULL),(1043,243,35,2,NULL),(1044,209,52,2,NULL),(1045,123,53,2,NULL),(1046,242,39,2,NULL),(1047,210,52,2,NULL),(1048,189,21,2,NULL),(1049,243,39,2,NULL),(1050,166,53,2,NULL),(1051,121,55,2,NULL),(1052,242,45,2,NULL),(1053,209,53,2,NULL),(1054,123,55,2,NULL),(1055,243,45,2,NULL),(1056,121,56,2,NULL),(1057,210,53,2,NULL),(1058,242,51,2,NULL),(1059,123,56,2,NULL),(1060,189,51,2,NULL),(1061,243,51,2,NULL),(1062,166,55,2,NULL),(1063,121,76,2,NULL),(1064,166,75,2,NULL),(1065,209,55,2,NULL),(1066,123,76,2,NULL),(1067,209,75,2,NULL),(1068,229,21,2,NULL),(1069,210,55,2,NULL),(1070,210,75,2,NULL),(1071,230,21,2,NULL),(1072,166,56,2,NULL),(1073,242,52,2,NULL),(1074,209,56,2,NULL),(1075,121,77,2,NULL),(1076,243,52,2,NULL),(1077,123,77,2,NULL),(1078,210,56,2,NULL),(1079,242,53,2,NULL),(1080,224,21,2,NULL),(1081,166,76,2,NULL),(1082,243,53,2,NULL),(1083,209,76,2,NULL),(1084,225,21,2,NULL),(1085,189,75,2,NULL),(1086,210,76,2,NULL),(1087,226,21,2,NULL),(1088,242,55,2,NULL),(1089,229,51,2,NULL),(1090,227,21,2,NULL),(1091,243,55,2,NULL),(1092,230,51,2,NULL),(1093,220,21,2,NULL),(1094,242,56,2,NULL),(1095,166,77,2,NULL),(1096,221,21,2,NULL),(1097,243,56,2,NULL),(1098,209,77,2,NULL),(1099,272,21,2,NULL),(1100,242,76,2,NULL),(1101,210,77,2,NULL),(1102,121,81,2,NULL),(1103,243,76,2,NULL),(1104,224,51,2,NULL),(1105,123,81,2,NULL),(1106,229,75,2,NULL),(1107,225,51,2,NULL),(1108,121,82,2,NULL),(1109,230,75,2,NULL),(1110,226,51,2,NULL),(1111,123,82,2,NULL),(1112,242,77,2,NULL),(1113,227,51,2,NULL),(1114,121,107,2,NULL),(1115,243,77,2,NULL),(1116,220,51,2,NULL),(1117,123,107,2,NULL),(1118,224,75,2,NULL),(1119,221,51,2,NULL),(1120,121,108,2,NULL),(1121,225,75,2,NULL),(1122,272,51,2,NULL),(1123,123,108,2,NULL),(1124,226,75,2,NULL),(1125,121,83,2,NULL),(1126,227,75,2,NULL),(1127,166,81,2,NULL),(1128,123,83,2,NULL),(1129,220,75,2,NULL),(1130,209,81,2,NULL),(1131,121,95,2,NULL),(1132,210,81,2,NULL),(1133,221,75,2,NULL),(1134,123,95,2,NULL),(1135,272,75,2,NULL),(1136,166,82,2,NULL),(1137,121,98,2,NULL),(1138,242,81,2,NULL),(1139,209,82,2,NULL),(1140,123,98,2,NULL),(1141,210,82,2,NULL),(1142,243,81,2,NULL),(1143,121,99,2,NULL),(1144,166,107,2,NULL),(1145,242,82,2,NULL),(1146,123,99,2,NULL),(1147,209,107,2,NULL),(1148,243,82,2,NULL),(1149,342,21,2,NULL),(1150,242,107,2,NULL),(1151,210,107,2,NULL),(1152,343,21,2,NULL),(1153,166,108,2,NULL),(1154,243,107,2,NULL),(1155,121,100,2,NULL),(1156,209,108,2,NULL),(1157,242,108,2,NULL),(1158,123,100,2,NULL),(1159,210,108,2,NULL),(1160,243,108,2,NULL),(1161,314,21,2,NULL),(1162,166,83,2,NULL),(1163,242,83,2,NULL),(1164,315,21,2,NULL),(1165,243,83,2,NULL),(1166,209,83,2,NULL),(1167,344,21,2,NULL),(1168,242,95,2,NULL),(1169,210,83,2,NULL),(1170,121,103,2,NULL),(1171,243,95,2,NULL),(1172,166,95,2,NULL),(1173,123,103,2,NULL),(1174,242,98,2,NULL),(1175,209,95,2,NULL),(1176,121,104,2,NULL),(1177,243,98,2,NULL),(1178,210,95,2,NULL),(1179,123,104,2,NULL),(1180,166,98,2,NULL),(1181,242,99,2,NULL),(1182,121,109,2,NULL),(1183,209,98,2,NULL),(1184,243,99,2,NULL),(1185,123,109,2,NULL),(1186,342,75,2,NULL),(1187,210,98,2,NULL),(1188,121,110,2,NULL),(1189,343,75,2,NULL),(1190,166,99,2,NULL),(1191,123,110,2,NULL),(1192,242,100,2,NULL),(1193,209,99,2,NULL),(1194,150,26,2,NULL),(1195,210,99,2,NULL),(1196,243,100,2,NULL),(1197,183,16,2,NULL),(1198,342,51,2,NULL),(1199,314,75,2,NULL),(1200,165,1,2,NULL),(1201,315,75,2,NULL),(1202,343,51,2,NULL),(1203,171,1,2,NULL),(1204,166,100,2,NULL),(1205,344,75,2,NULL),(1206,172,1,2,NULL),(1207,209,100,2,NULL),(1208,242,103,2,NULL),(1209,165,2,2,NULL),(1210,243,103,2,NULL),(1211,210,100,2,NULL),(1212,171,2,2,NULL),(1213,242,104,2,NULL),(1214,314,51,2,NULL),(1215,172,2,2,NULL),(1216,315,51,2,NULL),(1217,243,104,2,NULL),(1218,165,3,2,NULL),(1219,344,51,2,NULL),(1220,242,109,2,NULL),(1221,171,3,2,NULL),(1222,243,109,2,NULL),(1223,166,103,2,NULL),(1224,172,3,2,NULL),(1225,209,103,2,NULL),(1226,242,110,2,NULL),(1227,165,5,2,NULL),(1228,243,110,2,NULL),(1229,210,103,2,NULL),(1230,171,5,2,NULL),(1231,166,104,2,NULL),(1232,234,75,2,NULL),(1233,172,5,2,NULL),(1234,209,104,2,NULL),(1235,229,1,2,NULL),(1236,165,6,2,NULL),(1237,230,1,2,NULL),(1238,210,104,2,NULL),(1239,171,6,2,NULL),(1240,166,109,2,NULL),(1241,229,2,2,NULL),(1242,172,6,2,NULL),(1243,230,2,2,NULL),(1244,209,109,2,NULL),(1245,165,29,2,NULL),(1246,210,109,2,NULL),(1247,229,3,2,NULL),(1248,171,29,2,NULL),(1249,166,110,2,NULL),(1250,230,3,2,NULL),(1251,172,29,2,NULL),(1252,209,110,2,NULL),(1253,28,76,2,NULL),(1254,165,36,2,NULL),(1255,210,110,2,NULL),(1256,29,76,2,NULL),(1257,171,36,2,NULL),(1258,28,52,2,NULL),(1259,13,76,2,NULL),(1260,172,36,2,NULL),(1261,29,52,2,NULL),(1262,35,76,2,NULL),(1263,165,43,2,NULL),(1264,13,52,2,NULL),(1265,37,76,2,NULL),(1266,171,43,2,NULL),(1267,35,52,2,NULL),(1268,229,5,2,NULL),(1269,172,43,2,NULL),(1270,37,52,2,NULL),(1271,230,5,2,NULL),(1272,165,46,2,NULL),(1273,229,6,2,NULL),(1274,165,52,2,NULL),(1275,171,46,2,NULL),(1276,230,6,2,NULL),(1277,171,52,2,NULL),(1278,172,46,2,NULL),(1279,172,52,2,NULL),(1280,165,76,2,NULL),(1281,165,14,2,NULL),(1282,193,52,2,NULL),(1283,171,14,2,NULL),(1284,171,76,2,NULL),(1285,85,52,2,NULL),(1286,172,14,2,NULL),(1287,172,76,2,NULL),(1288,87,52,2,NULL),(1289,165,17,2,NULL),(1290,229,29,2,NULL),(1291,90,52,2,NULL),(1292,171,17,2,NULL),(1293,230,29,2,NULL),(1294,154,52,2,NULL),(1295,172,17,2,NULL),(1296,229,36,2,NULL),(1297,156,52,2,NULL),(1298,165,35,2,NULL),(1299,230,36,2,NULL),(1300,52,52,2,NULL),(1301,171,35,2,NULL),(1302,193,76,2,NULL),(1303,53,52,2,NULL),(1304,172,35,2,NULL),(1305,229,43,2,NULL),(1306,55,52,2,NULL),(1307,165,39,2,NULL),(1308,230,43,2,NULL),(1309,148,52,2,NULL),(1310,171,39,2,NULL),(1311,229,46,2,NULL),(1312,151,52,2,NULL),(1313,172,39,2,NULL),(1314,230,46,2,NULL),(1315,189,52,2,NULL),(1316,165,45,2,NULL),(1317,229,14,2,NULL),(1318,229,52,2,NULL),(1319,171,45,2,NULL),(1320,230,14,2,NULL),(1321,30,5,2,NULL),(1322,230,52,2,NULL),(1323,172,45,2,NULL),(1324,229,17,2,NULL),(1325,31,5,2,NULL),(1326,224,52,2,NULL),(1327,230,17,2,NULL),(1328,225,52,2,NULL),(1329,165,53,2,NULL),(1330,33,5,2,NULL),(1331,85,76,2,NULL),(1332,226,52,2,NULL),(1333,171,53,2,NULL),(1334,87,76,2,NULL),(1335,227,52,2,NULL),(1336,28,1,2,NULL),(1337,172,53,2,NULL),(1338,90,76,2,NULL),(1339,220,52,2,NULL),(1340,165,55,2,NULL),(1341,154,76,2,NULL),(1342,29,1,2,NULL),(1343,221,52,2,NULL),(1344,171,55,2,NULL),(1345,156,76,2,NULL),(1346,13,1,2,NULL),(1347,272,52,2,NULL),(1348,52,76,2,NULL),(1349,172,55,2,NULL),(1350,342,52,2,NULL),(1351,35,1,2,NULL),(1352,165,56,2,NULL),(1353,53,76,2,NULL),(1354,343,52,2,NULL),(1355,171,56,2,NULL),(1356,55,76,2,NULL),(1357,314,52,2,NULL),(1358,37,1,2,NULL),(1359,172,56,2,NULL),(1360,148,76,2,NULL),(1361,315,52,2,NULL),(1362,151,76,2,NULL),(1363,193,1,2,NULL),(1364,165,77,2,NULL),(1365,344,52,2,NULL),(1366,229,35,2,NULL),(1367,85,1,2,NULL),(1368,99,55,2,NULL),(1369,171,77,2,NULL),(1370,230,35,2,NULL),(1371,87,1,2,NULL),(1372,102,55,2,NULL),(1373,172,77,2,NULL),(1374,229,39,2,NULL),(1375,90,1,2,NULL),(1376,207,55,2,NULL),(1377,165,81,2,NULL),(1378,230,39,2,NULL),(1379,28,53,2,NULL),(1380,171,81,2,NULL),(1381,154,1,2,NULL),(1382,229,45,2,NULL),(1383,29,53,2,NULL),(1384,172,81,2,NULL),(1385,230,45,2,NULL),(1386,156,1,2,NULL),(1387,165,82,2,NULL),(1388,13,53,2,NULL),(1389,171,82,2,NULL),(1390,35,53,2,NULL),(1391,229,53,2,NULL),(1392,52,1,2,NULL),(1393,172,82,2,NULL),(1394,37,53,2,NULL),(1395,230,53,2,NULL),(1396,53,1,2,NULL),(1397,165,107,2,NULL),(1398,189,76,2,NULL),(1399,193,53,2,NULL),(1400,171,107,2,NULL),(1401,55,1,2,NULL),(1402,85,53,2,NULL),(1403,229,55,2,NULL),(1404,172,107,2,NULL),(1405,87,53,2,NULL),(1406,230,55,2,NULL),(1407,148,1,2,NULL),(1408,165,108,2,NULL),(1409,90,53,2,NULL),(1410,229,56,2,NULL),(1411,171,108,2,NULL),(1412,151,1,2,NULL),(1413,154,53,2,NULL),(1414,230,56,2,NULL),(1415,172,108,2,NULL),(1416,156,53,2,NULL),(1417,229,77,2,NULL),(1418,165,83,2,NULL),(1419,189,1,2,NULL),(1420,52,53,2,NULL),(1421,230,77,2,NULL),(1422,171,83,2,NULL),(1423,224,1,2,NULL),(1424,53,53,2,NULL),(1425,224,76,2,NULL),(1426,172,83,2,NULL),(1427,55,53,2,NULL),(1428,225,76,2,NULL),(1429,225,1,2,NULL),(1430,165,95,2,NULL),(1431,148,53,2,NULL),(1432,226,76,2,NULL),(1433,171,95,2,NULL),(1434,226,1,2,NULL),(1435,151,53,2,NULL),(1436,227,76,2,NULL),(1437,172,95,2,NULL),(1438,220,76,2,NULL),(1439,189,53,2,NULL),(1440,227,1,2,NULL),(1441,165,98,2,NULL),(1442,221,76,2,NULL),(1443,224,53,2,NULL),(1444,220,1,2,NULL),(1445,171,98,2,NULL),(1446,225,53,2,NULL),(1447,272,76,2,NULL),(1448,221,1,2,NULL),(1449,172,98,2,NULL),(1450,226,53,2,NULL),(1451,229,81,2,NULL),(1452,165,99,2,NULL),(1453,272,1,2,NULL),(1454,227,53,2,NULL),(1455,230,81,2,NULL),(1456,171,99,2,NULL),(1457,342,1,2,NULL),(1458,220,53,2,NULL),(1459,229,82,2,NULL),(1460,172,99,2,NULL),(1461,221,53,2,NULL),(1462,230,82,2,NULL),(1463,343,1,2,NULL),(1464,165,100,2,NULL),(1465,272,53,2,NULL),(1466,229,107,2,NULL),(1467,314,1,2,NULL),(1468,171,100,2,NULL),(1469,342,53,2,NULL),(1470,230,107,2,NULL),(1471,315,1,2,NULL),(1472,172,100,2,NULL),(1473,343,53,2,NULL),(1474,229,108,2,NULL),(1475,165,103,2,NULL),(1476,344,1,2,NULL),(1477,314,53,2,NULL),(1478,230,108,2,NULL),(1479,171,103,2,NULL),(1480,3,1,2,NULL),(1481,315,53,2,NULL),(1482,229,83,2,NULL),(1483,172,103,2,NULL),(1484,5,1,2,NULL),(1485,230,83,2,NULL),(1486,344,53,2,NULL),(1487,165,104,2,NULL),(1488,7,1,2,NULL),(1489,124,49,2,NULL),(1490,229,95,2,NULL),(1491,171,104,2,NULL),(1492,14,1,2,NULL),(1493,189,2,2,NULL),(1494,230,95,2,NULL),(1495,172,104,2,NULL),(1496,34,5,2,NULL),(1497,189,3,2,NULL),(1498,229,98,2,NULL),(1499,165,109,2,NULL),(1500,189,5,2,NULL),(1501,230,98,2,NULL),(1502,46,5,2,NULL),(1503,171,109,2,NULL),(1504,229,99,2,NULL),(1505,189,6,2,NULL),(1506,172,109,2,NULL),(1507,28,2,2,NULL),(1508,230,99,2,NULL),(1509,165,110,2,NULL),(1510,29,2,2,NULL),(1511,189,29,2,NULL),(1512,342,76,2,NULL),(1513,189,36,2,NULL),(1514,171,110,2,NULL),(1515,13,2,2,NULL),(1516,343,76,2,NULL),(1517,189,43,2,NULL),(1518,35,2,2,NULL),(1519,229,100,2,NULL),(1520,172,110,2,NULL),(1521,189,46,2,NULL),(1522,37,2,2,NULL),(1523,230,100,2,NULL),(1524,28,29,2,NULL),(1525,189,14,2,NULL),(1526,193,2,2,NULL),(1527,314,76,2,NULL),(1528,189,17,2,NULL),(1529,29,29,2,NULL),(1530,85,2,2,NULL),(1531,315,76,2,NULL),(1532,189,35,2,NULL),(1533,13,29,2,NULL),(1534,87,2,2,NULL),(1535,344,76,2,NULL),(1536,189,39,2,NULL),(1537,35,29,2,NULL),(1538,229,103,2,NULL),(1539,90,2,2,NULL),(1540,189,45,2,NULL),(1541,230,103,2,NULL),(1542,37,29,2,NULL),(1543,154,2,2,NULL),(1544,189,55,2,NULL),(1545,229,104,2,NULL),(1546,156,2,2,NULL),(1547,193,29,2,NULL),(1548,189,56,2,NULL),(1549,85,29,2,NULL),(1550,230,104,2,NULL),(1551,52,2,2,NULL),(1552,189,77,2,NULL),(1553,87,29,2,NULL),(1554,229,109,2,NULL),(1555,53,2,2,NULL),(1556,189,81,2,NULL),(1557,230,109,2,NULL),(1558,90,29,2,NULL),(1559,55,2,2,NULL),(1560,189,82,2,NULL),(1561,154,29,2,NULL),(1562,229,110,2,NULL),(1563,148,2,2,NULL),(1564,189,107,2,NULL),(1565,156,29,2,NULL),(1566,230,110,2,NULL),(1567,151,2,2,NULL),(1568,189,108,2,NULL),(1569,278,81,2,NULL),(1570,52,29,2,NULL),(1571,224,2,2,NULL),(1572,189,83,2,NULL),(1573,53,29,2,NULL),(1574,225,2,2,NULL),(1575,189,95,2,NULL),(1576,226,2,2,NULL),(1577,55,29,2,NULL),(1578,227,2,2,NULL),(1579,189,98,2,NULL),(1580,220,2,2,NULL),(1581,148,29,2,NULL),(1582,224,3,2,NULL),(1583,189,99,2,NULL),(1584,221,2,2,NULL),(1585,151,29,2,NULL),(1586,225,3,2,NULL),(1587,189,100,2,NULL),(1588,272,2,2,NULL),(1589,226,3,2,NULL),(1590,224,29,2,NULL),(1591,189,103,2,NULL),(1592,342,2,2,NULL),(1593,227,3,2,NULL),(1594,189,104,2,NULL),(1595,225,29,2,NULL),(1596,343,2,2,NULL),(1597,28,77,2,NULL),(1598,226,29,2,NULL),(1599,189,109,2,NULL),(1600,314,2,2,NULL),(1601,29,77,2,NULL),(1602,227,29,2,NULL),(1603,189,110,2,NULL),(1604,315,2,2,NULL),(1605,13,77,2,NULL),(1606,28,55,2,NULL),(1607,220,29,2,NULL),(1608,344,2,2,NULL),(1609,35,77,2,NULL),(1610,29,55,2,NULL),(1611,221,29,2,NULL),(1612,25,2,2,NULL),(1613,37,77,2,NULL),(1614,13,55,2,NULL),(1615,272,29,2,NULL),(1616,13,3,2,NULL),(1617,224,5,2,NULL),(1618,35,55,2,NULL),(1619,342,29,2,NULL),(1620,35,3,2,NULL),(1621,225,5,2,NULL),(1622,37,55,2,NULL),(1623,343,29,2,NULL),(1624,37,3,2,NULL),(1625,226,5,2,NULL),(1626,314,29,2,NULL),(1627,28,5,2,NULL),(1628,193,55,2,NULL),(1629,227,5,2,NULL),(1630,315,29,2,NULL),(1631,85,55,2,NULL),(1632,29,5,2,NULL),(1633,224,6,2,NULL),(1634,87,55,2,NULL),(1635,344,29,2,NULL),(1636,28,6,2,NULL),(1637,225,6,2,NULL),(1638,90,55,2,NULL),(1639,162,43,2,NULL),(1640,29,6,2,NULL),(1641,226,6,2,NULL),(1642,154,55,2,NULL),(1643,163,43,2,NULL),(1644,28,36,2,NULL),(1645,227,6,2,NULL),(1646,156,55,2,NULL),(1647,197,43,2,NULL),(1648,29,36,2,NULL),(1649,52,55,2,NULL),(1650,13,36,2,NULL),(1651,224,36,2,NULL),(1652,193,3,2,NULL),(1653,53,55,2,NULL),(1654,35,36,2,NULL),(1655,225,36,2,NULL),(1656,28,43,2,NULL),(1657,55,55,2,NULL),(1658,37,36,2,NULL),(1659,226,36,2,NULL),(1660,29,43,2,NULL),(1661,148,55,2,NULL),(1662,193,36,2,NULL),(1663,227,36,2,NULL),(1664,28,46,2,NULL),(1665,151,55,2,NULL),(1666,85,36,2,NULL),(1667,193,77,2,NULL),(1668,29,46,2,NULL),(1669,87,36,2,NULL),(1670,224,55,2,NULL),(1671,224,43,2,NULL),(1672,28,14,2,NULL),(1673,90,36,2,NULL),(1674,225,55,2,NULL),(1675,225,43,2,NULL),(1676,29,14,2,NULL),(1677,154,36,2,NULL),(1678,226,55,2,NULL),(1679,226,43,2,NULL),(1680,28,17,2,NULL),(1681,156,36,2,NULL),(1682,227,55,2,NULL),(1683,227,43,2,NULL),(1684,29,17,2,NULL),(1685,52,36,2,NULL),(1686,220,55,2,NULL),(1687,224,46,2,NULL),(1688,85,3,2,NULL),(1689,53,36,2,NULL),(1690,221,55,2,NULL),(1691,225,46,2,NULL),(1692,87,3,2,NULL),(1693,55,36,2,NULL),(1694,272,55,2,NULL),(1695,226,46,2,NULL),(1696,90,3,2,NULL),(1697,148,36,2,NULL),(1698,342,55,2,NULL),(1699,227,46,2,NULL),(1700,154,3,2,NULL),(1701,151,36,2,NULL),(1702,343,55,2,NULL),(1703,224,14,2,NULL),(1704,156,3,2,NULL),(1705,314,55,2,NULL),(1706,225,14,2,NULL),(1707,52,3,2,NULL),(1708,220,36,2,NULL),(1709,315,55,2,NULL),(1710,226,14,2,NULL),(1711,221,36,2,NULL),(1712,53,3,2,NULL),(1713,344,55,2,NULL),(1714,272,36,2,NULL),(1715,227,14,2,NULL),(1716,55,3,2,NULL),(1717,82,55,2,NULL),(1718,342,36,2,NULL),(1719,224,17,2,NULL),(1720,148,3,2,NULL),(1721,149,55,2,NULL),(1722,343,36,2,NULL),(1723,225,17,2,NULL),(1724,151,3,2,NULL),(1725,160,55,2,NULL),(1726,314,36,2,NULL),(1727,226,17,2,NULL),(1728,28,35,2,NULL),(1729,28,56,2,NULL),(1730,315,36,2,NULL),(1731,227,17,2,NULL),(1732,29,35,2,NULL),(1733,29,56,2,NULL),(1734,85,77,2,NULL),(1735,344,36,2,NULL),(1736,28,39,2,NULL),(1737,13,56,2,NULL),(1738,87,77,2,NULL),(1739,169,16,2,NULL),(1740,29,39,2,NULL),(1741,35,56,2,NULL),(1742,90,77,2,NULL),(1743,28,45,2,NULL),(1744,193,5,2,NULL),(1745,37,56,2,NULL),(1746,193,6,2,NULL),(1747,154,77,2,NULL),(1748,29,45,2,NULL),(1749,193,56,2,NULL),(1750,156,77,2,NULL),(1751,193,43,2,NULL),(1752,85,56,2,NULL),(1753,193,46,2,NULL),(1754,52,77,2,NULL),(1755,87,56,2,NULL),(1756,220,3,2,NULL),(1757,193,14,2,NULL),(1758,53,77,2,NULL),(1759,90,56,2,NULL),(1760,193,17,2,NULL),(1761,55,77,2,NULL),(1762,221,3,2,NULL),(1763,154,56,2,NULL),(1764,193,35,2,NULL),(1765,148,77,2,NULL),(1766,272,3,2,NULL),(1767,156,56,2,NULL),(1768,193,39,2,NULL),(1769,151,77,2,NULL),(1770,28,81,2,NULL),(1771,52,56,2,NULL),(1772,193,45,2,NULL),(1773,224,35,2,NULL),(1774,29,81,2,NULL),(1775,53,56,2,NULL),(1776,225,35,2,NULL),(1777,28,82,2,NULL),(1778,55,56,2,NULL),(1779,193,81,2,NULL),(1780,226,35,2,NULL),(1781,29,82,2,NULL),(1782,148,56,2,NULL),(1783,193,82,2,NULL),(1784,227,35,2,NULL),(1785,28,107,2,NULL),(1786,151,56,2,NULL),(1787,193,107,2,NULL),(1788,224,39,2,NULL),(1789,29,107,2,NULL),(1790,193,108,2,NULL),(1791,224,56,2,NULL),(1792,225,39,2,NULL),(1793,28,108,2,NULL),(1794,193,83,2,NULL),(1795,225,56,2,NULL),(1796,226,39,2,NULL),(1797,29,108,2,NULL),(1798,193,95,2,NULL),(1799,226,56,2,NULL),(1800,227,39,2,NULL),(1801,28,83,2,NULL),(1802,193,98,2,NULL),(1803,227,56,2,NULL),(1804,224,45,2,NULL),(1805,29,83,2,NULL),(1806,193,99,2,NULL),(1807,220,56,2,NULL),(1808,225,45,2,NULL),(1809,28,95,2,NULL),(1810,193,100,2,NULL),(1811,221,56,2,NULL),(1812,226,45,2,NULL),(1813,29,95,2,NULL),(1814,193,103,2,NULL),(1815,272,56,2,NULL),(1816,227,45,2,NULL),(1817,28,98,2,NULL),(1818,193,104,2,NULL),(1819,342,56,2,NULL),(1820,29,98,2,NULL),(1821,193,109,2,NULL),(1822,343,56,2,NULL),(1823,28,99,2,NULL),(1824,193,110,2,NULL),(1825,314,56,2,NULL),(1826,29,99,2,NULL),(1827,220,77,2,NULL),(1828,13,43,2,NULL),(1829,315,56,2,NULL),(1830,221,77,2,NULL),(1831,342,3,2,NULL),(1832,35,43,2,NULL),(1833,344,56,2,NULL),(1834,272,77,2,NULL),(1835,343,3,2,NULL),(1836,37,43,2,NULL),(1837,224,81,2,NULL),(1838,28,100,2,NULL),(1839,85,43,2,NULL),(1840,225,81,2,NULL),(1841,29,100,2,NULL),(1842,87,43,2,NULL),(1843,226,81,2,NULL),(1844,314,3,2,NULL),(1845,90,43,2,NULL),(1846,227,81,2,NULL),(1847,315,3,2,NULL),(1848,154,43,2,NULL),(1849,224,82,2,NULL),(1850,344,3,2,NULL),(1851,156,43,2,NULL),(1852,225,82,2,NULL),(1853,28,103,2,NULL),(1854,52,43,2,NULL),(1855,226,82,2,NULL),(1856,29,103,2,NULL),(1857,53,43,2,NULL),(1858,227,82,2,NULL),(1859,28,104,2,NULL),(1860,55,43,2,NULL),(1861,224,107,2,NULL),(1862,29,104,2,NULL),(1863,148,43,2,NULL),(1864,225,107,2,NULL),(1865,28,109,2,NULL),(1866,151,43,2,NULL),(1867,226,107,2,NULL),(1868,29,109,2,NULL),(1869,220,43,2,NULL),(1870,227,107,2,NULL),(1871,28,110,2,NULL),(1872,221,43,2,NULL),(1873,224,108,2,NULL),(1874,29,110,2,NULL),(1875,272,43,2,NULL),(1876,225,108,2,NULL),(1877,4,2,2,NULL),(1878,342,43,2,NULL),(1879,226,108,2,NULL),(1880,32,4,2,NULL),(1881,343,43,2,NULL),(1882,227,108,2,NULL),(1883,13,5,2,NULL),(1884,314,43,2,NULL),(1885,224,83,2,NULL),(1886,35,5,2,NULL),(1887,315,43,2,NULL),(1888,37,5,2,NULL),(1889,225,83,2,NULL),(1890,344,43,2,NULL),(1891,13,6,2,NULL),(1892,226,83,2,NULL),(1893,66,43,2,NULL),(1894,35,6,2,NULL),(1895,227,83,2,NULL),(1896,167,43,2,NULL),(1897,224,95,2,NULL),(1898,37,6,2,NULL),(1899,204,43,2,NULL),(1900,225,95,2,NULL),(1901,13,46,2,NULL),(1902,35,46,2,NULL),(1903,226,95,2,NULL),(1904,37,46,2,NULL),(1905,227,95,2,NULL),(1906,13,14,2,NULL),(1907,85,46,2,NULL),(1908,224,98,2,NULL),(1909,35,14,2,NULL),(1910,87,46,2,NULL),(1911,225,98,2,NULL),(1912,37,14,2,NULL),(1913,90,46,2,NULL),(1914,13,17,2,NULL),(1915,226,98,2,NULL),(1916,154,46,2,NULL),(1917,227,98,2,NULL),(1918,35,17,2,NULL),(1919,156,46,2,NULL),(1920,224,99,2,NULL),(1921,37,17,2,NULL),(1922,52,46,2,NULL),(1923,225,99,2,NULL),(1924,13,35,2,NULL),(1925,53,46,2,NULL),(1926,226,99,2,NULL),(1927,35,35,2,NULL),(1928,55,46,2,NULL),(1929,227,99,2,NULL),(1930,37,35,2,NULL),(1931,148,46,2,NULL),(1932,342,77,2,NULL),(1933,13,39,2,NULL),(1934,151,46,2,NULL),(1935,343,77,2,NULL),(1936,35,39,2,NULL),(1937,220,46,2,NULL),(1938,224,100,2,NULL),(1939,37,39,2,NULL),(1940,221,46,2,NULL),(1941,225,100,2,NULL),(1942,13,45,2,NULL),(1943,272,46,2,NULL),(1944,35,45,2,NULL),(1945,226,100,2,NULL),(1946,342,46,2,NULL),(1947,37,45,2,NULL),(1948,227,100,2,NULL),(1949,343,46,2,NULL),(1950,314,77,2,NULL),(1951,314,46,2,NULL),(1952,13,81,2,NULL),(1953,315,77,2,NULL),(1954,315,46,2,NULL),(1955,35,81,2,NULL),(1956,344,77,2,NULL),(1957,344,46,2,NULL),(1958,37,81,2,NULL),(1959,224,103,2,NULL),(1960,13,82,2,NULL),(1961,225,103,2,NULL),(1962,35,82,2,NULL),(1963,226,103,2,NULL),(1964,37,82,2,NULL),(1965,227,103,2,NULL),(1966,13,107,2,NULL),(1967,224,104,2,NULL),(1968,35,107,2,NULL),(1969,225,104,2,NULL),(1970,37,107,2,NULL),(1971,226,104,2,NULL),(1972,13,108,2,NULL),(1973,227,104,2,NULL),(1974,35,108,2,NULL),(1975,224,109,2,NULL),(1976,37,108,2,NULL),(1977,225,109,2,NULL),(1978,13,83,2,NULL),(1979,226,109,2,NULL),(1980,35,83,2,NULL),(1981,227,109,2,NULL),(1982,37,83,2,NULL),(1983,224,110,2,NULL),(1984,13,95,2,NULL),(1985,225,110,2,NULL),(1986,35,95,2,NULL),(1987,226,110,2,NULL),(1988,37,95,2,NULL),(1989,227,110,2,NULL),(1990,13,98,2,NULL),(1991,218,75,2,NULL),(1992,35,98,2,NULL),(1993,220,5,2,NULL),(1994,37,98,2,NULL),(1995,221,5,2,NULL),(1996,13,99,2,NULL),(1997,220,6,2,NULL),(1998,35,99,2,NULL),(1999,221,6,2,NULL),(2000,37,99,2,NULL),(2001,13,100,2,NULL),(2002,220,14,2,NULL),(2003,35,100,2,NULL),(2004,221,14,2,NULL),(2005,37,100,2,NULL),(2006,220,17,2,NULL),(2007,13,103,2,NULL),(2008,221,17,2,NULL),(2009,35,103,2,NULL),(2010,220,35,2,NULL),(2011,37,103,2,NULL),(2012,221,35,2,NULL),(2013,13,104,2,NULL),(2014,220,39,2,NULL),(2015,35,104,2,NULL),(2016,221,39,2,NULL),(2017,37,104,2,NULL),(2018,220,45,2,NULL),(2019,13,109,2,NULL),(2020,221,45,2,NULL),(2021,35,109,2,NULL),(2022,220,81,2,NULL),(2023,37,109,2,NULL),(2024,221,81,2,NULL),(2025,13,110,2,NULL),(2026,220,82,2,NULL),(2027,35,110,2,NULL),(2028,221,82,2,NULL),(2029,37,110,2,NULL),(2030,220,107,2,NULL),(2031,85,5,2,NULL),(2032,221,107,2,NULL),(2033,87,5,2,NULL),(2034,220,108,2,NULL),(2035,90,5,2,NULL),(2036,221,108,2,NULL),(2037,154,5,2,NULL),(2038,220,83,2,NULL),(2039,156,5,2,NULL),(2040,221,83,2,NULL),(2041,52,5,2,NULL),(2042,220,95,2,NULL),(2043,53,5,2,NULL),(2044,221,95,2,NULL),(2045,55,5,2,NULL),(2046,220,98,2,NULL),(2047,148,5,2,NULL),(2048,221,98,2,NULL),(2049,151,5,2,NULL),(2050,220,99,2,NULL),(2051,221,99,2,NULL),(2052,272,5,2,NULL),(2053,220,100,2,NULL),(2054,342,5,2,NULL),(2055,221,100,2,NULL),(2056,343,5,2,NULL),(2057,220,103,2,NULL),(2058,314,5,2,NULL),(2059,221,103,2,NULL),(2060,315,5,2,NULL),(2061,220,104,2,NULL),(2062,344,5,2,NULL),(2063,221,104,2,NULL),(2064,1,5,2,NULL),(2065,220,109,2,NULL),(2066,2,5,2,NULL),(2067,221,109,2,NULL),(2068,42,5,2,NULL),(2069,220,110,2,NULL),(2070,85,6,2,NULL),(2071,221,110,2,NULL),(2072,87,6,2,NULL),(2073,270,81,2,NULL),(2074,90,6,2,NULL),(2075,272,6,2,NULL),(2076,154,6,2,NULL),(2077,272,14,2,NULL),(2078,156,6,2,NULL),(2079,272,17,2,NULL),(2080,52,6,2,NULL),(2081,272,35,2,NULL),(2082,53,6,2,NULL),(2083,272,39,2,NULL),(2084,55,6,2,NULL),(2085,272,45,2,NULL),(2086,148,6,2,NULL),(2087,272,81,2,NULL),(2088,151,6,2,NULL),(2089,272,82,2,NULL),(2090,272,107,2,NULL),(2091,342,6,2,NULL),(2092,272,108,2,NULL),(2093,343,6,2,NULL),(2094,272,83,2,NULL),(2095,314,6,2,NULL),(2096,272,95,2,NULL),(2097,315,6,2,NULL),(2098,272,98,2,NULL),(2099,344,6,2,NULL),(2100,272,99,2,NULL),(2101,272,100,2,NULL),(2102,272,103,2,NULL),(2103,272,104,2,NULL),(2104,272,109,2,NULL),(2105,272,110,2,NULL),(2106,85,81,2,NULL),(2107,87,81,2,NULL),(2108,90,81,2,NULL),(2109,154,81,2,NULL),(2110,156,81,2,NULL),(2111,52,81,2,NULL),(2112,53,81,2,NULL),(2113,55,81,2,NULL),(2114,148,81,2,NULL),(2115,151,81,2,NULL),(2116,342,81,2,NULL),(2117,343,81,2,NULL),(2118,314,81,2,NULL),(2119,315,81,2,NULL),(2120,344,81,2,NULL),(2121,245,81,2,NULL),(2122,271,81,2,NULL),(2123,277,81,2,NULL),(2124,85,82,2,NULL),(2125,87,82,2,NULL),(2126,90,82,2,NULL),(2127,154,82,2,NULL),(2128,156,82,2,NULL),(2129,52,82,2,NULL),(2130,53,82,2,NULL),(2131,55,82,2,NULL),(2132,148,82,2,NULL),(2133,151,82,2,NULL),(2134,342,82,2,NULL),(2135,343,82,2,NULL),(2136,314,82,2,NULL),(2137,315,82,2,NULL),(2138,344,82,2,NULL),(2139,85,107,2,NULL),(2140,87,107,2,NULL),(2141,90,107,2,NULL),(2142,154,107,2,NULL),(2143,156,107,2,NULL),(2144,52,107,2,NULL),(2145,53,107,2,NULL),(2146,55,107,2,NULL),(2147,148,107,2,NULL),(2148,151,107,2,NULL),(2149,342,107,2,NULL),(2150,343,107,2,NULL),(2151,314,107,2,NULL),(2152,315,107,2,NULL),(2153,344,107,2,NULL),(2154,85,108,2,NULL),(2155,87,108,2,NULL),(2156,90,108,2,NULL),(2157,154,108,2,NULL),(2158,156,108,2,NULL),(2159,52,108,2,NULL),(2160,53,108,2,NULL),(2161,55,108,2,NULL),(2162,148,108,2,NULL),(2163,151,108,2,NULL),(2164,342,108,2,NULL),(2165,343,108,2,NULL),(2166,314,108,2,NULL),(2167,315,108,2,NULL),(2168,344,108,2,NULL),(2169,85,14,2,NULL),(2170,87,14,2,NULL),(2171,90,14,2,NULL),(2172,154,14,2,NULL),(2173,156,14,2,NULL),(2174,52,14,2,NULL),(2175,53,14,2,NULL),(2176,55,14,2,NULL),(2177,148,14,2,NULL),(2178,151,14,2,NULL),(2179,342,14,2,NULL),(2180,343,14,2,NULL),(2181,314,14,2,NULL),(2182,315,14,2,NULL),(2183,344,14,2,NULL),(2184,85,17,2,NULL),(2185,87,17,2,NULL),(2186,90,17,2,NULL),(2187,154,17,2,NULL),(2188,156,17,2,NULL),(2189,52,17,2,NULL),(2190,53,17,2,NULL),(2191,55,17,2,NULL),(2192,148,17,2,NULL),(2193,151,17,2,NULL),(2194,342,17,2,NULL),(2195,343,17,2,NULL),(2196,314,17,2,NULL),(2197,315,17,2,NULL),(2198,344,17,2,NULL),(2199,85,35,2,NULL),(2200,87,35,2,NULL),(2201,90,35,2,NULL),(2202,154,35,2,NULL),(2203,156,35,2,NULL),(2204,85,39,2,NULL),(2205,87,39,2,NULL),(2206,90,39,2,NULL),(2207,154,39,2,NULL),(2208,156,39,2,NULL),(2209,85,45,2,NULL),(2210,87,45,2,NULL),(2211,90,45,2,NULL),(2212,154,45,2,NULL),(2213,156,45,2,NULL),(2214,85,83,2,NULL),(2215,87,83,2,NULL),(2216,90,83,2,NULL),(2217,154,83,2,NULL),(2218,156,83,2,NULL),(2219,85,95,2,NULL),(2220,87,95,2,NULL),(2221,90,95,2,NULL),(2222,154,95,2,NULL),(2223,156,95,2,NULL),(2224,85,98,2,NULL),(2225,87,98,2,NULL),(2226,90,98,2,NULL),(2227,154,98,2,NULL),(2228,156,98,2,NULL),(2229,85,99,2,NULL),(2230,87,99,2,NULL),(2231,90,99,2,NULL),(2232,154,99,2,NULL),(2233,156,99,2,NULL),(2234,85,100,2,NULL),(2235,87,100,2,NULL),(2236,52,83,2,NULL),(2237,90,100,2,NULL),(2238,53,83,2,NULL),(2239,154,100,2,NULL),(2240,55,83,2,NULL),(2241,156,100,2,NULL),(2242,148,83,2,NULL),(2243,85,103,2,NULL),(2244,151,83,2,NULL),(2245,87,103,2,NULL),(2246,90,103,2,NULL),(2247,342,83,2,NULL),(2248,154,103,2,NULL),(2249,343,83,2,NULL),(2250,156,103,2,NULL),(2251,314,83,2,NULL),(2252,85,104,2,NULL),(2253,315,83,2,NULL),(2254,87,104,2,NULL),(2255,344,83,2,NULL),(2256,90,104,2,NULL),(2257,329,93,2,NULL),(2258,154,104,2,NULL),(2259,290,93,2,NULL),(2260,156,104,2,NULL),(2261,338,91,2,NULL),(2262,85,109,2,NULL),(2263,87,109,2,NULL),(2264,337,92,2,NULL),(2265,90,109,2,NULL),(2266,303,86,2,NULL),(2267,154,109,2,NULL),(2268,309,89,2,NULL),(2269,156,109,2,NULL),(2270,299,84,2,NULL),(2271,85,110,2,NULL),(2272,334,89,2,NULL),(2273,87,110,2,NULL),(2274,335,90,2,NULL),(2275,90,110,2,NULL),(2276,336,88,2,NULL),(2277,154,110,2,NULL),(2278,341,87,2,NULL),(2279,156,110,2,NULL),(2280,298,103,2,NULL),(2281,52,35,2,NULL),(2282,307,103,2,NULL),(2283,53,35,2,NULL),(2284,55,35,2,NULL),(2285,52,95,2,NULL),(2286,148,35,2,NULL),(2287,53,95,2,NULL),(2288,151,35,2,NULL),(2289,55,95,2,NULL),(2290,52,39,2,NULL),(2291,148,95,2,NULL),(2292,53,39,2,NULL),(2293,151,95,2,NULL),(2294,55,39,2,NULL),(2295,148,39,2,NULL),(2296,342,95,2,NULL),(2297,151,39,2,NULL),(2298,343,95,2,NULL),(2299,52,45,2,NULL),(2300,314,95,2,NULL),(2301,53,45,2,NULL),(2302,315,95,2,NULL),(2303,55,45,2,NULL),(2304,344,95,2,NULL),(2305,148,45,2,NULL),(2306,340,83,2,NULL),(2307,151,45,2,NULL),(2308,300,103,2,NULL),(2309,346,103,2,NULL),(2310,52,98,2,NULL),(2311,53,98,2,NULL),(2312,55,98,2,NULL),(2313,148,98,2,NULL),(2314,151,98,2,NULL),(2315,342,98,2,NULL),(2316,52,99,2,NULL),(2317,343,98,2,NULL),(2318,53,99,2,NULL),(2319,314,98,2,NULL),(2320,55,99,2,NULL),(2321,315,98,2,NULL),(2322,148,99,2,NULL),(2323,344,98,2,NULL),(2324,151,99,2,NULL),(2325,333,98,2,NULL),(2326,52,100,2,NULL),(2327,53,100,2,NULL),(2328,342,35,2,NULL),(2329,343,35,2,NULL),(2330,55,100,2,NULL),(2331,342,39,2,NULL),(2332,148,100,2,NULL),(2333,151,100,2,NULL),(2334,343,39,2,NULL),(2335,52,103,2,NULL),(2336,342,45,2,NULL),(2337,343,45,2,NULL),(2338,53,103,2,NULL),(2339,55,103,2,NULL),(2340,148,103,2,NULL),(2341,151,103,2,NULL),(2342,342,100,2,NULL),(2343,52,104,2,NULL),(2344,343,100,2,NULL),(2345,53,104,2,NULL),(2346,314,99,2,NULL),(2347,55,104,2,NULL),(2348,315,99,2,NULL),(2349,148,104,2,NULL),(2350,344,99,2,NULL),(2351,151,104,2,NULL),(2352,342,103,2,NULL),(2353,52,109,2,NULL),(2354,343,103,2,NULL),(2355,53,109,2,NULL),(2356,342,104,2,NULL),(2357,55,109,2,NULL),(2358,343,104,2,NULL),(2359,148,109,2,NULL),(2360,342,109,2,NULL),(2361,151,109,2,NULL),(2362,343,109,2,NULL),(2363,52,110,2,NULL),(2364,342,110,2,NULL),(2365,53,110,2,NULL),(2366,343,110,2,NULL),(2367,55,110,2,NULL),(2368,308,103,2,NULL),(2369,148,110,2,NULL),(2370,151,110,2,NULL),(2371,314,100,2,NULL),(2372,146,17,2,NULL),(2373,315,100,2,NULL),(2374,314,35,2,NULL),(2375,344,100,2,NULL),(2376,315,35,2,NULL),(2377,301,101,2,NULL),(2378,344,35,2,NULL),(2379,304,98,2,NULL),(2380,93,22,2,NULL),(2381,314,39,2,NULL),(2382,315,39,2,NULL),(2383,344,39,2,NULL),(2384,344,39,2,NULL),(2385,314,45,2,NULL),(2386,75,24,2,NULL),(2387,315,45,2,NULL),(2388,344,45,2,NULL),(2389,314,103,2,NULL),(2390,315,103,2,NULL),(2391,344,103,2,NULL),(2392,314,104,2,NULL),(2393,315,104,2,NULL),(2394,344,104,2,NULL),(2395,314,109,2,NULL),(2396,315,109,2,NULL),(2397,344,109,2,NULL),(2398,314,110,2,NULL),(2399,315,110,2,NULL),(2400,344,110,2,NULL),(2401,297,103,2,NULL),(2402,317,103,2,NULL),(2403,345,103,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:22
