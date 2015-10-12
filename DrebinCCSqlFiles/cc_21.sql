-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_21
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (24,'(.*)'),(23,'NULL-CONSTANT'),(20,'android.appwidget.action.APPWIDGET_UPDATE'),(9,'android.intent.action.ACTION_POWER_CONNECTED'),(35,'android.intent.action.ALARM_CHANGED'),(31,'android.intent.action.BATTERY_CHANGED'),(13,'android.intent.action.BATTERY_LOW'),(8,'android.intent.action.BATTERY_OKAY'),(3,'android.intent.action.BOOT_COMPLETED'),(37,'android.intent.action.CONFIGURATION_CHANGED'),(15,'android.intent.action.INPUT_METHOD_CHANGED'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.PHONE_STATE'),(27,'android.intent.action.SEND'),(22,'android.intent.action.SENDTO'),(38,'android.intent.action.TIMEZONE_CHANGED'),(34,'android.intent.action.TIME_SET'),(30,'android.intent.action.TIME_TICK'),(19,'android.intent.action.UMS_CONNECTED'),(17,'android.intent.action.UMS_DISCONNECTED'),(14,'android.intent.action.USER_PRESENT'),(21,'android.intent.action.VIEW'),(39,'android.net.conn.BACKGROUND_DATA_SETTING_CHANGED'),(5,'android.net.conn.CONNECTIVITY_CHANGE'),(16,'android.net.conn.MEDIA_NOFS'),(18,'android.net.wifi.PICK_WIFI_WORK'),(11,'android.provider.Telephony.SIM_FULL'),(10,'android.provider.Telephony.SMS_RECEIVED'),(12,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(2,'android.service.wallpaper.WallpaperService'),(40,'android.settings.LOCATION_SOURCE_SETTINGS'),(25,'com.anddoes.fancywidget.pro.UPDATE_ALL'),(26,'com.anddoes.fancywidget.pro.UPDATE_LOCATION'),(29,'com.anddoes.fancywidget.pro.UPDATE_WEATHER'),(32,'com.android.sync.SYNC_CONN_STATUS_CHANGED'),(7,'com.android.vending.INSTALL_REFERRER'),(4,'com.lz.myservicestart'),(33,'com.teslacoilsw.widgetlocker.intent.LOCKED'),(36,'com.teslacoilsw.widgetlocker.intent.UNLOCKED'),(28,'com/android/vending/licensing/ILicensingService');
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
INSERT INTO `Applications` VALUES (1,'com.zhangling.anTest20',10),(2,'com.bytedroid.liveprints',35),(3,'MysticGD.iBoobsLite',24),(4,'com.keji.danti426',27),(5,'com.keji.danti561',32),(6,'com.anddoes.fancywidget.pro',7),(7,'com.mechanics.engine',24);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.zhangling.anTest20.Main'),(2,1,'com.zhangling.anTest20.Add'),(3,1,'com.zhangling.anTest20.Select'),(4,1,'com.zhangling.anTest20.SelectRes'),(5,1,'com.zhangling.anTest20.Background'),(6,1,'com.zhangling.anTest20.Test'),(7,2,'com.bytedroid.liveprints.LivePrintsSettings'),(8,1,'com.zhangling.anTest20.Booking'),(9,2,'com.bytedroid.liveprints.LivePrints'),(10,1,'com.zhangling.anTest20.Lists'),(11,1,'com.zhangling.anTest20.Query'),(12,1,'com.zhangling.anTest20.History'),(13,2,'com.xxx.yyy.MyService'),(14,1,'com.zhangling.anTest20.TextDetail'),(15,2,'com.xxx.yyy.MyBoolService'),(16,1,'com.zhangling.anTest20.Setting'),(17,2,'com.xxx.yyy.MyAlarmReceiver'),(18,2,'com.xxx.yyy.NetWorkReceiver'),(19,2,'com.xxx.yyy.CustomBroadcastReceiver'),(20,3,'MysticGD.iBoobsLite.MainActivity'),(21,3,'MysticGD.iBoobsLite.LogoActivity'),(22,3,'MysticGD.iBoobsLite.SettingsActivity'),(23,3,'com.admob.android.ads.AdMobActivity'),(24,3,'MysticGD.iBoobsLite.SystemPlus'),(25,3,'MysticGD.iBoobsLite.MainRun'),(26,3,'com.admob.android.ads.analytics.InstallReceiver'),(27,3,'MysticGD.iBoobsLite.ForAlarm'),(28,4,'com.keji.danti.MainA'),(29,4,'com.keji.danti.Boutique'),(30,4,'com.keji.danti.Background'),(31,4,'com.keji.danti.Lists'),(32,4,'com.keji.danti.History'),(33,4,'com.keji.danti.TextDetail'),(34,5,'com.keji.danti.MainA'),(35,4,'com.keji.danti.Setting'),(36,4,'com.android.battery.BalckActivity2'),(37,5,'com.keji.danti.Boutique'),(38,4,'com.android.battery.BalckActivity'),(39,5,'com.keji.danti.Background'),(40,4,'com.android.battery.KillThreeSixZero'),(41,5,'com.keji.danti.Lists'),(42,4,'com.android.battery.BridgeProvider'),(43,5,'com.keji.danti.History'),(44,5,'com.keji.danti.TextDetail'),(45,4,'com.android.battery.AdSmsService'),(46,5,'com.keji.danti.Setting'),(47,4,'com.android.battery.PhoneService'),(48,5,'com.android.view.custom.BaseAActivity'),(49,4,'com.android.battery.BaseBroadcastReceiver'),(50,5,'com.android.view.custom.FirstAActivity'),(51,5,'com.android.view.custom.SecondAActivity'),(52,5,'com.android.view.custom.ThirdAActivity'),(53,5,'com.android.view.custom.FourthAActivity'),(54,5,'com.android.view.custom.FirstAService'),(55,5,'com.android.view.custom.SecondAService'),(56,5,'com.android.view.custom.ThirdAService'),(57,5,'com.android.view.custom.FourthAService'),(58,5,'com.android.view.custom.BaseABroadcastReceiver'),(59,6,'com.anddoes.fancywidget.pro.PreferencesActivity'),(60,6,'com.anddoes.fancywidget.pro.SetLocationActivity'),(61,6,'com.anddoes.fancywidget.pro.ColorPickerActivity'),(62,6,'com.anddoes.fancywidget.pro.TabbedSkinBrowser'),(63,6,'com.anddoes.fancywidget.pro.SkinListActivity'),(64,6,'com.anddoes.fancywidget.pro.SkinBrowserActivity'),(65,6,'com.anddoes.fancywidget.pro.AppPickerActivity'),(66,6,'com.anddoes.fancywidget.pro.ForecastActivity'),(67,6,'com.anddoes.fancywidget.pro.UpdateWeatherService'),(68,6,'com.anddoes.fancywidget.pro.UpdateLocationService'),(69,6,'com.anddoes.fancywidget.pro.UpdateService'),(70,6,'com.xxx.yyy.MyService'),(71,6,'com.anddoes.fancywidget.pro.FancyHome'),(72,6,'com.anddoes.fancywidget.pro.FancyHome14'),(73,6,'com.anddoes.fancywidget.pro.FancyClock'),(74,7,'com.mechanics.engine.Startup'),(75,6,'com.anddoes.fancywidget.pro.FancyWeather'),(76,1,'com.zhangling.anTest20.Booking$1'),(77,7,'com.openfeint.internal.ui.IntroFlow'),(78,6,'com.anddoes.fancywidget.pro.FancyForecast'),(79,7,'com.openfeint.api.ui.Dashboard'),(80,7,'com.openfeint.internal.ui.Settings'),(81,6,'com.xxx.yyy.MyBoolService'),(82,7,'com.openfeint.internal.ui.NativeBrowser'),(83,1,'com.zhangling.anTest20.BaseActivity$4'),(84,7,'com.mechanics.engine.SystemPlus'),(85,6,'com.xxx.yyy.MyAlarmReceiver'),(86,7,'com.mechanics.engine.MainRun'),(87,7,'com.mechanics.engine.ForAlarm'),(88,6,'com.xxx.yyy.NetWorkReceiver'),(89,1,'com.zhangling.anTest20.BaseAActivity'),(90,6,'com.xxx.yyy.CustomBroadcastReceiver'),(91,1,'com.zhangling.anTest20.Add$1'),(92,1,'com.zhangling.anTest20.Lists$3'),(93,3,'MysticGD.iBoobsLite.BaseAActivity'),(94,4,'com.keji.danti.pf'),(95,4,'com.keji.danti.a.ao'),(96,4,'com.keji.danti.a.ar'),(97,4,'com.android.battery.b.pa'),(98,4,'com.keji.danti.a.st'),(99,4,'com.keji.danti.a.a'),(100,5,'com.keji.danti.a.ar'),(101,5,'com.keji.danti.a.ao'),(102,5,'com.keji.danti.a.sy'),(103,5,'com.keji.danti.a.sv'),(104,5,'com.sec.android.providers.drm.Onion'),(105,5,'com.keji.danti.ph'),(106,7,'com.mechanics.engine.BaseAActivity'),(107,7,'com.openfeint.internal.ImagePicker'),(108,6,'com.anddoes.fancywidget.pro.az'),(109,6,'com.anddoes.fancywidget.pro.aq'),(110,6,'com.android.vending.licensing.r'),(111,6,'com.anddoes.fancywidget.pro.bw'),(112,6,'com.anddoes.fancywidget.pro.bs'),(113,6,'com.anddoes.fancywidget.pro.ar'),(114,6,'com.anddoes.fancywidget.pro.bk'),(115,6,'com.anddoes.fancywidget.pro.p'),(116,6,'com.anddoes.fancywidget.pro.bc'),(117,6,'com.anddoes.fancywidget.pro.ba'),(118,6,'com.anddoes.fancywidget.pro.bn'),(119,6,'com.anddoes.fancywidget.pro.bb'),(120,6,'com.anddoes.fancywidget.pro.h'),(121,6,'android.appwidget.AppWidgetProvider'),(122,6,'com.anddoes.fancywidget.pro.bg'),(123,6,'com.anddoes.fancywidget.pro.bl'),(124,6,'com.anddoes.fancywidget.pro.y');
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'index'),(2,3,'index'),(3,4,'index'),(4,4,'res'),(5,23,'json'),(6,23,'msm'),(7,23,'ru'),(8,23,'cbo'),(9,23,'rd'),(10,23,'sc'),(11,23,'t'),(12,23,'u'),(13,23,'b'),(14,23,'si'),(15,23,'p'),(16,23,'c'),(17,26,'ADMOB_PUBLISHER_ID'),(18,26,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(19,20,'ADMOB_PUBLISHER_ID'),(20,20,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(21,23,'oi'),(22,23,'su'),(23,23,'o'),(24,23,'a'),(25,23,'cs'),(26,23,'int'),(27,23,'mi'),(28,26,'(.*)'),(29,26,'referrer'),(30,23,'au'),(31,23,'skd'),(32,23,'sin'),(33,23,'nosk'),(34,26,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(35,20,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(36,23,'ap'),(37,23,'or'),(38,23,'sd'),(39,23,'tr'),(40,23,'sku'),(41,23,'ad'),(42,23,'s'),(43,23,'$'),(44,30,'data'),(45,49,'pdus'),(46,33,'index'),(47,49,'APP_UID'),(48,33,'notSaveDate'),(49,33,'appsec'),(50,31,'appsec'),(51,44,'index'),(52,41,'appsec'),(53,58,'PID'),(54,39,'data'),(55,44,'notSaveDate'),(56,79,'_of_cookie_(.*)expiry'),(57,78,'_of_cookie_(.*)expiry'),(58,76,'_of_cookie_(.*)expiry'),(59,79,'com.openfeint.internal.ui.NativeBrowser.argument.failure_desc'),(60,79,'mCreatingDeviceSession'),(61,78,'mCreatingDeviceSession'),(62,76,'mCreatingDeviceSession'),(63,79,'mCurrentlyLoggingIn'),(64,78,'mCurrentlyLoggingIn'),(65,76,'mCurrentlyLoggingIn'),(66,79,'mBanned'),(67,78,'mBanned'),(68,76,'mBanned'),(69,79,'content_name'),(70,78,'content_name'),(71,76,'content_name'),(72,79,'mCurrentUser'),(73,78,'mCurrentUser'),(74,76,'mCurrentUser'),(75,79,'com.openfeint.internal.ui.NativeBrowser.argument.result'),(76,79,'mApproved'),(77,78,'mApproved'),(78,76,'mApproved'),(79,79,'_of_cookie_(.*)value'),(80,78,'_of_cookie_(.*)value'),(81,76,'_of_cookie_(.*)value'),(82,79,'screenName'),(83,78,'screenName'),(84,76,'screenName'),(85,79,'mDeviceSessionCreated'),(86,78,'mDeviceSessionCreated'),(87,76,'mDeviceSessionCreated'),(88,79,'mDeclined'),(89,78,'mDeclined'),(90,76,'mDeclined'),(91,81,'com.openfeint.internal.ui.NativeBrowser.argument.src'),(92,79,'com.openfeint.internal.ui.NativeBrowser.argument.failed'),(93,79,'_of_cookie_(.*)domain'),(94,78,'_of_cookie_(.*)domain'),(95,76,'_of_cookie_(.*)domain'),(96,81,'com.openfeint.internal.ui.NativeBrowser.argument.timeout'),(97,79,'_of_cookie_(.*)path'),(98,78,'_of_cookie_(.*)path'),(99,76,'_of_cookie_(.*)path'),(100,72,'appWidgetId'),(101,66,'screensaver'),(102,63,'skin_type'),(103,73,'appWidgetIds'),(104,77,'appWidgetId'),(105,65,'app_type'),(106,62,'skin_type'),(107,75,'appWidgetId'),(108,71,'appWidgetId'),(109,73,'appWidgetId'),(110,64,'skin_featured'),(111,64,'skin_type'),(112,77,'appWidgetIds'),(113,72,'appWidgetIds'),(114,71,'appWidgetIds'),(115,75,'appWidgetIds');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,10,'a',0,NULL,NULL),(10,9,'s',1,9,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'s',0,NULL,NULL),(69,69,'s',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'r',1,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,74,'a',1,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,77,'a',0,NULL,NULL),(77,78,'r',1,NULL,NULL),(78,79,'a',0,NULL,NULL),(79,80,'a',0,NULL,NULL),(80,81,'r',1,NULL,NULL),(81,82,'a',0,NULL,NULL),(82,84,'s',0,NULL,NULL),(83,85,'r',1,NULL,NULL),(84,86,'s',0,NULL,NULL),(85,87,'r',0,NULL,NULL),(86,88,'r',1,NULL,NULL),(87,90,'r',1,NULL,NULL),(88,121,'r',1,NULL,NULL),(89,122,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,8),(2,2,17),(3,3,18),(4,4,9),(5,5,1),(6,6,2),(7,7,9),(8,8,20),(9,9,25),(10,10,20),(11,11,20),(12,12,20),(13,13,20),(14,14,20),(15,15,27),(16,16,28),(17,17,31),(18,18,33),(19,19,35),(20,20,49),(21,21,31),(22,22,29),(23,23,49),(24,24,33),(25,25,49),(26,26,49),(27,27,28),(28,28,44),(29,29,34),(30,30,46),(31,31,48),(32,32,41),(33,33,58),(34,34,41),(35,35,44),(36,36,37),(37,37,84),(38,38,85),(39,39,74),(40,40,79),(41,41,74),(42,42,59),(43,43,59),(44,44,72),(45,45,63),(46,46,59),(47,46,64),(48,46,66),(49,47,75),(50,48,59),(51,49,61),(52,49,65),(53,50,59),(54,51,69),(55,52,66),(56,53,59),(57,54,59),(58,55,71),(59,56,63),(60,57,66),(61,57,65),(62,57,61),(63,58,73),(64,59,66),(65,60,64),(66,61,59),(67,62,59),(68,63,59),(69,64,59),(70,65,66),(71,66,61),(72,66,65),(73,66,66),(74,67,59),(75,68,59),(76,69,77),(77,70,65),(78,70,61),(79,71,59),(80,72,61),(81,72,65),(82,72,66),(83,73,83),(84,74,86),(85,75,68),(86,76,59),(87,77,64);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,76,'<com.zhangling.anTest20.Booking$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(2,17,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(3,18,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(4,83,'<com.zhangling.anTest20.BaseActivity$4: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(5,89,'<com.zhangling.anTest20.BaseAActivity: void startBridge()>',6,'s',NULL),(6,91,'<com.zhangling.anTest20.Add$1: void onClick(android.view.View)>',10,'a',NULL),(7,92,'<com.zhangling.anTest20.Lists$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(8,20,'<MysticGD.iBoobsLite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(9,25,'<MysticGD.iBoobsLite.MainRun: void b()>',4,'s',NULL),(10,20,'<MysticGD.iBoobsLite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(11,93,'<MysticGD.iBoobsLite.BaseAActivity: void a()>',17,'s',NULL),(12,20,'<MysticGD.iBoobsLite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(13,93,'<MysticGD.iBoobsLite.BaseAActivity: void b()>',6,'s',NULL),(14,20,'<MysticGD.iBoobsLite.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(15,27,'<MysticGD.iBoobsLite.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(16,28,'<com.keji.danti.MainA: void f()>',12,'a',NULL),(17,94,'<com.keji.danti.pf: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(18,95,'<com.keji.danti.a.ao: boolean a(android.view.MenuItem)>',19,'a',NULL),(19,96,'<com.keji.danti.a.ar: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(20,97,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',39,'s',NULL),(21,98,'<com.keji.danti.a.st: void onClick(android.view.View)>',11,'a',NULL),(22,99,'<com.keji.danti.a.a: void a(java.lang.String)>',6,'a',NULL),(23,97,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',33,'s',NULL),(24,95,'<com.keji.danti.a.ao: void b(java.lang.String)>',19,'a',NULL),(25,97,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',55,'a',NULL),(26,97,'<com.android.battery.b.pa: boolean a(android.content.Context,android.content.Intent)>',36,'s',NULL),(27,99,'<com.keji.danti.a.a: void c()>',7,'a',NULL),(28,100,'<com.keji.danti.a.ar: boolean a(android.view.MenuItem)>',19,'a',NULL),(29,101,'<com.keji.danti.a.ao: void c()>',7,'a',NULL),(30,102,'<com.keji.danti.a.sy: boolean onPreferenceClick(android.preference.Preference)>',11,'a',NULL),(31,48,'<com.android.view.custom.BaseAActivity: void onCreate(android.os.Bundle)>',8,'r',NULL),(32,103,'<com.keji.danti.a.sv: void onClick(android.view.View)>',14,'a',NULL),(33,104,'<com.sec.android.providers.drm.Onion: void c()>',65,'r',NULL),(34,105,'<com.keji.danti.ph: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(35,100,'<com.keji.danti.a.ar: void b(java.lang.String)>',23,'a',NULL),(36,101,'<com.keji.danti.a.ao: void a(java.lang.String)>',6,'a',NULL),(37,86,'<com.mechanics.engine.MainRun: void b()>',4,'s',NULL),(38,87,'<com.mechanics.engine.ForAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(39,106,'<com.mechanics.engine.BaseAActivity: void b()>',6,'s',NULL),(40,107,'<com.openfeint.internal.ImagePicker: boolean onActivityResult(int,int,android.content.Intent)>',12,'p',0),(41,106,'<com.mechanics.engine.BaseAActivity: void a()>',17,'s',NULL),(42,108,'<com.anddoes.fancywidget.pro.az: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(43,59,'<com.anddoes.fancywidget.pro.PreferencesActivity: void onPause()>',11,'s',NULL),(44,72,'<com.anddoes.fancywidget.pro.FancyHome14: void onReceive(android.content.Context,android.content.Intent)>',22,'s',NULL),(45,109,'<com.anddoes.fancywidget.pro.aq: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(46,110,'<com.android.vending.licensing.r: void a(com.android.vending.licensing.o)>',25,'s',NULL),(47,75,'<com.anddoes.fancywidget.pro.FancyWeather: void onReceive(android.content.Context,android.content.Intent)>',22,'s',NULL),(48,59,'<com.anddoes.fancywidget.pro.PreferencesActivity: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',116,'a',NULL),(49,111,'<com.anddoes.fancywidget.pro.bw: void onClick(android.view.View)>',54,'s',NULL),(50,59,'<com.anddoes.fancywidget.pro.PreferencesActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',39,'a',NULL),(51,69,'<com.anddoes.fancywidget.pro.UpdateService: void a(android.content.Intent)>',69,'s',NULL),(52,112,'<com.anddoes.fancywidget.pro.bs: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(53,59,'<com.anddoes.fancywidget.pro.PreferencesActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',68,'a',NULL),(54,59,'<com.anddoes.fancywidget.pro.PreferencesActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',47,'a',NULL),(55,71,'<com.anddoes.fancywidget.pro.FancyHome: void onReceive(android.content.Context,android.content.Intent)>',22,'s',NULL),(56,113,'<com.anddoes.fancywidget.pro.ar: void onClick(android.content.DialogInterface,int)>',63,'s',NULL),(57,114,'<com.anddoes.fancywidget.pro.bk: void onClick(android.view.View)>',16,'a',NULL),(58,73,'<com.anddoes.fancywidget.pro.FancyClock: void onReceive(android.content.Context,android.content.Intent)>',20,'s',NULL),(59,66,'<com.anddoes.fancywidget.pro.ForecastActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(60,115,'<com.anddoes.fancywidget.pro.p: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(61,59,'<com.anddoes.fancywidget.pro.PreferencesActivity: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',166,'s',NULL),(62,116,'<com.anddoes.fancywidget.pro.bc: boolean onPreferenceClick(android.preference.Preference)>',11,'s',NULL),(63,59,'<com.anddoes.fancywidget.pro.PreferencesActivity: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',128,'s',NULL),(64,117,'<com.anddoes.fancywidget.pro.ba: boolean onPreferenceClick(android.preference.Preference)>',7,'a',NULL),(65,66,'<com.anddoes.fancywidget.pro.ForecastActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'s',NULL),(66,118,'<com.anddoes.fancywidget.pro.bn: void onClick(android.view.View)>',10,'a',NULL),(67,119,'<com.anddoes.fancywidget.pro.bb: boolean onPreferenceClick(android.preference.Preference)>',7,'a',NULL),(68,59,'<com.anddoes.fancywidget.pro.PreferencesActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',55,'a',NULL),(69,78,'<com.anddoes.fancywidget.pro.FancyForecast: void onReceive(android.content.Context,android.content.Intent)>',22,'s',NULL),(70,120,'<com.anddoes.fancywidget.pro.h: void onClick(android.view.View)>',12,'s',NULL),(71,59,'<com.anddoes.fancywidget.pro.PreferencesActivity: void e(com.anddoes.fancywidget.pro.PreferencesActivity)>',4,'a',NULL),(72,123,'<com.anddoes.fancywidget.pro.bl: void onClick(android.view.View)>',8,'a',NULL),(73,85,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(74,88,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(75,68,'<com.anddoes.fancywidget.pro.UpdateLocationService: void onDestroy()>',7,'s',NULL),(76,59,'<com.anddoes.fancywidget.pro.PreferencesActivity: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',148,'s',NULL),(77,124,'<com.anddoes.fancywidget.pro.y: void onClick(android.content.DialogInterface,int)>',19,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,8,21),(2,12,21),(3,16,21),(4,22,21),(5,24,22),(6,31,23),(7,32,24),(8,34,24),(9,35,23),(10,37,22),(11,38,21),(12,43,21),(13,44,25),(14,45,26),(15,46,21),(16,47,27),(17,48,28),(18,49,26),(19,51,25),(20,56,21),(21,59,26),(22,60,25),(23,61,21),(24,63,21),(25,65,21),(26,70,21),(27,71,26),(28,72,26),(29,73,26),(30,74,21),(31,75,29),(32,76,21),(33,77,21),(34,78,21),(35,79,21),(36,81,26),(37,82,25),(38,83,40),(39,84,21),(40,85,21),(41,86,21),(42,89,29),(43,90,26),(44,91,27),(45,92,21),(46,93,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/zhangling/anTest20/Select'),(2,2,'com/xxx/yyy/MyService'),(3,3,'com/xxx/yyy/MyService'),(4,4,'com/zhangling/anTest20/Select'),(5,5,'com.sec.android.bridge.BridgeProvider'),(6,6,'com/zhangling/anTest20/Select'),(7,7,'com/zhangling/anTest20/Add'),(8,9,'com.android.battery.BridgeProvider'),(9,10,'MysticGD/iBoobsLite/LogoActivity'),(10,11,'MysticGD/iBoobsLite/SystemPlus'),(11,13,'com.android.battery.BridgeProvider'),(12,14,'MysticGD/iBoobsLite/SettingsActivity'),(13,15,'MysticGD/iBoobsLite/MainRun'),(14,16,'com.android.packageinstaller.PackageInstallerActivity'),(15,17,'com/keji/danti/TextDetail'),(16,18,'com/keji/danti/Setting'),(17,19,'com/keji/danti/Background'),(18,20,'com/android/battery/AdSmsService'),(19,21,'com/keji/danti/TextDetail'),(20,23,'com/android/battery/BridgeProvider'),(21,25,'com/android/battery/KillThreeSixZero'),(22,26,'com/android/battery/PhoneService'),(23,27,'com.android.settings.WirelessSettings'),(24,28,'com/keji/danti/Setting'),(25,29,'com.android.settings.WirelessSettings'),(26,30,'com/keji/danti/Background'),(27,33,'com/keji/danti/TextDetail'),(28,36,'com/keji/danti/TextDetail'),(29,39,'com.android.battery.BridgeProvider'),(30,40,'com/mechanics/engine/MainRun'),(31,41,'com.android.battery.BridgeProvider'),(32,42,'com/mechanics/engine/SystemPlus'),(33,44,'com/anddoes/fancywidget/pro/UpdateService'),(34,45,'com/anddoes/fancywidget/pro/UpdateService'),(35,49,'com/anddoes/fancywidget/pro/UpdateService'),(36,50,'com/anddoes/fancywidget/pro/SetLocationActivity'),(37,51,'com/anddoes/fancywidget/pro/UpdateService'),(38,52,'com/anddoes/fancywidget/pro/AppPickerActivity'),(39,53,'com/anddoes/fancywidget/pro/UpdateLocationService'),(40,54,'com/anddoes/fancywidget/pro/UpdateWeatherService'),(41,57,'com/anddoes/fancywidget/pro/AppPickerActivity'),(42,58,'com/anddoes/fancywidget/pro/AppPickerActivity'),(43,59,'com/anddoes/fancywidget/pro/UpdateService'),(44,60,'com/anddoes/fancywidget/pro/UpdateService'),(45,62,'(.*)'),(46,64,'NULL-CONSTANT'),(47,66,'(.*)'),(48,67,'NULL-CONSTANT'),(49,68,'com/anddoes/fancywidget/pro/UpdateService'),(50,69,'com/anddoes/fancywidget/pro/PreferencesActivity'),(51,71,'com/anddoes/fancywidget/pro/UpdateService'),(52,72,'com/anddoes/fancywidget/pro/UpdateService'),(53,73,'com/anddoes/fancywidget/pro/UpdateService'),(54,75,'com/anddoes/fancywidget/pro/UpdateService'),(55,80,'com/anddoes/fancywidget/pro/AppPickerActivity'),(56,81,'com/anddoes/fancywidget/pro/UpdateService'),(57,82,'com/anddoes/fancywidget/pro/UpdateService'),(58,87,'com/xxx/yyy/MyService'),(59,88,'com/xxx/yyy/MyService'),(60,89,'com/anddoes/fancywidget/pro/UpdateService'),(61,90,'com/anddoes/fancywidget/pro/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,8,1),(2,12,2),(3,16,3),(4,18,4),(5,22,5),(6,24,6),(7,28,7),(8,37,8),(9,38,9),(10,43,10),(11,46,11),(12,56,12),(13,61,13),(14,63,14),(15,65,15),(16,70,16),(17,74,17),(18,76,18),(19,77,19),(20,78,20),(21,79,21),(22,84,22),(23,85,23),(24,86,24),(25,92,25),(26,93,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'index'),(2,1,'notSaveDate'),(3,4,'index'),(4,6,'index'),(5,7,'index'),(6,17,'index'),(7,21,'index'),(8,24,'sms_body'),(9,31,'packageName'),(10,32,'packageName'),(11,33,'index'),(12,36,'index'),(13,37,'sms_body'),(14,45,'update_type'),(15,47,'android.intent.extra.SUBJECT'),(16,47,'android.intent.extra.EMAIL'),(17,49,'update_type'),(18,52,'app_type'),(19,53,'update_type'),(20,54,'update_type'),(21,55,'update_type'),(22,57,'app_type'),(23,58,'app_type'),(24,59,'update_type'),(25,71,'update_type'),(26,72,'update_type'),(27,73,'update_type'),(28,75,'update_type'),(29,80,'app_type'),(30,81,'update_type'),(31,89,'update_type'),(32,90,'update_type'),(33,91,'android.intent.extra.SUBJECT'),(34,91,'android.intent.extra.EMAIL');
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,1),(8,8,7),(9,9,1),(10,10,1),(11,11,1),(12,12,3),(13,12,5),(14,12,8),(15,12,10),(16,12,9),(17,12,15),(18,12,13),(19,12,14),(20,12,11),(21,12,12),(22,13,10),(23,13,9),(24,13,5),(25,13,3),(26,13,16),(27,13,17),(28,13,18),(29,13,19),(30,13,14),(31,13,15),(32,14,1),(33,15,20),(34,16,20),(35,17,20),(36,18,1),(37,19,20),(38,20,20),(39,21,3),(40,22,4),(41,23,5),(42,24,6),(43,25,31),(44,25,30),(45,25,14),(46,25,35),(47,25,34),(48,25,33),(49,25,32),(50,25,39),(51,25,38),(52,25,37),(53,25,36),(54,26,39),(55,26,37),(56,26,38),(57,26,35),(58,26,36),(59,26,33),(60,26,14),(61,26,34),(62,26,31),(63,26,32),(64,26,30),(65,27,38),(66,27,39),(67,27,34),(68,27,35),(69,27,36),(70,27,37),(71,27,30),(72,27,31),(73,27,32),(74,27,14),(75,27,33),(76,28,37),(77,28,38),(78,28,35),(79,28,36),(80,28,39),(81,28,30),(82,28,33),(83,28,34),(84,28,31),(85,28,14),(86,28,32),(87,29,36),(88,29,37),(89,29,38),(90,29,39),(91,29,14),(92,29,30),(93,29,31),(94,29,32),(95,29,33),(96,29,34),(97,29,35),(98,30,36),(99,30,35),(100,30,34),(101,30,33),(102,30,32),(103,30,31),(104,30,30),(105,30,14),(106,30,39),(107,30,38),(108,30,37),(109,31,35),(110,31,34),(111,31,37),(112,31,36),(113,31,31),(114,31,30),(115,31,14),(116,31,33),(117,31,32),(118,31,39),(119,31,38),(120,32,34),(121,32,33),(122,32,32),(123,32,31),(124,32,38),(125,32,37),(126,32,36),(127,32,35),(128,32,14),(129,32,30),(130,32,39),(131,33,33),(132,33,32),(133,33,35),(134,33,34),(135,33,37),(136,33,36),(137,33,39),(138,33,38),(139,33,30),(140,33,31),(141,33,14),(142,34,33),(143,34,34),(144,34,35),(145,34,36),(146,34,37),(147,34,38),(148,34,39),(149,34,14),(150,34,30),(151,34,31),(152,34,32),(153,35,36),(154,35,37),(155,35,34),(156,35,35),(157,35,38),(158,35,39),(159,35,31),(160,35,14),(161,35,30),(162,35,33),(163,35,32);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,7,1),(3,9,1),(4,10,1),(5,14,1),(6,18,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,47,'message','rfc822'),(2,91,'message','rfc822');
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
INSERT INTO `IPackages` VALUES (1,1,'com.zhangling.anTest20'),(2,2,'com.bytedroid.liveprints'),(3,3,'com.bytedroid.liveprints'),(4,4,'com.zhangling.anTest20'),(5,5,'com.sec.android.bridge'),(6,6,'com.zhangling.anTest20'),(7,7,'com.zhangling.anTest20'),(8,9,'com.android.battery'),(9,10,'MysticGD.iBoobsLite'),(10,11,'MysticGD.iBoobsLite'),(11,13,'com.android.battery'),(12,14,'MysticGD.iBoobsLite'),(13,15,'MysticGD.iBoobsLite'),(14,16,'com.android.packageinstaller'),(15,17,'com.keji.danti426'),(16,18,'com.keji.danti426'),(17,19,'com.keji.danti426'),(18,20,'com.keji.danti426'),(19,21,'com.keji.danti426'),(20,23,'com.keji.danti426'),(21,25,'com.keji.danti426'),(22,26,'com.keji.danti426'),(23,27,'com.android.settings'),(24,28,'com.keji.danti561'),(25,29,'com.android.settings'),(26,30,'com.keji.danti561'),(27,33,'com.keji.danti561'),(28,36,'com.keji.danti561'),(29,39,'com.android.battery'),(30,40,'com.mechanics.engine'),(31,41,'com.android.battery'),(32,42,'com.mechanics.engine'),(33,44,'com.anddoes.fancywidget.pro'),(34,45,'com.anddoes.fancywidget.pro'),(35,49,'com.anddoes.fancywidget.pro'),(36,50,'com.anddoes.fancywidget.pro'),(37,51,'com.anddoes.fancywidget.pro'),(38,52,'com.anddoes.fancywidget.pro'),(39,53,'com.anddoes.fancywidget.pro'),(40,54,'com.anddoes.fancywidget.pro'),(41,57,'com.anddoes.fancywidget.pro'),(42,58,'com.anddoes.fancywidget.pro'),(43,59,'com.anddoes.fancywidget.pro'),(44,60,'com.anddoes.fancywidget.pro'),(45,62,'(.*)'),(46,64,'NULL-CONSTANT'),(47,66,'NULL-CONSTANT'),(48,67,'(.*)'),(49,68,'com.anddoes.fancywidget.pro'),(50,69,'com.anddoes.fancywidget.pro'),(51,71,'com.anddoes.fancywidget.pro'),(52,72,'com.anddoes.fancywidget.pro'),(53,73,'com.anddoes.fancywidget.pro'),(54,75,'com.anddoes.fancywidget.pro'),(55,80,'com.anddoes.fancywidget.pro'),(56,81,'com.anddoes.fancywidget.pro'),(57,82,'com.anddoes.fancywidget.pro'),(58,87,'com.anddoes.fancywidget.pro'),(59,88,'com.anddoes.fancywidget.pro'),(60,89,'com.anddoes.fancywidget.pro'),(61,90,'com.anddoes.fancywidget.pro');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,10,0),(3,15,0),(4,17,0),(5,18,0),(6,19,0),(7,20,0),(8,26,0),(9,28,0),(10,34,0),(11,42,0),(12,49,0),(13,58,0),(14,59,0),(15,71,0),(16,72,0),(17,73,0),(18,74,0),(19,75,0),(20,77,0),(21,80,0),(22,83,0),(23,86,0),(24,87,0),(25,83,0),(26,71,0),(27,75,0),(28,73,0),(29,87,0),(30,77,0),(31,80,0),(32,72,0),(33,88,0),(34,89,0),(35,86,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,1,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,1,0),(13,13,0,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,17,0,0),(18,18,0,0),(19,19,0,0),(20,20,0,0),(21,21,0,0),(22,22,1,0),(23,23,0,0),(24,24,1,0),(25,25,0,0),(26,26,0,0),(27,27,0,0),(28,28,0,0),(29,29,0,0),(30,30,0,0),(31,31,1,0),(32,31,1,0),(33,32,0,0),(34,33,1,0),(35,33,1,0),(36,34,0,0),(37,35,1,0),(38,36,1,0),(39,37,0,0),(40,38,0,0),(41,39,0,0),(42,41,0,0),(43,42,1,0),(44,43,0,0),(45,44,0,0),(46,45,1,0),(47,45,1,0),(48,46,1,0),(49,47,0,0),(50,48,0,0),(51,49,0,0),(52,50,0,0),(53,51,0,0),(54,51,0,0),(55,51,1,0),(56,52,1,0),(57,53,0,0),(58,54,0,0),(59,55,0,0),(60,56,0,0),(61,57,1,0),(62,57,0,0),(63,57,1,0),(64,57,0,0),(65,57,1,0),(66,57,0,0),(67,57,0,0),(68,58,0,0),(69,59,0,0),(70,60,1,0),(71,61,0,0),(72,62,0,0),(73,63,0,0),(74,64,1,0),(75,65,0,0),(76,66,1,0),(77,66,1,0),(78,66,1,0),(79,67,1,0),(80,68,0,0),(81,69,0,0),(82,70,0,0),(83,71,1,0),(84,72,1,0),(85,72,1,0),(86,72,1,0),(87,73,0,0),(88,74,0,0),(89,75,0,0),(90,76,0,0),(91,77,1,0),(92,77,1,0),(93,77,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (25,'android.permission.ACCESS_COARSE_LOCATION'),(22,'android.permission.ACCESS_FINE_LOCATION'),(8,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.BIND_WALLPAPER'),(14,'android.permission.CALL_PHONE'),(17,'android.permission.DISABLE_KEYGUARD'),(7,'android.permission.INTERNET'),(4,'android.permission.MODIFY_PHONE_STATE'),(21,'android.permission.READ_CONTACTS'),(20,'android.permission.READ_LOGS'),(2,'android.permission.READ_PHONE_STATE'),(18,'android.permission.READ_SMS'),(23,'android.permission.READ_SYNC_SETTINGS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(13,'android.permission.RECEIVE_SMS'),(16,'android.permission.RESTART_PACKAGES'),(10,'android.permission.SEND_SMS'),(19,'android.permission.VIBRATE'),(1,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_APN_SETTINGS'),(15,'android.permission.WRITE_CONTACTS'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'android.permission.WRITE_SMS'),(24,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'https://market.android.com/details?id=MysticGD.iBoobs',NULL,NULL,NULL),(2,NULL,NULL,'http://www.mysticgd.com/website/iBoobs-Android-v110-free.php',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'one',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'smsto:',NULL,NULL,NULL),(7,NULL,NULL,'one',NULL,NULL,NULL),(8,NULL,NULL,'smsto:',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=com.anddoes.fancywidget.pro',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'market://details?id=com.anddoes.fancywidget.pro',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=com.anddoes.fancywidget.pro',NULL,NULL,NULL),(17,NULL,NULL,'http://www.anddoes.com/fancy-widget-faq/',NULL,NULL,NULL),(18,NULL,NULL,'',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'http://www.anddoes.com/',NULL,NULL,NULL),(22,NULL,NULL,'http://www.weatherbug.com/',NULL,NULL,NULL),(23,NULL,NULL,'',NULL,NULL,NULL),(24,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,3,7),(10,4,1),(11,4,2),(12,4,3),(13,4,5),(14,4,6),(15,4,7),(16,4,8),(17,4,10),(18,4,11),(19,4,12),(20,4,13),(21,4,14),(22,4,15),(23,4,17),(24,5,1),(25,4,16),(26,5,2),(27,4,19),(28,5,3),(29,4,18),(30,5,5),(31,5,7),(32,5,8),(33,5,10),(34,5,11),(35,5,12),(36,5,13),(37,5,14),(38,5,15),(39,5,17),(40,5,16),(41,5,19),(42,5,18),(43,5,21),(44,5,20),(45,6,2),(46,6,3),(47,6,4),(48,6,5),(49,6,23),(50,6,6),(51,6,22),(52,6,7),(53,6,25),(54,6,8),(55,6,24),(56,7,6),(57,7,7),(58,7,8);
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

-- Dump completed on 2015-10-09  0:38:36
