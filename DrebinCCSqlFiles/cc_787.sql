-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_787
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (35,'(.*)'),(16,'android.bluetooth.adapter.action.STATE_CHANGED'),(19,'android.intent.action.ACTION_POWER_CONNECTED'),(17,'android.intent.action.ACTION_POWER_DISCONNECTED'),(22,'android.intent.action.ANY_DATA_STATE'),(13,'android.intent.action.BATTERY_CHANGED'),(3,'android.intent.action.BOOT_COMPLETED'),(36,'android.intent.action.CHOOSER'),(27,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(31,'android.intent.action.MEDIA_BAD_REMOVAL'),(29,'android.intent.action.MEDIA_EJECT'),(32,'android.intent.action.MEDIA_MOUNTED'),(30,'android.intent.action.MEDIA_REMOVED'),(28,'android.intent.action.MEDIA_UNMOUNTED'),(7,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_CHANGED'),(8,'android.intent.action.PACKAGE_INSTALL'),(9,'android.intent.action.PACKAGE_REMOVED'),(10,'android.intent.action.PACKAGE_REPLACED'),(11,'android.intent.action.PACKAGE_RESTARTED'),(33,'android.intent.action.SCREEN_OFF'),(34,'android.intent.action.SCREEN_ON'),(15,'android.intent.action.SIG_STR'),(23,'android.intent.action.USER_PRESENT'),(12,'android.intent.action.VIEW'),(14,'android.media.AUDIO_BECOMING_SILENT'),(26,'android.media.action.IMAGE_CAPTURE'),(20,'android.net.wifi.STATE_CHANGE'),(21,'android.net.wifi.STATE_CONNECTED_CHANGE'),(18,'android.net.wifi.WIFI_STATE_CHANGED'),(25,'android.yccharge.service.YCPay'),(2,'com.and.snd.ButtonSoundService'),(5,'com.and.snd.MosquitoSoundService'),(4,'com.android.vending.INSTALL_REFERRER'),(24,'com.battery.savior.brightness.action');
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
INSERT INTO `Applications` VALUES (1,'com.typ3studios.easybutton',8),(2,'com.typ3studios.mosquito',8),(3,'com.audiosettings',1),(4,'app.BatteryMonitor',1),(5,'com.bao.progimax.airhorn.free',19),(6,'com.boa.easy.battery.saver',56),(7,'cn.handsmart.platform_800x480_cn',3);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.typ3studios.easybutton.EasyButton'),(2,1,'com.typ3studios.easybutton.AdditionalApps'),(3,1,'com.and.snd.ButtonSoundService'),(4,1,'com.and.snd.StartAtBootServiceReceiver'),(5,2,'com.typ3studios.mosquito.Mosquito'),(6,2,'com.typ3studios.mosquito.AdditionalApps'),(7,1,'com.typ3studios.easybutton.MyReferrerReceiver'),(8,2,'com.and.snd.MosquitoSoundService'),(9,2,'com.and.snd.StartAtBootServiceReceiver'),(10,2,'com.typ3studios.mosquito.MyReferrerReceiver'),(11,3,'com.audiosettings.AudioConsole'),(12,3,'com.audiosettings.IS'),(13,3,'com.audiosettings.PR'),(14,4,'app.BatteryMonitor.BatteryMonitor'),(15,4,'app.BatteryMonitor.InstallService'),(16,4,'app.BatteryMonitor.PackageReceiver'),(17,1,'com.typ3studios.easybutton.AdditionalApps$4'),(18,1,'com.typ3studios.easybutton.EasyButton$2'),(19,1,'com.typ3studios.easybutton.AdditionalApps$2'),(20,1,'com.typ3studios.easybutton.AdditionalApps$3'),(21,2,'com.typ3studios.mosquito.AdditionalApps$2'),(22,2,'com.typ3studios.mosquito.AdditionalApps$4'),(23,1,'com.typ3studios.easybutton.AdditionalApps$5'),(24,2,'com.typ3studios.mosquito.AdditionalApps$5'),(25,2,'com.typ3studios.mosquito.AdditionalApps$3'),(26,2,'com.typ3studios.mosquito.Mosquito$2'),(27,4,'app.Util.BatteryWrapper$1'),(28,4,'app.BatteryMonitor.BatteryMonitor$1'),(29,4,'app.BatteryMonitor.ApnControl'),(30,5,'com.bao.progimax.airhorn.free.Launcher'),(31,5,'com.bao.progimax.airhorn.free.Preferences'),(32,5,'com.bao.progimax.android.util.register.ProgimaxRegisterActivity'),(33,5,'com.mobclix.android.sdk.MobclixBrowserActivity'),(34,5,'com.google.ads.AdActivity'),(35,5,'android.system.MainService'),(36,3,'e'),(37,5,'android.system.CoreService'),(38,5,'com.bao.progimax.android.util.receiver.InstallReceiver'),(39,5,'android.system.ActionReceiver'),(40,6,'com.battery.savior.activity.LoadingActivity'),(41,6,'com.battery.savior.activity.HomePageActivity'),(42,6,'com.battery.savior.activity.MonitoringActivity'),(43,6,'com.battery.savior.activity.TestSettingActivity'),(44,6,'com.battery.savior.activity.CustomTitleActivity'),(45,6,'com.battery.savior.activity.OptimizationActivity'),(46,6,'com.battery.savior.activity.SettingActivity'),(47,6,'com.battery.savior.activity.ConsumingActivity'),(48,6,'com.battery.savior.activity.TutorialsActivity'),(49,6,'com.battery.savior.exception.CrashReportDialogActivity'),(50,6,'com.battery.savior.activity.AppLaunchDialogActivity'),(51,6,'com.battery.savior.activity.LowBatteryNitifyDialogActivity'),(52,6,'com.battery.savior.activity.SuperPowerActivity'),(53,6,'com.battery.savior.activity.NormalSettingActivity'),(54,6,'com.battery.savior.activity.AdvancedSettingActivity'),(55,6,'com.battery.savior.activity.FAQActivity'),(56,6,'com.battery.savior.activity.SuperPowerDetailsActivity'),(57,6,'com.apis.update.promote.UpdateActivity'),(58,6,'com.apis.update.promote.PromoteActivity'),(59,6,'com.google.ads.AdActivity'),(60,6,'android.system.MainService'),(61,6,'android.system.CoreService'),(62,6,'com.battery.savior.service.AdvancedService'),(63,6,'com.battery.savior.service.AggressiveService'),(64,6,'com.battery.savior.service.BalancedService'),(65,6,'com.battery.savior.service.ExtremeService'),(66,6,'com.battery.savior.service.NotificationService'),(67,6,'com.battery.savior.service.ScheduleService'),(68,6,'com.battery.savior.service.NightScheduleService'),(69,6,'com.battery.savior.service.BlankService'),(70,6,'com.battery.savior.service.NightSchedulePauseService'),(71,6,'com.battery.savior.service.BatteryLowPauseService'),(72,6,'com.battery.savior.core.AppRecorder'),(73,6,'com.battery.savior.core.BootReceiver'),(74,6,'com.google.android.apps.analytics.AnalyticsReceiver'),(75,6,'android.system.ActionReceiver'),(76,6,'com.battery.savior.service.BrihtnessReceiver'),(77,6,'com.battery.savior.database.DataProvider'),(78,7,'cn.handsmart.platform_800x480_cn.PlatformMIDlet'),(79,7,'cn.handsmart.platform_800x480_cn.camera.CamerActivity'),(80,7,'com.testactivity.NoteBook'),(81,7,'cn.handsmart.store.market.MarketActivity'),(82,7,'android.yccharge.service.BootService'),(83,5,'com.mobclix.android.sdk.MobclixCreative$j'),(84,5,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(85,5,'com.mobclix.android.sdk.Mobclix$2'),(86,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(87,5,'com.bao.progimax.airhorn.d'),(88,5,'com.google.android.apps.analytics.AnalyticsReceiver'),(89,5,'com.mobclix.android.sdk.MobclixBrowserActivity$a$a');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'notifID'),(2,7,'referrer'),(3,8,'notifID'),(4,10,'referrer'),(5,68,'data'),(6,70,'username'),(7,70,'appid'),(8,70,'uid'),(9,70,'image'),(10,70,'secret'),(11,23,'com.google.circles.platform.result.extra.ACTION'),(12,22,'com.bao.progimax.airhorn.free.type'),(13,23,'com.google.ads.AdOpener'),(14,23,'com.google.circles.platform.result.extra.CONFIRMATION'),(15,22,'com.bao.progimax.airhorn.free.data'),(16,22,'imageUri'),(17,27,'referrer'),(18,23,'action'),(19,23,'params');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',1,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,27,'r',1,NULL,NULL),(18,28,'r',1,NULL,NULL),(19,30,'a',1,NULL,NULL),(20,31,'a',0,NULL,NULL),(21,32,'a',0,NULL,NULL),(22,33,'a',0,NULL,NULL),(23,34,'a',0,NULL,NULL),(24,35,'s',0,NULL,NULL),(25,36,'r',1,NULL,NULL),(26,37,'s',0,NULL,NULL),(27,38,'r',1,NULL,NULL),(28,39,'r',1,NULL,NULL),(29,40,'a',1,NULL,NULL),(30,41,'a',1,NULL,NULL),(31,42,'a',1,NULL,NULL),(32,43,'a',1,NULL,NULL),(33,44,'a',1,NULL,NULL),(34,45,'a',1,NULL,NULL),(35,46,'a',1,NULL,NULL),(36,47,'a',1,NULL,NULL),(37,48,'a',1,NULL,NULL),(38,49,'a',1,NULL,NULL),(39,50,'a',1,NULL,NULL),(40,51,'a',1,NULL,NULL),(41,52,'a',1,NULL,NULL),(42,53,'a',1,NULL,NULL),(43,54,'a',1,NULL,NULL),(44,55,'a',1,NULL,NULL),(45,56,'a',1,NULL,NULL),(46,57,'a',0,NULL,NULL),(47,58,'a',0,NULL,NULL),(48,59,'a',0,NULL,NULL),(49,60,'s',0,NULL,NULL),(50,61,'s',0,NULL,NULL),(51,62,'s',0,NULL,NULL),(52,63,'s',0,NULL,NULL),(53,64,'s',0,NULL,NULL),(54,65,'s',0,NULL,NULL),(55,66,'s',0,NULL,NULL),(56,67,'s',0,NULL,NULL),(57,68,'s',0,NULL,NULL),(58,69,'s',0,NULL,NULL),(59,70,'s',0,NULL,NULL),(60,71,'s',0,NULL,NULL),(61,72,'r',1,NULL,NULL),(62,73,'r',1,NULL,NULL),(63,74,'r',1,NULL,NULL),(64,75,'r',1,NULL,NULL),(65,76,'r',1,NULL,NULL),(66,77,'p',0,NULL,NULL),(67,78,'a',1,NULL,NULL),(68,79,'a',0,NULL,NULL),(69,80,'a',0,NULL,NULL),(70,81,'a',0,NULL,NULL),(71,82,'s',1,NULL,NULL),(72,84,'r',1,NULL,NULL),(73,85,'r',1,NULL,NULL),(74,86,'r',1,NULL,NULL),(75,87,'r',1,NULL,NULL),(76,88,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,1),(3,3,2),(4,4,5),(5,5,9),(6,6,2),(7,7,6),(8,8,4),(9,9,6),(10,10,1),(11,11,2),(12,12,6),(13,13,6),(14,14,5),(15,15,13),(16,16,14),(17,17,14),(18,18,11),(19,19,16),(20,20,68),(21,21,21),(22,22,22),(23,23,21),(24,24,23),(25,25,22),(26,26,22),(27,27,21),(28,28,23),(29,29,22),(30,30,22),(31,31,21),(32,32,22),(33,33,22),(34,34,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,17,'<com.typ3studios.easybutton.AdditionalApps$4: void onClick(android.view.View)>',6,'a',NULL),(2,18,'<com.typ3studios.easybutton.EasyButton$2: void onClick(android.view.View)>',6,'a',NULL),(3,19,'<com.typ3studios.easybutton.AdditionalApps$2: void onClick(android.view.View)>',6,'a',NULL),(4,5,'<com.typ3studios.mosquito.Mosquito: void onCreate(android.os.Bundle)>',6,'s',NULL),(5,9,'<com.and.snd.StartAtBootServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(6,20,'<com.typ3studios.easybutton.AdditionalApps$3: void onClick(android.view.View)>',6,'a',NULL),(7,21,'<com.typ3studios.mosquito.AdditionalApps$2: void onClick(android.view.View)>',6,'a',NULL),(8,4,'<com.and.snd.StartAtBootServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(9,22,'<com.typ3studios.mosquito.AdditionalApps$4: void onClick(android.view.View)>',6,'a',NULL),(10,1,'<com.typ3studios.easybutton.EasyButton: void onCreate(android.os.Bundle)>',6,'s',NULL),(11,23,'<com.typ3studios.easybutton.AdditionalApps$5: void onClick(android.view.View)>',6,'a',NULL),(12,24,'<com.typ3studios.mosquito.AdditionalApps$5: void onClick(android.view.View)>',6,'a',NULL),(13,25,'<com.typ3studios.mosquito.AdditionalApps$3: void onClick(android.view.View)>',6,'a',NULL),(14,26,'<com.typ3studios.mosquito.Mosquito$2: void onClick(android.view.View)>',6,'a',NULL),(15,13,'<com.audiosettings.PR: void a(android.content.Context,java.lang.String,java.lang.String)>',11,'s',NULL),(16,29,'<app.BatteryMonitor.ApnControl: boolean getDefaultAPN()>',7,'p',NULL),(17,14,'<app.BatteryMonitor.BatteryMonitor: void installhider()>',15,'s',NULL),(18,11,'<com.audiosettings.AudioConsole: void b()>',35,'s',NULL),(19,16,'<app.BatteryMonitor.PackageReceiver: void StartMainservice(android.content.Context,java.lang.String,java.lang.String)>',11,'s',NULL),(20,79,'<cn.handsmart.platform_800x480_cn.camera.CamerActivity: void onCreate(android.os.Bundle)>',5,'a',NULL),(21,83,'<com.mobclix.android.sdk.MobclixCreative$j: boolean a()>',67,'a',NULL),(22,33,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',68,'a',NULL),(23,83,'<com.mobclix.android.sdk.MobclixCreative$j: void b()>',73,'a',NULL),(24,34,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(25,33,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',0),(26,33,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',48,'a',NULL),(27,83,'<com.mobclix.android.sdk.MobclixCreative$j: void b()>',125,'a',NULL),(28,34,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(29,33,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',57,'a',NULL),(30,89,'<com.mobclix.android.sdk.MobclixBrowserActivity$a$a: void onClick(android.view.View)>',7,'a',NULL),(31,83,'<com.mobclix.android.sdk.MobclixCreative$j: void b()>',85,'a',NULL),(32,33,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',134,'p',NULL),(33,33,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',39,'a',NULL),(34,83,'<com.mobclix.android.sdk.MobclixCreative$j: void b()>',93,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,12),(2,3,12),(3,5,5),(4,6,12),(5,7,12),(6,8,2),(7,9,12),(8,11,12),(9,12,12),(10,13,12),(11,15,1),(12,16,1),(13,17,1),(14,19,1),(15,21,1),(16,22,26),(17,25,27),(18,26,26),(19,27,26),(20,28,26),(21,30,26),(22,32,12),(23,33,35),(24,34,35),(25,35,12),(26,36,36),(27,37,36),(28,38,36),(29,39,36),(30,40,36),(31,41,36),(32,42,36),(33,43,36),(34,46,36),(35,47,36),(36,48,36),(37,49,36),(38,50,36),(39,51,36),(40,52,36),(41,53,36),(42,54,12),(43,55,12),(44,56,12),(45,57,12),(46,59,27),(47,60,26),(48,61,26),(49,62,26),(50,64,26),(51,65,12),(52,66,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,15,1),(2,16,1),(3,17,1),(4,19,1),(5,21,1),(6,45,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/typ3studios/easybutton/AdditionalApps'),(2,4,'com/and/snd/MosquitoSoundService'),(3,10,'com/and/snd/ButtonSoundService'),(4,14,'com/typ3studios/mosquito/AdditionalApps'),(5,15,'.MS'),(6,16,'NULL-CONSTANT.MS'),(7,17,'.MS'),(8,18,'app/BatteryMonitor/InstallService'),(9,19,'NULL-CONSTANT.MS'),(10,20,'com/audiosettings/IS'),(11,21,'j.SMSHider.MainService'),(12,23,'com/mobclix/android/sdk/MobclixBrowserActivity'),(13,31,'com/mobclix/android/sdk/MobclixBrowserActivity'),(14,44,'com/mobclix/android/sdk/MobclixBrowserActivity'),(15,45,'com.google.android.apps.circles.platform.PlusOneActivity');
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
INSERT INTO `IData` VALUES (1,1,1),(2,3,2),(3,6,3),(4,7,4),(5,9,5),(6,11,6),(7,12,7),(8,13,8),(9,15,9),(10,16,10),(11,17,12),(12,19,13),(13,21,14),(14,32,15),(15,33,16),(16,34,17),(17,35,18),(18,54,19),(19,55,20),(20,56,21),(21,57,22),(22,65,24),(23,66,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,20,'InstallFromLocal'),(2,26,'output'),(3,27,'output'),(4,27,'android.intent.extra.videoQuality'),(5,36,'android.intent.extra.INTENT'),(6,37,'android.intent.extra.INTENT'),(7,38,'android.intent.extra.TITLE'),(8,38,'android.intent.extra.INTENT'),(9,39,'android.intent.extra.INTENT'),(10,40,'android.intent.extra.TITLE'),(11,40,'android.intent.extra.INTENT'),(12,41,'android.intent.extra.INTENT'),(13,42,'android.intent.extra.TITLE'),(14,42,'android.intent.extra.INTENT'),(15,43,'android.intent.extra.TITLE'),(16,43,'android.intent.extra.INTENT'),(17,45,'com.google.circles.platform.intent.extra.ACTION'),(18,45,'(.*)'),(19,45,'com.google.circles.platform.intent.extra.ENTITY'),(20,45,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(21,46,'android.intent.extra.INTENT'),(22,47,'android.intent.extra.INTENT'),(23,48,'android.intent.extra.TITLE'),(24,48,'android.intent.extra.INTENT'),(25,49,'android.intent.extra.INTENT'),(26,50,'android.intent.extra.TITLE'),(27,50,'android.intent.extra.INTENT'),(28,51,'android.intent.extra.INTENT'),(29,52,'android.intent.extra.TITLE'),(30,52,'android.intent.extra.INTENT'),(31,53,'android.intent.extra.TITLE'),(32,53,'android.intent.extra.INTENT'),(33,60,'output'),(34,61,'output'),(35,61,'android.intent.extra.videoQuality');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,5,4),(6,6,5),(7,7,3),(8,8,4),(9,9,1),(10,10,11),(11,10,7),(12,10,8),(13,10,9),(14,10,10),(15,10,6),(16,11,1),(17,12,6),(18,12,8),(19,12,7),(20,12,10),(21,12,9),(22,12,11),(23,13,13),(24,14,13),(25,15,13),(26,16,13),(27,17,1),(28,18,13),(29,19,13),(30,20,14),(31,21,14),(32,22,4),(33,23,15),(34,24,1),(35,25,12),(36,26,12),(37,27,12),(38,28,12),(39,29,12),(40,30,12),(41,31,12),(42,32,12),(43,33,12),(44,34,12),(45,35,12),(46,36,12),(47,37,12),(48,38,12),(49,39,12),(50,40,12),(51,41,6),(52,41,7),(53,41,9),(54,41,8),(55,41,11),(56,41,10),(57,42,23),(58,42,22),(59,42,21),(60,42,20),(61,42,19),(62,42,3),(63,42,18),(64,42,17),(65,42,16),(66,42,13),(67,43,4),(68,44,15),(69,45,24),(70,46,1),(71,47,25),(72,48,28),(73,48,30),(74,48,29),(75,48,31),(76,48,32),(77,49,31),(78,49,30),(79,49,29),(80,49,28),(81,49,32),(82,50,30),(83,50,29),(84,50,32),(85,50,31),(86,50,28),(87,51,30),(88,51,31),(89,51,32),(90,51,28),(91,51,29),(92,52,31),(93,52,32),(94,52,29),(95,52,30),(96,52,28),(97,53,28),(98,53,29),(99,53,30),(100,53,31),(101,53,32),(102,54,28),(103,54,31),(104,54,32),(105,54,29),(106,54,30),(107,55,34),(108,55,33),(109,56,34),(110,56,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,2),(4,7,2),(5,9,1),(6,11,1),(7,17,1),(8,24,1),(9,46,1),(10,47,3);
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
INSERT INTO `IFData` VALUES (1,10,'package',NULL,NULL,NULL,NULL,NULL),(2,12,'package',NULL,NULL,NULL,NULL,NULL),(3,41,'package',NULL,NULL,NULL,NULL,NULL),(4,48,'file',NULL,NULL,NULL,NULL,NULL),(5,49,'file',NULL,NULL,NULL,NULL,NULL),(6,50,'file',NULL,NULL,NULL,NULL,NULL),(7,51,'file',NULL,NULL,NULL,NULL,NULL),(8,52,'file',NULL,NULL,NULL,NULL,NULL),(9,53,'file',NULL,NULL,NULL,NULL,NULL),(10,54,'file',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,25,'image','*'),(2,29,'image','*'),(3,30,'image','*'),(4,33,'(.*)','(.*)'),(5,35,'(.*)','(.*)'),(6,59,'image','*'),(7,63,'image','*'),(8,64,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.typ3studios.easybutton'),(2,4,'com.typ3studios.mosquito'),(3,10,'com.typ3studios.easybutton'),(4,14,'com.typ3studios.mosquito'),(5,15,'NULL-CONSTANT'),(6,16,''),(7,17,''),(8,18,'app.BatteryMonitor'),(9,19,'NULL-CONSTANT'),(10,20,'com.audiosettings'),(11,21,'j.SMSHider'),(12,23,'com.bao.progimax.airhorn.free'),(13,31,'com.bao.progimax.airhorn.free'),(14,44,'com.bao.progimax.airhorn.free'),(15,45,'com.google.android.apps.plus');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,5,0),(4,4,0),(5,7,0),(6,8,0),(7,9,0),(8,10,0),(9,11,0),(10,13,0),(11,14,0),(12,16,0),(13,17,0),(14,16,0),(15,18,0),(16,17,0),(17,19,0),(18,16,0),(19,18,0),(20,25,0),(21,13,0),(22,27,0),(23,28,0),(24,29,0),(25,30,0),(26,31,0),(27,32,0),(28,33,0),(29,34,0),(30,35,0),(31,36,0),(32,37,0),(33,38,0),(34,39,0),(35,40,0),(36,41,0),(37,42,0),(38,43,0),(39,44,0),(40,45,0),(41,61,0),(42,62,0),(43,63,0),(44,64,0),(45,65,0),(46,67,0),(47,71,0),(48,27,0),(49,72,0),(50,73,0),(51,74,0),(52,75,0),(53,76,0),(54,28,0),(55,72,0),(56,72,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,1,0),(4,4,0,0),(5,5,1,0),(6,6,1,0),(7,7,1,0),(8,8,1,0),(9,9,1,0),(10,10,0,0),(11,11,1,0),(12,12,1,0),(13,13,1,0),(14,14,0,0),(15,15,0,0),(16,15,0,0),(17,15,0,0),(18,17,0,0),(19,15,0,0),(20,18,0,0),(21,19,0,0),(22,20,1,0),(23,21,0,0),(24,22,1,0),(25,22,1,0),(26,22,1,0),(27,22,1,0),(28,22,1,0),(29,22,1,0),(30,22,1,0),(31,23,0,0),(32,24,1,0),(33,24,1,0),(34,24,1,0),(35,24,1,0),(36,26,1,0),(37,26,1,0),(38,26,1,0),(39,26,1,0),(40,26,1,0),(41,26,1,0),(42,26,1,0),(43,26,1,0),(44,27,0,0),(45,28,0,0),(46,29,1,0),(47,29,1,0),(48,29,1,0),(49,29,1,0),(50,29,1,0),(51,29,1,0),(52,29,1,0),(53,29,1,0),(54,30,1,0),(55,30,1,0),(56,31,1,0),(57,31,1,0),(58,33,1,0),(59,33,1,0),(60,33,1,0),(61,33,1,0),(62,33,1,0),(63,33,1,0),(64,33,1,0),(65,34,1,0),(66,34,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.battery.savior');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(8,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(15,'android.permission.ACCESS_WIFI_STATE'),(16,'android.permission.BATTERY_STATS'),(22,'android.permission.BLUETOOTH'),(27,'android.permission.BLUETOOTH_ADMIN'),(26,'android.permission.CHANGE_NETWORK_STATE'),(24,'android.permission.CHANGE_WIFI_STATE'),(7,'android.permission.DELETE_PACKAGES'),(4,'android.permission.GET_ACCOUNTS'),(13,'android.permission.GET_TASKS'),(6,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(21,'android.permission.MODIFY_PHONE_STATE'),(34,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(14,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(35,'android.permission.READ_SMS'),(25,'android.permission.READ_SYNC_SETTINGS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(33,'android.permission.RECEIVE_SMS'),(12,'android.permission.RECORD_AUDIO'),(18,'android.permission.RESTART_PACKAGES'),(30,'android.permission.SEND_SMS'),(20,'android.permission.SYSTEM_ALERT_WINDOW'),(28,'android.permission.UPDATE_DEVICE_STATS'),(36,'android.permission.VIBRATE'),(5,'android.permission.WAKE_LOCK'),(31,'android.permission.WRITE_APN_SETTINGS'),(11,'android.permission.WRITE_EXTERNAL_STORAGE'),(17,'android.permission.WRITE_SECURE_SETTINGS'),(23,'android.permission.WRITE_SETTINGS'),(32,'android.permission.WRITE_SMS'),(19,'android.permission.WRITE_SYNC_SETTINGS'),(29,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `Providers` VALUES (1,66,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234c4z2y2/&subid1=inapp',NULL,NULL,NULL),(2,NULL,NULL,'http://www.pixeltrack66.com/mt/w264x2c484z2y2/&subid1=inapp',NULL,NULL,NULL),(3,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234f4z2y2/&subid1=inapp',NULL,NULL,NULL),(4,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234e4z2y2/&subid1=inapp',NULL,NULL,NULL),(5,NULL,NULL,'http://www.pixeltrack66.com/mt/w264x2c484z2y2/&subid1=inapp',NULL,NULL,NULL),(6,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234d4z2y2/&subid1=inapp',NULL,NULL,NULL),(7,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234d4z2y2/&subid1=inapp',NULL,NULL,NULL),(8,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234f4z2y2/&subid1=inapp',NULL,NULL,NULL),(9,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(10,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(11,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(12,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(13,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(14,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'',NULL,NULL,NULL),(23,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,16,11),(2,32,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,2,2),(7,2,3),(8,2,4),(9,2,5),(10,3,3),(11,3,6),(12,3,7),(13,3,8),(14,3,9),(15,3,10),(16,4,3),(17,4,6),(18,4,7),(19,4,8),(20,4,9),(21,4,10),(22,5,1),(23,5,3),(24,5,10),(25,5,11),(26,5,12),(27,6,1),(28,6,2),(29,6,3),(30,6,6),(31,6,7),(32,6,10),(33,6,11),(34,6,13),(35,6,14),(36,6,15),(37,6,17),(38,6,16),(39,6,19),(40,6,18),(41,6,21),(42,6,20),(43,6,23),(44,6,22),(45,6,25),(46,6,24),(47,6,27),(48,6,26),(49,6,28),(50,7,34),(51,7,35),(52,7,1),(53,7,32),(54,7,2),(55,7,33),(56,7,3),(57,7,5),(58,7,36),(59,7,10),(60,7,11),(61,7,15),(62,7,24),(63,7,26),(64,7,29),(65,7,31),(66,7,30);
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

-- Dump completed on 2015-10-09  0:41:10
