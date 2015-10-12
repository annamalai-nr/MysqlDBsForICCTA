-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_544
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (15,'(.*)'),(21,'(.*).SEND_SMS'),(26,'MB_DELIVERED_SMS_ACTION_'),(24,'MB_SENT_SMS_ACTION_'),(1,'android.intent.action.BOOT_COMPLETED'),(13,'android.intent.action.CALL'),(16,'android.intent.action.CHOOSER'),(12,'android.intent.action.DELETE'),(27,'android.intent.action.DIAL'),(2,'android.intent.action.MAIN'),(3,'android.intent.action.NEW_OUTGOING_CALL'),(8,'android.intent.action.PACKAGE_ADDED'),(4,'android.intent.action.PHONE_STATE'),(11,'android.intent.action.PICK'),(14,'android.intent.action.RUN'),(18,'android.intent.action.SCREEN_OFF'),(19,'android.intent.action.USER_PRESENT'),(7,'android.intent.action.VIEW'),(5,'android.provider.Telephony.SMS_RECEIVED'),(25,'com.android.music.musicservicecommand'),(6,'com.android.vending.INSTALL_REFERRER'),(10,'com.google.android.c2dm.intent.RECEIVE'),(17,'com.google.android.c2dm.intent.REGISTER'),(9,'com.google.android.c2dm.intent.REGISTRATION'),(20,'com.itframework.base.intent.wait.HIDE'),(22,'com.itframework.base.intent.wait.MESSAGE'),(23,'com.itframework.base.intent.wait.SHOW');
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
INSERT INTO `Applications` VALUES (1,'com.android',1),(2,'eng.trickersticks.timeseight',3),(3,'eng.trickersticks.bikram',2),(4,'ca.rivalstudios.runboyrun',4),(5,'com.antivirus.scanner',2),(6,'com.wWiFiHacker12',1337880769),(7,'com.androidbox.lz3net8',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER'),(3,'com.wWiFiHacker12');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.android.AndroidService'),(2,1,'com.android.AutoStartWatcher'),(3,2,'eng.trickersticks.timeseight.TrickerSticks'),(4,3,'eng.trickersticks.bikram.TrickerSticks'),(5,2,'eng.trickersticks.timeseight.GlowSticks'),(6,2,'eng.trickersticks.timeseight.ShowTerms'),(7,3,'eng.trickersticks.bikram.GlowSticks'),(8,2,'eng.trickersticks.timeseight.RegistrationScreen'),(9,3,'eng.trickersticks.bikram.ShowTerms'),(10,2,'eng.trickersticks.timeseight.AdView'),(11,3,'eng.trickersticks.bikram.RegistrationScreen'),(12,2,'eng.trickersticks.timeseight.OtherApps'),(13,3,'eng.trickersticks.bikram.AdView'),(14,2,'eng.trickersticks.timeseight.LocationSender'),(15,3,'eng.trickersticks.bikram.OtherApps'),(16,3,'eng.trickersticks.bikram.LocationSender'),(17,4,'ca.rivalstudios.runboyrun.Menu'),(18,4,'ca.rivalstudios.runboyrun.RunBoyRun'),(19,4,'ca.rivalstudios.runboyrun.HighScores'),(20,4,'ca.rivalstudios.runboyrun.HowToPlay'),(21,4,'ca.rivalstudios.runboyrun.Settings'),(22,4,'ca.rivalstudios.runboyrun.Feedback'),(23,4,'ca.rivalstudios.runboyrun.MoreGames'),(24,4,'com.GoldDream.zj.zjService'),(25,4,'com.GoldDream.zj.zjReceiver'),(26,5,'com.antivirus.scanner.TabHandler'),(27,5,'com.antivirus.scanner.Splash_'),(28,5,'com.antivirus.scanner.HomeActivity_'),(29,5,'com.antivirus.scanner.SecurityActivity_'),(30,5,'com.antivirus.scanner.SecurityDialogActivity_'),(31,5,'com.antivirus.scanner.PrivacyActivity_'),(32,5,'com.antivirus.scanner.ScanActivity_'),(33,5,'com.antivirus.scanner.DeleteFileDialog_'),(34,5,'com.antivirus.scanner.service.FileScanService'),(35,5,'com.antivirus.scanner.service.NotificationService'),(36,5,'com.antivirus.scanner.service.ApplicationScanIntentService'),(37,5,'com.zanalytics.sms.SmsReceiverService'),(38,5,'com.antivirus.scanner.receivers.ReferralReceiver'),(39,5,'com.antivirus.scanner.receivers.BootReceiver'),(40,2,'eng.trickersticks.timeseight.OtherApps$2'),(41,6,'com.wWiFiHacker12.MainNavigationActivity'),(42,5,'com.antivirus.scanner.receivers.InstallationReceiver'),(43,2,'eng.trickersticks.timeseight.OtherApps$3'),(44,6,'com.wWiFiHacker12.MessageViewer'),(45,5,'com.zanalytics.sms.SmsReceiver'),(46,6,'com.google.ads.AdActivity'),(47,6,'com.wWiFiHacker12.Server.C2DMClientReceiver'),(48,6,'com.google.android.c2dm.C2DMBroadcastReceiver'),(49,2,'eng.trickersticks.timeseight.OtherApps$1'),(50,3,'eng.trickersticks.bikram.OtherApps$4'),(51,2,'eng.trickersticks.timeseight.OtherApps$6'),(52,3,'eng.trickersticks.bikram.OtherApps$6'),(53,2,'eng.trickersticks.timeseight.RegistrationScreen$1'),(54,3,'eng.trickersticks.bikram.OtherApps$3'),(55,2,'eng.trickersticks.timeseight.OtherApps$5'),(56,3,'eng.trickersticks.bikram.RegistrationScreen$1'),(57,2,'eng.trickersticks.timeseight.OtherApps$4'),(58,3,'eng.trickersticks.bikram.OtherApps$2'),(59,3,'eng.trickersticks.bikram.OtherApps$1'),(60,3,'eng.trickersticks.bikram.OtherApps$5'),(61,6,'com.wWiFiHacker12.Views.AboutDialog$1'),(62,6,'com.wWiFiHacker12.Utils.BrowserDownloadListener'),(63,6,'com.google.android.c2dm.C2DMessaging'),(64,6,'com.google.ads.util.AdUtil$UserActivityReceiver'),(65,5,'com.itframework.base.wait.Wait$WaitReceiver'),(66,5,'com.antivirus.scanner.HomeActivity'),(67,5,'com.zanalytics.sms.h'),(68,5,'com.zanalytics.sms.a'),(69,5,'com.antivirus.scanner.SecurityDialogActivity'),(70,5,'com.antivirus.scanner.o'),(71,7,'com.androidbox.lz3net8.AppActivity'),(72,7,'com.network.app.SMS_Activity'),(73,7,'com.google.ads.AdActivity'),(74,7,'net.youmi.android.AdActivity'),(75,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(76,7,'com.millennialmedia.android.VideoPlayer'),(77,7,'com.guohead.sdk.GuoheAdActivity'),(78,7,'com.network.app.service.AppManagerService'),(79,7,'com.network.app.util.SMS_Receiver'),(80,7,'com.millennialmedia.android.MillennialMediaView');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,13,'_who'),(2,10,'_who'),(3,25,'android.intent.extra.PHONE_NUMBER'),(4,25,'incoming_number'),(5,25,'pdus'),(6,44,'com.google.ads.AdOpener'),(7,44,'com.google.circles.platform.result.extra.ACTION'),(8,44,'com.google.circles.platform.result.extra.CONFIRMATION'),(9,42,'url'),(10,46,'registration_id'),(11,42,'title'),(12,46,'message'),(13,44,'action'),(14,46,'url'),(15,46,'unregistered'),(16,43,'pdus'),(17,46,'title'),(18,46,'error'),(19,44,'params'),(20,36,'packagename'),(21,31,'FEATURE_NAME'),(22,28,'FEATURE_NAME'),(23,29,'FEATURE_NAME'),(24,38,'referrer'),(25,30,'package'),(26,33,'filename'),(27,53,'shouldResizeOverlay'),(28,53,'shouldShowTitlebar'),(29,54,'cached'),(30,53,'transitionTime'),(31,53,'shouldEnableBottomBar'),(32,54,'videoCompleted'),(33,54,'logSet'),(34,51,'params'),(35,53,'shouldMakeOverlayTransparent'),(36,53,'shouldShowBottomBar'),(37,53,'overlayTransition'),(38,54,'shouldShowBottomBar'),(39,54,'videoAd'),(40,53,'cachedAdView'),(41,54,'isCachedAd'),(42,51,'com.google.ads.AdOpener'),(43,52,'A7D1721B9508405D8271AB82AC6D9B3C'),(44,53,'canAccelerate'),(45,54,'adName'),(46,54,'videoPosition'),(47,55,'link'),(48,53,'overlayTitle'),(49,51,'action');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'s',0,NULL,NULL),(2,2,'r',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,41,'a',1,NULL,NULL),(41,42,'r',1,NULL,NULL),(42,44,'a',0,NULL,NULL),(43,45,'r',1,NULL,NULL),(44,46,'a',0,NULL,NULL),(45,47,'s',0,NULL,NULL),(46,48,'r',1,31,NULL),(47,64,'r',1,NULL,NULL),(48,65,'r',1,NULL,NULL),(49,71,'a',1,NULL,NULL),(50,72,'a',0,NULL,NULL),(51,73,'a',0,NULL,NULL),(52,74,'a',0,NULL,NULL),(53,75,'a',0,NULL,NULL),(54,76,'a',0,NULL,NULL),(55,77,'a',0,NULL,NULL),(56,78,'s',0,NULL,NULL),(57,79,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,12),(3,3,12),(4,4,7),(5,5,3),(6,6,4),(7,7,12),(8,8,7),(9,9,5),(10,10,15),(11,11,12),(12,12,7),(13,13,3),(14,14,5),(15,15,11),(16,16,11),(17,17,8),(18,18,7),(19,19,5),(20,20,15),(21,21,8),(22,22,4),(23,23,5),(24,24,5),(25,25,15),(26,26,12),(27,27,11),(28,28,12),(29,29,15),(30,30,17),(31,31,8),(32,32,7),(33,33,24),(34,34,15),(35,35,17),(36,36,15),(37,37,17),(38,38,17),(39,39,24),(40,40,17),(41,41,24),(42,42,25),(43,43,17),(44,44,40),(45,45,40),(46,46,44),(47,47,44),(48,48,40),(49,49,46),(50,49,40),(51,50,40),(52,51,41),(53,52,40),(54,53,43),(55,54,28),(56,55,43),(57,56,28),(58,57,28),(59,58,39),(60,59,30),(61,60,43),(62,61,28),(63,62,54),(64,63,54),(65,64,54),(66,65,54),(67,66,54),(68,67,54),(69,68,54),(70,69,54),(71,70,51);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.android.AutoStartWatcher: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(2,40,'<eng.trickersticks.timeseight.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(3,43,'<eng.trickersticks.timeseight.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(4,7,'<eng.trickersticks.bikram.GlowSticks: void onCreate(android.os.Bundle)>',14,'a',NULL),(5,3,'<eng.trickersticks.timeseight.TrickerSticks: void onResume()>',14,'a',NULL),(6,4,'<eng.trickersticks.bikram.TrickerSticks: void onResume()>',18,'a',NULL),(7,49,'<eng.trickersticks.timeseight.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(8,7,'<eng.trickersticks.bikram.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(9,5,'<eng.trickersticks.timeseight.GlowSticks: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(10,50,'<eng.trickersticks.bikram.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(11,51,'<eng.trickersticks.timeseight.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(12,7,'<eng.trickersticks.bikram.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(13,3,'<eng.trickersticks.timeseight.TrickerSticks: void onResume()>',18,'a',NULL),(14,5,'<eng.trickersticks.timeseight.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(15,11,'<eng.trickersticks.bikram.RegistrationScreen: void SendPhoneData()>',97,'s',NULL),(16,11,'<eng.trickersticks.bikram.RegistrationScreen: void SendAutoData()>',93,'s',NULL),(17,8,'<eng.trickersticks.timeseight.RegistrationScreen: void SendPhoneData()>',97,'s',NULL),(18,7,'<eng.trickersticks.bikram.GlowSticks: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(19,5,'<eng.trickersticks.timeseight.GlowSticks: void onCreate(android.os.Bundle)>',14,'a',NULL),(20,52,'<eng.trickersticks.bikram.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(21,53,'<eng.trickersticks.timeseight.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(22,4,'<eng.trickersticks.bikram.TrickerSticks: void onResume()>',14,'a',NULL),(23,5,'<eng.trickersticks.timeseight.GlowSticks: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(24,5,'<eng.trickersticks.timeseight.GlowSticks: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(25,54,'<eng.trickersticks.bikram.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(26,55,'<eng.trickersticks.timeseight.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(27,56,'<eng.trickersticks.bikram.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(28,57,'<eng.trickersticks.timeseight.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(29,58,'<eng.trickersticks.bikram.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(30,17,'<ca.rivalstudios.runboyrun.Menu: void onClick(android.view.View)>',23,'a',NULL),(31,8,'<eng.trickersticks.timeseight.RegistrationScreen: void SendAutoData()>',93,'s',NULL),(32,7,'<eng.trickersticks.bikram.GlowSticks: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(33,24,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(34,59,'<eng.trickersticks.bikram.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(35,17,'<ca.rivalstudios.runboyrun.Menu: void onClick(android.view.View)>',15,'a',NULL),(36,60,'<eng.trickersticks.bikram.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(37,17,'<ca.rivalstudios.runboyrun.Menu: void onClick(android.view.View)>',11,'a',NULL),(38,17,'<ca.rivalstudios.runboyrun.Menu: void onClick(android.view.View)>',19,'a',NULL),(39,24,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(40,17,'<ca.rivalstudios.runboyrun.Menu: void onClick(android.view.View)>',7,'a',NULL),(41,24,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(42,25,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(43,17,'<ca.rivalstudios.runboyrun.Menu: void onClick(android.view.View)>',27,'a',NULL),(44,61,'<com.wWiFiHacker12.Views.AboutDialog$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',11,'a',NULL),(45,62,'<com.wWiFiHacker12.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',21,'a',NULL),(46,46,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(47,46,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(48,41,'<com.wWiFiHacker12.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',51,'a',NULL),(49,63,'<com.google.android.c2dm.C2DMessaging: void register(android.content.Context,java.lang.String)>',9,'s',NULL),(50,41,'<com.wWiFiHacker12.MainNavigationActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(51,42,'<com.antivirus.scanner.receivers.InstallationReceiver: void onReceive(android.content.Context,android.content.Intent)>',18,'s',NULL),(52,62,'<com.wWiFiHacker12.Utils.BrowserDownloadListener: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',15,'a',NULL),(53,45,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',123,'s',NULL),(54,66,'<com.antivirus.scanner.HomeActivity: void onCreate(android.os.Bundle)>',11,'a',NULL),(55,67,'<com.zanalytics.sms.h: int f(android.content.Context)>',5,'p',NULL),(56,68,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(57,66,'<com.antivirus.scanner.HomeActivity: void onCreate(android.os.Bundle)>',8,'s',NULL),(58,39,'<com.antivirus.scanner.receivers.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(59,69,'<com.antivirus.scanner.SecurityDialogActivity: void c()>',18,'a',NULL),(60,67,'<com.zanalytics.sms.h: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(61,70,'<com.antivirus.scanner.o: void run()>',8,'a',NULL),(62,76,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',236,'a',NULL),(63,76,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',180,'a',NULL),(64,76,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',188,'a',NULL),(65,76,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',217,'a',NULL),(66,76,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',228,'a',NULL),(67,80,'<com.millennialmedia.android.MillennialMediaView: void openVideo()>',10,'r',NULL),(68,76,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',208,'a',NULL),(69,76,'<com.millennialmedia.android.VideoPlayer: void dispatchButtonClick(java.lang.String)>',159,'a',NULL),(70,73,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,2,7),(2,3,7),(3,7,7),(4,8,11),(5,9,7),(6,10,7),(7,13,11),(8,18,7),(9,22,7),(10,23,7),(11,25,7),(12,26,7),(13,29,12),(14,30,7),(15,32,7),(16,35,7),(17,37,13),(18,38,14),(19,40,7),(20,41,7),(21,42,7),(22,43,7),(23,44,7),(24,45,15),(25,46,15),(26,47,7),(27,49,16),(28,50,16),(29,51,16),(30,52,16),(31,53,16),(32,54,16),(33,55,16),(34,56,16),(35,57,17),(36,58,7),(37,60,7),(38,63,21),(39,66,12),(40,68,7),(41,70,7),(42,72,7),(43,73,25),(44,74,27),(45,75,7),(46,76,7),(47,77,15),(48,78,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,48,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/android/AndroidService'),(2,4,'eng/trickersticks/bikram/AdView'),(3,5,'eng/trickersticks/timeseight/RegistrationScreen'),(4,6,'eng/trickersticks/bikram/GlowSticks'),(5,11,'eng/trickersticks/bikram/OtherApps'),(6,12,'eng/trickersticks/timeseight/GlowSticks'),(7,14,'eng/trickersticks/bikram/LocationSender'),(8,15,'eng/trickersticks/bikram/LocationSender'),(9,16,'eng/trickersticks/timeseight/LocationSender'),(10,17,'eng/trickersticks/timeseight/AdView'),(11,19,'eng/trickersticks/timeseight/ShowTerms'),(12,20,'eng/trickersticks/bikram/RegistrationScreen'),(13,21,'eng/trickersticks/timeseight/OtherApps'),(14,24,'eng/trickersticks/bikram/ShowTerms'),(15,27,'ca/rivalstudios/runboyrun/Feedback'),(16,28,'eng/trickersticks/timeseight/LocationSender'),(17,31,'ca/rivalstudios/runboyrun/HowToPlay'),(18,33,'ca/rivalstudios/runboyrun/HighScores'),(19,34,'ca/rivalstudios/runboyrun/Settings'),(20,35,'com.android.packageinstaller.PackageInstallerActivity'),(21,36,'ca/rivalstudios/runboyrun/RunBoyRun'),(22,38,'com/GoldDream/zj/zjService'),(23,39,'ca/rivalstudios/runboyrun/MoreGames'),(24,48,'com.google.android.apps.circles.platform.PlusOneActivity'),(25,59,'com/antivirus/scanner/service/ApplicationScanIntentService'),(26,61,'com/zanalytics/sms/SmsReceiverService'),(27,62,'com/antivirus/scanner/Splash_'),(28,63,'com/zanalytics/sms/SmsReceiverService'),(29,64,'com/antivirus/scanner/service/FileScanService'),(30,65,'com/antivirus/scanner/service/FileScanService'),(31,67,'com/antivirus/scanner/ScanActivity_'),(32,69,'com/millennialmedia/android/MMAdViewOverlayActivity'),(33,71,'com/millennialmedia/android/MMAdViewOverlayActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,7,3),(4,8,4),(5,9,6),(6,10,7),(7,13,8),(8,18,10),(9,22,11),(10,23,12),(11,25,13),(12,26,14),(13,29,15),(14,30,16),(15,32,17),(16,35,18),(17,37,19),(18,40,20),(19,41,21),(20,42,22),(21,43,23),(22,44,24),(23,45,25),(24,46,26),(25,47,27),(26,58,28),(27,60,29),(28,66,31),(29,68,33),(30,69,34),(31,70,35),(32,71,36),(33,72,37),(34,74,38),(35,75,39),(36,76,40),(37,77,41),(38,78,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,48,'com.google.circles.platform.intent.extra.ACTION'),(2,48,'(.*)'),(3,48,'com.google.circles.platform.intent.extra.ENTITY'),(4,48,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(5,49,'android.intent.extra.INTENT'),(6,50,'android.intent.extra.INTENT'),(7,51,'android.intent.extra.TITLE'),(8,51,'android.intent.extra.INTENT'),(9,52,'android.intent.extra.INTENT'),(10,53,'android.intent.extra.TITLE'),(11,53,'android.intent.extra.INTENT'),(12,54,'android.intent.extra.INTENT'),(13,55,'android.intent.extra.TITLE'),(14,55,'android.intent.extra.INTENT'),(15,56,'android.intent.extra.TITLE'),(16,56,'android.intent.extra.INTENT'),(17,57,'sender'),(18,57,'app'),(19,59,'packagename'),(20,61,'result'),(21,61,'abort'),(22,63,'TryCount'),(23,63,'NextMessage'),(24,63,'TryAgain'),(25,63,'StoreMessage'),(26,63,'Message'),(27,63,'Delay'),(28,63,'PhoneNumber'),(29,63,'TagEvent'),(30,69,'cachedAdView'),(31,71,'cachedAdView'),(32,73,'command');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,2),(5,5,1),(6,5,3),(7,5,4),(8,5,5),(9,6,2),(10,7,6),(11,8,1),(12,9,2),(13,10,8),(14,11,5),(15,12,9),(16,13,10),(17,14,19),(18,14,18),(19,15,20),(20,16,22),(21,17,23),(22,18,2),(23,19,24),(24,20,5),(25,21,26);
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
INSERT INTO `IFCategories` VALUES (1,2,1),(2,3,1),(3,4,1),(4,6,1),(5,9,1),(6,9,2),(7,12,3),(8,13,3),(9,18,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,10,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,45,'(.*)','(.*)'),(2,47,'(.*)','(.*)'),(3,77,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.android'),(2,4,'eng.trickersticks.bikram'),(3,5,'eng.trickersticks.timeseight'),(4,6,'eng.trickersticks.bikram'),(5,11,'eng.trickersticks.bikram'),(6,12,'eng.trickersticks.timeseight'),(7,14,'eng.trickersticks.bikram'),(8,15,'eng.trickersticks.bikram'),(9,16,'eng.trickersticks.timeseight'),(10,17,'eng.trickersticks.timeseight'),(11,19,'eng.trickersticks.timeseight'),(12,20,'eng.trickersticks.bikram'),(13,21,'eng.trickersticks.timeseight'),(14,24,'eng.trickersticks.bikram'),(15,27,'ca.rivalstudios.runboyrun'),(16,28,'eng.trickersticks.timeseight'),(17,31,'ca.rivalstudios.runboyrun'),(18,33,'ca.rivalstudios.runboyrun'),(19,34,'ca.rivalstudios.runboyrun'),(20,35,'com.android.packageinstaller'),(21,36,'ca.rivalstudios.runboyrun'),(22,38,'ca.rivalstudios.runboyrun'),(23,39,'ca.rivalstudios.runboyrun'),(24,48,'com.google.android.apps.plus'),(25,59,'com.antivirus.scanner'),(26,61,'com.antivirus.scanner'),(27,62,'com.antivirus.scanner'),(28,63,'com.antivirus.scanner'),(29,64,'com.antivirus.scanner'),(30,65,'com.antivirus.scanner'),(31,67,'com.antivirus.scanner'),(32,69,'com.androidbox.lz3net8'),(33,71,'com.androidbox.lz3net8');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,3,0),(3,4,0),(4,17,0),(5,25,0),(6,26,0),(7,38,0),(8,39,0),(9,40,0),(10,41,0),(11,43,0),(12,46,0),(13,46,0),(14,47,0),(15,48,0),(16,48,0),(17,48,0),(18,49,0),(19,57,0),(20,57,0),(21,57,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,1,0),(8,8,1,0),(9,10,1,0),(10,11,1,0),(11,12,0,0),(12,13,0,0),(13,14,1,0),(14,15,0,0),(15,16,0,0),(16,17,0,0),(17,19,0,0),(18,20,1,0),(19,21,0,0),(20,22,0,0),(21,24,0,0),(22,25,1,0),(23,26,1,0),(24,27,0,0),(25,28,1,0),(26,29,1,0),(27,30,0,0),(28,31,0,0),(29,33,1,0),(30,34,1,0),(31,35,0,0),(32,36,1,0),(33,37,0,0),(34,38,0,0),(35,39,0,0),(36,40,0,0),(37,41,1,0),(38,42,0,0),(39,43,0,0),(40,44,1,0),(41,44,1,0),(42,44,1,0),(43,45,1,0),(44,46,1,0),(45,46,1,0),(46,46,1,0),(47,46,1,0),(48,47,0,0),(49,48,1,0),(50,48,1,0),(51,48,1,0),(52,48,1,0),(53,48,1,0),(54,48,1,0),(55,48,1,0),(56,48,1,0),(57,49,1,0),(58,50,1,0),(59,51,0,0),(60,52,1,0),(61,53,0,0),(62,54,0,0),(63,56,0,0),(64,57,0,0),(65,58,0,0),(66,59,1,0),(67,61,0,0),(68,62,1,0),(69,63,0,0),(70,64,1,0),(71,65,0,0),(72,66,1,0),(73,67,1,0),(74,68,1,0),(75,69,1,0),(76,70,1,0),(77,70,1,0),(78,70,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(8,'android.permission.ACCESS_FINE_LOCATION'),(3,'android.permission.ACCESS_NETWORK_STATE'),(20,'android.permission.ACCESS_WIFI_STATE'),(33,'android.permission.CHANGE_WIFI_STATE'),(22,'android.permission.CLEAR_APP_CACHE'),(15,'android.permission.DELETE_PACKAGES'),(12,'android.permission.GET_ACCOUNTS'),(26,'android.permission.GET_PACKAGE_SIZE'),(14,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(24,'android.permission.KILL_BACKGROUND_PROCESSES'),(16,'android.permission.PROCESS_OUTGOING_CALLS'),(11,'android.permission.READ_CONTACTS'),(32,'android.permission.READ_LOGS'),(4,'android.permission.READ_PHONE_STATE'),(5,'android.permission.READ_SMS'),(1,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.RECEIVE_SMS'),(23,'android.permission.RESTART_PACKAGES'),(6,'android.permission.SEND_SMS'),(19,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(21,'android.permission.WRITE_CONTACTS'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'android.permission.WRITE_SMS'),(29,'android.webkit.permission.PLUGIN'),(27,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(25,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(18,'com.android.vending.CHECK_LICENSE'),(30,'com.google.android.c2dm.permission.RECEIVE'),(31,'com.google.android.c2dm.permission.SEND'),(28,'com.wWiFiHacker12.permission.C2D_MESSAGE'),(34,'rockchip.permission.FULL_SCREEN');
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
INSERT INTO `Permissions` VALUES (28,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(3,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(4,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(8,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(9,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(14,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(15,'package','(.*)',NULL,NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(20,NULL,NULL,'http://www.appsgeyser.com',NULL,NULL,NULL),(21,NULL,NULL,'',NULL,NULL,NULL),(22,NULL,NULL,'http://www.appsgeyser.com?(.*)',NULL,NULL,NULL),(23,NULL,NULL,'',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'market://details?id=com.wWiFiHacker12',NULL,NULL,NULL),(29,NULL,NULL,'',NULL,NULL,NULL),(30,NULL,NULL,'content://mms',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://sms',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,9,5),(2,18,9),(3,55,30),(4,60,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,2),(5,2,4),(6,2,5),(7,2,6),(8,2,7),(9,3,2),(10,2,8),(11,3,4),(12,2,9),(13,3,5),(14,2,10),(15,3,6),(16,2,11),(17,3,7),(18,2,12),(19,3,8),(20,2,13),(21,3,9),(22,3,10),(23,3,11),(24,3,12),(25,3,13),(26,4,1),(27,4,2),(28,4,3),(29,4,4),(30,4,5),(31,4,10),(32,4,13),(33,4,14),(34,4,15),(35,4,17),(36,4,16),(37,4,19),(38,4,18),(39,5,1),(40,5,2),(41,5,3),(42,5,4),(43,5,5),(44,5,6),(45,5,7),(46,5,9),(47,5,11),(48,5,13),(49,5,17),(50,5,19),(51,5,21),(52,5,20),(53,5,23),(54,5,22),(55,5,25),(56,5,24),(57,5,27),(58,5,26),(59,6,2),(60,6,3),(61,6,29),(62,6,28),(63,6,30),(64,7,34),(65,7,32),(66,7,2),(67,7,33),(68,7,3),(69,7,4),(70,7,5),(71,7,6),(72,7,7),(73,7,8),(74,7,9),(75,7,10),(76,7,13),(77,7,17),(78,7,19),(79,7,20);
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

-- Dump completed on 2015-10-09  0:40:09
