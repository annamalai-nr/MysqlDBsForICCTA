-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_169
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
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.CALL'),(11,'android.intent.action.DOCK_EVENT'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.PACKAGE_ADDED'),(28,'android.intent.action.PICK'),(19,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(27,'android.intent.action.USE_TTS'),(15,'android.intent.action.VIEW'),(10,'android.provider.Telephony.SMS_RECEIVED'),(7,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(25,'android.speech.action.RECOGNIZE_SPEECH'),(20,'android.speech.tts.engine.CHECK_TTS_DATA'),(26,'com.android.contacts.action.SHOW_OR_CREATE_CONTACT'),(8,'com.android.mms.transaction.MESSAGE_SENT'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(21,'com.mogo.smspopup.ACTION_DELETE_MESSAGE'),(23,'com.mogo.smspopup.ACTION_MARK_MESSAGE_READ'),(24,'com.mogo.smspopup.ACTION_QUICKREPLY'),(22,'com.mogo.smspopup.ACTION_UPDATE_NOTIFICATION'),(12,'com.mogo.smspopup.DISABLE'),(13,'com.mogo.smspopup.DONATED'),(14,'com.mogo.smspopup.ENABLE'),(9,'com.mogo.smspopup.MESSAGE_RECEIVED'),(18,'com.orderlong.netTrafficStats.intent.action.STATUS_CHANGED');
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
INSERT INTO `Applications` VALUES (1,'com.batteryiconmod.atools.battery',4),(2,'sunkay.AndroidApp5',3),(3,'com.ps.kickfly',5),(4,'com.alan.asianmeinv2',1),(5,'com.mogo.smspopup',6),(6,'com.gp.zoo',19),(7,'com.atools.netTrafficStats',4);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.category.TTS');
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.batteryiconmod.atools.battery.main2'),(2,1,'com.batteryiconmod.atools.battery.SelectMod'),(3,1,'com.batteryiconmod.atools.battery.About'),(4,1,'com.Z'),(5,1,'com.batteryiconmod.atools.battery.UpdateCheck'),(6,3,'com.ps.kickfly.GameMainActivity'),(7,2,'sunkay.AndroidApp5.AndroidApp'),(8,3,'com.ps.kickfly.KickFly'),(9,2,'com.waps.OffersWebView'),(10,3,'com.ps.kickfly.GameModeActivity'),(11,2,'com.google.update.Dialog'),(12,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(13,2,'com.google.update.UpdateService'),(14,3,'com.google.update.Dialog'),(15,2,'com.google.update.Receiver'),(16,3,'com.google.update.UpdateService'),(17,3,'com.google.update.Receiver'),(18,4,'com.alan.asianmeinv2.PaperCollection'),(19,4,'com.alan.asianmeinv2.PictureGrid'),(20,4,'com.google.ads.AdActivity'),(21,4,'com.vpon.adon.android.WebInApp'),(22,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(23,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(24,4,'com.waps.OffersWebView'),(25,4,'com.google.update.Dialog'),(26,4,'com.google.update.UpdateService'),(27,4,'com.google.update.Receiver'),(28,3,'com.google.update.Dialog$1'),(29,3,'com.google.update.Dialog$2'),(30,5,'com.mogo.smspopup.SmsPopupConfigActivity'),(31,5,'com.mogo.smspopup.ConfigContactsActivity'),(32,2,'com.google.update.UpdateService$MyThread'),(33,5,'com.mogo.smspopup.ConfigPerContactActivity'),(34,5,'com.mogo.smspopup.ConfigPresetMessagesActivity'),(35,5,'com.mogo.smspopup.SmsPopupActivity'),(36,6,'com.gp.zoo.SplashActivity'),(37,5,'com.google.ads.AdActivity'),(38,5,'com.vpon.adon.android.WebInApp'),(39,2,'com.waps.m'),(40,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(41,6,'com.gp.zoo.MainMenuActivity'),(42,3,'com.google.update.UpdateService$AA'),(43,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(44,6,'com.gp.zoo.CharacterCreationActivity'),(45,5,'com.waps.OffersWebView'),(46,6,'com.gp.zoo.MainMapActivity'),(47,5,'com.google.update.Dialog'),(48,6,'com.gp.zoo.HallActivity'),(49,5,'com.mogo.smspopup.SmsPopupUtilsService'),(50,6,'com.gp.zoo.ExamActivity'),(51,5,'com.mogo.smspopup.SmsReceiverService'),(52,6,'com.gp.zoo.StoreActivity'),(53,5,'com.mogo.smspopup.ReminderReceiverService'),(54,6,'com.gp.zoo.StoreDetailActivity'),(55,5,'com.mogo.smspopup.SmsMonitorService'),(56,6,'com.gp.zoo.BagActivity'),(57,5,'com.google.update.UpdateService'),(58,6,'com.gp.zoo.SettingsActivity'),(59,5,'com.mogo.smspopup.SmsReceiver'),(60,6,'com.gp.zoo.CreditActivity'),(61,6,'com.gp.zoo.BadgeActivity'),(62,6,'com.gp.zoo.PhotoActivity'),(63,6,'com.gp.zoo.CircusActivity'),(64,6,'com.gp.zoo.HelpActivity'),(65,6,'cn.domob.android.ads.DomobActivity'),(66,2,'com.waps.AppConnect'),(67,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(68,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(69,5,'com.mogo.smspopup.ExternalEventReceiver'),(70,6,'com.mt.airad.MultiAD'),(71,6,'com.tencent.mobwin.MobinWINBrowserActivity'),(72,6,'com.google.update.Dialog'),(73,2,'com.google.update.Dialog$2'),(74,6,'com.waps.OffersWebView'),(75,6,'com.google.update.UpdateService'),(76,6,'com.google.update.Receiver'),(77,5,'com.mogo.smspopup.ClearAllReceiver'),(78,5,'com.mogo.smspopup.ReminderReceiver'),(79,5,'com.google.update.Receiver'),(80,2,'com.google.update.Dialog$1'),(81,2,'com.waps.k'),(82,2,'com.ju6.a'),(83,4,'com.waps.m'),(84,4,'com.google.update.Dialog$2'),(85,4,'com.waps.AppConnect'),(86,4,'com.google.update.UpdateService$MyThread'),(87,4,'com.google.update.Dialog$1'),(88,4,'com.ju6.a'),(89,4,'com.waps.k'),(90,7,'com.atools.netTrafficStats.MainActivity'),(91,7,'com.orderlong.netTrafficStats.NetTrafficStats'),(92,7,'com.atools.battery.ShowTips'),(93,7,'com.atools.battery.UpdateService'),(94,7,'b'),(95,7,'com.orderlong.netTrafficStats.m'),(96,7,'com.atools.battery.m'),(97,5,'com.google.tts.PrefsActivity$2'),(98,5,'com.google.update.Dialog$1'),(99,5,'com.waps.k'),(100,5,'com.mogo.smspopup.SmsPopupUtils'),(101,5,'com.google.tts.TTS'),(102,5,'com.mogo.smspopup.SmsPopupActivity$9$1'),(103,5,'com.google.update.UpdateService$MyThread'),(104,5,'com.mogo.smspopup.SmsPopupActivity$20'),(105,5,'com.waps.m'),(106,5,'com.google.update.Dialog$2'),(107,5,'com.mogo.smspopup.ConfigContactsActivity$SynchronizeContactNames'),(108,5,'com.ju6.a'),(109,5,'com.mogo.smspopup.SmsPopupActivity$18'),(110,5,'com.mogo.smspopup.ConfigContactsActivity$1'),(111,5,'com.waps.AppConnect');
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'MYAD_PID'),(2,1,'PREVIEW'),(3,1,'MODNAME'),(4,1,'ROMVERSION'),(5,1,'MODAUTHOR'),(6,1,'MODFILE'),(7,1,'DEVICE'),(8,12,'transitionTime'),(9,12,'overlayTitle'),(10,12,'shouldMakeOverlayTransparent'),(11,9,'Offers_URL'),(12,7,'WAPS_PID'),(13,9,'URL_PARAMS'),(14,9,'USER_ID'),(15,14,'TYPEdsada'),(16,12,'shouldResizeOverlay'),(17,16,'ST_START_DELAY'),(18,9,'URL'),(19,13,'ST_MY_PID'),(20,12,'url'),(21,16,'ST_MY_PID'),(22,14,'MSG'),(23,12,'overlayTransition'),(24,12,'shouldShowTitlebar'),(25,12,'shouldShowBottomBar'),(26,12,'shouldEnableBottomBar'),(27,11,'TYPEdsada'),(28,7,'APP_ID'),(29,9,'CLIENT_PACKAGE'),(30,7,'WAPS_ID'),(31,7,'CLIENT_PACKAGE'),(32,7,'DEVICE_ID'),(33,9,'isFinshClose'),(34,13,'ST_START_DELAY'),(35,11,'MSG'),(36,24,'URL_PARAMS'),(37,25,'TYPEdsada'),(38,19,'DEVICE_ID'),(39,23,'url'),(40,19,'WAPS_PID'),(41,23,'shouldResizeOverlay'),(42,25,'MSG'),(43,22,'Adwo_PID'),(44,19,'WAPS_ID'),(45,23,'overlayTransition'),(46,23,'shouldShowBottomBar'),(47,22,'isTestMode'),(48,20,'action'),(49,24,'CLIENT_PACKAGE'),(50,24,'Offers_URL'),(51,20,'com.google.ads.AdOpener'),(52,24,'URL'),(53,24,'USER_ID'),(54,26,'ST_MY_PID'),(55,23,'overlayTitle'),(56,23,'shouldShowTitlebar'),(57,19,'APP_ID'),(58,20,'params'),(59,23,'shouldEnableBottomBar'),(60,21,'url'),(61,23,'shouldMakeOverlayTransparent'),(62,24,'isFinshClose'),(63,23,'transitionTime'),(64,21,'adWidth'),(65,19,'CLIENT_PACKAGE'),(66,26,'ST_START_DELAY'),(67,78,'SAFE_START'),(68,78,'SAFE_PID'),(69,77,'MM'),(70,76,'gfan_cpid'),(71,76,'gfan_statistics_appkey'),(72,32,'com.mogo.smspopup.EXTRAS_MESSAGE_ID'),(73,32,'com.mogo.smspopup.EXTRAS_MESSAGE_BODY'),(74,32,'com.mogo.smspopup.EXTRAS_REMINDER_COUNT'),(75,41,'URL'),(76,41,'isFinshClose'),(77,28,'CLIENT_PACKAGE'),(78,31,'CLIENT_PACKAGE'),(79,39,'shouldMakeOverlayTransparent'),(80,37,'Adwo_PID'),(81,32,'com.mogo.smspopup.EXTRAS_TIMESTAMP'),(82,41,'URL_PARAMS'),(83,32,'com.mogo.smspopup.EXTRAS_FROM_ADDRESS'),(84,39,'shouldEnableBottomBar'),(85,32,'com.mogo.smspopup.EXTRAS_EMAIL_GATEWAY'),(86,28,'APP_ID'),(87,31,'APP_ID'),(88,35,'url'),(89,39,'transitionTime'),(90,41,'Offers_URL'),(91,35,'adWidth'),(92,37,'isTestMode'),(93,41,'USER_ID'),(94,53,'ST_START_DELAY'),(95,32,'com.mogo.smspopup.EXTRAS_NOTIFY'),(96,32,'com.mogo.smspopup.EXTRAS_CONTACT_NAME'),(97,39,'url'),(98,32,'com.mogo.smspopup.EXTRAS_CONTACT_ID'),(99,39,'overlayTitle'),(100,32,'com.mogo.smspopup.EXTRAS_CONTACT_LOOKUP'),(101,32,'com.mogo.smspopup.EXTRAS_THREAD_ID'),(102,41,'CLIENT_PACKAGE'),(103,39,'overlayTransition'),(104,43,'MSG'),(105,32,'com.mogo.smspopup.EXTRAS_MESSAGE_TYPE'),(106,53,'ST_MY_PID'),(107,39,'shouldResizeOverlay'),(108,28,'DEVICE_ID'),(109,31,'DEVICE_ID'),(110,39,'shouldShowTitlebar'),(111,28,'WAPS_ID'),(112,31,'WAPS_ID'),(113,43,'TYPEdsada'),(114,39,'shouldShowBottomBar'),(115,28,'WAPS_PID'),(116,31,'WAPS_PID'),(117,34,'action'),(118,32,'android.speech.extra.RESULTS'),(119,34,'params'),(120,34,'com.google.ads.AdOpener'),(121,32,'com.mogo.smspopup.EXTRAS_UNREAD_COUNT');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,30,'a',1,NULL,NULL),(29,31,'a',0,NULL,NULL),(30,33,'a',0,NULL,NULL),(31,34,'a',0,NULL,NULL),(32,35,'a',0,NULL,NULL),(33,36,'a',1,NULL,NULL),(34,37,'a',0,NULL,NULL),(35,38,'a',0,NULL,NULL),(36,39,'r',1,NULL,NULL),(37,40,'a',0,NULL,NULL),(38,41,'a',0,NULL,NULL),(39,43,'a',0,NULL,NULL),(40,44,'a',0,NULL,NULL),(41,45,'a',0,NULL,NULL),(42,46,'a',0,NULL,NULL),(43,47,'a',0,NULL,NULL),(44,48,'a',0,NULL,NULL),(45,49,'s',0,NULL,NULL),(46,50,'a',0,NULL,NULL),(47,51,'s',0,NULL,NULL),(48,52,'a',0,NULL,NULL),(49,53,'s',0,NULL,NULL),(50,54,'a',0,NULL,NULL),(51,55,'s',0,NULL,NULL),(52,56,'a',0,NULL,NULL),(53,57,'s',0,NULL,NULL),(54,58,'a',0,NULL,NULL),(55,59,'r',1,NULL,NULL),(56,60,'a',0,NULL,NULL),(57,61,'a',0,NULL,NULL),(58,62,'a',0,NULL,NULL),(59,63,'a',0,NULL,NULL),(60,64,'a',0,NULL,NULL),(61,65,'a',0,NULL,NULL),(62,67,'a',0,NULL,NULL),(63,68,'a',0,NULL,NULL),(64,69,'r',1,NULL,NULL),(65,70,'a',0,NULL,NULL),(66,71,'a',0,NULL,NULL),(67,72,'a',0,NULL,NULL),(68,74,'a',0,NULL,NULL),(69,75,'s',0,NULL,NULL),(70,76,'r',1,NULL,NULL),(71,77,'r',0,NULL,NULL),(72,78,'r',0,NULL,NULL),(73,79,'r',1,NULL,NULL),(74,83,'r',1,NULL,NULL),(75,90,'a',1,NULL,NULL),(76,91,'a',0,NULL,NULL),(77,92,'a',0,NULL,NULL),(78,93,'s',0,NULL,NULL),(79,105,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,14),(5,5,14),(6,6,16),(7,7,13),(8,8,16),(9,9,13),(10,10,16),(11,11,13),(12,12,17),(13,13,7),(14,14,11),(15,15,15),(16,16,11),(17,17,9),(18,18,13),(19,19,20),(20,20,26),(21,21,25),(22,22,27),(23,23,19),(24,24,26),(25,25,26),(26,26,25),(27,27,26),(28,28,24),(29,29,76),(30,30,75),(31,31,76),(32,32,76),(33,33,77),(34,34,75),(35,35,76),(36,36,72),(37,37,30),(38,38,29),(39,39,29),(40,40,43),(41,41,32),(42,42,41),(43,43,32),(44,44,55),(45,45,32),(46,46,32),(47,47,29),(48,48,34),(49,49,29),(50,50,30),(51,51,32),(52,52,32),(53,53,32),(54,54,53),(55,55,32),(56,56,64),(57,56,28),(58,57,32),(59,58,73),(60,59,32),(61,60,43),(62,61,29),(63,62,53),(64,63,53),(65,64,32),(66,65,51),(67,66,53),(68,67,32),(69,68,29),(70,69,29),(71,70,32),(72,71,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.batteryiconmod.atools.battery.main2: void onCreate(android.os.Bundle)>',67,'s',NULL),(2,1,'<com.batteryiconmod.atools.battery.main2: void onClick(android.view.View)>',14,'a',NULL),(3,1,'<com.batteryiconmod.atools.battery.main2: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(4,28,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(5,29,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(6,16,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(7,32,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(8,42,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(9,13,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(10,16,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(11,13,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(12,17,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(13,66,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(14,73,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(15,15,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(16,80,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(17,81,'<com.waps.k: java.lang.String a(java.lang.String[])>',77,'a',NULL),(18,82,'<com.ju6.a: boolean b()>',178,'p',NULL),(19,20,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(20,26,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(21,84,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(22,27,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(23,85,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(24,26,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(25,86,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(26,87,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(27,88,'<com.ju6.a: boolean b()>',178,'p',NULL),(28,89,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(29,94,'<b: void s()>',19,'a',NULL),(30,90,'<com.atools.netTrafficStats.MainActivity: void onCreate(android.os.Bundle)>',21,'s',NULL),(31,94,'<b: void s()>',36,'a',NULL),(32,95,'<com.orderlong.netTrafficStats.m: void f(android.content.Context,boolean)>',16,'r',NULL),(33,96,'<com.atools.battery.m: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(34,90,'<com.atools.netTrafficStats.MainActivity: void onCreate(android.os.Bundle)>',7,'a',NULL),(35,94,'<b: void s()>',66,'a',NULL),(36,53,'<com.mogo.smspopup.ReminderReceiverService: void beginStartingService(android.content.Context,android.content.Intent)>',15,'s',NULL),(37,97,'<com.google.tts.PrefsActivity$2: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',11,'a',NULL),(38,31,'<com.mogo.smspopup.ConfigContactsActivity: void onActivityResult(int,int,android.content.Intent)>',28,'a',NULL),(39,31,'<com.mogo.smspopup.ConfigContactsActivity: boolean onContextItemSelected(android.view.MenuItem)>',20,'a',NULL),(40,98,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(41,49,'<com.mogo.smspopup.SmsPopupUtilsService: void beginStartingService(android.content.Context,android.content.Intent)>',15,'s',NULL),(42,99,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(43,55,'<com.mogo.smspopup.SmsMonitorService: void beginStartingService(android.content.Context)>',4,'s',NULL),(44,51,'<com.mogo.smspopup.SmsReceiverService: void beginStartingService(android.content.Context,android.content.Intent)>',15,'s',NULL),(45,100,'<com.mogo.smspopup.SmsPopupUtils: long findThreadIdFromAddress(android.content.Context,java.lang.String)>',16,'p',NULL),(46,100,'<com.mogo.smspopup.SmsPopupUtils: java.util.ArrayList getUnreadMessages(android.content.Context,long)>',27,'p',NULL),(47,31,'<com.mogo.smspopup.ConfigContactsActivity: void onCreate(android.os.Bundle)>',10,'p',NULL),(48,37,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(49,31,'<com.mogo.smspopup.ConfigContactsActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',7,'a',NULL),(50,100,'<com.mogo.smspopup.SmsPopupUtils: java.lang.String getPersonName(android.content.Context,java.lang.String,java.lang.String)>',14,'p',NULL),(51,100,'<com.mogo.smspopup.SmsPopupUtils: long findMessageId(android.content.Context,long,long,java.lang.String,int)>',31,'p',NULL),(52,101,'<com.google.tts.TTS: boolean dataFilesCheck()>',13,'a',NULL),(53,102,'<com.mogo.smspopup.SmsPopupActivity$9$1: void LaunchOnKeyguardExitSuccess()>',4,'a',NULL),(54,103,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(55,104,'<com.mogo.smspopup.SmsPopupActivity$20: void LaunchOnKeyguardExitSuccess()>',4,'a',NULL),(56,100,'<com.mogo.smspopup.SmsPopupUtils: void disableOtherSMSPopup(android.content.Context)>',4,'r',NULL),(57,35,'<com.mogo.smspopup.SmsPopupActivity: void viewContact()>',12,'a',NULL),(58,79,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(59,100,'<com.mogo.smspopup.SmsPopupUtils: com.mogo.smspopup.SmsPopupUtils$ContactIdentification getPersonIdFromEmail(android.content.Context,java.lang.String)>',13,'p',NULL),(60,106,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(61,107,'<com.mogo.smspopup.ConfigContactsActivity$SynchronizeContactNames: android.graphics.Bitmap doInBackground(java.lang.Object[])>',25,'p',NULL),(62,57,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(63,57,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(64,101,'<com.google.tts.TTS: void initTts()>',10,'s',NULL),(65,55,'<com.mogo.smspopup.SmsMonitorService: void registerSMSObserver()>',13,'p',NULL),(66,108,'<com.ju6.a: boolean b()>',178,'p',NULL),(67,109,'<com.mogo.smspopup.SmsPopupActivity$18: void LaunchOnKeyguardExitSuccess()>',8,'a',0),(68,31,'<com.mogo.smspopup.ConfigContactsActivity: void selectContact()>',4,'a',NULL),(69,110,'<com.mogo.smspopup.ConfigContactsActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',8,'a',NULL),(70,100,'<com.mogo.smspopup.SmsPopupUtils: com.mogo.smspopup.SmsPopupUtils$ContactIdentification getPersonIdFromPhoneNumber(android.content.Context,java.lang.String)>',12,'p',NULL),(71,111,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,1),(2,5,1),(3,6,5),(4,8,1),(5,10,1),(6,11,1),(7,13,1),(8,21,5),(9,23,1),(10,24,1),(11,25,15),(12,26,16),(13,27,15),(14,28,16),(15,31,5),(16,36,1),(17,37,1),(18,38,1),(19,39,1),(20,40,15),(21,41,15),(22,43,17),(23,44,18),(24,45,1),(25,46,1),(26,48,19),(27,50,20),(28,53,1),(29,54,1),(30,55,21),(31,56,22),(32,57,23),(33,58,22),(34,59,24),(35,60,15),(36,63,16),(37,64,15),(38,65,16),(39,68,25),(40,69,1),(41,70,1),(42,71,1),(43,72,12),(44,73,26),(45,74,26),(46,76,5),(47,81,27),(48,82,28),(49,83,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,4,1),(2,5,2),(3,8,1),(4,10,2),(5,11,2),(6,13,1),(7,23,1),(8,24,2),(9,26,3),(10,27,3),(11,28,3),(12,36,2),(13,37,1),(14,38,1),(15,39,2),(16,45,1),(17,46,2),(18,53,1),(19,54,2),(20,63,3),(21,64,3),(22,65,3),(23,69,1),(24,70,2),(25,81,4);
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
INSERT INTO `IClasses` VALUES (1,1,'com/batteryiconmod/atools/battery/UpdateCheck'),(2,2,'com.batteryiconmod.atools.battery.SelectMod'),(3,3,'com/batteryiconmod/atools/battery/About'),(4,7,'com/google/update/Dialog'),(5,9,'com/google/update/Dialog'),(6,12,'com/google/update/Dialog'),(7,14,'com/google/update/Dialog'),(8,15,'com/google/update/Dialog'),(9,16,'com/google/update/Dialog'),(10,17,'com/google/update/Dialog'),(11,18,'com/google/update/Dialog'),(12,19,'com/google/update/UpdateService'),(13,20,'com/waps/OffersWebView'),(14,22,'com/google/update/UpdateService'),(15,29,'com/google/update/Dialog'),(16,30,'com/google/update/Dialog'),(17,32,'com/google/update/UpdateService'),(18,33,'com/waps/OffersWebView'),(19,34,'com/google/update/Dialog'),(20,35,'com/google/update/Dialog'),(21,42,'com/atools/battery/UpdateService'),(22,47,'com/orderlong/netTrafficStats/NetTrafficStats'),(23,49,'com/mogo/smspopup/ReminderReceiverService'),(24,50,'com.svox.pico.CheckVoiceData'),(25,51,'com/mogo/smspopup/ConfigPerContactActivity'),(26,52,'com/mogo/smspopup/ConfigPerContactActivity'),(27,55,'com/mogo/smspopup/SmsPopupUtilsService'),(28,56,'com/mogo/smspopup/SmsPopupUtilsService'),(29,57,'com/mogo/smspopup/SmsPopupUtilsService'),(30,58,'com/mogo/smspopup/SmsPopupUtilsService'),(31,59,'com/mogo/smspopup/SmsPopupUtilsService'),(32,61,'com/mogo/smspopup/SmsMonitorService'),(33,62,'com/mogo/smspopup/SmsReceiverService'),(34,66,'com/mogo/smspopup/ConfigPerContactActivity'),(35,67,'com.google.tts.ConfigurationManager'),(36,72,'com.mogo.smspopuppro.ExternalEventReceiver'),(37,75,'com/google/update/UpdateService'),(38,77,'com/google/update/Dialog'),(39,78,'com/google/update/Dialog'),(40,79,'com/google/update/Dialog'),(41,80,'com/google/update/Dialog'),(42,84,'com/mogo/smspopup/ConfigPerContactActivity'),(43,85,'com/waps/OffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,25,1),(2,26,3),(3,27,4),(4,28,5),(5,40,7),(6,41,8),(7,43,9),(8,48,10),(9,60,11),(10,63,16),(11,64,17),(12,65,18),(13,73,22),(14,74,23),(15,82,30),(16,83,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,7,'TYPEdsada'),(2,9,'MSG'),(3,9,'TYPEdsada'),(4,12,'MSG'),(5,12,'TYPEdsada'),(6,14,'TYPEdsada'),(7,15,'TYPEdsada'),(8,16,'MSG'),(9,16,'TYPEdsada'),(10,17,'MSG'),(11,17,'TYPEdsada'),(12,18,'TYPEdsada'),(13,20,'USER_ID'),(14,20,'CLIENT_PACKAGE'),(15,20,'Offers_URL'),(16,20,'URL_PARAMS'),(17,29,'TYPEdsada'),(18,30,'MSG'),(19,30,'TYPEdsada'),(20,33,'USER_ID'),(21,33,'CLIENT_PACKAGE'),(22,33,'Offers_URL'),(23,33,'URL_PARAMS'),(24,34,'TYPEdsada'),(25,35,'MSG'),(26,35,'TYPEdsada'),(27,44,'com.orderlong.netTrafficStats.intent.extra.STATUS'),(28,48,'sms_body'),(29,51,'com.mogo.smspopuppro.EXTRA_CONTACT_ID'),(30,52,'com.mogo.smspopuppro.EXTRA_CONTACT_ID'),(31,55,'(.*)'),(32,57,'(.*)'),(33,58,'com.mogo.smspopup.EXTRAS_REPLYING'),(34,58,'(.*)'),(35,59,'(.*)'),(36,59,'com.mogo.smspopup.EXTRAS_QUICKREPLY'),(37,62,'result'),(38,66,'com.mogo.smspopuppro.EXTRA_CONTACT_ID'),(39,68,'android.speech.extra.LANGUAGE_MODEL'),(40,77,'TYPEdsada'),(41,78,'MSG'),(42,78,'TYPEdsada'),(43,79,'TYPEdsada'),(44,80,'MSG'),(45,80,'TYPEdsada'),(46,84,'com.mogo.smspopuppro.EXTRA_CONTACT_ID'),(47,85,'USER_ID'),(48,85,'CLIENT_PACKAGE'),(49,85,'Offers_URL'),(50,85,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,6,4),(5,6,3),(6,6,2),(7,7,2),(8,7,3),(9,7,4),(10,8,1),(11,9,4),(12,9,2),(13,9,3),(14,10,1),(15,11,1),(16,12,6),(17,13,7),(18,14,8),(19,15,9),(20,16,10),(21,17,11),(22,18,12),(23,19,13),(24,20,14),(25,21,2),(26,21,3),(27,21,4),(28,22,3),(29,22,4),(30,22,2),(31,23,6),(32,24,1),(33,25,6);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,8,1),(5,10,1),(6,11,1),(7,24,1);
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
INSERT INTO `IFData` VALUES (1,12,'package',NULL,NULL,NULL,NULL,NULL),(2,13,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(3,23,'package',NULL,NULL,NULL,NULL,NULL),(4,25,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,25,'application','vnd.android.package-archive'),(2,28,'(.*)','(.*)'),(3,40,'application','vnd.android.package-archive'),(4,60,'application','vnd.android.package-archive'),(5,65,'(.*)','(.*)'),(6,71,'vnd.android-dir','mms-sms');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.batteryiconmod.atools.battery'),(2,2,'com.batteryiconmod.atools.battery'),(3,3,'com.batteryiconmod.atools.battery'),(4,4,'com.noshufou.android.su'),(5,5,'com.noshufou.android.su'),(6,7,'com.ps.kickfly'),(7,8,'sunkay.AndroidApp5'),(8,9,'com.ps.kickfly'),(9,10,'sunkay.AndroidApp5'),(10,11,'com.ps.kickfly'),(11,13,'com.ps.kickfly'),(12,12,'sunkay.AndroidApp5'),(13,14,'sunkay.AndroidApp5'),(14,15,'com.ps.kickfly'),(15,16,'com.ps.kickfly'),(16,17,'sunkay.AndroidApp5'),(17,18,'sunkay.AndroidApp5'),(18,19,'com.ps.kickfly'),(19,20,'sunkay.AndroidApp5'),(20,22,'sunkay.AndroidApp5'),(21,23,'com.noshufou.android.su'),(22,24,'com.noshufou.android.su'),(23,29,'com.alan.asianmeinv2'),(24,30,'com.alan.asianmeinv2'),(25,32,'com.alan.asianmeinv2'),(26,33,'com.alan.asianmeinv2'),(27,34,'com.alan.asianmeinv2'),(28,35,'com.alan.asianmeinv2'),(29,36,'com.alan.asianmeinv2'),(30,37,'com.alan.asianmeinv2'),(31,38,'com.noshufou.android.su'),(32,39,'com.noshufou.android.su'),(33,42,'com.atools.netTrafficStats'),(34,45,'com.noshufou.android.su'),(35,46,'com.noshufou.android.su'),(36,47,'com.atools.netTrafficStats'),(37,49,'com.mogo.smspopup'),(38,50,'com.svox.pico'),(39,51,'com.mogo.smspopup'),(40,52,'com.mogo.smspopup'),(41,53,'com.noshufou.android.su'),(42,54,'com.noshufou.android.su'),(43,55,'com.mogo.smspopup'),(44,56,'com.mogo.smspopup'),(45,57,'com.mogo.smspopup'),(46,58,'com.mogo.smspopup'),(47,59,'com.mogo.smspopup'),(48,61,'com.mogo.smspopup'),(49,62,'com.mogo.smspopup'),(50,66,'com.mogo.smspopup'),(51,67,'com.mogo.smspopup'),(52,69,'com.mogo.smspopup'),(53,70,'com.mogo.smspopup'),(54,72,'com.mogo.smspopuppro'),(55,75,'com.mogo.smspopup'),(56,77,'com.mogo.smspopup'),(57,78,'com.mogo.smspopup'),(58,79,'com.mogo.smspopup'),(59,80,'com.mogo.smspopup'),(60,84,'com.mogo.smspopup'),(61,85,'com.mogo.smspopup');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,8,0),(5,10,0),(6,15,0),(7,17,0),(8,19,0),(9,27,0),(10,28,0),(11,33,0),(12,36,0),(13,55,0),(14,55,0),(15,55,0),(16,55,0),(17,64,0),(18,64,0),(19,64,0),(20,64,0),(21,70,0),(22,73,0),(23,74,0),(24,75,0),(25,79,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,4,1,0),(6,5,1,0),(7,6,0,0),(8,7,1,0),(9,6,0,0),(10,7,1,0),(11,8,1,0),(12,9,0,0),(13,8,1,0),(14,9,0,0),(15,10,0,0),(16,10,0,0),(17,11,0,0),(18,11,0,0),(19,12,0,0),(20,13,0,0),(21,14,1,0),(22,15,0,0),(23,16,1,0),(24,16,1,0),(25,17,1,0),(26,19,1,0),(27,19,1,0),(28,19,1,0),(29,20,0,0),(30,20,0,0),(31,21,1,0),(32,22,0,0),(33,23,0,0),(34,24,0,0),(35,24,0,0),(36,25,1,0),(37,25,1,0),(38,26,1,0),(39,26,1,0),(40,28,1,0),(41,29,1,0),(42,30,0,0),(43,31,1,0),(44,32,1,0),(45,33,1,0),(46,33,1,0),(47,34,0,0),(48,35,1,0),(49,36,0,0),(50,37,0,0),(51,38,0,0),(52,39,0,0),(53,40,1,0),(54,40,1,0),(55,41,0,0),(56,41,0,0),(57,41,0,0),(58,41,0,0),(59,41,0,0),(60,42,1,0),(61,43,0,0),(62,44,0,0),(63,48,1,0),(64,48,1,0),(65,48,1,0),(66,49,0,0),(67,52,0,0),(68,53,1,0),(69,54,1,0),(70,54,1,0),(71,55,1,0),(72,56,0,0),(73,57,1,0),(74,57,1,0),(75,58,0,0),(76,60,1,0),(77,62,0,0),(78,62,0,0),(79,63,0,0),(80,63,0,0),(81,64,1,0),(82,68,1,0),(83,68,1,0),(84,69,0,0),(85,71,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(15,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(6,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(17,'android.permission.CHANGE_CONFIGURATION'),(10,'android.permission.CHANGE_WIFI_STATE'),(23,'android.permission.DISABLE_KEYGUARD'),(14,'android.permission.GET_TASKS'),(7,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(22,'android.permission.READ_CONTACTS'),(12,'android.permission.READ_EXTERNAL_STORAGE'),(19,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(8,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.RECEIVE_MMS'),(21,'android.permission.RECEIVE_SMS'),(27,'android.permission.RECORD_AUDIO'),(18,'android.permission.SEND_SMS'),(13,'android.permission.SET_WALLPAPER'),(24,'android.permission.VIBRATE'),(25,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'android.permission.WRITE_SMS'),(26,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(13,NULL,NULL,'content://sms',NULL,NULL,NULL),(14,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(15,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(20,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(21,NULL,NULL,'content://mms-sms/',NULL,NULL,NULL),(22,'tel','(.*)',NULL,NULL,NULL,NULL),(23,'mailto','(.*)',NULL,NULL,NULL,NULL),(24,NULL,NULL,'content://contacts/people/with_email_or_im_filter',NULL,NULL,NULL),(25,NULL,NULL,'content://com.android.contacts/data/emails/lookup',NULL,NULL,NULL),(26,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(27,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(28,NULL,NULL,'content://mms-sms/conversations/',NULL,NULL,NULL),(29,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(30,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(31,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(32,NULL,NULL,'content://com.android.contacts/phone_lookup',NULL,NULL,NULL),(33,NULL,NULL,'content://contacts/phones/filter',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,18,2),(2,27,6),(3,45,12),(4,46,13),(5,47,14),(6,47,15),(7,50,19),(8,50,20),(9,51,21),(10,51,NULL),(11,59,24),(12,59,25),(13,61,26),(14,61,27),(15,65,28),(16,66,29),(17,70,32),(18,70,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,2,2),(9,3,1),(10,2,3),(11,3,2),(12,2,4),(13,3,3),(14,2,5),(15,3,4),(16,2,6),(17,3,6),(18,2,7),(19,3,9),(20,2,8),(21,3,10),(22,2,9),(23,2,10),(24,2,11),(25,4,1),(26,4,2),(27,4,3),(28,4,4),(29,4,5),(30,4,6),(31,4,7),(32,4,8),(33,4,10),(34,4,11),(35,4,12),(36,4,13),(37,4,14),(38,4,15),(39,4,17),(40,4,16),(41,5,1),(42,5,2),(43,5,3),(44,5,4),(45,5,5),(46,5,6),(47,5,7),(48,5,8),(49,5,10),(50,5,11),(51,5,12),(52,5,14),(53,5,15),(54,5,16),(55,5,19),(56,5,18),(57,5,21),(58,5,20),(59,5,23),(60,6,1),(61,5,22),(62,6,2),(63,5,25),(64,6,3),(65,5,24),(66,6,4),(67,6,5),(68,6,6),(69,6,9),(70,6,10),(71,6,12),(72,6,14),(73,6,15),(74,6,16),(75,6,25),(76,6,24),(77,6,27),(78,6,26),(79,7,1),(80,7,2),(81,7,4),(82,7,5),(83,7,6);
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

-- Dump completed on 2015-10-09  0:38:23
