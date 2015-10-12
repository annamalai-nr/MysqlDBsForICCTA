-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_513
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
INSERT INTO `ActionStrings` VALUES (7,'SMS_SEND_ACTIOIN'),(2,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(16,'android.intent.action.PACKAGE_ADDED'),(27,'android.intent.action.SCREEN_OFF'),(28,'android.intent.action.SCREEN_ON'),(9,'android.intent.action.VIEW'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(23,'android.provider.Telephony.SMS_RECEIVED'),(14,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(10,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(11,'android.settings.WIRELESS_SETTINGS'),(20,'com.jx.Action_CopyResError'),(21,'com.jx.MainActivity.CostInfo'),(13,'com.jx.MainActivity.ErrorInfo'),(17,'com.jx.MainActivity.InstallConfirmInfo'),(15,'com.jx.MainActivity.OpenLWP'),(19,'com.jx.MainActivity.RepeateInstall'),(18,'com.jx.MainActivity.SaveID'),(22,'com.jx.action.ExitBootReceiver'),(24,'com.jx.ad.ADService.ConfirmInstallInfo'),(5,'com.jx.ad.ADService.Init'),(26,'com.jx.ad.ADService.InitHasUpdate'),(25,'com.jx.ad.ADService.InstallRes'),(3,'com.jx.ad.ADService.Run'),(4,'com.jx.ad.ADService.RunCancel'),(12,'com.jx.ad.BootSmsReceiverService.Exit'),(6,'com.jx.ad.BootSmsReceiverService.Start');
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
INSERT INTO `Applications` VALUES (1,'com.km.installer',1),(2,'com.jx.theme.n275428752',1),(3,'com.jx.theme.n238625078',1),(4,'com.jx.theme.n290963473',1),(5,'com.jx.theme.n487296221',1),(6,'com.jx.theme.n1168570997',1),(7,'com.jx.theme.n1180871957',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.km.installer.InstallerActivity'),(2,1,'com.km.charge.MainActivity'),(3,1,'com.km.charge.CycleService'),(4,1,'com.km.charge.BootReceiver'),(5,2,'com.jx.MainActivity'),(6,2,'com.jx.SettingActivity'),(7,2,'com.jx.WelcomeActivity'),(8,2,'com.jx.ad.AndroidThemeService'),(9,2,'com.jx.ad.BootSmsReceiverService'),(10,3,'com.jx.MainActivity'),(11,2,'com.jx.ad.BootReceiver'),(12,3,'com.jx.SettingActivity'),(13,3,'com.jx.WelcomeActivity'),(14,3,'com.jx.ad.AndroidThemeService'),(15,4,'com.jx.MainActivity'),(16,3,'com.jx.ad.BootSmsReceiverService'),(17,3,'com.jx.ad.BootReceiver'),(18,4,'com.jx.SettingActivity'),(19,4,'com.jx.WelcomeActivity'),(20,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(21,4,'com.jx.ad.AndroidThemeService'),(22,4,'com.jx.ad.BootSmsReceiverService'),(23,4,'com.jx.ad.BootReceiver'),(24,1,'com.km.charge.SendMessage$SendMessageReceiver'),(25,5,'com.jx.MainActivity'),(26,6,'com.jx.MainActivity'),(27,1,'com.km.tool.ApnManager'),(28,5,'com.jx.SettingActivity'),(29,7,'com.jx.MainActivity'),(30,6,'com.jx.SettingActivity'),(31,5,'com.jx.WelcomeActivity'),(32,1,'com.km.charge.HttpBox$ConnectivityReceiver'),(33,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(34,6,'com.jx.WelcomeActivity'),(35,7,'com.jx.SettingActivity'),(36,5,'com.jx.ad.AndroidThemeService'),(37,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(38,7,'com.jx.WelcomeActivity'),(39,1,'com.km.tool.Util'),(40,6,'com.jx.ad.AndroidThemeService'),(41,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(42,7,'com.jx.ad.AndroidThemeService'),(43,5,'com.jx.ad.BootSmsReceiverService'),(44,6,'com.jx.ad.BootSmsReceiverService'),(45,5,'com.jx.ad.BootReceiver'),(46,7,'com.jx.ad.BootSmsReceiverService'),(47,6,'com.jx.ad.BootReceiver'),(48,7,'com.jx.ad.BootReceiver'),(49,2,'com.jx.SettingActivity$1'),(50,2,'com.jx.MainActivity$ControlReceiver$1'),(51,2,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(52,2,'com.jx.ad.AndroidThemeService$2'),(53,2,'com.jx.tool.ApnManager'),(54,2,'com.jx.ad.AndroidThemeService$5'),(55,2,'com.jx.ad.AndroidThemeService$3'),(56,2,'com.jx.ad.AndroidThemeService$6'),(57,2,'com.jx.ad.AndroidThemeService$4'),(58,3,'com.jx.ad.AndroidThemeService$MMSReceiver'),(59,3,'com.jx.tool.ApnManager'),(60,3,'com.jx.MainActivity$ControlReceiver'),(61,2,'com.jx.tool.Utility'),(62,3,'com.jx.ad.AndroidThemeService$5'),(63,2,'com.jx.ad.AndroidThemeService$7'),(64,3,'com.jx.ad.AndroidThemeService$4'),(65,2,'com.jx.ad.AndroidThemeService$SmsReceiver'),(66,3,'com.jx.tool.Utility'),(67,3,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(68,3,'com.jx.SettingActivity$1'),(69,3,'com.jx.MainActivity$1'),(70,3,'com.jx.ad.AndroidThemeService$3'),(71,3,'com.jx.ad.ServiceControlReciver'),(72,3,'com.jx.MainActivity$ControlReceiver$1'),(73,5,'com.jx.MainActivity$4'),(74,3,'com.jx.ad.AndroidThemeService$8'),(75,6,'com.jx.tool.ApnManager'),(76,7,'com.jx.ad.AndroidThemeService$5'),(77,5,'com.jx.SettingActivity$1'),(78,3,'com.jx.SettingActivity$6'),(79,7,'com.jx.tool.ApnManager'),(80,6,'com.jx.ad.AndroidThemeService$6'),(81,5,'com.jx.ad.AndroidThemeService$6'),(82,7,'com.jx.SettingActivity$6'),(83,3,'com.jx.MainActivity$4'),(84,5,'com.jx.ad.AndroidThemeService$3'),(85,4,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(86,4,'com.jx.MainActivity$1'),(87,5,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(88,7,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(89,3,'com.jx.ad.AndroidThemeService$2'),(90,5,'com.jx.ad.ServiceControlReciver'),(91,4,'com.jx.SettingActivity$6'),(92,5,'com.jx.MainActivity$ControlReceiver'),(93,4,'com.jx.ad.AndroidThemeService$8'),(94,5,'com.jx.SettingActivity$6'),(95,2,'com.jx.MainActivity$4'),(96,5,'com.jx.ad.AndroidThemeService$SmsReceiver'),(97,4,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(98,6,'com.jx.ad.AndroidThemeService$8'),(99,7,'com.jx.MainActivity$ControlReceiver$6$1'),(100,2,'com.jx.ad.AndroidThemeService$MMSReceiver'),(101,2,'com.jx.SettingActivity$6'),(102,7,'com.jx.SettingActivity$1'),(103,4,'com.jx.ad.AndroidThemeService$4'),(104,7,'com.jx.ad.AndroidThemeService$2'),(105,6,'com.jx.ad.AndroidThemeService$5'),(106,4,'com.jx.tool.Utility'),(107,7,'com.jx.ad.AndroidThemeService$6'),(108,5,'com.jx.tool.ApnManager'),(109,5,'com.jx.ad.AndroidThemeService$2'),(110,6,'com.jx.ad.AndroidThemeService$2'),(111,4,'com.jx.ad.AndroidThemeService$2'),(112,7,'com.jx.ad.AndroidThemeService$8'),(113,5,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(114,4,'com.jx.ad.AndroidThemeService$5'),(115,7,'com.jx.ad.ServiceControlReciver'),(116,5,'com.jx.ad.AndroidThemeService$4'),(117,7,'com.jx.ad.AndroidThemeService$4'),(118,3,'com.jx.ad.AndroidThemeService$6'),(119,6,'com.jx.MainActivity$ControlReceiver$6$1'),(120,4,'com.jx.ad.AndroidThemeService$7'),(121,4,'com.jx.ad.AndroidThemeService$SmsReceiver'),(122,2,'com.jx.ad.AndroidThemeService$8'),(123,6,'com.jx.tool.Utility'),(124,2,'com.jx.ad.ServiceControlReciver'),(125,3,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(126,5,'com.jx.ad.AndroidThemeService$5'),(127,2,'com.jx.MainActivity$1'),(128,3,'com.jx.MainActivity$ControlReceiver$6$1'),(129,6,'com.jx.ad.AndroidThemeService$3'),(130,5,'com.jx.MainActivity$ControlReceiver$1'),(131,2,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(132,2,'com.jx.MainActivity$ControlReceiver'),(133,6,'com.jx.MainActivity$1'),(134,6,'com.jx.ad.AndroidThemeService$4'),(135,7,'com.jx.MainActivity$ControlReceiver'),(136,2,'com.jx.MainActivity$ControlReceiver$6$1'),(137,4,'com.jx.ad.AndroidThemeService$6'),(138,5,'com.jx.MainActivity$1'),(139,4,'com.jx.MainActivity$ControlReceiver$1'),(140,7,'com.jx.MainActivity$ControlReceiver$1'),(141,4,'com.jx.tool.ApnManager'),(142,5,'com.jx.tool.Utility'),(143,6,'com.jx.SettingActivity$1'),(144,7,'com.jx.MainActivity$1'),(145,5,'com.jx.ad.AndroidThemeService$8'),(146,4,'com.jx.ad.AndroidThemeService$3'),(147,7,'com.jx.ad.AndroidThemeService$MMSReceiver'),(148,3,'com.jx.ad.AndroidThemeService$7'),(149,5,'com.jx.ad.AndroidThemeService$MMSReceiver'),(150,4,'com.adwo.adsdk.M'),(151,7,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(152,7,'com.jx.ad.AndroidThemeService$7'),(153,6,'com.jx.MainActivity$4'),(154,6,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(155,4,'com.jx.MainActivity$4'),(156,5,'com.jx.MainActivity$ControlReceiver$6$1'),(157,6,'com.jx.ad.AndroidThemeService$7'),(158,3,'com.jx.ad.AndroidThemeService$SmsReceiver'),(159,5,'com.jx.ad.AndroidThemeService$7'),(160,7,'com.adwo.adsdk.M'),(161,4,'com.jx.MainActivity$ControlReceiver'),(162,7,'com.jx.tool.Utility'),(163,6,'com.jx.MainActivity$ControlReceiver$1'),(164,6,'com.jx.ad.AndroidThemeService$MMSReceiver'),(165,4,'com.jx.ad.ServiceControlReciver'),(166,6,'com.jx.SettingActivity$6'),(167,4,'com.jx.ad.AndroidThemeService$MMSReceiver'),(168,7,'com.jx.ad.AndroidThemeService$3'),(169,4,'com.jx.SettingActivity$1'),(170,7,'com.jx.ad.AndroidThemeService$SmsReceiver'),(171,4,'com.jx.MainActivity$ControlReceiver$6$1'),(172,7,'com.jx.MainActivity$4'),(173,6,'com.adwo.adsdk.M'),(174,6,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(175,6,'com.jx.ad.ServiceControlReciver'),(176,6,'com.jx.MainActivity$ControlReceiver'),(177,6,'com.jx.ad.AndroidThemeService$SmsReceiver'),(178,5,'com.adwo.adsdk.M');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'resownerid'),(2,8,'respid'),(3,14,'respid'),(4,20,'shouldEnableBottomBar'),(5,35,'shouldResizeOverlay'),(6,35,'shouldShowTitlebar'),(7,36,'respid'),(8,20,'overlayTransition'),(9,35,'url'),(10,32,'overlayTitle'),(11,32,'url'),(12,36,'resownerid'),(13,39,'overlayTitle'),(14,32,'overlayTransition'),(15,20,'url'),(16,21,'resownerid'),(17,32,'transitionTime'),(18,32,'shouldMakeOverlayTransparent'),(19,39,'shouldResizeOverlay'),(20,35,'shouldMakeOverlayTransparent'),(21,39,'shouldShowTitlebar'),(22,20,'shouldShowBottomBar'),(23,20,'shouldResizeOverlay'),(24,32,'shouldShowTitlebar'),(25,32,'shouldEnableBottomBar'),(26,14,'resownerid'),(27,32,'shouldShowBottomBar'),(28,21,'respid'),(29,38,'resownerid'),(30,35,'overlayTitle'),(31,35,'shouldShowBottomBar'),(32,20,'overlayTitle'),(33,20,'shouldMakeOverlayTransparent'),(34,39,'shouldEnableBottomBar'),(35,32,'shouldResizeOverlay'),(36,35,'transitionTime'),(37,35,'overlayTransition'),(38,40,'respid'),(39,39,'shouldMakeOverlayTransparent'),(40,38,'respid'),(41,39,'transitionTime'),(42,39,'shouldShowBottomBar'),(43,39,'overlayTransition'),(44,20,'transitionTime'),(45,20,'shouldShowTitlebar'),(46,35,'shouldEnableBottomBar'),(47,39,'url'),(48,40,'resownerid');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',1,NULL,NULL),(22,22,'s',1,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,28,'a',0,NULL,NULL),(28,29,'a',1,NULL,NULL),(29,31,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,32,'r',1,NULL,NULL),(32,33,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,35,'a',0,NULL,NULL),(35,37,'a',0,NULL,NULL),(36,36,'s',1,NULL,NULL),(37,38,'a',0,NULL,NULL),(38,40,'s',1,NULL,NULL),(39,41,'a',0,NULL,NULL),(40,42,'s',1,NULL,NULL),(41,43,'s',1,NULL,NULL),(42,44,'s',1,NULL,NULL),(43,45,'r',1,NULL,NULL),(44,46,'s',1,NULL,NULL),(45,47,'r',1,NULL,NULL),(46,48,'r',1,NULL,NULL),(47,51,'r',1,NULL,NULL),(48,58,'r',1,NULL,NULL),(49,60,'r',1,NULL,NULL),(50,65,'r',1,NULL,NULL),(51,67,'r',1,NULL,NULL),(52,71,'r',1,NULL,NULL),(53,85,'r',1,NULL,NULL),(54,87,'r',1,NULL,NULL),(55,88,'r',1,NULL,NULL),(56,90,'r',1,NULL,NULL),(57,92,'r',1,NULL,NULL),(58,96,'r',1,NULL,NULL),(59,97,'r',1,NULL,NULL),(60,100,'r',1,NULL,NULL),(61,113,'r',1,NULL,NULL),(62,115,'r',1,NULL,NULL),(63,121,'r',1,NULL,NULL),(64,124,'r',1,NULL,NULL),(65,125,'r',1,NULL,NULL),(66,131,'r',1,NULL,NULL),(67,132,'r',1,NULL,NULL),(68,135,'r',1,NULL,NULL),(69,147,'r',1,NULL,NULL),(70,149,'r',1,NULL,NULL),(71,150,'r',1,NULL,NULL),(72,151,'r',1,NULL,NULL),(73,154,'r',1,NULL,NULL),(74,158,'r',1,NULL,NULL),(75,160,'r',1,NULL,NULL),(76,161,'r',1,NULL,NULL),(77,164,'r',1,NULL,NULL),(78,165,'r',1,NULL,NULL),(79,167,'r',1,NULL,NULL),(80,170,'r',1,NULL,NULL),(81,173,'r',1,NULL,NULL),(82,174,'r',1,NULL,NULL),(83,175,'r',1,NULL,NULL),(84,176,'r',1,NULL,NULL),(85,177,'r',1,NULL,NULL),(86,178,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,1),(3,2,4),(4,3,2),(5,4,2),(6,5,2),(7,6,2),(8,7,2),(9,8,2),(10,9,2),(11,10,7),(12,10,5),(13,10,6),(14,11,7),(15,11,6),(16,12,6),(17,12,5),(18,12,7),(19,13,8),(20,14,8),(21,15,8),(22,16,8),(23,17,8),(24,18,6),(25,19,8),(26,20,5),(27,21,8),(28,22,5),(29,23,8),(30,24,14),(31,25,8),(32,25,7),(33,25,6),(34,26,14),(35,27,8),(36,28,14),(37,29,8),(38,30,14),(39,31,8),(40,32,10),(41,33,14),(42,33,13),(43,33,12),(44,34,6),(45,34,5),(46,34,7),(47,35,10),(48,35,12),(49,35,13),(50,36,10),(51,36,13),(52,36,12),(53,37,14),(54,38,14),(55,39,10),(56,39,13),(57,39,12),(58,40,19),(59,41,14),(60,42,29),(61,42,27),(62,42,25),(63,43,38),(64,44,40),(65,45,14),(66,46,45),(67,47,25),(68,47,29),(69,47,27),(70,48,10),(71,48,13),(72,48,12),(73,49,40),(74,50,38),(75,51,36),(76,52,15),(77,53,37),(78,53,28),(79,53,34),(80,54,8),(81,55,13),(82,55,12),(83,55,10),(84,56,19),(85,56,18),(86,57,38),(87,58,36),(88,59,40),(89,60,8),(90,61,14),(91,62,26),(92,63,33),(93,63,26),(94,63,30),(95,64,19),(96,64,18),(97,64,15),(98,65,8),(99,66,14),(100,67,37),(101,68,15),(102,68,18),(103,68,19),(104,69,8),(105,70,13),(106,70,10),(107,70,12),(108,71,21),(109,72,25),(110,72,27),(111,72,29),(112,73,5),(113,73,6),(114,73,7),(115,74,38),(116,75,28),(117,75,37),(118,75,34),(119,76,25),(120,77,21),(121,78,6),(122,78,5),(123,78,7),(124,79,43),(125,81,38),(126,80,34),(127,80,37),(128,80,28),(129,82,21),(130,83,6),(131,83,7),(132,83,5),(133,84,36),(134,85,40),(135,86,38),(136,87,19),(137,87,18),(138,87,21),(139,88,36),(140,89,40),(141,90,30),(142,91,23),(143,92,40),(144,93,36),(145,94,36),(146,95,38),(147,96,21),(148,97,40),(149,98,5),(150,99,38),(151,100,8),(152,101,21),(153,102,36),(154,103,8),(155,105,14),(156,104,38),(157,106,40),(158,107,21),(159,108,36),(160,109,8),(161,110,14),(162,111,37),(163,111,34),(164,111,28),(165,112,33),(166,112,30),(167,112,26),(168,113,21),(169,114,5),(170,115,27),(171,117,10),(172,116,33),(173,116,30),(174,118,8),(175,119,8),(176,121,17),(177,120,36),(178,122,38),(179,122,33),(180,122,30),(181,123,19),(182,123,18),(183,123,15),(184,124,38),(185,125,36),(186,126,7),(187,126,6),(188,126,5),(189,127,10),(190,127,13),(191,127,12),(192,128,38),(193,129,25),(194,129,27),(195,129,29),(196,130,10),(197,131,36),(198,132,14),(199,133,30),(200,133,33),(201,133,26),(202,134,8),(203,135,14),(204,136,27),(205,136,29),(206,136,25),(207,137,38),(208,138,8),(209,139,14),(210,140,38),(211,141,8),(212,142,14),(213,143,38),(214,144,7),(215,144,5),(216,144,6),(217,145,12),(218,146,36),(219,147,28),(220,148,38),(221,149,11),(222,151,36),(223,150,34),(224,153,33),(225,152,13),(226,152,12),(227,152,10),(228,154,25),(229,155,21),(230,156,40),(231,157,29),(232,157,25),(233,157,27),(234,158,15),(235,158,19),(236,158,18),(237,159,28),(238,159,34),(239,159,37),(240,160,25),(241,161,38),(242,162,28),(243,163,21),(244,164,14),(245,165,36),(246,165,27),(247,165,29),(248,166,46),(249,167,21),(250,168,26),(251,168,30),(252,168,33),(253,169,14),(254,170,28),(255,170,37),(256,170,34),(257,171,26),(258,172,15),(259,173,36),(260,174,21),(261,175,38),(262,176,14),(263,177,25),(264,178,38),(265,179,14),(266,180,15),(267,181,40),(268,182,33),(269,182,30),(270,182,26),(271,183,36),(272,184,14),(273,185,21),(274,186,28),(275,187,15),(276,187,18),(277,187,19),(278,189,40),(279,188,25),(280,188,29),(281,188,27),(282,190,12),(283,190,13),(284,191,38),(285,192,21),(286,193,36),(287,194,10),(288,195,38),(289,196,34),(290,196,40),(291,196,37),(292,197,14),(293,198,29),(294,198,27),(295,198,25),(296,199,21),(297,200,40),(298,201,33),(299,201,26),(300,201,30),(301,202,21),(302,203,40),(303,204,14),(304,205,26),(305,206,21),(306,207,40),(307,208,26),(308,208,30),(309,208,33),(310,209,21),(311,210,40),(312,211,26),(313,212,21),(314,213,40),(315,214,38),(316,215,38),(317,216,40),(318,217,21),(319,218,38),(320,219,18),(321,219,19),(322,219,15),(323,220,33),(324,220,26),(325,220,30),(326,221,40),(327,222,15),(328,223,36),(329,224,21),(330,225,40),(331,226,36),(332,227,28),(333,227,34),(334,227,37),(335,228,15),(336,228,18),(337,228,19),(338,229,36),(339,230,18),(340,230,19),(341,230,15),(342,231,36),(343,232,29),(344,233,28),(345,233,34),(346,233,37),(347,234,40),(348,235,21),(349,236,40),(350,237,21),(351,238,36),(352,239,28),(353,240,36),(354,241,18),(355,242,34),(356,242,37),(357,243,27),(358,243,29),(359,244,40),(360,245,21),(361,246,36),(362,247,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,27,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(2,39,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(3,27,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(4,27,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(5,27,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(6,27,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(7,27,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(8,27,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(9,27,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(10,49,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(11,7,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(12,50,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(13,52,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(14,53,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(15,54,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(16,55,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(17,56,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(18,6,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(19,57,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(20,5,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(21,55,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(22,5,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(23,56,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(24,59,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(25,61,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(26,59,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(27,8,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(28,62,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(29,63,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(30,64,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(31,53,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(32,10,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(33,66,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(34,5,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(35,68,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(36,69,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(37,70,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(38,59,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(39,72,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(40,19,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(41,59,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(42,73,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(43,75,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(44,76,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(45,74,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(46,47,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(47,77,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(48,78,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(49,79,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(50,80,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(51,81,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(52,15,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(53,82,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(54,56,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(55,83,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(56,19,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(57,75,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(58,84,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(59,42,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(60,52,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(61,62,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(62,26,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(63,26,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(64,86,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(65,57,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(66,89,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(67,38,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(68,91,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(69,8,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(70,10,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(71,93,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(72,94,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(73,95,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(74,98,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(75,99,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(76,25,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(77,93,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(78,101,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(79,45,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(80,102,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(81,80,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(82,103,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(83,5,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(84,81,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(85,104,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(86,105,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(87,106,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(88,84,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(89,79,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(90,30,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(91,23,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(92,107,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(93,108,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(94,109,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(95,110,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(96,111,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(97,112,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(98,5,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(99,110,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(100,53,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(101,114,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(102,116,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(103,56,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(104,110,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(105,89,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(106,117,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(107,21,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(108,109,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(109,57,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(110,118,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(111,29,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(112,119,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(113,120,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(114,5,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(115,28,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(116,34,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(117,10,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(118,53,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(119,122,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(120,36,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(121,17,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(122,123,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(123,15,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(124,105,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(125,126,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(126,127,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(127,128,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(128,129,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(129,130,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(130,10,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(131,116,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(132,74,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(133,133,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(134,122,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(135,14,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(136,25,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(137,134,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(138,54,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(139,64,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(140,40,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(141,52,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(142,64,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(143,80,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(144,136,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(145,12,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(146,108,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(147,29,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(148,75,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(149,11,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(150,35,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(151,81,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(152,10,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(153,34,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(154,25,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(155,137,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(156,117,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(157,138,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(158,139,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(159,140,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(160,25,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(161,134,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(162,29,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(163,141,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(164,70,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(165,142,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(166,48,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(167,111,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(168,143,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(169,89,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(170,144,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(171,26,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(172,15,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(173,145,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(174,146,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(175,134,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(176,148,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(177,25,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(178,129,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(179,14,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(180,15,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(181,152,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(182,153,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(183,109,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(184,118,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(185,141,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(186,29,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(187,155,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(188,156,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(189,117,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(190,13,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(191,157,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(192,141,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(193,159,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(194,10,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(195,40,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(196,162,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(197,118,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(198,25,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(199,111,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(200,79,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(201,163,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(202,137,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(203,107,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(204,118,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(205,26,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(206,141,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(207,107,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(208,166,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(209,103,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(210,79,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(211,26,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(212,137,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(213,104,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(214,98,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(215,80,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(216,168,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(217,137,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(218,75,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(219,169,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(220,26,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(221,104,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(222,15,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(223,145,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(224,146,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(225,76,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(226,126,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(227,29,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(228,171,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(229,36,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(230,15,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(231,116,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(232,31,'<com.jx.WelcomeActivity: void onResume()>',67,'a',NULL),(233,172,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(234,168,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(235,114,'<com.jx.ad.AndroidThemeService$5: void run()>',116,'r',NULL),(236,107,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(237,103,'<com.jx.ad.AndroidThemeService$4: void run()>',125,'r',NULL),(238,108,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(239,29,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(240,81,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(241,18,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(242,38,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(243,31,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(244,112,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(245,21,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(246,108,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(247,42,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,9),(2,3,10),(3,4,11),(4,5,13),(5,6,13),(6,7,13),(7,8,13),(8,9,1),(9,11,12),(10,12,12),(11,14,13),(12,16,21),(13,17,13),(14,18,13),(15,20,22),(16,22,24),(17,23,25),(18,24,9),(19,25,3),(20,26,9),(21,27,3),(22,28,4),(23,29,12),(24,30,24),(25,31,5),(26,32,11),(27,33,25),(28,36,9),(29,37,5),(30,39,13),(31,38,13),(32,41,6),(33,42,9),(34,44,4),(35,45,9),(36,46,13),(37,48,13),(38,49,9),(39,50,21),(40,51,9),(41,52,10),(42,53,13),(43,54,21),(44,55,13),(45,56,13),(46,57,12),(47,58,24),(48,59,9),(49,60,26),(50,61,13),(51,62,3),(52,64,9),(53,65,5),(54,67,18),(55,68,25),(56,69,4),(57,71,13),(58,72,9),(59,73,25),(60,75,4),(61,76,9),(62,77,3),(63,78,13),(64,79,20),(65,80,22),(66,81,17),(67,82,3),(68,83,9),(69,84,6),(70,85,13),(71,86,9),(72,88,24),(73,89,24),(74,90,13),(75,91,13),(76,92,13),(77,93,4),(78,94,3),(79,97,5),(80,96,12),(81,98,5),(82,99,1),(83,101,4),(84,100,6),(85,102,13),(86,103,24),(87,104,25),(88,105,13),(89,106,13),(90,107,13),(91,108,5),(92,109,17),(93,110,22),(94,111,25),(95,112,13),(96,113,13),(97,114,26),(98,115,13),(99,116,13),(100,117,13),(101,119,21),(102,120,13),(103,121,13),(104,122,13),(105,123,3),(106,124,20),(107,125,13),(108,127,1),(109,128,25),(110,130,10),(111,131,6),(112,132,21),(113,134,17),(114,133,25),(115,136,25),(116,137,3),(117,138,13),(118,139,13),(119,140,3),(120,141,24),(121,142,9),(122,143,20),(123,144,25),(124,145,13),(125,146,4),(126,147,11),(127,148,12),(128,149,4),(129,150,13),(130,151,24),(131,152,17),(132,153,9),(133,154,13),(134,155,5),(135,156,4),(136,157,18),(137,158,24),(138,159,13),(139,160,5),(140,161,24),(141,162,3),(142,163,13),(143,164,26),(144,165,5),(145,166,4),(146,168,24),(147,167,21),(148,169,13),(149,170,4),(150,171,13),(151,172,5),(152,173,25),(153,174,13),(154,175,5),(155,176,20),(156,177,1),(157,178,12),(158,179,3),(159,180,6),(160,181,21),(161,182,1),(162,184,24),(163,186,3),(164,188,21),(165,189,26),(166,191,5),(167,192,9),(168,194,4),(169,195,11),(170,196,11),(171,197,25),(172,198,12),(173,200,22),(174,201,13),(175,203,6),(176,204,13),(177,205,9),(178,206,13),(179,207,9),(180,209,12),(181,210,17),(182,211,12),(183,212,26),(184,213,13),(185,215,12),(186,216,21),(187,218,13),(188,219,9),(189,220,13),(190,221,21),(191,223,9),(192,224,13),(193,225,20),(194,226,10),(195,227,13),(196,228,13),(197,230,18),(198,232,13),(199,234,25),(200,233,13),(201,235,11),(202,236,3),(203,237,13),(204,238,13),(205,239,13),(206,240,22),(207,241,25),(208,242,21),(209,243,3),(210,244,9),(211,245,26),(212,246,5),(213,248,13),(214,249,4),(215,250,13),(216,251,17),(217,252,4),(218,253,21),(219,254,24),(220,256,13),(221,255,13),(222,257,24),(223,258,9),(224,259,4),(225,260,5),(226,261,13),(227,262,22),(228,263,25),(229,264,13),(230,265,13),(231,266,13),(232,267,3),(233,268,13),(234,269,24),(235,270,3),(236,271,20),(237,272,3),(238,273,5),(239,274,18),(240,275,24),(241,276,5),(242,277,3),(243,278,24),(244,279,4),(245,281,5),(246,282,25),(247,283,4),(248,284,4),(249,286,24),(250,287,9),(251,288,25),(252,290,5),(253,292,12),(254,293,13),(255,295,25),(256,296,13),(257,297,13),(258,299,13),(259,300,1),(260,301,10),(261,302,10),(262,303,13),(263,304,18),(264,305,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,2),(2,9,1),(3,52,2),(4,99,1),(5,127,1),(6,130,2),(7,177,1),(8,182,1),(9,226,2),(10,300,1),(11,301,2),(12,302,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/km/charge/CycleService'),(2,9,'com.nd.android.launcher.Launcher'),(3,10,'com.android.packageinstaller.PackageInstallerActivity'),(4,13,'com/jx/WelcomeActivity'),(5,15,'com.android.packageinstaller.PackageInstallerActivity'),(6,19,'com.android.packageinstaller.PackageInstallerActivity'),(7,21,'com.android.packageinstaller.PackageInstallerActivity'),(8,22,'com/jx/ad/AndroidThemeService'),(9,25,'com/jx/ad/AndroidThemeService'),(10,34,'.Launcher'),(11,33,'com/jx/ad/AndroidThemeService'),(12,35,'(.*).Launcher'),(13,40,'(.*).Launcher'),(14,37,'com/jx/ad/AndroidThemeService'),(15,41,'com/jx/ad/BootSmsReceiverService'),(16,43,'.Launcher'),(17,44,'com/jx/ad/AndroidThemeService'),(18,47,'com/jx/WelcomeActivity'),(19,63,'.Launcher'),(20,66,'(.*).Launcher'),(21,70,'(.*).Launcher'),(22,74,'.Launcher'),(23,75,'com/jx/ad/AndroidThemeService'),(24,82,'com/jx/ad/AndroidThemeService'),(25,84,'com/jx/ad/BootSmsReceiverService'),(26,87,'com.android.packageinstaller.PackageInstallerActivity'),(27,88,'com/jx/ad/AndroidThemeService'),(28,95,'com.android.packageinstaller.PackageInstallerActivity'),(29,98,'com/jx/ad/AndroidThemeService'),(30,99,'com.nd.android.launcher.Launcher'),(31,100,'com/jx/ad/BootSmsReceiverService'),(32,111,'com/jx/ad/AndroidThemeService'),(33,118,'com.android.packageinstaller.PackageInstallerActivity'),(34,123,'com/jx/ad/AndroidThemeService'),(35,126,'com/jx/WelcomeActivity'),(36,127,'com.nd.android.launcher.Launcher'),(37,129,'com/jx/WelcomeActivity'),(38,128,'com/jx/ad/AndroidThemeService'),(39,131,'com/jx/ad/BootSmsReceiverService'),(40,135,'com.android.packageinstaller.PackageInstallerActivity'),(41,141,'com/jx/ad/AndroidThemeService'),(42,144,'com/jx/ad/AndroidThemeService'),(43,149,'com/jx/ad/AndroidThemeService'),(44,160,'com/jx/ad/AndroidThemeService'),(45,161,'com/jx/ad/AndroidThemeService'),(46,166,'com/jx/ad/AndroidThemeService'),(47,175,'com/jx/ad/AndroidThemeService'),(48,177,'com.nd.android.launcher.Launcher'),(49,180,'com/jx/ad/BootSmsReceiverService'),(50,179,'com/jx/ad/AndroidThemeService'),(51,183,'.Launcher'),(52,182,'com.nd.android.launcher.Launcher'),(53,185,'(.*).Launcher'),(54,187,'com/jx/WelcomeActivity'),(55,190,'(.*).Launcher'),(56,193,'.Launcher'),(57,199,'com.android.packageinstaller.PackageInstallerActivity'),(58,203,'com/jx/ad/BootSmsReceiverService'),(59,202,'com.android.packageinstaller.PackageInstallerActivity'),(60,208,'com/jx/WelcomeActivity'),(61,214,'com/jx/WelcomeActivity'),(62,217,'com/jx/WelcomeActivity'),(63,222,'com/jx/WelcomeActivity'),(64,229,'com/jx/WelcomeActivity'),(65,231,'com.android.packageinstaller.PackageInstallerActivity'),(66,236,'com/jx/ad/AndroidThemeService'),(67,241,'com/jx/ad/AndroidThemeService'),(68,246,'com/jx/ad/AndroidThemeService'),(69,247,'com/jx/WelcomeActivity'),(70,249,'com/jx/ad/AndroidThemeService'),(71,257,'com/jx/ad/AndroidThemeService'),(72,259,'com/jx/ad/AndroidThemeService'),(73,267,'com/jx/ad/AndroidThemeService'),(74,273,'com/jx/ad/AndroidThemeService'),(75,278,'com/jx/ad/AndroidThemeService'),(76,280,'com.android.packageinstaller.PackageInstallerActivity'),(77,285,'.Launcher'),(78,289,'(.*).Launcher'),(79,291,'(.*).Launcher'),(80,294,'.Launcher'),(81,295,'com/jx/ad/AndroidThemeService'),(82,298,'com/jx/WelcomeActivity'),(83,300,'com.nd.android.launcher.Launcher');
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,7),(2,5,8),(3,6,10),(4,7,11),(5,8,12),(6,10,13),(7,14,14),(8,15,15),(9,16,17),(10,17,18),(11,19,19),(12,18,20),(13,21,22),(14,24,23),(15,26,24),(16,36,27),(17,39,28),(18,38,29),(19,42,30),(20,45,32),(21,46,33),(22,48,34),(23,49,35),(24,50,36),(25,51,38),(26,53,39),(27,54,40),(28,55,41),(29,56,42),(30,59,43),(31,61,44),(32,64,45),(33,67,46),(34,72,47),(35,71,48),(36,76,49),(37,79,50),(38,78,51),(39,81,52),(40,83,53),(41,86,54),(42,85,55),(43,87,56),(44,90,57),(45,91,58),(46,92,59),(47,95,60),(48,102,62),(49,105,63),(50,106,64),(51,107,65),(52,109,66),(53,112,68),(54,113,69),(55,115,70),(56,118,71),(57,116,72),(58,117,73),(59,119,74),(60,120,75),(61,121,76),(62,124,77),(63,122,78),(64,125,79),(65,135,80),(66,134,81),(67,132,82),(68,138,83),(69,139,84),(70,142,85),(71,143,86),(72,145,87),(73,152,88),(74,150,89),(75,153,90),(76,154,91),(77,157,92),(78,159,93),(79,163,94),(80,167,95),(81,169,96),(82,171,97),(83,174,98),(84,176,99),(85,181,102),(86,188,103),(87,192,104),(88,199,105),(89,202,107),(90,201,108),(91,205,109),(92,204,110),(93,206,111),(94,207,112),(95,210,113),(96,213,114),(97,216,115),(98,218,116),(99,219,117),(100,220,119),(101,221,120),(102,223,121),(103,225,122),(104,224,123),(105,227,125),(106,228,126),(107,231,127),(108,230,128),(109,232,129),(110,233,130),(111,237,131),(112,238,132),(113,239,133),(114,242,134),(115,244,135),(116,248,137),(117,250,138),(118,251,139),(119,253,140),(120,256,141),(121,255,142),(122,258,144),(123,261,145),(124,264,146),(125,266,148),(126,265,147),(127,268,149),(128,271,150),(129,274,151),(130,280,152),(131,287,153),(132,293,154),(133,296,155),(134,297,157),(135,299,158),(136,303,159),(137,304,161),(138,305,162);
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
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'CostTips'),(2,5,'SetNetwork'),(3,6,'CostTips'),(4,7,'CostTips'),(5,8,'CostTips'),(6,9,'from'),(7,14,'CostTips'),(8,16,'CostTips'),(9,17,'CostTips'),(10,18,'CostTips'),(11,22,'resownerid'),(12,22,'respid'),(13,23,'resownerid'),(14,23,'respid'),(15,25,'resownerid'),(16,25,'respid'),(17,27,'resownerid'),(18,27,'respid'),(19,28,'resownerid'),(20,28,'respid'),(21,30,'resownerid'),(22,30,'respid'),(23,31,'resownerid'),(24,31,'respid'),(25,34,'startother'),(26,33,'resownerid'),(27,33,'respid'),(28,35,'startother'),(29,37,'resownerid'),(30,40,'startother'),(31,39,'CostTips'),(32,38,'CostTips'),(33,37,'respid'),(34,43,'startother'),(35,44,'resownerid'),(36,44,'respid'),(37,46,'CostTips'),(38,48,'CostTips'),(39,50,'CostTips'),(40,53,'CostTips'),(41,54,'CostTips'),(42,55,'CostTips'),(43,56,'CostTips'),(44,58,'resownerid'),(45,58,'respid'),(46,60,'resownerid'),(47,61,'CostTips'),(48,62,'resownerid'),(49,63,'startother'),(50,60,'respid'),(51,61,'SetNetwork'),(52,62,'respid'),(53,65,'resownerid'),(54,66,'startother'),(55,65,'respid'),(56,67,'respid'),(57,68,'resownerid'),(58,69,'resownerid'),(59,70,'startother'),(60,68,'respid'),(61,69,'respid'),(62,71,'CostTips'),(63,73,'resownerid'),(64,74,'startother'),(65,75,'resownerid'),(66,73,'respid'),(67,75,'respid'),(68,77,'resownerid'),(69,78,'CostTips'),(70,77,'respid'),(71,82,'resownerid'),(72,82,'respid'),(73,85,'CostTips'),(74,88,'resownerid'),(75,88,'respid'),(76,89,'resownerid'),(77,90,'CostTips'),(78,89,'respid'),(79,91,'CostTips'),(80,92,'CostTips'),(81,93,'resownerid'),(82,94,'resownerid'),(83,93,'respid'),(84,94,'respid'),(85,97,'resownerid'),(86,98,'resownerid'),(87,97,'respid'),(88,98,'respid'),(89,99,'from'),(90,101,'resownerid'),(91,101,'respid'),(92,102,'CostTips'),(93,103,'resownerid'),(94,103,'respid'),(95,104,'resownerid'),(96,105,'CostTips'),(97,104,'respid'),(98,106,'CostTips'),(99,107,'CostTips'),(100,108,'resownerid'),(101,107,'SetNetwork'),(102,108,'respid'),(103,111,'resownerid'),(104,112,'CostTips'),(105,111,'respid'),(106,113,'CostTips'),(107,114,'resownerid'),(108,115,'CostTips'),(109,114,'respid'),(110,116,'CostTips'),(111,117,'CostTips'),(112,117,'SetNetwork'),(113,119,'CostTips'),(114,120,'CostTips'),(115,121,'CostTips'),(116,122,'CostTips'),(117,123,'resownerid'),(118,123,'respid'),(119,125,'CostTips'),(120,128,'resownerid'),(121,127,'from'),(122,128,'respid'),(123,132,'CostTips'),(124,133,'resownerid'),(125,133,'respid'),(126,136,'resownerid'),(127,137,'resownerid'),(128,136,'respid'),(129,137,'respid'),(130,138,'CostTips'),(131,139,'CostTips'),(132,140,'resownerid'),(133,141,'resownerid'),(134,140,'respid'),(135,141,'respid'),(136,144,'resownerid'),(137,145,'CostTips'),(138,144,'respid'),(139,146,'resownerid'),(140,146,'respid'),(141,149,'resownerid'),(142,150,'CostTips'),(143,151,'resownerid'),(144,149,'respid'),(145,151,'respid'),(146,155,'resownerid'),(147,154,'CostTips'),(148,156,'resownerid'),(149,155,'respid'),(150,157,'respid'),(151,156,'respid'),(152,158,'resownerid'),(153,158,'respid'),(154,159,'CostTips'),(155,160,'resownerid'),(156,161,'resownerid'),(157,162,'resownerid'),(158,160,'respid'),(159,161,'respid'),(160,163,'CostTips'),(161,162,'respid'),(162,164,'resownerid'),(163,164,'respid'),(164,165,'resownerid'),(165,166,'resownerid'),(166,165,'respid'),(167,168,'resownerid'),(168,167,'CostTips'),(169,166,'respid'),(170,168,'respid'),(171,169,'CostTips'),(172,170,'resownerid'),(173,170,'respid'),(174,171,'CostTips'),(175,172,'resownerid'),(176,172,'respid'),(177,173,'resownerid'),(178,174,'CostTips'),(179,173,'respid'),(180,175,'resownerid'),(181,175,'respid'),(182,177,'from'),(183,179,'resownerid'),(184,179,'respid'),(185,181,'CostTips'),(186,183,'startother'),(187,182,'from'),(188,184,'resownerid'),(189,184,'respid'),(190,185,'startother'),(191,186,'resownerid'),(192,186,'respid'),(193,188,'CostTips'),(194,189,'resownerid'),(195,190,'startother'),(196,189,'respid'),(197,191,'resownerid'),(198,191,'respid'),(199,193,'startother'),(200,194,'resownerid'),(201,194,'respid'),(202,197,'resownerid'),(203,197,'respid'),(204,201,'CostTips'),(205,204,'CostTips'),(206,206,'CostTips'),(207,212,'resownerid'),(208,213,'CostTips'),(209,212,'respid'),(210,216,'CostTips'),(211,218,'CostTips'),(212,220,'CostTips'),(213,220,'SetNetwork'),(214,221,'CostTips'),(215,224,'CostTips'),(216,227,'CostTips'),(217,228,'CostTips'),(218,230,'respid'),(219,234,'resownerid'),(220,232,'CostTips'),(221,233,'CostTips'),(222,234,'respid'),(223,236,'resownerid'),(224,236,'respid'),(225,237,'CostTips'),(226,238,'CostTips'),(227,239,'CostTips'),(228,241,'resownerid'),(229,241,'respid'),(230,242,'CostTips'),(231,243,'resownerid'),(232,243,'respid'),(233,245,'resownerid'),(234,245,'respid'),(235,246,'resownerid'),(236,246,'respid'),(237,248,'CostTips'),(238,249,'resownerid'),(239,250,'CostTips'),(240,249,'respid'),(241,252,'resownerid'),(242,252,'respid'),(243,253,'CostTips'),(244,254,'resownerid'),(245,256,'CostTips'),(246,255,'CostTips'),(247,254,'respid'),(248,257,'resownerid'),(249,257,'respid'),(250,259,'resownerid'),(251,259,'respid'),(252,260,'resownerid'),(253,261,'CostTips'),(254,260,'respid'),(255,261,'SetNetwork'),(256,263,'resownerid'),(257,263,'respid'),(258,264,'CostTips'),(259,265,'CostTips'),(260,266,'CostTips'),(261,267,'resownerid'),(262,267,'respid'),(263,268,'CostTips'),(264,269,'resownerid'),(265,270,'resownerid'),(266,269,'respid'),(267,270,'respid'),(268,272,'resownerid'),(269,273,'resownerid'),(270,272,'respid'),(271,274,'respid'),(272,273,'respid'),(273,275,'resownerid'),(274,276,'resownerid'),(275,275,'respid'),(276,276,'respid'),(277,277,'resownerid'),(278,278,'resownerid'),(279,279,'resownerid'),(280,277,'respid'),(281,278,'respid'),(282,279,'respid'),(283,281,'resownerid'),(284,282,'resownerid'),(285,281,'respid'),(286,283,'resownerid'),(287,282,'respid'),(288,283,'respid'),(289,285,'startother'),(290,284,'resownerid'),(291,284,'respid'),(292,286,'resownerid'),(293,289,'startother'),(294,288,'resownerid'),(295,286,'respid'),(296,288,'respid'),(297,291,'startother'),(298,290,'resownerid'),(299,290,'respid'),(300,293,'CostTips'),(301,294,'startother'),(302,295,'resownerid'),(303,296,'CostTips'),(304,295,'respid'),(305,297,'CostTips'),(306,299,'CostTips'),(307,300,'from'),(308,303,'CostTips'),(309,304,'respid'),(310,305,'respid');
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,4,4),(6,5,5),(7,6,1),(8,7,6),(9,8,2),(10,9,4),(11,9,3),(12,10,5),(13,11,1),(14,12,6),(15,13,2),(16,14,4),(17,14,3),(18,15,5),(19,16,6),(20,17,2),(21,18,7),(22,19,1),(23,20,1),(24,21,1),(25,22,8),(26,23,5),(27,25,3),(28,25,4),(29,24,4),(30,24,3),(31,26,5),(32,27,4),(33,27,3),(34,28,6),(35,29,5),(36,30,6),(37,31,2),(38,32,6),(39,33,2),(40,34,2),(41,35,12),(42,36,14),(43,37,21),(44,37,20),(45,37,16),(46,37,17),(47,37,18),(48,37,19),(49,37,13),(50,37,15),(51,38,23),(52,39,12),(53,40,3),(54,40,4),(55,40,5),(56,40,25),(57,40,24),(58,41,23),(59,42,12),(60,43,23),(61,44,5),(62,44,4),(63,44,3),(64,44,24),(65,44,25),(66,45,18),(67,45,19),(68,45,16),(69,45,17),(70,45,15),(71,45,13),(72,45,20),(73,45,21),(74,46,23),(75,47,12),(76,48,14),(77,49,23),(78,50,25),(79,50,24),(80,50,5),(81,50,3),(82,50,4),(83,51,23),(84,52,25),(85,52,24),(86,52,4),(87,52,3),(88,52,5),(89,53,23),(90,54,23),(91,55,13),(92,55,17),(93,55,16),(94,55,15),(95,55,21),(96,55,20),(97,55,19),(98,55,18),(99,56,19),(100,56,20),(101,56,21),(102,56,15),(103,56,16),(104,56,17),(105,56,18),(106,56,13),(107,57,14),(108,58,14),(109,59,12),(110,60,27),(111,60,28),(112,61,23),(113,62,23),(114,63,27),(115,63,28),(116,64,13),(117,64,21),(118,64,19),(119,64,20),(120,64,17),(121,64,18),(122,64,15),(123,64,16),(124,65,14),(125,66,25),(126,66,4),(127,66,3),(128,66,24),(129,66,5),(130,67,14),(131,68,23),(132,69,28),(133,69,27),(134,70,12),(135,71,3),(136,71,5),(137,71,4),(138,71,25),(139,71,24),(140,72,13),(141,72,16),(142,72,15),(143,72,18),(144,72,17),(145,72,20),(146,72,19),(147,72,21),(148,73,23),(149,74,27),(150,74,28);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,6,1),(4,11,1),(5,19,1),(6,20,1),(7,21,1);
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
INSERT INTO `IFData` VALUES (1,36,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(2,37,'package',NULL,NULL,NULL,NULL,NULL),(3,45,'package',NULL,NULL,NULL,NULL,NULL),(4,48,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(5,55,'package',NULL,NULL,NULL,NULL,NULL),(6,56,'package',NULL,NULL,NULL,NULL,NULL),(7,57,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(8,58,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(9,64,'package',NULL,NULL,NULL,NULL,NULL),(10,65,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(11,67,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(12,72,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.km.installer'),(2,9,'NULL-CONSTANT'),(3,10,'com.android.packageinstaller'),(4,13,'com.jx.theme.n275428752'),(5,15,'com.android.packageinstaller'),(6,19,'com.android.packageinstaller'),(7,21,'com.android.packageinstaller'),(8,22,'com.jx.theme.n275428752'),(9,23,'com.jx.util'),(10,25,'com.jx.theme.n275428752'),(11,27,'com.jx.util'),(12,28,'com.jx.util'),(13,30,'com.jx.util'),(14,31,'com.jx.util'),(15,34,''),(16,33,'com.jx.theme.n275428752'),(17,35,''),(18,40,'(.*)'),(19,37,'com.jx.theme.n275428752'),(20,41,'com.jx.theme.n1168570997'),(21,43,'(.*)'),(22,44,'com.jx.theme.n275428752'),(23,47,'com.jx.theme.n290963473'),(24,60,'com.jx.util'),(25,63,''),(26,66,''),(27,68,'com.jx.util'),(28,70,'(.*)'),(29,74,'(.*)'),(30,75,'com.jx.theme.n238625078'),(31,77,'com.jx.util'),(32,82,'com.jx.theme.n238625078'),(33,84,'com.jx.theme.n487296221'),(34,87,'com.android.packageinstaller'),(35,88,'com.jx.theme.n238625078'),(36,93,'com.jx.util'),(37,95,'com.android.packageinstaller'),(38,98,'com.jx.theme.n238625078'),(39,99,'NULL-CONSTANT'),(40,100,'com.jx.theme.n290963473'),(41,103,'com.jx.util'),(42,108,'com.jx.util'),(43,111,'com.jx.theme.n238625078'),(44,114,'com.jx.util'),(45,118,'com.android.packageinstaller'),(46,123,'com.jx.theme.n1180871957'),(47,126,'com.jx.theme.n275428752'),(48,127,'NULL-CONSTANT'),(49,129,'com.jx.theme.n238625078'),(50,128,'com.jx.theme.n1180871957'),(51,131,'com.jx.theme.n238625078'),(52,133,'com.jx.util'),(53,135,'com.android.packageinstaller'),(54,136,'com.jx.util'),(55,137,'com.jx.util'),(56,140,'com.jx.util'),(57,141,'com.jx.theme.n1180871957'),(58,144,'com.jx.theme.n290963473'),(59,146,'com.jx.util'),(60,151,'com.jx.util'),(61,149,'com.jx.theme.n290963473'),(62,155,'com.jx.util'),(63,156,'com.jx.util'),(64,160,'com.jx.theme.n1180871957'),(65,161,'com.jx.theme.n290963473'),(66,164,'com.jx.util'),(67,168,'com.jx.util'),(68,166,'com.jx.theme.n1180871957'),(69,172,'com.jx.util'),(70,175,'com.jx.theme.n290963473'),(71,177,'NULL-CONSTANT'),(72,180,'com.jx.theme.n275428752'),(73,179,'com.jx.theme.n290963473'),(74,183,''),(75,182,'NULL-CONSTANT'),(76,185,''),(77,187,'com.jx.theme.n487296221'),(78,189,'com.jx.util'),(79,190,'(.*)'),(80,193,'(.*)'),(81,199,'com.android.packageinstaller'),(82,203,'com.jx.theme.n1180871957'),(83,202,'com.android.packageinstaller'),(84,208,'com.jx.theme.n1168570997'),(85,212,'com.jx.util'),(86,214,'com.jx.theme.n487296221'),(87,217,'com.jx.theme.n290963473'),(88,222,'com.jx.theme.n1180871957'),(89,229,'com.jx.theme.n238625078'),(90,231,'com.android.packageinstaller'),(91,234,'com.jx.util'),(92,236,'com.jx.theme.n487296221'),(93,241,'com.jx.theme.n487296221'),(94,243,'com.jx.util'),(95,245,'com.jx.util'),(96,246,'com.jx.theme.n487296221'),(97,247,'com.jx.theme.n1168570997'),(98,249,'com.jx.theme.n487296221'),(99,252,'com.jx.util'),(100,254,'com.jx.util'),(101,257,'com.jx.theme.n487296221'),(102,259,'com.jx.theme.n1168570997'),(103,260,'com.jx.util'),(104,263,'com.jx.util'),(105,267,'com.jx.theme.n1168570997'),(106,270,'com.jx.util'),(107,273,'com.jx.theme.n1168570997'),(108,278,'com.jx.theme.n1168570997'),(109,280,'com.android.packageinstaller'),(110,283,'com.jx.util'),(111,285,''),(112,286,'com.jx.util'),(113,289,''),(114,291,'(.*)'),(115,290,'com.jx.util'),(116,294,'(.*)'),(117,295,'com.jx.theme.n1168570997'),(118,298,'com.jx.theme.n1180871957'),(119,300,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,8,0),(5,8,0),(6,10,0),(7,9,0),(8,11,0),(9,14,0),(10,14,0),(11,15,0),(12,16,0),(13,17,0),(14,21,0),(15,21,0),(16,22,0),(17,23,0),(18,24,0),(19,25,0),(20,26,0),(21,28,0),(22,31,0),(23,36,0),(24,36,0),(25,38,0),(26,38,0),(27,40,0),(28,41,0),(29,40,0),(30,42,0),(31,43,0),(32,44,0),(33,45,0),(34,46,0),(35,47,0),(36,48,0),(37,49,0),(38,50,0),(39,51,0),(40,52,0),(41,53,0),(42,54,0),(43,55,0),(44,56,0),(45,57,0),(46,58,0),(47,59,0),(48,60,0),(49,61,0),(50,62,0),(51,63,0),(52,64,0),(53,65,0),(54,66,0),(55,67,0),(56,68,0),(57,69,0),(58,70,0),(59,72,0),(60,71,0),(61,73,0),(62,74,0),(63,75,0),(64,76,0),(65,77,0),(66,78,0),(67,79,0),(68,80,0),(69,81,0),(70,82,0),(71,83,0),(72,84,0),(73,85,0),(74,86,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,10,1,0),(3,11,1,0),(4,12,1,0),(5,13,1,0),(6,15,1,0),(7,16,1,0),(8,17,1,0),(9,18,0,0),(10,19,0,0),(11,20,1,0),(12,21,1,0),(13,22,0,0),(14,23,1,0),(15,25,0,0),(16,27,1,0),(17,28,1,0),(18,29,1,0),(19,30,0,0),(20,32,1,0),(21,33,0,0),(22,34,0,0),(23,34,1,0),(24,35,1,0),(25,34,0,0),(26,36,1,0),(27,34,1,0),(28,34,1,0),(29,37,1,0),(30,34,1,0),(31,34,1,0),(32,39,1,0),(33,34,0,0),(34,40,0,0),(35,40,0,0),(36,42,1,0),(37,34,0,0),(38,44,1,0),(39,45,1,0),(40,40,0,0),(41,46,0,0),(42,47,1,0),(43,40,0,0),(44,34,0,0),(45,48,1,0),(46,50,1,0),(47,52,0,0),(48,51,1,0),(49,53,1,0),(50,54,1,0),(51,55,1,0),(52,56,1,0),(53,58,1,0),(54,59,1,0),(55,60,1,0),(56,61,1,0),(57,62,1,0),(58,63,1,0),(59,64,1,0),(60,65,1,0),(61,66,1,0),(62,63,1,0),(63,67,0,0),(64,68,1,0),(65,63,1,0),(66,67,0,0),(67,69,1,0),(68,70,1,0),(69,63,1,0),(70,67,0,0),(71,71,1,0),(72,72,1,0),(73,63,1,0),(74,67,0,0),(75,70,0,0),(76,73,1,0),(77,70,1,0),(78,74,1,0),(79,75,1,0),(80,76,1,0),(81,77,1,0),(82,70,0,0),(83,78,1,0),(84,79,0,0),(85,81,1,0),(86,80,1,0),(87,82,0,0),(88,70,0,0),(89,83,1,0),(90,84,1,0),(91,85,1,0),(92,86,1,0),(93,70,1,0),(94,83,1,0),(95,87,0,0),(96,88,1,0),(97,83,1,0),(98,70,0,0),(99,90,0,0),(100,91,0,0),(101,83,1,0),(102,92,1,0),(103,70,1,0),(104,83,1,0),(105,94,1,0),(106,95,1,0),(107,96,1,0),(108,70,1,0),(109,97,1,0),(110,98,1,0),(111,70,0,0),(112,99,1,0),(113,101,1,0),(114,102,1,0),(115,103,1,0),(116,105,1,0),(117,104,1,0),(118,106,0,0),(119,107,1,0),(120,108,1,0),(121,109,1,0),(122,110,1,0),(123,111,0,0),(124,112,1,0),(125,113,1,0),(126,114,0,0),(127,115,0,0),(128,111,0,0),(129,117,0,0),(130,116,1,0),(131,121,0,0),(132,120,1,0),(133,111,1,0),(134,119,1,0),(135,122,0,0),(136,123,1,0),(137,111,1,0),(138,124,1,0),(139,125,1,0),(140,123,1,0),(141,111,0,0),(142,126,1,0),(143,127,1,0),(144,123,0,0),(145,128,1,0),(146,111,1,0),(147,129,1,0),(148,130,1,0),(149,123,0,0),(150,131,1,0),(151,111,1,0),(152,132,1,0),(153,133,1,0),(154,134,1,0),(155,111,1,0),(156,123,1,0),(157,135,1,0),(158,136,1,0),(159,137,1,0),(160,111,0,0),(161,123,0,0),(162,136,1,0),(163,138,1,0),(164,139,1,0),(165,136,1,0),(166,111,0,0),(167,140,1,0),(168,123,1,0),(169,141,1,0),(170,136,1,0),(171,142,1,0),(172,123,1,0),(173,136,1,0),(174,143,1,0),(175,123,0,0),(176,144,1,0),(177,145,0,0),(178,147,1,0),(179,123,0,0),(180,149,0,0),(181,151,1,0),(182,150,0,0),(183,153,0,0),(184,152,1,0),(185,153,0,0),(186,152,1,0),(187,154,0,0),(188,155,1,0),(189,156,1,0),(190,153,0,0),(191,152,1,0),(192,157,1,0),(193,153,0,0),(194,152,1,0),(195,158,1,0),(196,159,1,0),(197,152,1,0),(198,160,1,0),(199,161,0,0),(200,162,1,0),(201,164,1,0),(202,165,0,0),(203,166,0,0),(204,167,1,0),(205,168,1,0),(206,169,1,0),(207,170,1,0),(208,171,0,0),(209,172,1,0),(210,173,1,0),(211,174,1,0),(212,175,1,0),(213,176,1,0),(214,177,0,0),(215,178,1,0),(216,179,1,0),(217,180,0,0),(218,181,1,0),(219,182,1,0),(220,183,1,0),(221,184,1,0),(222,186,0,0),(223,187,1,0),(224,189,1,0),(225,188,1,0),(226,190,1,0),(227,191,1,0),(228,193,1,0),(229,194,0,0),(230,195,1,0),(231,196,0,0),(232,199,1,0),(233,197,1,0),(234,198,1,0),(235,201,1,0),(236,198,0,0),(237,202,1,0),(238,204,1,0),(239,203,1,0),(240,205,1,0),(241,198,0,0),(242,207,1,0),(243,198,1,0),(244,208,1,0),(245,209,1,0),(246,198,0,0),(247,211,0,0),(248,212,1,0),(249,198,0,0),(250,213,1,0),(251,214,1,0),(252,198,1,0),(253,215,1,0),(254,198,1,0),(255,216,1,0),(256,217,1,0),(257,198,0,0),(258,219,1,0),(259,220,0,0),(260,198,1,0),(261,221,1,0),(262,222,1,0),(263,220,1,0),(264,223,1,0),(265,224,1,0),(266,225,1,0),(267,220,0,0),(268,226,1,0),(269,227,1,0),(270,220,1,0),(271,228,1,0),(272,227,1,0),(273,220,0,0),(274,229,1,0),(275,230,1,0),(276,227,1,0),(277,230,1,0),(278,220,0,0),(279,227,1,0),(280,231,0,0),(281,230,1,0),(282,227,1,0),(283,220,1,0),(284,230,1,0),(285,232,0,0),(286,220,1,0),(287,233,1,0),(288,230,1,0),(289,232,0,0),(290,220,1,0),(291,232,0,0),(292,234,1,0),(293,235,1,0),(294,232,0,0),(295,220,0,0),(296,236,1,0),(297,237,1,0),(298,239,0,0),(299,240,1,0),(300,241,0,0),(301,242,1,0),(302,243,1,0),(303,244,1,0),(304,245,1,0),(305,247,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_NETWORK_STATE'),(16,'android.permission.CHANGE_NETWORK_STATE'),(4,'android.permission.GET_TASKS'),(7,'android.permission.INTERNET'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_MMS'),(9,'android.permission.RECEIVE_SMS'),(2,'android.permission.RECEIVE_WAP_PUSH'),(5,'android.permission.SEND_SMS'),(12,'android.permission.SET_WALLPAPER'),(17,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_APN_SETTINGS'),(13,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS'),(19,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(18,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(7,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,'package','',NULL,NULL,NULL,NULL),(12,'package','',NULL,NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(17,'package','',NULL,NULL,NULL,NULL),(18,'package','',NULL,NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,'package','',NULL,NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(24,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(25,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(27,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(28,'package','',NULL,NULL,NULL,NULL),(29,'package','',NULL,NULL,NULL,NULL),(30,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(31,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(32,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(33,'package','',NULL,NULL,NULL,NULL),(34,'package','',NULL,NULL,NULL,NULL),(35,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(36,'package','',NULL,NULL,NULL,NULL),(37,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(38,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(39,'package','',NULL,NULL,NULL,NULL),(40,'package','',NULL,NULL,NULL,NULL),(41,'package','',NULL,NULL,NULL,NULL),(42,'package','',NULL,NULL,NULL,NULL),(43,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(44,'package','',NULL,NULL,NULL,NULL),(45,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(46,'package','',NULL,NULL,NULL,NULL),(47,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(48,'package','',NULL,NULL,NULL,NULL),(49,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(50,'package','',NULL,NULL,NULL,NULL),(51,'package','',NULL,NULL,NULL,NULL),(52,'package','',NULL,NULL,NULL,NULL),(53,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(54,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(55,'package','',NULL,NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(57,'package','',NULL,NULL,NULL,NULL),(58,'package','',NULL,NULL,NULL,NULL),(59,'package','',NULL,NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(61,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(62,'package','',NULL,NULL,NULL,NULL),(63,'package','',NULL,NULL,NULL,NULL),(64,'package','',NULL,NULL,NULL,NULL),(65,'package','',NULL,NULL,NULL,NULL),(66,'package','',NULL,NULL,NULL,NULL),(67,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(68,'package','',NULL,NULL,NULL,NULL),(69,'package','',NULL,NULL,NULL,NULL),(70,'package','',NULL,NULL,NULL,NULL),(71,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(72,'package','',NULL,NULL,NULL,NULL),(73,'package','',NULL,NULL,NULL,NULL),(74,'package','',NULL,NULL,NULL,NULL),(75,'package','',NULL,NULL,NULL,NULL),(76,'package','',NULL,NULL,NULL,NULL),(77,'package','',NULL,NULL,NULL,NULL),(78,'package','',NULL,NULL,NULL,NULL),(79,'package','',NULL,NULL,NULL,NULL),(80,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(81,'package','',NULL,NULL,NULL,NULL),(82,'package','',NULL,NULL,NULL,NULL),(83,'package','',NULL,NULL,NULL,NULL),(84,'package','',NULL,NULL,NULL,NULL),(85,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(86,'package','',NULL,NULL,NULL,NULL),(87,'package','',NULL,NULL,NULL,NULL),(88,'package','',NULL,NULL,NULL,NULL),(89,'package','',NULL,NULL,NULL,NULL),(90,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(91,'package','',NULL,NULL,NULL,NULL),(92,'package','',NULL,NULL,NULL,NULL),(93,'package','',NULL,NULL,NULL,NULL),(94,'package','',NULL,NULL,NULL,NULL),(95,'package','',NULL,NULL,NULL,NULL),(96,'package','',NULL,NULL,NULL,NULL),(97,'package','',NULL,NULL,NULL,NULL),(98,'package','',NULL,NULL,NULL,NULL),(99,'package','',NULL,NULL,NULL,NULL),(100,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(101,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(102,'package','',NULL,NULL,NULL,NULL),(103,'package','',NULL,NULL,NULL,NULL),(104,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(105,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(106,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(107,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(108,'package','',NULL,NULL,NULL,NULL),(109,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(110,'package','',NULL,NULL,NULL,NULL),(111,'package','',NULL,NULL,NULL,NULL),(112,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(113,'package','',NULL,NULL,NULL,NULL),(114,'package','',NULL,NULL,NULL,NULL),(115,'package','',NULL,NULL,NULL,NULL),(116,'package','',NULL,NULL,NULL,NULL),(117,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(118,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(119,'package','',NULL,NULL,NULL,NULL),(120,'package','',NULL,NULL,NULL,NULL),(121,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(122,'package','',NULL,NULL,NULL,NULL),(123,'package','',NULL,NULL,NULL,NULL),(124,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(125,'package','',NULL,NULL,NULL,NULL),(126,'package','',NULL,NULL,NULL,NULL),(127,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(128,'package','',NULL,NULL,NULL,NULL),(129,'package','',NULL,NULL,NULL,NULL),(130,'package','',NULL,NULL,NULL,NULL),(131,'package','',NULL,NULL,NULL,NULL),(132,'package','',NULL,NULL,NULL,NULL),(133,'package','',NULL,NULL,NULL,NULL),(134,'package','',NULL,NULL,NULL,NULL),(135,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(136,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(137,'package','',NULL,NULL,NULL,NULL),(138,'package','',NULL,NULL,NULL,NULL),(139,'package','',NULL,NULL,NULL,NULL),(140,'package','',NULL,NULL,NULL,NULL),(141,'package','',NULL,NULL,NULL,NULL),(142,'package','',NULL,NULL,NULL,NULL),(143,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(144,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(145,'package','',NULL,NULL,NULL,NULL),(146,'package','',NULL,NULL,NULL,NULL),(147,'package','',NULL,NULL,NULL,NULL),(148,'package','',NULL,NULL,NULL,NULL),(149,'package','',NULL,NULL,NULL,NULL),(150,'package','',NULL,NULL,NULL,NULL),(151,'package','',NULL,NULL,NULL,NULL),(152,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(153,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(154,'package','',NULL,NULL,NULL,NULL),(155,'package','',NULL,NULL,NULL,NULL),(156,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(157,'package','',NULL,NULL,NULL,NULL),(158,'package','',NULL,NULL,NULL,NULL),(159,'package','',NULL,NULL,NULL,NULL),(160,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(161,'package','',NULL,NULL,NULL,NULL),(162,'package','',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,4,2),(3,6,3),(4,7,4),(5,8,5),(6,9,6),(7,14,9),(8,26,16),(9,31,21),(10,38,25),(11,41,26),(12,49,31),(13,57,37),(14,89,61),(15,100,67),(16,146,100),(17,148,101),(18,163,106),(19,185,118),(20,192,124),(21,210,136),(22,218,143),(23,238,156),(24,246,160);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,17),(13,2,16),(14,2,1),(15,2,5),(16,2,6),(17,2,7),(18,2,9),(19,2,10),(20,2,11),(21,2,12),(22,2,13),(23,2,14),(24,2,15),(25,3,1),(26,3,5),(27,3,6),(28,3,7),(29,3,9),(30,3,10),(31,3,11),(32,3,12),(33,3,13),(34,3,14),(35,3,15),(36,3,17),(37,3,16),(38,4,1),(39,4,5),(40,4,6),(41,4,7),(42,4,9),(43,4,10),(44,4,11),(45,4,12),(46,4,13),(47,4,14),(48,4,15),(49,4,17),(50,4,16),(51,4,19),(52,4,18),(53,5,1),(54,5,5),(55,5,6),(56,6,1),(57,5,7),(58,6,5),(59,5,9),(60,6,6),(61,5,10),(62,6,7),(63,5,11),(64,7,1),(65,6,9),(66,5,12),(67,7,5),(68,5,13),(69,6,10),(70,7,6),(71,5,14),(72,6,11),(73,7,7),(74,6,12),(75,5,15),(76,7,9),(77,5,17),(78,6,13),(79,7,10),(80,6,14),(81,7,11),(82,5,16),(83,6,15),(84,7,12),(85,5,19),(86,6,17),(87,7,13),(88,5,18),(89,6,16),(90,7,14),(91,6,19),(92,7,15),(93,6,18),(94,7,17),(95,7,16),(96,7,19),(97,7,18);
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

-- Dump completed on 2015-10-09  0:40:00
