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
) ENGINE=InnoDB AUTO_INCREMENT=1270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,4,8,2,NULL),(2,10,3,2,NULL),(3,8,1,2,NULL),(4,8,5,2,NULL),(5,5,1,2,NULL),(6,5,5,2,NULL),(7,24,1,2,NULL),(8,24,5,2,NULL),(9,26,1,2,NULL),(10,26,5,2,NULL),(11,27,1,2,NULL),(12,27,5,2,NULL),(13,28,1,2,NULL),(14,28,5,2,NULL),(15,36,1,2,NULL),(16,36,5,2,NULL),(17,37,1,2,NULL),(18,37,5,2,NULL),(19,38,1,2,NULL),(20,38,5,2,NULL),(21,39,1,2,NULL),(22,39,5,2,NULL),(23,40,1,2,NULL),(24,40,5,2,NULL),(25,41,1,2,NULL),(26,41,5,2,NULL),(27,42,1,2,NULL),(28,42,5,2,NULL),(29,43,1,2,NULL),(30,43,5,2,NULL),(31,46,1,2,NULL),(32,46,5,2,NULL),(33,47,1,2,NULL),(34,47,5,2,NULL),(35,48,1,2,NULL),(36,48,5,2,NULL),(37,49,1,2,NULL),(38,49,5,2,NULL),(39,50,1,2,NULL),(40,50,5,2,NULL),(41,51,1,2,NULL),(42,51,5,2,NULL),(43,52,1,2,NULL),(44,52,5,2,NULL),(45,53,1,2,NULL),(46,53,5,2,NULL),(47,58,1,2,NULL),(48,58,5,2,NULL),(49,60,1,2,NULL),(50,60,5,2,NULL),(51,61,1,2,NULL),(52,61,5,2,NULL),(53,62,1,2,NULL),(54,62,5,2,NULL),(55,32,1,2,NULL),(56,32,5,2,NULL),(57,34,1,2,NULL),(58,34,5,2,NULL),(59,22,1,2,NULL),(60,22,5,2,NULL),(61,8,3,2,NULL),(62,8,8,2,NULL),(63,5,3,2,NULL),(64,5,8,2,NULL),(65,24,3,2,NULL),(66,24,8,2,NULL),(67,26,3,2,NULL),(68,26,8,2,NULL),(69,27,3,2,NULL),(70,27,8,2,NULL),(71,28,3,2,NULL),(72,28,8,2,NULL),(73,36,3,2,NULL),(74,36,8,2,NULL),(75,37,3,2,NULL),(76,37,8,2,NULL),(77,38,3,2,NULL),(78,38,8,2,NULL),(79,39,3,2,NULL),(80,39,8,2,NULL),(81,40,3,2,NULL),(82,40,8,2,NULL),(83,41,3,2,NULL),(84,41,8,2,NULL),(85,42,3,2,NULL),(86,42,8,2,NULL),(87,43,3,2,NULL),(88,43,8,2,NULL),(89,46,3,2,NULL),(90,46,8,2,NULL),(91,47,3,2,NULL),(92,47,8,2,NULL),(93,48,3,2,NULL),(94,48,8,2,NULL),(95,49,3,2,NULL),(96,49,8,2,NULL),(97,50,3,2,NULL),(98,50,8,2,NULL),(99,51,3,2,NULL),(100,51,8,2,NULL),(101,52,3,2,NULL),(102,52,8,2,NULL),(103,53,3,2,NULL),(104,8,29,2,NULL),(105,53,8,2,NULL),(106,58,3,2,NULL),(107,5,29,2,NULL),(108,58,8,2,NULL),(109,60,3,2,NULL),(110,24,29,2,NULL),(111,60,8,2,NULL),(112,61,3,2,NULL),(113,8,19,2,NULL),(114,26,29,2,NULL),(115,62,3,2,NULL),(116,61,8,2,NULL),(117,27,29,2,NULL),(118,5,19,2,NULL),(119,32,3,2,NULL),(120,62,8,2,NULL),(121,28,29,2,NULL),(122,24,19,2,NULL),(123,34,3,2,NULL),(124,32,8,2,NULL),(125,36,29,2,NULL),(126,26,19,2,NULL),(127,22,3,2,NULL),(128,34,8,2,NULL),(129,27,19,2,NULL),(130,37,29,2,NULL),(131,22,8,2,NULL),(132,8,7,2,NULL),(133,28,19,2,NULL),(134,38,29,2,NULL),(135,5,4,2,NULL),(136,8,9,2,NULL),(137,39,29,2,NULL),(138,36,19,2,NULL),(139,5,7,2,NULL),(140,8,10,2,NULL),(141,40,29,2,NULL),(142,37,19,2,NULL),(143,8,11,2,NULL),(144,5,10,2,NULL),(145,41,29,2,NULL),(146,38,19,2,NULL),(147,8,13,2,NULL),(148,5,11,2,NULL),(149,42,29,2,NULL),(150,39,19,2,NULL),(151,8,25,2,NULL),(152,5,13,2,NULL),(153,43,29,2,NULL),(154,40,19,2,NULL),(155,8,14,2,NULL),(156,5,25,2,NULL),(157,41,19,2,NULL),(158,46,29,2,NULL),(159,8,16,2,NULL),(160,5,14,2,NULL),(161,42,19,2,NULL),(162,47,29,2,NULL),(163,5,16,2,NULL),(164,8,17,2,NULL),(165,48,29,2,NULL),(166,43,19,2,NULL),(167,5,17,2,NULL),(168,8,18,2,NULL),(169,46,19,2,NULL),(170,49,29,2,NULL),(171,5,18,2,NULL),(172,24,4,2,NULL),(173,50,29,2,NULL),(174,47,19,2,NULL),(175,26,4,2,NULL),(176,24,9,2,NULL),(177,48,19,2,NULL),(178,51,29,2,NULL),(179,26,9,2,NULL),(180,27,4,2,NULL),(181,49,19,2,NULL),(182,52,29,2,NULL),(183,27,9,2,NULL),(184,28,4,2,NULL),(185,53,29,2,NULL),(186,50,19,2,NULL),(187,28,9,2,NULL),(188,36,4,2,NULL),(189,51,19,2,NULL),(190,58,29,2,NULL),(191,36,9,2,NULL),(192,37,4,2,NULL),(193,60,29,2,NULL),(194,52,19,2,NULL),(195,37,9,2,NULL),(196,38,4,2,NULL),(197,53,19,2,NULL),(198,61,29,2,NULL),(199,38,9,2,NULL),(200,39,4,2,NULL),(201,39,9,2,NULL),(202,62,29,2,NULL),(203,58,19,2,NULL),(204,40,4,2,NULL),(205,40,9,2,NULL),(206,32,29,2,NULL),(207,60,19,2,NULL),(208,41,4,2,NULL),(209,41,9,2,NULL),(210,61,19,2,NULL),(211,34,29,2,NULL),(212,42,4,2,NULL),(213,42,9,2,NULL),(214,22,29,2,NULL),(215,62,19,2,NULL),(216,43,4,2,NULL),(217,43,9,2,NULL),(218,32,19,2,NULL),(219,8,30,2,NULL),(220,46,4,2,NULL),(221,46,9,2,NULL),(222,5,30,2,NULL),(223,34,19,2,NULL),(224,47,4,2,NULL),(225,47,9,2,NULL),(226,22,19,2,NULL),(227,24,30,2,NULL),(228,48,4,2,NULL),(229,48,9,2,NULL),(230,26,30,2,NULL),(231,49,4,2,NULL),(232,50,4,2,NULL),(233,49,9,2,NULL),(234,27,30,2,NULL),(235,51,4,2,NULL),(236,52,4,2,NULL),(237,50,9,2,NULL),(238,28,30,2,NULL),(239,53,4,2,NULL),(240,58,4,2,NULL),(241,36,30,2,NULL),(242,51,9,2,NULL),(243,60,4,2,NULL),(244,61,4,2,NULL),(245,52,9,2,NULL),(246,37,30,2,NULL),(247,62,4,2,NULL),(248,24,7,2,NULL),(249,53,9,2,NULL),(250,38,30,2,NULL),(251,32,4,2,NULL),(252,26,7,2,NULL),(253,58,9,2,NULL),(254,39,30,2,NULL),(255,34,4,2,NULL),(256,27,7,2,NULL),(257,40,30,2,NULL),(258,60,9,2,NULL),(259,28,7,2,NULL),(260,8,27,2,NULL),(261,61,9,2,NULL),(262,41,30,2,NULL),(263,36,7,2,NULL),(264,8,28,2,NULL),(265,62,9,2,NULL),(266,42,30,2,NULL),(267,8,72,2,NULL),(268,37,7,2,NULL),(269,43,30,2,NULL),(270,32,9,2,NULL),(271,8,31,2,NULL),(272,38,7,2,NULL),(273,46,30,2,NULL),(274,34,9,2,NULL),(275,39,7,2,NULL),(276,8,32,2,NULL),(277,5,27,2,NULL),(278,47,30,2,NULL),(279,40,7,2,NULL),(280,8,33,2,NULL),(281,48,30,2,NULL),(282,5,28,2,NULL),(283,8,34,2,NULL),(284,41,7,2,NULL),(285,49,30,2,NULL),(286,5,72,2,NULL),(287,8,35,2,NULL),(288,42,7,2,NULL),(289,50,30,2,NULL),(290,5,31,2,NULL),(291,8,36,2,NULL),(292,43,7,2,NULL),(293,5,32,2,NULL),(294,51,30,2,NULL),(295,46,7,2,NULL),(296,8,37,2,NULL),(297,5,33,2,NULL),(298,52,30,2,NULL),(299,8,38,2,NULL),(300,47,7,2,NULL),(301,5,34,2,NULL),(302,53,30,2,NULL),(303,8,39,2,NULL),(304,48,7,2,NULL),(305,5,35,2,NULL),(306,58,30,2,NULL),(307,8,40,2,NULL),(308,49,7,2,NULL),(309,5,36,2,NULL),(310,60,30,2,NULL),(311,50,7,2,NULL),(312,8,41,2,NULL),(313,5,37,2,NULL),(314,61,30,2,NULL),(315,51,7,2,NULL),(316,8,42,2,NULL),(317,62,30,2,NULL),(318,5,38,2,NULL),(319,8,43,2,NULL),(320,52,7,2,NULL),(321,32,30,2,NULL),(322,5,39,2,NULL),(323,8,44,2,NULL),(324,53,7,2,NULL),(325,5,40,2,NULL),(326,34,30,2,NULL),(327,8,45,2,NULL),(328,58,7,2,NULL),(329,22,30,2,NULL),(330,5,41,2,NULL),(331,60,7,2,NULL),(332,8,62,2,NULL),(333,24,31,2,NULL),(334,5,42,2,NULL),(335,8,63,2,NULL),(336,61,7,2,NULL),(337,5,43,2,NULL),(338,26,31,2,NULL),(339,62,7,2,NULL),(340,8,64,2,NULL),(341,27,31,2,NULL),(342,5,44,2,NULL),(343,8,65,2,NULL),(344,28,31,2,NULL),(345,24,10,2,NULL),(346,8,67,2,NULL),(347,5,45,2,NULL),(348,36,31,2,NULL),(349,26,10,2,NULL),(350,5,62,2,NULL),(351,22,4,2,NULL),(352,37,31,2,NULL),(353,5,63,2,NULL),(354,8,71,2,NULL),(355,27,10,2,NULL),(356,38,31,2,NULL),(357,28,10,2,NULL),(358,5,64,2,NULL),(359,32,7,2,NULL),(360,39,31,2,NULL),(361,5,65,2,NULL),(362,36,10,2,NULL),(363,34,7,2,NULL),(364,40,31,2,NULL),(365,37,10,2,NULL),(366,5,67,2,NULL),(367,22,7,2,NULL),(368,41,31,2,NULL),(369,38,10,2,NULL),(370,22,9,2,NULL),(371,42,31,2,NULL),(372,39,10,2,NULL),(373,5,71,2,NULL),(374,43,31,2,NULL),(375,40,10,2,NULL),(376,41,10,2,NULL),(377,46,31,2,NULL),(378,42,10,2,NULL),(379,42,10,2,NULL),(380,47,31,2,NULL),(381,43,10,2,NULL),(382,46,10,2,NULL),(383,48,31,2,NULL),(384,47,10,2,NULL),(385,47,10,2,NULL),(386,49,31,2,NULL),(387,48,10,2,NULL),(388,48,10,2,NULL),(389,50,31,2,NULL),(390,49,10,2,NULL),(391,49,10,2,NULL),(392,51,31,2,NULL),(393,50,10,2,NULL),(394,50,10,2,NULL),(395,52,31,2,NULL),(396,51,10,2,NULL),(397,51,10,2,NULL),(398,53,31,2,NULL),(399,52,10,2,NULL),(400,52,10,2,NULL),(401,58,31,2,NULL),(402,53,10,2,NULL),(403,53,10,2,NULL),(404,60,31,2,NULL),(405,58,10,2,NULL),(406,58,10,2,NULL),(407,61,31,2,NULL),(408,60,10,2,NULL),(409,60,10,2,NULL),(410,62,31,2,NULL),(411,61,10,2,NULL),(412,61,10,2,NULL),(413,32,31,2,NULL),(414,62,10,2,NULL),(415,62,10,2,NULL),(416,34,31,2,NULL),(417,32,10,2,NULL),(418,24,11,2,NULL),(419,22,31,2,NULL),(420,34,10,2,NULL),(421,26,11,2,NULL),(422,24,32,2,NULL),(423,27,11,2,NULL),(424,22,10,2,NULL),(425,26,32,2,NULL),(426,28,11,2,NULL),(427,27,32,2,NULL),(428,36,11,2,NULL),(429,28,32,2,NULL),(430,37,11,2,NULL),(431,36,32,2,NULL),(432,38,11,2,NULL),(433,37,32,2,NULL),(434,39,11,2,NULL),(435,38,32,2,NULL),(436,40,11,2,NULL),(437,39,32,2,NULL),(438,41,11,2,NULL),(439,40,32,2,NULL),(440,42,11,2,NULL),(441,41,32,2,NULL),(442,43,11,2,NULL),(443,42,32,2,NULL),(444,46,11,2,NULL),(445,43,32,2,NULL),(446,47,11,2,NULL),(447,46,32,2,NULL),(448,48,11,2,NULL),(449,47,32,2,NULL),(450,49,11,2,NULL),(451,48,32,2,NULL),(452,50,11,2,NULL),(453,49,32,2,NULL),(454,51,11,2,NULL),(455,50,32,2,NULL),(456,52,11,2,NULL),(457,51,32,2,NULL),(458,53,11,2,NULL),(459,52,32,2,NULL),(460,58,11,2,NULL),(461,53,32,2,NULL),(462,60,11,2,NULL),(463,58,32,2,NULL),(464,61,11,2,NULL),(465,60,32,2,NULL),(466,62,11,2,NULL),(467,61,32,2,NULL),(468,24,13,2,NULL),(469,62,32,2,NULL),(470,26,13,2,NULL),(471,32,32,2,NULL),(472,27,13,2,NULL),(473,34,32,2,NULL),(474,28,13,2,NULL),(475,22,32,2,NULL),(476,36,13,2,NULL),(477,24,33,2,NULL),(478,37,13,2,NULL),(479,26,33,2,NULL),(480,38,13,2,NULL),(481,27,33,2,NULL),(482,39,13,2,NULL),(483,28,33,2,NULL),(484,40,13,2,NULL),(485,36,33,2,NULL),(486,41,13,2,NULL),(487,37,33,2,NULL),(488,42,13,2,NULL),(489,38,33,2,NULL),(490,43,13,2,NULL),(491,39,33,2,NULL),(492,46,13,2,NULL),(493,40,33,2,NULL),(494,47,13,2,NULL),(495,41,33,2,NULL),(496,48,13,2,NULL),(497,42,33,2,NULL),(498,49,13,2,NULL),(499,43,33,2,NULL),(500,50,13,2,NULL),(501,46,33,2,NULL),(502,51,13,2,NULL),(503,47,33,2,NULL),(504,52,13,2,NULL),(505,48,33,2,NULL),(506,53,13,2,NULL),(507,49,33,2,NULL),(508,58,13,2,NULL),(509,50,33,2,NULL),(510,60,13,2,NULL),(511,51,33,2,NULL),(512,61,13,2,NULL),(513,52,33,2,NULL),(514,62,13,2,NULL),(515,53,33,2,NULL),(516,24,25,2,NULL),(517,58,33,2,NULL),(518,26,25,2,NULL),(519,60,33,2,NULL),(520,27,25,2,NULL),(521,61,33,2,NULL),(522,28,25,2,NULL),(523,20,12,2,NULL),(524,62,33,2,NULL),(525,36,25,2,NULL),(526,32,11,2,NULL),(527,32,33,2,NULL),(528,37,25,2,NULL),(529,34,33,2,NULL),(530,34,11,2,NULL),(531,38,25,2,NULL),(532,22,33,2,NULL),(533,22,11,2,NULL),(534,39,25,2,NULL),(535,24,34,2,NULL),(536,40,25,2,NULL),(537,26,34,2,NULL),(538,32,13,2,NULL),(539,41,25,2,NULL),(540,27,34,2,NULL),(541,34,13,2,NULL),(542,42,25,2,NULL),(543,28,34,2,NULL),(544,22,13,2,NULL),(545,43,25,2,NULL),(546,36,34,2,NULL),(547,46,25,2,NULL),(548,47,25,2,NULL),(549,37,34,2,NULL),(550,48,25,2,NULL),(551,49,25,2,NULL),(552,38,34,2,NULL),(553,50,25,2,NULL),(554,51,25,2,NULL),(555,39,34,2,NULL),(556,52,25,2,NULL),(557,53,25,2,NULL),(558,40,34,2,NULL),(559,58,25,2,NULL),(560,60,25,2,NULL),(561,41,34,2,NULL),(562,61,25,2,NULL),(563,62,25,2,NULL),(564,42,34,2,NULL),(565,32,25,2,NULL),(566,24,14,2,NULL),(567,18,15,2,NULL),(568,43,34,2,NULL),(569,34,25,2,NULL),(570,26,14,2,NULL),(571,27,14,2,NULL),(572,46,34,2,NULL),(573,22,25,2,NULL),(574,28,14,2,NULL),(575,47,34,2,NULL),(576,36,14,2,NULL),(577,37,14,2,NULL),(578,48,34,2,NULL),(579,38,14,2,NULL),(580,39,14,2,NULL),(581,49,34,2,NULL),(582,40,14,2,NULL),(583,41,14,2,NULL),(584,50,34,2,NULL),(585,42,14,2,NULL),(586,43,14,2,NULL),(587,51,34,2,NULL),(588,46,14,2,NULL),(589,47,14,2,NULL),(590,52,34,2,NULL),(591,48,14,2,NULL),(592,49,14,2,NULL),(593,53,34,2,NULL),(594,50,14,2,NULL),(595,51,14,2,NULL),(596,58,34,2,NULL),(597,52,14,2,NULL),(598,53,14,2,NULL),(599,60,34,2,NULL),(600,58,14,2,NULL),(601,60,14,2,NULL),(602,61,34,2,NULL),(603,61,14,2,NULL),(604,62,14,2,NULL),(605,62,34,2,NULL),(606,32,14,2,NULL),(607,24,16,2,NULL),(608,32,34,2,NULL),(609,34,14,2,NULL),(610,26,16,2,NULL),(611,34,34,2,NULL),(612,22,14,2,NULL),(613,27,16,2,NULL),(614,22,34,2,NULL),(615,28,16,2,NULL),(616,36,16,2,NULL),(617,24,35,2,NULL),(618,37,16,2,NULL),(619,38,16,2,NULL),(620,26,35,2,NULL),(621,39,16,2,NULL),(622,40,16,2,NULL),(623,27,35,2,NULL),(624,41,16,2,NULL),(625,42,16,2,NULL),(626,28,35,2,NULL),(627,43,16,2,NULL),(628,46,16,2,NULL),(629,36,35,2,NULL),(630,47,16,2,NULL),(631,48,16,2,NULL),(632,37,35,2,NULL),(633,49,16,2,NULL),(634,50,16,2,NULL),(635,38,35,2,NULL),(636,51,16,2,NULL),(637,52,16,2,NULL),(638,39,35,2,NULL),(639,53,16,2,NULL),(640,58,16,2,NULL),(641,40,35,2,NULL),(642,60,16,2,NULL),(643,61,16,2,NULL),(644,41,35,2,NULL),(645,62,16,2,NULL),(646,24,17,2,NULL),(647,42,35,2,NULL),(648,32,16,2,NULL),(649,26,17,2,NULL),(650,43,35,2,NULL),(651,34,16,2,NULL),(652,27,17,2,NULL),(653,46,35,2,NULL),(654,22,16,2,NULL),(655,28,17,2,NULL),(656,47,35,2,NULL),(657,36,17,2,NULL),(658,37,17,2,NULL),(659,48,35,2,NULL),(660,38,17,2,NULL),(661,39,17,2,NULL),(662,49,35,2,NULL),(663,40,17,2,NULL),(664,41,17,2,NULL),(665,50,35,2,NULL),(666,42,17,2,NULL),(667,43,17,2,NULL),(668,51,35,2,NULL),(669,46,17,2,NULL),(670,47,17,2,NULL),(671,52,35,2,NULL),(672,48,17,2,NULL),(673,49,17,2,NULL),(674,53,35,2,NULL),(675,50,17,2,NULL),(676,51,17,2,NULL),(677,58,35,2,NULL),(678,52,17,2,NULL),(679,53,17,2,NULL),(680,60,35,2,NULL),(681,58,17,2,NULL),(682,58,17,2,NULL),(683,61,35,2,NULL),(684,60,17,2,NULL),(685,62,35,2,NULL),(686,61,17,2,NULL),(687,62,17,2,NULL),(688,32,35,2,NULL),(689,24,18,2,NULL),(690,32,17,2,NULL),(691,34,35,2,NULL),(692,26,18,2,NULL),(693,34,17,2,NULL),(694,22,35,2,NULL),(695,27,18,2,NULL),(696,22,17,2,NULL),(697,24,36,2,NULL),(698,28,18,2,NULL),(699,36,18,2,NULL),(700,26,36,2,NULL),(701,37,18,2,NULL),(702,37,18,2,NULL),(703,27,36,2,NULL),(704,38,18,2,NULL),(705,39,18,2,NULL),(706,28,36,2,NULL),(707,40,18,2,NULL),(708,40,18,2,NULL),(709,36,36,2,NULL),(710,41,18,2,NULL),(711,42,18,2,NULL),(712,37,36,2,NULL),(713,43,18,2,NULL),(714,43,18,2,NULL),(715,38,36,2,NULL),(716,46,18,2,NULL),(717,46,18,2,NULL),(718,39,36,2,NULL),(719,47,18,2,NULL),(720,48,18,2,NULL),(721,40,36,2,NULL),(722,49,18,2,NULL),(723,49,18,2,NULL),(724,41,36,2,NULL),(725,50,18,2,NULL),(726,50,18,2,NULL),(727,42,36,2,NULL),(728,51,18,2,NULL),(729,52,18,2,NULL),(730,43,36,2,NULL),(731,53,18,2,NULL),(732,53,18,2,NULL),(733,46,36,2,NULL),(734,58,18,2,NULL),(735,58,18,2,NULL),(736,47,36,2,NULL),(737,60,18,2,NULL),(738,60,18,2,NULL),(739,48,36,2,NULL),(740,61,18,2,NULL),(741,61,18,2,NULL),(742,49,36,2,NULL),(743,62,18,2,NULL),(744,62,18,2,NULL),(745,50,36,2,NULL),(746,32,18,2,NULL),(747,24,27,2,NULL),(748,51,36,2,NULL),(749,26,27,2,NULL),(750,34,18,2,NULL),(751,52,36,2,NULL),(752,27,27,2,NULL),(753,22,18,2,NULL),(754,53,36,2,NULL),(755,28,27,2,NULL),(756,58,36,2,NULL),(757,36,27,2,NULL),(758,60,36,2,NULL),(759,37,27,2,NULL),(760,61,36,2,NULL),(761,38,27,2,NULL),(762,62,36,2,NULL),(763,39,27,2,NULL),(764,32,36,2,NULL),(765,40,27,2,NULL),(766,34,36,2,NULL),(767,41,27,2,NULL),(768,22,36,2,NULL),(769,42,27,2,NULL),(770,24,37,2,NULL),(771,43,27,2,NULL),(772,26,37,2,NULL),(773,46,27,2,NULL),(774,27,37,2,NULL),(775,47,27,2,NULL),(776,28,37,2,NULL),(777,48,27,2,NULL),(778,36,37,2,NULL),(779,49,27,2,NULL),(780,37,37,2,NULL),(781,50,27,2,NULL),(782,38,37,2,NULL),(783,51,27,2,NULL),(784,39,37,2,NULL),(785,52,27,2,NULL),(786,24,67,2,NULL),(787,40,37,2,NULL),(788,53,27,2,NULL),(789,41,37,2,NULL),(790,26,67,2,NULL),(791,58,27,2,NULL),(792,42,37,2,NULL),(793,27,67,2,NULL),(794,60,27,2,NULL),(795,43,37,2,NULL),(796,28,67,2,NULL),(797,61,27,2,NULL),(798,46,37,2,NULL),(799,36,67,2,NULL),(800,62,27,2,NULL),(801,47,37,2,NULL),(802,37,67,2,NULL),(803,24,28,2,NULL),(804,48,37,2,NULL),(805,38,67,2,NULL),(806,26,28,2,NULL),(807,49,37,2,NULL),(808,39,67,2,NULL),(809,27,28,2,NULL),(810,50,37,2,NULL),(811,40,67,2,NULL),(812,28,28,2,NULL),(813,51,37,2,NULL),(814,41,67,2,NULL),(815,36,28,2,NULL),(816,52,37,2,NULL),(817,42,67,2,NULL),(818,37,28,2,NULL),(819,53,37,2,NULL),(820,43,67,2,NULL),(821,38,28,2,NULL),(822,58,37,2,NULL),(823,46,67,2,NULL),(824,39,28,2,NULL),(825,60,37,2,NULL),(826,47,67,2,NULL),(827,40,28,2,NULL),(828,61,37,2,NULL),(829,48,67,2,NULL),(830,41,28,2,NULL),(831,62,37,2,NULL),(832,49,67,2,NULL),(833,42,28,2,NULL),(834,32,37,2,NULL),(835,50,67,2,NULL),(836,43,28,2,NULL),(837,34,37,2,NULL),(838,51,67,2,NULL),(839,46,28,2,NULL),(840,22,37,2,NULL),(841,52,67,2,NULL),(842,47,28,2,NULL),(843,24,38,2,NULL),(844,53,67,2,NULL),(845,48,28,2,NULL),(846,26,38,2,NULL),(847,58,67,2,NULL),(848,49,28,2,NULL),(849,27,38,2,NULL),(850,60,67,2,NULL),(851,50,28,2,NULL),(852,28,38,2,NULL),(853,61,67,2,NULL),(854,51,28,2,NULL),(855,36,38,2,NULL),(856,62,67,2,NULL),(857,52,28,2,NULL),(858,37,38,2,NULL),(859,32,67,2,NULL),(860,53,28,2,NULL),(861,38,38,2,NULL),(862,34,67,2,NULL),(863,58,28,2,NULL),(864,39,38,2,NULL),(865,22,67,2,NULL),(866,60,28,2,NULL),(867,40,38,2,NULL),(868,22,27,2,NULL),(869,61,28,2,NULL),(870,41,38,2,NULL),(871,62,28,2,NULL),(872,22,28,2,NULL),(873,42,38,2,NULL),(874,24,72,2,NULL),(875,22,72,2,NULL),(876,43,38,2,NULL),(877,26,72,2,NULL),(878,22,38,2,NULL),(879,46,38,2,NULL),(880,27,72,2,NULL),(881,22,39,2,NULL),(882,47,38,2,NULL),(883,28,72,2,NULL),(884,22,40,2,NULL),(885,48,38,2,NULL),(886,36,72,2,NULL),(887,22,41,2,NULL),(888,49,38,2,NULL),(889,37,72,2,NULL),(890,22,42,2,NULL),(891,50,38,2,NULL),(892,38,72,2,NULL),(893,22,43,2,NULL),(894,51,38,2,NULL),(895,39,72,2,NULL),(896,22,44,2,NULL),(897,52,38,2,NULL),(898,40,72,2,NULL),(899,22,45,2,NULL),(900,53,38,2,NULL),(901,41,72,2,NULL),(902,22,62,2,NULL),(903,58,38,2,NULL),(904,42,72,2,NULL),(905,22,63,2,NULL),(906,60,38,2,NULL),(907,43,72,2,NULL),(908,22,64,2,NULL),(909,61,38,2,NULL),(910,46,72,2,NULL),(911,22,65,2,NULL),(912,62,38,2,NULL),(913,47,72,2,NULL),(914,22,71,2,NULL),(915,32,38,2,NULL),(916,48,72,2,NULL),(917,24,71,2,NULL),(918,34,38,2,NULL),(919,49,72,2,NULL),(920,26,71,2,NULL),(921,24,39,2,NULL),(922,50,72,2,NULL),(923,27,71,2,NULL),(924,26,39,2,NULL),(925,51,72,2,NULL),(926,28,71,2,NULL),(927,27,39,2,NULL),(928,52,72,2,NULL),(929,36,71,2,NULL),(930,28,39,2,NULL),(931,53,72,2,NULL),(932,37,71,2,NULL),(933,36,39,2,NULL),(934,58,72,2,NULL),(935,38,71,2,NULL),(936,37,39,2,NULL),(937,60,72,2,NULL),(938,39,71,2,NULL),(939,38,39,2,NULL),(940,61,72,2,NULL),(941,40,71,2,NULL),(942,39,39,2,NULL),(943,62,72,2,NULL),(944,41,71,2,NULL),(945,40,39,2,NULL),(946,42,71,2,NULL),(947,41,39,2,NULL),(948,43,71,2,NULL),(949,42,39,2,NULL),(950,46,71,2,NULL),(951,43,39,2,NULL),(952,46,39,2,NULL),(953,47,71,2,NULL),(954,47,39,2,NULL),(955,47,39,2,NULL),(956,48,71,2,NULL),(957,48,39,2,NULL),(958,48,39,2,NULL),(959,49,71,2,NULL),(960,49,39,2,NULL),(961,49,39,2,NULL),(962,50,71,2,NULL),(963,50,39,2,NULL),(964,51,39,2,NULL),(965,51,71,2,NULL),(966,52,39,2,NULL),(967,52,39,2,NULL),(968,52,71,2,NULL),(969,53,39,2,NULL),(970,58,39,2,NULL),(971,53,71,2,NULL),(972,60,39,2,NULL),(973,60,39,2,NULL),(974,58,71,2,NULL),(975,61,39,2,NULL),(976,61,39,2,NULL),(977,60,71,2,NULL),(978,62,39,2,NULL),(979,62,39,2,NULL),(980,61,71,2,NULL),(981,32,39,2,NULL),(982,24,40,2,NULL),(983,62,71,2,NULL),(984,34,39,2,NULL),(985,26,40,2,NULL),(986,32,71,2,NULL),(987,27,40,2,NULL),(988,28,40,2,NULL),(989,34,71,2,NULL),(990,36,40,2,NULL),(991,37,40,2,NULL),(992,38,40,2,NULL),(993,39,40,2,NULL),(994,40,40,2,NULL),(995,41,40,2,NULL),(996,42,40,2,NULL),(997,43,40,2,NULL),(998,46,40,2,NULL),(999,47,40,2,NULL),(1000,48,40,2,NULL),(1001,49,40,2,NULL),(1002,50,40,2,NULL),(1003,51,40,2,NULL),(1004,52,40,2,NULL),(1005,53,40,2,NULL),(1006,58,40,2,NULL),(1007,60,40,2,NULL),(1008,61,40,2,NULL),(1009,62,40,2,NULL),(1010,24,41,2,NULL),(1011,32,40,2,NULL),(1012,26,41,2,NULL),(1013,34,40,2,NULL),(1014,27,41,2,NULL),(1015,28,41,2,NULL),(1016,36,41,2,NULL),(1017,37,41,2,NULL),(1018,38,41,2,NULL),(1019,39,41,2,NULL),(1020,40,41,2,NULL),(1021,41,41,2,NULL),(1022,42,41,2,NULL),(1023,43,41,2,NULL),(1024,46,41,2,NULL),(1025,47,41,2,NULL),(1026,48,41,2,NULL),(1027,49,41,2,NULL),(1028,50,41,2,NULL),(1029,51,41,2,NULL),(1030,52,41,2,NULL),(1031,53,41,2,NULL),(1032,58,41,2,NULL),(1033,60,41,2,NULL),(1034,61,41,2,NULL),(1035,62,41,2,NULL),(1036,24,42,2,NULL),(1037,32,41,2,NULL),(1038,26,42,2,NULL),(1039,34,41,2,NULL),(1040,27,42,2,NULL),(1041,28,42,2,NULL),(1042,36,42,2,NULL),(1043,37,42,2,NULL),(1044,38,42,2,NULL),(1045,39,42,2,NULL),(1046,39,42,2,NULL),(1047,40,42,2,NULL),(1048,40,42,2,NULL),(1049,41,42,2,NULL),(1050,41,42,2,NULL),(1051,42,42,2,NULL),(1052,43,42,2,NULL),(1053,46,42,2,NULL),(1054,47,42,2,NULL),(1055,48,42,2,NULL),(1056,48,42,2,NULL),(1057,49,42,2,NULL),(1058,50,42,2,NULL),(1059,51,42,2,NULL),(1060,52,42,2,NULL),(1061,53,42,2,NULL),(1062,58,42,2,NULL),(1063,60,42,2,NULL),(1064,61,42,2,NULL),(1065,62,42,2,NULL),(1066,32,42,2,NULL),(1067,24,43,2,NULL),(1068,34,42,2,NULL),(1069,26,43,2,NULL),(1070,27,43,2,NULL),(1071,28,43,2,NULL),(1072,36,43,2,NULL),(1073,37,43,2,NULL),(1074,38,43,2,NULL),(1075,39,43,2,NULL),(1076,40,43,2,NULL),(1077,41,43,2,NULL),(1078,42,43,2,NULL),(1079,43,43,2,NULL),(1080,46,43,2,NULL),(1081,47,43,2,NULL),(1082,48,43,2,NULL),(1083,49,43,2,NULL),(1084,50,43,2,NULL),(1085,51,43,2,NULL),(1086,52,43,2,NULL),(1087,53,43,2,NULL),(1088,58,43,2,NULL),(1089,60,43,2,NULL),(1090,61,43,2,NULL),(1091,62,43,2,NULL),(1092,32,43,2,NULL),(1093,24,44,2,NULL),(1094,34,43,2,NULL),(1095,26,44,2,NULL),(1096,27,44,2,NULL),(1097,28,44,2,NULL),(1098,36,44,2,NULL),(1099,37,44,2,NULL),(1100,38,44,2,NULL),(1101,39,44,2,NULL),(1102,40,44,2,NULL),(1103,41,44,2,NULL),(1104,42,44,2,NULL),(1105,43,44,2,NULL),(1106,46,44,2,NULL),(1107,47,44,2,NULL),(1108,48,44,2,NULL),(1109,49,44,2,NULL),(1110,50,44,2,NULL),(1111,51,44,2,NULL),(1112,52,44,2,NULL),(1113,53,44,2,NULL),(1114,58,44,2,NULL),(1115,60,44,2,NULL),(1116,61,44,2,NULL),(1117,62,44,2,NULL),(1118,32,44,2,NULL),(1119,24,45,2,NULL),(1120,34,44,2,NULL),(1121,26,45,2,NULL),(1122,27,45,2,NULL),(1123,28,45,2,NULL),(1124,36,45,2,NULL),(1125,37,45,2,NULL),(1126,38,45,2,NULL),(1127,39,45,2,NULL),(1128,40,45,2,NULL),(1129,41,45,2,NULL),(1130,42,45,2,NULL),(1131,43,45,2,NULL),(1132,46,45,2,NULL),(1133,47,45,2,NULL),(1134,48,45,2,NULL),(1135,49,45,2,NULL),(1136,50,45,2,NULL),(1137,51,45,2,NULL),(1138,52,45,2,NULL),(1139,53,45,2,NULL),(1140,58,45,2,NULL),(1141,60,45,2,NULL),(1142,61,45,2,NULL),(1143,62,45,2,NULL),(1144,32,45,2,NULL),(1145,24,62,2,NULL),(1146,34,45,2,NULL),(1147,26,62,2,NULL),(1148,27,62,2,NULL),(1149,28,62,2,NULL),(1150,36,62,2,NULL),(1151,37,62,2,NULL),(1152,38,62,2,NULL),(1153,39,62,2,NULL),(1154,40,62,2,NULL),(1155,41,62,2,NULL),(1156,42,62,2,NULL),(1157,43,62,2,NULL),(1158,46,62,2,NULL),(1159,47,62,2,NULL),(1160,48,62,2,NULL),(1161,49,62,2,NULL),(1162,50,62,2,NULL),(1163,51,62,2,NULL),(1164,52,62,2,NULL),(1165,53,62,2,NULL),(1166,58,62,2,NULL),(1167,60,62,2,NULL),(1168,61,62,2,NULL),(1169,62,62,2,NULL),(1170,32,62,2,NULL),(1171,24,63,2,NULL),(1172,34,62,2,NULL),(1173,26,63,2,NULL),(1174,27,63,2,NULL),(1175,28,63,2,NULL),(1176,36,63,2,NULL),(1177,37,63,2,NULL),(1178,38,63,2,NULL),(1179,39,63,2,NULL),(1180,40,63,2,NULL),(1181,41,63,2,NULL),(1182,42,63,2,NULL),(1183,43,63,2,NULL),(1184,46,63,2,NULL),(1185,47,63,2,NULL),(1186,48,63,2,NULL),(1187,49,63,2,NULL),(1188,50,63,2,NULL),(1189,51,63,2,NULL),(1190,52,63,2,NULL),(1191,53,63,2,NULL),(1192,58,63,2,NULL),(1193,60,63,2,NULL),(1194,61,63,2,NULL),(1195,62,63,2,NULL),(1196,32,63,2,NULL),(1197,24,64,2,NULL),(1198,34,63,2,NULL),(1199,26,64,2,NULL),(1200,27,64,2,NULL),(1201,28,64,2,NULL),(1202,36,64,2,NULL),(1203,37,64,2,NULL),(1204,38,64,2,NULL),(1205,39,64,2,NULL),(1206,40,64,2,NULL),(1207,41,64,2,NULL),(1208,42,64,2,NULL),(1209,43,64,2,NULL),(1210,46,64,2,NULL),(1211,47,64,2,NULL),(1212,48,64,2,NULL),(1213,49,64,2,NULL),(1214,50,64,2,NULL),(1215,51,64,2,NULL),(1216,52,64,2,NULL),(1217,53,64,2,NULL),(1218,58,64,2,NULL),(1219,60,64,2,NULL),(1220,61,64,2,NULL),(1221,62,64,2,NULL),(1222,32,64,2,NULL),(1223,34,64,2,NULL),(1224,24,65,2,NULL),(1225,26,65,2,NULL),(1226,27,65,2,NULL),(1227,28,65,2,NULL),(1228,36,65,2,NULL),(1229,36,65,2,NULL),(1230,37,65,2,NULL),(1231,37,65,2,NULL),(1232,38,65,2,NULL),(1233,38,65,2,NULL),(1234,39,65,2,NULL),(1235,40,65,2,NULL),(1236,41,65,2,NULL),(1237,41,65,2,NULL),(1238,42,65,2,NULL),(1239,43,65,2,NULL),(1240,46,65,2,NULL),(1241,46,65,2,NULL),(1242,47,65,2,NULL),(1243,47,65,2,NULL),(1244,48,65,2,NULL),(1245,48,65,2,NULL),(1246,49,65,2,NULL),(1247,50,65,2,NULL),(1248,51,65,2,NULL),(1249,51,65,2,NULL),(1250,52,65,2,NULL),(1251,52,65,2,NULL),(1252,53,65,2,NULL),(1253,53,65,2,NULL),(1254,58,65,2,NULL),(1255,58,65,2,NULL),(1256,60,65,2,NULL),(1257,60,65,2,NULL),(1258,61,65,2,NULL),(1259,61,65,2,NULL),(1260,62,65,2,NULL),(1261,62,65,2,NULL),(1262,32,65,2,NULL),(1263,32,27,2,NULL),(1264,34,65,2,NULL),(1265,34,27,2,NULL),(1266,32,28,2,NULL),(1267,34,28,2,NULL),(1268,32,72,2,NULL),(1269,34,72,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:45
