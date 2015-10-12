-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_196
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (15,'APP-6N821315NV727153VCREATE_PAYMENT_FAIL'),(10,'APP-6N821315NV727153VCREATE_PAYMENT_SUCCESS'),(12,'APP-6N821315NV727153VFATAL_ERROR'),(13,'APP-6N821315NV727153VLOGIN_FAIL'),(14,'APP-6N821315NV727153VLOGIN_SUCCESS'),(17,'APP-6N821315NV727153VPOP_DIALOG'),(8,'APP-6N821315NV727153VPUSH_DIALOG_(.*)'),(16,'APP-6N821315NV727153VREPLACE_DIALOG_(.*)'),(11,'APP-6N821315NV727153VUPDATE_VIEW'),(9,'CHANGE_STRING'),(4,'android.appwidget.action.APPWIDGET_UPDATE'),(5,'android.intent.action.BOOT_COMPLETED'),(18,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.SCREEN_OFF'),(7,'android.intent.action.VIEW'),(2,'android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(3,'android.settings.APPLICATION_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.z4mod.z4root',2),(2,'com.liteningrom.liteningconfig',100),(3,'com.darkyrom.darkyconfig',9),(4,'com.gmail.nagamatu.drocap',2),(5,'com.tni.TasKillerFull1',91),(6,'com.z4mod.z4root2',6),(7,'com.digitalalliance.revolution',15);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.z4mod.z4root.z4root'),(2,2,'com.liteningrom.liteningconfig.MainActivity'),(3,1,'com.z4mod.z4root.Phase1'),(4,1,'com.z4mod.z4root.Phase2'),(5,1,'com.z4mod.z4root.TermPreferences'),(6,2,'com.liteningrom.liteningconfig.PreferencesActivity'),(7,1,'com.z4mod.z4root.AlarmReceiver'),(8,3,'com.darkyrom.darkyconfig.MainActivity'),(9,3,'com.darkyrom.darkyconfig.PreferencesActivity'),(10,3,'com.keepwired.utility.controls.FileChooser'),(11,4,'com.gmail.nagamatu.drocap.main'),(12,4,'com.gmail.nagamatu.drocap.DrocapService'),(13,2,'com.liteningrom.liteningconfig.MainActivity$1'),(14,1,'com.z4mod.z4root.z4root$1'),(15,1,'com.z4mod.z4root.Phase1$4'),(16,3,'com.darkyrom.darkyconfig.MainActivity$1'),(17,5,'com.tni.TasKillerFull1.TasKiller'),(18,5,'com.tni.TasKillerFull1.IgnoreList'),(19,5,'com.tni.TasKillerFull1.Help'),(20,5,'com.tni.TasKillerFull1.Changelog'),(21,5,'com.tni.TasKillerFull1.SettingsList'),(22,5,'com.tni.TasKillerFull1.PreferenceList'),(23,6,'com.z4mod.z4root2.z4root'),(24,5,'com.tni.TasKillerFull1.SkinSelector'),(25,5,'com.android.root.main'),(26,6,'com.z4mod.z4root2.Phase1'),(27,7,'com.digitalalliance.revolution.MainActivity'),(28,6,'com.z4mod.z4root2.Phase2'),(29,5,'com.tni.TasKillerFull1.TasKillerLauncher'),(30,6,'com.z4mod.z4root2.PhaseRemove'),(31,7,'com.paypal.android.MEP.PayPalActivity'),(32,5,'com.android.root.Setting'),(33,6,'com.admob.android.ads.AdMobActivity'),(34,7,'com.digitalalliance.revolution.OptionList'),(35,5,'com.android.root.AlarmReceiver'),(36,6,'com.z4mod.z4root2.AlarmReceiver'),(37,7,'com.digitalalliance.revolution.AboutActivity'),(38,5,'com.tni.TasKillerFull1.TasKillerWidget'),(39,7,'com.digitalalliance.revolution.service.DownloadManager'),(40,7,'com.digitalalliance.revolution.PreviewActivity'),(41,5,'com.tni.TasKillerFull1.TasKillerMiniBar'),(42,7,'com.keepwired.utility.controls.FileChooser'),(43,7,'com.google.ads.AdActivity'),(44,5,'com.tni.TasKillerFull1.TaskBarWidget'),(45,7,'com.digitalalliance.revolution.service.UpdateService'),(46,7,'com.digitalalliance.revolution.service.BootDetector'),(47,5,'com.tni.TasKillerFull1.ScreenOffReceiver'),(48,5,'com.tni.TasKillerFull1.BootReceiver'),(49,6,'com.z4mod.z4root2.Phase1$4'),(50,6,'com.z4mod.z4root2.z4root$1'),(51,6,'com.z4mod.z4root2.z4root$2'),(52,5,'com.tni.TasKillerFull1.TasKiller$12'),(53,5,'com.tni.TasKillerFull1.TasKiller$11'),(54,5,'com.tni.TasKillerFull1.TasKiller$8'),(55,6,'com.z4mod.z4root2.z4root$3'),(56,5,'com.tni.TasKillerFull1.TasKiller$15'),(57,5,'com.tni.TasKillerFull1.PreferenceList$2'),(58,5,'android.appwidget.AppWidgetProvider'),(59,7,'com.paypal.android.MEP.b.e$1'),(60,7,'com.digitalalliance.revolution.MainActivity$1'),(61,7,'com.digitalalliance.revolution.OptionList$8$2'),(62,7,'com.paypal.android.b.f'),(63,7,'com.paypal.android.MEP.a.d'),(64,7,'com.paypal.android.b.e'),(65,7,'com.digitalalliance.revolution.OptionList$1$2'),(66,7,'com.digitalalliance.revolution.OptionList$6'),(67,7,'com.paypal.android.MEP.c'),(68,7,'com.paypal.android.MEP.b'),(69,7,'com.digitalalliance.revolution.AboutActivity$2'),(70,7,'com.paypal.android.MEP.a.c'),(71,7,'com.digitalalliance.revolution.AboutActivity$1$2'),(72,7,'com.paypal.android.MEP.b.e'),(73,7,'com.digitalalliance.revolution.AboutActivity$4'),(74,7,'com.digitalalliance.revolution.AboutActivity$5$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,29,'au'),(2,29,'rd'),(3,29,'c'),(4,29,'json'),(5,29,'si'),(6,29,'int'),(7,29,'sd'),(8,29,'cs'),(9,29,'sc'),(10,29,'t'),(11,29,'mi'),(12,29,'ru'),(13,29,'u'),(14,29,'ad'),(15,29,'cbo'),(16,29,'skd'),(17,29,'tr'),(18,29,'a'),(19,29,'p'),(20,29,'sku'),(21,29,'su'),(22,29,'o'),(23,29,'oi'),(24,29,'$'),(25,29,'nosk'),(26,29,'sin'),(27,29,'b'),(28,29,'ap'),(29,29,'msm'),(30,29,'or'),(31,29,'s'),(32,30,'updcount'),(33,27,'com.paypal.android.PAYPAL_PAYMENT'),(34,30,'appver'),(35,27,'com.paypal.android.PAYMENT_ADJUSTER'),(36,27,'com.paypal.android.RESULT_DELEGATE'),(37,30,'listarray'),(38,35,'urls'),(39,36,'url'),(40,35,'mode'),(41,30,'packver'),(42,27,'com.paypal.android.PAYPAL_PREAPPROVAL');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'r',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'s',1,3,NULL),(13,17,'a',0,NULL,NULL),(14,18,'a',0,NULL,NULL),(15,19,'a',0,NULL,NULL),(16,20,'a',0,NULL,NULL),(17,21,'a',0,NULL,NULL),(18,22,'a',0,NULL,NULL),(19,23,'a',1,NULL,NULL),(20,24,'a',0,NULL,NULL),(21,25,'a',1,NULL,NULL),(22,26,'a',0,NULL,NULL),(23,27,'a',1,NULL,NULL),(24,28,'a',0,NULL,NULL),(25,29,'s',1,NULL,NULL),(26,30,'a',0,NULL,NULL),(27,31,'a',0,NULL,NULL),(28,32,'s',0,NULL,NULL),(29,33,'a',0,NULL,NULL),(30,34,'a',0,NULL,NULL),(31,35,'s',0,NULL,NULL),(32,36,'r',0,NULL,NULL),(33,38,'r',1,NULL,NULL),(34,37,'a',0,NULL,NULL),(35,39,'a',0,NULL,NULL),(36,40,'a',0,NULL,NULL),(37,41,'r',1,NULL,NULL),(38,42,'a',0,NULL,NULL),(39,43,'a',0,NULL,NULL),(40,44,'r',1,NULL,NULL),(41,45,'s',0,NULL,NULL),(42,46,'r',0,NULL,NULL),(43,47,'r',1,NULL,NULL),(44,48,'r',1,NULL,NULL),(45,58,'r',1,NULL,NULL),(46,67,'r',1,NULL,NULL),(47,46,'r',1,NULL,NULL),(48,68,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,1),(3,3,9),(4,4,3),(5,5,8),(6,6,3),(7,7,7),(8,8,11),(9,9,11),(10,10,11),(11,10,12),(12,11,22),(13,12,19),(14,13,22),(15,14,32),(16,15,19),(17,16,13),(18,17,13),(19,18,13),(20,19,14),(21,19,13),(22,20,19),(23,21,25),(24,22,19),(25,23,13),(26,23,18),(27,24,13),(28,25,13),(29,25,14),(30,26,13),(31,27,37),(32,28,18),(33,28,13),(34,29,14),(35,29,13),(36,30,18),(37,31,21),(38,32,21),(39,33,43),(40,34,33),(41,35,42),(42,36,27),(43,37,23),(44,38,30),(45,39,30),(46,39,27),(47,40,34),(48,40,30),(49,40,27),(50,41,27),(51,42,27),(52,43,27),(53,43,30),(54,43,34),(55,44,27),(56,44,30),(57,44,34),(58,45,30),(59,45,27),(60,46,34),(61,46,30),(62,46,27),(63,47,30),(64,48,27),(65,48,34),(66,49,27),(67,50,27),(68,50,34),(69,51,30),(70,52,27),(71,53,27),(72,53,30),(73,53,34),(74,54,27),(75,54,34),(76,55,27),(77,56,34),(78,56,27),(79,57,27),(80,58,35),(81,58,34),(82,58,27),(83,58,30),(84,59,30),(85,59,27),(86,59,34),(87,60,34),(88,60,27),(89,60,30),(90,61,30),(91,62,27),(92,63,23),(93,64,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,13,'<com.liteningrom.liteningconfig.MainActivity$1: void run()>',11,'a',NULL),(2,14,'<com.z4mod.z4root.z4root$1: void onClick(android.view.View)>',12,'a',NULL),(3,9,'<com.darkyrom.darkyconfig.PreferencesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(4,15,'<com.z4mod.z4root.Phase1$4: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(5,16,'<com.darkyrom.darkyconfig.MainActivity$1: void run()>',11,'a',NULL),(6,15,'<com.z4mod.z4root.Phase1$4: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(7,7,'<com.z4mod.z4root.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'a',NULL),(8,11,'<com.gmail.nagamatu.drocap.main: void onCreate(android.os.Bundle)>',45,'s',NULL),(9,11,'<com.gmail.nagamatu.drocap.main: void onCreate(android.os.Bundle)>',39,'s',NULL),(10,12,'<com.gmail.nagamatu.drocap.DrocapService: java.lang.String getBucketId(android.net.Uri)>',5,'p',0),(11,49,'<com.z4mod.z4root2.Phase1$4: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(12,50,'<com.z4mod.z4root2.z4root$1: void onClick(android.view.View)>',17,'a',NULL),(13,49,'<com.z4mod.z4root2.Phase1$4: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(14,36,'<com.z4mod.z4root2.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'a',NULL),(15,51,'<com.z4mod.z4root2.z4root$2: void onClick(android.view.View)>',17,'a',NULL),(16,52,'<com.tni.TasKillerFull1.TasKiller$12: boolean onMenuItemClick(android.view.MenuItem)>',18,'a',NULL),(17,53,'<com.tni.TasKillerFull1.TasKiller$11: boolean onMenuItemClick(android.view.MenuItem)>',13,'a',NULL),(18,17,'<com.tni.TasKillerFull1.TasKiller: void CloseApp(int,android.view.View)>',81,'a',NULL),(19,54,'<com.tni.TasKillerFull1.TasKiller$8: void onClick(android.view.View)>',38,'a',NULL),(20,55,'<com.z4mod.z4root2.z4root$3: void onClick(android.view.View)>',20,'a',NULL),(21,29,'<com.tni.TasKillerFull1.TasKillerLauncher: void onStart(android.content.Intent,int)>',140,'a',NULL),(22,23,'<com.z4mod.z4root2.z4root: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(23,22,'<com.tni.TasKillerFull1.PreferenceList: void loadSkins(android.content.Context)>',18,'a',NULL),(24,56,'<com.tni.TasKillerFull1.TasKiller$15: boolean onMenuItemClick(android.view.MenuItem)>',14,'s',NULL),(25,17,'<com.tni.TasKillerFull1.TasKiller: void ShowApp(int)>',35,'s',NULL),(26,17,'<com.tni.TasKillerFull1.TasKiller: void CloseApp(int,android.view.View)>',68,'s',NULL),(27,41,'<com.tni.TasKillerFull1.TasKillerMiniBar: void onEnabled(android.content.Context)>',16,'s',NULL),(28,57,'<com.tni.TasKillerFull1.PreferenceList$2: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(29,54,'<com.tni.TasKillerFull1.TasKiller$8: void onClick(android.view.View)>',21,'s',NULL),(30,22,'<com.tni.TasKillerFull1.PreferenceList: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',19,'a',NULL),(31,25,'<com.android.root.main: void onCreate(android.os.Bundle)>',12,'a',NULL),(32,25,'<com.android.root.main: void onCreate(android.os.Bundle)>',5,'s',NULL),(33,47,'<com.tni.TasKillerFull1.ScreenOffReceiver: void onReceive(android.content.Context,android.content.Intent)>',44,'s',NULL),(34,38,'<com.tni.TasKillerFull1.TasKillerWidget: void onEnabled(android.content.Context)>',16,'s',NULL),(35,46,'<com.digitalalliance.revolution.service.BootDetector: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(36,59,'<com.paypal.android.MEP.b.e$1: void a(int)>',17,'r',NULL),(37,60,'<com.digitalalliance.revolution.MainActivity$1: void run()>',20,'s',NULL),(38,34,'<com.digitalalliance.revolution.OptionList: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(39,61,'<com.digitalalliance.revolution.OptionList$8$2: void onClick(android.view.View)>',21,'a',NULL),(40,62,'<com.paypal.android.b.f: void run()>',149,'r',NULL),(41,63,'<com.paypal.android.MEP.a.d: void onClick(android.view.View)>',72,'r',NULL),(42,59,'<com.paypal.android.MEP.b.e$1: void b()>',6,'r',NULL),(43,64,'<com.paypal.android.b.e: java.util.Hashtable s()>',325,'r',0),(44,64,'<com.paypal.android.b.e: boolean q()>',34,'r',0),(45,65,'<com.digitalalliance.revolution.OptionList$1$2: void onClick(android.view.View)>',20,'a',NULL),(46,62,'<com.paypal.android.b.f: void run()>',133,'r',NULL),(47,66,'<com.digitalalliance.revolution.OptionList$6: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(48,69,'<com.digitalalliance.revolution.AboutActivity$2: void onClick(android.view.View)>',6,'a',NULL),(49,70,'<com.paypal.android.MEP.a.c: void a(int,java.lang.Object)>',35,'r',NULL),(50,71,'<com.digitalalliance.revolution.AboutActivity$1$2: void onClick(android.view.View)>',21,'a',NULL),(51,34,'<com.digitalalliance.revolution.OptionList: boolean onOptionsItemSelected(android.view.MenuItem)>',31,'a',NULL),(52,72,'<com.paypal.android.MEP.b.e: void onClick(android.view.View)>',188,'r',NULL),(53,64,'<com.paypal.android.b.e: boolean i(java.lang.String)>',156,'r',NULL),(54,73,'<com.digitalalliance.revolution.AboutActivity$4: void onClick(android.view.View)>',11,'a',NULL),(55,59,'<com.paypal.android.MEP.b.e$1: void b(int)>',12,'r',NULL),(56,74,'<com.digitalalliance.revolution.AboutActivity$5$2: void onClick(android.view.View)>',21,'a',NULL),(57,70,'<com.paypal.android.MEP.a.c: void a(int,java.lang.Object)>',16,'r',NULL),(58,59,'<com.paypal.android.MEP.b.e$1: void a()>',6,'r',NULL),(59,64,'<com.paypal.android.b.e: java.util.Hashtable t()>',49,'r',0),(60,64,'<com.paypal.android.b.e: boolean o()>',68,'r',0),(61,34,'<com.digitalalliance.revolution.OptionList: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(62,63,'<com.paypal.android.MEP.a.d: void onClick(android.view.View)>',27,'r',NULL),(63,60,'<com.digitalalliance.revolution.MainActivity$1: void run()>',42,'a',NULL),(64,34,'<com.digitalalliance.revolution.OptionList: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,2),(2,6,3),(3,10,3),(4,12,2),(5,15,1),(6,16,1),(7,21,1),(8,22,1),(9,24,1),(10,25,1),(11,31,7),(12,33,1),(13,39,8),(14,46,9),(15,47,10),(16,48,11),(17,53,9),(18,55,7),(19,56,10),(20,62,14),(21,63,15),(22,64,18),(23,65,18),(24,66,18),(25,67,18),(26,68,18),(27,69,18),(28,70,18),(29,71,18),(30,72,16),(31,77,10),(32,78,17),(33,80,10);
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
INSERT INTO `ICategories` VALUES (1,21,1),(2,22,2),(3,24,1),(4,25,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/liteningrom/liteningconfig/PreferencesActivity'),(2,2,'com/z4mod/z4root/Phase1'),(3,3,'com/keepwired/utility/controls/FileChooser'),(4,5,'com/darkyrom/darkyconfig/PreferencesActivity'),(5,7,'com/z4mod/z4root/Phase2'),(6,8,'com/gmail/nagamatu/drocap/DrocapService'),(7,9,'com/gmail/nagamatu/drocap/DrocapService'),(8,11,'com/z4mod/z4root2/Phase1'),(9,13,'com/z4mod/z4root2/Phase2'),(10,14,'com/z4mod/z4root2/Phase1'),(11,15,'com.tni.TasKillerFull1.Help'),(12,16,'com/tni/TasKillerFull1/PreferenceList'),(13,17,'com.android.settings.RunningServices'),(14,18,'com.android.settings.RunningServices'),(15,19,'com/z4mod/z4root2/Phase1'),(16,20,'com/z4mod/z4root2/PhaseRemove'),(17,23,'com/z4mod/z4root2/z4root'),(18,26,'com.tni.tsd.TaskillerDownloader'),(19,27,'(.*)'),(20,28,'com.tni.TasKillerFull1.TasKillerLauncher'),(21,29,'(.*)'),(22,30,'com.tni.TasKillerFull1.TasKillerLauncher'),(23,32,'(.*)'),(24,33,'com.tni.TasKillerFull1.IgnoreList'),(25,34,'(.*)'),(26,35,'com/android/root/Setting'),(27,36,'com.tni.TasKillerFull1.TasKillerLauncher'),(28,37,'com.tni.TasKillerFull1.TasKillerLauncher'),(29,38,'com/digitalalliance/revolution/service/UpdateService'),(30,40,'com/digitalalliance/revolution/service/UpdateService'),(31,41,'com/digitalalliance/revolution/AboutActivity'),(32,42,'com/paypal/android/MEP/PayPalActivity'),(33,43,'com/paypal/android/MEP/PayPalActivity'),(34,44,'com/paypal/android/MEP/PayPalActivity'),(35,45,'com/paypal/android/MEP/PayPalActivity'),(36,49,'com/paypal/android/MEP/PayPalActivity'),(37,50,'com/paypal/android/MEP/PayPalActivity'),(38,51,'com/paypal/android/MEP/PayPalActivity'),(39,52,'com/paypal/android/MEP/PayPalActivity'),(40,54,'com/digitalalliance/revolution/PreviewActivity'),(41,57,'com/paypal/android/MEP/PayPalActivity'),(42,58,'com/paypal/android/MEP/PayPalActivity'),(43,59,'com/paypal/android/MEP/PayPalActivity'),(44,60,'com/paypal/android/MEP/PayPalActivity'),(45,61,'com/keepwired/utility/controls/FileChooser'),(46,73,'com/paypal/android/MEP/PayPalActivity'),(47,74,'com/paypal/android/MEP/PayPalActivity'),(48,75,'com/paypal/android/MEP/PayPalActivity'),(49,76,'com/paypal/android/MEP/PayPalActivity'),(50,79,'com/digitalalliance/revolution/service/DownloadManager'),(51,81,'com/digitalalliance/revolution/OptionList'),(52,82,'com/digitalalliance/revolution/service/DownloadManager');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,27,1),(2,28,2),(3,29,3),(4,30,4),(5,31,5),(6,32,6),(7,36,7),(8,37,8),(9,55,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,26,'ADS'),(2,42,'com.paypal.android.PAYPAL_PAYMENT'),(3,42,'com.paypal.android.PAYMENT_ADJUSTER'),(4,42,'com.paypal.android.RESULT_DELEGATE'),(5,43,'com.paypal.android.PAYPAL_PAYMENT'),(6,44,'com.paypal.android.PAYPAL_PAYMENT'),(7,44,'com.paypal.android.PAYMENT_ADJUSTER'),(8,45,'com.paypal.android.PAYPAL_PAYMENT'),(9,45,'com.paypal.android.RESULT_DELEGATE'),(10,49,'com.paypal.android.PAYPAL_PAYMENT'),(11,49,'com.paypal.android.PAYMENT_ADJUSTER'),(12,49,'com.paypal.android.RESULT_DELEGATE'),(13,50,'com.paypal.android.PAYPAL_PAYMENT'),(14,51,'com.paypal.android.PAYPAL_PAYMENT'),(15,51,'com.paypal.android.PAYMENT_ADJUSTER'),(16,52,'com.paypal.android.PAYPAL_PAYMENT'),(17,52,'com.paypal.android.RESULT_DELEGATE'),(18,54,'url'),(19,57,'com.paypal.android.PAYPAL_PAYMENT'),(20,57,'com.paypal.android.PAYMENT_ADJUSTER'),(21,57,'com.paypal.android.RESULT_DELEGATE'),(22,58,'com.paypal.android.PAYPAL_PAYMENT'),(23,59,'com.paypal.android.PAYPAL_PAYMENT'),(24,59,'com.paypal.android.PAYMENT_ADJUSTER'),(25,60,'com.paypal.android.PAYPAL_PAYMENT'),(26,60,'com.paypal.android.RESULT_DELEGATE'),(27,64,'android.intent.extra.INTENT'),(28,65,'android.intent.extra.INTENT'),(29,66,'android.intent.extra.TITLE'),(30,66,'android.intent.extra.INTENT'),(31,67,'android.intent.extra.INTENT'),(32,68,'android.intent.extra.TITLE'),(33,68,'android.intent.extra.INTENT'),(34,69,'android.intent.extra.INTENT'),(35,70,'android.intent.extra.TITLE'),(36,70,'android.intent.extra.INTENT'),(37,71,'android.intent.extra.TITLE'),(38,71,'android.intent.extra.INTENT'),(39,73,'com.paypal.android.PAYPAL_PAYMENT'),(40,73,'com.paypal.android.PAYMENT_ADJUSTER'),(41,73,'com.paypal.android.RESULT_DELEGATE'),(42,74,'com.paypal.android.PAYPAL_PAYMENT'),(43,75,'com.paypal.android.PAYPAL_PAYMENT'),(44,75,'com.paypal.android.PAYMENT_ADJUSTER'),(45,76,'com.paypal.android.PAYPAL_PAYMENT'),(46,76,'com.paypal.android.RESULT_DELEGATE'),(47,79,'urls'),(48,79,'mode'),(49,81,'listarray'),(50,81,'packver'),(51,81,'updcount'),(52,81,'appver'),(53,82,'updatefile'),(54,82,'mode');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,4),(9,9,4),(10,10,4),(11,11,5),(12,12,6),(13,13,5),(14,14,6),(15,15,6),(16,16,6),(17,17,6),(18,18,6),(19,19,6),(20,20,15),(21,20,14),(22,20,13),(23,20,12),(24,20,10),(25,21,13),(26,21,12),(27,21,15),(28,21,14),(29,21,10),(30,22,15),(31,22,14),(32,22,13),(33,22,12),(34,22,10),(35,23,11),(36,23,8),(37,23,16),(38,23,17),(39,24,11),(40,24,17),(41,25,11),(42,25,17),(43,26,11),(44,26,16),(45,26,17),(46,26,8),(47,27,8),(48,27,17),(49,27,16),(50,27,11),(51,28,17),(52,28,11);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.liteningrom.liteningconfig'),(2,2,'com.z4mod.z4root'),(3,3,'com.darkyrom.darkyconfig'),(4,5,'com.darkyrom.darkyconfig'),(5,7,'com.z4mod.z4root'),(6,8,'com.gmail.nagamatu.drocap'),(7,9,'com.gmail.nagamatu.drocap'),(8,11,'com.z4mod.z4root2'),(9,13,'com.z4mod.z4root2'),(10,14,'com.z4mod.z4root2'),(11,15,'com.tni.TasKillerFull1'),(12,16,'com.tni.TasKillerFull1'),(13,17,'com.android.settings'),(14,18,'com.android.settings'),(15,19,'com.z4mod.z4root2'),(16,20,'com.z4mod.z4root2'),(17,21,'(.*)'),(18,22,''),(19,23,'com.z4mod.z4root2'),(20,24,''),(21,25,'(.*)'),(22,26,'com.tni.tsd'),(23,27,'com.tni.TasKillerFull1'),(24,28,'com.tni.TasKillerFull1'),(25,29,'com.tni.TasKillerFull1'),(26,30,'com.tni.TasKillerFull1'),(27,32,'com.tni.TasKillerFull1'),(28,33,'com.tni.TasKillerFull1'),(29,34,'com.tni.TasKillerFull1'),(30,35,'com.tni.TasKillerFull1'),(31,36,'com.tni.TasKillerFull1'),(32,37,'com.tni.TasKillerFull1'),(33,38,'com.digitalalliance.revolution'),(34,40,'com.digitalalliance.revolution'),(35,41,'com.digitalalliance.revolution'),(36,42,'com.digitalalliance.revolution'),(37,43,'com.digitalalliance.revolution'),(38,44,'com.digitalalliance.revolution'),(39,45,'com.digitalalliance.revolution'),(40,49,'com.digitalalliance.revolution'),(41,50,'com.digitalalliance.revolution'),(42,51,'com.digitalalliance.revolution'),(43,52,'com.digitalalliance.revolution'),(44,54,'com.digitalalliance.revolution'),(45,57,'com.digitalalliance.revolution'),(46,58,'com.digitalalliance.revolution'),(47,59,'com.digitalalliance.revolution'),(48,60,'com.digitalalliance.revolution'),(49,61,'com.digitalalliance.revolution'),(50,73,'com.digitalalliance.revolution'),(51,74,'com.digitalalliance.revolution'),(52,75,'com.digitalalliance.revolution'),(53,76,'com.digitalalliance.revolution'),(54,79,'com.digitalalliance.revolution'),(55,81,'com.digitalalliance.revolution'),(56,82,'com.digitalalliance.revolution');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,8,0),(4,11,0),(5,19,0),(6,21,0),(7,23,0),(8,33,0),(9,37,0),(10,40,0),(11,42,0),(12,43,0),(13,44,0),(14,37,0),(15,43,0),(16,33,0),(17,40,0),(18,45,0),(19,44,0),(20,46,0),(21,47,0),(22,48,0),(23,46,0),(24,46,0),(25,47,0),(26,47,0),(27,48,0),(28,48,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,1,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,11,1,0),(11,12,0,0),(12,13,1,0),(13,14,0,0),(14,15,0,0),(15,16,0,0),(16,17,0,0),(17,18,0,0),(18,19,0,0),(19,20,0,0),(20,20,0,0),(21,21,1,0),(22,21,1,0),(23,22,0,0),(24,21,1,0),(25,21,1,0),(26,23,0,0),(27,24,0,0),(28,25,0,0),(29,26,0,0),(30,27,0,0),(31,28,1,0),(32,29,0,0),(33,30,0,0),(34,31,0,0),(35,32,0,0),(36,33,0,0),(37,34,0,0),(38,35,0,0),(39,36,1,0),(40,37,0,0),(41,38,0,0),(42,39,0,0),(43,39,0,0),(44,39,0,0),(45,39,0,0),(46,40,1,0),(47,41,1,0),(48,42,1,0),(49,45,0,0),(50,45,0,0),(51,45,0,0),(52,45,0,0),(53,46,1,0),(54,47,0,0),(55,48,1,0),(56,49,1,0),(57,50,0,0),(58,50,0,0),(59,50,0,0),(60,50,0,0),(61,51,0,0),(62,52,1,0),(63,53,1,0),(64,54,1,0),(65,54,1,0),(66,54,1,0),(67,54,1,0),(68,54,1,0),(69,54,1,0),(70,54,1,0),(71,54,1,0),(72,55,1,0),(73,56,0,0),(74,56,0,0),(75,56,0,0),(76,56,0,0),(77,57,1,0),(78,58,1,0),(79,61,0,0),(80,62,1,0),(81,63,0,0),(82,64,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_NETWORK_STATE'),(10,'android.permission.ACCESS_WIFI_STATE'),(4,'android.permission.BLUETOOTH'),(3,'android.permission.CAMERA'),(9,'android.permission.CHANGE_WIFI_STATE'),(7,'android.permission.GET_TASKS'),(8,'android.permission.INTERNET'),(6,'android.permission.READ_PHONE_STATE'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(5,'android.permission.REORDER_TASKS'),(11,'android.permission.RESTART_PACKAGES'),(1,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'/disableautokill/',NULL,NULL,NULL),(2,NULL,NULL,'/show/(.*)',NULL,NULL,NULL),(3,NULL,NULL,'/stopWidget/',NULL,NULL,NULL),(4,NULL,NULL,'/runWidget/',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=com.tni.tsd',NULL,NULL,NULL),(6,NULL,NULL,'/stopWidget/',NULL,NULL,NULL),(7,NULL,NULL,'/killall/noToast',NULL,NULL,NULL),(8,NULL,NULL,'/runWidget/',NULL,NULL,NULL),(9,NULL,NULL,'http://www.digitalalliance.it',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,3),(5,4,4),(6,5,2),(7,5,5),(8,5,6),(9,5,7),(10,5,8),(11,5,9),(12,5,10),(13,5,11),(14,6,1),(15,6,2),(16,6,8),(17,7,1),(18,7,2),(19,7,6),(20,7,8),(21,7,12),(22,7,13);
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

-- Dump completed on 2015-10-09  0:38:31
