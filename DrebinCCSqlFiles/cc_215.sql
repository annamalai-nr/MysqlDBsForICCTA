-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_215
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
INSERT INTO `ActionStrings` VALUES (22,'(.*).SEND_SMS'),(20,'NULL-CONSTANT'),(16,'android.intent.action.BATTERY_CHANGED'),(14,'android.intent.action.BATTERY_LOW'),(11,'android.intent.action.BATTERY_OKAY'),(7,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.SCREEN_OFF'),(13,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.VIEW'),(8,'android.provider.Telephony.SMS_RECEIVED'),(18,'android.settings.APPLICATION_DETAILS_SETTINGS'),(19,'android.settings.LOCATION_SOURCE_SETTINGS'),(10,'com.android.vending.INSTALL_REFERRER'),(5,'com.extend.battery.intent.http.SHOW'),(21,'com.flurry.android.ACTION_CATALOG'),(4,'com.itframework.installer.updater.CHECK'),(3,'com.itframework.installer.updater.UPDATE'),(9,'com.zanalytics.sms.MESSAGE_RECEIVED'),(15,'com/android/vending/licensing/ILicensingService');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.extend.battery',91),(2,'com.extend.battery',89),(3,'com.androiddoctor.batteryapp',12);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.extend.battery.Splash'),(2,1,'com.extend.battery.TabHandler'),(3,1,'com.extend.battery.TaskKillerActivity'),(4,1,'com.extend.battery.UninstallerActivity'),(5,1,'com.extend.battery.SecurityAuditActivity'),(6,1,'com.extend.battery.InstallerActivity'),(7,1,'com.extend.battery.FeaturesActivity'),(8,1,'com.extend.battery.BoosterActivity'),(9,1,'com.extend.battery.BatteryActivity'),(10,1,'com.extend.battery.RatingActivity'),(11,1,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(12,1,'com.itframework.installer.util.NonMarketDialogActivity'),(13,1,'com.extend.battery.BatteryService'),(14,1,'com.itframework.installer.util.InstallWorker'),(15,1,'com.itframework.installer.util.InstallWorker'),(16,2,'com.extend.battery.Splash'),(17,2,'com.extend.battery.Splash'),(18,1,'com.zanalytics.sms.SmsReceiverService'),(19,1,'com.itframework.installer.updater.UpdateReceiver'),(20,2,'com.extend.battery.TabHandler'),(21,2,'com.extend.battery.TabHandler'),(22,1,'com.extend.battery.NotificationReceiver'),(23,2,'com.extend.battery.TaskKillerActivity'),(24,2,'com.extend.battery.UninstallerActivity'),(25,2,'com.extend.battery.SecurityAuditActivity'),(26,1,'com.extend.battery.BootReceiver'),(27,2,'com.extend.battery.InstallerActivity'),(28,2,'com.extend.battery.FeaturesActivity'),(29,2,'com.extend.battery.BoosterActivity'),(30,2,'com.extend.battery.BatteryActivity'),(31,1,'com.zanalytics.sms.SmsReceiver'),(32,2,'com.extend.battery.RatingActivity'),(33,2,'com.extend.battery.BatteryService'),(34,2,'com.zanalytics.sms.SmsReceiverService'),(35,2,'com.extend.battery.NotificationReceiver'),(36,2,'com.extend.battery.BootReceiver'),(37,2,'com.extend.battery.BootReceiver'),(38,2,'com.zanalytics.sms.SmsReceiver'),(39,2,'com.tapjoy.TapjoyReferralTracker'),(40,3,'com.androiddoctor.batteryapp.Splash'),(41,3,'com.androiddoctor.batteryapp.TabHandler'),(42,3,'com.androiddoctor.batteryapp.TaskKillerActivity'),(43,3,'com.androiddoctor.batteryapp.UninstallerActivity'),(44,3,'com.androiddoctor.batteryapp.SecurityAuditActivity'),(45,3,'com.androiddoctor.batteryapp.InstallerActivity'),(46,3,'com.androiddoctor.batteryapp.FeaturesActivity'),(47,3,'com.androiddoctor.batteryapp.BoosterActivity'),(48,3,'com.androiddoctor.batteryapp.BatteryActivity'),(49,3,'com.androiddoctor.batteryapp.RatingActivity'),(50,3,'com.androiddoctor.batteryapp.BatteryService'),(51,3,'com.mobsqueeze.ReferralReceiver'),(52,3,'com.tapjoy.TapjoyReferralTracker'),(53,3,'com.androiddoctor.batteryapp.BatteryActivity$1'),(54,3,'com.androiddoctor.batteryapp.BatteryService$1'),(55,3,'com.androiddoctor.batteryapp.BoosterActivity$1'),(56,3,'com.android.vending.licensing.LicenseChecker'),(57,3,'com.androiddoctor.batteryapp.SecurityAuditActivity$1'),(58,3,'com.androiddoctor.batteryapp.TaskKillerActivity$1'),(59,3,'com.androiddoctor.batteryapp.UninstallerActivity$1'),(60,3,'com.androiddoctor.batteryapp.InstallerActivity$1'),(61,3,'com.androiddoctor.batteryapp.BoosterActivity$6'),(62,3,'com.flurry.android.u'),(63,1,'com.extend.battery.d'),(64,1,'com.extend.battery.c'),(65,1,'com.extend.battery.ba'),(66,1,'com.extend.battery.a'),(67,1,'com.zanalytics.sms.c'),(68,1,'com.zanalytics.sms.j'),(69,1,'com.itframework.installer.a.b'),(70,1,'com.extend.battery.features.s'),(71,1,'com.zanalytics.sms.a'),(72,1,'com.extend.battery.bb'),(73,1,'com.extend.battery.k');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,51,'referrer'),(2,48,'technology'),(3,31,'pdus'),(4,15,'downloadingWait'),(5,11,'downloadingWait'),(6,11,'downloadingProgress'),(7,14,'downloadingTicker'),(8,15,'downloadingProgress'),(9,11,'finishedTicker'),(10,11,'downloadingTicker'),(11,14,'finishedTitle'),(12,11,'finishedText'),(13,14,'finishedText'),(14,11,'downloadingTitle'),(15,19,'URL'),(16,14,'url'),(17,14,'downloadingTitle'),(18,14,'downloadingProgress'),(19,14,'finishedTicker'),(20,11,'downloadingToast'),(21,15,'downloadingToast'),(22,14,'callbackIntent'),(23,11,'filename'),(24,11,'forceDownload'),(25,15,'filename'),(26,14,'filename'),(27,15,'finishedText'),(28,14,'downloadStarting'),(29,22,'clickevent'),(30,9,'technology'),(31,15,'callbackIntent'),(32,14,'downloadingWait'),(33,15,'forceDownload'),(34,14,'showNotifications'),(35,11,'callbackIntent'),(36,15,'finishedTicker'),(37,11,'finishedTitle'),(38,11,'url'),(39,14,'forceDownload'),(40,14,'downloadingToast'),(41,15,'downloadingTicker'),(42,15,'downloadingTitle'),(43,15,'url'),(44,15,'downloadStarting'),(45,11,'downloadStarting'),(46,15,'finishedTitle'),(47,15,'showNotifications');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,18,'s',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,16,'a',1,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,21,'a',0,NULL,NULL),(21,20,'a',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,27,'a',0,NULL,NULL),(27,26,'r',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,37,'r',1,NULL,NULL),(37,36,'r',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,63,'r',1,NULL,NULL),(57,64,'r',1,NULL,NULL),(58,66,'r',1,NULL,NULL),(59,67,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,43),(2,2,41),(3,3,47),(4,3,48),(5,3,43),(6,3,44),(7,3,45),(8,4,47),(9,4,48),(10,5,40),(11,6,42),(12,6,48),(13,7,48),(14,8,45),(15,8,44),(16,8,43),(17,8,48),(18,8,47),(19,9,45),(20,10,45),(21,10,48),(22,11,48),(23,11,44),(24,12,47),(25,12,48),(26,13,48),(27,14,45),(28,14,48),(29,14,47),(30,14,43),(31,14,44),(32,15,48),(33,15,43),(34,16,48),(35,16,47),(36,16,45),(37,16,43),(38,16,44),(39,17,44),(40,18,48),(41,18,47),(42,19,48),(43,19,45),(44,19,44),(45,19,43),(46,20,43),(47,20,48),(48,21,1),(49,22,31),(50,23,1),(51,24,1),(52,25,6),(53,26,9),(54,26,8),(55,27,27),(56,28,31),(57,29,14),(58,30,27),(59,31,1),(60,32,5),(61,33,4),(62,33,9),(63,34,1),(64,35,4),(65,35,5),(66,35,6),(67,35,9),(68,36,14),(69,37,31),(70,38,5),(71,39,31),(72,40,1),(73,41,9),(74,41,8),(75,42,31),(76,43,31),(77,44,9),(78,45,1),(79,46,9),(80,47,22),(81,48,9),(82,48,5),(83,48,6),(84,48,4),(85,49,9),(86,49,5),(87,50,6),(88,51,2),(89,52,9),(90,52,4),(91,52,6),(92,52,5),(93,53,27),(94,54,9),(95,55,9),(96,55,6),(97,56,31),(98,57,11),(99,58,22),(100,59,15),(101,60,11),(102,61,3),(103,61,9),(104,62,4),(105,63,4),(106,63,9),(107,64,2),(108,65,8),(109,66,9),(110,66,8),(111,67,6),(112,67,9),(113,68,4),(114,68,5),(115,68,6),(116,68,8),(117,68,9),(118,69,1),(119,70,4),(120,70,9),(121,71,9),(122,71,6),(123,72,8),(124,73,1),(125,74,4),(126,75,9),(127,75,4),(128,76,1),(129,77,11),(130,78,1),(131,79,9),(132,79,6),(133,79,5),(134,79,4),(135,80,9),(136,80,4),(137,81,5),(138,82,8),(139,83,9),(140,83,4),(141,84,14),(142,85,11),(143,86,4),(144,86,9),(145,86,6),(146,86,5),(147,87,9),(148,87,8),(149,88,22),(150,89,9),(151,89,3),(152,90,9),(153,90,5),(154,91,9),(155,91,8),(156,92,11),(157,93,15),(158,94,1),(159,95,8),(160,95,9),(161,96,4),(162,97,6),(163,97,5),(164,97,4),(165,97,9),(166,97,8),(167,98,2),(168,99,5),(169,99,4),(170,99,9),(171,99,8),(172,99,6),(173,100,14),(174,101,15),(175,102,31),(176,104,31),(177,103,9),(178,103,3),(179,105,6),(180,105,9),(181,105,4),(182,105,5),(183,106,14),(184,107,11),(185,108,6),(186,109,14),(187,110,5),(188,110,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,43,'<com.androiddoctor.batteryapp.UninstallerActivity: void launch(java.lang.String)>',16,'a',NULL),(2,56,'<com.android.vending.licensing.LicenseChecker: void checkAccess(com.android.vending.licensing.LicenseCheckerCallback)>',26,'s',NULL),(3,57,'<com.androiddoctor.batteryapp.SecurityAuditActivity$1: void run()>',10,'a',NULL),(4,47,'<com.androiddoctor.batteryapp.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(5,40,'<com.androiddoctor.batteryapp.Splash: void startApp()>',9,'a',NULL),(6,58,'<com.androiddoctor.batteryapp.TaskKillerActivity$1: void onClick(android.view.View)>',6,'a',NULL),(7,48,'<com.androiddoctor.batteryapp.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(8,47,'<com.androiddoctor.batteryapp.BoosterActivity: void AppReferral()>',5,'a',NULL),(9,45,'<com.androiddoctor.batteryapp.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(10,45,'<com.androiddoctor.batteryapp.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(11,44,'<com.androiddoctor.batteryapp.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(12,47,'<com.androiddoctor.batteryapp.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(13,48,'<com.androiddoctor.batteryapp.BatteryActivity: void onCreate(android.os.Bundle)>',23,'s',NULL),(14,59,'<com.androiddoctor.batteryapp.UninstallerActivity$1: void run()>',10,'a',NULL),(15,43,'<com.androiddoctor.batteryapp.UninstallerActivity: void uninstallApp(com.androiddoctor.batteryapp.model.InstalledApplication)>',10,'a',NULL),(16,60,'<com.androiddoctor.batteryapp.InstallerActivity$1: void run()>',13,'a',NULL),(17,44,'<com.androiddoctor.batteryapp.SecurityAuditActivity: void showApplicationDetailsActivity(java.lang.String)>',8,'a',NULL),(18,61,'<com.androiddoctor.batteryapp.BoosterActivity$6: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(19,62,'<com.flurry.android.u: void b(android.content.Context,com.flurry.android.p,java.lang.String)>',12,'a',NULL),(20,43,'<com.androiddoctor.batteryapp.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(21,65,'<com.extend.battery.ba: void run()>',212,'a',NULL),(22,68,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(23,65,'<com.extend.battery.ba: void run()>',118,'a',NULL),(24,65,'<com.extend.battery.ba: void run()>',212,'a',NULL),(25,6,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(26,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(27,26,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(28,31,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(29,69,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(30,26,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(31,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(32,5,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(33,4,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(34,65,'<com.extend.battery.ba: void run()>',118,'a',NULL),(35,70,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(36,14,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(37,31,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(38,5,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(39,68,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(40,65,'<com.extend.battery.ba: void run()>',118,'a',NULL),(41,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(42,68,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(43,68,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(44,9,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(45,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(46,9,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(47,22,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(48,71,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(49,5,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(50,6,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(51,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(52,71,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(53,26,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(54,9,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(55,6,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(56,31,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(57,11,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(58,22,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(59,69,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(60,11,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(61,72,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(62,4,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(63,4,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(64,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(65,8,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(66,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(67,6,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(68,73,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(69,65,'<com.extend.battery.ba: void run()>',212,'a',NULL),(70,4,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(71,6,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(72,8,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(73,65,'<com.extend.battery.ba: void run()>',58,'a',NULL),(74,4,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(75,4,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(76,65,'<com.extend.battery.ba: void run()>',58,'a',NULL),(77,11,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(78,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(79,71,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(80,4,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(81,5,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(82,8,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(83,4,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(84,14,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(85,11,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(86,70,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(87,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(88,22,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(89,72,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(90,5,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(91,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(92,11,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(93,14,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(94,65,'<com.extend.battery.ba: void run()>',58,'a',NULL),(95,8,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(96,4,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(97,73,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(98,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(99,73,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(100,14,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(101,14,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(102,68,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(103,72,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(104,68,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(105,70,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(106,14,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(107,11,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(108,6,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(109,69,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(110,5,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,1),(2,2,15),(3,3,2),(4,8,2),(5,9,2),(6,14,2),(7,15,17),(8,16,2),(9,19,18),(10,20,19),(11,21,20),(12,22,20),(13,23,21),(14,24,21),(15,29,2),(16,36,17),(17,38,18),(18,40,2),(19,41,2),(20,46,18),(21,52,22),(22,53,2),(23,55,22),(24,65,1),(25,68,2),(26,71,19),(27,73,17),(28,75,2),(29,77,1),(30,82,22),(31,86,2),(32,87,18),(33,88,17),(34,90,2),(35,99,1),(36,100,19),(37,102,19),(38,103,2),(39,104,2),(40,106,2),(41,108,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,1,1),(2,21,2),(3,22,2),(4,23,2),(5,24,2),(6,65,1),(7,77,1),(8,99,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'NULL-CONSTANT'),(2,4,'com/androiddoctor/batteryapp/FeaturesActivity'),(3,5,'com/androiddoctor/batteryapp/TabHandler'),(4,6,'com/androiddoctor/batteryapp/FeaturesActivity'),(5,7,'com/androiddoctor/batteryapp/FeaturesActivity'),(6,10,'com/androiddoctor/batteryapp/FeaturesActivity'),(7,11,'com/androiddoctor/batteryapp/FeaturesActivity'),(8,12,'com/androiddoctor/batteryapp/RatingActivity'),(9,13,'com/androiddoctor/batteryapp/BatteryService'),(10,17,'com.android.settings.InstalledAppDetails'),(11,18,'com.android.settings.InstalledAppDetails'),(12,25,'com/androiddoctor/batteryapp/FeaturesActivity'),(13,26,'com/extend/battery/TabHandler'),(14,27,'com/extend/battery/TabHandler'),(15,28,'com/extend/battery/TabHandler'),(16,30,'com/extend/battery/RatingActivity'),(17,31,'com/extend/battery/BatteryService'),(18,32,'com/zanalytics/sms/SmsReceiverService'),(19,33,'com/extend/battery/BatteryService'),(20,34,'com/extend/battery/TabHandler'),(21,35,'com.android.settings.InstalledAppDetails'),(22,37,'com.android.settings.InstalledAppDetails'),(23,39,'com/extend/battery/TabHandler'),(24,42,'com/zanalytics/sms/SmsReceiverService'),(25,43,'com.android.settings.InstalledAppDetails'),(26,44,'com.android.settings.InstalledAppDetails'),(27,45,'com/extend/battery/TabHandler'),(28,47,'com/extend/battery/FeaturesActivity'),(29,48,'com/extend/battery/FeaturesActivity'),(30,49,'com/extend/battery/TabHandler'),(31,50,'com/extend/battery/FeaturesActivity'),(32,51,'com/extend/battery/FeaturesActivity'),(33,52,'com/zanalytics/sms/SmsReceiverService'),(34,54,'com/extend/battery/BatteryService'),(35,56,'com/extend/battery/BatteryService'),(36,57,'com/extend/battery/FeaturesActivity'),(37,55,'com/zanalytics/sms/SmsReceiverService'),(38,58,'com/extend/battery/FeaturesActivity'),(39,59,'com/zanalytics/sms/SmsReceiverService'),(40,60,'com/itframework/installer/util/InstallWorker'),(41,61,'com/itframework/installer/util/InstallWorker'),(42,64,'com/extend/battery/FeaturesActivity'),(43,62,'com/itframework/installer/util/InstallWorker'),(44,65,'NULL-CONSTANT'),(45,63,'com/itframework/installer/util/InstallWorker'),(46,66,'com/extend/battery/FeaturesActivity'),(47,67,'com/extend/battery/BatteryService'),(48,69,'com/extend/battery/RatingActivity'),(49,70,'com/extend/battery/FeaturesActivity'),(50,72,'com/extend/battery/TabHandler'),(51,74,'com/extend/battery/FeaturesActivity'),(52,76,'com/extend/battery/TabHandler'),(53,77,'NULL-CONSTANT'),(54,78,'com/extend/battery/FeaturesActivity'),(55,79,'com/extend/battery/TabHandler'),(56,80,'com/itframework/installer/util/NonMarketDialogActivity'),(57,81,'com/extend/battery/TabHandler'),(58,83,'com/extend/battery/FeaturesActivity'),(59,84,'com.android.settings.InstalledAppDetails'),(60,85,'com.android.settings.InstalledAppDetails'),(61,82,'com/zanalytics/sms/SmsReceiverService'),(62,89,'com/itframework/installer/util/NonMarketDialogActivity'),(63,91,'com/extend/battery/FeaturesActivity'),(64,92,'com/extend/battery/FeaturesActivity'),(65,93,'com/extend/battery/FeaturesActivity'),(66,94,'com/extend/battery/RatingActivity'),(67,96,'com/extend/battery/TabHandler'),(68,95,'com/itframework/installer/util/InstallWorker'),(69,97,'com/extend/battery/FeaturesActivity'),(70,99,'NULL-CONSTANT'),(71,101,'com/extend/battery/BatteryService'),(72,98,'com/itframework/installer/util/InstallWorker'),(73,105,'com/extend/battery/FeaturesActivity'),(74,107,'com/itframework/installer/util/NonMarketDialogActivity'),(75,109,'com/extend/battery/FeaturesActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,8,2),(3,9,3),(4,14,4),(5,15,5),(6,16,6),(7,19,7),(8,29,9),(9,36,10),(10,38,11),(11,40,12),(12,41,13),(13,46,15),(14,53,18),(15,68,19),(16,73,20),(17,75,21),(18,86,22),(19,87,23),(20,88,24),(21,90,25),(22,103,26),(23,104,27),(24,106,30),(25,108,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'cacheUrl'),(2,17,'com.android.settings.ApplicationPkgName'),(3,18,'pkg'),(4,21,'u'),(5,21,'o'),(6,22,'u'),(7,23,'u'),(8,24,'u'),(9,24,'o'),(10,32,'result'),(11,32,'abort'),(12,34,'cacheUrl'),(13,35,'com.android.settings.ApplicationPkgName'),(14,37,'pkg'),(15,42,'result'),(16,42,'abort'),(17,43,'com.android.settings.ApplicationPkgName'),(18,44,'pkg'),(19,49,'cacheUrl'),(20,52,'TryCount'),(21,52,'NextMessage'),(22,52,'TryAgain'),(23,52,'StoreMessage'),(24,52,'Message'),(25,52,'Delay'),(26,52,'PhoneNumber'),(27,52,'TagEvent'),(28,55,'TryCount'),(29,55,'NextMessage'),(30,55,'TryAgain'),(31,55,'StoreMessage'),(32,55,'Message'),(33,55,'Delay'),(34,55,'PhoneNumber'),(35,55,'TagEvent'),(36,59,'result'),(37,59,'abort'),(38,60,'downloadingProgress'),(39,60,'downloadingWait'),(40,60,'downloadingToast'),(41,60,'finishedText'),(42,60,'downloadingTicker'),(43,60,'downloadingTitle'),(44,60,'filename'),(45,61,'downloadingProgress'),(46,60,'finishedTicker'),(47,61,'downloadingWait'),(48,60,'forceDownload'),(49,61,'downloadingToast'),(50,60,'finishedTitle'),(51,61,'finishedText'),(52,60,'url'),(53,61,'downloadingTicker'),(54,60,'downloadStarting'),(55,61,'downloadingTitle'),(56,61,'filename'),(57,61,'finishedTicker'),(58,61,'forceDownload'),(59,62,'downloadingProgress'),(60,61,'finishedTitle'),(61,62,'downloadingWait'),(62,61,'url'),(63,62,'downloadingToast'),(64,61,'downloadStarting'),(65,62,'callbackIntent'),(66,62,'finishedText'),(67,62,'downloadingTicker'),(68,62,'downloadingTitle'),(69,62,'filename'),(70,63,'downloadingProgress'),(71,63,'downloadingWait'),(72,62,'finishedTicker'),(73,63,'downloadingToast'),(74,62,'forceDownload'),(75,63,'callbackIntent'),(76,62,'finishedTitle'),(77,63,'finishedText'),(78,62,'url'),(79,62,'downloadStarting'),(80,63,'downloadingTicker'),(81,63,'downloadingTitle'),(82,63,'filename'),(83,63,'finishedTicker'),(84,63,'forceDownload'),(85,63,'finishedTitle'),(86,63,'url'),(87,63,'downloadStarting'),(88,81,'cacheUrl'),(89,82,'TryCount'),(90,82,'NextMessage'),(91,82,'TryAgain'),(92,84,'com.android.settings.ApplicationPkgName'),(93,82,'StoreMessage'),(94,82,'Message'),(95,82,'Delay'),(96,82,'PhoneNumber'),(97,85,'pkg'),(98,82,'TagEvent'),(99,95,'downloadingProgress'),(100,95,'downloadingWait'),(101,95,'downloadingToast'),(102,95,'finishedText'),(103,95,'downloadingTicker'),(104,95,'downloadingTitle'),(105,95,'filename'),(106,95,'finishedTicker'),(107,95,'forceDownload'),(108,95,'finishedTitle'),(109,95,'url'),(110,95,'downloadStarting'),(111,98,'downloadingProgress'),(112,98,'downloadingWait'),(113,98,'downloadingToast'),(114,98,'callbackIntent'),(115,98,'finishedText'),(116,98,'downloadingTicker'),(117,98,'downloadingTitle'),(118,98,'filename'),(119,98,'finishedTicker'),(120,98,'forceDownload'),(121,98,'finishedTitle'),(122,98,'url'),(123,98,'downloadStarting');
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
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,2),(6,6,2),(7,7,1),(8,8,1),(9,9,3),(10,10,1),(11,11,3),(12,12,4),(13,13,4),(14,14,4),(15,15,3),(16,16,2),(17,17,5),(18,18,5),(19,19,3),(20,20,4),(21,21,7),(22,22,7),(23,23,5),(24,24,7),(25,25,8),(26,26,8),(27,27,9),(28,28,9),(29,29,9),(30,31,5),(31,30,5),(32,32,8),(33,33,7),(34,34,7),(35,35,8),(36,36,8),(37,37,9),(38,38,9),(39,39,10),(40,40,10),(41,41,1),(42,42,10),(43,43,10),(44,44,11),(45,44,12),(46,44,13),(47,44,14),(48,45,14),(49,45,12),(50,45,13),(51,45,11),(52,46,13),(53,46,14),(54,46,12),(55,46,11),(56,47,11),(57,47,13),(58,47,14),(59,47,12),(60,48,13),(61,48,14),(62,48,11),(63,48,12),(64,49,16),(65,50,16),(66,51,16),(67,52,16),(68,53,16),(69,54,16),(70,55,16),(71,56,16),(72,57,16),(73,58,16),(74,59,16),(75,60,16),(76,61,16),(77,62,16),(78,63,16),(79,64,16),(80,65,16),(81,66,16),(82,67,16),(83,68,16),(84,69,16),(85,70,16),(86,71,16),(87,72,16),(88,73,16),(89,74,16),(90,75,16),(91,76,16),(92,77,16),(93,78,16),(94,79,16),(95,80,16),(96,81,16),(97,82,16),(98,83,16),(99,84,16),(100,85,16),(101,86,16),(102,87,16),(103,88,16),(104,88,14),(105,88,13),(106,88,12),(107,88,11),(108,89,12),(109,89,13),(110,89,14),(111,89,11),(112,89,16),(113,90,16),(114,90,13),(115,90,14),(116,90,11),(117,90,12),(118,91,11),(119,91,12),(120,91,13),(121,91,14),(122,91,16),(123,92,13),(124,92,14),(125,92,11),(126,92,12),(127,92,16),(128,93,11),(129,93,16),(130,93,14),(131,93,13),(132,93,12),(133,94,11),(134,94,12),(135,94,14),(136,94,13),(137,94,16),(138,95,12),(139,95,13),(140,95,11),(141,95,16),(142,95,14),(143,96,16),(144,97,16),(145,98,16),(146,99,16),(147,100,16),(148,101,16),(149,102,16),(150,103,16),(151,104,16),(152,105,16),(153,106,16),(154,107,16),(155,108,16),(156,109,16),(157,110,16),(158,111,16),(159,112,16),(160,112,13),(161,112,14),(162,112,11),(163,112,12),(164,113,12),(165,113,13),(166,113,14),(167,113,16),(168,113,11),(169,114,12),(170,114,11),(171,114,16),(172,114,14),(173,114,13),(174,115,11),(175,115,13),(176,115,12),(177,115,14),(178,115,16),(179,116,16),(180,116,14),(181,116,13),(182,116,12),(183,116,11),(184,117,16),(185,117,13),(186,117,12),(187,117,14),(188,117,11),(189,118,11),(190,118,12),(191,118,13),(192,118,14),(193,118,16),(194,119,12),(195,119,13),(196,119,11),(197,119,16),(198,119,14),(199,120,16),(200,121,16),(201,122,16),(202,123,16),(203,124,16),(204,125,16),(205,126,16),(206,127,16),(207,128,16),(208,129,16),(209,130,16),(210,131,16),(211,132,16),(212,133,16),(213,134,16),(214,135,16),(215,136,16),(216,137,16),(217,138,16),(218,139,16),(219,140,16),(220,141,16),(221,142,16),(222,143,16),(223,144,16),(224,145,16),(225,146,16),(226,147,16),(227,148,16),(228,149,16),(229,150,16),(230,151,16),(231,152,16),(232,152,13),(233,152,14),(234,152,11),(235,152,12),(236,153,16),(237,153,11),(238,153,12),(239,153,13),(240,153,14),(241,154,11),(242,154,12),(243,154,16),(244,154,13),(245,154,14),(246,155,14),(247,155,16),(248,155,11),(249,155,13),(250,155,12),(251,156,16),(252,156,14),(253,156,13),(254,156,12),(255,156,11),(256,157,13),(257,157,12),(258,157,14),(259,157,16),(260,157,11),(261,158,16),(262,158,14),(263,158,13),(264,158,11),(265,158,12),(266,159,13),(267,159,12),(268,159,11),(269,159,16),(270,159,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,4,3),(6,5,3),(7,5,2),(8,6,3),(9,6,2),(10,7,1),(11,8,1),(12,10,1),(13,16,2),(14,16,3),(15,41,1);
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
INSERT INTO `IMimeTypes` VALUES (1,9,'application','vnd.android.package-archive'),(2,29,'application','vnd.android.package-archive'),(3,41,'application','vnd.android.package-archive'),(4,53,'application','vnd.android.package-archive'),(5,103,'application','vnd.android.package-archive'),(6,104,'application','vnd.android.package-archive'),(7,108,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'NULL-CONSTANT'),(2,4,'com.androiddoctor.batteryapp'),(3,5,'com.androiddoctor.batteryapp'),(4,6,'com.androiddoctor.batteryapp'),(5,7,'com.androiddoctor.batteryapp'),(6,10,'com.androiddoctor.batteryapp'),(7,11,'com.androiddoctor.batteryapp'),(8,12,'com.androiddoctor.batteryapp'),(9,13,'com.androiddoctor.batteryapp'),(10,17,'com.android.settings'),(11,18,'com.android.settings'),(12,25,'com.androiddoctor.batteryapp'),(13,26,'com.extend.battery'),(14,27,'com.extend.battery'),(15,28,'com.extend.battery'),(16,30,'com.extend.battery'),(17,31,'com.extend.battery'),(18,32,'com.extend.battery'),(19,33,'com.extend.battery'),(20,34,'com.extend.battery'),(21,35,'com.android.settings'),(22,37,'com.android.settings'),(23,39,'com.extend.battery'),(24,42,'com.extend.battery'),(25,43,'com.android.settings'),(26,44,'com.android.settings'),(27,45,'com.extend.battery'),(28,47,'com.extend.battery'),(29,48,'com.extend.battery'),(30,49,'com.extend.battery'),(31,50,'com.extend.battery'),(32,51,'com.extend.battery'),(33,52,'com.extend.battery'),(34,54,'com.extend.battery'),(35,56,'com.extend.battery'),(36,57,'com.extend.battery'),(37,55,'com.extend.battery'),(38,58,'com.extend.battery'),(39,59,'com.extend.battery'),(40,60,'com.extend.battery'),(41,61,'com.extend.battery'),(42,64,'com.extend.battery'),(43,62,'com.extend.battery'),(44,65,'NULL-CONSTANT'),(45,63,'com.extend.battery'),(46,66,'com.extend.battery'),(47,67,'com.extend.battery'),(48,69,'com.extend.battery'),(49,70,'com.extend.battery'),(50,72,'com.extend.battery'),(51,74,'com.extend.battery'),(52,76,'com.extend.battery'),(53,77,'NULL-CONSTANT'),(54,78,'com.extend.battery'),(55,79,'com.extend.battery'),(56,80,'com.extend.battery'),(57,81,'com.extend.battery'),(58,83,'com.extend.battery'),(59,84,'com.android.settings'),(60,85,'com.android.settings'),(61,82,'com.extend.battery'),(62,89,'com.extend.battery'),(63,91,'com.extend.battery'),(64,92,'com.extend.battery'),(65,93,'com.extend.battery'),(66,94,'com.extend.battery'),(67,96,'com.extend.battery'),(68,95,'com.extend.battery'),(69,97,'com.extend.battery'),(70,99,'NULL-CONSTANT'),(71,101,'com.extend.battery'),(72,98,'com.extend.battery'),(73,105,'com.extend.battery'),(74,107,'com.extend.battery'),(75,109,'com.extend.battery');
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,1,0),(4,11,0),(5,11,0),(6,11,0),(7,17,0),(8,18,0),(9,19,0),(10,1,0),(11,19,0),(12,19,0),(13,19,0),(14,19,0),(15,19,0),(16,11,0),(17,22,0),(18,22,0),(19,19,0),(20,19,0),(21,27,0),(22,27,0),(23,22,0),(24,27,0),(25,31,0),(26,31,0),(27,31,0),(28,31,0),(29,31,0),(30,35,0),(31,35,0),(32,31,0),(33,36,0),(34,37,0),(35,38,0),(36,38,0),(37,38,0),(38,38,0),(39,39,0),(40,39,0),(41,40,0),(42,51,0),(43,52,0),(44,53,0),(45,54,0),(46,51,0),(47,55,0),(48,52,0),(49,53,0),(50,54,0),(51,51,0),(52,55,0),(53,52,0),(54,53,0),(55,54,0),(56,51,0),(57,55,0),(58,52,0),(59,53,0),(60,54,0),(61,51,0),(62,55,0),(63,52,0),(64,56,0),(65,19,0),(66,57,0),(67,58,0),(68,31,0),(69,22,0),(70,56,0),(71,19,0),(72,59,0),(73,57,0),(74,27,0),(75,58,0),(76,31,0),(77,22,0),(78,59,0),(79,27,0),(80,56,0),(81,19,0),(82,57,0),(83,58,0),(84,31,0),(85,22,0),(86,59,0),(87,27,0),(88,56,0),(89,19,0),(90,57,0),(91,58,0),(92,31,0),(93,22,0),(94,59,0),(95,27,0),(96,56,0),(97,19,0),(98,57,0),(99,58,0),(100,31,0),(101,22,0),(102,59,0),(103,27,0),(104,56,0),(105,19,0),(106,57,0),(107,58,0),(108,31,0),(109,22,0),(110,59,0),(111,27,0),(112,56,0),(113,19,0),(114,57,0),(115,58,0),(116,31,0),(117,22,0),(118,59,0),(119,27,0),(120,56,0),(121,19,0),(122,57,0),(123,58,0),(124,31,0),(125,22,0),(126,59,0),(127,56,0),(128,27,0),(129,19,0),(130,57,0),(131,58,0),(132,31,0),(133,22,0),(134,59,0),(135,27,0),(136,56,0),(137,19,0),(138,57,0),(139,58,0),(140,31,0),(141,22,0),(142,59,0),(143,27,0),(144,56,0),(145,19,0),(146,57,0),(147,58,0),(148,31,0),(149,22,0),(150,59,0),(151,27,0),(152,56,0),(153,19,0),(154,57,0),(155,58,0),(156,31,0),(157,22,0),(158,59,0),(159,27,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,1,0),(9,9,1,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,13,0,0),(14,14,1,0),(15,15,1,0),(16,16,1,0),(17,17,0,0),(18,17,0,0),(19,17,1,0),(20,18,1,0),(21,19,1,0),(22,19,1,0),(23,19,1,0),(24,19,1,0),(25,20,0,0),(26,21,0,0),(27,23,0,0),(28,24,0,0),(29,25,1,0),(30,26,0,0),(31,27,0,0),(32,28,0,0),(33,30,0,0),(34,31,0,0),(35,32,0,0),(36,33,1,0),(37,32,0,0),(38,32,1,0),(39,34,0,0),(40,35,1,0),(41,36,1,0),(42,37,0,0),(43,38,0,0),(44,38,0,0),(45,40,0,0),(46,38,1,0),(47,41,0,0),(48,44,0,0),(49,45,0,0),(50,46,0,0),(51,49,0,0),(52,48,0,0),(53,50,1,0),(54,51,0,0),(55,52,0,0),(56,53,0,0),(57,54,0,0),(58,55,0,0),(59,56,0,0),(60,57,0,0),(61,60,0,0),(62,57,0,0),(63,60,0,0),(64,61,0,0),(65,62,0,0),(66,63,0,0),(67,64,0,0),(68,65,1,0),(69,66,0,0),(70,67,0,0),(71,68,1,0),(72,69,0,0),(73,70,1,0),(74,71,0,0),(75,72,1,0),(76,73,0,0),(77,74,0,0),(78,75,0,0),(79,76,0,0),(80,77,0,0),(81,78,0,0),(82,79,0,0),(83,80,0,0),(84,81,0,0),(85,81,0,0),(86,82,1,0),(87,81,1,0),(88,83,1,0),(89,85,0,0),(90,86,1,0),(91,87,0,0),(92,89,0,0),(93,90,0,0),(94,91,0,0),(95,92,0,0),(96,94,0,0),(97,95,0,0),(98,92,0,0),(99,96,0,0),(100,97,1,0),(101,98,0,0),(102,99,1,0),(103,100,1,0),(104,101,1,0),(105,103,0,0),(106,105,1,0),(107,107,0,0),(108,108,1,0),(109,110,0,0);
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
INSERT INTO `PermissionStrings` VALUES (23,'android.permission.ACCESS_COARSE_LOCATION'),(24,'android.permission.ACCESS_FINE_LOCATION'),(21,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BLUETOOTH'),(19,'android.permission.BLUETOOTH_ADMIN'),(17,'android.permission.CHANGE_WIFI_STATE'),(7,'android.permission.CLEAR_APP_CACHE'),(11,'android.permission.DISABLE_KEYGUARD'),(20,'android.permission.GET_PACKAGE_SIZE'),(1,'android.permission.GET_TASKS'),(16,'android.permission.INTERNET'),(9,'android.permission.KILL_BACKGROUND_PROCESSES'),(10,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(8,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SEND_SMS'),(18,'android.permission.VIBRATE'),(22,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS'),(25,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(7,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(8,NULL,NULL,'content://sms',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://sms',NULL,NULL,NULL),(15,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(16,NULL,NULL,'content://mms',NULL,NULL,NULL),(17,NULL,NULL,'content://mms',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(22,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(23,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'content://sms',NULL,NULL,NULL),(29,NULL,NULL,'content://mms',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,22,8),(2,39,14),(3,42,16),(4,43,17),(5,102,28),(6,104,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,19),(19,1,18),(20,1,21),(21,1,20),(22,1,22),(23,2,1),(24,2,2),(25,2,3),(26,2,4),(27,2,5),(28,2,6),(29,2,8),(30,2,10),(31,2,11),(32,2,12),(33,2,13),(34,2,14),(35,2,15),(36,2,17),(37,2,16),(38,2,19),(39,2,18),(40,2,21),(41,2,23),(42,2,22),(43,2,24),(44,3,1),(45,3,3),(46,3,5),(47,3,8),(48,3,10),(49,3,13),(50,3,14),(51,3,15),(52,3,17),(53,3,16),(54,3,19),(55,3,18),(56,3,21),(57,3,25);
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

-- Dump completed on 2015-10-09  0:38:37
