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
) ENGINE=InnoDB AUTO_INCREMENT=4585 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,208,7,2,NULL),(2,208,13,2,NULL),(3,208,19,2,NULL),(4,208,29,2,NULL),(5,208,33,2,NULL),(6,208,37,2,NULL),(7,247,7,2,NULL),(8,247,13,2,NULL),(9,247,19,2,NULL),(10,247,29,2,NULL),(11,247,33,2,NULL),(12,247,37,2,NULL),(13,259,8,2,NULL),(14,259,14,2,NULL),(15,259,21,2,NULL),(16,259,36,2,NULL),(17,259,38,2,NULL),(18,259,40,2,NULL),(19,267,8,2,NULL),(20,267,14,2,NULL),(21,267,21,2,NULL),(22,267,36,2,NULL),(23,267,38,2,NULL),(24,267,40,2,NULL),(25,273,8,2,NULL),(26,273,14,2,NULL),(27,273,21,2,NULL),(28,273,36,2,NULL),(29,273,38,2,NULL),(30,273,40,2,NULL),(31,278,8,2,NULL),(32,278,14,2,NULL),(33,278,21,2,NULL),(34,278,36,2,NULL),(35,278,38,2,NULL),(36,278,40,2,NULL),(37,295,8,2,NULL),(38,295,14,2,NULL),(39,295,21,2,NULL),(40,295,36,2,NULL),(41,295,38,2,NULL),(42,295,40,2,NULL),(43,57,1,2,NULL),(44,58,1,2,NULL),(45,62,1,2,NULL),(46,65,1,2,NULL),(47,69,1,2,NULL),(48,73,1,2,NULL),(49,240,1,2,NULL),(50,263,1,2,NULL),(51,270,1,2,NULL),(52,283,1,2,NULL),(53,286,1,2,NULL),(54,290,1,2,NULL),(55,57,4,2,NULL),(56,58,4,2,NULL),(57,62,4,2,NULL),(58,65,4,2,NULL),(59,69,4,2,NULL),(60,73,4,2,NULL),(61,240,4,2,NULL),(62,263,4,2,NULL),(63,270,4,2,NULL),(64,283,4,2,NULL),(65,286,4,2,NULL),(66,290,4,2,NULL),(67,57,24,2,NULL),(68,58,24,2,NULL),(69,62,24,2,NULL),(70,65,24,2,NULL),(71,69,24,2,NULL),(72,73,24,2,NULL),(73,240,24,2,NULL),(74,263,24,2,NULL),(75,270,24,2,NULL),(76,283,24,2,NULL),(77,286,24,2,NULL),(78,290,24,2,NULL),(79,57,31,2,NULL),(80,58,31,2,NULL),(81,62,31,2,NULL),(82,65,31,2,NULL),(83,69,31,2,NULL),(84,73,31,2,NULL),(85,240,31,2,NULL),(86,263,31,2,NULL),(87,270,31,2,NULL),(88,283,31,2,NULL),(89,286,31,2,NULL),(90,290,31,2,NULL),(91,57,5,2,NULL),(92,58,5,2,NULL),(93,62,5,2,NULL),(94,65,5,2,NULL),(95,69,5,2,NULL),(96,73,5,2,NULL),(97,240,5,2,NULL),(98,263,5,2,NULL),(99,270,5,2,NULL),(100,283,5,2,NULL),(101,286,5,2,NULL),(102,290,5,2,NULL),(103,11,26,2,NULL),(104,23,26,2,NULL),(105,27,26,2,NULL),(106,28,26,2,NULL),(107,30,26,2,NULL),(108,31,26,2,NULL),(109,89,26,2,NULL),(110,94,26,2,NULL),(111,97,26,2,NULL),(112,101,26,2,NULL),(113,104,26,2,NULL),(114,110,26,2,NULL),(115,3,26,2,NULL),(116,57,8,2,NULL),(117,58,8,2,NULL),(118,62,8,2,NULL),(119,65,8,2,NULL),(120,69,8,2,NULL),(121,73,8,2,NULL),(122,240,8,2,NULL),(123,263,8,2,NULL),(124,270,8,2,NULL),(125,283,8,2,NULL),(126,286,8,2,NULL),(127,290,8,2,NULL),(128,57,9,2,NULL),(129,58,9,2,NULL),(130,62,9,2,NULL),(131,65,9,2,NULL),(132,69,9,2,NULL),(133,73,9,2,NULL),(134,240,9,2,NULL),(135,263,9,2,NULL),(136,270,9,2,NULL),(137,283,9,2,NULL),(138,286,9,2,NULL),(139,290,9,2,NULL),(140,57,11,2,NULL),(141,58,11,2,NULL),(142,62,11,2,NULL),(143,65,11,2,NULL),(144,69,11,2,NULL),(145,73,11,2,NULL),(146,240,11,2,NULL),(147,263,11,2,NULL),(148,270,11,2,NULL),(149,283,11,2,NULL),(150,286,11,2,NULL),(151,290,11,2,NULL),(152,57,47,2,NULL),(153,58,47,2,NULL),(154,62,47,2,NULL),(155,65,47,2,NULL),(156,69,47,2,NULL),(157,73,47,2,NULL),(158,240,47,2,NULL),(159,263,47,2,NULL),(160,270,47,2,NULL),(161,283,47,2,NULL),(162,286,47,2,NULL),(163,290,47,2,NULL),(164,57,50,2,NULL),(165,58,50,2,NULL),(166,62,50,2,NULL),(167,65,50,2,NULL),(168,69,50,2,NULL),(169,73,50,2,NULL),(170,240,50,2,NULL),(171,263,50,2,NULL),(172,270,50,2,NULL),(173,283,50,2,NULL),(174,286,50,2,NULL),(175,290,50,2,NULL),(176,57,64,2,NULL),(177,58,64,2,NULL),(178,62,64,2,NULL),(179,65,64,2,NULL),(180,69,64,2,NULL),(181,73,64,2,NULL),(182,240,64,2,NULL),(183,263,64,2,NULL),(184,270,64,2,NULL),(185,283,64,2,NULL),(186,286,64,2,NULL),(187,290,64,2,NULL),(188,57,66,2,NULL),(189,58,66,2,NULL),(190,62,66,2,NULL),(191,65,66,2,NULL),(192,69,66,2,NULL),(193,73,66,2,NULL),(194,240,66,2,NULL),(195,263,66,2,NULL),(196,270,66,2,NULL),(197,283,66,2,NULL),(198,286,66,2,NULL),(199,290,66,2,NULL),(200,57,10,2,NULL),(201,58,10,2,NULL),(202,62,10,2,NULL),(203,65,10,2,NULL),(204,69,10,2,NULL),(205,73,10,2,NULL),(206,240,10,2,NULL),(207,263,10,2,NULL),(208,270,10,2,NULL),(209,283,10,2,NULL),(210,286,10,2,NULL),(211,290,10,2,NULL),(212,20,26,2,NULL),(213,68,26,2,NULL),(214,77,26,2,NULL),(215,93,26,2,NULL),(216,103,26,2,NULL),(217,108,26,2,NULL),(218,148,26,2,NULL),(219,184,26,2,NULL),(220,186,26,2,NULL),(221,191,26,2,NULL),(222,194,26,2,NULL),(223,197,26,2,NULL),(224,226,26,2,NULL),(225,57,14,2,NULL),(226,58,14,2,NULL),(227,62,14,2,NULL),(228,65,14,2,NULL),(229,69,14,2,NULL),(230,73,14,2,NULL),(231,240,14,2,NULL),(232,263,14,2,NULL),(233,270,14,2,NULL),(234,283,14,2,NULL),(235,286,14,2,NULL),(236,290,14,2,NULL),(237,57,16,2,NULL),(238,58,16,2,NULL),(239,62,16,2,NULL),(240,65,16,2,NULL),(241,69,16,2,NULL),(242,73,16,2,NULL),(243,240,16,2,NULL),(244,263,16,2,NULL),(245,270,16,2,NULL),(246,283,16,2,NULL),(247,286,16,2,NULL),(248,290,16,2,NULL),(249,57,17,2,NULL),(250,58,17,2,NULL),(251,11,1,2,NULL),(252,62,17,2,NULL),(253,65,17,2,NULL),(254,23,1,2,NULL),(255,69,17,2,NULL),(256,27,1,2,NULL),(257,73,17,2,NULL),(258,28,1,2,NULL),(259,240,17,2,NULL),(260,263,17,2,NULL),(261,30,1,2,NULL),(262,270,17,2,NULL),(263,31,1,2,NULL),(264,283,17,2,NULL),(265,89,1,2,NULL),(266,286,17,2,NULL),(267,94,1,2,NULL),(268,290,17,2,NULL),(269,97,1,2,NULL),(270,57,51,2,NULL),(271,101,1,2,NULL),(272,58,51,2,NULL),(273,104,1,2,NULL),(274,62,51,2,NULL),(275,110,1,2,NULL),(276,65,51,2,NULL),(277,3,1,2,NULL),(278,69,51,2,NULL),(279,20,1,2,NULL),(280,73,51,2,NULL),(281,68,1,2,NULL),(282,240,51,2,NULL),(283,77,1,2,NULL),(284,263,51,2,NULL),(285,93,1,2,NULL),(286,270,51,2,NULL),(287,103,1,2,NULL),(288,283,51,2,NULL),(289,108,1,2,NULL),(290,286,51,2,NULL),(291,148,1,2,NULL),(292,290,51,2,NULL),(293,184,1,2,NULL),(294,57,52,2,NULL),(295,186,1,2,NULL),(296,58,52,2,NULL),(297,191,1,2,NULL),(298,62,52,2,NULL),(299,194,1,2,NULL),(300,65,52,2,NULL),(301,197,1,2,NULL),(302,69,52,2,NULL),(303,226,1,2,NULL),(304,73,52,2,NULL),(305,136,1,2,NULL),(306,240,52,2,NULL),(307,140,1,2,NULL),(308,263,52,2,NULL),(309,156,1,2,NULL),(310,270,52,2,NULL),(311,168,1,2,NULL),(312,283,52,2,NULL),(313,172,1,2,NULL),(314,286,52,2,NULL),(315,209,1,2,NULL),(316,290,52,2,NULL),(317,262,1,2,NULL),(318,57,65,2,NULL),(319,275,1,2,NULL),(320,58,65,2,NULL),(321,277,1,2,NULL),(322,62,65,2,NULL),(323,281,1,2,NULL),(324,65,65,2,NULL),(325,284,1,2,NULL),(326,69,65,2,NULL),(327,288,1,2,NULL),(328,73,65,2,NULL),(329,52,1,2,NULL),(330,240,65,2,NULL),(331,80,1,2,NULL),(332,263,65,2,NULL),(333,158,1,2,NULL),(334,270,65,2,NULL),(335,162,1,2,NULL),(336,283,65,2,NULL),(337,165,1,2,NULL),(338,286,65,2,NULL),(339,170,1,2,NULL),(340,290,65,2,NULL),(341,173,1,2,NULL),(342,57,74,2,NULL),(343,198,1,2,NULL),(344,58,74,2,NULL),(345,234,1,2,NULL),(346,62,74,2,NULL),(347,243,1,2,NULL),(348,65,74,2,NULL),(349,252,1,2,NULL),(350,69,74,2,NULL),(351,254,1,2,NULL),(352,73,74,2,NULL),(353,260,1,2,NULL),(354,240,74,2,NULL),(355,302,1,2,NULL),(356,263,74,2,NULL),(357,130,1,2,NULL),(358,270,74,2,NULL),(359,133,1,2,NULL),(360,283,74,2,NULL),(361,137,1,2,NULL),(362,286,74,2,NULL),(363,146,1,2,NULL),(364,290,74,2,NULL),(365,151,1,2,NULL),(366,57,15,2,NULL),(367,155,1,2,NULL),(368,58,15,2,NULL),(369,178,1,2,NULL),(370,62,15,2,NULL),(371,200,1,2,NULL),(372,65,15,2,NULL),(373,269,1,2,NULL),(374,69,15,2,NULL),(375,272,1,2,NULL),(376,73,15,2,NULL),(377,276,1,2,NULL),(378,240,15,2,NULL),(379,279,1,2,NULL),(380,263,15,2,NULL),(381,282,1,2,NULL),(382,270,15,2,NULL),(383,301,1,2,NULL),(384,283,15,2,NULL),(385,11,4,2,NULL),(386,286,15,2,NULL),(387,23,4,2,NULL),(388,290,15,2,NULL),(389,27,4,2,NULL),(390,136,26,2,NULL),(391,28,4,2,NULL),(392,140,26,2,NULL),(393,30,4,2,NULL),(394,156,26,2,NULL),(395,31,4,2,NULL),(396,168,26,2,NULL),(397,89,4,2,NULL),(398,172,26,2,NULL),(399,94,4,2,NULL),(400,209,26,2,NULL),(401,97,4,2,NULL),(402,262,26,2,NULL),(403,101,4,2,NULL),(404,275,26,2,NULL),(405,104,4,2,NULL),(406,277,26,2,NULL),(407,110,4,2,NULL),(408,281,26,2,NULL),(409,3,4,2,NULL),(410,284,26,2,NULL),(411,20,4,2,NULL),(412,288,26,2,NULL),(413,68,4,2,NULL),(414,52,26,2,NULL),(415,77,4,2,NULL),(416,57,21,2,NULL),(417,93,4,2,NULL),(418,58,21,2,NULL),(419,103,4,2,NULL),(420,62,21,2,NULL),(421,108,4,2,NULL),(422,65,21,2,NULL),(423,148,4,2,NULL),(424,69,21,2,NULL),(425,184,4,2,NULL),(426,73,21,2,NULL),(427,186,4,2,NULL),(428,240,21,2,NULL),(429,191,4,2,NULL),(430,263,21,2,NULL),(431,47,7,2,NULL),(432,194,4,2,NULL),(433,270,21,2,NULL),(434,47,13,2,NULL),(435,197,4,2,NULL),(436,283,21,2,NULL),(437,226,4,2,NULL),(438,47,19,2,NULL),(439,286,21,2,NULL),(440,136,4,2,NULL),(441,290,21,2,NULL),(442,140,4,2,NULL),(443,47,29,2,NULL),(444,57,22,2,NULL),(445,156,4,2,NULL),(446,58,22,2,NULL),(447,47,33,2,NULL),(448,168,4,2,NULL),(449,62,22,2,NULL),(450,47,37,2,NULL),(451,172,4,2,NULL),(452,65,22,2,NULL),(453,209,4,2,NULL),(454,144,8,2,NULL),(455,69,22,2,NULL),(456,262,4,2,NULL),(457,73,22,2,NULL),(458,144,14,2,NULL),(459,275,4,2,NULL),(460,240,22,2,NULL),(461,277,4,2,NULL),(462,144,21,2,NULL),(463,263,22,2,NULL),(464,281,4,2,NULL),(465,270,22,2,NULL),(466,144,36,2,NULL),(467,284,4,2,NULL),(468,283,22,2,NULL),(469,288,4,2,NULL),(470,144,38,2,NULL),(471,286,22,2,NULL),(472,52,4,2,NULL),(473,290,22,2,NULL),(474,144,40,2,NULL),(475,80,4,2,NULL),(476,57,23,2,NULL),(477,158,4,2,NULL),(478,149,8,2,NULL),(479,58,23,2,NULL),(480,162,4,2,NULL),(481,62,23,2,NULL),(482,149,14,2,NULL),(483,165,4,2,NULL),(484,65,23,2,NULL),(485,170,4,2,NULL),(486,149,21,2,NULL),(487,69,23,2,NULL),(488,173,4,2,NULL),(489,73,23,2,NULL),(490,149,36,2,NULL),(491,198,4,2,NULL),(492,240,23,2,NULL),(493,234,4,2,NULL),(494,149,38,2,NULL),(495,263,23,2,NULL),(496,243,4,2,NULL),(497,270,23,2,NULL),(498,149,40,2,NULL),(499,252,4,2,NULL),(500,283,23,2,NULL),(501,254,4,2,NULL),(502,161,8,2,NULL),(503,286,23,2,NULL),(504,260,4,2,NULL),(505,290,23,2,NULL),(506,161,14,2,NULL),(507,302,4,2,NULL),(508,57,53,2,NULL),(509,161,21,2,NULL),(510,130,4,2,NULL),(511,58,53,2,NULL),(512,161,36,2,NULL),(513,62,53,2,NULL),(514,133,4,2,NULL),(515,161,38,2,NULL),(516,65,53,2,NULL),(517,137,4,2,NULL),(518,161,40,2,NULL),(519,69,53,2,NULL),(520,146,4,2,NULL),(521,175,8,2,NULL),(522,73,53,2,NULL),(523,151,4,2,NULL),(524,175,14,2,NULL),(525,240,53,2,NULL),(526,155,4,2,NULL),(527,175,21,2,NULL),(528,263,53,2,NULL),(529,178,4,2,NULL),(530,175,36,2,NULL),(531,270,53,2,NULL),(532,200,4,2,NULL),(533,175,38,2,NULL),(534,283,53,2,NULL),(535,269,4,2,NULL),(536,175,40,2,NULL),(537,286,53,2,NULL),(538,272,4,2,NULL),(539,179,8,2,NULL),(540,290,53,2,NULL),(541,276,4,2,NULL),(542,179,14,2,NULL),(543,57,59,2,NULL),(544,279,4,2,NULL),(545,179,21,2,NULL),(546,58,59,2,NULL),(547,282,4,2,NULL),(548,179,36,2,NULL),(549,62,59,2,NULL),(550,301,4,2,NULL),(551,179,38,2,NULL),(552,65,59,2,NULL),(553,11,24,2,NULL),(554,179,40,2,NULL),(555,69,59,2,NULL),(556,23,24,2,NULL),(557,217,7,2,NULL),(558,73,59,2,NULL),(559,27,24,2,NULL),(560,217,13,2,NULL),(561,240,59,2,NULL),(562,28,24,2,NULL),(563,217,19,2,NULL),(564,263,59,2,NULL),(565,30,24,2,NULL),(566,217,29,2,NULL),(567,31,24,2,NULL),(568,270,59,2,NULL),(569,187,7,2,NULL),(570,217,33,2,NULL),(571,283,59,2,NULL),(572,89,24,2,NULL),(573,217,37,2,NULL),(574,187,13,2,NULL),(575,286,59,2,NULL),(576,94,24,2,NULL),(577,187,19,2,NULL),(578,136,24,2,NULL),(579,290,59,2,NULL),(580,97,24,2,NULL),(581,140,24,2,NULL),(582,187,29,2,NULL),(583,57,63,2,NULL),(584,101,24,2,NULL),(585,156,24,2,NULL),(586,187,33,2,NULL),(587,58,63,2,NULL),(588,104,24,2,NULL),(589,168,24,2,NULL),(590,187,37,2,NULL),(591,62,63,2,NULL),(592,110,24,2,NULL),(593,172,24,2,NULL),(594,214,7,2,NULL),(595,65,63,2,NULL),(596,3,24,2,NULL),(597,209,24,2,NULL),(598,69,63,2,NULL),(599,214,13,2,NULL),(600,20,24,2,NULL),(601,262,24,2,NULL),(602,73,63,2,NULL),(603,68,24,2,NULL),(604,275,24,2,NULL),(605,214,19,2,NULL),(606,240,63,2,NULL),(607,77,24,2,NULL),(608,277,24,2,NULL),(609,263,63,2,NULL),(610,214,29,2,NULL),(611,93,24,2,NULL),(612,281,24,2,NULL),(613,270,63,2,NULL),(614,103,24,2,NULL),(615,284,24,2,NULL),(616,214,33,2,NULL),(617,283,63,2,NULL),(618,108,24,2,NULL),(619,288,24,2,NULL),(620,286,63,2,NULL),(621,214,37,2,NULL),(622,148,24,2,NULL),(623,136,31,2,NULL),(624,290,63,2,NULL),(625,184,24,2,NULL),(626,140,31,2,NULL),(627,236,8,2,NULL),(628,57,71,2,NULL),(629,186,24,2,NULL),(630,156,31,2,NULL),(631,58,71,2,NULL),(632,236,14,2,NULL),(633,191,24,2,NULL),(634,168,31,2,NULL),(635,62,71,2,NULL),(636,194,24,2,NULL),(637,172,31,2,NULL),(638,236,21,2,NULL),(639,65,71,2,NULL),(640,197,24,2,NULL),(641,209,31,2,NULL),(642,69,71,2,NULL),(643,236,36,2,NULL),(644,226,24,2,NULL),(645,262,31,2,NULL),(646,73,71,2,NULL),(647,275,31,2,NULL),(648,52,24,2,NULL),(649,236,38,2,NULL),(650,240,71,2,NULL),(651,80,24,2,NULL),(652,277,31,2,NULL),(653,236,40,2,NULL),(654,263,71,2,NULL),(655,158,24,2,NULL),(656,281,31,2,NULL),(657,241,8,2,NULL),(658,162,24,2,NULL),(659,284,31,2,NULL),(660,241,14,2,NULL),(661,165,24,2,NULL),(662,288,31,2,NULL),(663,270,71,2,NULL),(664,241,21,2,NULL),(665,170,24,2,NULL),(666,283,71,2,NULL),(667,136,5,2,NULL),(668,173,24,2,NULL),(669,241,36,2,NULL),(670,286,71,2,NULL),(671,140,5,2,NULL),(672,198,24,2,NULL),(673,241,38,2,NULL),(674,290,71,2,NULL),(675,156,5,2,NULL),(676,234,24,2,NULL),(677,241,40,2,NULL),(678,57,78,2,NULL),(679,168,5,2,NULL),(680,243,24,2,NULL),(681,246,8,2,NULL),(682,58,78,2,NULL),(683,172,5,2,NULL),(684,252,24,2,NULL),(685,246,14,2,NULL),(686,62,78,2,NULL),(687,209,5,2,NULL),(688,254,24,2,NULL),(689,246,21,2,NULL),(690,65,78,2,NULL),(691,262,5,2,NULL),(692,260,24,2,NULL),(693,246,36,2,NULL),(694,69,78,2,NULL),(695,275,5,2,NULL),(696,302,24,2,NULL),(697,246,38,2,NULL),(698,73,78,2,NULL),(699,277,5,2,NULL),(700,246,40,2,NULL),(701,130,24,2,NULL),(702,240,78,2,NULL),(703,281,5,2,NULL),(704,133,24,2,NULL),(705,249,8,2,NULL),(706,263,78,2,NULL),(707,284,5,2,NULL),(708,137,24,2,NULL),(709,249,14,2,NULL),(710,270,78,2,NULL),(711,288,5,2,NULL),(712,146,24,2,NULL),(713,249,21,2,NULL),(714,283,78,2,NULL),(715,11,15,2,NULL),(716,151,24,2,NULL),(717,249,36,2,NULL),(718,286,78,2,NULL),(719,23,15,2,NULL),(720,155,24,2,NULL),(721,249,38,2,NULL),(722,290,78,2,NULL),(723,27,15,2,NULL),(724,178,24,2,NULL),(725,249,40,2,NULL),(726,57,25,2,NULL),(727,28,15,2,NULL),(728,200,24,2,NULL),(729,257,8,2,NULL),(730,58,25,2,NULL),(731,30,15,2,NULL),(732,269,24,2,NULL),(733,257,14,2,NULL),(734,62,25,2,NULL),(735,31,15,2,NULL),(736,272,24,2,NULL),(737,257,21,2,NULL),(738,65,25,2,NULL),(739,89,15,2,NULL),(740,276,24,2,NULL),(741,257,36,2,NULL),(742,69,25,2,NULL),(743,94,15,2,NULL),(744,279,24,2,NULL),(745,257,38,2,NULL),(746,73,25,2,NULL),(747,97,15,2,NULL),(748,282,24,2,NULL),(749,257,40,2,NULL),(750,240,25,2,NULL),(751,101,15,2,NULL),(752,301,24,2,NULL),(753,80,31,2,NULL),(754,263,25,2,NULL),(755,104,15,2,NULL),(756,11,31,2,NULL),(757,158,31,2,NULL),(758,270,25,2,NULL),(759,110,15,2,NULL),(760,23,31,2,NULL),(761,162,31,2,NULL),(762,283,25,2,NULL),(763,3,15,2,NULL),(764,27,31,2,NULL),(765,165,31,2,NULL),(766,286,25,2,NULL),(767,136,8,2,NULL),(768,28,31,2,NULL),(769,170,31,2,NULL),(770,290,25,2,NULL),(771,140,8,2,NULL),(772,30,31,2,NULL),(773,173,31,2,NULL),(774,80,26,2,NULL),(775,156,8,2,NULL),(776,31,31,2,NULL),(777,198,31,2,NULL),(778,158,26,2,NULL),(779,168,8,2,NULL),(780,89,31,2,NULL),(781,234,31,2,NULL),(782,162,26,2,NULL),(783,172,8,2,NULL),(784,94,31,2,NULL),(785,243,31,2,NULL),(786,165,26,2,NULL),(787,209,8,2,NULL),(788,97,31,2,NULL),(789,252,31,2,NULL),(790,170,26,2,NULL),(791,262,8,2,NULL),(792,101,31,2,NULL),(793,254,31,2,NULL),(794,173,26,2,NULL),(795,275,8,2,NULL),(796,104,31,2,NULL),(797,260,31,2,NULL),(798,198,26,2,NULL),(799,277,8,2,NULL),(800,110,31,2,NULL),(801,80,5,2,NULL),(802,234,26,2,NULL),(803,281,8,2,NULL),(804,3,31,2,NULL),(805,158,5,2,NULL),(806,243,26,2,NULL),(807,284,8,2,NULL),(808,20,31,2,NULL),(809,162,5,2,NULL),(810,252,26,2,NULL),(811,288,8,2,NULL),(812,68,31,2,NULL),(813,165,5,2,NULL),(814,254,26,2,NULL),(815,136,9,2,NULL),(816,77,31,2,NULL),(817,170,5,2,NULL),(818,260,26,2,NULL),(819,140,9,2,NULL),(820,93,31,2,NULL),(821,173,5,2,NULL),(822,302,26,2,NULL),(823,156,9,2,NULL),(824,103,31,2,NULL),(825,198,5,2,NULL),(826,57,36,2,NULL),(827,168,9,2,NULL),(828,108,31,2,NULL),(829,234,5,2,NULL),(830,58,36,2,NULL),(831,172,9,2,NULL),(832,148,31,2,NULL),(833,243,5,2,NULL),(834,62,36,2,NULL),(835,209,9,2,NULL),(836,184,31,2,NULL),(837,252,5,2,NULL),(838,65,36,2,NULL),(839,262,9,2,NULL),(840,186,31,2,NULL),(841,254,5,2,NULL),(842,69,36,2,NULL),(843,275,9,2,NULL),(844,191,31,2,NULL),(845,260,5,2,NULL),(846,73,36,2,NULL),(847,277,9,2,NULL),(848,194,31,2,NULL),(849,11,25,2,NULL),(850,240,36,2,NULL),(851,281,9,2,NULL),(852,197,31,2,NULL),(853,23,25,2,NULL),(854,263,36,2,NULL),(855,284,9,2,NULL),(856,226,31,2,NULL),(857,27,25,2,NULL),(858,270,36,2,NULL),(859,288,9,2,NULL),(860,28,25,2,NULL),(861,52,31,2,NULL),(862,283,36,2,NULL),(863,136,11,2,NULL),(864,30,25,2,NULL),(865,286,36,2,NULL),(866,140,11,2,NULL),(867,302,31,2,NULL),(868,31,25,2,NULL),(869,156,11,2,NULL),(870,290,36,2,NULL),(871,89,25,2,NULL),(872,130,31,2,NULL),(873,57,41,2,NULL),(874,168,11,2,NULL),(875,133,31,2,NULL),(876,94,25,2,NULL),(877,58,41,2,NULL),(878,172,11,2,NULL),(879,137,31,2,NULL),(880,97,25,2,NULL),(881,62,41,2,NULL),(882,209,11,2,NULL),(883,146,31,2,NULL),(884,101,25,2,NULL),(885,65,41,2,NULL),(886,262,11,2,NULL),(887,151,31,2,NULL),(888,104,25,2,NULL),(889,69,41,2,NULL),(890,275,11,2,NULL),(891,155,31,2,NULL),(892,110,25,2,NULL),(893,73,41,2,NULL),(894,277,11,2,NULL),(895,178,31,2,NULL),(896,3,25,2,NULL),(897,240,41,2,NULL),(898,281,11,2,NULL),(899,200,31,2,NULL),(900,80,8,2,NULL),(901,263,41,2,NULL),(902,284,11,2,NULL),(903,269,31,2,NULL),(904,158,8,2,NULL),(905,270,41,2,NULL),(906,288,11,2,NULL),(907,272,31,2,NULL),(908,162,8,2,NULL),(909,283,41,2,NULL),(910,136,47,2,NULL),(911,276,31,2,NULL),(912,165,8,2,NULL),(913,286,41,2,NULL),(914,140,47,2,NULL),(915,279,31,2,NULL),(916,170,8,2,NULL),(917,290,41,2,NULL),(918,156,47,2,NULL),(919,282,31,2,NULL),(920,173,8,2,NULL),(921,57,43,2,NULL),(922,168,47,2,NULL),(923,301,31,2,NULL),(924,198,8,2,NULL),(925,58,43,2,NULL),(926,172,47,2,NULL),(927,234,8,2,NULL),(928,62,43,2,NULL),(929,209,47,2,NULL),(930,243,8,2,NULL),(931,65,43,2,NULL),(932,262,47,2,NULL),(933,252,8,2,NULL),(934,69,43,2,NULL),(935,275,47,2,NULL),(936,254,8,2,NULL),(937,73,43,2,NULL),(938,277,47,2,NULL),(939,260,8,2,NULL),(940,240,43,2,NULL),(941,281,47,2,NULL),(942,80,9,2,NULL),(943,263,43,2,NULL),(944,284,47,2,NULL),(945,158,9,2,NULL),(946,270,43,2,NULL),(947,288,47,2,NULL),(948,162,9,2,NULL),(949,283,43,2,NULL),(950,136,50,2,NULL),(951,165,9,2,NULL),(952,286,43,2,NULL),(953,140,50,2,NULL),(954,170,9,2,NULL),(955,290,43,2,NULL),(956,156,50,2,NULL),(957,173,9,2,NULL),(958,57,54,2,NULL),(959,168,50,2,NULL),(960,198,9,2,NULL),(961,58,54,2,NULL),(962,172,50,2,NULL),(963,234,9,2,NULL),(964,62,54,2,NULL),(965,209,50,2,NULL),(966,243,9,2,NULL),(967,65,54,2,NULL),(968,262,50,2,NULL),(969,252,9,2,NULL),(970,275,50,2,NULL),(971,69,54,2,NULL),(972,254,9,2,NULL),(973,73,54,2,NULL),(974,277,50,2,NULL),(975,260,9,2,NULL),(976,240,54,2,NULL),(977,281,50,2,NULL),(978,80,11,2,NULL),(979,263,54,2,NULL),(980,284,50,2,NULL),(981,158,11,2,NULL),(982,270,54,2,NULL),(983,288,50,2,NULL),(984,162,11,2,NULL),(985,283,54,2,NULL),(986,136,64,2,NULL),(987,165,11,2,NULL),(988,286,54,2,NULL),(989,140,64,2,NULL),(990,170,11,2,NULL),(991,290,54,2,NULL),(992,156,64,2,NULL),(993,173,11,2,NULL),(994,57,56,2,NULL),(995,168,64,2,NULL),(996,198,11,2,NULL),(997,58,56,2,NULL),(998,172,64,2,NULL),(999,234,11,2,NULL),(1000,62,56,2,NULL),(1001,209,64,2,NULL),(1002,243,11,2,NULL),(1003,65,56,2,NULL),(1004,262,64,2,NULL),(1005,252,11,2,NULL),(1006,69,56,2,NULL),(1007,275,64,2,NULL),(1008,254,11,2,NULL),(1009,73,56,2,NULL),(1010,260,11,2,NULL),(1011,277,64,2,NULL),(1012,240,56,2,NULL),(1013,281,64,2,NULL),(1014,80,47,2,NULL),(1015,263,56,2,NULL),(1016,284,64,2,NULL),(1017,158,47,2,NULL),(1018,270,56,2,NULL),(1019,288,64,2,NULL),(1020,162,47,2,NULL),(1021,283,56,2,NULL),(1022,136,66,2,NULL),(1023,165,47,2,NULL),(1024,286,56,2,NULL),(1025,140,66,2,NULL),(1026,290,56,2,NULL),(1027,170,47,2,NULL),(1028,156,66,2,NULL),(1029,57,58,2,NULL),(1030,173,47,2,NULL),(1031,168,66,2,NULL),(1032,58,58,2,NULL),(1033,198,47,2,NULL),(1034,172,66,2,NULL),(1035,62,58,2,NULL),(1036,209,66,2,NULL),(1037,234,47,2,NULL),(1038,65,58,2,NULL),(1039,243,47,2,NULL),(1040,262,66,2,NULL),(1041,69,58,2,NULL),(1042,275,66,2,NULL),(1043,252,47,2,NULL),(1044,73,58,2,NULL),(1045,277,66,2,NULL),(1046,254,47,2,NULL),(1047,240,58,2,NULL),(1048,281,66,2,NULL),(1049,260,47,2,NULL),(1050,263,58,2,NULL),(1051,80,50,2,NULL),(1052,284,66,2,NULL),(1053,270,58,2,NULL),(1054,158,50,2,NULL),(1055,288,66,2,NULL),(1056,283,58,2,NULL),(1057,136,10,2,NULL),(1058,162,50,2,NULL),(1059,286,58,2,NULL),(1060,140,10,2,NULL),(1061,165,50,2,NULL),(1062,290,58,2,NULL),(1063,156,10,2,NULL),(1064,170,50,2,NULL),(1065,57,61,2,NULL),(1066,168,10,2,NULL),(1067,173,50,2,NULL),(1068,58,61,2,NULL),(1069,172,10,2,NULL),(1070,198,50,2,NULL),(1071,62,61,2,NULL),(1072,209,10,2,NULL),(1073,234,50,2,NULL),(1074,65,61,2,NULL),(1075,262,10,2,NULL),(1076,243,50,2,NULL),(1077,69,61,2,NULL),(1078,252,50,2,NULL),(1079,275,10,2,NULL),(1080,73,61,2,NULL),(1081,277,10,2,NULL),(1082,254,50,2,NULL),(1083,240,61,2,NULL),(1084,281,10,2,NULL),(1085,260,50,2,NULL),(1086,263,61,2,NULL),(1087,284,10,2,NULL),(1088,80,64,2,NULL),(1089,270,61,2,NULL),(1090,288,10,2,NULL),(1091,158,64,2,NULL),(1092,283,61,2,NULL),(1093,20,15,2,NULL),(1094,162,64,2,NULL),(1095,286,61,2,NULL),(1096,68,15,2,NULL),(1097,165,64,2,NULL),(1098,290,61,2,NULL),(1099,77,15,2,NULL),(1100,170,64,2,NULL),(1101,57,86,2,NULL),(1102,93,15,2,NULL),(1103,173,64,2,NULL),(1104,58,86,2,NULL),(1105,198,64,2,NULL),(1106,103,15,2,NULL),(1107,62,86,2,NULL),(1108,108,15,2,NULL),(1109,234,64,2,NULL),(1110,65,86,2,NULL),(1111,243,64,2,NULL),(1112,148,15,2,NULL),(1113,69,86,2,NULL),(1114,252,64,2,NULL),(1115,184,15,2,NULL),(1116,73,86,2,NULL),(1117,186,15,2,NULL),(1118,254,64,2,NULL),(1119,240,86,2,NULL),(1120,260,64,2,NULL),(1121,191,15,2,NULL),(1122,263,86,2,NULL),(1123,194,15,2,NULL),(1124,80,66,2,NULL),(1125,270,86,2,NULL),(1126,158,66,2,NULL),(1127,197,15,2,NULL),(1128,283,86,2,NULL),(1129,162,66,2,NULL),(1130,226,15,2,NULL),(1131,286,86,2,NULL),(1132,136,14,2,NULL),(1133,165,66,2,NULL),(1134,290,86,2,NULL),(1135,170,66,2,NULL),(1136,140,14,2,NULL),(1137,130,26,2,NULL),(1138,173,66,2,NULL),(1139,156,14,2,NULL),(1140,57,38,2,NULL),(1141,198,66,2,NULL),(1142,168,14,2,NULL),(1143,58,38,2,NULL),(1144,234,66,2,NULL),(1145,172,14,2,NULL),(1146,62,38,2,NULL),(1147,243,66,2,NULL),(1148,209,14,2,NULL),(1149,65,38,2,NULL),(1150,252,66,2,NULL),(1151,262,14,2,NULL),(1152,69,38,2,NULL),(1153,254,66,2,NULL),(1154,275,14,2,NULL),(1155,73,38,2,NULL),(1156,277,14,2,NULL),(1157,260,66,2,NULL),(1158,240,38,2,NULL),(1159,281,14,2,NULL),(1160,80,10,2,NULL),(1161,263,38,2,NULL),(1162,158,10,2,NULL),(1163,284,14,2,NULL),(1164,270,38,2,NULL),(1165,162,10,2,NULL),(1166,288,14,2,NULL),(1167,283,38,2,NULL),(1168,165,10,2,NULL),(1169,136,16,2,NULL),(1170,286,38,2,NULL),(1171,140,16,2,NULL),(1172,170,10,2,NULL),(1173,290,38,2,NULL),(1174,156,16,2,NULL),(1175,173,10,2,NULL),(1176,57,42,2,NULL),(1177,168,16,2,NULL),(1178,198,10,2,NULL),(1179,58,42,2,NULL),(1180,172,16,2,NULL),(1181,234,10,2,NULL),(1182,62,42,2,NULL),(1183,243,10,2,NULL),(1184,209,16,2,NULL),(1185,65,42,2,NULL),(1186,262,16,2,NULL),(1187,252,10,2,NULL),(1188,69,42,2,NULL),(1189,254,10,2,NULL),(1190,275,16,2,NULL),(1191,73,42,2,NULL),(1192,277,16,2,NULL),(1193,260,10,2,NULL),(1194,240,42,2,NULL),(1195,20,25,2,NULL),(1196,281,16,2,NULL),(1197,263,42,2,NULL),(1198,284,16,2,NULL),(1199,68,25,2,NULL),(1200,270,42,2,NULL),(1201,288,16,2,NULL),(1202,77,25,2,NULL),(1203,283,42,2,NULL),(1204,136,17,2,NULL),(1205,93,25,2,NULL),(1206,286,42,2,NULL),(1207,103,25,2,NULL),(1208,140,17,2,NULL),(1209,290,42,2,NULL),(1210,156,17,2,NULL),(1211,108,25,2,NULL),(1212,57,45,2,NULL),(1213,168,17,2,NULL),(1214,148,25,2,NULL),(1215,58,45,2,NULL),(1216,172,17,2,NULL),(1217,184,25,2,NULL),(1218,62,45,2,NULL),(1219,186,25,2,NULL),(1220,209,17,2,NULL),(1221,65,45,2,NULL),(1222,262,17,2,NULL),(1223,191,25,2,NULL),(1224,69,45,2,NULL),(1225,275,17,2,NULL),(1226,194,25,2,NULL),(1227,73,45,2,NULL),(1228,197,25,2,NULL),(1229,277,17,2,NULL),(1230,240,45,2,NULL),(1231,281,17,2,NULL),(1232,226,25,2,NULL),(1233,263,45,2,NULL),(1234,80,14,2,NULL),(1235,284,17,2,NULL),(1236,270,45,2,NULL),(1237,288,17,2,NULL),(1238,158,14,2,NULL),(1239,283,45,2,NULL),(1240,162,14,2,NULL),(1241,136,51,2,NULL),(1242,286,45,2,NULL),(1243,140,51,2,NULL),(1244,165,14,2,NULL),(1245,290,45,2,NULL),(1246,156,51,2,NULL),(1247,170,14,2,NULL),(1248,57,73,2,NULL),(1249,168,51,2,NULL),(1250,173,14,2,NULL),(1251,58,73,2,NULL),(1252,172,51,2,NULL),(1253,198,14,2,NULL),(1254,62,73,2,NULL),(1255,209,51,2,NULL),(1256,234,14,2,NULL),(1257,65,73,2,NULL),(1258,262,51,2,NULL),(1259,243,14,2,NULL),(1260,69,73,2,NULL),(1261,275,51,2,NULL),(1262,252,14,2,NULL),(1263,73,73,2,NULL),(1264,277,51,2,NULL),(1265,254,14,2,NULL),(1266,240,73,2,NULL),(1267,281,51,2,NULL),(1268,260,14,2,NULL),(1269,263,73,2,NULL),(1270,284,51,2,NULL),(1271,80,16,2,NULL),(1272,270,73,2,NULL),(1273,288,51,2,NULL),(1274,158,16,2,NULL),(1275,283,73,2,NULL),(1276,136,52,2,NULL),(1277,162,16,2,NULL),(1278,286,73,2,NULL),(1279,165,16,2,NULL),(1280,140,52,2,NULL),(1281,290,73,2,NULL),(1282,156,52,2,NULL),(1283,170,16,2,NULL),(1284,57,81,2,NULL),(1285,168,52,2,NULL),(1286,173,16,2,NULL),(1287,58,81,2,NULL),(1288,172,52,2,NULL),(1289,198,16,2,NULL),(1290,62,81,2,NULL),(1291,234,16,2,NULL),(1292,209,52,2,NULL),(1293,65,81,2,NULL),(1294,262,52,2,NULL),(1295,243,16,2,NULL),(1296,69,81,2,NULL),(1297,252,16,2,NULL),(1298,275,52,2,NULL),(1299,73,81,2,NULL),(1300,277,52,2,NULL),(1301,254,16,2,NULL),(1302,240,81,2,NULL),(1303,260,16,2,NULL),(1304,281,52,2,NULL),(1305,263,81,2,NULL),(1306,284,52,2,NULL),(1307,80,17,2,NULL),(1308,270,81,2,NULL),(1309,288,52,2,NULL),(1310,158,17,2,NULL),(1311,283,81,2,NULL),(1312,136,65,2,NULL),(1313,162,17,2,NULL),(1314,286,81,2,NULL),(1315,140,65,2,NULL),(1316,165,17,2,NULL),(1317,290,81,2,NULL),(1318,156,65,2,NULL),(1319,170,17,2,NULL),(1320,57,82,2,NULL),(1321,168,65,2,NULL),(1322,173,17,2,NULL),(1323,58,82,2,NULL),(1324,172,65,2,NULL),(1325,198,17,2,NULL),(1326,62,82,2,NULL),(1327,209,65,2,NULL),(1328,234,17,2,NULL),(1329,65,82,2,NULL),(1330,262,65,2,NULL),(1331,243,17,2,NULL),(1332,69,82,2,NULL),(1333,275,65,2,NULL),(1334,252,17,2,NULL),(1335,73,82,2,NULL),(1336,277,65,2,NULL),(1337,254,17,2,NULL),(1338,240,82,2,NULL),(1339,281,65,2,NULL),(1340,260,17,2,NULL),(1341,263,82,2,NULL),(1342,284,65,2,NULL),(1343,80,51,2,NULL),(1344,270,82,2,NULL),(1345,288,65,2,NULL),(1346,158,51,2,NULL),(1347,283,82,2,NULL),(1348,136,74,2,NULL),(1349,162,51,2,NULL),(1350,286,82,2,NULL),(1351,140,74,2,NULL),(1352,165,51,2,NULL),(1353,290,82,2,NULL),(1354,156,74,2,NULL),(1355,170,51,2,NULL),(1356,57,83,2,NULL),(1357,168,74,2,NULL),(1358,173,51,2,NULL),(1359,58,83,2,NULL),(1360,198,51,2,NULL),(1361,172,74,2,NULL),(1362,62,83,2,NULL),(1363,209,74,2,NULL),(1364,234,51,2,NULL),(1365,65,83,2,NULL),(1366,262,74,2,NULL),(1367,243,51,2,NULL),(1368,69,83,2,NULL),(1369,275,74,2,NULL),(1370,252,51,2,NULL),(1371,73,83,2,NULL),(1372,254,51,2,NULL),(1373,277,74,2,NULL),(1374,240,83,2,NULL),(1375,281,74,2,NULL),(1376,260,51,2,NULL),(1377,263,83,2,NULL),(1378,284,74,2,NULL),(1379,80,52,2,NULL),(1380,270,83,2,NULL),(1381,288,74,2,NULL),(1382,158,52,2,NULL),(1383,283,83,2,NULL),(1384,52,15,2,NULL),(1385,162,52,2,NULL),(1386,286,83,2,NULL),(1387,136,21,2,NULL),(1388,165,52,2,NULL),(1389,290,83,2,NULL),(1390,170,52,2,NULL),(1391,140,21,2,NULL),(1392,57,85,2,NULL),(1393,173,52,2,NULL),(1394,156,21,2,NULL),(1395,58,85,2,NULL),(1396,198,52,2,NULL),(1397,168,21,2,NULL),(1398,62,85,2,NULL),(1399,172,21,2,NULL),(1400,234,52,2,NULL),(1401,65,85,2,NULL),(1402,243,52,2,NULL),(1403,209,21,2,NULL),(1404,69,85,2,NULL),(1405,252,52,2,NULL),(1406,262,21,2,NULL),(1407,73,85,2,NULL),(1408,254,52,2,NULL),(1409,275,21,2,NULL),(1410,240,85,2,NULL),(1411,260,52,2,NULL),(1412,277,21,2,NULL),(1413,263,85,2,NULL),(1414,80,65,2,NULL),(1415,281,21,2,NULL),(1416,270,85,2,NULL),(1417,284,21,2,NULL),(1418,158,65,2,NULL),(1419,283,85,2,NULL),(1420,162,65,2,NULL),(1421,288,21,2,NULL),(1422,286,85,2,NULL),(1423,136,22,2,NULL),(1424,165,65,2,NULL),(1425,290,85,2,NULL),(1426,140,22,2,NULL),(1427,170,65,2,NULL),(1428,57,28,2,NULL),(1429,156,22,2,NULL),(1430,173,65,2,NULL),(1431,58,28,2,NULL),(1432,168,22,2,NULL),(1433,198,65,2,NULL),(1434,62,28,2,NULL),(1435,172,22,2,NULL),(1436,234,65,2,NULL),(1437,65,28,2,NULL),(1438,209,22,2,NULL),(1439,243,65,2,NULL),(1440,69,28,2,NULL),(1441,262,22,2,NULL),(1442,252,65,2,NULL),(1443,73,28,2,NULL),(1444,275,22,2,NULL),(1445,254,65,2,NULL),(1446,240,28,2,NULL),(1447,277,22,2,NULL),(1448,260,65,2,NULL),(1449,263,28,2,NULL),(1450,80,74,2,NULL),(1451,281,22,2,NULL),(1452,270,28,2,NULL),(1453,284,22,2,NULL),(1454,158,74,2,NULL),(1455,283,28,2,NULL),(1456,288,22,2,NULL),(1457,162,74,2,NULL),(1458,286,28,2,NULL),(1459,136,23,2,NULL),(1460,165,74,2,NULL),(1461,290,28,2,NULL),(1462,140,23,2,NULL),(1463,170,74,2,NULL),(1464,133,26,2,NULL),(1465,173,74,2,NULL),(1466,156,23,2,NULL),(1467,137,26,2,NULL),(1468,198,74,2,NULL),(1469,168,23,2,NULL),(1470,146,26,2,NULL),(1471,172,23,2,NULL),(1472,234,74,2,NULL),(1473,151,26,2,NULL),(1474,209,23,2,NULL),(1475,243,74,2,NULL),(1476,155,26,2,NULL),(1477,262,23,2,NULL),(1478,252,74,2,NULL),(1479,178,26,2,NULL),(1480,275,23,2,NULL),(1481,254,74,2,NULL),(1482,200,26,2,NULL),(1483,277,23,2,NULL),(1484,260,74,2,NULL),(1485,269,26,2,NULL),(1486,281,23,2,NULL),(1487,80,15,2,NULL),(1488,272,26,2,NULL),(1489,284,23,2,NULL),(1490,158,15,2,NULL),(1491,276,26,2,NULL),(1492,288,23,2,NULL),(1493,162,15,2,NULL),(1494,279,26,2,NULL),(1495,165,15,2,NULL),(1496,282,26,2,NULL),(1497,136,53,2,NULL),(1498,170,15,2,NULL),(1499,301,26,2,NULL),(1500,140,53,2,NULL),(1501,173,15,2,NULL),(1502,57,40,2,NULL),(1503,156,53,2,NULL),(1504,198,15,2,NULL),(1505,58,40,2,NULL),(1506,168,53,2,NULL),(1507,234,15,2,NULL),(1508,62,40,2,NULL),(1509,172,53,2,NULL),(1510,243,15,2,NULL),(1511,65,40,2,NULL),(1512,209,53,2,NULL),(1513,252,15,2,NULL),(1514,262,53,2,NULL),(1515,69,40,2,NULL),(1516,254,15,2,NULL),(1517,275,53,2,NULL),(1518,73,40,2,NULL),(1519,260,15,2,NULL),(1520,277,53,2,NULL),(1521,240,40,2,NULL),(1522,136,25,2,NULL),(1523,263,40,2,NULL),(1524,281,53,2,NULL),(1525,140,25,2,NULL),(1526,270,40,2,NULL),(1527,284,53,2,NULL),(1528,156,25,2,NULL),(1529,288,53,2,NULL),(1530,283,40,2,NULL),(1531,168,25,2,NULL),(1532,286,40,2,NULL),(1533,136,59,2,NULL),(1534,172,25,2,NULL),(1535,290,40,2,NULL),(1536,140,59,2,NULL),(1537,209,25,2,NULL),(1538,156,59,2,NULL),(1539,57,44,2,NULL),(1540,262,25,2,NULL),(1541,58,44,2,NULL),(1542,168,59,2,NULL),(1543,275,25,2,NULL),(1544,62,44,2,NULL),(1545,172,59,2,NULL),(1546,277,25,2,NULL),(1547,65,44,2,NULL),(1548,209,59,2,NULL),(1549,281,25,2,NULL),(1550,69,44,2,NULL),(1551,262,59,2,NULL),(1552,284,25,2,NULL),(1553,275,59,2,NULL),(1554,73,44,2,NULL),(1555,288,25,2,NULL),(1556,240,44,2,NULL),(1557,277,59,2,NULL),(1558,52,25,2,NULL),(1559,263,44,2,NULL),(1560,281,59,2,NULL),(1561,80,21,2,NULL),(1562,270,44,2,NULL),(1563,284,59,2,NULL),(1564,158,21,2,NULL),(1565,283,44,2,NULL),(1566,288,59,2,NULL),(1567,162,21,2,NULL),(1568,286,44,2,NULL),(1569,136,63,2,NULL),(1570,165,21,2,NULL),(1571,290,44,2,NULL),(1572,140,63,2,NULL),(1573,170,21,2,NULL),(1574,57,46,2,NULL),(1575,156,63,2,NULL),(1576,173,21,2,NULL),(1577,58,46,2,NULL),(1578,168,63,2,NULL),(1579,198,21,2,NULL),(1580,62,46,2,NULL),(1581,172,63,2,NULL),(1582,234,21,2,NULL),(1583,65,46,2,NULL),(1584,209,63,2,NULL),(1585,243,21,2,NULL),(1586,69,46,2,NULL),(1587,262,63,2,NULL),(1588,252,21,2,NULL),(1589,73,46,2,NULL),(1590,275,63,2,NULL),(1591,254,21,2,NULL),(1592,240,46,2,NULL),(1593,277,63,2,NULL),(1594,260,21,2,NULL),(1595,263,46,2,NULL),(1596,281,63,2,NULL),(1597,80,22,2,NULL),(1598,270,46,2,NULL),(1599,284,63,2,NULL),(1600,158,22,2,NULL),(1601,283,46,2,NULL),(1602,288,63,2,NULL),(1603,162,22,2,NULL),(1604,286,46,2,NULL),(1605,136,71,2,NULL),(1606,165,22,2,NULL),(1607,290,46,2,NULL),(1608,140,71,2,NULL),(1609,170,22,2,NULL),(1610,57,55,2,NULL),(1611,156,71,2,NULL),(1612,173,22,2,NULL),(1613,58,55,2,NULL),(1614,168,71,2,NULL),(1615,198,22,2,NULL),(1616,62,55,2,NULL),(1617,172,71,2,NULL),(1618,234,22,2,NULL),(1619,123,8,2,NULL),(1620,65,55,2,NULL),(1621,209,71,2,NULL),(1622,243,22,2,NULL),(1623,69,55,2,NULL),(1624,262,71,2,NULL),(1625,123,14,2,NULL),(1626,252,22,2,NULL),(1627,73,55,2,NULL),(1628,275,71,2,NULL),(1629,123,21,2,NULL),(1630,254,22,2,NULL),(1631,240,55,2,NULL),(1632,277,71,2,NULL),(1633,260,22,2,NULL),(1634,123,36,2,NULL),(1635,263,55,2,NULL),(1636,281,71,2,NULL),(1637,80,23,2,NULL),(1638,270,55,2,NULL),(1639,284,71,2,NULL),(1640,123,38,2,NULL),(1641,158,23,2,NULL),(1642,283,55,2,NULL),(1643,288,71,2,NULL),(1644,123,40,2,NULL),(1645,162,23,2,NULL),(1646,286,55,2,NULL),(1647,136,78,2,NULL),(1648,128,8,2,NULL),(1649,165,23,2,NULL),(1650,290,55,2,NULL),(1651,140,78,2,NULL),(1652,128,14,2,NULL),(1653,170,23,2,NULL),(1654,57,62,2,NULL),(1655,156,78,2,NULL),(1656,173,23,2,NULL),(1657,128,21,2,NULL),(1658,58,62,2,NULL),(1659,168,78,2,NULL),(1660,198,23,2,NULL),(1661,62,62,2,NULL),(1662,172,78,2,NULL),(1663,128,36,2,NULL),(1664,234,23,2,NULL),(1665,65,62,2,NULL),(1666,209,78,2,NULL),(1667,243,23,2,NULL),(1668,128,38,2,NULL),(1669,69,62,2,NULL),(1670,262,78,2,NULL),(1671,252,23,2,NULL),(1672,73,62,2,NULL),(1673,275,78,2,NULL),(1674,128,40,2,NULL),(1675,254,23,2,NULL),(1676,240,62,2,NULL),(1677,277,78,2,NULL),(1678,260,23,2,NULL),(1679,141,8,2,NULL),(1680,263,62,2,NULL),(1681,281,78,2,NULL),(1682,80,53,2,NULL),(1683,141,14,2,NULL),(1684,270,62,2,NULL),(1685,284,78,2,NULL),(1686,158,53,2,NULL),(1687,283,62,2,NULL),(1688,288,78,2,NULL),(1689,141,21,2,NULL),(1690,162,53,2,NULL),(1691,286,62,2,NULL),(1692,165,53,2,NULL),(1693,302,15,2,NULL),(1694,141,36,2,NULL),(1695,290,62,2,NULL),(1696,170,53,2,NULL),(1697,136,36,2,NULL),(1698,57,72,2,NULL),(1699,141,38,2,NULL),(1700,173,53,2,NULL),(1701,140,36,2,NULL),(1702,58,72,2,NULL),(1703,198,53,2,NULL),(1704,156,36,2,NULL),(1705,141,40,2,NULL),(1706,62,72,2,NULL),(1707,234,53,2,NULL),(1708,168,36,2,NULL),(1709,65,72,2,NULL),(1710,160,8,2,NULL),(1711,243,53,2,NULL),(1712,172,36,2,NULL),(1713,69,72,2,NULL),(1714,209,36,2,NULL),(1715,252,53,2,NULL),(1716,160,14,2,NULL),(1717,73,72,2,NULL),(1718,254,53,2,NULL),(1719,262,36,2,NULL),(1720,240,72,2,NULL),(1721,160,21,2,NULL),(1722,260,53,2,NULL),(1723,275,36,2,NULL),(1724,263,72,2,NULL),(1725,80,59,2,NULL),(1726,277,36,2,NULL),(1727,160,36,2,NULL),(1728,270,72,2,NULL),(1729,158,59,2,NULL),(1730,281,36,2,NULL),(1731,283,72,2,NULL),(1732,160,38,2,NULL),(1733,162,59,2,NULL),(1734,284,36,2,NULL),(1735,286,72,2,NULL),(1736,165,59,2,NULL),(1737,288,36,2,NULL),(1738,160,40,2,NULL),(1739,290,72,2,NULL),(1740,170,59,2,NULL),(1741,136,41,2,NULL),(1742,166,8,2,NULL),(1743,57,75,2,NULL),(1744,173,59,2,NULL),(1745,140,41,2,NULL),(1746,58,75,2,NULL),(1747,166,14,2,NULL),(1748,156,41,2,NULL),(1749,198,59,2,NULL),(1750,62,75,2,NULL),(1751,168,41,2,NULL),(1752,234,59,2,NULL),(1753,166,21,2,NULL),(1754,65,75,2,NULL),(1755,243,59,2,NULL),(1756,172,41,2,NULL),(1757,166,36,2,NULL),(1758,69,75,2,NULL),(1759,209,41,2,NULL),(1760,252,59,2,NULL),(1761,166,38,2,NULL),(1762,73,75,2,NULL),(1763,262,41,2,NULL),(1764,254,59,2,NULL),(1765,166,40,2,NULL),(1766,240,75,2,NULL),(1767,260,59,2,NULL),(1768,275,41,2,NULL),(1769,222,7,2,NULL),(1770,263,75,2,NULL),(1771,80,63,2,NULL),(1772,277,41,2,NULL),(1773,222,13,2,NULL),(1774,270,75,2,NULL),(1775,158,63,2,NULL),(1776,281,41,2,NULL),(1777,222,19,2,NULL),(1778,283,75,2,NULL),(1779,162,63,2,NULL),(1780,284,41,2,NULL),(1781,222,29,2,NULL),(1782,286,75,2,NULL),(1783,165,63,2,NULL),(1784,288,41,2,NULL),(1785,222,33,2,NULL),(1786,290,75,2,NULL),(1787,170,63,2,NULL),(1788,136,43,2,NULL),(1789,222,37,2,NULL),(1790,57,80,2,NULL),(1791,173,63,2,NULL),(1792,140,43,2,NULL),(1793,298,7,2,NULL),(1794,58,80,2,NULL),(1795,198,63,2,NULL),(1796,156,43,2,NULL),(1797,298,13,2,NULL),(1798,62,80,2,NULL),(1799,168,43,2,NULL),(1800,234,63,2,NULL),(1801,298,19,2,NULL),(1802,65,80,2,NULL),(1803,172,43,2,NULL),(1804,243,63,2,NULL),(1805,298,29,2,NULL),(1806,69,80,2,NULL),(1807,209,43,2,NULL),(1808,252,63,2,NULL),(1809,73,80,2,NULL),(1810,298,33,2,NULL),(1811,254,63,2,NULL),(1812,240,80,2,NULL),(1813,298,37,2,NULL),(1814,260,63,2,NULL),(1815,263,80,2,NULL),(1816,262,43,2,NULL),(1817,80,71,2,NULL),(1818,270,80,2,NULL),(1819,275,43,2,NULL),(1820,133,5,2,NULL),(1821,158,71,2,NULL),(1822,283,80,2,NULL),(1823,277,43,2,NULL),(1824,162,71,2,NULL),(1825,137,5,2,NULL),(1826,286,80,2,NULL),(1827,281,43,2,NULL),(1828,165,71,2,NULL),(1829,146,5,2,NULL),(1830,290,80,2,NULL),(1831,284,43,2,NULL),(1832,170,71,2,NULL),(1833,151,5,2,NULL),(1834,288,43,2,NULL),(1835,130,5,2,NULL),(1836,173,71,2,NULL),(1837,155,5,2,NULL),(1838,130,8,2,NULL),(1839,136,54,2,NULL),(1840,198,71,2,NULL),(1841,178,5,2,NULL),(1842,140,54,2,NULL),(1843,130,9,2,NULL),(1844,234,71,2,NULL),(1845,200,5,2,NULL),(1846,130,11,2,NULL),(1847,156,54,2,NULL),(1848,243,71,2,NULL),(1849,269,5,2,NULL),(1850,130,47,2,NULL),(1851,168,54,2,NULL),(1852,252,71,2,NULL),(1853,272,5,2,NULL),(1854,130,50,2,NULL),(1855,172,54,2,NULL),(1856,254,71,2,NULL),(1857,276,5,2,NULL),(1858,130,64,2,NULL),(1859,209,54,2,NULL),(1860,260,71,2,NULL),(1861,279,5,2,NULL),(1862,130,66,2,NULL),(1863,262,54,2,NULL),(1864,80,78,2,NULL),(1865,282,5,2,NULL),(1866,130,10,2,NULL),(1867,275,54,2,NULL),(1868,158,78,2,NULL),(1869,11,28,2,NULL),(1870,130,14,2,NULL),(1871,277,54,2,NULL),(1872,162,78,2,NULL),(1873,23,28,2,NULL),(1874,130,16,2,NULL),(1875,281,54,2,NULL),(1876,165,78,2,NULL),(1877,27,28,2,NULL),(1878,130,17,2,NULL),(1879,284,54,2,NULL),(1880,170,78,2,NULL),(1881,28,28,2,NULL),(1882,130,51,2,NULL),(1883,288,54,2,NULL),(1884,173,78,2,NULL),(1885,30,28,2,NULL),(1886,130,52,2,NULL),(1887,136,56,2,NULL),(1888,198,78,2,NULL),(1889,31,28,2,NULL),(1890,130,65,2,NULL),(1891,140,56,2,NULL),(1892,234,78,2,NULL),(1893,89,28,2,NULL),(1894,130,74,2,NULL),(1895,156,56,2,NULL),(1896,243,78,2,NULL),(1897,94,28,2,NULL),(1898,130,15,2,NULL),(1899,168,56,2,NULL),(1900,252,78,2,NULL),(1901,97,28,2,NULL),(1902,130,21,2,NULL),(1903,172,56,2,NULL),(1904,254,78,2,NULL),(1905,101,28,2,NULL),(1906,209,56,2,NULL),(1907,130,22,2,NULL),(1908,260,78,2,NULL),(1909,104,28,2,NULL),(1910,130,23,2,NULL),(1911,262,56,2,NULL),(1912,302,25,2,NULL),(1913,110,28,2,NULL),(1914,130,53,2,NULL),(1915,275,56,2,NULL),(1916,80,36,2,NULL),(1917,3,28,2,NULL),(1918,130,59,2,NULL),(1919,277,56,2,NULL),(1920,133,8,2,NULL),(1921,158,36,2,NULL),(1922,130,63,2,NULL),(1923,281,56,2,NULL),(1924,162,36,2,NULL),(1925,137,8,2,NULL),(1926,130,71,2,NULL),(1927,284,56,2,NULL),(1928,165,36,2,NULL),(1929,146,8,2,NULL),(1930,130,78,2,NULL),(1931,288,56,2,NULL),(1932,170,36,2,NULL),(1933,151,8,2,NULL),(1934,130,25,2,NULL),(1935,136,58,2,NULL),(1936,173,36,2,NULL),(1937,155,8,2,NULL),(1938,130,36,2,NULL),(1939,140,58,2,NULL),(1940,198,36,2,NULL),(1941,178,8,2,NULL),(1942,130,41,2,NULL),(1943,156,58,2,NULL),(1944,234,36,2,NULL),(1945,200,8,2,NULL),(1946,130,43,2,NULL),(1947,168,58,2,NULL),(1948,243,36,2,NULL),(1949,269,8,2,NULL),(1950,130,54,2,NULL),(1951,172,58,2,NULL),(1952,252,36,2,NULL),(1953,272,8,2,NULL),(1954,130,56,2,NULL),(1955,209,58,2,NULL),(1956,254,36,2,NULL),(1957,276,8,2,NULL),(1958,130,58,2,NULL),(1959,262,58,2,NULL),(1960,260,36,2,NULL),(1961,279,8,2,NULL),(1962,130,61,2,NULL),(1963,275,58,2,NULL),(1964,80,41,2,NULL),(1965,282,8,2,NULL),(1966,130,86,2,NULL),(1967,277,58,2,NULL),(1968,158,41,2,NULL),(1969,133,9,2,NULL),(1970,130,38,2,NULL),(1971,281,58,2,NULL),(1972,162,41,2,NULL),(1973,137,9,2,NULL),(1974,130,42,2,NULL),(1975,284,58,2,NULL),(1976,165,41,2,NULL),(1977,146,9,2,NULL),(1978,130,45,2,NULL),(1979,288,58,2,NULL),(1980,170,41,2,NULL),(1981,151,9,2,NULL),(1982,130,73,2,NULL),(1983,136,61,2,NULL),(1984,173,41,2,NULL),(1985,155,9,2,NULL),(1986,130,81,2,NULL),(1987,140,61,2,NULL),(1988,178,9,2,NULL),(1989,130,82,2,NULL),(1990,156,61,2,NULL),(1991,200,9,2,NULL),(1992,130,83,2,NULL),(1993,168,61,2,NULL),(1994,198,41,2,NULL),(1995,269,9,2,NULL),(1996,130,85,2,NULL),(1997,172,61,2,NULL),(1998,234,41,2,NULL),(1999,272,9,2,NULL),(2000,130,28,2,NULL),(2001,209,61,2,NULL),(2002,243,41,2,NULL),(2003,130,40,2,NULL),(2004,262,61,2,NULL),(2005,276,9,2,NULL),(2006,252,41,2,NULL),(2007,275,61,2,NULL),(2008,130,44,2,NULL),(2009,279,9,2,NULL),(2010,254,41,2,NULL),(2011,130,46,2,NULL),(2012,277,61,2,NULL),(2013,282,9,2,NULL),(2014,260,41,2,NULL),(2015,133,11,2,NULL),(2016,130,55,2,NULL),(2017,281,61,2,NULL),(2018,80,43,2,NULL),(2019,137,11,2,NULL),(2020,130,62,2,NULL),(2021,284,61,2,NULL),(2022,158,43,2,NULL),(2023,130,72,2,NULL),(2024,162,43,2,NULL),(2025,288,61,2,NULL),(2026,146,11,2,NULL),(2027,130,75,2,NULL),(2028,165,43,2,NULL),(2029,136,86,2,NULL),(2030,151,11,2,NULL),(2031,130,80,2,NULL),(2032,140,86,2,NULL),(2033,170,43,2,NULL),(2034,155,11,2,NULL),(2035,11,38,2,NULL),(2036,156,86,2,NULL),(2037,173,43,2,NULL),(2038,178,11,2,NULL),(2039,23,38,2,NULL),(2040,168,86,2,NULL),(2041,198,43,2,NULL),(2042,200,11,2,NULL),(2043,27,38,2,NULL),(2044,172,86,2,NULL),(2045,234,43,2,NULL),(2046,269,11,2,NULL),(2047,28,38,2,NULL),(2048,209,86,2,NULL),(2049,243,43,2,NULL),(2050,272,11,2,NULL),(2051,30,38,2,NULL),(2052,262,86,2,NULL),(2053,252,43,2,NULL),(2054,276,11,2,NULL),(2055,31,38,2,NULL),(2056,275,86,2,NULL),(2057,254,43,2,NULL),(2058,279,11,2,NULL),(2059,89,38,2,NULL),(2060,277,86,2,NULL),(2061,260,43,2,NULL),(2062,282,11,2,NULL),(2063,94,38,2,NULL),(2064,80,54,2,NULL),(2065,281,86,2,NULL),(2066,133,47,2,NULL),(2067,97,38,2,NULL),(2068,158,54,2,NULL),(2069,284,86,2,NULL),(2070,137,47,2,NULL),(2071,101,38,2,NULL),(2072,288,86,2,NULL),(2073,162,54,2,NULL),(2074,146,47,2,NULL),(2075,104,38,2,NULL),(2076,165,54,2,NULL),(2077,151,47,2,NULL),(2078,110,38,2,NULL),(2079,136,38,2,NULL),(2080,170,54,2,NULL),(2081,155,47,2,NULL),(2082,3,38,2,NULL),(2083,173,54,2,NULL),(2084,178,47,2,NULL),(2085,140,38,2,NULL),(2086,20,38,2,NULL),(2087,198,54,2,NULL),(2088,156,38,2,NULL),(2089,200,47,2,NULL),(2090,68,38,2,NULL),(2091,234,54,2,NULL),(2092,168,38,2,NULL),(2093,269,47,2,NULL),(2094,77,38,2,NULL),(2095,243,54,2,NULL),(2096,272,47,2,NULL),(2097,172,38,2,NULL),(2098,93,38,2,NULL),(2099,252,54,2,NULL),(2100,209,38,2,NULL),(2101,276,47,2,NULL),(2102,103,38,2,NULL),(2103,254,54,2,NULL),(2104,279,47,2,NULL),(2105,262,38,2,NULL),(2106,108,38,2,NULL),(2107,260,54,2,NULL),(2108,282,47,2,NULL),(2109,275,38,2,NULL),(2110,148,38,2,NULL),(2111,80,56,2,NULL),(2112,277,38,2,NULL),(2113,133,50,2,NULL),(2114,184,38,2,NULL),(2115,158,56,2,NULL),(2116,281,38,2,NULL),(2117,137,50,2,NULL),(2118,186,38,2,NULL),(2119,162,56,2,NULL),(2120,284,38,2,NULL),(2121,146,50,2,NULL),(2122,191,38,2,NULL),(2123,165,56,2,NULL),(2124,288,38,2,NULL),(2125,151,50,2,NULL),(2126,194,38,2,NULL),(2127,170,56,2,NULL),(2128,136,42,2,NULL),(2129,155,50,2,NULL),(2130,197,38,2,NULL),(2131,140,42,2,NULL),(2132,173,56,2,NULL),(2133,178,50,2,NULL),(2134,226,38,2,NULL),(2135,156,42,2,NULL),(2136,198,56,2,NULL),(2137,200,50,2,NULL),(2138,52,38,2,NULL),(2139,168,42,2,NULL),(2140,234,56,2,NULL),(2141,269,50,2,NULL),(2142,80,38,2,NULL),(2143,172,42,2,NULL),(2144,243,56,2,NULL),(2145,272,50,2,NULL),(2146,158,38,2,NULL),(2147,209,42,2,NULL),(2148,252,56,2,NULL),(2149,276,50,2,NULL),(2150,162,38,2,NULL),(2151,262,42,2,NULL),(2152,254,56,2,NULL),(2153,279,50,2,NULL),(2154,165,38,2,NULL),(2155,260,56,2,NULL),(2156,275,42,2,NULL),(2157,282,50,2,NULL),(2158,170,38,2,NULL),(2159,277,42,2,NULL),(2160,80,58,2,NULL),(2161,133,64,2,NULL),(2162,173,38,2,NULL),(2163,281,42,2,NULL),(2164,158,58,2,NULL),(2165,137,64,2,NULL),(2166,198,38,2,NULL),(2167,284,42,2,NULL),(2168,162,58,2,NULL),(2169,146,64,2,NULL),(2170,234,38,2,NULL),(2171,288,42,2,NULL),(2172,165,58,2,NULL),(2173,151,64,2,NULL),(2174,243,38,2,NULL),(2175,136,45,2,NULL),(2176,170,58,2,NULL),(2177,155,64,2,NULL),(2178,252,38,2,NULL),(2179,140,45,2,NULL),(2180,173,58,2,NULL),(2181,178,64,2,NULL),(2182,254,38,2,NULL),(2183,156,45,2,NULL),(2184,198,58,2,NULL),(2185,200,64,2,NULL),(2186,260,38,2,NULL),(2187,168,45,2,NULL),(2188,234,58,2,NULL),(2189,269,64,2,NULL),(2190,302,38,2,NULL),(2191,172,45,2,NULL),(2192,243,58,2,NULL),(2193,272,64,2,NULL),(2194,209,45,2,NULL),(2195,252,58,2,NULL),(2196,276,64,2,NULL),(2197,133,38,2,NULL),(2198,262,45,2,NULL),(2199,137,38,2,NULL),(2200,254,58,2,NULL),(2201,279,64,2,NULL),(2202,275,45,2,NULL),(2203,260,58,2,NULL),(2204,146,38,2,NULL),(2205,282,64,2,NULL),(2206,277,45,2,NULL),(2207,151,38,2,NULL),(2208,80,61,2,NULL),(2209,133,66,2,NULL),(2210,281,45,2,NULL),(2211,158,61,2,NULL),(2212,155,38,2,NULL),(2213,137,66,2,NULL),(2214,284,45,2,NULL),(2215,162,61,2,NULL),(2216,178,38,2,NULL),(2217,146,66,2,NULL),(2218,288,45,2,NULL),(2219,151,66,2,NULL),(2220,200,38,2,NULL),(2221,165,61,2,NULL),(2222,136,73,2,NULL),(2223,170,61,2,NULL),(2224,269,38,2,NULL),(2225,155,66,2,NULL),(2226,140,73,2,NULL),(2227,173,61,2,NULL),(2228,272,38,2,NULL),(2229,178,66,2,NULL),(2230,156,73,2,NULL),(2231,276,38,2,NULL),(2232,198,61,2,NULL),(2233,200,66,2,NULL),(2234,168,73,2,NULL),(2235,234,61,2,NULL),(2236,279,38,2,NULL),(2237,269,66,2,NULL),(2238,172,73,2,NULL),(2239,282,38,2,NULL),(2240,243,61,2,NULL),(2241,272,66,2,NULL),(2242,209,73,2,NULL),(2243,252,61,2,NULL),(2244,301,38,2,NULL),(2245,276,66,2,NULL),(2246,262,73,2,NULL),(2247,254,61,2,NULL),(2248,11,42,2,NULL),(2249,279,66,2,NULL),(2250,275,73,2,NULL),(2251,23,42,2,NULL),(2252,260,61,2,NULL),(2253,282,66,2,NULL),(2254,277,73,2,NULL),(2255,27,42,2,NULL),(2256,80,86,2,NULL),(2257,133,10,2,NULL),(2258,281,73,2,NULL),(2259,28,42,2,NULL),(2260,158,86,2,NULL),(2261,137,10,2,NULL),(2262,284,73,2,NULL),(2263,30,42,2,NULL),(2264,162,86,2,NULL),(2265,146,10,2,NULL),(2266,288,73,2,NULL),(2267,31,42,2,NULL),(2268,165,86,2,NULL),(2269,151,10,2,NULL),(2270,136,81,2,NULL),(2271,89,42,2,NULL),(2272,170,86,2,NULL),(2273,155,10,2,NULL),(2274,140,81,2,NULL),(2275,94,42,2,NULL),(2276,173,86,2,NULL),(2277,178,10,2,NULL),(2278,156,81,2,NULL),(2279,97,42,2,NULL),(2280,198,86,2,NULL),(2281,200,10,2,NULL),(2282,168,81,2,NULL),(2283,101,42,2,NULL),(2284,234,86,2,NULL),(2285,269,10,2,NULL),(2286,172,81,2,NULL),(2287,243,86,2,NULL),(2288,104,42,2,NULL),(2289,272,10,2,NULL),(2290,209,81,2,NULL),(2291,110,42,2,NULL),(2292,252,86,2,NULL),(2293,276,10,2,NULL),(2294,262,81,2,NULL),(2295,3,42,2,NULL),(2296,254,86,2,NULL),(2297,279,10,2,NULL),(2298,275,81,2,NULL),(2299,20,42,2,NULL),(2300,260,86,2,NULL),(2301,282,10,2,NULL),(2302,277,81,2,NULL),(2303,68,42,2,NULL),(2304,20,28,2,NULL),(2305,281,81,2,NULL),(2306,77,42,2,NULL),(2307,68,28,2,NULL),(2308,80,42,2,NULL),(2309,284,81,2,NULL),(2310,93,42,2,NULL),(2311,77,28,2,NULL),(2312,158,42,2,NULL),(2313,288,81,2,NULL),(2314,103,42,2,NULL),(2315,93,28,2,NULL),(2316,136,82,2,NULL),(2317,162,42,2,NULL),(2318,108,42,2,NULL),(2319,103,28,2,NULL),(2320,140,82,2,NULL),(2321,165,42,2,NULL),(2322,148,42,2,NULL),(2323,108,28,2,NULL),(2324,156,82,2,NULL),(2325,170,42,2,NULL),(2326,184,42,2,NULL),(2327,148,28,2,NULL),(2328,168,82,2,NULL),(2329,173,42,2,NULL),(2330,186,42,2,NULL),(2331,184,28,2,NULL),(2332,172,82,2,NULL),(2333,198,42,2,NULL),(2334,191,42,2,NULL),(2335,186,28,2,NULL),(2336,209,82,2,NULL),(2337,234,42,2,NULL),(2338,194,42,2,NULL),(2339,191,28,2,NULL),(2340,262,82,2,NULL),(2341,243,42,2,NULL),(2342,197,42,2,NULL),(2343,194,28,2,NULL),(2344,275,82,2,NULL),(2345,252,42,2,NULL),(2346,226,42,2,NULL),(2347,197,28,2,NULL),(2348,277,82,2,NULL),(2349,254,42,2,NULL),(2350,226,28,2,NULL),(2351,52,42,2,NULL),(2352,281,82,2,NULL),(2353,260,42,2,NULL),(2354,133,14,2,NULL),(2355,302,42,2,NULL),(2356,80,45,2,NULL),(2357,284,82,2,NULL),(2358,137,14,2,NULL),(2359,133,42,2,NULL),(2360,158,45,2,NULL),(2361,288,82,2,NULL),(2362,146,14,2,NULL),(2363,137,42,2,NULL),(2364,162,45,2,NULL),(2365,136,83,2,NULL),(2366,151,14,2,NULL),(2367,146,42,2,NULL),(2368,165,45,2,NULL),(2369,140,83,2,NULL),(2370,155,14,2,NULL),(2371,151,42,2,NULL),(2372,156,83,2,NULL),(2373,170,45,2,NULL),(2374,178,14,2,NULL),(2375,173,45,2,NULL),(2376,168,83,2,NULL),(2377,200,14,2,NULL),(2378,172,83,2,NULL),(2379,198,45,2,NULL),(2380,269,14,2,NULL),(2381,209,83,2,NULL),(2382,234,45,2,NULL),(2383,155,42,2,NULL),(2384,272,14,2,NULL),(2385,262,83,2,NULL),(2386,243,45,2,NULL),(2387,178,42,2,NULL),(2388,276,14,2,NULL),(2389,275,83,2,NULL),(2390,252,45,2,NULL),(2391,200,42,2,NULL),(2392,279,14,2,NULL),(2393,277,83,2,NULL),(2394,254,45,2,NULL),(2395,269,42,2,NULL),(2396,282,14,2,NULL),(2397,281,83,2,NULL),(2398,260,45,2,NULL),(2399,272,42,2,NULL),(2400,133,16,2,NULL),(2401,284,83,2,NULL),(2402,80,73,2,NULL),(2403,276,42,2,NULL),(2404,137,16,2,NULL),(2405,288,83,2,NULL),(2406,158,73,2,NULL),(2407,279,42,2,NULL),(2408,146,16,2,NULL),(2409,136,85,2,NULL),(2410,162,73,2,NULL),(2411,282,42,2,NULL),(2412,151,16,2,NULL),(2413,165,73,2,NULL),(2414,140,85,2,NULL),(2415,301,42,2,NULL),(2416,155,16,2,NULL),(2417,156,85,2,NULL),(2418,170,73,2,NULL),(2419,41,9,2,NULL),(2420,178,16,2,NULL),(2421,168,85,2,NULL),(2422,173,73,2,NULL),(2423,41,16,2,NULL),(2424,200,16,2,NULL),(2425,172,85,2,NULL),(2426,198,73,2,NULL),(2427,41,22,2,NULL),(2428,269,16,2,NULL),(2429,209,85,2,NULL),(2430,234,73,2,NULL),(2431,41,41,2,NULL),(2432,272,16,2,NULL),(2433,262,85,2,NULL),(2434,243,73,2,NULL),(2435,41,42,2,NULL),(2436,276,16,2,NULL),(2437,275,85,2,NULL),(2438,252,73,2,NULL),(2439,41,44,2,NULL),(2440,279,16,2,NULL),(2441,277,85,2,NULL),(2442,254,73,2,NULL),(2443,11,45,2,NULL),(2444,282,16,2,NULL),(2445,281,85,2,NULL),(2446,260,73,2,NULL),(2447,23,45,2,NULL),(2448,133,17,2,NULL),(2449,284,85,2,NULL),(2450,80,81,2,NULL),(2451,27,45,2,NULL),(2452,137,17,2,NULL),(2453,288,85,2,NULL),(2454,158,81,2,NULL),(2455,28,45,2,NULL),(2456,146,17,2,NULL),(2457,136,28,2,NULL),(2458,162,81,2,NULL),(2459,30,45,2,NULL),(2460,151,17,2,NULL),(2461,165,81,2,NULL),(2462,140,28,2,NULL),(2463,31,45,2,NULL),(2464,155,17,2,NULL),(2465,170,81,2,NULL),(2466,156,28,2,NULL),(2467,89,45,2,NULL),(2468,178,17,2,NULL),(2469,168,28,2,NULL),(2470,173,81,2,NULL),(2471,94,45,2,NULL),(2472,200,17,2,NULL),(2473,172,28,2,NULL),(2474,198,81,2,NULL),(2475,97,45,2,NULL),(2476,269,17,2,NULL),(2477,209,28,2,NULL),(2478,234,81,2,NULL),(2479,101,45,2,NULL),(2480,272,17,2,NULL),(2481,262,28,2,NULL),(2482,243,81,2,NULL),(2483,104,45,2,NULL),(2484,276,17,2,NULL),(2485,252,81,2,NULL),(2486,275,28,2,NULL),(2487,110,45,2,NULL),(2488,279,17,2,NULL),(2489,277,28,2,NULL),(2490,254,81,2,NULL),(2491,3,45,2,NULL),(2492,282,17,2,NULL),(2493,281,28,2,NULL),(2494,260,81,2,NULL),(2495,20,45,2,NULL),(2496,133,51,2,NULL),(2497,80,82,2,NULL),(2498,284,28,2,NULL),(2499,68,45,2,NULL),(2500,137,51,2,NULL),(2501,158,82,2,NULL),(2502,288,28,2,NULL),(2503,77,45,2,NULL),(2504,146,51,2,NULL),(2505,133,15,2,NULL),(2506,162,82,2,NULL),(2507,93,45,2,NULL),(2508,151,51,2,NULL),(2509,137,15,2,NULL),(2510,103,45,2,NULL),(2511,165,82,2,NULL),(2512,155,51,2,NULL),(2513,146,15,2,NULL),(2514,108,45,2,NULL),(2515,170,82,2,NULL),(2516,178,51,2,NULL),(2517,151,15,2,NULL),(2518,148,45,2,NULL),(2519,173,82,2,NULL),(2520,200,51,2,NULL),(2521,155,15,2,NULL),(2522,184,45,2,NULL),(2523,178,15,2,NULL),(2524,198,82,2,NULL),(2525,269,51,2,NULL),(2526,186,45,2,NULL),(2527,200,15,2,NULL),(2528,234,82,2,NULL),(2529,272,51,2,NULL),(2530,191,45,2,NULL),(2531,269,15,2,NULL),(2532,243,82,2,NULL),(2533,276,51,2,NULL),(2534,194,45,2,NULL),(2535,272,15,2,NULL),(2536,252,82,2,NULL),(2537,279,51,2,NULL),(2538,197,45,2,NULL),(2539,276,15,2,NULL),(2540,254,82,2,NULL),(2541,282,51,2,NULL),(2542,226,45,2,NULL),(2543,279,15,2,NULL),(2544,260,82,2,NULL),(2545,133,52,2,NULL),(2546,52,45,2,NULL),(2547,80,83,2,NULL),(2548,282,15,2,NULL),(2549,137,52,2,NULL),(2550,302,45,2,NULL),(2551,301,15,2,NULL),(2552,158,83,2,NULL),(2553,146,52,2,NULL),(2554,133,45,2,NULL),(2555,136,40,2,NULL),(2556,162,83,2,NULL),(2557,151,52,2,NULL),(2558,137,45,2,NULL),(2559,165,83,2,NULL),(2560,140,40,2,NULL),(2561,155,52,2,NULL),(2562,146,45,2,NULL),(2563,170,83,2,NULL),(2564,156,40,2,NULL),(2565,178,52,2,NULL),(2566,151,45,2,NULL),(2567,173,83,2,NULL),(2568,168,40,2,NULL),(2569,200,52,2,NULL),(2570,155,45,2,NULL),(2571,198,83,2,NULL),(2572,172,40,2,NULL),(2573,269,52,2,NULL),(2574,178,45,2,NULL),(2575,234,83,2,NULL),(2576,209,40,2,NULL),(2577,272,52,2,NULL),(2578,200,45,2,NULL),(2579,243,83,2,NULL),(2580,262,40,2,NULL),(2581,276,52,2,NULL),(2582,269,45,2,NULL),(2583,252,83,2,NULL),(2584,275,40,2,NULL),(2585,279,52,2,NULL),(2586,272,45,2,NULL),(2587,254,83,2,NULL),(2588,277,40,2,NULL),(2589,282,52,2,NULL),(2590,276,45,2,NULL),(2591,260,83,2,NULL),(2592,133,65,2,NULL),(2593,281,40,2,NULL),(2594,279,45,2,NULL),(2595,80,85,2,NULL),(2596,284,40,2,NULL),(2597,137,65,2,NULL),(2598,282,45,2,NULL),(2599,158,85,2,NULL),(2600,146,65,2,NULL),(2601,288,40,2,NULL),(2602,301,45,2,NULL),(2603,162,85,2,NULL),(2604,136,44,2,NULL),(2605,151,65,2,NULL),(2606,11,73,2,NULL),(2607,140,44,2,NULL),(2608,165,85,2,NULL),(2609,155,65,2,NULL),(2610,23,73,2,NULL),(2611,156,44,2,NULL),(2612,170,85,2,NULL),(2613,178,65,2,NULL),(2614,27,73,2,NULL),(2615,173,85,2,NULL),(2616,168,44,2,NULL),(2617,200,65,2,NULL),(2618,28,73,2,NULL),(2619,172,44,2,NULL),(2620,198,85,2,NULL),(2621,269,65,2,NULL),(2622,30,73,2,NULL),(2623,234,85,2,NULL),(2624,209,44,2,NULL),(2625,272,65,2,NULL),(2626,31,73,2,NULL),(2627,243,85,2,NULL),(2628,262,44,2,NULL),(2629,276,65,2,NULL),(2630,89,73,2,NULL),(2631,275,44,2,NULL),(2632,252,85,2,NULL),(2633,279,65,2,NULL),(2634,94,73,2,NULL),(2635,277,44,2,NULL),(2636,254,85,2,NULL),(2637,282,65,2,NULL),(2638,97,73,2,NULL),(2639,260,85,2,NULL),(2640,281,44,2,NULL),(2641,133,74,2,NULL),(2642,101,73,2,NULL),(2643,137,74,2,NULL),(2644,284,44,2,NULL),(2645,80,28,2,NULL),(2646,104,73,2,NULL),(2647,288,44,2,NULL),(2648,158,28,2,NULL),(2649,146,74,2,NULL),(2650,110,73,2,NULL),(2651,136,46,2,NULL),(2652,162,28,2,NULL),(2653,151,74,2,NULL),(2654,3,73,2,NULL),(2655,140,46,2,NULL),(2656,165,28,2,NULL),(2657,155,74,2,NULL),(2658,20,73,2,NULL),(2659,156,46,2,NULL),(2660,170,28,2,NULL),(2661,178,74,2,NULL),(2662,68,73,2,NULL),(2663,168,46,2,NULL),(2664,173,28,2,NULL),(2665,200,74,2,NULL),(2666,77,73,2,NULL),(2667,172,46,2,NULL),(2668,198,28,2,NULL),(2669,269,74,2,NULL),(2670,93,73,2,NULL),(2671,209,46,2,NULL),(2672,234,28,2,NULL),(2673,272,74,2,NULL),(2674,103,73,2,NULL),(2675,262,46,2,NULL),(2676,243,28,2,NULL),(2677,276,74,2,NULL),(2678,108,73,2,NULL),(2679,275,46,2,NULL),(2680,252,28,2,NULL),(2681,279,74,2,NULL),(2682,148,73,2,NULL),(2683,277,46,2,NULL),(2684,254,28,2,NULL),(2685,282,74,2,NULL),(2686,184,73,2,NULL),(2687,281,46,2,NULL),(2688,260,28,2,NULL),(2689,186,73,2,NULL),(2690,52,28,2,NULL),(2691,284,46,2,NULL),(2692,133,25,2,NULL),(2693,191,73,2,NULL),(2694,288,46,2,NULL),(2695,137,25,2,NULL),(2696,133,21,2,NULL),(2697,194,73,2,NULL),(2698,136,55,2,NULL),(2699,146,25,2,NULL),(2700,137,21,2,NULL),(2701,197,73,2,NULL),(2702,140,55,2,NULL),(2703,151,25,2,NULL),(2704,146,21,2,NULL),(2705,226,73,2,NULL),(2706,156,55,2,NULL),(2707,155,25,2,NULL),(2708,151,21,2,NULL),(2709,52,73,2,NULL),(2710,178,25,2,NULL),(2711,168,55,2,NULL),(2712,155,21,2,NULL),(2713,302,73,2,NULL),(2714,172,55,2,NULL),(2715,200,25,2,NULL),(2716,178,21,2,NULL),(2717,133,73,2,NULL),(2718,209,55,2,NULL),(2719,269,25,2,NULL),(2720,200,21,2,NULL),(2721,137,73,2,NULL),(2722,272,25,2,NULL),(2723,262,55,2,NULL),(2724,269,21,2,NULL),(2725,146,73,2,NULL),(2726,275,55,2,NULL),(2727,276,25,2,NULL),(2728,272,21,2,NULL),(2729,151,73,2,NULL),(2730,277,55,2,NULL),(2731,279,25,2,NULL),(2732,276,21,2,NULL),(2733,155,73,2,NULL),(2734,281,55,2,NULL),(2735,282,25,2,NULL),(2736,279,21,2,NULL),(2737,178,73,2,NULL),(2738,284,55,2,NULL),(2739,301,25,2,NULL),(2740,282,21,2,NULL),(2741,200,73,2,NULL),(2742,288,55,2,NULL),(2743,80,40,2,NULL),(2744,133,22,2,NULL),(2745,269,73,2,NULL),(2746,136,62,2,NULL),(2747,158,40,2,NULL),(2748,137,22,2,NULL),(2749,272,73,2,NULL),(2750,140,62,2,NULL),(2751,146,22,2,NULL),(2752,162,40,2,NULL),(2753,276,73,2,NULL),(2754,156,62,2,NULL),(2755,151,22,2,NULL),(2756,165,40,2,NULL),(2757,279,73,2,NULL),(2758,168,62,2,NULL),(2759,170,40,2,NULL),(2760,155,22,2,NULL),(2761,282,73,2,NULL),(2762,172,62,2,NULL),(2763,178,22,2,NULL),(2764,173,40,2,NULL),(2765,301,73,2,NULL),(2766,209,62,2,NULL),(2767,200,22,2,NULL),(2768,198,40,2,NULL),(2769,11,81,2,NULL),(2770,262,62,2,NULL),(2771,269,22,2,NULL),(2772,234,40,2,NULL),(2773,23,81,2,NULL),(2774,275,62,2,NULL),(2775,272,22,2,NULL),(2776,243,40,2,NULL),(2777,27,81,2,NULL),(2778,277,62,2,NULL),(2779,276,22,2,NULL),(2780,252,40,2,NULL),(2781,28,81,2,NULL),(2782,281,62,2,NULL),(2783,254,40,2,NULL),(2784,279,22,2,NULL),(2785,30,81,2,NULL),(2786,284,62,2,NULL),(2787,282,22,2,NULL),(2788,260,40,2,NULL),(2789,31,81,2,NULL),(2790,288,62,2,NULL),(2791,80,44,2,NULL),(2792,133,23,2,NULL),(2793,89,81,2,NULL),(2794,158,44,2,NULL),(2795,136,72,2,NULL),(2796,137,23,2,NULL),(2797,94,81,2,NULL),(2798,162,44,2,NULL),(2799,140,72,2,NULL),(2800,146,23,2,NULL),(2801,97,81,2,NULL),(2802,165,44,2,NULL),(2803,156,72,2,NULL),(2804,151,23,2,NULL),(2805,101,81,2,NULL),(2806,170,44,2,NULL),(2807,168,72,2,NULL),(2808,155,23,2,NULL),(2809,104,81,2,NULL),(2810,172,72,2,NULL),(2811,173,44,2,NULL),(2812,178,23,2,NULL),(2813,110,81,2,NULL),(2814,209,72,2,NULL),(2815,198,44,2,NULL),(2816,200,23,2,NULL),(2817,3,81,2,NULL),(2818,234,44,2,NULL),(2819,262,72,2,NULL),(2820,269,23,2,NULL),(2821,20,81,2,NULL),(2822,275,72,2,NULL),(2823,243,44,2,NULL),(2824,272,23,2,NULL),(2825,68,81,2,NULL),(2826,252,44,2,NULL),(2827,277,72,2,NULL),(2828,276,23,2,NULL),(2829,77,81,2,NULL),(2830,254,44,2,NULL),(2831,281,72,2,NULL),(2832,279,23,2,NULL),(2833,93,81,2,NULL),(2834,284,72,2,NULL),(2835,260,44,2,NULL),(2836,282,23,2,NULL),(2837,103,81,2,NULL),(2838,288,72,2,NULL),(2839,80,46,2,NULL),(2840,133,53,2,NULL),(2841,108,81,2,NULL),(2842,136,75,2,NULL),(2843,158,46,2,NULL),(2844,137,53,2,NULL),(2845,148,81,2,NULL),(2846,140,75,2,NULL),(2847,162,46,2,NULL),(2848,146,53,2,NULL),(2849,184,81,2,NULL),(2850,156,75,2,NULL),(2851,165,46,2,NULL),(2852,151,53,2,NULL),(2853,186,81,2,NULL),(2854,170,46,2,NULL),(2855,168,75,2,NULL),(2856,155,53,2,NULL),(2857,191,81,2,NULL),(2858,172,75,2,NULL),(2859,173,46,2,NULL),(2860,178,53,2,NULL),(2861,194,81,2,NULL),(2862,209,75,2,NULL),(2863,198,46,2,NULL),(2864,200,53,2,NULL),(2865,197,81,2,NULL),(2866,262,75,2,NULL),(2867,269,53,2,NULL),(2868,234,46,2,NULL),(2869,226,81,2,NULL),(2870,275,75,2,NULL),(2871,243,46,2,NULL),(2872,272,53,2,NULL),(2873,52,81,2,NULL),(2874,277,75,2,NULL),(2875,252,46,2,NULL),(2876,276,53,2,NULL),(2877,302,81,2,NULL),(2878,281,75,2,NULL),(2879,254,46,2,NULL),(2880,279,53,2,NULL),(2881,133,81,2,NULL),(2882,284,75,2,NULL),(2883,260,46,2,NULL),(2884,282,53,2,NULL),(2885,137,81,2,NULL),(2886,288,75,2,NULL),(2887,80,55,2,NULL),(2888,133,59,2,NULL),(2889,146,81,2,NULL),(2890,158,55,2,NULL),(2891,136,80,2,NULL),(2892,137,59,2,NULL),(2893,151,81,2,NULL),(2894,162,55,2,NULL),(2895,140,80,2,NULL),(2896,146,59,2,NULL),(2897,155,81,2,NULL),(2898,151,59,2,NULL),(2899,156,80,2,NULL),(2900,165,55,2,NULL),(2901,178,81,2,NULL),(2902,168,80,2,NULL),(2903,170,55,2,NULL),(2904,155,59,2,NULL),(2905,200,81,2,NULL),(2906,172,80,2,NULL),(2907,173,55,2,NULL),(2908,178,59,2,NULL),(2909,269,81,2,NULL),(2910,209,80,2,NULL),(2911,198,55,2,NULL),(2912,200,59,2,NULL),(2913,272,81,2,NULL),(2914,234,55,2,NULL),(2915,262,80,2,NULL),(2916,269,59,2,NULL),(2917,276,81,2,NULL),(2918,275,80,2,NULL),(2919,243,55,2,NULL),(2920,272,59,2,NULL),(2921,279,81,2,NULL),(2922,277,80,2,NULL),(2923,252,55,2,NULL),(2924,276,59,2,NULL),(2925,282,81,2,NULL),(2926,281,80,2,NULL),(2927,254,55,2,NULL),(2928,279,59,2,NULL),(2929,301,81,2,NULL),(2930,260,55,2,NULL),(2931,284,80,2,NULL),(2932,282,59,2,NULL),(2933,11,82,2,NULL),(2934,288,80,2,NULL),(2935,80,62,2,NULL),(2936,133,63,2,NULL),(2937,23,82,2,NULL),(2938,158,62,2,NULL),(2939,137,63,2,NULL),(2940,52,5,2,NULL),(2941,27,82,2,NULL),(2942,52,8,2,NULL),(2943,146,63,2,NULL),(2944,162,62,2,NULL),(2945,28,82,2,NULL),(2946,165,62,2,NULL),(2947,52,9,2,NULL),(2948,151,63,2,NULL),(2949,30,82,2,NULL),(2950,170,62,2,NULL),(2951,52,11,2,NULL),(2952,155,63,2,NULL),(2953,31,82,2,NULL),(2954,173,62,2,NULL),(2955,178,63,2,NULL),(2956,52,47,2,NULL),(2957,89,82,2,NULL),(2958,198,62,2,NULL),(2959,52,50,2,NULL),(2960,200,63,2,NULL),(2961,94,82,2,NULL),(2962,234,62,2,NULL),(2963,269,63,2,NULL),(2964,52,64,2,NULL),(2965,97,82,2,NULL),(2966,52,66,2,NULL),(2967,243,62,2,NULL),(2968,272,63,2,NULL),(2969,101,82,2,NULL),(2970,252,62,2,NULL),(2971,52,10,2,NULL),(2972,276,63,2,NULL),(2973,104,82,2,NULL),(2974,254,62,2,NULL),(2975,52,14,2,NULL),(2976,279,63,2,NULL),(2977,110,82,2,NULL),(2978,282,63,2,NULL),(2979,52,16,2,NULL),(2980,260,62,2,NULL),(2981,3,82,2,NULL),(2982,52,17,2,NULL),(2983,80,72,2,NULL),(2984,133,71,2,NULL),(2985,20,82,2,NULL),(2986,52,51,2,NULL),(2987,158,72,2,NULL),(2988,137,71,2,NULL),(2989,68,82,2,NULL),(2990,52,52,2,NULL),(2991,162,72,2,NULL),(2992,146,71,2,NULL),(2993,77,82,2,NULL),(2994,52,65,2,NULL),(2995,165,72,2,NULL),(2996,151,71,2,NULL),(2997,93,82,2,NULL),(2998,52,74,2,NULL),(2999,170,72,2,NULL),(3000,155,71,2,NULL),(3001,103,82,2,NULL),(3002,173,72,2,NULL),(3003,52,21,2,NULL),(3004,178,71,2,NULL),(3005,108,82,2,NULL),(3006,198,72,2,NULL),(3007,52,22,2,NULL),(3008,200,71,2,NULL),(3009,148,82,2,NULL),(3010,52,23,2,NULL),(3011,234,72,2,NULL),(3012,269,71,2,NULL),(3013,184,82,2,NULL),(3014,243,72,2,NULL),(3015,272,71,2,NULL),(3016,52,53,2,NULL),(3017,186,82,2,NULL),(3018,52,59,2,NULL),(3019,252,72,2,NULL),(3020,276,71,2,NULL),(3021,191,82,2,NULL),(3022,254,72,2,NULL),(3023,52,63,2,NULL),(3024,279,71,2,NULL),(3025,194,82,2,NULL),(3026,260,72,2,NULL),(3027,52,71,2,NULL),(3028,197,82,2,NULL),(3029,282,71,2,NULL),(3030,80,75,2,NULL),(3031,52,78,2,NULL),(3032,226,82,2,NULL),(3033,133,78,2,NULL),(3034,158,75,2,NULL),(3035,137,78,2,NULL),(3036,52,36,2,NULL),(3037,52,82,2,NULL),(3038,162,75,2,NULL),(3039,146,78,2,NULL),(3040,52,41,2,NULL),(3041,302,82,2,NULL),(3042,165,75,2,NULL),(3043,52,43,2,NULL),(3044,170,75,2,NULL),(3045,151,78,2,NULL),(3046,133,82,2,NULL),(3047,52,54,2,NULL),(3048,173,75,2,NULL),(3049,137,82,2,NULL),(3050,155,78,2,NULL),(3051,52,56,2,NULL),(3052,146,82,2,NULL),(3053,198,75,2,NULL),(3054,178,78,2,NULL),(3055,52,58,2,NULL),(3056,151,82,2,NULL),(3057,234,75,2,NULL),(3058,200,78,2,NULL),(3059,52,61,2,NULL),(3060,155,82,2,NULL),(3061,243,75,2,NULL),(3062,269,78,2,NULL),(3063,52,86,2,NULL),(3064,178,82,2,NULL),(3065,252,75,2,NULL),(3066,272,78,2,NULL),(3067,52,83,2,NULL),(3068,200,82,2,NULL),(3069,254,75,2,NULL),(3070,276,78,2,NULL),(3071,52,85,2,NULL),(3072,269,82,2,NULL),(3073,260,75,2,NULL),(3074,279,78,2,NULL),(3075,52,40,2,NULL),(3076,272,82,2,NULL),(3077,80,80,2,NULL),(3078,282,78,2,NULL),(3079,52,44,2,NULL),(3080,276,82,2,NULL),(3081,158,80,2,NULL),(3082,302,28,2,NULL),(3083,52,46,2,NULL),(3084,279,82,2,NULL),(3085,162,80,2,NULL),(3086,133,36,2,NULL),(3087,52,55,2,NULL),(3088,282,82,2,NULL),(3089,165,80,2,NULL),(3090,137,36,2,NULL),(3091,52,62,2,NULL),(3092,301,82,2,NULL),(3093,170,80,2,NULL),(3094,146,36,2,NULL),(3095,52,72,2,NULL),(3096,173,80,2,NULL),(3097,11,83,2,NULL),(3098,151,36,2,NULL),(3099,52,75,2,NULL),(3100,23,83,2,NULL),(3101,198,80,2,NULL),(3102,155,36,2,NULL),(3103,52,80,2,NULL),(3104,27,83,2,NULL),(3105,234,80,2,NULL),(3106,178,36,2,NULL),(3107,11,21,2,NULL),(3108,28,83,2,NULL),(3109,243,80,2,NULL),(3110,200,36,2,NULL),(3111,23,21,2,NULL),(3112,30,83,2,NULL),(3113,252,80,2,NULL),(3114,269,36,2,NULL),(3115,27,21,2,NULL),(3116,31,83,2,NULL),(3117,254,80,2,NULL),(3118,272,36,2,NULL),(3119,28,21,2,NULL),(3120,89,83,2,NULL),(3121,260,80,2,NULL),(3122,276,36,2,NULL),(3123,30,21,2,NULL),(3124,94,83,2,NULL),(3125,279,36,2,NULL),(3126,302,5,2,NULL),(3127,31,21,2,NULL),(3128,97,83,2,NULL),(3129,302,8,2,NULL),(3130,282,36,2,NULL),(3131,89,21,2,NULL),(3132,101,83,2,NULL),(3133,302,9,2,NULL),(3134,133,41,2,NULL),(3135,94,21,2,NULL),(3136,104,83,2,NULL),(3137,302,11,2,NULL),(3138,137,41,2,NULL),(3139,97,21,2,NULL),(3140,302,47,2,NULL),(3141,110,83,2,NULL),(3142,146,41,2,NULL),(3143,101,21,2,NULL),(3144,3,83,2,NULL),(3145,302,50,2,NULL),(3146,151,41,2,NULL),(3147,104,21,2,NULL),(3148,20,83,2,NULL),(3149,302,64,2,NULL),(3150,155,41,2,NULL),(3151,110,21,2,NULL),(3152,68,83,2,NULL),(3153,302,66,2,NULL),(3154,178,41,2,NULL),(3155,3,21,2,NULL),(3156,77,83,2,NULL),(3157,302,10,2,NULL),(3158,200,41,2,NULL),(3159,20,21,2,NULL),(3160,302,14,2,NULL),(3161,93,83,2,NULL),(3162,269,41,2,NULL),(3163,68,21,2,NULL),(3164,103,83,2,NULL),(3165,272,41,2,NULL),(3166,302,16,2,NULL),(3167,77,21,2,NULL),(3168,108,83,2,NULL),(3169,302,17,2,NULL),(3170,276,41,2,NULL),(3171,93,21,2,NULL),(3172,148,83,2,NULL),(3173,302,51,2,NULL),(3174,279,41,2,NULL),(3175,103,21,2,NULL),(3176,184,83,2,NULL),(3177,302,52,2,NULL),(3178,282,41,2,NULL),(3179,108,21,2,NULL),(3180,186,83,2,NULL),(3181,302,65,2,NULL),(3182,133,43,2,NULL),(3183,148,21,2,NULL),(3184,191,83,2,NULL),(3185,302,74,2,NULL),(3186,137,43,2,NULL),(3187,184,21,2,NULL),(3188,194,83,2,NULL),(3189,146,43,2,NULL),(3190,302,21,2,NULL),(3191,186,21,2,NULL),(3192,197,83,2,NULL),(3193,151,43,2,NULL),(3194,302,22,2,NULL),(3195,191,21,2,NULL),(3196,226,83,2,NULL),(3197,302,23,2,NULL),(3198,155,43,2,NULL),(3199,194,21,2,NULL),(3200,302,53,2,NULL),(3201,178,43,2,NULL),(3202,197,21,2,NULL),(3203,302,59,2,NULL),(3204,302,83,2,NULL),(3205,200,43,2,NULL),(3206,226,21,2,NULL),(3207,302,63,2,NULL),(3208,269,43,2,NULL),(3209,133,83,2,NULL),(3210,302,71,2,NULL),(3211,272,43,2,NULL),(3212,137,83,2,NULL),(3213,302,78,2,NULL),(3214,276,43,2,NULL),(3215,146,83,2,NULL),(3216,279,43,2,NULL),(3217,302,36,2,NULL),(3218,301,21,2,NULL),(3219,151,83,2,NULL),(3220,282,43,2,NULL),(3221,302,41,2,NULL),(3222,155,83,2,NULL),(3223,11,22,2,NULL),(3224,302,43,2,NULL),(3225,133,54,2,NULL),(3226,178,83,2,NULL),(3227,23,22,2,NULL),(3228,302,54,2,NULL),(3229,137,54,2,NULL),(3230,200,83,2,NULL),(3231,27,22,2,NULL),(3232,302,56,2,NULL),(3233,146,54,2,NULL),(3234,269,83,2,NULL),(3235,28,22,2,NULL),(3236,302,58,2,NULL),(3237,151,54,2,NULL),(3238,272,83,2,NULL),(3239,30,22,2,NULL),(3240,302,61,2,NULL),(3241,155,54,2,NULL),(3242,276,83,2,NULL),(3243,31,22,2,NULL),(3244,302,86,2,NULL),(3245,178,54,2,NULL),(3246,279,83,2,NULL),(3247,89,22,2,NULL),(3248,200,54,2,NULL),(3249,302,85,2,NULL),(3250,282,83,2,NULL),(3251,94,22,2,NULL),(3252,269,54,2,NULL),(3253,301,83,2,NULL),(3254,97,22,2,NULL),(3255,302,40,2,NULL),(3256,272,54,2,NULL),(3257,101,22,2,NULL),(3258,11,85,2,NULL),(3259,302,44,2,NULL),(3260,276,54,2,NULL),(3261,23,85,2,NULL),(3262,302,46,2,NULL),(3263,104,22,2,NULL),(3264,279,54,2,NULL),(3265,27,85,2,NULL),(3266,110,22,2,NULL),(3267,302,55,2,NULL),(3268,282,54,2,NULL),(3269,28,85,2,NULL),(3270,3,22,2,NULL),(3271,302,62,2,NULL),(3272,133,56,2,NULL),(3273,30,85,2,NULL),(3274,302,72,2,NULL),(3275,20,22,2,NULL),(3276,137,56,2,NULL),(3277,31,85,2,NULL),(3278,302,75,2,NULL),(3279,68,22,2,NULL),(3280,146,56,2,NULL),(3281,89,85,2,NULL),(3282,302,80,2,NULL),(3283,77,22,2,NULL),(3284,151,56,2,NULL),(3285,94,85,2,NULL),(3286,11,36,2,NULL),(3287,93,22,2,NULL),(3288,155,56,2,NULL),(3289,97,85,2,NULL),(3290,103,22,2,NULL),(3291,23,36,2,NULL),(3292,101,85,2,NULL),(3293,108,22,2,NULL),(3294,27,36,2,NULL),(3295,104,85,2,NULL),(3296,148,22,2,NULL),(3297,28,36,2,NULL),(3298,178,56,2,NULL),(3299,110,85,2,NULL),(3300,184,22,2,NULL),(3301,200,56,2,NULL),(3302,30,36,2,NULL),(3303,3,85,2,NULL),(3304,186,22,2,NULL),(3305,269,56,2,NULL),(3306,31,36,2,NULL),(3307,20,85,2,NULL),(3308,191,22,2,NULL),(3309,272,56,2,NULL),(3310,89,36,2,NULL),(3311,68,85,2,NULL),(3312,194,22,2,NULL),(3313,94,36,2,NULL),(3314,276,56,2,NULL),(3315,77,85,2,NULL),(3316,197,22,2,NULL),(3317,279,56,2,NULL),(3318,97,36,2,NULL),(3319,93,85,2,NULL),(3320,226,22,2,NULL),(3321,282,56,2,NULL),(3322,101,36,2,NULL),(3323,103,85,2,NULL),(3324,133,58,2,NULL),(3325,104,36,2,NULL),(3326,108,85,2,NULL),(3327,137,58,2,NULL),(3328,110,36,2,NULL),(3329,148,85,2,NULL),(3330,146,58,2,NULL),(3331,3,36,2,NULL),(3332,301,22,2,NULL),(3333,184,85,2,NULL),(3334,100,9,2,NULL),(3335,151,58,2,NULL),(3336,20,36,2,NULL),(3337,186,85,2,NULL),(3338,100,16,2,NULL),(3339,155,58,2,NULL),(3340,68,36,2,NULL),(3341,191,85,2,NULL),(3342,100,22,2,NULL),(3343,178,58,2,NULL),(3344,77,36,2,NULL),(3345,194,85,2,NULL),(3346,93,36,2,NULL),(3347,100,41,2,NULL),(3348,200,58,2,NULL),(3349,197,85,2,NULL),(3350,100,42,2,NULL),(3351,269,58,2,NULL),(3352,103,36,2,NULL),(3353,226,85,2,NULL),(3354,100,44,2,NULL),(3355,272,58,2,NULL),(3356,108,36,2,NULL),(3357,11,23,2,NULL),(3358,276,58,2,NULL),(3359,148,36,2,NULL),(3360,23,23,2,NULL),(3361,133,85,2,NULL),(3362,279,58,2,NULL),(3363,184,36,2,NULL),(3364,27,23,2,NULL),(3365,137,85,2,NULL),(3366,282,58,2,NULL),(3367,186,36,2,NULL),(3368,28,23,2,NULL),(3369,146,85,2,NULL),(3370,133,61,2,NULL),(3371,191,36,2,NULL),(3372,30,23,2,NULL),(3373,151,85,2,NULL),(3374,137,61,2,NULL),(3375,194,36,2,NULL),(3376,31,23,2,NULL),(3377,155,85,2,NULL),(3378,146,61,2,NULL),(3379,197,36,2,NULL),(3380,89,23,2,NULL),(3381,178,85,2,NULL),(3382,151,61,2,NULL),(3383,226,36,2,NULL),(3384,94,23,2,NULL),(3385,155,61,2,NULL),(3386,200,85,2,NULL),(3387,97,23,2,NULL),(3388,269,85,2,NULL),(3389,178,61,2,NULL),(3390,101,23,2,NULL),(3391,272,85,2,NULL),(3392,200,61,2,NULL),(3393,104,23,2,NULL),(3394,276,85,2,NULL),(3395,269,61,2,NULL),(3396,301,36,2,NULL),(3397,110,23,2,NULL),(3398,279,85,2,NULL),(3399,272,61,2,NULL),(3400,11,41,2,NULL),(3401,3,23,2,NULL),(3402,282,85,2,NULL),(3403,23,41,2,NULL),(3404,276,61,2,NULL),(3405,20,23,2,NULL),(3406,301,85,2,NULL),(3407,27,41,2,NULL),(3408,279,61,2,NULL),(3409,68,23,2,NULL),(3410,28,41,2,NULL),(3411,282,61,2,NULL),(3412,77,23,2,NULL),(3413,30,41,2,NULL),(3414,133,86,2,NULL),(3415,93,23,2,NULL),(3416,31,41,2,NULL),(3417,137,86,2,NULL),(3418,103,23,2,NULL),(3419,89,41,2,NULL),(3420,146,86,2,NULL),(3421,108,23,2,NULL),(3422,94,41,2,NULL),(3423,151,86,2,NULL),(3424,148,23,2,NULL),(3425,97,41,2,NULL),(3426,155,86,2,NULL),(3427,184,23,2,NULL),(3428,101,41,2,NULL),(3429,178,86,2,NULL),(3430,186,23,2,NULL),(3431,104,41,2,NULL),(3432,200,86,2,NULL),(3433,191,23,2,NULL),(3434,110,41,2,NULL),(3435,269,86,2,NULL),(3436,194,23,2,NULL),(3437,3,41,2,NULL),(3438,272,86,2,NULL),(3439,197,23,2,NULL),(3440,20,41,2,NULL),(3441,276,86,2,NULL),(3442,226,23,2,NULL),(3443,68,41,2,NULL),(3444,279,86,2,NULL),(3445,77,41,2,NULL),(3446,282,86,2,NULL),(3447,93,41,2,NULL),(3448,301,23,2,NULL),(3449,103,41,2,NULL),(3450,11,53,2,NULL),(3451,108,41,2,NULL),(3452,23,53,2,NULL),(3453,148,41,2,NULL),(3454,27,53,2,NULL),(3455,184,41,2,NULL),(3456,28,53,2,NULL),(3457,301,28,2,NULL),(3458,186,41,2,NULL),(3459,30,53,2,NULL),(3460,133,40,2,NULL),(3461,191,41,2,NULL),(3462,31,53,2,NULL),(3463,137,40,2,NULL),(3464,194,41,2,NULL),(3465,89,53,2,NULL),(3466,146,40,2,NULL),(3467,197,41,2,NULL),(3468,94,53,2,NULL),(3469,151,40,2,NULL),(3470,226,41,2,NULL),(3471,97,53,2,NULL),(3472,155,40,2,NULL),(3473,101,53,2,NULL),(3474,178,40,2,NULL),(3475,104,53,2,NULL),(3476,301,41,2,NULL),(3477,200,40,2,NULL),(3478,110,53,2,NULL),(3479,84,9,2,NULL),(3480,269,40,2,NULL),(3481,3,53,2,NULL),(3482,84,16,2,NULL),(3483,272,40,2,NULL),(3484,20,53,2,NULL),(3485,84,22,2,NULL),(3486,276,40,2,NULL),(3487,68,53,2,NULL),(3488,84,41,2,NULL),(3489,279,40,2,NULL),(3490,77,53,2,NULL),(3491,84,42,2,NULL),(3492,282,40,2,NULL),(3493,93,53,2,NULL),(3494,84,44,2,NULL),(3495,133,44,2,NULL),(3496,103,53,2,NULL),(3497,11,43,2,NULL),(3498,137,44,2,NULL),(3499,108,53,2,NULL),(3500,23,43,2,NULL),(3501,146,44,2,NULL),(3502,148,53,2,NULL),(3503,27,43,2,NULL),(3504,151,44,2,NULL),(3505,184,53,2,NULL),(3506,28,43,2,NULL),(3507,155,44,2,NULL),(3508,186,53,2,NULL),(3509,30,43,2,NULL),(3510,178,44,2,NULL),(3511,191,53,2,NULL),(3512,31,43,2,NULL),(3513,200,44,2,NULL),(3514,194,53,2,NULL),(3515,89,43,2,NULL),(3516,269,44,2,NULL),(3517,197,53,2,NULL),(3518,272,44,2,NULL),(3519,94,43,2,NULL),(3520,226,53,2,NULL),(3521,276,44,2,NULL),(3522,97,43,2,NULL),(3523,101,43,2,NULL),(3524,279,44,2,NULL),(3525,104,43,2,NULL),(3526,282,44,2,NULL),(3527,110,43,2,NULL),(3528,301,53,2,NULL),(3529,133,46,2,NULL),(3530,3,43,2,NULL),(3531,11,59,2,NULL),(3532,137,46,2,NULL),(3533,23,59,2,NULL),(3534,20,43,2,NULL),(3535,146,46,2,NULL),(3536,27,59,2,NULL),(3537,68,43,2,NULL),(3538,151,46,2,NULL),(3539,77,43,2,NULL),(3540,28,59,2,NULL),(3541,155,46,2,NULL),(3542,93,43,2,NULL),(3543,30,59,2,NULL),(3544,178,46,2,NULL),(3545,31,59,2,NULL),(3546,103,43,2,NULL),(3547,200,46,2,NULL),(3548,89,59,2,NULL),(3549,108,43,2,NULL),(3550,269,46,2,NULL),(3551,148,43,2,NULL),(3552,94,59,2,NULL),(3553,272,46,2,NULL),(3554,97,59,2,NULL),(3555,184,43,2,NULL),(3556,276,46,2,NULL),(3557,101,59,2,NULL),(3558,186,43,2,NULL),(3559,279,46,2,NULL),(3560,191,43,2,NULL),(3561,104,59,2,NULL),(3562,282,46,2,NULL),(3563,194,43,2,NULL),(3564,110,59,2,NULL),(3565,133,55,2,NULL),(3566,197,43,2,NULL),(3567,3,59,2,NULL),(3568,137,55,2,NULL),(3569,20,59,2,NULL),(3570,226,43,2,NULL),(3571,146,55,2,NULL),(3572,68,59,2,NULL),(3573,301,43,2,NULL),(3574,151,55,2,NULL),(3575,11,54,2,NULL),(3576,77,59,2,NULL),(3577,155,55,2,NULL),(3578,93,59,2,NULL),(3579,23,54,2,NULL),(3580,178,55,2,NULL),(3581,103,59,2,NULL),(3582,27,54,2,NULL),(3583,200,55,2,NULL),(3584,108,59,2,NULL),(3585,28,54,2,NULL),(3586,269,55,2,NULL),(3587,148,59,2,NULL),(3588,30,54,2,NULL),(3589,272,55,2,NULL),(3590,184,59,2,NULL),(3591,31,54,2,NULL),(3592,276,55,2,NULL),(3593,186,59,2,NULL),(3594,89,54,2,NULL),(3595,191,59,2,NULL),(3596,279,55,2,NULL),(3597,94,54,2,NULL),(3598,194,59,2,NULL),(3599,282,55,2,NULL),(3600,97,54,2,NULL),(3601,197,59,2,NULL),(3602,133,62,2,NULL),(3603,101,54,2,NULL),(3604,226,59,2,NULL),(3605,137,62,2,NULL),(3606,104,54,2,NULL),(3607,146,62,2,NULL),(3608,110,54,2,NULL),(3609,301,59,2,NULL),(3610,151,62,2,NULL),(3611,3,54,2,NULL),(3612,11,63,2,NULL),(3613,155,62,2,NULL),(3614,23,63,2,NULL),(3615,20,54,2,NULL),(3616,178,62,2,NULL),(3617,27,63,2,NULL),(3618,68,54,2,NULL),(3619,200,62,2,NULL),(3620,28,63,2,NULL),(3621,77,54,2,NULL),(3622,269,62,2,NULL),(3623,30,63,2,NULL),(3624,93,54,2,NULL),(3625,272,62,2,NULL),(3626,103,54,2,NULL),(3627,31,63,2,NULL),(3628,276,62,2,NULL),(3629,89,63,2,NULL),(3630,108,54,2,NULL),(3631,279,62,2,NULL),(3632,148,54,2,NULL),(3633,94,63,2,NULL),(3634,282,62,2,NULL),(3635,184,54,2,NULL),(3636,97,63,2,NULL),(3637,133,72,2,NULL),(3638,101,63,2,NULL),(3639,186,54,2,NULL),(3640,137,72,2,NULL),(3641,191,54,2,NULL),(3642,104,63,2,NULL),(3643,146,72,2,NULL),(3644,110,63,2,NULL),(3645,194,54,2,NULL),(3646,151,72,2,NULL),(3647,197,54,2,NULL),(3648,3,63,2,NULL),(3649,155,72,2,NULL),(3650,20,63,2,NULL),(3651,226,54,2,NULL),(3652,178,72,2,NULL),(3653,68,63,2,NULL),(3654,200,72,2,NULL),(3655,301,54,2,NULL),(3656,77,63,2,NULL),(3657,269,72,2,NULL),(3658,93,63,2,NULL),(3659,11,56,2,NULL),(3660,272,72,2,NULL),(3661,103,63,2,NULL),(3662,23,56,2,NULL),(3663,276,72,2,NULL),(3664,27,56,2,NULL),(3665,108,63,2,NULL),(3666,279,72,2,NULL),(3667,148,63,2,NULL),(3668,28,56,2,NULL),(3669,282,72,2,NULL),(3670,30,56,2,NULL),(3671,133,75,2,NULL),(3672,31,56,2,NULL),(3673,137,75,2,NULL),(3674,184,63,2,NULL),(3675,89,56,2,NULL),(3676,146,75,2,NULL),(3677,186,63,2,NULL),(3678,94,56,2,NULL),(3679,191,63,2,NULL),(3680,151,75,2,NULL),(3681,97,56,2,NULL),(3682,155,75,2,NULL),(3683,194,63,2,NULL),(3684,101,56,2,NULL),(3685,178,75,2,NULL),(3686,197,63,2,NULL),(3687,104,56,2,NULL),(3688,226,63,2,NULL),(3689,200,75,2,NULL),(3690,110,56,2,NULL),(3691,269,75,2,NULL),(3692,3,56,2,NULL),(3693,301,63,2,NULL),(3694,272,75,2,NULL),(3695,20,56,2,NULL),(3696,276,75,2,NULL),(3697,11,71,2,NULL),(3698,68,56,2,NULL),(3699,279,75,2,NULL),(3700,23,71,2,NULL),(3701,77,56,2,NULL),(3702,27,71,2,NULL),(3703,282,75,2,NULL),(3704,93,56,2,NULL),(3705,28,71,2,NULL),(3706,133,80,2,NULL),(3707,103,56,2,NULL),(3708,137,80,2,NULL),(3709,30,71,2,NULL),(3710,108,56,2,NULL),(3711,31,71,2,NULL),(3712,146,80,2,NULL),(3713,148,56,2,NULL),(3714,89,71,2,NULL),(3715,151,80,2,NULL),(3716,184,56,2,NULL),(3717,94,71,2,NULL),(3718,155,80,2,NULL),(3719,186,56,2,NULL),(3720,97,71,2,NULL),(3721,178,80,2,NULL),(3722,191,56,2,NULL),(3723,101,71,2,NULL),(3724,200,80,2,NULL),(3725,194,56,2,NULL),(3726,104,71,2,NULL),(3727,269,80,2,NULL),(3728,197,56,2,NULL),(3729,110,71,2,NULL),(3730,272,80,2,NULL),(3731,226,56,2,NULL),(3732,3,71,2,NULL),(3733,276,80,2,NULL),(3734,20,71,2,NULL),(3735,279,80,2,NULL),(3736,301,56,2,NULL),(3737,68,71,2,NULL),(3738,11,58,2,NULL),(3739,282,80,2,NULL),(3740,77,71,2,NULL),(3741,23,58,2,NULL),(3742,301,5,2,NULL),(3743,93,71,2,NULL),(3744,27,58,2,NULL),(3745,301,8,2,NULL),(3746,103,71,2,NULL),(3747,28,58,2,NULL),(3748,301,9,2,NULL),(3749,108,71,2,NULL),(3750,30,58,2,NULL),(3751,301,11,2,NULL),(3752,148,71,2,NULL),(3753,31,58,2,NULL),(3754,301,47,2,NULL),(3755,184,71,2,NULL),(3756,89,58,2,NULL),(3757,301,50,2,NULL),(3758,186,71,2,NULL),(3759,94,58,2,NULL),(3760,301,64,2,NULL),(3761,191,71,2,NULL),(3762,97,58,2,NULL),(3763,301,66,2,NULL),(3764,194,71,2,NULL),(3765,101,58,2,NULL),(3766,301,10,2,NULL),(3767,197,71,2,NULL),(3768,301,14,2,NULL),(3769,104,58,2,NULL),(3770,226,71,2,NULL),(3771,110,58,2,NULL),(3772,301,16,2,NULL),(3773,301,17,2,NULL),(3774,3,58,2,NULL),(3775,301,51,2,NULL),(3776,20,58,2,NULL),(3777,301,71,2,NULL),(3778,301,52,2,NULL),(3779,68,58,2,NULL),(3780,11,78,2,NULL),(3781,301,65,2,NULL),(3782,23,78,2,NULL),(3783,77,58,2,NULL),(3784,301,74,2,NULL),(3785,27,78,2,NULL),(3786,93,58,2,NULL),(3787,301,78,2,NULL),(3788,28,78,2,NULL),(3789,103,58,2,NULL),(3790,301,58,2,NULL),(3791,30,78,2,NULL),(3792,108,58,2,NULL),(3793,301,61,2,NULL),(3794,31,78,2,NULL),(3795,148,58,2,NULL),(3796,301,86,2,NULL),(3797,184,58,2,NULL),(3798,89,78,2,NULL),(3799,301,40,2,NULL),(3800,94,78,2,NULL),(3801,301,44,2,NULL),(3802,186,58,2,NULL),(3803,97,78,2,NULL),(3804,191,58,2,NULL),(3805,301,46,2,NULL),(3806,101,78,2,NULL),(3807,301,55,2,NULL),(3808,194,58,2,NULL),(3809,104,78,2,NULL),(3810,197,58,2,NULL),(3811,301,62,2,NULL),(3812,110,78,2,NULL),(3813,226,58,2,NULL),(3814,301,72,2,NULL),(3815,3,78,2,NULL),(3816,301,75,2,NULL),(3817,20,78,2,NULL),(3818,11,61,2,NULL),(3819,301,80,2,NULL),(3820,68,78,2,NULL),(3821,23,61,2,NULL),(3822,11,40,2,NULL),(3823,77,78,2,NULL),(3824,27,61,2,NULL),(3825,23,40,2,NULL),(3826,28,61,2,NULL),(3827,93,78,2,NULL),(3828,27,40,2,NULL),(3829,103,78,2,NULL),(3830,30,61,2,NULL),(3831,28,40,2,NULL),(3832,108,78,2,NULL),(3833,31,61,2,NULL),(3834,30,40,2,NULL),(3835,148,78,2,NULL),(3836,89,61,2,NULL),(3837,31,40,2,NULL),(3838,184,78,2,NULL),(3839,94,61,2,NULL),(3840,89,40,2,NULL),(3841,97,61,2,NULL),(3842,186,78,2,NULL),(3843,94,40,2,NULL),(3844,191,78,2,NULL),(3845,101,61,2,NULL),(3846,97,40,2,NULL),(3847,104,61,2,NULL),(3848,194,78,2,NULL),(3849,101,40,2,NULL),(3850,110,61,2,NULL),(3851,197,78,2,NULL),(3852,104,40,2,NULL),(3853,3,61,2,NULL),(3854,226,78,2,NULL),(3855,110,40,2,NULL),(3856,20,61,2,NULL),(3857,3,40,2,NULL),(3858,68,61,2,NULL),(3859,20,40,2,NULL),(3860,77,61,2,NULL),(3861,68,40,2,NULL),(3862,93,61,2,NULL),(3863,77,40,2,NULL),(3864,103,61,2,NULL),(3865,93,40,2,NULL),(3866,108,61,2,NULL),(3867,103,40,2,NULL),(3868,148,61,2,NULL),(3869,108,40,2,NULL),(3870,184,61,2,NULL),(3871,148,40,2,NULL),(3872,186,61,2,NULL),(3873,184,40,2,NULL),(3874,191,61,2,NULL),(3875,186,40,2,NULL),(3876,194,61,2,NULL),(3877,191,40,2,NULL),(3878,197,61,2,NULL),(3879,194,40,2,NULL),(3880,226,61,2,NULL),(3881,197,40,2,NULL),(3882,226,40,2,NULL),(3883,11,86,2,NULL),(3884,23,86,2,NULL),(3885,27,86,2,NULL),(3886,11,44,2,NULL),(3887,28,86,2,NULL),(3888,23,44,2,NULL),(3889,30,86,2,NULL),(3890,27,44,2,NULL),(3891,31,86,2,NULL),(3892,28,44,2,NULL),(3893,89,86,2,NULL),(3894,30,44,2,NULL),(3895,94,86,2,NULL),(3896,31,44,2,NULL),(3897,97,86,2,NULL),(3898,89,44,2,NULL),(3899,101,86,2,NULL),(3900,94,44,2,NULL),(3901,104,86,2,NULL),(3902,97,44,2,NULL),(3903,110,86,2,NULL),(3904,101,44,2,NULL),(3905,3,86,2,NULL),(3906,104,44,2,NULL),(3907,20,86,2,NULL),(3908,110,44,2,NULL),(3909,68,86,2,NULL),(3910,3,44,2,NULL),(3911,77,86,2,NULL),(3912,20,44,2,NULL),(3913,93,86,2,NULL),(3914,68,44,2,NULL),(3915,103,86,2,NULL),(3916,77,44,2,NULL),(3917,108,86,2,NULL),(3918,93,44,2,NULL),(3919,148,86,2,NULL),(3920,103,44,2,NULL),(3921,184,86,2,NULL),(3922,108,44,2,NULL),(3923,186,86,2,NULL),(3924,148,44,2,NULL),(3925,191,86,2,NULL),(3926,184,44,2,NULL),(3927,194,86,2,NULL),(3928,186,44,2,NULL),(3929,197,86,2,NULL),(3930,191,44,2,NULL),(3931,226,86,2,NULL),(3932,194,44,2,NULL),(3933,197,44,2,NULL),(3934,226,44,2,NULL),(3935,203,9,2,NULL),(3936,203,16,2,NULL),(3937,203,22,2,NULL),(3938,203,41,2,NULL),(3939,203,42,2,NULL),(3940,203,44,2,NULL),(3941,11,46,2,NULL),(3942,23,46,2,NULL),(3943,27,46,2,NULL),(3944,28,46,2,NULL),(3945,30,46,2,NULL),(3946,31,46,2,NULL),(3947,89,46,2,NULL),(3948,94,46,2,NULL),(3949,97,46,2,NULL),(3950,101,46,2,NULL),(3951,104,46,2,NULL),(3952,110,46,2,NULL),(3953,3,46,2,NULL),(3954,20,46,2,NULL),(3955,68,46,2,NULL),(3956,77,46,2,NULL),(3957,93,46,2,NULL),(3958,103,46,2,NULL),(3959,108,46,2,NULL),(3960,148,46,2,NULL),(3961,184,46,2,NULL),(3962,186,46,2,NULL),(3963,191,46,2,NULL),(3964,194,46,2,NULL),(3965,197,46,2,NULL),(3966,226,46,2,NULL),(3967,11,55,2,NULL),(3968,23,55,2,NULL),(3969,27,55,2,NULL),(3970,28,55,2,NULL),(3971,30,55,2,NULL),(3972,31,55,2,NULL),(3973,89,55,2,NULL),(3974,94,55,2,NULL),(3975,97,55,2,NULL),(3976,101,55,2,NULL),(3977,104,55,2,NULL),(3978,110,55,2,NULL),(3979,3,55,2,NULL),(3980,20,55,2,NULL),(3981,68,55,2,NULL),(3982,77,55,2,NULL),(3983,93,55,2,NULL),(3984,103,55,2,NULL),(3985,108,55,2,NULL),(3986,148,55,2,NULL),(3987,184,55,2,NULL),(3988,186,55,2,NULL),(3989,191,55,2,NULL),(3990,194,55,2,NULL),(3991,197,55,2,NULL),(3992,226,55,2,NULL),(3993,11,62,2,NULL),(3994,23,62,2,NULL),(3995,27,62,2,NULL),(3996,28,62,2,NULL),(3997,30,62,2,NULL),(3998,31,62,2,NULL),(3999,89,62,2,NULL),(4000,94,62,2,NULL),(4001,97,62,2,NULL),(4002,101,62,2,NULL),(4003,104,62,2,NULL),(4004,110,62,2,NULL),(4005,3,62,2,NULL),(4006,20,62,2,NULL),(4007,68,62,2,NULL),(4008,77,62,2,NULL),(4009,93,62,2,NULL),(4010,103,62,2,NULL),(4011,108,62,2,NULL),(4012,148,62,2,NULL),(4013,184,62,2,NULL),(4014,186,62,2,NULL),(4015,191,62,2,NULL),(4016,194,62,2,NULL),(4017,197,62,2,NULL),(4018,226,62,2,NULL),(4019,11,72,2,NULL),(4020,23,72,2,NULL),(4021,27,72,2,NULL),(4022,28,72,2,NULL),(4023,30,72,2,NULL),(4024,31,72,2,NULL),(4025,89,72,2,NULL),(4026,94,72,2,NULL),(4027,97,72,2,NULL),(4028,101,72,2,NULL),(4029,104,72,2,NULL),(4030,110,72,2,NULL),(4031,3,72,2,NULL),(4032,20,72,2,NULL),(4033,68,72,2,NULL),(4034,77,72,2,NULL),(4035,93,72,2,NULL),(4036,103,72,2,NULL),(4037,108,72,2,NULL),(4038,148,72,2,NULL),(4039,184,72,2,NULL),(4040,186,72,2,NULL),(4041,191,72,2,NULL),(4042,194,72,2,NULL),(4043,197,72,2,NULL),(4044,226,72,2,NULL),(4045,11,75,2,NULL),(4046,23,75,2,NULL),(4047,27,75,2,NULL),(4048,28,75,2,NULL),(4049,30,75,2,NULL),(4050,31,75,2,NULL),(4051,89,75,2,NULL),(4052,94,75,2,NULL),(4053,97,75,2,NULL),(4054,101,75,2,NULL),(4055,104,75,2,NULL),(4056,110,75,2,NULL),(4057,3,75,2,NULL),(4058,20,75,2,NULL),(4059,68,75,2,NULL),(4060,77,75,2,NULL),(4061,93,75,2,NULL),(4062,103,75,2,NULL),(4063,108,75,2,NULL),(4064,148,75,2,NULL),(4065,184,75,2,NULL),(4066,186,75,2,NULL),(4067,191,75,2,NULL),(4068,194,75,2,NULL),(4069,197,75,2,NULL),(4070,226,75,2,NULL),(4071,11,80,2,NULL),(4072,23,80,2,NULL),(4073,27,80,2,NULL),(4074,28,80,2,NULL),(4075,30,80,2,NULL),(4076,31,80,2,NULL),(4077,89,80,2,NULL),(4078,94,80,2,NULL),(4079,97,80,2,NULL),(4080,101,80,2,NULL),(4081,104,80,2,NULL),(4082,110,80,2,NULL),(4083,3,80,2,NULL),(4084,20,80,2,NULL),(4085,68,80,2,NULL),(4086,77,80,2,NULL),(4087,93,80,2,NULL),(4088,103,80,2,NULL),(4089,108,80,2,NULL),(4090,148,80,2,NULL),(4091,184,80,2,NULL),(4092,186,80,2,NULL),(4093,191,80,2,NULL),(4094,194,80,2,NULL),(4095,197,80,2,NULL),(4096,226,80,2,NULL),(4097,75,8,2,NULL),(4098,75,14,2,NULL),(4099,75,21,2,NULL),(4100,75,36,2,NULL),(4101,75,38,2,NULL),(4102,75,40,2,NULL),(4103,82,8,2,NULL),(4104,82,14,2,NULL),(4105,82,21,2,NULL),(4106,82,36,2,NULL),(4107,82,38,2,NULL),(4108,82,40,2,NULL),(4109,88,8,2,NULL),(4110,88,14,2,NULL),(4111,88,21,2,NULL),(4112,88,36,2,NULL),(4113,88,38,2,NULL),(4114,88,40,2,NULL),(4115,98,8,2,NULL),(4116,98,14,2,NULL),(4117,98,21,2,NULL),(4118,98,36,2,NULL),(4119,98,38,2,NULL),(4120,98,40,2,NULL),(4121,111,8,2,NULL),(4122,111,14,2,NULL),(4123,111,21,2,NULL),(4124,111,36,2,NULL),(4125,111,38,2,NULL),(4126,111,40,2,NULL),(4127,129,7,2,NULL),(4128,129,13,2,NULL),(4129,129,19,2,NULL),(4130,129,29,2,NULL),(4131,129,33,2,NULL),(4132,129,37,2,NULL),(4133,229,7,2,NULL),(4134,229,13,2,NULL),(4135,229,19,2,NULL),(4136,229,29,2,NULL),(4137,229,33,2,NULL),(4138,229,37,2,NULL),(4139,20,5,2,NULL),(4140,68,5,2,NULL),(4141,77,5,2,NULL),(4142,93,5,2,NULL),(4143,103,5,2,NULL),(4144,108,5,2,NULL),(4145,148,5,2,NULL),(4146,184,5,2,NULL),(4147,186,5,2,NULL),(4148,191,5,2,NULL),(4149,194,5,2,NULL),(4150,197,5,2,NULL),(4151,11,10,2,NULL),(4152,23,10,2,NULL),(4153,27,10,2,NULL),(4154,28,10,2,NULL),(4155,30,10,2,NULL),(4156,31,10,2,NULL),(4157,89,10,2,NULL),(4158,94,10,2,NULL),(4159,97,10,2,NULL),(4160,101,10,2,NULL),(4161,104,10,2,NULL),(4162,110,10,2,NULL),(4163,3,10,2,NULL),(4164,20,8,2,NULL),(4165,68,8,2,NULL),(4166,77,8,2,NULL),(4167,93,8,2,NULL),(4168,103,8,2,NULL),(4169,108,8,2,NULL),(4170,148,8,2,NULL),(4171,184,8,2,NULL),(4172,186,8,2,NULL),(4173,191,8,2,NULL),(4174,194,8,2,NULL),(4175,197,8,2,NULL),(4176,20,9,2,NULL),(4177,68,9,2,NULL),(4178,77,9,2,NULL),(4179,93,9,2,NULL),(4180,103,9,2,NULL),(4181,108,9,2,NULL),(4182,148,9,2,NULL),(4183,184,9,2,NULL),(4184,186,9,2,NULL),(4185,191,9,2,NULL),(4186,194,9,2,NULL),(4187,197,9,2,NULL),(4188,20,11,2,NULL),(4189,68,11,2,NULL),(4190,77,11,2,NULL),(4191,93,11,2,NULL),(4192,103,11,2,NULL),(4193,108,11,2,NULL),(4194,148,11,2,NULL),(4195,184,11,2,NULL),(4196,186,11,2,NULL),(4197,191,11,2,NULL),(4198,194,11,2,NULL),(4199,197,11,2,NULL),(4200,20,47,2,NULL),(4201,68,47,2,NULL),(4202,77,47,2,NULL),(4203,93,47,2,NULL),(4204,103,47,2,NULL),(4205,108,47,2,NULL),(4206,148,47,2,NULL),(4207,184,47,2,NULL),(4208,186,47,2,NULL),(4209,191,47,2,NULL),(4210,194,47,2,NULL),(4211,197,47,2,NULL),(4212,20,50,2,NULL),(4213,68,50,2,NULL),(4214,77,50,2,NULL),(4215,93,50,2,NULL),(4216,103,50,2,NULL),(4217,108,50,2,NULL),(4218,148,50,2,NULL),(4219,184,50,2,NULL),(4220,186,50,2,NULL),(4221,191,50,2,NULL),(4222,194,50,2,NULL),(4223,197,50,2,NULL),(4224,20,64,2,NULL),(4225,68,64,2,NULL),(4226,77,64,2,NULL),(4227,93,64,2,NULL),(4228,103,64,2,NULL),(4229,108,64,2,NULL),(4230,148,64,2,NULL),(4231,184,64,2,NULL),(4232,186,64,2,NULL),(4233,191,64,2,NULL),(4234,194,64,2,NULL),(4235,197,64,2,NULL),(4236,20,66,2,NULL),(4237,68,66,2,NULL),(4238,77,66,2,NULL),(4239,93,66,2,NULL),(4240,103,66,2,NULL),(4241,108,66,2,NULL),(4242,148,66,2,NULL),(4243,184,66,2,NULL),(4244,186,66,2,NULL),(4245,191,66,2,NULL),(4246,194,66,2,NULL),(4247,197,66,2,NULL),(4248,226,10,2,NULL),(4249,20,14,2,NULL),(4250,68,14,2,NULL),(4251,77,14,2,NULL),(4252,93,14,2,NULL),(4253,103,14,2,NULL),(4254,108,14,2,NULL),(4255,148,14,2,NULL),(4256,184,14,2,NULL),(4257,186,14,2,NULL),(4258,191,14,2,NULL),(4259,194,14,2,NULL),(4260,197,14,2,NULL),(4261,20,16,2,NULL),(4262,68,16,2,NULL),(4263,77,16,2,NULL),(4264,93,16,2,NULL),(4265,103,16,2,NULL),(4266,108,16,2,NULL),(4267,148,16,2,NULL),(4268,184,16,2,NULL),(4269,186,16,2,NULL),(4270,191,16,2,NULL),(4271,194,16,2,NULL),(4272,197,16,2,NULL),(4273,20,17,2,NULL),(4274,68,17,2,NULL),(4275,77,17,2,NULL),(4276,93,17,2,NULL),(4277,103,17,2,NULL),(4278,108,17,2,NULL),(4279,148,17,2,NULL),(4280,184,17,2,NULL),(4281,186,17,2,NULL),(4282,191,17,2,NULL),(4283,194,17,2,NULL),(4284,197,17,2,NULL),(4285,20,51,2,NULL),(4286,68,51,2,NULL),(4287,77,51,2,NULL),(4288,93,51,2,NULL),(4289,103,51,2,NULL),(4290,108,51,2,NULL),(4291,148,51,2,NULL),(4292,184,51,2,NULL),(4293,186,51,2,NULL),(4294,191,51,2,NULL),(4295,194,51,2,NULL),(4296,197,51,2,NULL),(4297,20,52,2,NULL),(4298,68,52,2,NULL),(4299,77,52,2,NULL),(4300,93,52,2,NULL),(4301,103,52,2,NULL),(4302,108,52,2,NULL),(4303,148,52,2,NULL),(4304,184,52,2,NULL),(4305,186,52,2,NULL),(4306,191,52,2,NULL),(4307,194,52,2,NULL),(4308,197,52,2,NULL),(4309,20,65,2,NULL),(4310,68,65,2,NULL),(4311,77,65,2,NULL),(4312,93,65,2,NULL),(4313,103,65,2,NULL),(4314,108,65,2,NULL),(4315,148,65,2,NULL),(4316,184,65,2,NULL),(4317,186,65,2,NULL),(4318,191,65,2,NULL),(4319,194,65,2,NULL),(4320,197,65,2,NULL),(4321,20,74,2,NULL),(4322,68,74,2,NULL),(4323,77,74,2,NULL),(4324,93,74,2,NULL),(4325,103,74,2,NULL),(4326,108,74,2,NULL),(4327,148,74,2,NULL),(4328,184,74,2,NULL),(4329,186,74,2,NULL),(4330,191,74,2,NULL),(4331,194,74,2,NULL),(4332,13,7,2,NULL),(4333,197,74,2,NULL),(4334,13,13,2,NULL),(4335,13,19,2,NULL),(4336,13,29,2,NULL),(4337,13,33,2,NULL),(4338,13,37,2,NULL),(4339,22,8,2,NULL),(4340,226,5,2,NULL),(4341,22,14,2,NULL),(4342,226,8,2,NULL),(4343,22,21,2,NULL),(4344,226,9,2,NULL),(4345,22,36,2,NULL),(4346,226,11,2,NULL),(4347,22,38,2,NULL),(4348,226,47,2,NULL),(4349,22,40,2,NULL),(4350,226,50,2,NULL),(4351,25,8,2,NULL),(4352,226,64,2,NULL),(4353,25,14,2,NULL),(4354,226,66,2,NULL),(4355,25,21,2,NULL),(4356,226,14,2,NULL),(4357,25,36,2,NULL),(4358,226,16,2,NULL),(4359,25,38,2,NULL),(4360,226,17,2,NULL),(4361,25,40,2,NULL),(4362,226,51,2,NULL),(4363,33,8,2,NULL),(4364,226,52,2,NULL),(4365,33,14,2,NULL),(4366,226,65,2,NULL),(4367,33,21,2,NULL),(4368,226,74,2,NULL),(4369,33,36,2,NULL),(4370,33,38,2,NULL),(4371,11,14,2,NULL),(4372,33,40,2,NULL),(4373,23,14,2,NULL),(4374,37,8,2,NULL),(4375,27,14,2,NULL),(4376,37,14,2,NULL),(4377,28,14,2,NULL),(4378,37,21,2,NULL),(4379,30,14,2,NULL),(4380,37,36,2,NULL),(4381,31,14,2,NULL),(4382,37,38,2,NULL),(4383,89,14,2,NULL),(4384,37,40,2,NULL),(4385,94,14,2,NULL),(4386,44,8,2,NULL),(4387,97,14,2,NULL),(4388,44,14,2,NULL),(4389,101,14,2,NULL),(4390,44,21,2,NULL),(4391,104,14,2,NULL),(4392,44,36,2,NULL),(4393,110,14,2,NULL),(4394,44,38,2,NULL),(4395,3,14,2,NULL),(4396,44,40,2,NULL),(4397,126,7,2,NULL),(4398,126,13,2,NULL),(4399,11,16,2,NULL),(4400,126,19,2,NULL),(4401,23,16,2,NULL),(4402,126,29,2,NULL),(4403,27,16,2,NULL),(4404,126,33,2,NULL),(4405,28,16,2,NULL),(4406,126,37,2,NULL),(4407,30,16,2,NULL),(4408,31,16,2,NULL),(4409,89,16,2,NULL),(4410,3,5,2,NULL),(4411,94,16,2,NULL),(4412,11,8,2,NULL),(4413,97,16,2,NULL),(4414,23,8,2,NULL),(4415,101,16,2,NULL),(4416,27,8,2,NULL),(4417,104,16,2,NULL),(4418,28,8,2,NULL),(4419,110,16,2,NULL),(4420,30,8,2,NULL),(4421,3,16,2,NULL),(4422,31,8,2,NULL),(4423,89,8,2,NULL),(4424,94,8,2,NULL),(4425,131,9,2,NULL),(4426,97,8,2,NULL),(4427,131,16,2,NULL),(4428,101,8,2,NULL),(4429,131,22,2,NULL),(4430,104,8,2,NULL),(4431,131,41,2,NULL),(4432,110,8,2,NULL),(4433,131,42,2,NULL),(4434,11,9,2,NULL),(4435,131,44,2,NULL),(4436,23,9,2,NULL),(4437,11,17,2,NULL),(4438,27,9,2,NULL),(4439,23,17,2,NULL),(4440,28,9,2,NULL),(4441,27,17,2,NULL),(4442,30,9,2,NULL),(4443,28,17,2,NULL),(4444,31,9,2,NULL),(4445,30,17,2,NULL),(4446,89,9,2,NULL),(4447,31,17,2,NULL),(4448,94,9,2,NULL),(4449,89,17,2,NULL),(4450,97,9,2,NULL),(4451,94,17,2,NULL),(4452,101,9,2,NULL),(4453,97,17,2,NULL),(4454,104,9,2,NULL),(4455,101,17,2,NULL),(4456,110,9,2,NULL),(4457,104,17,2,NULL),(4458,11,11,2,NULL),(4459,110,17,2,NULL),(4460,23,11,2,NULL),(4461,3,17,2,NULL),(4462,27,11,2,NULL),(4463,28,11,2,NULL),(4464,11,51,2,NULL),(4465,23,51,2,NULL),(4466,30,11,2,NULL),(4467,27,51,2,NULL),(4468,31,11,2,NULL),(4469,28,51,2,NULL),(4470,89,11,2,NULL),(4471,30,51,2,NULL),(4472,94,11,2,NULL),(4473,31,51,2,NULL),(4474,97,11,2,NULL),(4475,89,51,2,NULL),(4476,101,11,2,NULL),(4477,94,51,2,NULL),(4478,104,11,2,NULL),(4479,97,51,2,NULL),(4480,110,11,2,NULL),(4481,101,51,2,NULL),(4482,11,47,2,NULL),(4483,104,51,2,NULL),(4484,23,47,2,NULL),(4485,110,51,2,NULL),(4486,27,47,2,NULL),(4487,3,51,2,NULL),(4488,28,47,2,NULL),(4489,30,47,2,NULL),(4490,31,47,2,NULL),(4491,11,52,2,NULL),(4492,89,47,2,NULL),(4493,23,52,2,NULL),(4494,94,47,2,NULL),(4495,27,52,2,NULL),(4496,97,47,2,NULL),(4497,28,52,2,NULL),(4498,101,47,2,NULL),(4499,30,52,2,NULL),(4500,104,47,2,NULL),(4501,31,52,2,NULL),(4502,110,47,2,NULL),(4503,89,52,2,NULL),(4504,11,50,2,NULL),(4505,94,52,2,NULL),(4506,23,50,2,NULL),(4507,97,52,2,NULL),(4508,27,50,2,NULL),(4509,101,52,2,NULL),(4510,28,50,2,NULL),(4511,104,52,2,NULL),(4512,30,50,2,NULL),(4513,110,52,2,NULL),(4514,31,50,2,NULL),(4515,3,52,2,NULL),(4516,89,50,2,NULL),(4517,94,50,2,NULL),(4518,11,65,2,NULL),(4519,97,50,2,NULL),(4520,23,65,2,NULL),(4521,101,50,2,NULL),(4522,27,65,2,NULL),(4523,104,50,2,NULL),(4524,28,65,2,NULL),(4525,110,50,2,NULL),(4526,30,65,2,NULL),(4527,11,64,2,NULL),(4528,31,65,2,NULL),(4529,23,64,2,NULL),(4530,89,65,2,NULL),(4531,27,64,2,NULL),(4532,94,65,2,NULL),(4533,28,64,2,NULL),(4534,97,65,2,NULL),(4535,30,64,2,NULL),(4536,101,65,2,NULL),(4537,31,64,2,NULL),(4538,104,65,2,NULL),(4539,89,64,2,NULL),(4540,110,65,2,NULL),(4541,94,64,2,NULL),(4542,3,65,2,NULL),(4543,97,64,2,NULL),(4544,101,64,2,NULL),(4545,104,64,2,NULL),(4546,11,74,2,NULL),(4547,23,74,2,NULL),(4548,110,64,2,NULL),(4549,27,74,2,NULL),(4550,11,66,2,NULL),(4551,28,74,2,NULL),(4552,23,66,2,NULL),(4553,30,74,2,NULL),(4554,27,66,2,NULL),(4555,31,74,2,NULL),(4556,28,66,2,NULL),(4557,89,74,2,NULL),(4558,30,66,2,NULL),(4559,94,74,2,NULL),(4560,31,66,2,NULL),(4561,97,74,2,NULL),(4562,89,66,2,NULL),(4563,101,74,2,NULL),(4564,94,66,2,NULL),(4565,104,74,2,NULL),(4566,97,66,2,NULL),(4567,110,74,2,NULL),(4568,101,66,2,NULL),(4569,3,74,2,NULL),(4570,104,66,2,NULL),(4571,110,66,2,NULL),(4572,3,8,2,NULL),(4573,3,9,2,NULL),(4574,3,11,2,NULL),(4575,3,47,2,NULL),(4576,3,50,2,NULL),(4577,3,64,2,NULL),(4578,3,66,2,NULL),(4579,180,9,2,NULL),(4580,180,16,2,NULL),(4581,180,22,2,NULL),(4582,180,41,2,NULL),(4583,180,42,2,NULL),(4584,180,44,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:45
