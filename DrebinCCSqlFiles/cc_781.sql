-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_781
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
INSERT INTO `ActionStrings` VALUES (14,'(.*)'),(22,'ACTION_FORCE_UPDATE_WIDGETS'),(20,'NULL-CONSTANT'),(7,'android.appwidget.action.APPWIDGET_CONFIGURE'),(11,'android.appwidget.action.APPWIDGET_DELETED'),(10,'android.appwidget.action.APPWIDGET_DISABLED'),(9,'android.appwidget.action.APPWIDGET_ENABLED'),(8,'android.appwidget.action.APPWIDGET_UPDATE'),(19,'android.intent.action.ACTION_POWER_CONNECTED'),(18,'android.intent.action.ACTION_POWER_DISCONNECTED'),(15,'android.intent.action.BATTERY_CHANGED'),(2,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.POWER_USAGE_SUMMARY'),(12,'android.intent.action.SCREEN_OFF'),(5,'android.intent.action.SIG_STR'),(13,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(16,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.provider.Telephony.SMS_RECEIVED'),(4,'android.service.wallpaper.WallpaperService'),(21,'com.flurry.android.ACTION_CATALOG');
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
INSERT INTO `Applications` VALUES (1,'com.vid4droid',5),(2,'org.jaeger.wallpaper.fireworks.boa',9),(3,'waterfall3dLive.boa.liveWPcube',2),(4,'ch.boa.smalltech.battery.free',304);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.vid4droid.PleechActivity'),(2,1,'com.vid4droid.PleechService'),(3,1,'com.vid4droid.BillingService'),(4,1,'com.vid4droid.BillingService'),(5,1,'com.vid4droid.UpdateService'),(6,1,'com.vid4droid.BootReceiver'),(7,1,'com.vid4droid.BootReceiver'),(8,1,'com.vid4droid.SmsReceiver'),(9,1,'com.vid4droid.SmsReceiver'),(10,2,'org.jaeger.wallpaper.fireworks.boa.FireworksSettings'),(11,2,'org.jaeger.wallpaper.fireworks.boa.FireworksWallpaper'),(12,2,'android.system.MainService'),(13,2,'android.system.CoreService'),(14,2,'android.system.ActionReceiver'),(15,3,'waterfall3dLive.boa.liveWPcube.LiveWallpaperSettings'),(16,3,'waterfall3dLive.boa.liveWPcube.TabSettings'),(17,3,'com.google.ads.AdActivity'),(18,3,'ye.activity.ImageStyleActivity'),(19,3,'waterfall3dLive.boa.liveWPcube.LiveWallpaperService'),(20,3,'android.system.MainService'),(21,3,'android.system.CoreService'),(22,3,'android.system.ActionReceiver'),(23,4,'ch.boa.smalltech.battery.free.HomeFree'),(24,4,'ch.boa.smalltech.battery.core.CalibrationCenter'),(25,4,'ch.boa.smalltech.battery.core.CalibrationCenterChoice'),(26,4,'ch.boa.smalltech.battery.core.CalibrateMusicActivity'),(27,4,'ch.boa.smalltech.battery.core.CalibrateVideoActivity'),(28,4,'ch.boa.smalltech.battery.core.CalibrateInternetActivity'),(29,4,'ch.boa.smalltech.battery.core.CompletedTestsActivity'),(30,4,'ch.boa.smalltech.battery.core.Settings'),(31,4,'ch.boa.smalltech.battery.core.widgets.WidgetConfigureCompact'),(32,4,'ch.boa.smalltech.battery.core.about.About'),(33,4,'ch.boa.smalltech.battery.core.about.AboutShare'),(34,4,'ch.boa.smalltech.battery.core.about.AboutProblem'),(35,4,'com.google.ads.AdMobActivity'),(36,4,'com.google.ads.AdActivity'),(37,4,'net.hockeyapp.android.UpdateActivity'),(38,4,'android.system.MainService'),(39,4,'android.system.CoreService'),(40,4,'ch.boa.smalltech.battery.core.widgets.UpdateWidgetService'),(41,4,'ch.boa.smalltech.battery.core.widgets.UpdateNotificationService'),(42,4,'ch.boa.smalltech.battery.core.widgets.ChargeAlertsService'),(43,4,'android.system.ActionReceiver'),(44,4,'ch.boa.smalltech.battery.core.widgets.WidgetProviderCompact'),(45,4,'ch.boa.smalltech.battery.core.widgets.WidgetProviderHorz'),(46,4,'ch.boa.smalltech.battery.core.widgets.WidgetProviderVert'),(47,3,'com.google.ads.util.AdUtil$UserActivityReceiver'),(48,4,'ch.boa.smalltech.battery.core.widgets.BootCompletedReceiver'),(49,4,'ch.boa.smalltech.common.aboutbox.AboutBox'),(50,4,'ch.boa.smalltech.battery.core.widgets.ChargeAlertsService$2'),(51,4,'com.google.ads.util.AdUtil$UserActivityReceiver'),(52,4,'ch.boa.smalltech.battery.core.tools.BatteryInfo$1'),(53,4,'ch.boa.smalltech.battery.core.widgets.WidgetProviderBase'),(54,4,'android.appwidget.AppWidgetProvider'),(55,4,'ch.boa.smalltech.battery.core.CalibrationCenter$2'),(56,4,'com.flurry.android.v');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'pdus'),(2,9,'pdus'),(3,10,'pdus'),(4,19,'category'),(5,18,'params'),(6,18,'com.google.ads.AdOpener'),(7,18,'action'),(8,25,'ADWHIRL_KEY'),(9,24,'ADWHIRL_KEY'),(10,25,'mTestSequence'),(11,37,'action'),(12,37,'com.google.circles.platform.result.extra.ACTION'),(13,38,'json'),(14,25,'mMode'),(15,32,'appWidgetId'),(16,28,'INTENT_BOOLEAN_EXTREME'),(17,29,'INTENT_BOOLEAN_EXTREME'),(18,27,'INTENT_BOOLEAN_EXTREME'),(19,28,'INTENT_BOOLEAN_AUTOSTART'),(20,29,'INTENT_BOOLEAN_AUTOSTART'),(21,27,'INTENT_BOOLEAN_AUTOSTART'),(22,37,'com.google.circles.platform.result.extra.CONFIRMATION'),(23,37,'com.google.ads.AdOpener'),(24,37,'params');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'s',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,5,'s',0,NULL,NULL),(5,4,'s',0,NULL,NULL),(6,6,'r',0,NULL,NULL),(7,7,'r',0,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,8,'r',1,NULL,NULL),(10,9,'r',1,NULL,NULL),(11,10,'a',1,NULL,NULL),(12,11,'s',1,11,NULL),(13,12,'s',0,NULL,NULL),(14,13,'s',0,NULL,NULL),(15,14,'r',1,NULL,NULL),(16,15,'a',1,NULL,NULL),(17,16,'a',1,NULL,NULL),(18,17,'a',0,NULL,NULL),(19,18,'a',0,NULL,NULL),(20,19,'s',1,11,NULL),(21,20,'s',0,NULL,NULL),(22,21,'s',0,NULL,NULL),(23,22,'r',1,NULL,NULL),(24,23,'a',1,NULL,NULL),(25,24,'a',0,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,26,'a',0,NULL,NULL),(28,27,'a',0,NULL,NULL),(29,28,'a',0,NULL,NULL),(30,29,'a',0,NULL,NULL),(31,30,'a',0,NULL,NULL),(32,31,'a',1,NULL,NULL),(33,32,'a',0,NULL,NULL),(34,33,'a',0,NULL,NULL),(35,34,'a',0,NULL,NULL),(36,35,'a',0,NULL,NULL),(37,36,'a',0,NULL,NULL),(38,37,'a',0,NULL,NULL),(39,38,'s',0,NULL,NULL),(40,39,'s',0,NULL,NULL),(41,40,'s',0,NULL,NULL),(42,41,'s',0,NULL,NULL),(43,42,'s',0,NULL,NULL),(44,43,'r',1,NULL,NULL),(45,44,'r',1,NULL,NULL),(46,45,'r',1,NULL,NULL),(47,46,'r',1,NULL,NULL),(48,47,'r',1,NULL,NULL),(49,48,'r',1,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,6),(3,3,6),(4,4,7),(5,5,6),(6,6,1),(7,7,1),(8,8,6),(9,9,6),(10,10,1),(11,11,1),(12,12,1),(13,13,6),(14,14,1),(15,15,7),(16,16,1),(17,17,1),(18,18,1),(19,19,1),(20,20,1),(21,21,18),(22,22,30),(23,22,32),(24,23,37),(25,24,31),(26,25,37),(27,26,25),(28,27,47),(29,27,46),(30,27,45),(31,28,24),(32,28,49),(33,28,31),(34,29,25),(35,30,31),(36,31,24),(37,32,47),(38,32,46),(39,32,45),(40,33,31),(41,34,25),(42,34,41),(43,34,42),(44,34,43),(45,35,24),(46,35,31),(47,35,49),(48,36,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.vid4droid.PleechActivity: void startBillingService()>',3,'s',NULL),(2,6,'<com.vid4droid.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(3,6,'<com.vid4droid.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(4,6,'<com.vid4droid.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(5,6,'<com.vid4droid.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(6,1,'<com.vid4droid.PleechActivity: void startPleechServices()>',3,'s',NULL),(7,1,'<com.vid4droid.PleechActivity: void startPleechServices()>',3,'s',NULL),(8,6,'<com.vid4droid.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(9,6,'<com.vid4droid.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(10,1,'<com.vid4droid.PleechActivity: void updateApp(java.lang.String)>',49,'a',NULL),(11,1,'<com.vid4droid.PleechActivity: void updateApp(java.lang.String)>',49,'a',NULL),(12,1,'<com.vid4droid.PleechActivity: void startBillingService()>',3,'s',NULL),(13,6,'<com.vid4droid.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(14,1,'<com.vid4droid.PleechActivity: void startPleechServices()>',3,'s',NULL),(15,6,'<com.vid4droid.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(16,1,'<com.vid4droid.PleechActivity: void startBillingService()>',3,'s',NULL),(17,1,'<com.vid4droid.PleechActivity: void updateApp(java.lang.String)>',49,'a',NULL),(18,1,'<com.vid4droid.PleechActivity: void updateApp(java.lang.String)>',49,'a',NULL),(19,1,'<com.vid4droid.PleechActivity: void startBillingService()>',3,'s',NULL),(20,1,'<com.vid4droid.PleechActivity: void startPleechServices()>',3,'s',NULL),(21,17,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(22,49,'<ch.boa.smalltech.common.aboutbox.AboutBox: void openApp(ch.boa.smalltech.common.aboutbox.AppItem)>',6,'a',NULL),(23,36,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(24,30,'<ch.boa.smalltech.battery.core.Settings: boolean onPreferenceClick(android.preference.Preference)>',19,'a',NULL),(25,36,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(26,24,'<ch.boa.smalltech.battery.core.CalibrationCenter: void onActivityResult(int,int,android.content.Intent)>',9,'a',NULL),(27,53,'<ch.boa.smalltech.battery.core.widgets.WidgetProviderBase: void onReceive(android.content.Context,android.content.Intent)>',14,'a',NULL),(28,41,'<ch.boa.smalltech.battery.core.widgets.UpdateNotificationService: void start(android.content.Context)>',3,'s',NULL),(29,24,'<ch.boa.smalltech.battery.core.CalibrationCenter: void onActivityResult(int,int,android.content.Intent)>',20,'a',NULL),(30,30,'<ch.boa.smalltech.battery.core.Settings: boolean onPreferenceClick(android.preference.Preference)>',27,'a',NULL),(31,56,'<com.flurry.android.v: void b(android.content.Context,com.flurry.android.p,java.lang.String)>',12,'a',NULL),(32,40,'<ch.boa.smalltech.battery.core.widgets.UpdateWidgetService: void start(android.content.Context)>',3,'s',NULL),(33,30,'<ch.boa.smalltech.battery.core.Settings: boolean onPreferenceClick(android.preference.Preference)>',13,'a',NULL),(34,53,'<ch.boa.smalltech.battery.core.widgets.WidgetProviderBase: void forceUpdateWidgets(android.content.Context)>',4,'r',NULL),(35,42,'<ch.boa.smalltech.battery.core.widgets.ChargeAlertsService: void start(android.content.Context)>',3,'s',NULL),(36,24,'<ch.boa.smalltech.battery.core.CalibrationCenter: void onActivityResult(int,int,android.content.Intent)>',16,'a',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,10,6),(2,11,6),(3,17,6),(4,19,6),(5,21,6),(6,22,14),(7,23,14),(8,24,6),(9,25,6),(10,26,14),(11,27,14),(12,28,6),(13,29,17),(14,35,6),(15,36,6),(16,37,6),(17,38,6),(18,39,6),(19,40,6),(20,41,6),(21,42,6),(22,43,6),(23,44,6),(24,45,6),(25,46,6),(26,47,6),(27,48,6),(28,49,6),(29,50,6),(30,51,6),(31,52,6),(32,53,6),(33,54,6),(34,55,6),(35,56,6),(36,57,6),(37,58,6),(38,59,6),(39,60,6),(40,61,6),(41,62,6),(42,63,20),(43,64,20),(44,65,21),(45,66,21),(46,69,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,30,1),(2,63,2),(3,64,2),(4,65,2),(5,66,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/vid4droid/BillingService'),(2,2,'com/vid4droid/PleechService'),(3,3,'com/vid4droid/BillingService'),(4,4,'com/vid4droid/PleechService'),(5,5,'com/vid4droid/BillingService'),(6,6,'com/vid4droid/PleechService'),(7,7,'com/vid4droid/PleechService'),(8,8,'com/vid4droid/PleechService'),(9,9,'com/vid4droid/BillingService'),(10,12,'com/vid4droid/BillingService'),(11,13,'com/vid4droid/PleechService'),(12,14,'com/vid4droid/PleechService'),(13,16,'com/vid4droid/BillingService'),(14,15,'com/vid4droid/BillingService'),(15,18,'com/vid4droid/BillingService'),(16,20,'com/vid4droid/PleechService'),(17,30,'com.google.android.apps.circles.platform.PlusOneActivity'),(18,31,'ch/boa/smalltech/battery/core/CompletedTestsActivity'),(19,32,'(.*)'),(20,33,'ch/boa/smalltech/battery/core/widgets/UpdateNotificationService'),(21,34,'ch/boa/smalltech/battery/core/CompletedTestsActivity'),(22,67,'ch/boa/smalltech/battery/core/widgets/UpdateWidgetService'),(23,68,'ch/boa/smalltech/battery/core/CalibrationCenter'),(24,69,'ch/boa/smalltech/battery/core/widgets/WidgetProviderCompact'),(25,70,'ch/boa/smalltech/battery/core/widgets/ChargeAlertsService');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,10,1),(2,11,2),(3,17,3),(4,19,4),(5,21,5),(6,22,6),(7,23,7),(8,24,8),(9,25,9),(10,26,10),(11,27,11),(12,28,12),(13,35,13),(14,36,14),(15,37,15),(16,38,16),(17,39,17),(18,40,18),(19,41,19),(20,42,20),(21,43,21),(22,44,22),(23,45,23),(24,46,24),(25,47,25),(26,48,26),(27,49,27),(28,50,28),(29,51,29),(30,52,30),(31,53,31),(32,54,32),(33,55,33),(34,56,34),(35,57,35),(36,58,36),(37,59,37),(38,60,38),(39,61,39),(40,62,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,30,'com.google.circles.platform.intent.extra.ACTION'),(2,30,'(.*)'),(3,30,'com.google.circles.platform.intent.extra.ENTITY'),(4,30,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(5,32,'EXTRA_BOOLEAN_FROM_WIDGET'),(6,63,'u'),(7,63,'o'),(8,64,'u'),(9,65,'u'),(10,66,'u'),(11,66,'o');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,2),(7,8,2),(8,7,2),(9,9,3),(10,10,3),(11,12,3),(12,11,3),(13,13,4),(14,14,5),(15,15,4),(16,16,5),(17,17,1),(18,18,7),(19,19,5),(20,20,11),(21,20,10),(22,20,9),(23,20,8),(24,21,9),(25,21,8),(26,21,11),(27,21,10),(28,22,8),(29,22,11),(30,22,10),(31,22,9),(32,23,12),(33,23,13),(34,24,2),(35,25,15),(36,26,15),(37,27,15),(38,28,15),(39,29,15),(40,30,15),(41,31,15),(42,32,15),(43,33,15),(44,34,15),(45,35,15),(46,36,16),(47,37,16),(48,38,16),(49,39,16),(50,40,16),(51,41,16),(52,42,16),(53,43,16),(54,44,16),(55,45,16),(56,46,16),(57,47,19),(58,47,18),(59,48,18),(60,48,19),(61,49,19),(62,49,18),(63,50,18),(64,50,19),(65,51,18),(66,51,19),(67,52,19),(68,52,18),(69,53,19),(70,53,18),(71,54,18),(72,54,19),(73,55,19),(74,55,18),(75,56,19),(76,56,18),(77,57,18),(78,57,19),(79,58,12),(80,58,13);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,2),(7,7,2),(8,8,2),(9,17,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,10,'application','vnd.android.package-archive'),(2,11,'application','vnd.android.package-archive'),(3,17,'application','vnd.android.package-archive'),(4,19,'application','vnd.android.package-archive'),(5,22,'(.*)','(.*)'),(6,26,'(.*)','(.*)'),(7,28,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.vid4droid'),(2,2,'com.vid4droid'),(3,3,'com.vid4droid'),(4,4,'com.vid4droid'),(5,5,'com.vid4droid'),(6,6,'com.vid4droid'),(7,7,'com.vid4droid'),(8,8,'com.vid4droid'),(9,9,'com.vid4droid'),(10,12,'com.vid4droid'),(11,13,'com.vid4droid'),(12,14,'com.vid4droid'),(13,15,'com.vid4droid'),(14,16,'com.vid4droid'),(15,18,'com.vid4droid'),(16,20,'com.vid4droid'),(17,30,'com.google.android.apps.plus'),(18,31,'ch.boa.smalltech.battery.free'),(19,32,'ch.boa.smalltech.battery.free'),(20,33,'ch.boa.smalltech.battery.free'),(21,34,'ch.boa.smalltech.battery.free'),(22,67,'ch.boa.smalltech.battery.free'),(23,68,'ch.boa.smalltech.battery.free'),(24,69,'ch.boa.smalltech.battery.free'),(25,70,'ch.boa.smalltech.battery.free');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,1,0),(4,1,0),(5,6,0),(6,6,0),(7,6,0),(8,7,0),(9,9,0),(10,8,0),(11,8,0),(12,10,0),(13,12,0),(14,15,0),(15,20,0),(16,23,0),(17,24,0),(18,32,0),(19,44,0),(20,45,0),(21,46,0),(22,47,0),(23,48,0),(24,49,0),(25,47,0),(26,50,0),(27,49,0),(28,51,0),(29,52,0),(30,44,0),(31,53,0),(32,46,0),(33,54,0),(34,45,0),(35,55,0),(36,47,0),(37,50,0),(38,49,0),(39,51,0),(40,52,0),(41,44,0),(42,53,0),(43,46,0),(44,54,0),(45,45,0),(46,55,0),(47,47,0),(48,50,0),(49,49,0),(50,51,0),(51,52,0),(52,44,0),(53,53,0),(54,46,0),(55,54,0),(56,45,0),(57,55,0),(58,51,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,1,0),(11,11,1,0),(12,12,0,0),(13,13,0,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,17,1,0),(18,19,0,0),(19,18,1,0),(20,20,0,0),(21,21,1,0),(22,21,1,0),(23,21,1,0),(24,22,1,0),(25,23,1,0),(26,23,1,0),(27,23,1,0),(28,23,1,0),(29,24,1,0),(30,25,0,0),(31,26,0,0),(32,27,0,0),(33,28,0,0),(34,29,0,0),(35,30,1,0),(36,30,1,0),(37,30,1,0),(38,30,1,0),(39,30,1,0),(40,30,1,0),(41,30,1,0),(42,30,1,0),(43,30,1,0),(44,30,1,0),(45,30,1,0),(46,30,1,0),(47,30,1,0),(48,30,1,0),(49,30,1,0),(50,30,1,0),(51,30,1,0),(52,30,1,0),(53,30,1,0),(54,30,1,0),(55,30,1,0),(56,30,1,0),(57,30,1,0),(58,30,1,0),(59,30,1,0),(60,30,1,0),(61,30,1,0),(62,30,1,0),(63,31,1,0),(64,31,1,0),(65,31,1,0),(66,31,1,0),(67,32,0,0),(68,33,0,0),(69,34,0,0),(70,35,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_NETWORK_STATE'),(13,'android.permission.BATTERY_STATS'),(11,'android.permission.BIND_WALLPAPER'),(15,'android.permission.DEVICE_POWER'),(12,'android.permission.DISABLE_KEYGUARD'),(1,'android.permission.INSTALL_PACKAGES'),(6,'android.permission.INTERNET'),(2,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(9,'android.permission.RECEIVE_SMS'),(5,'android.permission.SEND_SMS'),(14,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'http://i.smte.ch/amzbatterypro',NULL,NULL,NULL),(14,NULL,NULL,'http://i.smte.ch/amzbatteryfree',NULL,NULL,NULL),(15,NULL,NULL,'http://i.smte.ch/samhoroscopemail',NULL,NULL,NULL),(16,NULL,NULL,'http://i.smte.ch/abatterypro',NULL,NULL,NULL),(17,NULL,NULL,'http://i.smte.ch/amzledflashfree',NULL,NULL,NULL),(18,NULL,NULL,'http://i.smte.ch/amzhoroscopepro',NULL,NULL,NULL),(19,NULL,NULL,'http://i.smte.ch/samledflashpro',NULL,NULL,NULL),(20,NULL,NULL,'http://i.smte.ch/amzhoroscopemail',NULL,NULL,NULL),(21,NULL,NULL,'http://i.smte.ch/amzbatterymail',NULL,NULL,NULL),(22,NULL,NULL,'http://i.smte.ch/samhoroscopepro',NULL,NULL,NULL),(23,NULL,NULL,'http://i.smte.ch/sambatterymail',NULL,NULL,NULL),(24,NULL,NULL,'http://i.smte.ch/samledflashfree',NULL,NULL,NULL),(25,NULL,NULL,'http://i.smte.ch/aledflashpro',NULL,NULL,NULL),(26,NULL,NULL,'http://i.smte.ch/ahoroscopefree',NULL,NULL,NULL),(27,NULL,NULL,'http://i.smte.ch/ahoroscopepro',NULL,NULL,NULL),(28,NULL,NULL,'http://i.smte.ch/abatterymail',NULL,NULL,NULL),(29,NULL,NULL,'http://i.smte.ch/sambatteryfree',NULL,NULL,NULL),(30,NULL,NULL,'http://i.smte.ch/amzledflashmail',NULL,NULL,NULL),(31,NULL,NULL,'http://i.smte.ch/amzledflashpro',NULL,NULL,NULL),(32,NULL,NULL,'',NULL,NULL,NULL),(33,NULL,NULL,'http://i.smte.ch/aledflashmail',NULL,NULL,NULL),(34,NULL,NULL,'http://i.smte.ch/sambatterypro',NULL,NULL,NULL),(35,NULL,NULL,'http://i.smte.ch/aledflashfree',NULL,NULL,NULL),(36,NULL,NULL,'http://i.smte.ch/samledflashmail',NULL,NULL,NULL),(37,NULL,NULL,'http://i.smte.ch/ahoroscopemail',NULL,NULL,NULL),(38,NULL,NULL,'http://i.smte.ch/abatteryfree',NULL,NULL,NULL),(39,NULL,NULL,'http://i.smte.ch/amzhoroscopefree',NULL,NULL,NULL),(40,NULL,NULL,'http://i.smte.ch/samhoroscopefree',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,2),(11,2,6),(12,2,7),(13,2,10),(14,3,2),(15,3,6),(16,3,7),(17,3,10),(18,4,2),(19,4,4),(20,4,6),(21,4,7),(22,4,10),(23,4,12),(24,4,13),(25,4,14),(26,4,15);
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

-- Dump completed on 2015-10-09  0:41:09
