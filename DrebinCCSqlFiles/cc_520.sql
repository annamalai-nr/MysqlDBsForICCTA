-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_520
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (12,'SMS_SEND_ACTIOIN'),(2,'android.intent.action.BOOT_COMPLETED'),(25,'android.intent.action.CHOOSER'),(32,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(23,'android.intent.action.PACKAGE_ADDED'),(22,'android.intent.action.PACKAGE_CHANGED'),(24,'android.intent.action.PACKAGE_REMOVED'),(8,'android.intent.action.SET_WALLPAPER'),(17,'android.intent.action.VIEW'),(30,'android.intent.action.WALLPAPER_CHANGED'),(13,'android.net.conn.CONNECTIVITY_CHANGE'),(7,'android.provider.Telephony.SMS_RECEIVED'),(5,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(35,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(21,'android.settings.WIRELESS_SETTINGS'),(31,'com.android.contacts.action.FILTER_CONTACTS'),(10,'com.android.launcher.action.INSTALL_SHORTCUT'),(11,'com.android.launcher.action.UNINSTALL_SHORTCUT'),(20,'com.jx.Action_CopyResError'),(15,'com.jx.MainActivity.CostInfo'),(14,'com.jx.MainActivity.ErrorInfo'),(26,'com.jx.MainActivity.InstallConfirmInfo'),(33,'com.jx.MainActivity.OpenLWP'),(34,'com.jx.MainActivity.RepeateInstall'),(27,'com.jx.MainActivity.SaveID'),(29,'com.jx.action.ExitBootReceiver'),(18,'com.jx.ad.ADService.ConfirmInstallInfo'),(6,'com.jx.ad.ADService.Init'),(28,'com.jx.ad.ADService.InitHasUpdate'),(19,'com.jx.ad.ADService.InstallRes'),(3,'com.jx.ad.ADService.Run'),(4,'com.jx.ad.ADService.RunCancel'),(16,'com.jx.ad.BootSmsReceiverService.Exit'),(9,'com.jx.ad.BootSmsReceiverService.Start');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.km.installer',1),(2,'com.jx.theme.n2114792205',1),(3,'com.km.launcher',1),(4,'com.jx.theme.n1904297018',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.km.installer.InstallerActivity'),(2,1,'com.km.charge.MainActivity'),(3,2,'com.jx.MainActivity'),(4,1,'com.km.charge.MainService'),(5,1,'com.km.charge.CycleService'),(6,1,'com.km.charge.BootReceiver'),(7,2,'com.jx.SettingActivity'),(8,2,'com.jx.WelcomeActivity'),(9,2,'com.jx.ad.AndroidThemeService'),(10,1,'com.km.charge.HoldMessage'),(11,3,'com.km.launcher.Launcher'),(12,3,'com.km.launcher.WallpaperChooser'),(13,2,'com.jx.ad.BootSmsReceiverService'),(14,3,'com.km.theme.ThemeListActivity'),(15,2,'com.jx.ad.BootReceiver'),(16,4,'com.jx.MainActivity'),(17,3,'com.km.charge.MainActivity'),(18,3,'com.km.ad.AdService'),(19,3,'com.km.charge.CycleService'),(20,3,'com.km.launcher.InstallShortcutReceiver'),(21,4,'com.jx.SettingActivity'),(22,3,'com.km.launcher.UninstallShortcutReceiver'),(23,4,'com.jx.WelcomeActivity'),(24,4,'com.jx.ad.AndroidThemeService'),(25,3,'com.km.charge.BootReceiver'),(26,3,'com.km.launcher.LauncherProvider'),(27,4,'com.jx.ad.BootSmsReceiverService'),(28,4,'com.jx.ad.BootReceiver'),(29,1,'com.km.tool.ApnManager'),(30,1,'com.km.charge.SendMessage$SendMessageReceiver'),(31,1,'com.km.charge.HttpBox$ConnectivityReceiver'),(32,1,'com.km.tool.Util'),(33,2,'com.jx.ad.AndroidThemeService$6'),(34,2,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(35,2,'com.jx.SettingActivity$6'),(36,2,'com.jx.ad.AndroidThemeService$2'),(37,4,'com.jx.ad.AndroidThemeService$4'),(38,4,'com.jx.ad.AndroidThemeService$2'),(39,2,'com.jx.tool.ApnManager'),(40,4,'com.jx.ad.AndroidThemeService$MMSReceiver'),(41,4,'com.jx.tool.ApnManager'),(42,2,'com.jx.ad.BootSmsReceiverService$SmsReceiver'),(43,4,'com.jx.ad.AndroidThemeService$7'),(44,2,'com.jx.MainActivity$ControlReceiver$6$1'),(45,4,'com.jx.ad.AndroidThemeService$6'),(46,2,'com.jx.ad.AndroidThemeService$4'),(47,4,'com.jx.MainActivity$4'),(48,2,'com.jx.MainActivity$ControlReceiver$1'),(49,4,'com.jx.ad.AndroidThemeService$5'),(50,3,'com.km.tool.ApnManager'),(51,2,'com.jx.ad.AndroidThemeService$SmsReceiver'),(52,3,'com.km.charge.HoldMessage'),(53,2,'com.jx.ad.AndroidThemeService$7'),(54,3,'com.km.launcher.MyAnalogClock$1'),(55,3,'com.km.ad.AdService$1'),(56,3,'com.km.launcher.Launcher$WallpaperIntentReceiver'),(57,3,'com.km.theme.ThemeManager'),(58,2,'com.jx.ad.AndroidThemeService$MMSReceiver'),(59,3,'com.km.charge.SendMessage$SendMessageReceiver'),(60,3,'com.km.launcher.Search'),(61,2,'com.jx.ad.AndroidThemeService$8'),(62,3,'com.km.launcher.LauncherModel'),(63,3,'com.km.charge.HttpBox$ConnectivityReceiver'),(64,3,'com.km.tool.Http$ConnectivityReceiver'),(65,2,'com.jx.ad.ServiceControlReciver'),(66,3,'com.km.launcher.Launcher$ApplicationsIntentReceiver'),(67,4,'com.jx.MainActivity$ControlReceiver$1'),(68,3,'com.km.tool.Util'),(69,2,'com.jx.SettingActivity$1'),(70,2,'com.jx.tool.Utility'),(71,2,'com.jx.MainActivity$ControlReceiver'),(72,4,'com.jx.SettingActivity$6'),(73,2,'com.jx.ad.AndroidThemeService$5'),(74,4,'com.jx.ad.AndroidThemeService$3'),(75,4,'com.jx.ad.AndroidThemeService$8'),(76,2,'com.jx.ad.AndroidThemeService$3'),(77,4,'com.jx.ad.AndroidThemeService$SmsReceiver'),(78,2,'com.jx.MainActivity$1'),(79,4,'com.jx.ad.ServiceControlReciver'),(80,2,'com.jx.MainActivity$4'),(81,4,'com.jx.MainActivity$ControlReceiver'),(82,4,'com.jx.SettingActivity$1'),(83,4,'com.jx.MainActivity$ControlReceiver$6$1'),(84,4,'com.jx.tool.Utility'),(85,4,'com.jx.MainActivity$1'),(86,4,'com.jx.ad.BootSmsReceiverService$BootSmsReceiverServiceReciver'),(87,4,'com.jx.ad.BootSmsReceiverService$SmsReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,10,'data'),(2,10,'pdus'),(3,24,'respid'),(4,20,'android.intent.extra.shortcut.INTENT'),(5,11,'android.intent.extra.livefolder.NAME'),(6,11,'launcher.rename_folder'),(7,11,'launcher.add_screen'),(8,20,'duplicate'),(9,11,'android.intent.extra.livefolder.BASE_INTENT'),(10,11,'android.intent.extra.shortcut.INTENT'),(11,11,'launcher.rename_folder_id'),(12,20,'android.intent.extra.shortcut.ICON_RESOURCE'),(13,22,'android.intent.extra.shortcut.NAME'),(14,11,'android.intent.extra.shortcut.ICON_RESOURCE'),(15,20,'android.intent.extra.shortcut.ICON'),(16,11,'android.intent.extra.shortcut.ICON'),(17,11,'data'),(18,11,'launcher.add_countX'),(19,11,'launcher.add_occupied_cells'),(20,11,'android.intent.extra.livefolder.ICON'),(21,14,'launcher.user_folder'),(22,15,'launcher.user_folder'),(23,11,'launcher.user_folder'),(24,11,'launcher.add_cellX'),(25,14,'launcher.all_apps_folder'),(26,15,'launcher.all_apps_folder'),(27,11,'launcher.all_apps_folder'),(28,22,'duplicate'),(29,22,'android.intent.extra.shortcut.INTENT'),(30,11,'launcher.add_cellY'),(31,11,'launcher.add_spanY'),(32,20,'android.intent.extra.shortcut.NAME'),(33,11,'android.intent.extra.shortcut.NAME'),(34,11,'launcher.current_screen'),(35,11,'launcher.add_spanX'),(36,11,'launcher.add_countY'),(37,9,'resownerid'),(38,9,'respid'),(39,24,'resownerid');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,17,'a',0,NULL,NULL),(16,15,'r',1,NULL,NULL),(17,16,'a',1,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'r',1,26,NULL),(21,21,'a',0,NULL,NULL),(22,22,'r',1,27,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,25,'r',1,NULL,NULL),(27,26,'p',0,NULL,NULL),(28,26,'p',0,NULL,NULL),(29,27,'s',1,NULL,NULL),(30,28,'r',1,NULL,NULL),(31,30,'r',1,NULL,NULL),(32,31,'r',1,NULL,NULL),(33,34,'r',1,NULL,NULL),(34,40,'r',1,NULL,NULL),(35,42,'r',1,NULL,NULL),(36,51,'r',1,NULL,NULL),(37,20,'r',1,NULL,NULL),(38,22,'r',1,NULL,NULL),(39,52,'r',1,NULL,NULL),(40,54,'r',1,NULL,NULL),(41,56,'r',1,NULL,NULL),(42,58,'r',1,NULL,NULL),(43,59,'r',1,NULL,NULL),(44,63,'r',1,NULL,NULL),(45,64,'r',1,NULL,NULL),(46,65,'r',1,NULL,NULL),(47,66,'r',1,NULL,NULL),(48,71,'r',1,NULL,NULL),(49,77,'r',1,NULL,NULL),(50,79,'r',1,NULL,NULL),(51,81,'r',1,NULL,NULL),(52,86,'r',1,NULL,NULL),(53,87,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,10),(2,1,4),(3,2,2),(4,3,10),(5,3,4),(6,4,10),(7,4,4),(8,5,10),(9,5,4),(10,6,4),(11,6,10),(12,7,6),(13,7,1),(14,8,10),(15,8,4),(16,9,10),(17,9,4),(18,10,10),(19,10,4),(20,11,9),(21,12,9),(22,13,8),(23,13,7),(24,13,3),(25,14,9),(26,15,3),(27,16,3),(28,16,7),(29,16,8),(30,17,24),(31,18,24),(32,19,9),(33,20,16),(34,21,24),(35,22,3),(36,23,24),(37,24,7),(38,24,8),(39,24,3),(40,25,24),(41,26,9),(42,27,23),(43,27,21),(44,27,17),(45,28,7),(46,28,8),(47,28,3),(48,29,24),(49,30,9),(50,31,21),(51,31,17),(52,31,23),(53,32,9),(54,33,7),(55,34,14),(56,34,15),(57,35,22),(58,36,9),(59,37,11),(60,38,9),(61,39,15),(62,39,14),(63,40,15),(64,40,14),(65,41,9),(66,42,22),(67,43,11),(68,43,14),(69,44,11),(70,44,15),(71,45,9),(72,46,11),(73,47,15),(74,47,14),(75,48,14),(76,48,15),(77,49,11),(78,50,15),(79,50,14),(80,51,11),(81,52,9),(82,53,21),(83,53,23),(84,53,17),(85,54,9),(86,55,20),(87,56,24),(88,57,15),(89,57,11),(90,58,14),(91,58,15),(92,59,25),(93,59,11),(94,60,11),(95,61,3),(96,61,8),(97,61,7),(98,62,24),(99,63,22),(100,64,14),(101,64,15),(102,65,15),(103,65,14),(104,66,3),(105,67,11),(106,68,11),(107,69,11),(108,70,17),(109,70,21),(110,70,23),(111,71,3),(112,72,22),(113,73,15),(114,73,14),(115,74,28),(116,75,27),(117,76,11),(118,76,15),(119,77,7),(120,77,9),(121,77,8),(122,78,15),(123,78,14),(124,80,22),(125,79,11),(126,81,9),(127,82,20),(128,83,15),(129,83,11),(130,84,15),(131,84,14),(132,85,15),(133,85,11),(134,86,22),(135,87,17),(136,87,21),(137,87,23),(138,89,25),(139,89,11),(140,88,15),(141,88,14),(142,90,9),(143,91,14),(144,91,15),(145,92,14),(146,92,11),(147,93,24),(148,95,15),(149,95,14),(150,94,14),(151,94,15),(152,96,14),(153,96,15),(154,97,9),(155,98,24),(156,99,11),(157,100,14),(158,100,15),(159,102,15),(160,102,14),(161,101,11),(162,101,14),(163,104,14),(164,104,15),(165,103,11),(166,103,15),(167,105,20),(168,105,11),(169,106,15),(170,106,14),(171,107,9),(172,108,20),(173,108,11),(174,109,24),(175,110,15),(176,110,11),(177,111,15),(178,111,14),(179,112,20),(180,114,27),(181,113,15),(182,113,11),(183,115,9),(184,116,24),(185,117,15),(186,117,14),(187,118,11),(188,118,20),(189,119,20),(190,120,14),(191,120,15),(192,121,11),(193,121,14),(194,122,9),(195,124,11),(196,123,11),(197,125,26),(198,125,11),(199,126,24),(200,127,14),(201,127,15),(202,128,9),(203,130,11),(204,129,20),(205,129,11),(206,131,14),(207,131,15),(208,132,24),(209,133,22),(210,134,3),(211,134,8),(212,134,7),(213,136,15),(214,136,11),(215,135,14),(216,135,11),(217,137,11),(218,138,11),(219,138,15),(220,139,27),(221,140,15),(222,140,14),(223,141,23),(224,141,21),(225,142,9),(226,143,11),(227,144,11),(228,144,15),(229,145,8),(230,145,7),(231,146,14),(232,146,15),(233,147,17),(234,148,22),(235,149,8),(236,149,7),(237,149,3),(238,150,20),(239,151,14),(240,151,15),(241,152,9),(242,153,20),(243,154,11),(244,154,14),(245,155,24),(246,156,22),(247,157,25),(248,157,11),(249,158,11),(250,159,11),(251,160,9),(252,161,11),(253,162,11),(254,163,23),(255,163,21),(256,163,17),(257,164,20),(258,165,14),(259,165,15),(260,166,7),(261,166,8),(262,166,3),(263,167,24),(264,168,14),(265,168,15),(266,169,14),(267,169,11),(268,170,22),(269,171,20),(270,172,30),(271,173,11),(272,174,21),(273,175,22),(274,176,15),(275,176,14),(276,177,14),(277,177,15),(278,178,24),(279,179,14),(280,179,15),(281,180,17),(282,180,21),(283,180,23),(284,181,14),(285,181,11),(286,182,22),(287,183,15),(288,183,11),(289,184,14),(290,184,15),(291,185,17),(292,186,24),(293,187,24),(294,188,17),(295,189,24),(296,190,21),(297,190,24),(298,190,23),(299,191,23),(300,191,17),(301,191,21),(302,192,24),(303,193,24),(304,194,24),(305,195,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,29,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(2,2,'<com.km.charge.MainActivity: void onClick(android.content.DialogInterface,int)>',10,'s',NULL),(3,29,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(4,29,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(5,29,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(6,29,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(7,32,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',8,'s',NULL),(8,29,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(9,29,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(10,29,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(11,33,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(12,9,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(13,35,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(14,36,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(15,3,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(16,3,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(17,37,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(18,38,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(19,39,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(20,15,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(21,41,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(22,3,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(23,43,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(24,44,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(25,45,'<com.jx.ad.AndroidThemeService$6: void run()>',193,'r',NULL),(26,46,'<com.jx.ad.AndroidThemeService$4: void run()>',120,'r',NULL),(27,47,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(28,48,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(29,49,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(30,36,'<com.jx.ad.AndroidThemeService$2: void run()>',101,'r',NULL),(31,16,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(32,39,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(33,7,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(34,50,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(35,22,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(36,33,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(37,11,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(38,53,'<com.jx.ad.AndroidThemeService$7: void run()>',63,'r',NULL),(39,50,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(40,55,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(41,36,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(42,22,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(43,57,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(44,60,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(45,61,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(46,62,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(47,50,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(48,50,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(49,11,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(50,50,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(51,11,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(52,39,'<com.jx.tool.ApnManager: int CurrentApn()>',10,'p',NULL),(53,67,'<com.jx.MainActivity$ControlReceiver$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(54,9,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(55,20,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(56,38,'<com.jx.ad.AndroidThemeService$2: void run()>',73,'r',NULL),(57,60,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(58,50,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(59,68,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(60,11,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(61,69,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(62,37,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(63,22,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(64,50,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(65,50,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(66,3,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL),(67,11,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(68,62,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(69,11,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(70,16,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',20,'r',NULL),(71,3,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(72,22,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(73,50,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(74,26,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(75,26,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(76,11,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(77,70,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(78,50,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(79,62,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(80,22,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(81,61,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(82,62,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(83,11,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(84,55,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(85,11,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(86,22,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(87,72,'<com.jx.SettingActivity$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(88,50,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(89,68,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(90,73,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(91,50,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(92,57,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(93,74,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(94,50,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(95,50,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(96,50,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(97,33,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(98,45,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(99,11,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(100,50,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(101,62,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(102,50,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(103,11,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(104,50,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(105,62,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(106,50,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(107,46,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(108,62,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(109,75,'<com.jx.ad.AndroidThemeService$8: void run()>',11,'r',NULL),(110,11,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(111,50,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(112,62,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(113,60,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(114,26,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(115,73,'<com.jx.ad.AndroidThemeService$5: void run()>',95,'r',NULL),(116,75,'<com.jx.ad.AndroidThemeService$8: void run()>',31,'r',NULL),(117,50,'<com.km.tool.ApnManager: int CreateWapApn()>',30,'p',0),(118,62,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(119,62,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(120,50,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(121,57,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(122,76,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(123,62,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(124,11,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(125,68,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(126,24,'<com.jx.ad.AndroidThemeService: void costSmsOneByOne()>',53,'r',NULL),(127,50,'<com.km.tool.ApnManager: int CreateGPRSApn()>',27,'p',NULL),(128,76,'<com.jx.ad.AndroidThemeService$3: void run()>',35,'r',NULL),(129,62,'<com.km.launcher.LauncherModel: void addItemToDatabase(android.content.Context,com.km.launcher.ItemInfo,long,int,int,int,boolean)>',17,'p',NULL),(130,62,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(131,55,'<com.km.ad.AdService$1: void run()>',11,'s',NULL),(132,45,'<com.jx.ad.AndroidThemeService$6: void run()>',175,'r',NULL),(133,22,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(134,78,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(135,62,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(136,11,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(137,11,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(138,11,'<com.km.launcher.Launcher: void startActivitySafely(android.content.Intent)>',3,'a',0),(139,26,'<com.km.launcher.LauncherProvider: void sendNotify(android.net.Uri)>',9,'p',0),(140,50,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(141,23,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(142,39,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(143,11,'<com.km.launcher.Launcher: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(144,60,'<com.km.launcher.Search: void sendLaunchIntent(java.lang.String,android.net.Uri,java.lang.String,android.os.Bundle,int,java.lang.String,android.server.search.SearchableInfo)>',20,'a',NULL),(145,8,'<com.jx.WelcomeActivity: void onClick(android.view.View)>',9,'a',NULL),(146,50,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(147,16,'<com.jx.MainActivity: void onResume()>',78,'a',NULL),(148,22,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'p',NULL),(149,80,'<com.jx.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(150,62,'<com.km.launcher.LauncherModel: boolean shortcutExists(android.content.Context,java.lang.String,android.content.Intent)>',12,'p',NULL),(151,50,'<com.km.tool.ApnManager: void delete(int)>',8,'p',NULL),(152,46,'<com.jx.ad.AndroidThemeService$4: void run()>',57,'s',NULL),(153,20,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(154,62,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(155,37,'<com.jx.ad.AndroidThemeService$4: void run()>',100,'a',NULL),(156,22,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(157,68,'<com.km.tool.Util: void startServiceWithSingleMode(android.content.Context,java.lang.Class)>',7,'s',NULL),(158,11,'<com.km.launcher.Launcher: void startWallpaper()>',5,'a',NULL),(159,62,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(160,33,'<com.jx.ad.AndroidThemeService$6: void run()>',158,'r',NULL),(161,62,'<com.km.launcher.LauncherModel: com.km.launcher.FolderInfo getFolderById(android.content.Context,long)>',12,'p',NULL),(162,62,'<com.km.launcher.LauncherModel: com.km.launcher.Widget getPhotoFrameInfo(android.content.Context,int,int,int)>',15,'p',NULL),(163,82,'<com.jx.SettingActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(164,20,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(165,50,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',9,'p',NULL),(166,3,'<com.jx.MainActivity: void RunningADService(java.lang.String)>',39,'s',NULL),(167,24,'<com.jx.ad.AndroidThemeService: void saveCostResID()>',8,'r',NULL),(168,50,'<com.km.tool.ApnManager: int CreateWapApn()>',27,'p',NULL),(169,57,'<com.km.theme.ThemeManager: void setup()>',32,'a',NULL),(170,22,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(171,20,'<com.km.launcher.InstallShortcutReceiver: boolean findEmptyCell(android.content.Context,int[],int)>',19,'p',NULL),(172,28,'<com.jx.ad.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'s',NULL),(173,11,'<com.km.launcher.Launcher: void registerContentObservers()>',4,'p',NULL),(174,21,'<com.jx.SettingActivity: void UsedTheme()>',25,'a',NULL),(175,22,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'p',NULL),(176,50,'<com.km.tool.ApnManager: int getApnId(java.lang.String)>',6,'p',NULL),(177,50,'<com.km.tool.ApnManager: boolean SetDefaultAPN(int)>',19,'p',NULL),(178,41,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',37,'p',0),(179,50,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(180,83,'<com.jx.MainActivity$ControlReceiver$6$1: void run()>',20,'r',NULL),(181,62,'<com.km.launcher.LauncherModel: void updateItemInDatabase(android.content.Context,com.km.launcher.ItemInfo)>',8,'p',NULL),(182,22,'<com.km.launcher.UninstallShortcutReceiver: void onReceive(android.content.Context,android.content.Intent)>',25,'p',NULL),(183,11,'<com.km.launcher.Launcher: boolean onKeyDown(int,android.view.KeyEvent)>',27,'a',NULL),(184,50,'<com.km.tool.ApnManager: int CreateGPRSApn()>',30,'p',0),(185,16,'<com.jx.MainActivity: void onResume()>',28,'a',NULL),(186,49,'<com.jx.ad.AndroidThemeService$5: void run()>',113,'r',NULL),(187,74,'<com.jx.ad.AndroidThemeService$3: void run()>',94,'r',NULL),(188,16,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',69,'r',NULL),(189,38,'<com.jx.ad.AndroidThemeService$2: void run()>',92,'r',NULL),(190,84,'<com.jx.tool.Utility: void InstallApk(android.content.Context)>',17,'a',NULL),(191,85,'<com.jx.MainActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(192,41,'<com.jx.tool.ApnManager: void SetDefaultAPN(int)>',9,'p',NULL),(193,41,'<com.jx.tool.ApnManager: int CreateApn(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)>',34,'p',NULL),(194,45,'<com.jx.ad.AndroidThemeService$6: void run()>',184,'r',NULL),(195,16,'<com.jx.MainActivity: void onCreate(android.os.Bundle)>',49,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,14),(2,4,15),(3,5,17),(4,6,14),(5,8,18),(6,9,3),(7,10,6),(8,11,14),(9,12,4),(10,13,19),(11,14,14),(12,15,9),(13,16,16),(14,17,14),(15,18,20),(16,19,14),(17,20,14),(18,21,17),(19,22,21),(20,23,14),(21,24,14),(22,25,3),(23,26,1),(24,27,19),(25,28,19),(26,29,3),(27,30,14),(28,31,25),(29,32,25),(30,33,6),(31,34,25),(32,35,14),(33,36,4),(34,37,25),(35,39,25),(36,40,14),(37,41,18),(38,42,25),(39,43,18),(40,44,25),(41,46,25),(42,47,17),(43,48,6),(44,49,26),(45,50,17),(46,51,4),(47,52,25),(48,53,25),(49,54,21),(50,55,25),(51,56,27),(52,57,14),(53,58,17),(54,59,25),(55,60,25),(56,61,17),(57,63,17),(58,64,25),(59,65,28),(60,66,25),(61,68,29),(62,70,25),(63,71,18),(64,73,3),(65,75,6),(66,76,14),(67,77,4),(68,79,31),(69,80,19),(70,81,31),(71,83,32),(72,82,32),(73,84,17),(74,86,14),(75,88,16),(76,89,15),(77,90,14),(78,91,31),(79,92,32),(80,94,26),(81,95,17),(82,96,14),(83,97,14),(84,98,17),(85,100,14),(86,103,15),(87,104,16),(88,106,15),(89,107,17),(90,108,25),(91,109,25),(92,110,35),(93,112,25),(94,113,17),(95,114,35),(96,115,25),(97,116,17),(98,118,25),(99,119,17),(100,120,25),(101,121,25),(102,122,28),(103,124,25),(104,126,25),(105,127,14),(106,128,25),(107,129,17),(108,130,25),(109,131,18),(110,132,25),(111,133,27),(112,135,25),(113,136,4),(114,137,25),(115,138,9),(116,139,25),(117,140,19),(118,141,1),(119,142,25),(120,143,3),(121,144,6),(122,145,20),(123,146,3),(124,147,31),(125,149,32),(126,150,4),(127,151,14),(128,152,18),(129,153,6),(130,154,14),(131,155,19),(132,156,16),(133,157,14),(134,159,17),(135,160,14),(136,161,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,26,1),(2,110,2),(3,114,2),(4,141,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/km/charge/MainService'),(2,2,'com/km/charge/CycleService'),(3,7,'com/jx/WelcomeActivity'),(4,15,'com/jx/ad/BootSmsReceiverService'),(5,25,'com/jx/ad/AndroidThemeService'),(6,26,'com.nd.android.launcher.Launcher'),(7,27,'com/jx/ad/AndroidThemeService'),(8,33,'com/jx/ad/AndroidThemeService'),(9,38,'com/km/ad/AdService'),(10,45,'com/km/charge/MainActivity'),(11,43,'com/jx/ad/AndroidThemeService'),(12,51,'com/jx/ad/AndroidThemeService'),(13,62,'com/km/charge/CycleService'),(14,67,'com/km/theme/ThemeListActivity'),(15,69,'com/km/theme/ThemeListActivity'),(16,72,'com/jx/WelcomeActivity'),(17,74,'com.android.packageinstaller.PackageInstallerActivity'),(18,78,'com/km/ad/AdService'),(19,85,'com/km/charge/CycleService'),(20,87,'com/km/charge/MainActivity'),(21,93,'com.android.packageinstaller.PackageInstallerActivity'),(22,99,'com/km/charge/MainActivity'),(23,101,'com/km/theme/ThemeListActivity'),(24,102,'com/km/charge/CycleService'),(25,105,'com/km/ad/AdService'),(26,111,'com/km/theme/ThemeListActivity'),(27,117,'com/jx/WelcomeActivity'),(28,123,'com.android.packageinstaller.PackageInstallerActivity'),(29,125,'com/km/charge/CycleService'),(30,131,'com/jx/ad/AndroidThemeService'),(31,134,'com/km/charge/MainActivity'),(32,136,'com/jx/ad/AndroidThemeService'),(33,138,'com/jx/ad/BootSmsReceiverService'),(34,141,'com.nd.android.launcher.Launcher'),(35,143,'com/jx/ad/AndroidThemeService'),(36,144,'com/jx/ad/AndroidThemeService'),(37,148,'com/jx/WelcomeActivity'),(38,155,'com/jx/ad/AndroidThemeService'),(39,158,'com.android.packageinstaller.PackageInstallerActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,7),(2,4,8),(3,5,9),(4,6,10),(5,11,11),(6,14,12),(7,17,14),(8,18,15),(9,19,16),(10,20,17),(11,21,18),(12,23,19),(13,24,20),(14,30,24),(15,35,25),(16,40,27),(17,47,29),(18,49,31),(19,50,32),(20,56,39),(21,58,40),(22,57,41),(23,61,43),(24,63,44),(25,74,51),(26,76,56),(27,82,58),(28,83,57),(29,84,60),(30,86,62),(31,89,67),(32,90,69),(33,93,74),(34,92,75),(35,94,77),(36,95,80),(37,96,82),(38,97,84),(39,98,86),(40,100,89),(41,103,91),(42,107,97),(43,106,98),(44,113,102),(45,116,104),(46,119,105),(47,123,111),(48,127,115),(49,129,117),(50,133,120),(51,145,129),(52,149,130),(53,151,131),(54,154,132),(55,157,133),(56,158,134),(57,159,135),(58,160,138);
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'CostTips'),(2,4,'CostTips'),(3,6,'CostTips'),(4,6,'SetNetwork'),(5,8,'resownerid'),(6,8,'respid'),(7,9,'resownerid'),(8,9,'respid'),(9,10,'resownerid'),(10,10,'respid'),(11,11,'CostTips'),(12,12,'resownerid'),(13,12,'respid'),(14,13,'resownerid'),(15,13,'respid'),(16,14,'CostTips'),(17,17,'CostTips'),(18,19,'CostTips'),(19,20,'CostTips'),(20,23,'CostTips'),(21,24,'CostTips'),(22,25,'resownerid'),(23,25,'respid'),(24,27,'resownerid'),(25,26,'from'),(26,27,'respid'),(27,28,'resownerid'),(28,28,'respid'),(29,29,'resownerid'),(30,30,'CostTips'),(31,29,'respid'),(32,31,'android.intent.extra.INTENT'),(33,32,'android.intent.extra.INTENT'),(34,33,'resownerid'),(35,33,'respid'),(36,34,'android.intent.extra.TITLE'),(37,35,'CostTips'),(38,34,'android.intent.extra.INTENT'),(39,36,'resownerid'),(40,37,'android.intent.extra.INTENT'),(41,36,'respid'),(42,39,'android.intent.extra.TITLE'),(43,40,'CostTips'),(44,41,'resownerid'),(45,39,'android.intent.extra.INTENT'),(46,41,'respid'),(47,42,'android.intent.extra.INTENT'),(48,43,'resownerid'),(49,44,'android.intent.extra.TITLE'),(50,43,'respid'),(51,44,'android.intent.extra.INTENT'),(52,46,'android.intent.extra.TITLE'),(53,48,'resownerid'),(54,46,'android.intent.extra.INTENT'),(55,48,'respid'),(56,51,'resownerid'),(57,51,'respid'),(58,52,'android.intent.extra.INTENT'),(59,53,'android.intent.extra.INTENT'),(60,55,'android.intent.extra.TITLE'),(61,55,'android.intent.extra.INTENT'),(62,56,'respid'),(63,57,'CostTips'),(64,57,'SetNetwork'),(65,59,'android.intent.extra.INTENT'),(66,60,'android.intent.extra.TITLE'),(67,60,'android.intent.extra.INTENT'),(68,64,'android.intent.extra.INTENT'),(69,65,'resownerid'),(70,65,'respid'),(71,66,'android.intent.extra.TITLE'),(72,66,'android.intent.extra.INTENT'),(73,70,'android.intent.extra.TITLE'),(74,71,'resownerid'),(75,70,'android.intent.extra.INTENT'),(76,71,'respid'),(77,73,'resownerid'),(78,73,'respid'),(79,75,'resownerid'),(80,75,'respid'),(81,76,'CostTips'),(82,77,'resownerid'),(83,77,'respid'),(84,79,'com.android.contacts.extra.FILTER_TEXT'),(85,80,'resownerid'),(86,81,'com.android.contacts.extra.FILTER_TEXT'),(87,80,'respid'),(88,86,'CostTips'),(89,89,'CostTips'),(90,90,'CostTips'),(91,91,'com.android.contacts.extra.FILTER_TEXT'),(92,96,'CostTips'),(93,97,'CostTips'),(94,100,'CostTips'),(95,103,'CostTips'),(96,106,'CostTips'),(97,108,'android.intent.extra.INTENT'),(98,109,'android.intent.extra.INTENT'),(99,112,'android.intent.extra.TITLE'),(100,112,'android.intent.extra.INTENT'),(101,115,'android.intent.extra.INTENT'),(102,118,'android.intent.extra.TITLE'),(103,118,'android.intent.extra.INTENT'),(104,120,'android.intent.extra.INTENT'),(105,121,'android.intent.extra.TITLE'),(106,122,'resownerid'),(107,121,'android.intent.extra.INTENT'),(108,122,'respid'),(109,124,'android.intent.extra.TITLE'),(110,124,'android.intent.extra.INTENT'),(111,126,'android.intent.extra.INTENT'),(112,127,'CostTips'),(113,128,'android.intent.extra.INTENT'),(114,130,'android.intent.extra.TITLE'),(115,130,'android.intent.extra.INTENT'),(116,131,'resownerid'),(117,131,'respid'),(118,132,'android.intent.extra.INTENT'),(119,133,'respid'),(120,135,'android.intent.extra.TITLE'),(121,135,'android.intent.extra.INTENT'),(122,136,'resownerid'),(123,136,'respid'),(124,137,'android.intent.extra.INTENT'),(125,139,'android.intent.extra.TITLE'),(126,140,'resownerid'),(127,139,'android.intent.extra.INTENT'),(128,140,'respid'),(129,142,'android.intent.extra.TITLE'),(130,141,'from'),(131,142,'android.intent.extra.INTENT'),(132,143,'resownerid'),(133,143,'respid'),(134,144,'resownerid'),(135,144,'respid'),(136,146,'resownerid'),(137,147,'com.android.contacts.extra.FILTER_TEXT'),(138,146,'respid'),(139,150,'resownerid'),(140,150,'respid'),(141,151,'CostTips'),(142,152,'resownerid'),(143,152,'respid'),(144,153,'resownerid'),(145,154,'CostTips'),(146,153,'respid'),(147,155,'resownerid'),(148,155,'respid'),(149,157,'CostTips'),(150,160,'CostTips');
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
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,4,4),(6,5,5),(7,6,1),(8,7,1),(9,8,6),(10,9,7),(11,10,8),(12,12,8),(13,11,5),(14,13,9),(15,14,1),(16,15,2),(17,16,1),(18,17,1),(19,18,8),(20,19,10),(21,20,10),(22,21,8),(23,22,10),(24,23,11),(25,24,11),(26,25,11),(27,26,10),(28,27,11),(29,28,2),(30,29,4),(31,29,3),(32,30,2),(33,31,2),(34,32,2),(35,33,6),(36,34,9),(37,35,2),(38,36,12),(39,37,13),(40,38,16),(41,39,5),(42,40,7),(43,41,7),(44,42,24),(45,42,23),(46,42,22),(47,43,24),(48,43,22),(49,43,23),(50,44,22),(51,44,23),(52,44,24),(53,45,24),(54,45,22),(55,45,23),(56,46,22),(57,46,23),(58,46,24),(59,47,24),(60,47,23),(61,47,22),(62,48,5),(63,49,24),(64,49,23),(65,49,22),(66,50,22),(67,50,24),(68,50,23),(69,51,22),(70,51,23),(71,51,24),(72,52,4),(73,52,3),(74,52,6),(75,52,19),(76,52,18),(77,53,22),(78,53,23),(79,53,24),(80,54,12),(81,55,13),(82,56,22),(83,56,24),(84,56,23),(85,57,22),(86,57,23),(87,57,24),(88,58,22),(89,58,23),(90,58,24),(91,59,30),(92,60,24),(93,60,23),(94,60,22),(95,61,24),(96,61,23),(97,61,22),(98,62,24),(99,62,23),(100,62,22),(101,63,15),(102,63,14),(103,63,20),(104,63,23),(105,63,34),(106,63,27),(107,63,33),(108,63,26),(109,64,23),(110,64,24),(111,64,22),(112,65,24),(113,65,22),(114,65,23),(115,66,23),(116,66,24),(117,66,22),(118,67,22),(119,67,23),(120,67,24),(121,68,13),(122,69,13),(123,70,12),(124,71,30),(125,72,7),(126,73,30),(127,74,22),(128,74,24),(129,74,23),(130,75,24),(131,75,23),(132,75,22),(133,76,22),(134,76,23),(135,76,24),(136,77,22),(137,77,23),(138,77,24),(139,78,23),(140,78,24),(141,78,22),(142,79,12),(143,80,22),(144,80,24),(145,80,23),(146,81,3),(147,81,19),(148,81,18),(149,81,6),(150,81,4),(151,82,24),(152,82,23),(153,82,22),(154,83,23),(155,83,22),(156,83,24),(157,84,23),(158,84,24),(159,84,22),(160,85,34),(161,85,33),(162,85,15),(163,85,14),(164,85,26),(165,85,27),(166,85,23),(167,85,20),(168,86,22),(169,86,23),(170,86,24),(171,87,24),(172,87,22),(173,87,23),(174,88,30),(175,89,24),(176,89,22),(177,89,23),(178,90,23),(179,90,24),(180,90,22),(181,91,22),(182,91,23),(183,91,24),(184,92,22),(185,92,23),(186,92,24),(187,93,12),(188,94,22),(189,94,24),(190,94,23),(191,95,24),(192,95,23),(193,95,22),(194,96,24),(195,96,23),(196,96,22),(197,97,22),(198,97,23),(199,97,24),(200,98,22),(201,98,23),(202,98,24),(203,99,13),(204,100,16),(205,101,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,6,3),(4,6,2),(5,6,1),(6,7,1),(7,7,2),(8,7,3),(9,10,2),(10,12,2),(11,14,2),(12,14,1),(13,14,3),(14,16,1),(15,17,2),(16,17,3),(17,17,1),(18,18,2),(19,21,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,5,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(2,11,NULL,NULL,NULL,NULL,'application','vnd.wap.sic'),(3,39,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(4,42,'package',NULL,NULL,NULL,NULL,NULL),(5,43,'package',NULL,NULL,NULL,NULL,NULL),(6,44,'package',NULL,NULL,NULL,NULL,NULL),(7,45,'package',NULL,NULL,NULL,NULL,NULL),(8,46,'package',NULL,NULL,NULL,NULL,NULL),(9,47,'package',NULL,NULL,NULL,NULL,NULL),(10,48,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message'),(11,49,'package',NULL,NULL,NULL,NULL,NULL),(12,50,'package',NULL,NULL,NULL,NULL,NULL),(13,51,'package',NULL,NULL,NULL,NULL,NULL),(14,53,'package',NULL,NULL,NULL,NULL,NULL),(15,56,'package',NULL,NULL,NULL,NULL,NULL),(16,57,'package',NULL,NULL,NULL,NULL,NULL),(17,58,'package',NULL,NULL,NULL,NULL,NULL),(18,60,'package',NULL,NULL,NULL,NULL,NULL),(19,61,'package',NULL,NULL,NULL,NULL,NULL),(20,62,'package',NULL,NULL,NULL,NULL,NULL),(21,63,'package',NULL,NULL,NULL,NULL,NULL),(22,64,'package',NULL,NULL,NULL,NULL,NULL),(23,65,'package',NULL,NULL,NULL,NULL,NULL),(24,66,'package',NULL,NULL,NULL,NULL,NULL),(25,67,'package',NULL,NULL,NULL,NULL,NULL),(26,74,'package',NULL,NULL,NULL,NULL,NULL),(27,75,'package',NULL,NULL,NULL,NULL,NULL),(28,76,'package',NULL,NULL,NULL,NULL,NULL),(29,77,'package',NULL,NULL,NULL,NULL,NULL),(30,78,'package',NULL,NULL,NULL,NULL,NULL),(31,80,'package',NULL,NULL,NULL,NULL,NULL),(32,82,'package',NULL,NULL,NULL,NULL,NULL),(33,83,'package',NULL,NULL,NULL,NULL,NULL),(34,84,'package',NULL,NULL,NULL,NULL,NULL),(35,85,'package',NULL,NULL,NULL,NULL,NULL),(36,86,'package',NULL,NULL,NULL,NULL,NULL),(37,87,'package',NULL,NULL,NULL,NULL,NULL),(38,89,'package',NULL,NULL,NULL,NULL,NULL),(39,90,'package',NULL,NULL,NULL,NULL,NULL),(40,91,'package',NULL,NULL,NULL,NULL,NULL),(41,92,'package',NULL,NULL,NULL,NULL,NULL),(42,94,'package',NULL,NULL,NULL,NULL,NULL),(43,95,'package',NULL,NULL,NULL,NULL,NULL),(44,96,'package',NULL,NULL,NULL,NULL,NULL),(45,97,'package',NULL,NULL,NULL,NULL,NULL),(46,98,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.km.installer'),(2,2,'com.km.installer'),(3,7,'com.jx.theme.n2114792205'),(4,15,'com.jx.theme.n2114792205'),(5,25,'com.jx.theme.n1904297018'),(6,26,'NULL-CONSTANT'),(7,27,'com.jx.theme.n1904297018'),(8,28,'com.jx.util'),(9,29,'com.jx.util'),(10,33,'com.jx.theme.n1904297018'),(11,36,'com.jx.util'),(12,38,'com.km.launcher'),(13,41,'com.jx.util'),(14,45,'com.km.launcher'),(15,43,'com.jx.theme.n1904297018'),(16,48,'com.jx.util'),(17,51,'com.jx.theme.n1904297018'),(18,62,'com.km.launcher'),(19,65,'com.jx.util'),(20,67,'com.km.launcher'),(21,69,'com.km.launcher'),(22,72,'com.jx.theme.n2114792205'),(23,74,'com.android.packageinstaller'),(24,78,'com.km.launcher'),(25,85,'com.km.launcher'),(26,87,'com.km.launcher'),(27,93,'com.android.packageinstaller'),(28,99,'com.km.launcher'),(29,101,'com.km.launcher'),(30,102,'com.km.launcher'),(31,105,'com.km.launcher'),(32,111,'com.km.launcher'),(33,117,'com.jx.theme.n1904297018'),(34,122,'com.jx.util'),(35,123,'com.android.packageinstaller'),(36,125,'com.km.launcher'),(37,131,'com.jx.theme.n2114792205'),(38,134,'com.km.launcher'),(39,136,'com.jx.theme.n2114792205'),(40,138,'com.jx.theme.n1904297018'),(41,140,'com.jx.util'),(42,141,'NULL-CONSTANT'),(43,143,'com.jx.theme.n2114792205'),(44,144,'com.jx.theme.n2114792205'),(45,146,'com.jx.util'),(46,148,'com.jx.theme.n1904297018'),(47,150,'com.jx.util'),(48,152,'com.jx.util'),(49,153,'com.jx.util'),(50,155,'com.jx.theme.n2114792205'),(51,158,'com.android.packageinstaller');
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,6,0),(4,9,0),(5,10,0),(6,11,0),(7,11,0),(8,9,0),(9,10,0),(10,12,0),(11,10,0),(12,12,0),(13,13,0),(14,11,0),(15,16,0),(16,17,0),(17,11,0),(18,12,0),(19,20,0),(20,20,0),(21,12,0),(22,20,0),(23,22,0),(24,22,0),(25,22,0),(26,20,0),(27,22,0),(28,25,0),(29,24,0),(30,26,0),(31,25,0),(32,25,0),(33,24,0),(34,29,0),(35,30,0),(36,31,0),(37,32,0),(38,33,0),(39,34,0),(40,35,0),(41,36,0),(42,37,0),(43,38,0),(44,39,0),(45,40,0),(46,41,0),(47,25,0),(48,42,0),(49,43,0),(50,44,0),(51,45,0),(52,46,0),(53,47,0),(54,43,0),(55,44,0),(56,37,0),(57,38,0),(58,39,0),(59,41,0),(60,40,0),(61,41,0),(62,25,0),(63,48,0),(64,43,0),(65,44,0),(66,45,0),(67,47,0),(68,44,0),(69,44,0),(70,43,0),(71,41,0),(72,49,0),(73,41,0),(74,37,0),(75,38,0),(76,39,0),(77,40,0),(78,41,0),(79,43,0),(80,25,0),(81,50,0),(82,43,0),(83,44,0),(84,45,0),(85,51,0),(86,47,0),(87,37,0),(88,41,0),(89,38,0),(90,39,0),(91,40,0),(92,41,0),(93,43,0),(94,25,0),(95,43,0),(96,44,0),(97,45,0),(98,47,0),(99,44,0),(100,52,0),(101,53,0);
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
INSERT INTO `Intents` VALUES (1,2,0,0),(2,7,0,0),(3,11,1,0),(4,12,1,0),(5,13,1,0),(6,14,1,0),(7,15,0,0),(8,16,1,0),(9,16,1,0),(10,16,1,0),(11,17,1,0),(12,16,1,0),(13,16,1,0),(14,18,1,0),(15,20,0,0),(16,22,1,0),(17,23,1,0),(18,24,1,0),(19,25,1,0),(20,26,1,0),(21,27,1,0),(22,28,1,0),(23,29,1,0),(24,30,1,0),(25,31,0,0),(26,33,0,0),(27,31,0,0),(28,31,1,0),(29,31,1,0),(30,36,1,0),(31,37,1,0),(32,37,1,0),(33,31,0,0),(34,37,1,0),(35,38,1,0),(36,31,1,0),(37,37,1,0),(38,40,0,0),(39,37,1,0),(40,41,1,0),(41,31,1,0),(42,37,1,0),(43,31,0,0),(44,37,1,0),(45,43,0,0),(46,37,1,0),(47,44,1,0),(48,31,1,0),(49,45,1,0),(50,44,1,0),(51,31,0,0),(52,49,1,0),(53,49,1,0),(54,53,1,0),(55,49,1,0),(56,54,1,0),(57,56,1,0),(58,57,1,0),(59,49,1,0),(60,49,1,0),(61,57,1,0),(62,59,0,0),(63,61,1,0),(64,49,1,0),(65,62,1,0),(66,49,1,0),(67,67,0,0),(68,66,1,0),(69,69,0,0),(70,49,1,0),(71,70,1,0),(72,71,0,0),(73,70,1,0),(74,77,0,0),(75,70,1,0),(76,81,1,0),(77,70,1,0),(78,84,0,0),(79,83,1,0),(80,70,1,0),(81,85,1,0),(82,83,1,0),(83,85,1,0),(84,87,1,0),(85,89,0,0),(86,90,1,0),(87,92,0,0),(88,93,1,0),(89,97,1,0),(90,98,1,0),(91,103,1,0),(92,103,1,0),(93,107,0,0),(94,109,1,0),(95,113,1,0),(96,115,1,0),(97,116,1,0),(98,113,1,0),(99,121,0,0),(100,122,1,0),(101,124,0,0),(102,125,0,0),(103,126,1,0),(104,128,1,0),(105,131,0,0),(106,132,1,0),(107,134,1,0),(108,137,1,0),(109,137,1,0),(110,141,1,0),(111,143,0,0),(112,137,1,0),(113,144,1,0),(114,145,1,0),(115,137,1,0),(116,144,1,0),(117,147,0,0),(118,137,1,0),(119,149,1,0),(120,137,1,0),(121,137,1,0),(122,152,1,0),(123,155,0,0),(124,137,1,0),(125,157,0,0),(126,158,1,0),(127,160,1,0),(128,158,1,0),(129,163,1,0),(130,158,1,0),(131,166,0,0),(132,158,1,0),(133,167,1,0),(134,169,0,0),(135,158,1,0),(136,166,0,0),(137,158,1,0),(138,172,0,0),(139,158,1,0),(140,166,1,0),(141,174,0,0),(142,158,1,0),(143,166,0,0),(144,166,0,0),(145,180,1,0),(146,166,1,0),(147,183,1,0),(148,185,0,0),(149,183,1,0),(150,166,1,0),(151,186,1,0),(152,166,1,0),(153,166,1,0),(154,187,1,0),(155,166,0,0),(156,188,1,0),(157,189,1,0),(158,190,0,0),(159,191,1,0),(160,194,1,0),(161,195,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.km.launcher.settings'),(2,2,'com.km.launcher.settings'),(3,3,'com.km.launcher.settings'),(4,4,'com.km.launcher.settings');
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
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_NETWORK_STATE'),(19,'android.permission.CALL_PHONE'),(16,'android.permission.CHANGE_NETWORK_STATE'),(22,'android.permission.EXPAND_STATUS_BAR'),(4,'android.permission.GET_TASKS'),(20,'android.permission.GLOBAL_SEARCH_CONTROL'),(7,'android.permission.INTERNET'),(18,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RECEIVE_MMS'),(9,'android.permission.RECEIVE_SMS'),(2,'android.permission.RECEIVE_WAP_PUSH'),(5,'android.permission.SEND_SMS'),(12,'android.permission.SET_WALLPAPER'),(21,'android.permission.SET_WALLPAPER_HINTS'),(23,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_APN_SETTINGS'),(13,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SETTINGS'),(8,'android.permission.WRITE_SMS'),(26,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.launcher.permission.READ_SETTINGS'),(27,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(25,'com.android.launcher.permission.WRITE_SETTINGS');
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
INSERT INTO `Permissions` VALUES (24,'n'),(25,'n'),(26,'n'),(27,'n');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,27,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS'),(2,27,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS'),(3,28,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS'),(4,27,0,NULL,'com.android.launcher.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(2,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(3,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(4,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(5,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(6,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(7,'package','',NULL,NULL,NULL,NULL),(8,'package','',NULL,NULL,NULL,NULL),(9,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(10,'package','',NULL,NULL,NULL,NULL),(11,'package','',NULL,NULL,NULL,NULL),(12,'package','',NULL,NULL,NULL,NULL),(13,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(14,'package','',NULL,NULL,NULL,NULL),(15,'package','',NULL,NULL,NULL,NULL),(16,'package','',NULL,NULL,NULL,NULL),(17,'package','',NULL,NULL,NULL,NULL),(18,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(19,'package','',NULL,NULL,NULL,NULL),(20,'package','',NULL,NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(23,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(24,'package','',NULL,NULL,NULL,NULL),(25,'package','',NULL,NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(27,'package','',NULL,NULL,NULL,NULL),(28,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(29,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(30,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(31,'package','',NULL,NULL,NULL,NULL),(32,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(34,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(35,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(36,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(37,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(38,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(39,'package','',NULL,NULL,NULL,NULL),(40,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(41,'package','',NULL,NULL,NULL,NULL),(42,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(43,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(45,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(46,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(47,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(48,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(49,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(50,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(51,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(52,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(53,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(54,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(55,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(56,'package','',NULL,NULL,NULL,NULL),(57,'tel','(.*)',NULL,NULL,NULL,NULL),(58,'tel','(.*)',NULL,NULL,NULL,NULL),(59,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(60,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(61,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(62,'package','',NULL,NULL,NULL,NULL),(63,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(64,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(65,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(66,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(67,'package','',NULL,NULL,NULL,NULL),(68,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(69,'package','',NULL,NULL,NULL,NULL),(70,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(71,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(72,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(73,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(74,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(75,'tel','(.*)',NULL,NULL,NULL,NULL),(76,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(77,'package','',NULL,NULL,NULL,NULL),(78,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(79,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(80,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(81,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(82,'package','',NULL,NULL,NULL,NULL),(83,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(84,'package','',NULL,NULL,NULL,NULL),(85,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(86,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(87,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(88,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(89,'package','',NULL,NULL,NULL,NULL),(90,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(91,'package','',NULL,NULL,NULL,NULL),(92,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(93,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=false',NULL,NULL,NULL),(94,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(95,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(96,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(97,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(98,'package','',NULL,NULL,NULL,NULL),(99,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(100,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(101,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(102,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=(.*)',NULL,NULL,NULL),(103,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(104,NULL,NULL,'http://se.8j3g.com?prod=search&op=redirect&id=6&v=7&ky=NULL-CONSTANT',NULL,NULL,NULL),(105,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(106,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(107,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(108,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(109,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(110,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(111,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(112,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(113,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(114,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(115,'package','',NULL,NULL,NULL,NULL),(116,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(117,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(118,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(119,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(120,'package','',NULL,NULL,NULL,NULL),(121,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(122,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(123,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(124,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(125,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(126,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(127,NULL,NULL,'content://com.km.launcher.settings/favorites/(.*)?notify=(.*)',NULL,NULL,NULL),(128,NULL,NULL,'content://com.km.launcher.settings/favorites?notify=true',NULL,NULL,NULL),(129,'package','',NULL,NULL,NULL,NULL),(130,'tel','(.*)',NULL,NULL,NULL,NULL),(131,'package','',NULL,NULL,NULL,NULL),(132,'package','',NULL,NULL,NULL,NULL),(133,'package','',NULL,NULL,NULL,NULL),(134,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(135,NULL,NULL,'http://www.5j5l.com/ThemeDowner/91pandahome2.apk',NULL,NULL,NULL),(136,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(137,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(138,'package','',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,4,2),(3,5,3),(4,6,4),(5,9,5),(6,10,6),(7,21,13),(8,32,21),(9,34,22),(10,35,23),(11,39,26),(12,42,28),(13,46,30),(14,47,33),(15,50,34),(16,51,35),(17,52,36),(18,55,37),(19,58,38),(20,60,42),(21,63,45),(22,65,46),(23,64,47),(24,68,48),(25,72,49),(26,73,50),(27,78,52),(28,80,53),(29,79,54),(30,82,55),(31,86,59),(32,91,61),(33,95,63),(34,94,64),(35,101,66),(36,99,65),(37,104,68),(38,105,70),(39,106,71),(40,108,72),(41,105,73),(42,108,76),(43,111,78),(44,112,79),(45,118,81),(46,119,83),(47,118,85),(48,120,87),(49,123,88),(50,127,90),(51,130,92),(52,129,93),(53,129,94),(54,133,95),(55,135,96),(56,140,99),(57,142,100),(58,146,101),(59,148,103),(60,150,106),(61,151,107),(62,153,108),(63,154,109),(64,156,110),(65,159,112),(66,161,113),(67,162,114),(68,164,116),(69,165,118),(70,168,119),(71,170,121),(72,171,122),(73,173,123),(74,175,124),(75,176,125),(76,177,126),(77,181,127),(78,182,128),(79,192,136),(80,193,137);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,17),(9,1,8),(10,3,1),(11,2,16),(12,1,9),(13,3,2),(14,2,1),(15,1,10),(16,3,3),(17,2,5),(18,1,11),(19,3,4),(20,2,6),(21,3,5),(22,2,7),(23,3,6),(24,2,9),(25,3,7),(26,2,10),(27,3,8),(28,2,11),(29,3,9),(30,2,12),(31,3,10),(32,2,13),(33,3,11),(34,2,14),(35,3,12),(36,2,15),(37,3,15),(38,3,19),(39,3,18),(40,3,21),(41,3,20),(42,3,23),(43,3,22),(44,3,25),(45,3,24),(46,4,1),(47,3,13),(48,4,5),(49,4,6),(50,4,7),(51,4,9),(52,4,10),(53,4,11),(54,4,12),(55,4,13),(56,4,14),(57,4,15),(58,4,17),(59,4,16);
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

-- Dump completed on 2015-10-09  0:40:03
