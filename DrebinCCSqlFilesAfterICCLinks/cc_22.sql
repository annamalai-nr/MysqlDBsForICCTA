-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_22
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (18,'(.*)'),(19,'NULL-CONSTANT'),(4,'android.intent.action.ACTION_POWER_CONNECTED'),(15,'android.intent.action.BATTERY_LOW'),(12,'android.intent.action.BATTERY_OKAY'),(6,'android.intent.action.BOOT_COMPLETED'),(26,'android.intent.action.CHOOSER'),(30,'android.intent.action.DIAL'),(17,'android.intent.action.EDIT'),(16,'android.intent.action.GET_CONTENT'),(10,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(27,'android.intent.action.MEDIA_UNMOUNTED'),(20,'android.intent.action.SENDTO'),(11,'android.intent.action.UMS_CONNECTED'),(3,'android.intent.action.UMS_DISCONNECTED'),(9,'android.intent.action.USER_PRESENT'),(21,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(2,'android.net.conn.MEDIA_NOFS'),(7,'android.net.wifi.PICK_WIFI_WORK'),(28,'android.provider.MediaStore.RECORD_SOUND'),(13,'android.provider.Telephony.SIM_FULL'),(5,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(31,'com.android.music.musicservicecommand'),(23,'com.android.vending.billing.IN_APP_NOTIFY'),(24,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(25,'com.android.vending.billing.RESPONSE_CODE'),(22,'com.zimperium.zanti.plugins.DETECT'),(29,'lstar.mdl.intent.action.DOWNLOAD_MOVE');
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
INSERT INTO `Applications` VALUES (1,'com.application.downloader',1),(2,'com.keji.danti646',32),(3,'com.keji.danti643',32),(4,'com.keji.danti402',27),(5,'com.keji.danti706',32),(6,'net.lucky.star.mrtm',19),(7,'com.zimperium.zanti',9);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.OPENABLE');
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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.application.downloader.DownloadActivity'),(2,2,'com.keji.danti.MainA'),(3,2,'com.keji.danti.Boutique'),(4,2,'com.keji.danti.Background'),(5,2,'com.keji.danti.Lists'),(6,4,'com.keji.danti.MainA'),(7,2,'com.keji.danti.History'),(8,3,'com.keji.danti.MainA'),(9,2,'com.keji.danti.TextDetail'),(10,2,'com.keji.danti.Setting'),(11,4,'com.keji.danti.Boutique'),(12,3,'com.keji.danti.Boutique'),(13,2,'com.android.view.custom.BaseAActivity'),(14,4,'com.keji.danti.Background'),(15,3,'com.keji.danti.Background'),(16,2,'com.android.view.custom.FirstAActivity'),(17,4,'com.keji.danti.Lists'),(18,3,'com.keji.danti.Lists'),(19,5,'com.keji.danti.MainA'),(20,2,'com.android.view.custom.SecondAActivity'),(21,4,'com.keji.danti.History'),(22,3,'com.keji.danti.History'),(23,2,'com.android.view.custom.ThirdAActivity'),(24,4,'com.keji.danti.TextDetail'),(25,3,'com.keji.danti.TextDetail'),(26,2,'com.android.view.custom.FourthAActivity'),(27,5,'com.keji.danti.Boutique'),(28,4,'com.keji.danti.Setting'),(29,3,'com.keji.danti.Setting'),(30,2,'com.android.view.custom.FirstAService'),(31,4,'com.android.battery.BalckActivity2'),(32,5,'com.keji.danti.Background'),(33,3,'com.android.view.custom.BaseAActivity'),(34,2,'com.android.view.custom.SecondAService'),(35,5,'com.keji.danti.Lists'),(36,4,'com.android.battery.BalckActivity'),(37,3,'com.android.view.custom.FirstAActivity'),(38,2,'com.android.view.custom.ThirdAService'),(39,5,'com.keji.danti.History'),(40,4,'com.android.battery.KillThreeSixZero'),(41,3,'com.android.view.custom.SecondAActivity'),(42,2,'com.android.view.custom.FourthAService'),(43,5,'com.keji.danti.TextDetail'),(44,4,'com.android.battery.BridgeProvider'),(45,3,'com.android.view.custom.ThirdAActivity'),(46,5,'com.keji.danti.Setting'),(47,2,'com.android.view.custom.BaseABroadcastReceiver'),(48,3,'com.android.view.custom.FourthAActivity'),(49,4,'com.android.battery.AdSmsService'),(50,5,'com.android.view.custom.BaseAActivity'),(51,3,'com.android.view.custom.FirstAService'),(52,5,'com.android.view.custom.FirstAActivity'),(53,4,'com.android.battery.PhoneService'),(54,3,'com.android.view.custom.SecondAService'),(55,5,'com.android.view.custom.SecondAActivity'),(56,4,'com.android.battery.BaseBroadcastReceiver'),(57,3,'com.android.view.custom.ThirdAService'),(58,5,'com.android.view.custom.ThirdAActivity'),(59,3,'com.android.view.custom.FourthAService'),(60,5,'com.android.view.custom.FourthAActivity'),(61,3,'com.android.view.custom.BaseABroadcastReceiver'),(62,5,'com.android.view.custom.FirstAService'),(63,5,'com.android.view.custom.SecondAService'),(64,5,'com.android.view.custom.ThirdAService'),(65,5,'com.android.view.custom.FourthAService'),(66,5,'com.android.view.custom.BaseABroadcastReceiver'),(67,6,'net.lucky.star.mrtm.HomeActivity'),(68,6,'net.lucky.star.mrtm.SearchActivity'),(69,6,'net.lucky.star.mrtm.LibraryActivity'),(70,6,'net.lucky.star.mrtm.editor.RingtoneSelectActivity'),(71,6,'net.lucky.star.mrtm.editor.RingtoneEditActivity'),(72,6,'net.lucky.star.mrtm.editor.ChooseContactActivity'),(73,6,'com.millennialmedia.android.MMAdViewOverlayActivity'),(74,6,'com.millennialmedia.android.VideoPlayer'),(75,6,'net.lucky.star.mrtm.DownloadingActivity'),(76,6,'com.admob.android.ads.AdMobActivity'),(77,6,'net.lucky.star.mrtm.srv.DownloadService'),(78,6,'net.lucky.star.mrtm.SystemPlus'),(79,6,'net.lucky.star.mrtm.MainRun'),(80,6,'net.lucky.star.mrtm.srv.DownloadReceiver'),(81,6,'net.lucky.star.mrtm.ForAlarm'),(82,6,'net.lucky.star.mrtm.db.DownloadedProvider'),(83,6,'net.lucky.star.mrtm.db.DownloadListProvider'),(84,2,'com.sec.android.providers.drm.Onion'),(85,2,'com.keji.danti.a.sv'),(86,2,'com.keji.danti.ph'),(87,2,'com.keji.danti.a.ar'),(88,7,'com.zimperium.zanti.Anti'),(89,2,'com.keji.danti.a.ao'),(90,7,'com.zimperium.zanti.mainpage.TargetView'),(91,7,'com.zimperium.zanti.mainpage.Networks'),(92,7,'com.zimperium.zanti.CrackerPlugin.Cracker'),(93,7,'com.zimperium.zanti.SelectTarget'),(94,7,'com.zimperium.zanti.ShowScannerHosts'),(95,7,'com.zimperium.zanti.httpserver.HttpServerController'),(96,7,'com.zimperium.zanti.httpserver.HttpServerOptions'),(97,7,'com.zimperium.zanti.WifiMonitor'),(98,7,'com.zimperium.zanti.Traceroute'),(99,7,'com.zimperium.zanti.Preferences'),(100,7,'com.zimperium.zanti.Connect'),(101,7,'com.zimperium.zanti.PenTestInfoActivity'),(102,2,'com.keji.danti.a.sy'),(103,4,'com.keji.danti.a.a'),(104,7,'com.zimperium.zanti.Tutorial'),(105,7,'com.zimperium.zanti.about.About'),(106,3,'com.keji.danti.a.ao'),(107,7,'com.zimperium.zanti.OptionsActivity'),(108,7,'com.zimperium.zanti.ScanResultsActivity'),(109,4,'com.android.battery.b.pa'),(110,5,'com.keji.danti.ph'),(111,7,'com.zimperium.zanti.httpserver.FolderList'),(112,7,'com.zimperium.zanti.analyze.AnalyzeActivity'),(113,3,'com.keji.danti.a.sy'),(114,7,'com.zimperium.zanti.CrackerPlugin.CrackerOptions'),(115,7,'com.zimperium.zanti.ReplaceImgPlugin.ReplaceImg'),(116,7,'com.zimperium.zanti.SnifferPlugin.Sniffer'),(117,3,'com.keji.danti.a.sv'),(118,7,'com.zimperium.zanti.SnifferPlugin.AntiWebActivity'),(119,7,'com.zimperium.zanti.MITMPlugin.Mitm'),(120,4,'com.keji.danti.a.ao'),(121,7,'com.zimperium.zanti.MITMPlugin.SelectTarget2Activity'),(122,5,'com.keji.danti.a.ar'),(123,7,'com.zimperium.zanti.MITMPlugin.MitmOptions'),(124,3,'com.sec.android.providers.drm.Onion'),(125,7,'com.zimperium.zanti.DoSPlugin.DoS'),(126,7,'com.zimperium.zanti.PenetratePlugin.Penetrate'),(127,7,'com.zimperium.zanti.AttackPlugin.AttackPlugin'),(128,5,'com.keji.danti.a.ao'),(129,4,'com.keji.danti.a.st'),(130,3,'com.keji.danti.a.ar'),(131,7,'com.zimperium.zanti.credits.AntiLoginScreen'),(132,7,'com.zimperium.zanti.credits.AntiTermsScreen'),(133,5,'com.keji.danti.a.sv'),(134,4,'com.keji.danti.pf'),(135,7,'com.zimperium.zanti.credits.AntiAutoLoginScreen'),(136,7,'com.zimperium.zanti.credits.BetaLockedOutActivity'),(137,7,'com.zimperium.zanti.credits.AntiUpdateCreditsScreen'),(138,5,'com.keji.danti.a.sy'),(139,7,'com.zimperium.zanti.samba.SambaBrowser'),(140,3,'com.keji.danti.ph'),(141,7,'com.zimperium.zanti.update.AntiUpdateActivity'),(142,7,'com.zimperium.zanti.anticredit.AntiCreditActivity'),(143,5,'com.sec.android.providers.drm.Onion'),(144,7,'com.zimperium.zanti.anticredit.AntiUpdateCreditsActivity'),(145,7,'com.zimperium.zanti.credits.AntiUpdatePasswordScreen'),(146,7,'com.zimperium.zanti.credits.AntiFailedLoginScreen'),(147,7,'com.zimperium.zanti.credits.AntiResetPasswordScreen'),(148,7,'com.zimperium.zanti.antidetect.AntiDetect'),(149,7,'com.zimperium.zanti.antidetect.AntiDetectResult'),(150,4,'com.keji.danti.a.ar'),(151,7,'com.zimperium.zanti.httpserver.HttpServerService'),(152,7,'com.zimperium.zanti.ShellPool'),(153,7,'com.zimperium.zanti.update.AntiUpdateService'),(154,7,'com.zimperium.zanti.anticredit.BillingService'),(155,7,'com.zimperium.zanti.ReplaceImgPlugin.PluginAnnouncer'),(156,7,'com.zimperium.zanti.SnifferPlugin.PluginAnnouncer'),(157,7,'com.zimperium.zanti.MITMPlugin.PluginAnnouncer'),(158,7,'com.zimperium.zanti.PenetratePlugin.PluginAnnouncer'),(159,7,'com.zimperium.zanti.DoSPlugin.PluginAnnouncer'),(160,7,'com.zimperium.zanti.CrackerPlugin.PluginAnnouncer'),(161,7,'com.zimperium.zanti.AttackPlugin.PluginAnnouncer'),(162,7,'com.zimperium.zanti.anticredit.BillingReceiver'),(163,7,'com.zimperium.zanti.update.AntiUpdateBootHandler'),(164,6,'net.lucky.star.mrtm.srv.DownloadService$UpdateThread'),(165,6,'net.lucky.star.mrtm.LibraryActivity$3'),(166,6,'net.lucky.star.mrtm.HomeActivity$3'),(167,6,'net.lucky.star.mrtm.srv.DownloadThread'),(168,6,'net.lucky.star.mrtm.srv.DownloadNotification'),(169,6,'com.admob.android.ads.q'),(170,6,'net.lucky.star.mrtm.BaseAActivity'),(171,6,'net.lucky.star.mrtm.DownloadingActivity$1'),(172,6,'net.lucky.star.mrtm.LibraryActivity$1'),(173,6,'net.lucky.star.mrtm.HomeActivity$1'),(174,6,'net.lucky.star.mrtm.HomeActivity$5'),(175,6,'net.lucky.star.mrtm.DownloadingActivity$3'),(176,6,'net.lucky.star.mrtm.HomeActivity$4'),(177,6,'net.lucky.star.mrtm.HomeActivity$2'),(178,6,'com.millennialmedia.android.MillennialMediaView'),(179,6,'net.lucky.star.mrtm.srv.DownloadService$MyMediaScannerConnection');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,9,'index'),(2,5,'appsec'),(3,47,'PID'),(4,9,'notSaveDate'),(5,4,'data'),(6,15,'data'),(7,14,'data'),(8,35,'appsec'),(9,18,'appsec'),(10,56,'pdus'),(11,43,'notSaveDate'),(12,61,'PID'),(13,24,'appsec'),(14,17,'appsec'),(15,25,'index'),(16,24,'notSaveDate'),(17,56,'APP_UID'),(18,31,'data'),(19,25,'notSaveDate'),(20,24,'index'),(21,66,'PID'),(22,43,'index'),(23,76,'cbo'),(24,76,'json'),(25,76,'ap'),(26,73,'transitionTime'),(27,76,'o'),(28,74,'videoAd'),(29,74,'isCachedAd'),(30,74,'logSet'),(31,76,'oi'),(32,76,'t'),(33,76,'tr'),(34,76,'u'),(35,76,'au'),(36,76,'sc'),(37,74,'shouldShowBottomBar'),(38,73,'shouldResizeOverlay'),(39,76,'b'),(40,76,'sd'),(41,76,'sin'),(42,76,'cs'),(43,73,'shouldShowTitlebar'),(44,76,'skd'),(45,73,'overlayTitle'),(46,76,'c'),(47,76,'nosk'),(48,76,'or'),(49,76,'sku'),(50,73,'shouldShowBottomBar'),(51,73,'canAccelerate'),(52,76,'si'),(53,76,'su'),(54,73,'shouldEnableBottomBar'),(55,76,'rd'),(56,76,'ru'),(57,76,'$'),(58,76,'int'),(59,76,'p'),(60,73,'overlayTransition'),(61,76,'mi'),(62,76,'a'),(63,74,'videoPosition'),(64,74,'cached'),(65,76,'s'),(66,73,'shouldMakeOverlayTransparent'),(67,76,'msm'),(68,76,'ad'),(69,71,'was_get_content_intent');
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,28,'a',0,NULL,NULL),(28,27,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,39,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,44,'s',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,42,'s',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,50,'a',0,NULL,NULL),(50,49,'s',0,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,53,'s',0,NULL,NULL),(53,52,'a',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'s',0,NULL,NULL),(63,63,'s',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',1,NULL,NULL),(71,71,'a',1,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'s',0,NULL,NULL),(78,78,'s',0,NULL,NULL),(79,79,'s',0,NULL,NULL),(80,80,'r',0,NULL,NULL),(81,81,'r',0,NULL,NULL),(82,82,'p',0,NULL,NULL),(83,83,'p',0,NULL,NULL),(84,88,'a',0,NULL,NULL),(85,90,'a',0,NULL,NULL),(86,91,'a',0,NULL,NULL),(87,92,'a',0,NULL,NULL),(88,93,'a',0,NULL,NULL),(89,94,'a',0,NULL,NULL),(90,95,'a',0,NULL,NULL),(91,96,'a',0,NULL,NULL),(92,97,'a',0,NULL,NULL),(93,98,'a',0,NULL,NULL),(94,99,'a',0,NULL,NULL),(95,100,'a',0,NULL,NULL),(96,101,'a',0,NULL,NULL),(97,104,'a',0,NULL,NULL),(98,105,'a',0,NULL,NULL),(99,107,'a',0,NULL,NULL),(100,108,'a',0,NULL,NULL),(101,111,'a',0,NULL,NULL),(102,112,'a',0,NULL,NULL),(103,114,'a',0,NULL,NULL),(104,115,'a',0,NULL,NULL),(105,116,'a',0,NULL,NULL),(106,118,'a',0,NULL,NULL),(107,119,'a',0,NULL,NULL),(108,121,'a',0,NULL,NULL),(109,123,'a',0,NULL,NULL),(110,125,'a',0,NULL,NULL),(111,126,'a',0,NULL,NULL),(112,127,'a',0,NULL,NULL),(113,131,'a',1,NULL,NULL),(114,132,'a',0,NULL,NULL),(115,135,'a',0,NULL,NULL),(116,136,'a',0,NULL,NULL),(117,137,'a',0,NULL,NULL),(118,139,'a',0,NULL,NULL),(119,141,'a',0,NULL,NULL),(120,142,'a',0,NULL,NULL),(121,144,'a',0,NULL,NULL),(122,145,'a',0,NULL,NULL),(123,146,'a',0,NULL,NULL),(124,147,'a',0,NULL,NULL),(125,148,'a',0,NULL,NULL),(126,149,'a',0,NULL,NULL),(127,151,'s',0,NULL,NULL),(128,152,'s',0,NULL,NULL),(129,153,'s',0,NULL,NULL),(130,154,'s',0,NULL,NULL),(131,155,'r',1,NULL,NULL),(132,156,'r',1,NULL,NULL),(133,157,'r',1,NULL,NULL),(134,158,'r',1,NULL,NULL),(135,159,'r',1,NULL,NULL),(136,160,'r',1,NULL,NULL),(137,161,'r',1,NULL,NULL),(138,162,'r',1,NULL,NULL),(139,163,'r',1,NULL,NULL),(140,80,'r',1,NULL,NULL),(141,81,'r',1,NULL,NULL),(142,171,'r',1,NULL,NULL),(143,172,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,47),(2,2,5),(3,3,5),(4,4,9),(5,5,9),(6,6,3),(7,7,2),(8,8,13),(9,9,10),(10,10,6),(11,11,12),(12,12,56),(13,13,35),(14,14,29),(15,15,6),(16,16,49),(17,17,18),(18,18,24),(19,19,43),(20,20,61),(21,22,17),(22,21,19),(23,23,25),(24,24,35),(25,25,17),(26,26,8),(27,27,46),(28,28,56),(29,29,18),(30,30,66),(31,31,56),(32,32,33),(33,34,43),(34,33,56),(35,35,25),(36,36,27),(37,37,28),(38,38,11),(39,39,24),(40,40,83),(41,41,77),(42,42,80),(43,43,69),(44,44,71),(45,44,67),(46,45,80),(47,46,80),(48,47,77),(49,48,77),(50,49,71),(51,50,82),(52,51,77),(53,52,70),(54,53,67),(55,54,83),(56,55,77),(57,56,77),(58,57,71),(59,57,70),(60,58,80),(61,59,74),(62,59,71),(63,60,83),(64,61,67),(65,61,71),(66,62,77),(67,63,77),(68,64,69),(69,65,77),(70,66,74),(71,66,71),(72,67,80),(73,68,75),(74,69,67),(75,69,71),(76,70,83),(77,71,69),(78,72,75),(79,73,69),(80,74,72),(81,75,71),(82,76,82),(83,77,80),(84,78,81),(85,79,75),(86,80,75),(87,81,69),(88,82,70),(89,83,77),(90,84,77),(91,85,69),(92,86,67),(93,86,71),(94,87,69),(95,88,71),(96,88,67),(97,89,82),(98,90,77),(99,91,80),(100,92,77),(101,93,71),(102,93,74),(103,94,71),(104,95,67),(105,96,83),(106,97,71),(107,97,74),(108,98,77),(109,99,77),(110,100,77),(111,101,74),(112,101,71),(113,102,69),(114,103,80),(115,104,77),(116,105,83),(117,106,71),(118,106,74);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,84,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(2,85,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(3,86,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(4,87,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(5,87,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(6,89,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(7,89,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(8,13,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(9,102,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(10,103,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(11,106,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(12,109,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(13,110,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(14,113,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(15,6,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(16,50,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(17,117,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(18,120,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(19,122,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(20,124,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(21,128,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(22,129,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(23,130,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(24,133,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(25,134,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(26,106,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(27,138,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(28,109,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(29,140,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(30,143,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(31,109,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(32,33,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(33,109,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(34,122,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(35,130,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(36,150,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(37,128,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(38,103,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(39,120,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(40,83,'<net.lucky.star.mrtm.db.DownloadListProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',54,'p',0),(41,164,'<net.lucky.star.mrtm.srv.DownloadService$UpdateThread: void run()>',60,'p',NULL),(42,80,'<net.lucky.star.mrtm.srv.DownloadReceiver: void onReceive(android.content.Context,android.content.Intent)>',114,'p',NULL),(43,165,'<net.lucky.star.mrtm.LibraryActivity$3: void onClick(android.content.DialogInterface,int)>',39,'a',NULL),(44,166,'<net.lucky.star.mrtm.HomeActivity$3: void onClick(android.view.View)>',6,'a',NULL),(45,80,'<net.lucky.star.mrtm.srv.DownloadReceiver: void onReceive(android.content.Context,android.content.Intent)>',18,'p',0),(46,80,'<net.lucky.star.mrtm.srv.DownloadReceiver: void onReceive(android.content.Context,android.content.Intent)>',149,'p',NULL),(47,167,'<net.lucky.star.mrtm.srv.DownloadThread: void run()>',670,'p',NULL),(48,168,'<net.lucky.star.mrtm.srv.DownloadNotification: void updateActiveNotification()>',10,'p',NULL),(49,169,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(50,82,'<net.lucky.star.mrtm.db.DownloadedProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',37,'p',0),(51,77,'<net.lucky.star.mrtm.srv.DownloadService: boolean insertDownload(android.database.Cursor,int,boolean,boolean,long,boolean)>',71,'p',NULL),(52,70,'<net.lucky.star.mrtm.editor.RingtoneSelectActivity: void startRingdroidEditor()>',11,'a',NULL),(53,170,'<net.lucky.star.mrtm.BaseAActivity: void b()>',17,'s',NULL),(54,83,'<net.lucky.star.mrtm.db.DownloadListProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',33,'s',NULL),(55,77,'<net.lucky.star.mrtm.srv.DownloadService: boolean insertDownload(android.database.Cursor,int,boolean,boolean,long,boolean)>',99,'p',NULL),(56,167,'<net.lucky.star.mrtm.srv.DownloadThread: void run()>',751,'p',NULL),(57,70,'<net.lucky.star.mrtm.editor.RingtoneSelectActivity: void onRecord()>',7,'a',NULL),(58,80,'<net.lucky.star.mrtm.srv.DownloadReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(59,74,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',118,'a',NULL),(60,83,'<net.lucky.star.mrtm.db.DownloadListProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',43,'p',0),(61,173,'<net.lucky.star.mrtm.HomeActivity$1: void onClick(android.view.View)>',6,'a',NULL),(62,167,'<net.lucky.star.mrtm.srv.DownloadThread: void run()>',863,'p',NULL),(63,168,'<net.lucky.star.mrtm.srv.DownloadNotification: void updateCompletedNotification()>',12,'p',NULL),(64,165,'<net.lucky.star.mrtm.LibraryActivity$3: void onClick(android.content.DialogInterface,int)>',20,'p',NULL),(65,167,'<net.lucky.star.mrtm.srv.DownloadThread: void run()>',685,'p',NULL),(66,74,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',82,'a',NULL),(67,80,'<net.lucky.star.mrtm.srv.DownloadReceiver: void onReceive(android.content.Context,android.content.Intent)>',60,'p',0),(68,75,'<net.lucky.star.mrtm.DownloadingActivity: void onCreate(android.os.Bundle)>',18,'s',NULL),(69,174,'<net.lucky.star.mrtm.HomeActivity$5: void onClick(android.view.View)>',7,'a',NULL),(70,83,'<net.lucky.star.mrtm.db.DownloadListProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',59,'s',NULL),(71,69,'<net.lucky.star.mrtm.LibraryActivity: void deleteSong(int)>',39,'p',NULL),(72,75,'<net.lucky.star.mrtm.DownloadingActivity: android.database.Cursor getDownloadingCursor(android.content.AsyncQueryHandler)>',18,'p',NULL),(73,165,'<net.lucky.star.mrtm.LibraryActivity$3: void onClick(android.content.DialogInterface,int)>',84,'a',NULL),(74,72,'<net.lucky.star.mrtm.editor.ChooseContactActivity: void assignRingtoneToContact()>',15,'p',NULL),(75,71,'<net.lucky.star.mrtm.editor.RingtoneEditActivity: void onCreate(android.os.Bundle)>',21,'a',NULL),(76,82,'<net.lucky.star.mrtm.db.DownloadedProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',46,'p',0),(77,80,'<net.lucky.star.mrtm.srv.DownloadReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'p',NULL),(78,81,'<net.lucky.star.mrtm.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(79,175,'<net.lucky.star.mrtm.DownloadingActivity$3: void onClick(android.content.DialogInterface,int)>',15,'p',NULL),(80,175,'<net.lucky.star.mrtm.DownloadingActivity$3: void onClick(android.content.DialogInterface,int)>',43,'p',NULL),(81,165,'<net.lucky.star.mrtm.LibraryActivity$3: void onClick(android.content.DialogInterface,int)>',64,'p',NULL),(82,70,'<net.lucky.star.mrtm.editor.RingtoneSelectActivity: void onDelete()>',44,'p',NULL),(83,167,'<net.lucky.star.mrtm.srv.DownloadThread: void notifyThroughIntent()>',19,'r',NULL),(84,77,'<net.lucky.star.mrtm.srv.DownloadService: void removeSpuriousFiles()>',14,'p',NULL),(85,69,'<net.lucky.star.mrtm.LibraryActivity: android.app.Dialog onCreateDialog(int)>',22,'p',NULL),(86,176,'<net.lucky.star.mrtm.HomeActivity$4: void onClick(android.view.View)>',6,'a',NULL),(87,69,'<net.lucky.star.mrtm.LibraryActivity: android.database.Cursor getMyDownloadsCursor(android.content.AsyncQueryHandler)>',17,'p',NULL),(88,177,'<net.lucky.star.mrtm.HomeActivity$2: void onClick(android.view.View)>',6,'a',NULL),(89,82,'<net.lucky.star.mrtm.db.DownloadedProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',49,'p',0),(90,168,'<net.lucky.star.mrtm.srv.DownloadNotification: void updateCompletedNotification()>',77,'p',0),(91,80,'<net.lucky.star.mrtm.srv.DownloadReceiver: void onReceive(android.content.Context,android.content.Intent)>',101,'p',NULL),(92,77,'<net.lucky.star.mrtm.srv.DownloadService: void onCreate()>',11,'p',NULL),(93,74,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',110,'a',NULL),(94,71,'<net.lucky.star.mrtm.editor.RingtoneEditActivity: void onDestroy()>',22,'p',NULL),(95,170,'<net.lucky.star.mrtm.BaseAActivity: void c()>',6,'s',NULL),(96,83,'<net.lucky.star.mrtm.db.DownloadListProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',46,'p',0),(97,178,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(98,179,'<net.lucky.star.mrtm.srv.DownloadService$MyMediaScannerConnection: boolean scanFile(android.database.Cursor,int)>',22,'p',NULL),(99,167,'<net.lucky.star.mrtm.srv.DownloadThread: void notifyThroughDatabase(int,boolean,int,int,boolean,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(100,77,'<net.lucky.star.mrtm.srv.DownloadService: boolean insertDownload(android.database.Cursor,int,boolean,boolean,long,boolean)>',121,'p',NULL),(101,74,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',123,'a',NULL),(102,69,'<net.lucky.star.mrtm.LibraryActivity: void deleteSong(int)>',11,'p',NULL),(103,80,'<net.lucky.star.mrtm.srv.DownloadReceiver: void onReceive(android.content.Context,android.content.Intent)>',48,'a',NULL),(104,77,'<net.lucky.star.mrtm.srv.DownloadService: boolean updateDownload(android.database.Cursor,int,boolean,boolean,long,boolean)>',92,'p',NULL),(105,83,'<net.lucky.star.mrtm.db.DownloadListProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',26,'s',NULL),(106,74,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',90,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,18),(2,2,19),(3,6,20),(4,7,21),(5,9,19),(6,10,18),(7,13,21),(8,17,21),(9,18,19),(10,19,18),(11,21,20),(12,22,20),(13,23,18),(14,24,19),(15,27,20),(16,34,18),(17,36,19),(18,37,19),(19,38,18),(20,43,21),(21,44,21),(22,46,26),(23,47,26),(24,48,26),(25,49,26),(26,50,26),(27,51,26),(28,52,26),(29,53,26),(30,54,21),(31,55,17),(32,58,17),(33,64,16),(34,66,26),(35,67,26),(36,68,26),(37,69,26),(38,70,26),(39,71,26),(40,72,26),(41,73,26),(42,74,28),(43,76,29),(44,79,30),(45,81,31),(46,82,21),(47,83,21),(48,85,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/keji/danti/TextDetail'),(2,4,'com/keji/danti/TextDetail'),(3,5,'com/keji/danti/Setting'),(4,8,'com.android.settings.WirelessSettings'),(5,11,'com/keji/danti/Background'),(6,12,'com.android.settings.WirelessSettings'),(7,14,'com/android/battery/PhoneService'),(8,15,'com/keji/danti/TextDetail'),(9,16,'com/keji/danti/Background'),(10,17,'com.android.packageinstaller.PackageInstallerActivity'),(11,20,'com/keji/danti/TextDetail'),(12,26,'com.android.settings.WirelessSettings'),(13,25,'com/keji/danti/TextDetail'),(14,28,'com/keji/danti/TextDetail'),(15,29,'com/keji/danti/TextDetail'),(16,30,'com.android.settings.WirelessSettings'),(17,31,'com/keji/danti/Background'),(18,32,'com/android/battery/KillThreeSixZero'),(19,33,'com/keji/danti/TextDetail'),(20,35,'com/android/battery/BridgeProvider'),(21,40,'com/android/battery/AdSmsService'),(22,39,'com/keji/danti/Setting'),(23,41,'com/keji/danti/Setting'),(24,42,'com/keji/danti/Background'),(25,45,'com/keji/danti/Setting'),(26,55,'net/lucky/star/mrtm/editor/RingtoneEditActivity'),(27,56,'net/lucky/star/mrtm/SystemPlus'),(28,57,'net/lucky/star/mrtm/srv/DownloadService'),(29,58,'net/lucky/star/mrtm/editor/RingtoneEditActivity'),(30,59,'net/lucky/star/mrtm/srv/DownloadService'),(31,60,'com/millennialmedia/android/MMAdViewOverlayActivity'),(32,61,'net/lucky/star/mrtm/SearchActivity'),(33,62,'com/millennialmedia/android/MMAdViewOverlayActivity'),(34,63,'net/lucky/star/mrtm/srv/DownloadService'),(35,64,'net/lucky/star/mrtm/editor/RingtoneSelectActivity'),(36,65,'net/lucky/star/mrtm/srv/DownloadService'),(37,75,'net/lucky/star/mrtm/MainRun'),(38,76,'net/lucky/star/mrtm/srv/DownloadReceiver'),(39,77,'net/lucky/star/mrtm/DownloadingActivity'),(40,78,'net/lucky/star/mrtm/LibraryActivity'),(41,80,'com.android.battery.BridgeProvider'),(42,83,'net/lucky/star/mrtm/DownloadingActivity'),(43,84,'net/lucky/star/mrtm/srv/DownloadService');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,6,2),(3,7,3),(4,13,4),(5,17,5),(6,21,6),(7,22,7),(8,27,8),(9,39,9),(10,41,10),(11,43,11),(12,44,12),(13,45,13),(14,54,16),(15,55,21),(16,58,24),(17,60,25),(18,62,30),(19,76,40),(20,79,46),(21,82,50),(22,83,52),(23,85,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'index'),(2,4,'index'),(3,6,'sms_body'),(4,9,'packageName'),(5,10,'packageName'),(6,15,'index'),(7,18,'packageName'),(8,20,'index'),(9,19,'packageName'),(10,21,'sms_body'),(11,22,'sms_body'),(12,25,'index'),(13,27,'sms_body'),(14,28,'index'),(15,29,'index'),(16,33,'index'),(17,37,'packageName'),(18,38,'packageName'),(19,46,'android.intent.extra.INTENT'),(20,47,'android.intent.extra.INTENT'),(21,48,'android.intent.extra.TITLE'),(22,48,'android.intent.extra.INTENT'),(23,49,'android.intent.extra.INTENT'),(24,50,'android.intent.extra.TITLE'),(25,50,'android.intent.extra.INTENT'),(26,51,'android.intent.extra.INTENT'),(27,52,'android.intent.extra.TITLE'),(28,52,'android.intent.extra.INTENT'),(29,53,'android.intent.extra.TITLE'),(30,53,'android.intent.extra.INTENT'),(31,55,'was_get_content_intent'),(32,58,'was_get_content_intent'),(33,66,'android.intent.extra.INTENT'),(34,67,'android.intent.extra.INTENT'),(35,68,'android.intent.extra.TITLE'),(36,68,'android.intent.extra.INTENT'),(37,69,'android.intent.extra.INTENT'),(38,70,'android.intent.extra.TITLE'),(39,70,'android.intent.extra.INTENT'),(40,71,'android.intent.extra.INTENT'),(41,72,'android.intent.extra.TITLE'),(42,72,'android.intent.extra.INTENT'),(43,73,'android.intent.extra.TITLE'),(44,73,'android.intent.extra.INTENT'),(45,81,'command');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,9),(8,7,8),(9,7,7),(10,7,6),(11,7,11),(12,7,10),(13,7,2),(14,7,3),(15,7,4),(16,7,5),(17,8,12),(18,8,14),(19,8,13),(20,8,8),(21,8,10),(22,8,9),(23,8,5),(24,8,15),(25,8,6),(26,8,4),(27,9,11),(28,9,10),(29,9,9),(30,9,8),(31,9,4),(32,9,5),(33,9,6),(34,9,7),(35,9,2),(36,9,3),(37,10,11),(38,10,7),(39,10,8),(40,10,9),(41,10,5),(42,10,10),(43,10,6),(44,10,3),(45,10,4),(46,10,2),(47,11,1),(48,12,16),(49,13,17),(50,14,1),(51,15,22),(52,16,22),(53,17,22),(54,18,22),(55,19,22),(56,20,22),(57,21,22),(58,22,25),(59,22,24),(60,22,23),(61,23,6),(62,24,27),(63,25,27),(64,26,27),(65,27,27),(66,28,27),(67,29,27),(68,30,27),(69,31,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,11,1),(7,12,3),(8,12,2),(9,14,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,12,NULL,NULL,NULL,NULL,'audio','*'),(2,13,NULL,NULL,NULL,NULL,'audio','*'),(3,24,'file',NULL,NULL,NULL,NULL,NULL),(4,25,'file',NULL,NULL,NULL,NULL,NULL),(5,26,'file',NULL,NULL,NULL,NULL,NULL),(6,27,'file',NULL,NULL,NULL,NULL,NULL),(7,28,'file',NULL,NULL,NULL,NULL,NULL),(8,29,'file',NULL,NULL,NULL,NULL,NULL),(9,30,'file',NULL,NULL,NULL,NULL,NULL),(10,31,'file',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.keji.danti646'),(2,4,'com.keji.danti646'),(3,5,'com.keji.danti646'),(4,8,'com.android.settings'),(5,11,'com.keji.danti646'),(6,12,'com.android.settings'),(7,14,'com.keji.danti402'),(8,15,'com.keji.danti706'),(9,16,'com.keji.danti643'),(10,17,'com.android.packageinstaller'),(11,20,'com.keji.danti643'),(12,26,'com.android.settings'),(13,25,'com.keji.danti402'),(14,28,'com.keji.danti706'),(15,29,'com.keji.danti402'),(16,30,'com.android.settings'),(17,31,'com.keji.danti706'),(18,32,'com.keji.danti402'),(19,33,'com.keji.danti643'),(20,35,'com.keji.danti402'),(21,40,'com.keji.danti402'),(22,39,'com.keji.danti706'),(23,41,'com.keji.danti643'),(24,42,'com.keji.danti402'),(25,45,'com.keji.danti402'),(26,55,'net.lucky.star.mrtm'),(27,56,'net.lucky.star.mrtm'),(28,57,'net.lucky.star.mrtm'),(29,58,'net.lucky.star.mrtm'),(30,59,'net.lucky.star.mrtm'),(31,60,'net.lucky.star.mrtm'),(32,61,'net.lucky.star.mrtm'),(33,62,'net.lucky.star.mrtm'),(34,63,'net.lucky.star.mrtm'),(35,64,'net.lucky.star.mrtm'),(36,65,'net.lucky.star.mrtm'),(37,75,'net.lucky.star.mrtm'),(38,76,'net.lucky.star.mrtm'),(39,77,'net.lucky.star.mrtm'),(40,78,'net.lucky.star.mrtm'),(41,80,'com.android.battery'),(42,83,'(.*)'),(43,84,'net.lucky.star.mrtm');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,6,0),(4,8,0),(5,19,0),(6,42,0),(7,47,0),(8,56,0),(9,61,0),(10,66,0),(11,67,0),(12,70,0),(13,71,0),(14,113,0),(15,131,0),(16,132,0),(17,133,0),(18,134,0),(19,135,0),(20,136,0),(21,137,0),(22,138,0),(23,139,0),(24,140,0),(25,141,0),(26,142,0),(27,143,0),(28,140,0),(29,141,0),(30,142,0),(31,143,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,2,0,0),(4,3,0,0),(5,4,0,0),(6,5,1,0),(7,6,1,0),(8,7,0,0),(9,8,1,0),(10,8,1,0),(11,9,0,0),(12,10,0,0),(13,11,1,0),(14,12,0,0),(15,13,0,0),(16,14,0,0),(17,15,0,0),(18,16,1,0),(19,16,1,0),(20,17,0,0),(21,18,1,0),(22,19,1,0),(23,20,1,0),(24,20,1,0),(25,22,0,0),(26,21,0,0),(27,23,1,0),(28,24,0,0),(29,25,0,0),(30,26,0,0),(31,27,0,0),(32,28,0,0),(33,29,0,0),(34,30,1,0),(35,31,0,0),(36,30,1,0),(37,32,1,0),(38,32,1,0),(39,34,0,0),(40,33,0,0),(41,35,0,0),(42,36,0,0),(43,37,1,0),(44,38,1,0),(45,39,0,0),(46,43,1,0),(47,43,1,0),(48,43,1,0),(49,43,1,0),(50,43,1,0),(51,43,1,0),(52,43,1,0),(53,43,1,0),(54,44,1,0),(55,52,0,0),(56,53,0,0),(57,54,0,0),(58,57,0,0),(59,58,0,0),(60,59,0,0),(61,61,0,0),(62,66,0,0),(63,68,0,0),(64,69,0,0),(65,70,0,0),(66,73,1,0),(67,73,1,0),(68,73,1,0),(69,73,1,0),(70,73,1,0),(71,73,1,0),(72,73,1,0),(73,73,1,0),(74,75,1,0),(75,78,0,0),(76,83,0,0),(77,86,0,0),(78,88,0,0),(79,93,1,0),(80,95,0,0),(81,97,1,0),(82,101,1,0),(83,103,0,0),(84,105,0,0),(85,106,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,9,1,2,NULL),(2,10,1,2,NULL),(3,37,1,2,NULL),(4,38,1,2,NULL),(5,18,1,2,NULL),(6,19,1,2,NULL),(7,74,1,2,NULL),(8,79,1,2,NULL),(9,82,1,2,NULL),(10,85,1,2,NULL),(11,9,113,2,NULL),(12,9,6,2,NULL),(13,10,113,2,NULL),(14,10,6,2,NULL),(15,37,113,2,NULL),(16,37,6,2,NULL),(17,38,113,2,NULL),(18,38,6,2,NULL),(19,18,113,2,NULL),(20,18,6,2,NULL),(21,19,113,2,NULL),(22,19,6,2,NULL),(23,74,113,2,NULL),(24,74,6,2,NULL),(25,79,113,2,NULL),(26,79,6,2,NULL),(27,82,113,2,NULL),(28,82,6,2,NULL),(29,85,113,2,NULL),(30,85,6,2,NULL),(31,9,131,2,NULL),(32,9,42,2,NULL),(33,10,131,2,NULL),(34,10,42,2,NULL),(35,37,131,2,NULL),(36,37,42,2,NULL),(37,38,131,2,NULL),(38,38,42,2,NULL),(39,18,131,2,NULL),(40,18,42,2,NULL),(41,19,131,2,NULL),(42,19,42,2,NULL),(43,74,131,2,NULL),(44,74,42,2,NULL),(45,79,131,2,NULL),(46,79,42,2,NULL),(47,82,131,2,NULL),(48,82,42,2,NULL),(49,85,131,2,NULL),(50,85,42,2,NULL),(51,9,132,2,NULL),(52,9,56,2,NULL),(53,10,132,2,NULL),(54,10,56,2,NULL),(55,37,132,2,NULL),(56,37,56,2,NULL),(57,38,132,2,NULL),(58,38,56,2,NULL),(59,18,132,2,NULL),(60,18,56,2,NULL),(61,19,132,2,NULL),(62,19,56,2,NULL),(63,74,132,2,NULL),(64,74,56,2,NULL),(65,79,132,2,NULL),(66,79,56,2,NULL),(67,82,132,2,NULL),(68,82,56,2,NULL),(69,85,132,2,NULL),(70,85,56,2,NULL),(71,9,133,2,NULL),(72,10,133,2,NULL),(73,37,133,2,NULL),(74,38,133,2,NULL),(75,18,133,2,NULL),(76,19,133,2,NULL),(77,74,133,2,NULL),(78,79,133,2,NULL),(79,82,133,2,NULL),(80,85,133,2,NULL),(81,9,134,2,NULL),(82,10,134,2,NULL),(83,37,134,2,NULL),(84,38,134,2,NULL),(85,18,134,2,NULL),(86,19,134,2,NULL),(87,74,134,2,NULL),(88,79,134,2,NULL),(89,82,134,2,NULL),(90,85,134,2,NULL),(91,9,135,2,NULL),(92,10,135,2,NULL),(93,37,135,2,NULL),(94,38,135,2,NULL),(95,18,135,2,NULL),(96,19,135,2,NULL),(97,74,135,2,NULL),(98,79,135,2,NULL),(99,82,135,2,NULL),(100,85,135,2,NULL),(101,9,136,2,NULL),(102,10,136,2,NULL),(103,37,136,2,NULL),(104,38,136,2,NULL),(105,18,136,2,NULL),(106,19,136,2,NULL),(107,74,136,2,NULL),(108,79,136,2,NULL),(109,82,136,2,NULL),(110,85,136,2,NULL),(111,9,137,2,NULL),(112,10,137,2,NULL),(113,37,137,2,NULL),(114,38,137,2,NULL),(115,18,137,2,NULL),(116,19,137,2,NULL),(117,74,137,2,NULL),(118,79,137,2,NULL),(119,82,137,2,NULL),(120,85,137,2,NULL),(121,9,138,2,NULL),(122,10,138,2,NULL),(123,37,138,2,NULL),(124,38,138,2,NULL),(125,18,138,2,NULL),(126,19,138,2,NULL),(127,74,138,2,NULL),(128,79,138,2,NULL),(129,82,138,2,NULL),(130,85,138,2,NULL),(131,9,139,2,NULL),(132,10,139,2,NULL),(133,37,139,2,NULL),(134,38,139,2,NULL),(135,18,139,2,NULL),(136,19,139,2,NULL),(137,74,139,2,NULL),(138,79,139,2,NULL),(139,82,139,2,NULL),(140,85,139,2,NULL),(141,9,2,2,NULL),(142,10,2,2,NULL),(143,37,2,2,NULL),(144,38,2,2,NULL),(145,18,2,2,NULL),(146,19,2,2,NULL),(147,74,2,2,NULL),(148,79,2,2,NULL),(149,82,2,2,NULL),(150,85,2,2,NULL),(151,9,47,2,NULL),(152,10,47,2,NULL),(153,9,8,2,NULL),(154,10,8,2,NULL),(155,9,61,2,NULL),(156,10,61,2,NULL),(157,9,19,2,NULL),(158,10,19,2,NULL),(159,9,66,2,NULL),(160,10,66,2,NULL),(161,9,67,2,NULL),(162,10,67,2,NULL),(163,37,47,2,NULL),(164,38,47,2,NULL),(165,18,47,2,NULL),(166,19,47,2,NULL),(167,74,47,2,NULL),(168,79,47,2,NULL),(169,82,47,2,NULL),(170,85,47,2,NULL),(171,37,8,2,NULL),(172,38,8,2,NULL),(173,18,8,2,NULL),(174,19,8,2,NULL),(175,74,8,2,NULL),(176,79,8,2,NULL),(177,82,8,2,NULL),(178,85,8,2,NULL),(179,37,61,2,NULL),(180,38,61,2,NULL),(181,37,19,2,NULL),(182,38,19,2,NULL),(183,37,66,2,NULL),(184,38,66,2,NULL),(185,37,67,2,NULL),(186,38,67,2,NULL),(187,18,61,2,NULL),(188,19,61,2,NULL),(189,74,61,2,NULL),(190,79,61,2,NULL),(191,82,61,2,NULL),(192,85,61,2,NULL),(193,18,19,2,NULL),(194,19,19,2,NULL),(195,74,19,2,NULL),(196,79,19,2,NULL),(197,82,19,2,NULL),(198,85,19,2,NULL),(199,18,66,2,NULL),(200,19,66,2,NULL),(201,18,67,2,NULL),(202,19,67,2,NULL),(203,74,66,2,NULL),(204,79,66,2,NULL),(205,82,66,2,NULL),(206,85,66,2,NULL),(207,74,67,2,NULL),(208,79,67,2,NULL),(209,82,67,2,NULL),(210,85,67,2,NULL),(211,55,71,2,NULL),(212,58,71,2,NULL),(213,60,73,2,NULL),(214,62,73,2,NULL),(215,63,77,2,NULL),(216,59,77,2,NULL),(217,83,75,2,NULL),(218,75,79,2,NULL),(219,57,77,2,NULL),(220,65,77,2,NULL),(221,84,77,2,NULL);
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
INSERT INTO `PAuthorities` VALUES (1,1,'net.lucky.star.mrtm.mdd'),(2,2,'net.lucky.star.mrtm.mdq');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (23,'android.permission.ACCESS_COARSE_LOCATION'),(22,'android.permission.ACCESS_FINE_LOCATION'),(19,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(12,'android.permission.CALL_PHONE'),(27,'android.permission.CHANGE_WIFI_STATE'),(15,'android.permission.DISABLE_KEYGUARD'),(24,'android.permission.GET_ACCOUNTS'),(3,'android.permission.INTERNET'),(25,'android.permission.KILL_BACKGROUND_PROCESSES'),(11,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_EXTERNAL_STORAGE'),(7,'android.permission.READ_LOGS'),(2,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(17,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_SMS'),(14,'android.permission.RESTART_PACKAGES'),(5,'android.permission.SEND_SMS'),(18,'android.permission.VIBRATE'),(20,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_APN_SETTINGS'),(13,'android.permission.WRITE_CONTACTS'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS'),(26,'com.android.vending.BILLING');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,69,82,NULL),(2,75,83,NULL),(3,77,83,NULL),(4,80,82,NULL),(5,80,83,NULL),(6,140,82,NULL),(7,140,83,NULL);
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
INSERT INTO `Providers` VALUES (1,82,0,NULL,NULL),(2,83,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'one',NULL,NULL,NULL),(2,NULL,NULL,'smsto:',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'smsto:',NULL,NULL,NULL),(8,NULL,NULL,'smsto:',NULL,NULL,NULL),(9,NULL,NULL,'one',NULL,NULL,NULL),(10,NULL,NULL,'one',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'one',NULL,NULL,NULL),(14,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(15,NULL,NULL,'content://net.lucky.star.mrtm.mdd/mdd',NULL,NULL,NULL),(16,NULL,NULL,'market://search?q=pname:net.lucky.star.mrtm',NULL,NULL,NULL),(17,NULL,NULL,'content://net.lucky.star.mrtm.mdd/mdd',NULL,NULL,NULL),(18,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(20,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(23,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(24,NULL,NULL,'record',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(27,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(28,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(33,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(34,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(35,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(36,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(41,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(42,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(43,NULL,NULL,'content://net.lucky.star.mrtm.mdd/mdd',NULL,NULL,NULL),(44,NULL,NULL,'content://net.lucky.star.mrtm.mdd/mdd',NULL,NULL,NULL),(45,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(48,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(49,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)/(.*)',NULL,NULL,NULL),(52,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(53,NULL,NULL,'content://net.lucky.star.mrtm.mdq/mdq',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,41,14),(2,42,15),(3,46,17),(4,47,18),(5,48,19),(6,51,20),(7,55,22),(8,56,23),(9,62,26),(10,63,27),(11,64,28),(12,65,29),(13,71,31),(14,72,32),(15,74,33),(16,74,34),(17,77,35),(18,79,36),(19,80,37),(20,81,38),(21,82,39),(22,84,41),(23,85,42),(24,87,43),(25,91,44),(26,92,45),(27,98,47),(28,99,48),(29,100,49),(30,102,51),(31,104,53);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,2),(6,2,3),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,2,10),(13,2,11),(14,2,12),(15,2,13),(16,2,14),(17,3,2),(18,4,2),(19,2,15),(20,3,3),(21,4,3),(22,2,17),(23,3,5),(24,4,4),(25,2,16),(26,3,6),(27,4,5),(28,2,19),(29,4,6),(30,3,7),(31,2,18),(32,3,8),(33,4,8),(34,2,20),(35,3,9),(36,4,9),(37,3,10),(38,4,10),(39,4,12),(40,3,11),(41,3,12),(42,4,13),(43,5,2),(44,3,13),(45,5,3),(46,4,14),(47,5,5),(48,3,14),(49,4,15),(50,5,6),(51,3,15),(52,4,17),(53,3,17),(54,5,7),(55,4,16),(56,3,16),(57,4,19),(58,5,8),(59,5,9),(60,3,19),(61,4,18),(62,4,20),(63,3,18),(64,5,10),(65,5,11),(66,3,20),(67,5,12),(68,5,13),(69,5,14),(70,5,15),(71,5,17),(72,5,16),(73,5,19),(74,5,18),(75,5,20),(76,6,19),(77,6,2),(78,6,3),(79,6,21),(80,6,4),(81,6,20),(82,6,23),(83,6,22),(84,6,11),(85,6,13),(86,7,19),(87,7,2),(88,7,3),(89,7,4),(90,7,20),(91,7,23),(92,7,7),(93,7,25),(94,7,24),(95,7,9),(96,7,27),(97,7,26);
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

-- Dump completed on 2015-10-12  3:29:42
