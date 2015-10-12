-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_218
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (19,'(.*).SEND_SMS'),(27,'NULL-CONSTANT'),(26,'android.intent.action.BATTERY_CHANGED'),(25,'android.intent.action.BATTERY_LOW'),(22,'android.intent.action.BATTERY_OKAY'),(9,'android.intent.action.BOOT_COMPLETED'),(29,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(23,'android.intent.action.SCREEN_OFF'),(24,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.VIEW'),(4,'android.provider.Telephony.SMS_RECEIVED'),(30,'android.settings.APPLICATION_DETAILS_SETTINGS'),(31,'android.settings.LOCATION_SOURCE_SETTINGS'),(7,'com.android.vending.INSTALL_REFERRER'),(10,'com.extend.battery.CHECK'),(13,'com.extend.battery.DELIVERED_SMS'),(14,'com.extend.battery.SEND_SMS'),(12,'com.extend.battery.SENT_SMS'),(11,'com.extend.battery.UPDATE'),(8,'com.extend.battery.intent.http.SHOW'),(17,'com.extend.battery.notification.action.ALARM'),(15,'com.extend.battery.notification.action.CANCEL'),(16,'com.extend.battery.notification.action.CLICKED'),(28,'com.flurry.android.ACTION_CATALOG'),(5,'com.itframework.installer.updater.CHECK'),(6,'com.itframework.installer.updater.UPDATE'),(18,'com.itframework.intent.wait.HIDE'),(21,'com.itframework.intent.wait.MESSAGE'),(20,'com.itframework.intent.wait.SHOW'),(3,'com.zanalytics.sms.MESSAGE_RECEIVED');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.extend.battery',77),(2,'com.extend.battery',73),(3,'com.extend.battery',91),(4,'com.speed.boost',7),(5,'com.extend.battery',103),(6,'com.androiddoctor.battery',10);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.extend.battery.Splash'),(2,1,'com.extend.battery.TabHandler'),(3,1,'com.extend.battery.TaskKillerActivity'),(4,2,'com.extend.battery.Splash'),(5,1,'com.extend.battery.UninstallerActivity'),(6,3,'com.extend.battery.Splash'),(7,1,'com.extend.battery.SecurityAuditActivity'),(8,2,'com.extend.battery.TabHandler'),(9,1,'com.extend.battery.InstallerActivity'),(10,3,'com.extend.battery.TabHandler'),(11,2,'com.extend.battery.TaskKillerActivity'),(12,1,'com.extend.battery.FeaturesActivity'),(13,3,'com.extend.battery.TaskKillerActivity'),(14,2,'com.extend.battery.UninstallerActivity'),(15,3,'com.extend.battery.UninstallerActivity'),(16,1,'com.extend.battery.BoosterActivity'),(17,3,'com.extend.battery.SecurityAuditActivity'),(18,2,'com.extend.battery.SecurityAuditActivity'),(19,3,'com.extend.battery.InstallerActivity'),(20,1,'com.extend.battery.BatteryActivity'),(21,3,'com.extend.battery.FeaturesActivity'),(22,2,'com.extend.battery.InstallerActivity'),(23,3,'com.extend.battery.BoosterActivity'),(24,1,'com.extend.battery.RatingActivity'),(25,3,'com.extend.battery.BatteryActivity'),(26,2,'com.extend.battery.FeaturesActivity'),(27,3,'com.extend.battery.RatingActivity'),(28,1,'com.extend.battery.BatteryService'),(29,3,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(30,2,'com.extend.battery.BoosterActivity'),(31,1,'com.zanalytics.sms.SmsReceiverService'),(32,2,'com.extend.battery.BatteryActivity'),(33,1,'com.zanalytics.sms.SmsReceiver'),(34,3,'com.itframework.installer.util.NonMarketDialogActivity'),(35,2,'com.extend.battery.RatingActivity'),(36,3,'com.extend.battery.BatteryService'),(37,2,'com.extend.battery.BatteryService'),(38,3,'com.itframework.installer.util.InstallWorker'),(39,3,'com.zanalytics.sms.SmsReceiverService'),(40,2,'com.zanalytics.sms.SmsReceiverService'),(41,3,'com.itframework.installer.updater.UpdateReceiver'),(42,4,'com.speed.boost.HomeActivity_'),(43,2,'com.zanalytics.sms.SmsReceiver'),(44,1,'com.tapjoy.TapjoyReferralTracker'),(45,3,'com.extend.battery.NotificationReceiver'),(46,4,'com.speed.boost.ApplicationsActivity_'),(47,2,'com.tapjoy.TapjoyReferralTracker'),(48,4,'com.speed.boost.HistoryActivity_'),(49,3,'com.extend.battery.BootReceiver'),(50,4,'com.speed.boost.HistoryAdvancedActivity_'),(51,4,'com.speed.boost.MemoryActivity_'),(52,3,'com.zanalytics.sms.SmsReceiver'),(53,4,'com.speed.boost.MemoryAdvancedActivity_'),(54,4,'com.speed.boost.PerformanceActivity_'),(55,4,'com.speed.boost.PerformanceAdvancedActivity_'),(56,4,'com.zanalytics.sms.SmsReceiverService'),(57,4,'com.zanalytics.sms.SmsReceiver'),(58,5,'com.extend.battery.Splash'),(59,6,'com.androiddoctor.battery.Splash'),(60,5,'com.extend.battery.TabHandler'),(61,5,'com.extend.battery.TaskKillerActivity'),(62,6,'com.androiddoctor.battery.TabHandler'),(63,5,'com.extend.battery.UninstallerActivity'),(64,6,'com.androiddoctor.battery.TaskKillerActivity'),(65,5,'com.extend.battery.SecurityAuditActivity'),(66,6,'com.androiddoctor.battery.UninstallerActivity'),(67,5,'com.extend.battery.InstallerActivity'),(68,6,'com.androiddoctor.battery.SecurityAuditActivity'),(69,5,'com.extend.battery.FeaturesActivity'),(70,6,'com.androiddoctor.battery.InstallerActivity'),(71,5,'com.extend.battery.BoosterActivity'),(72,6,'com.androiddoctor.battery.FeaturesActivity'),(73,5,'com.extend.battery.BatteryActivity'),(74,6,'com.androiddoctor.battery.BoosterActivity'),(75,5,'com.extend.battery.RatingActivity'),(76,6,'com.androiddoctor.battery.BatteryActivity'),(77,5,'com.extend.battery.UninstallingDialog'),(78,6,'com.androiddoctor.battery.RatingActivity'),(79,5,'com.itframework.installer.util.InstallNonMarketFromUrlActivity'),(80,6,'com.androiddoctor.battery.BatteryService'),(81,6,'com.mobsqueeze.ReferralReceiver'),(82,5,'com.itframework.installer.util.NonMarketDialogActivity'),(83,6,'com.tapjoy.TapjoyReferralTracker'),(84,5,'com.extend.battery.BatteryService'),(85,5,'com.itframework.installer.util.InstallWorker'),(86,5,'com.itframework.network.NetworkOperationService'),(87,5,'com.zanalytics.sms.SmsReceiverService'),(88,5,'com.zanalytics.sms.SmsSendService'),(89,5,'com.itframework.base.util.UploadAnalyticsService'),(90,5,'com.itframework.notification.NotificationService'),(91,5,'com.itframework.installer.updater.UpdateReceiver'),(92,5,'com.extend.battery.NotificationReceiver'),(93,5,'com.extend.battery.BootReceiver'),(94,5,'com.itframework.network.NetworkOperationReceiver'),(95,5,'com.zanalytics.sms.SmsReceiver'),(96,5,'com.zanalytics.sms.SmsSentReceiver'),(97,5,'com.zanalytics.sms.SmsDeliveredReceiver'),(98,5,'com.zanalytics.sms.SmsSendReceiver'),(99,5,'com.itframework.notification.NotificationReceiver'),(100,4,'com.speed.boost.HistoryActivity'),(101,4,'com.zanalytics.sms.SmsUtils'),(102,4,'com.speed.boost.PerformanceActivity'),(103,4,'com.itframework.wait.Wait$WaitReceiver'),(104,4,'com.zanalytics.sms.SendIntent'),(105,4,'com.itframework.HistoryFeature$4'),(106,4,'com.speed.boost.MemoryActivity'),(107,6,'com.androiddoctor.battery.InstallerActivity$1'),(108,6,'com.androiddoctor.battery.BatteryService$1'),(109,6,'com.androiddoctor.battery.BatteryActivity$1'),(110,6,'com.androiddoctor.battery.BoosterActivity$1'),(111,2,'com.zanalytics.sms.j'),(112,6,'com.flurry.android.u'),(113,2,'com.extend.battery.at'),(114,1,'com.extend.battery.aw'),(115,1,'com.extend.battery.ay'),(116,2,'com.extend.battery.g'),(117,1,'com.extend.battery.g'),(118,2,'com.extend.battery.f'),(119,1,'com.extend.battery.i'),(120,2,'com.extend.battery.d'),(121,1,'com.extend.battery.j'),(122,2,'com.zanalytics.sms.c'),(123,1,'com.zanalytics.sms.c'),(124,1,'com.extend.battery.s'),(125,1,'com.extend.battery.f'),(126,6,'com.androiddoctor.battery.Splash$1'),(127,6,'com.androiddoctor.battery.TaskKillerActivity$1'),(128,6,'com.androiddoctor.battery.SecurityAuditActivity$1'),(129,6,'com.androiddoctor.battery.UninstallerActivity$1'),(130,1,'com.zanalytics.sms.j'),(131,2,'com.zanalytics.sms.a'),(132,1,'com.zanalytics.sms.a'),(133,2,'com.extend.battery.p'),(134,6,'com.androiddoctor.battery.BoosterActivity$6'),(135,2,'com.extend.battery.av'),(136,3,'com.zanalytics.sms.a'),(137,3,'com.extend.battery.features.s'),(138,3,'com.zanalytics.sms.j'),(139,3,'com.itframework.installer.a.b'),(140,3,'com.extend.battery.ba'),(141,3,'com.extend.battery.d'),(142,3,'com.extend.battery.c'),(143,3,'com.extend.battery.a'),(144,3,'com.zanalytics.sms.c'),(145,3,'com.extend.battery.bb'),(146,3,'com.extend.battery.k'),(147,5,'com.extend.battery.features.s'),(148,5,'com.itframework.installer.b.a'),(149,5,'com.extend.battery.bd'),(150,5,'com.extend.battery.be'),(151,5,'com.extend.battery.a'),(152,5,'com.itframework.base.service.AlarmReceiver'),(153,5,'com.extend.battery.h'),(154,5,'com.extend.battery.i'),(155,5,'com.zanalytics.sms.d'),(156,5,'com.itframework.base.service.WakefulIntentService'),(157,5,'com.itframework.installer.a.b'),(158,5,'com.extend.battery.o');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,57,'pdus'),(2,54,'FEATURE_NAME'),(3,53,'FEATURE_NAME'),(4,50,'FEATURE_NAME'),(5,46,'FEATURE_NAME'),(6,47,'FEATURE_NAME'),(7,55,'FEATURE_NAME'),(8,51,'FEATURE_NAME'),(9,43,'pdus'),(10,20,'technology'),(11,81,'referrer'),(12,33,'pdus'),(13,76,'technology'),(14,32,'technology'),(15,37,'downloadingTitle'),(16,37,'forceDownload'),(17,37,'downloadingWait'),(18,37,'downloadingProgress'),(19,37,'finishedTicker'),(20,29,'downloadStarting'),(21,37,'url'),(22,37,'downloadStarting'),(23,29,'forceDownload'),(24,29,'downloadingTicker'),(25,29,'finishedTicker'),(26,37,'downloadingTicker'),(27,37,'finishedText'),(28,25,'technology'),(29,37,'showNotifications'),(30,29,'finishedText'),(31,52,'pdus'),(32,37,'downloadingToast'),(33,29,'downloadingWait'),(34,40,'URL'),(35,29,'filename'),(36,37,'finishedTitle'),(37,29,'finishedTitle'),(38,29,'downloadingProgress'),(39,29,'callbackIntent'),(40,29,'downloadingToast'),(41,37,'callbackIntent'),(42,45,'clickevent'),(43,29,'downloadingTitle'),(44,29,'url'),(45,37,'filename'),(46,85,'forceDownload'),(47,79,'downloadStarting'),(48,85,'finishedTitle'),(49,90,'ACTION'),(50,90,'NOTIFICATION_CATEGORY'),(51,99,'BROADCAST_INTENT'),(52,96,'NextMessage'),(53,79,'finishedText'),(54,79,'forceDownload'),(55,95,'pdus'),(56,96,'SendIntent'),(57,79,'filename'),(58,96,'PhoneNumber'),(59,85,'finishedTicker'),(60,79,'downloadingWait'),(61,73,'technology'),(62,79,'url'),(63,96,'TryAgain'),(64,99,'NOTIFICATION_CATEGORY'),(65,85,'filename'),(66,79,'callbackIntent'),(67,85,'url'),(68,85,'downloadingTicker'),(69,85,'downloadingToast'),(70,85,'downloadStarting'),(71,79,'finishedTicker'),(72,99,'CLICKED_EVENT'),(73,85,'finishedText'),(74,99,'DO_AUTO_CANCEL'),(75,92,'clickevent'),(76,85,'downloadingWait'),(77,90,'BROADCAST_INTENT'),(78,79,'downloadingProgress'),(79,96,'TagEvent'),(80,79,'downloadingToast'),(81,90,'CLICKED_EVENT'),(82,85,'downloadingProgress'),(83,85,'showNotifications'),(84,96,'MessageExtra'),(85,96,'Message'),(86,85,'callbackIntent'),(87,91,'URL'),(88,79,'downloadingTitle'),(89,79,'downloadingTicker'),(90,85,'downloadingTitle'),(91,79,'finishedTitle'),(92,90,'DO_AUTO_CANCEL'),(93,96,'StoreMessage');
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,15,'a',0,NULL,NULL),(15,14,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,19,'a',0,NULL,NULL),(19,18,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,23,'a',0,NULL,NULL),(23,22,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,27,'a',0,NULL,NULL),(27,26,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,38,'s',0,NULL,NULL),(38,37,'s',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,41,'r',1,NULL,NULL),(41,40,'s',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,48,'a',0,NULL,NULL),(48,47,'r',1,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'s',0,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',1,NULL,NULL),(80,80,'s',0,NULL,NULL),(81,81,'r',1,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'r',1,NULL,NULL),(84,84,'s',0,NULL,NULL),(85,85,'s',0,NULL,NULL),(86,86,'s',0,NULL,NULL),(87,87,'s',0,NULL,NULL),(88,88,'s',0,NULL,NULL),(89,89,'s',0,NULL,NULL),(90,90,'s',0,NULL,NULL),(91,91,'r',1,NULL,NULL),(92,92,'r',1,NULL,NULL),(93,93,'r',1,NULL,NULL),(94,94,'r',0,NULL,NULL),(95,95,'r',1,NULL,NULL),(96,96,'r',1,NULL,NULL),(97,97,'r',1,NULL,NULL),(98,98,'r',1,NULL,NULL),(99,99,'r',1,NULL,NULL),(100,103,'r',1,NULL,NULL),(101,108,'r',1,NULL,NULL),(102,109,'r',1,NULL,NULL),(103,110,'r',1,NULL,NULL),(104,116,'r',1,NULL,NULL),(105,117,'r',1,NULL,NULL),(106,118,'r',1,NULL,NULL),(107,119,'r',1,NULL,NULL),(108,120,'r',1,NULL,NULL),(109,121,'r',1,NULL,NULL),(110,122,'r',1,NULL,NULL),(111,123,'r',1,NULL,NULL),(112,141,'r',1,NULL,NULL),(113,142,'r',1,NULL,NULL),(114,143,'r',1,NULL,NULL),(115,144,'r',1,NULL,NULL),(116,151,'r',1,NULL,NULL),(117,152,'r',1,NULL,NULL),(118,153,'r',1,NULL,NULL),(119,154,'r',1,NULL,NULL),(120,94,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,47),(2,2,57),(3,3,54),(4,4,42),(5,5,57),(6,6,55),(7,6,54),(8,6,42),(9,6,47),(10,6,51),(11,6,50),(12,7,57),(13,8,51),(14,9,76),(15,10,66),(16,10,68),(17,10,70),(18,10,76),(19,10,74),(20,11,43),(21,12,4),(22,13,76),(23,13,74),(24,14,23),(25,15,5),(26,16,68),(27,16,70),(28,16,66),(29,16,76),(30,17,33),(31,18,4),(32,19,15),(33,20,9),(34,20,20),(35,21,19),(36,22,1),(37,23,1),(38,24,76),(39,24,66),(40,25,3),(41,25,20),(42,26,76),(43,27,66),(44,27,76),(45,28,4),(46,29,9),(47,30,66),(48,31,5),(49,31,20),(50,31,16),(51,31,9),(52,31,7),(53,33,74),(54,33,76),(55,32,20),(56,32,5),(57,32,7),(58,32,9),(59,34,32),(60,36,1),(61,35,59),(62,37,76),(63,37,64),(64,38,20),(65,38,16),(66,39,1),(67,40,43),(68,41,74),(69,41,70),(70,41,68),(71,41,66),(72,41,76),(73,42,20),(74,42,16),(75,43,70),(76,44,32),(77,44,19),(78,45,5),(79,45,20),(80,46,8),(81,47,70),(82,47,74),(83,47,76),(84,47,66),(85,47,68),(86,48,33),(87,49,30),(88,49,15),(89,49,23),(90,49,19),(91,49,32),(92,51,59),(93,50,33),(94,52,7),(95,53,59),(96,54,32),(97,54,30),(98,55,68),(99,56,32),(100,56,30),(101,57,7),(102,57,5),(103,57,20),(104,57,9),(105,58,19),(106,58,23),(107,58,32),(108,58,15),(109,58,30),(110,59,74),(111,59,76),(112,59,70),(113,59,66),(114,59,68),(115,60,76),(116,60,74),(117,61,59),(118,62,15),(119,62,32),(120,63,76),(121,63,68),(122,64,2),(123,65,43),(124,66,76),(125,66,70),(126,67,15),(127,67,32),(128,68,32),(129,68,23),(130,69,32),(131,69,11),(132,70,20),(133,70,7),(134,71,4),(135,72,20),(136,73,5),(137,73,20),(138,74,25),(139,75,45),(140,76,25),(141,76,14),(142,76,17),(143,76,18),(144,77,25),(145,77,14),(146,78,25),(147,78,14),(148,79,25),(149,79,18),(150,80,22),(151,81,17),(152,81,18),(153,81,25),(154,81,14),(155,82,6),(156,83,25),(157,83,17),(158,84,14),(159,85,10),(160,86,17),(161,87,52),(162,88,37),(163,89,52),(164,90,37),(165,91,6),(166,92,37),(167,93,18),(168,94,25),(169,94,18),(170,94,17),(171,94,14),(172,95,37),(173,96,25),(174,96,17),(175,97,29),(176,98,22),(177,98,25),(178,99,6),(179,100,22),(180,100,25),(181,101,6),(182,102,6),(183,103,49),(184,104,45),(185,105,25),(186,106,25),(187,106,13),(188,107,52),(189,108,6),(190,109,14),(191,109,25),(192,110,22),(193,110,25),(194,111,18),(195,111,17),(196,111,14),(197,111,25),(198,111,22),(199,112,18),(200,112,17),(201,112,14),(202,112,25),(203,113,52),(204,114,29),(205,115,25),(206,115,22),(207,116,29),(208,117,6),(209,118,6),(210,119,18),(211,120,52),(212,121,22),(213,122,29),(214,123,37),(215,124,25),(216,124,14),(217,125,10),(218,126,17),(219,127,52),(220,128,37),(221,129,18),(222,129,25),(223,130,14),(224,130,25),(225,130,22),(226,130,18),(227,130,17),(228,131,49),(229,132,13),(230,132,25),(231,133,14),(232,134,85),(233,135,79),(234,136,67),(235,136,73),(236,137,73),(237,137,77),(238,138,63),(239,139,63),(240,139,65),(241,139,73),(242,139,67),(243,140,65),(244,141,84),(245,142,58),(246,143,61),(247,143,73),(248,144,95),(249,145,96),(250,145,98),(251,145,95),(252,146,73),(253,146,63),(254,147,79),(255,148,90),(256,149,96),(257,150,73),(258,151,95),(259,152,73),(260,152,71),(261,153,90),(262,154,58),(263,155,99),(264,156,73),(265,156,71),(266,157,58),(267,158,67),(268,159,60),(269,160,85),(270,161,77),(271,162,65),(272,162,73),(273,163,85),(274,164,93),(275,165,71),(276,165,73),(277,165,63),(278,165,65),(279,165,67),(280,166,73),(281,166,63),(282,167,71),(283,168,92),(284,169,58);
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
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,100,'<com.speed.boost.HistoryActivity: void advancedButtonClicked()>',6,'a',0),(2,101,'<com.zanalytics.sms.SmsUtils: int getUnreadMmsCount(android.content.Context)>',5,'p',NULL),(3,102,'<com.speed.boost.PerformanceActivity: void advancedButtonClicked()>',6,'a',0),(4,104,'<com.zanalytics.sms.SendIntent: void send()>',3,'s',NULL),(5,101,'<com.zanalytics.sms.SmsUtils: int getUnreadSmsCount(android.content.Context,long,java.lang.String)>',9,'p',NULL),(6,105,'<com.itframework.HistoryFeature$4: void run()>',9,'p',NULL),(7,57,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',135,'s',NULL),(8,106,'<com.speed.boost.MemoryActivity: void advancedButtonClicked()>',6,'a',0),(9,76,'<com.androiddoctor.battery.BatteryActivity: void onCreate(android.os.Bundle)>',23,'s',NULL),(10,107,'<com.androiddoctor.battery.InstallerActivity$1: void run()>',13,'a',NULL),(11,111,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(12,4,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(13,74,'<com.androiddoctor.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(14,22,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(15,5,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(16,112,'<com.flurry.android.u: void b(android.content.Context,com.flurry.android.p,java.lang.String)>',12,'a',NULL),(17,33,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',119,'s',NULL),(18,113,'<com.extend.battery.at: void run()>',135,'a',NULL),(19,14,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',23,'a',NULL),(20,9,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(21,18,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(22,114,'<com.extend.battery.aw: void run()>',73,'a',NULL),(23,114,'<com.extend.battery.aw: void run()>',139,'a',NULL),(24,66,'<com.androiddoctor.battery.UninstallerActivity: void uninstallApp(com.androiddoctor.battery.model.InstalledApplication)>',10,'a',NULL),(25,115,'<com.extend.battery.ay: void onClick(android.view.View)>',6,'a',NULL),(26,76,'<com.androiddoctor.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(27,66,'<com.androiddoctor.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(28,113,'<com.extend.battery.at: void run()>',71,'a',NULL),(29,9,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(30,66,'<com.androiddoctor.battery.UninstallerActivity: void launch(java.lang.String)>',16,'a',NULL),(31,124,'<com.extend.battery.s: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(32,125,'<com.extend.battery.f: void onClick(android.view.View)>',8,'a',NULL),(33,74,'<com.androiddoctor.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(34,32,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(35,126,'<com.androiddoctor.battery.Splash$1: void run()>',100,'a',NULL),(36,1,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(37,127,'<com.androiddoctor.battery.TaskKillerActivity$1: void onClick(android.view.View)>',6,'a',NULL),(38,16,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(39,114,'<com.extend.battery.aw: void run()>',205,'a',NULL),(40,43,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',119,'s',NULL),(41,128,'<com.androiddoctor.battery.SecurityAuditActivity$1: void run()>',10,'a',NULL),(42,16,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(43,70,'<com.androiddoctor.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(44,18,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(45,5,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(46,8,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(47,129,'<com.androiddoctor.battery.UninstallerActivity$1: void run()>',10,'a',NULL),(48,130,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(49,131,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(50,130,'<com.zanalytics.sms.j: int a(android.content.Context)>',5,'p',NULL),(51,59,'<com.androiddoctor.battery.Splash: void startApp()>',9,'a',NULL),(52,7,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(53,126,'<com.androiddoctor.battery.Splash$1: void run()>',49,'a',NULL),(54,30,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',8,'a',NULL),(55,68,'<com.androiddoctor.battery.SecurityAuditActivity: void showApplicationDetailsActivity(java.lang.String)>',8,'a',NULL),(56,30,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(57,132,'<com.zanalytics.sms.a: void m()>',3,'s',NULL),(58,133,'<com.extend.battery.p: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(59,74,'<com.androiddoctor.battery.BoosterActivity: void AppReferral()>',5,'a',NULL),(60,134,'<com.androiddoctor.battery.BoosterActivity$6: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(61,126,'<com.androiddoctor.battery.Splash$1: void run()>',148,'a',NULL),(62,14,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(63,68,'<com.androiddoctor.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(64,2,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',9,'s',NULL),(65,111,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(66,70,'<com.androiddoctor.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(67,14,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(68,22,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(69,135,'<com.extend.battery.av: void onClick(android.view.View)>',6,'a',NULL),(70,7,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(71,113,'<com.extend.battery.at: void run()>',199,'a',NULL),(72,20,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(73,5,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(74,25,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(75,45,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(76,136,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(77,15,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(78,15,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(79,19,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(80,23,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(81,137,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(82,6,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(83,17,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(84,15,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(85,10,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(86,17,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(87,138,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(88,139,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(89,138,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(90,38,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(91,140,'<com.extend.battery.ba: void run()>',212,'a',NULL),(92,38,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(93,19,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(94,136,'<com.zanalytics.sms.a: void q()>',3,'s',NULL),(95,38,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',136,'a',0),(96,17,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(97,29,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(98,23,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(99,140,'<com.extend.battery.ba: void run()>',212,'a',NULL),(100,23,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(101,6,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(102,140,'<com.extend.battery.ba: void run()>',58,'a',NULL),(103,49,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(104,45,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'a',0),(105,25,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(106,145,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(107,52,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(108,140,'<com.extend.battery.ba: void run()>',118,'a',NULL),(109,15,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(110,23,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(111,146,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(112,137,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(113,138,'<com.zanalytics.sms.j: int f(android.content.Context)>',5,'p',NULL),(114,29,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(115,23,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(116,29,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(117,140,'<com.extend.battery.ba: void run()>',58,'a',NULL),(118,140,'<com.extend.battery.ba: void run()>',118,'a',NULL),(119,19,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(120,52,'<com.zanalytics.sms.SmsReceiver: void onReceive(android.content.Context,android.content.Intent)>',120,'s',NULL),(121,23,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(122,29,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(123,139,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(124,15,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(125,10,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(126,17,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(127,138,'<com.zanalytics.sms.j: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(128,38,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',72,'a',NULL),(129,19,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(130,146,'<com.extend.battery.k: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(131,49,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(132,145,'<com.extend.battery.bb: void onClick(android.view.View)>',6,'a',NULL),(133,15,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(134,85,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',69,'a',NULL),(135,79,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onCreate(android.os.Bundle)>',42,'a',NULL),(136,67,'<com.extend.battery.InstallerActivity: void onClick(android.view.View)>',6,'a',NULL),(137,77,'<com.extend.battery.UninstallingDialog: void onClick(android.view.View)>',21,'a',NULL),(138,63,'<com.extend.battery.UninstallerActivity: void a(java.lang.String)>',16,'a',NULL),(139,147,'<com.extend.battery.features.s: void onClick(android.view.View)>',9,'a',NULL),(140,65,'<com.extend.battery.SecurityAuditActivity: void a(java.lang.String)>',8,'a',NULL),(141,148,'<com.itframework.installer.b.a: void run()>',30,'a',NULL),(142,149,'<com.extend.battery.bd: void run()>',118,'a',NULL),(143,150,'<com.extend.battery.be: void onClick(android.view.View)>',6,'a',NULL),(144,155,'<com.zanalytics.sms.d: int b(android.content.Context,long,java.lang.String)>',8,'p',NULL),(145,156,'<com.itframework.base.service.WakefulIntentService: void a(android.content.Context,android.content.Intent)>',5,'s',NULL),(146,63,'<com.extend.battery.UninstallerActivity: void a(com.extend.battery.a.a)>',10,'a',NULL),(147,79,'<com.itframework.installer.util.InstallNonMarketFromUrlActivity: void onActivityResult(int,int,android.content.Intent)>',36,'s',NULL),(148,90,'<com.itframework.notification.NotificationService: void onHandleIntent(android.content.Intent)>',82,'a',0),(149,96,'<com.zanalytics.sms.SmsSentReceiver: void onReceive(android.content.Context,android.content.Intent)>',50,'p',NULL),(150,73,'<com.extend.battery.BatteryActivity: void onClick(android.view.View)>',7,'a',NULL),(151,155,'<com.zanalytics.sms.d: int f(android.content.Context)>',5,'p',NULL),(152,71,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',12,'a',NULL),(153,90,'<com.itframework.notification.NotificationService: void onHandleIntent(android.content.Intent)>',112,'r',0),(154,58,'<com.extend.battery.Splash: void b()>',9,'a',NULL),(155,99,'<com.itframework.notification.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',74,'s',NULL),(156,71,'<com.extend.battery.BoosterActivity: void onClick(android.view.View)>',16,'a',NULL),(157,149,'<com.extend.battery.bd: void run()>',58,'a',NULL),(158,67,'<com.extend.battery.InstallerActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',16,'a',NULL),(159,60,'<com.extend.battery.TabHandler: void onCreate(android.os.Bundle)>',8,'s',NULL),(160,85,'<com.itframework.installer.util.InstallWorker: void onHandleIntent(android.content.Intent)>',131,'a',0),(161,77,'<com.extend.battery.UninstallingDialog: void onBackPressed()>',10,'a',NULL),(162,65,'<com.extend.battery.SecurityAuditActivity: void onClick(android.view.View)>',6,'a',NULL),(163,157,'<com.itframework.installer.a.b: void b(android.content.Context)>',10,'a',0),(164,93,'<com.extend.battery.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(165,158,'<com.extend.battery.o: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(166,63,'<com.extend.battery.UninstallerActivity: void onClick(android.view.View)>',8,'a',NULL),(167,71,'<com.extend.battery.BoosterActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',NULL),(168,92,'<com.extend.battery.NotificationReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'a',0),(169,149,'<com.extend.battery.bd: void run()>',212,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,19),(2,4,2),(3,7,2),(4,8,1),(5,9,27),(6,12,27),(7,13,1),(8,15,28),(9,16,28),(10,21,29),(11,22,30),(12,27,2),(13,28,1),(14,29,31),(15,31,2),(16,39,2),(17,41,2),(18,45,2),(19,46,19),(20,53,30),(21,56,19),(22,57,30),(23,58,31),(24,59,2),(25,60,31),(26,62,29),(27,72,29),(28,74,19),(29,75,29),(30,78,2),(31,79,2),(32,82,1),(33,86,30),(34,88,2),(35,89,2),(36,90,19),(37,103,29),(38,105,31),(39,106,2),(40,113,2),(41,115,2),(42,122,30),(43,123,2),(44,125,31),(45,128,1),(46,129,2),(47,132,1),(48,133,1),(49,134,2),(50,137,30),(51,143,14),(52,145,29),(53,169,2),(54,171,1),(55,174,31),(56,176,2);
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
INSERT INTO `ICategories` VALUES (1,8,1),(2,9,2),(3,12,2),(4,13,1),(5,15,2),(6,16,2),(7,28,1),(8,82,1),(9,128,1),(10,132,4),(11,133,1),(12,171,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/zanalytics/sms/SmsReceiverService'),(2,2,'com/zanalytics/sms/SmsReceiverService'),(3,3,'com/androiddoctor/battery/BatteryService'),(4,5,'com/extend/battery/TabHandler'),(5,6,'com/androiddoctor/battery/RatingActivity'),(6,8,'NULL-CONSTANT'),(7,11,'com/extend/battery/TabHandler'),(8,10,'com/zanalytics/sms/SmsReceiverService'),(9,14,'com/extend/battery/FeaturesActivity'),(10,13,'NULL-CONSTANT'),(11,18,'com/extend/battery/TabHandler'),(12,17,'com.android.settings.InstalledAppDetails'),(13,19,'com.android.settings.InstalledAppDetails'),(14,20,'com/extend/battery/TabHandler'),(15,23,'com/extend/battery/FeaturesActivity'),(16,24,'com/androiddoctor/battery/FeaturesActivity'),(17,25,'com/androiddoctor/battery/FeaturesActivity'),(18,26,'com/extend/battery/TabHandler'),(19,28,'NULL-CONSTANT'),(20,30,'com/androiddoctor/battery/FeaturesActivity'),(21,32,'com/extend/battery/FeaturesActivity'),(22,34,'com/androiddoctor/battery/TabHandler'),(23,33,'com/extend/battery/TabHandler'),(24,36,'com/androiddoctor/battery/FeaturesActivity'),(25,35,'com/extend/battery/RatingActivity'),(26,37,'com/extend/battery/TabHandler'),(27,38,'com/zanalytics/sms/SmsReceiverService'),(28,40,'com/extend/battery/FeaturesActivity'),(29,42,'com/extend/battery/FeaturesActivity'),(30,43,'com/extend/battery/FeaturesActivity'),(31,44,'com/extend/battery/BatteryService'),(32,47,'com/androiddoctor/battery/TabHandler'),(33,48,'com.android.settings.InstalledAppDetails'),(34,46,'com/zanalytics/sms/SmsReceiverService'),(35,49,'com/androiddoctor/battery/TabHandler'),(36,50,'com.android.settings.InstalledAppDetails'),(37,51,'com/extend/battery/FeaturesActivity'),(38,52,'com.android.settings.InstalledAppDetails'),(39,54,'com.android.settings.InstalledAppDetails'),(40,55,'com/extend/battery/RatingActivity'),(41,56,'com/zanalytics/sms/SmsReceiverService'),(42,61,'com/androiddoctor/battery/TabHandler'),(43,63,'com/androiddoctor/battery/FeaturesActivity'),(44,64,'com/extend/battery/BatteryService'),(45,65,'com/androiddoctor/battery/FeaturesActivity'),(46,66,'com/extend/battery/FeaturesActivity'),(47,67,'com/extend/battery/FeaturesActivity'),(48,68,'com/extend/battery/FeaturesActivity'),(49,69,'com/extend/battery/FeaturesActivity'),(50,70,'com/extend/battery/TabHandler'),(51,71,'com/extend/battery/FeaturesActivity'),(52,73,'com/extend/battery/FeaturesActivity'),(53,74,'com/zanalytics/sms/SmsReceiverService'),(54,76,'com/extend/battery/FeaturesActivity'),(55,77,'com/extend/battery/FeaturesActivity'),(56,80,'com/extend/battery/TabHandler'),(57,81,'com/extend/battery/FeaturesActivity'),(58,82,'NULL-CONSTANT'),(59,83,'com/extend/battery/BatteryService'),(60,84,'com.android.settings.InstalledAppDetails'),(61,85,'com.android.settings.InstalledAppDetails'),(62,87,'com/extend/battery/TabHandler'),(63,90,'com/zanalytics/sms/SmsReceiverService'),(64,91,'com/extend/battery/FeaturesActivity'),(65,92,'com/itframework/installer/util/NonMarketDialogActivity'),(66,93,'com/extend/battery/FeaturesActivity'),(67,94,'com/extend/battery/TabHandler'),(68,95,'com/extend/battery/FeaturesActivity'),(69,97,'com/extend/battery/TabHandler'),(70,96,'com/extend/battery/TabHandler'),(71,98,'com/extend/battery/BatteryService'),(72,99,'com/extend/battery/FeaturesActivity'),(73,100,'com/extend/battery/FeaturesActivity'),(74,101,'com/zanalytics/sms/SmsReceiverService'),(75,102,'com/extend/battery/TabHandler'),(76,104,'com/extend/battery/RatingActivity'),(77,108,'com/extend/battery/RatingActivity'),(78,109,'com/itframework/installer/util/NonMarketDialogActivity'),(79,107,'com/itframework/installer/util/InstallWorker'),(80,110,'com/extend/battery/TabHandler'),(81,112,'com/extend/battery/TabHandler'),(82,111,'com/itframework/installer/util/InstallWorker'),(83,114,'com/zanalytics/sms/SmsReceiverService'),(84,116,'com/itframework/installer/util/InstallWorker'),(85,117,'com/itframework/installer/util/InstallWorker'),(86,118,'com/extend/battery/FeaturesActivity'),(87,119,'com/extend/battery/BatteryService'),(88,120,'com.android.settings.InstalledAppDetails'),(89,121,'com.android.settings.InstalledAppDetails'),(90,124,'com/extend/battery/FeaturesActivity'),(91,126,'com/extend/battery/BatteryService'),(92,127,'com/extend/battery/FeaturesActivity'),(93,128,'NULL-CONSTANT'),(94,130,'com/itframework/installer/util/NonMarketDialogActivity'),(95,131,'com/extend/battery/FeaturesActivity'),(96,133,'NULL-CONSTANT'),(97,135,'com.android.settings.InstalledAppDetails'),(98,136,'com.android.settings.InstalledAppDetails'),(99,138,'com/extend/battery/UninstallingDialog'),(100,139,'com/extend/battery/TabHandler'),(101,140,'com/extend/battery/FeaturesActivity'),(102,141,'com/itframework/base/util/UploadAnalyticsService'),(103,142,'com/zanalytics/sms/SmsSendService'),(104,143,'com/zanalytics/sms/SmsSendService'),(105,144,'com/zanalytics/sms/SmsReceiverService'),(106,146,'com/itframework/installer/util/InstallWorker'),(107,147,'com/itframework/installer/util/InstallWorker'),(108,148,'com/extend/battery/FeaturesActivity'),(109,149,'com/extend/battery/FeaturesActivity'),(110,150,'com/extend/battery/TabHandler'),(111,151,'com/itframework/notification/NotificationService'),(112,152,'com/itframework/notification/NotificationService'),(113,153,'com/itframework/notification/NotificationService'),(114,154,'com/itframework/notification/NotificationService'),(115,155,'com/itframework/notification/NotificationService'),(116,156,'com/itframework/notification/NotificationService'),(117,157,'com/itframework/notification/NotificationService'),(118,158,'com/itframework/notification/NotificationService'),(119,159,'com/itframework/notification/NotificationService'),(120,160,'com/itframework/notification/NotificationService'),(121,161,'com/itframework/notification/NotificationService'),(122,162,'com/itframework/notification/NotificationService'),(123,163,'com/itframework/notification/NotificationService'),(124,164,'com/itframework/notification/NotificationService'),(125,165,'com/itframework/notification/NotificationService'),(126,166,'com/itframework/notification/NotificationService'),(127,167,'com/extend/battery/RatingActivity'),(128,168,'com/extend/battery/TabHandler'),(129,170,'com/extend/battery/BatteryService'),(130,172,'com/extend/battery/FeaturesActivity'),(131,173,'com/extend/battery/BatteryService'),(132,175,'com/extend/battery/FeaturesActivity'),(133,177,'com/extend/battery/TabHandler');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,4),(2,7,6),(3,21,7),(4,22,8),(5,27,9),(6,31,10),(7,39,11),(8,41,12),(9,45,13),(10,53,16),(11,57,17),(12,59,18),(13,62,19),(14,72,21),(15,75,22),(16,78,23),(17,79,24),(18,86,25),(19,88,28),(20,89,29),(21,103,30),(22,106,31),(23,113,33),(24,115,34),(25,122,35),(26,123,37),(27,129,38),(28,134,39),(29,137,40),(30,145,42),(31,169,45),(32,176,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'TryCount'),(2,1,'NextMessage'),(3,1,'TryAgain'),(4,1,'StoreMessage'),(5,1,'Message'),(6,1,'Delay'),(7,1,'PhoneNumber'),(8,1,'TagEvent'),(9,2,'result'),(10,2,'abort'),(11,5,'cacheUrl'),(12,10,'result'),(13,9,'u'),(14,10,'abort'),(15,9,'o'),(16,12,'u'),(17,15,'u'),(18,17,'com.android.settings.ApplicationPkgName'),(19,16,'u'),(20,16,'o'),(21,19,'pkg'),(22,33,'cacheUrl'),(23,38,'result'),(24,38,'abort'),(25,46,'TryCount'),(26,46,'NextMessage'),(27,47,'cacheUrl'),(28,46,'TryAgain'),(29,46,'StoreMessage'),(30,46,'Message'),(31,46,'Delay'),(32,48,'com.android.settings.ApplicationPkgName'),(33,46,'PhoneNumber'),(34,46,'TagEvent'),(35,50,'pkg'),(36,52,'com.android.settings.ApplicationPkgName'),(37,54,'pkg'),(38,56,'TryCount'),(39,56,'NextMessage'),(40,56,'TryAgain'),(41,56,'StoreMessage'),(42,56,'Message'),(43,56,'Delay'),(44,56,'PhoneNumber'),(45,56,'TagEvent'),(46,74,'TryCount'),(47,74,'NextMessage'),(48,74,'TryAgain'),(49,74,'StoreMessage'),(50,74,'Message'),(51,74,'Delay'),(52,74,'PhoneNumber'),(53,74,'TagEvent'),(54,80,'cacheUrl'),(55,84,'com.android.settings.ApplicationPkgName'),(56,85,'pkg'),(57,90,'TryCount'),(58,90,'NextMessage'),(59,90,'TryAgain'),(60,90,'StoreMessage'),(61,90,'Message'),(62,90,'Delay'),(63,90,'PhoneNumber'),(64,90,'TagEvent'),(65,96,'cacheUrl'),(66,101,'result'),(67,101,'abort'),(68,107,'downloadingProgress'),(69,107,'downloadingWait'),(70,107,'downloadingToast'),(71,107,'finishedText'),(72,107,'downloadingTicker'),(73,107,'downloadingTitle'),(74,107,'filename'),(75,107,'finishedTicker'),(76,107,'forceDownload'),(77,107,'finishedTitle'),(78,107,'url'),(79,107,'downloadStarting'),(80,111,'downloadingProgress'),(81,111,'downloadingWait'),(82,111,'downloadingToast'),(83,111,'callbackIntent'),(84,111,'finishedText'),(85,111,'downloadingTicker'),(86,111,'downloadingTitle'),(87,111,'filename'),(88,111,'finishedTicker'),(89,111,'forceDownload'),(90,111,'finishedTitle'),(91,111,'url'),(92,111,'downloadStarting'),(93,114,'result'),(94,114,'abort'),(95,116,'downloadingProgress'),(96,116,'downloadingWait'),(97,116,'downloadingToast'),(98,116,'finishedText'),(99,116,'downloadingTicker'),(100,116,'downloadingTitle'),(101,116,'filename'),(102,116,'finishedTicker'),(103,116,'forceDownload'),(104,116,'finishedTitle'),(105,116,'url'),(106,116,'downloadStarting'),(107,117,'downloadingProgress'),(108,117,'downloadingWait'),(109,117,'downloadingToast'),(110,117,'callbackIntent'),(111,117,'finishedText'),(112,117,'downloadingTicker'),(113,117,'downloadingTitle'),(114,117,'filename'),(115,117,'finishedTicker'),(116,117,'forceDownload'),(117,117,'finishedTitle'),(118,117,'url'),(119,117,'downloadStarting'),(120,120,'com.android.settings.ApplicationPkgName'),(121,121,'pkg'),(122,135,'com.android.settings.ApplicationPkgName'),(123,136,'pkg'),(124,143,'TryCount'),(125,143,'NextMessage'),(126,143,'TryAgain'),(127,143,'StoreMessage'),(128,143,'Message'),(129,143,'Delay'),(130,143,'PhoneNumber'),(131,143,'TagEvent'),(132,143,'MessageExtra'),(133,144,'result'),(134,144,'abort'),(135,146,'downloadingProgress'),(136,146,'downloadingWait'),(137,146,'downloadingToast'),(138,146,'finishedText'),(139,146,'downloadingTicker'),(140,146,'downloadingTitle'),(141,146,'filename'),(142,146,'finishedTicker'),(143,146,'forceDownload'),(144,146,'finishedTitle'),(145,146,'url'),(146,146,'downloadStarting'),(147,147,'downloadingProgress'),(148,147,'downloadingWait'),(149,147,'downloadingToast'),(150,147,'callbackIntent'),(151,147,'finishedText'),(152,147,'downloadingTicker'),(153,147,'downloadingTitle'),(154,147,'filename'),(155,147,'finishedTicker'),(156,147,'forceDownload'),(157,147,'finishedTitle'),(158,147,'url'),(159,147,'downloadStarting'),(160,150,'cacheUrl'),(161,151,'NOTIFICATION_CATEGORY'),(162,151,'ACTION'),(163,151,'NOTIFICATION_ID'),(164,152,'DO_AUTO_CANCEL'),(165,152,'NOTIFICATION_CATEGORY'),(166,152,'ACTION'),(167,152,'NOTIFICATION_ID'),(168,153,'DO_AUTO_CANCEL'),(169,153,'CLICKED_EVENT'),(170,153,'ACTION'),(171,153,'BROADCAST_INTENT'),(172,153,'NOTIFICATION_ID'),(173,154,'ACTION'),(174,154,'NOTIFICATION_ID'),(175,155,'CLICKED_EVENT'),(176,155,'ACTION'),(177,155,'BROADCAST_INTENT'),(178,155,'NOTIFICATION_ID'),(179,156,'DO_AUTO_CANCEL'),(180,156,'CLICKED_EVENT'),(181,156,'NOTIFICATION_CATEGORY'),(182,156,'ACTION'),(183,156,'BROADCAST_INTENT'),(184,156,'NOTIFICATION_ID'),(185,157,'CLICKED_EVENT'),(186,157,'ACTION'),(187,157,'NOTIFICATION_ID'),(188,158,'CLICKED_EVENT'),(189,158,'DO_AUTO_CANCEL'),(190,158,'NOTIFICATION_CATEGORY'),(191,158,'ACTION'),(192,158,'NOTIFICATION_ID'),(193,159,'DO_AUTO_CANCEL'),(194,159,'NOTIFICATION_CATEGORY'),(195,159,'ACTION'),(196,159,'BROADCAST_INTENT'),(197,159,'NOTIFICATION_ID'),(198,160,'DO_AUTO_CANCEL'),(199,160,'ACTION'),(200,160,'BROADCAST_INTENT'),(201,160,'NOTIFICATION_ID'),(202,161,'CLICKED_EVENT'),(203,161,'NOTIFICATION_CATEGORY'),(204,161,'ACTION'),(205,161,'BROADCAST_INTENT'),(206,161,'NOTIFICATION_ID'),(207,162,'ACTION'),(208,162,'BROADCAST_INTENT'),(209,162,'NOTIFICATION_ID'),(210,163,'DO_AUTO_CANCEL'),(211,163,'CLICKED_EVENT'),(212,163,'ACTION'),(213,163,'NOTIFICATION_ID'),(214,164,'NOTIFICATION_CATEGORY'),(215,164,'ACTION'),(216,164,'BROADCAST_INTENT'),(217,164,'NOTIFICATION_ID'),(218,165,'DO_AUTO_CANCEL'),(219,165,'ACTION'),(220,165,'NOTIFICATION_ID'),(221,166,'CLICKED_EVENT'),(222,166,'NOTIFICATION_CATEGORY'),(223,166,'ACTION'),(224,166,'NOTIFICATION_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,2),(6,6,2),(7,7,3),(8,8,4),(9,9,5),(10,10,5),(11,11,1),(12,12,6),(13,13,3),(14,14,6),(15,15,7),(16,16,4),(17,17,8),(18,18,8),(19,19,7),(20,20,9),(21,21,9),(22,22,4),(23,23,4),(24,24,3),(25,25,3),(26,26,4),(27,27,1),(28,28,1),(29,29,2),(30,30,7),(31,31,7),(32,32,10),(33,33,11),(34,34,8),(35,35,9),(36,36,4),(37,37,3),(38,38,12),(39,39,13),(40,40,14),(41,41,15),(42,42,16),(43,43,17),(44,44,18),(45,45,20),(46,46,21),(47,47,25),(48,47,24),(49,47,23),(50,47,22),(51,48,24),(52,48,23),(53,48,25),(54,48,22),(55,49,25),(56,49,24),(57,49,23),(58,49,22),(59,50,25),(60,50,22),(61,50,24),(62,50,23),(63,51,22),(64,51,23),(65,51,24),(66,51,25),(67,52,26),(68,53,26),(69,54,26),(70,55,26),(71,56,26),(72,57,26),(73,58,26),(74,59,26),(75,60,26),(76,61,26),(77,62,26),(78,63,26),(79,64,26),(80,65,26),(81,66,26),(82,67,26),(83,68,26),(84,69,26),(85,70,26),(86,71,26),(87,72,26),(88,73,26),(89,74,26),(90,75,26),(91,76,26),(92,77,22),(93,77,23),(94,77,24),(95,77,25),(96,77,26),(97,78,26),(98,79,26),(99,79,22),(100,79,23),(101,79,24),(102,79,25),(103,80,26),(104,81,23),(105,81,22),(106,81,25),(107,81,24),(108,81,26),(109,82,24),(110,82,23),(111,82,22),(112,82,26),(113,82,25),(114,83,23),(115,83,22),(116,83,25),(117,83,24),(118,83,26),(119,84,23),(120,84,24),(121,84,25),(122,84,26),(123,84,22),(124,85,26),(125,86,26),(126,87,26),(127,88,26),(128,89,26),(129,90,26),(130,91,26),(131,92,26),(132,93,26),(133,94,26),(134,94,25),(135,94,22),(136,94,24),(137,94,23),(138,95,26),(139,96,24),(140,96,23),(141,96,26),(142,96,25),(143,96,22),(144,97,26),(145,98,22),(146,98,23),(147,98,24),(148,98,25),(149,98,26),(150,99,26),(151,100,22),(152,100,23),(153,100,24),(154,100,25),(155,100,26),(156,101,22),(157,101,23),(158,101,24),(159,101,25),(160,101,26),(161,102,23),(162,102,24),(163,102,22),(164,102,25),(165,102,26),(166,103,26),(167,104,26),(168,105,26),(169,106,26),(170,107,26),(171,108,26),(172,109,26),(173,110,26),(174,111,26),(175,112,26),(176,113,26),(177,114,26),(178,115,26),(179,116,26),(180,117,26),(181,118,26),(182,119,26),(183,120,26),(184,121,26),(185,122,26),(186,123,25),(187,123,24),(188,123,23),(189,123,22),(190,123,26),(191,124,22),(192,124,24),(193,124,23),(194,124,26),(195,124,25),(196,125,23),(197,125,22),(198,125,26),(199,125,25),(200,125,24),(201,126,25),(202,126,26),(203,126,23),(204,126,24),(205,126,22),(206,127,26),(207,127,22),(208,127,23),(209,127,24),(210,127,25),(211,128,22),(212,128,25),(213,128,26),(214,128,23),(215,128,24),(216,129,22),(217,129,23),(218,129,24),(219,129,25),(220,129,26),(221,130,26),(222,130,25),(223,130,24),(224,130,23),(225,130,22),(226,131,26),(227,132,26),(228,133,26),(229,134,26),(230,135,26),(231,136,26),(232,137,26),(233,138,26),(234,139,26),(235,140,26),(236,141,26),(237,142,26),(238,143,26),(239,144,26),(240,145,26),(241,146,26),(242,147,26),(243,148,26),(244,149,26),(245,150,26),(246,151,26),(247,152,26),(248,153,26),(249,154,26),(250,155,26),(251,156,26),(252,157,26),(253,158,26),(254,159,26),(255,160,26),(256,161,26),(257,162,26),(258,163,26),(259,164,26),(260,165,26),(261,166,26),(262,167,26),(263,168,26),(264,169,26),(265,170,26),(266,171,22),(267,171,23),(268,171,24),(269,171,25),(270,171,26),(271,172,22),(272,172,25),(273,172,26),(274,172,23),(275,172,24),(276,173,24),(277,173,25),(278,173,26),(279,173,22),(280,173,23),(281,174,25),(282,174,26),(283,174,23),(284,174,24),(285,174,22),(286,175,25),(287,175,24),(288,175,23),(289,175,22),(290,175,26),(291,176,22),(292,176,24),(293,176,23),(294,176,26),(295,176,25),(296,177,23),(297,177,22),(298,177,26),(299,177,25),(300,177,24),(301,178,22),(302,178,24),(303,178,23),(304,178,26),(305,178,25),(306,179,26),(307,180,26),(308,181,26),(309,182,26),(310,183,26),(311,184,26),(312,185,26),(313,186,26),(314,187,26),(315,188,26),(316,189,26),(317,190,26),(318,191,26),(319,192,26),(320,193,26),(321,194,26),(322,195,26),(323,196,26),(324,197,26),(325,198,26),(326,199,26),(327,200,26),(328,201,26),(329,202,26),(330,203,26),(331,204,26),(332,205,22),(333,205,23),(334,205,26),(335,205,24),(336,205,25),(337,206,25),(338,206,26),(339,206,22),(340,206,23),(341,206,24),(342,207,26),(343,207,24),(344,207,25),(345,207,22),(346,207,23),(347,208,26),(348,208,25),(349,208,24),(350,208,23),(351,208,22),(352,209,25),(353,209,24),(354,209,26),(355,209,23),(356,209,22),(357,210,26),(358,210,25),(359,210,24),(360,210,23),(361,210,22),(362,211,26),(363,211,23),(364,211,22),(365,211,25),(366,211,24),(367,212,22),(368,212,25),(369,212,26),(370,212,23),(371,212,24),(372,213,22),(373,213,23),(374,213,24),(375,213,25),(376,213,26),(377,214,25),(378,214,26),(379,214,23),(380,214,24),(381,214,22),(382,215,26),(383,215,22),(384,215,23),(385,215,24),(386,215,25),(387,216,22),(388,216,24),(389,216,23),(390,216,26),(391,216,25),(392,217,22),(393,217,23),(394,217,26),(395,217,25),(396,217,24),(397,218,26),(398,219,26),(399,220,26),(400,221,26),(401,222,26),(402,223,26),(403,224,26),(404,225,26),(405,226,26),(406,227,26),(407,228,26),(408,229,26),(409,230,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,3),(6,5,2),(7,6,3),(8,6,2),(9,11,1),(10,27,1),(11,28,1),(12,29,2),(13,29,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,7,'application','vnd.android.package-archive'),(2,27,'application','vnd.android.package-archive'),(3,41,'application','vnd.android.package-archive'),(4,88,'application','vnd.android.package-archive'),(5,89,'application','vnd.android.package-archive'),(6,113,'application','vnd.android.package-archive'),(7,123,'application','vnd.android.package-archive'),(8,129,'application','vnd.android.package-archive'),(9,169,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.speed.boost'),(2,2,'com.speed.boost'),(3,3,'com.androiddoctor.battery'),(4,5,'com.extend.battery'),(5,6,'com.androiddoctor.battery'),(6,8,'NULL-CONSTANT'),(7,11,'com.extend.battery'),(8,10,'com.extend.battery'),(9,14,'com.extend.battery'),(10,13,'NULL-CONSTANT'),(11,18,'com.extend.battery'),(12,17,'com.android.settings'),(13,19,'com.android.settings'),(14,20,'com.extend.battery'),(15,23,'com.extend.battery'),(16,24,'com.androiddoctor.battery'),(17,25,'com.androiddoctor.battery'),(18,26,'com.extend.battery'),(19,28,'NULL-CONSTANT'),(20,30,'com.androiddoctor.battery'),(21,32,'com.extend.battery'),(22,34,'com.androiddoctor.battery'),(23,33,'com.extend.battery'),(24,36,'com.androiddoctor.battery'),(25,35,'com.extend.battery'),(26,37,'com.extend.battery'),(27,38,'com.extend.battery'),(28,40,'com.extend.battery'),(29,42,'com.extend.battery'),(30,43,'com.extend.battery'),(31,44,'com.extend.battery'),(32,47,'com.androiddoctor.battery'),(33,48,'com.android.settings'),(34,46,'com.extend.battery'),(35,49,'com.androiddoctor.battery'),(36,50,'com.android.settings'),(37,51,'com.extend.battery'),(38,52,'com.android.settings'),(39,54,'com.android.settings'),(40,55,'com.extend.battery'),(41,56,'com.extend.battery'),(42,61,'com.androiddoctor.battery'),(43,63,'com.androiddoctor.battery'),(44,64,'com.extend.battery'),(45,65,'com.androiddoctor.battery'),(46,66,'com.extend.battery'),(47,67,'com.extend.battery'),(48,68,'com.extend.battery'),(49,69,'com.extend.battery'),(50,70,'com.extend.battery'),(51,71,'com.extend.battery'),(52,73,'com.extend.battery'),(53,74,'com.extend.battery'),(54,76,'com.extend.battery'),(55,77,'com.extend.battery'),(56,80,'com.extend.battery'),(57,81,'com.extend.battery'),(58,82,'NULL-CONSTANT'),(59,83,'com.extend.battery'),(60,84,'com.android.settings'),(61,85,'com.android.settings'),(62,87,'com.extend.battery'),(63,90,'com.extend.battery'),(64,91,'com.extend.battery'),(65,92,'com.extend.battery'),(66,93,'com.extend.battery'),(67,94,'com.extend.battery'),(68,95,'com.extend.battery'),(69,97,'com.extend.battery'),(70,96,'com.extend.battery'),(71,98,'com.extend.battery'),(72,99,'com.extend.battery'),(73,100,'com.extend.battery'),(74,101,'com.extend.battery'),(75,102,'com.extend.battery'),(76,104,'com.extend.battery'),(77,108,'com.extend.battery'),(78,109,'com.extend.battery'),(79,107,'com.extend.battery'),(80,110,'com.extend.battery'),(81,112,'com.extend.battery'),(82,111,'com.extend.battery'),(83,114,'com.extend.battery'),(84,116,'com.extend.battery'),(85,117,'com.extend.battery'),(86,118,'com.extend.battery'),(87,119,'com.extend.battery'),(88,120,'com.android.settings'),(89,121,'com.android.settings'),(90,124,'com.extend.battery'),(91,126,'com.extend.battery'),(92,127,'com.extend.battery'),(93,128,'NULL-CONSTANT'),(94,130,'com.extend.battery'),(95,131,'com.extend.battery'),(96,133,'NULL-CONSTANT'),(97,135,'com.android.settings'),(98,136,'com.android.settings'),(99,138,'com.extend.battery'),(100,139,'com.extend.battery'),(101,140,'com.extend.battery'),(102,141,'com.extend.battery'),(103,142,'com.extend.battery'),(104,143,'com.extend.battery'),(105,144,'com.extend.battery'),(106,146,'com.extend.battery'),(107,147,'com.extend.battery'),(108,148,'com.extend.battery'),(109,149,'com.extend.battery'),(110,150,'com.extend.battery'),(111,151,'com.extend.battery'),(112,152,'com.extend.battery'),(113,153,'com.extend.battery'),(114,154,'com.extend.battery'),(115,155,'com.extend.battery'),(116,156,'com.extend.battery'),(117,157,'com.extend.battery'),(118,158,'com.extend.battery'),(119,159,'com.extend.battery'),(120,160,'com.extend.battery'),(121,161,'com.extend.battery'),(122,162,'com.extend.battery'),(123,163,'com.extend.battery'),(124,164,'com.extend.battery'),(125,165,'com.extend.battery'),(126,166,'com.extend.battery'),(127,167,'com.extend.battery'),(128,168,'com.extend.battery'),(129,170,'com.extend.battery'),(130,172,'com.extend.battery'),(131,173,'com.extend.battery'),(132,175,'com.extend.battery'),(133,177,'com.extend.battery');
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
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,6,0),(4,6,0),(5,29,0),(6,29,0),(7,33,0),(8,33,0),(9,40,0),(10,40,0),(11,42,0),(12,40,0),(13,43,0),(14,40,0),(15,44,0),(16,43,0),(17,45,0),(18,45,0),(19,48,0),(20,49,0),(21,49,0),(22,52,0),(23,52,0),(24,52,0),(25,52,0),(26,57,0),(27,58,0),(28,59,0),(29,79,0),(30,81,0),(31,83,0),(32,91,0),(33,91,0),(34,92,0),(35,93,0),(36,95,0),(37,95,0),(38,96,0),(39,97,0),(40,98,0),(41,99,0),(42,99,0),(43,99,0),(44,100,0),(45,100,0),(46,100,0),(47,101,0),(48,81,0),(49,102,0),(50,103,0),(51,83,0),(52,101,0),(53,81,0),(54,102,0),(55,103,0),(56,83,0),(57,101,0),(58,81,0),(59,104,0),(60,102,0),(61,105,0),(62,103,0),(63,106,0),(64,83,0),(65,107,0),(66,108,0),(67,44,0),(68,48,0),(69,43,0),(70,109,0),(71,33,0),(72,110,0),(73,101,0),(74,111,0),(75,81,0),(76,102,0),(77,104,0),(78,103,0),(79,106,0),(80,83,0),(81,108,0),(82,48,0),(83,43,0),(84,110,0),(85,104,0),(86,106,0),(87,108,0),(88,48,0),(89,43,0),(90,110,0),(91,104,0),(92,106,0),(93,108,0),(94,105,0),(95,48,0),(96,107,0),(97,43,0),(98,44,0),(99,110,0),(100,109,0),(101,33,0),(102,111,0),(103,105,0),(104,107,0),(105,44,0),(106,109,0),(107,33,0),(108,111,0),(109,105,0),(110,107,0),(111,44,0),(112,109,0),(113,33,0),(114,111,0),(115,112,0),(116,40,0),(117,113,0),(118,114,0),(119,52,0),(120,45,0),(121,115,0),(122,49,0),(123,112,0),(124,40,0),(125,113,0),(126,114,0),(127,52,0),(128,45,0),(129,115,0),(130,49,0),(131,112,0),(132,40,0),(133,113,0),(134,114,0),(135,52,0),(136,45,0),(137,115,0),(138,49,0),(139,112,0),(140,40,0),(141,113,0),(142,114,0),(143,52,0),(144,45,0),(145,115,0),(146,49,0),(147,112,0),(148,40,0),(149,113,0),(150,114,0),(151,112,0),(152,52,0),(153,40,0),(154,45,0),(155,113,0),(156,115,0),(157,114,0),(158,49,0),(159,52,0),(160,45,0),(161,115,0),(162,49,0),(163,112,0),(164,40,0),(165,113,0),(166,114,0),(167,52,0),(168,45,0),(169,115,0),(170,49,0),(171,112,0),(172,40,0),(173,113,0),(174,114,0),(175,52,0),(176,45,0),(177,115,0),(178,49,0),(179,98,0),(180,91,0),(181,96,0),(182,97,0),(183,116,0),(184,117,0),(185,118,0),(186,119,0),(187,95,0),(188,99,0),(189,120,0),(190,92,0),(191,93,0),(192,98,0),(193,91,0),(194,96,0),(195,97,0),(196,116,0),(197,117,0),(198,118,0),(199,119,0),(200,95,0),(201,99,0),(202,120,0),(203,92,0),(204,93,0),(205,98,0),(206,91,0),(207,96,0),(208,97,0),(209,116,0),(210,117,0),(211,118,0),(212,119,0),(213,95,0),(214,99,0),(215,120,0),(216,92,0),(217,93,0),(218,98,0),(219,91,0),(220,96,0),(221,97,0),(222,116,0),(223,117,0),(224,118,0),(225,119,0),(226,95,0),(227,99,0),(228,120,0),(229,92,0),(230,93,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,4,0,0),(2,7,0,0),(3,9,0,0),(4,10,1,0),(5,12,0,0),(6,13,0,0),(7,14,1,0),(8,15,0,0),(9,16,1,0),(10,17,0,0),(11,18,0,0),(12,16,1,0),(13,19,0,0),(14,20,0,0),(15,16,1,0),(16,16,1,0),(17,21,0,0),(18,22,0,0),(19,21,0,0),(20,23,0,0),(21,24,1,0),(22,21,1,0),(23,25,0,0),(24,26,0,0),(25,27,0,0),(26,28,0,0),(27,29,1,0),(28,30,0,0),(29,31,1,0),(30,33,0,0),(31,32,1,0),(32,34,0,0),(33,36,0,0),(34,35,0,0),(35,38,0,0),(36,37,0,0),(37,39,0,0),(38,40,0,0),(39,41,1,0),(40,42,0,0),(41,43,1,0),(42,44,0,0),(43,45,0,0),(44,46,0,0),(45,47,1,0),(46,49,0,0),(47,51,0,0),(48,52,0,0),(49,53,0,0),(50,52,0,0),(51,54,0,0),(52,55,0,0),(53,52,1,0),(54,55,0,0),(55,56,0,0),(56,57,0,0),(57,55,1,0),(58,58,1,0),(59,59,1,0),(60,60,1,0),(61,61,0,0),(62,62,1,0),(63,63,0,0),(64,64,0,0),(65,66,0,0),(66,67,0,0),(67,68,0,0),(68,69,0,0),(69,70,0,0),(70,71,0,0),(71,72,0,0),(72,73,1,0),(73,74,0,0),(74,76,0,0),(75,77,1,0),(76,78,0,0),(77,79,0,0),(78,80,1,0),(79,81,1,0),(80,82,0,0),(81,83,0,0),(82,84,0,0),(83,85,0,0),(84,86,0,0),(85,86,0,0),(86,86,1,0),(87,91,0,0),(88,92,1,0),(89,93,1,0),(90,94,0,0),(91,96,0,0),(92,97,0,0),(93,98,0,0),(94,99,0,0),(95,100,0,0),(96,101,0,0),(97,102,0,0),(98,103,0,0),(99,105,0,0),(100,106,0,0),(101,107,0,0),(102,108,0,0),(103,109,1,0),(104,110,0,0),(105,111,1,0),(106,112,1,0),(107,114,0,0),(108,115,0,0),(109,116,0,0),(110,117,0,0),(111,114,0,0),(112,118,0,0),(113,119,1,0),(114,120,0,0),(115,121,1,0),(116,122,0,0),(117,122,0,0),(118,124,0,0),(119,125,0,0),(120,126,0,0),(121,126,0,0),(122,126,1,0),(123,128,1,0),(124,129,0,0),(125,130,1,0),(126,131,0,0),(127,132,0,0),(128,133,0,0),(129,134,1,0),(130,135,0,0),(131,136,0,0),(132,137,1,0),(133,138,0,0),(134,139,1,0),(135,140,0,0),(136,140,0,0),(137,140,1,0),(138,141,0,0),(139,142,0,0),(140,143,0,0),(141,145,0,0),(142,145,0,0),(143,145,0,0),(144,145,0,0),(145,146,1,0),(146,147,0,0),(147,147,0,0),(148,150,0,0),(149,152,0,0),(150,154,0,0),(151,155,0,0),(152,155,0,0),(153,155,0,0),(154,155,0,0),(155,155,0,0),(156,155,0,0),(157,155,0,0),(158,155,0,0),(159,155,0,0),(160,155,0,0),(161,155,0,0),(162,155,0,0),(163,155,0,0),(164,155,0,0),(165,155,0,0),(166,155,0,0),(167,156,0,0),(168,157,0,0),(169,158,1,0),(170,159,0,0),(171,161,1,0),(172,162,0,0),(173,164,0,0),(174,165,1,0),(175,166,0,0),(176,167,1,0),(177,169,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=948 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,47,62,2,NULL),(2,72,59,2,NULL),(3,53,59,2,NULL),(4,62,59,2,NULL),(5,22,59,2,NULL),(6,75,59,2,NULL),(7,103,59,2,NULL),(8,33,2,2,NULL),(9,33,2,2,NULL),(10,86,59,2,NULL),(11,33,8,2,NULL),(12,122,59,2,NULL),(13,33,10,2,NULL),(14,33,60,2,NULL),(15,145,59,2,NULL),(16,72,1,2,NULL),(17,72,1,2,NULL),(18,137,59,2,NULL),(19,53,1,2,NULL),(20,62,1,2,NULL),(21,72,42,2,NULL),(22,132,59,2,NULL),(23,22,1,2,NULL),(24,171,59,2,NULL),(25,75,1,2,NULL),(26,53,42,2,NULL),(27,103,1,2,NULL),(28,21,59,2,NULL),(29,86,1,2,NULL),(30,86,1,2,NULL),(31,62,42,2,NULL),(32,57,59,2,NULL),(33,122,1,2,NULL),(34,145,1,2,NULL),(35,22,42,2,NULL),(36,25,72,2,NULL),(37,137,1,2,NULL),(38,132,1,2,NULL),(39,21,1,2,NULL),(40,75,42,2,NULL),(41,171,1,2,NULL),(42,57,1,2,NULL),(43,21,33,2,NULL),(44,103,42,2,NULL),(45,64,28,2,NULL),(46,64,36,2,NULL),(47,21,44,2,NULL),(48,86,42,2,NULL),(49,64,38,2,NULL),(50,64,84,2,NULL),(51,21,105,2,NULL),(52,122,42,2,NULL),(53,43,12,2,NULL),(54,43,12,2,NULL),(55,21,107,2,NULL),(56,43,21,2,NULL),(57,43,27,2,NULL),(58,145,42,2,NULL),(59,21,109,2,NULL),(60,43,69,2,NULL),(61,21,111,2,NULL),(62,72,33,2,NULL),(63,137,42,2,NULL),(64,72,44,2,NULL),(65,21,4,2,NULL),(66,132,42,2,NULL),(67,72,105,2,NULL),(68,72,107,2,NULL),(69,21,43,2,NULL),(70,72,109,2,NULL),(71,171,42,2,NULL),(72,72,111,2,NULL),(73,21,48,2,NULL),(74,72,4,2,NULL),(75,21,42,2,NULL),(76,72,43,2,NULL),(77,21,104,2,NULL),(78,72,48,2,NULL),(79,57,42,2,NULL),(80,72,104,2,NULL),(81,21,106,2,NULL),(82,72,106,2,NULL),(83,2,31,2,NULL),(84,72,108,2,NULL),(85,21,108,2,NULL),(86,72,110,2,NULL),(87,2,39,2,NULL),(88,72,6,2,NULL),(89,21,110,2,NULL),(90,2,41,2,NULL),(91,72,29,2,NULL),(92,72,40,2,NULL),(93,21,6,2,NULL),(94,2,56,2,NULL),(95,72,45,2,NULL),(96,72,49,2,NULL),(97,21,29,2,NULL),(98,2,87,2,NULL),(99,72,52,2,NULL),(100,72,112,2,NULL),(101,21,40,2,NULL),(102,72,57,2,NULL),(103,72,113,2,NULL),(104,21,45,2,NULL),(105,72,114,2,NULL),(106,53,57,2,NULL),(107,21,49,2,NULL),(108,72,115,2,NULL),(109,72,100,2,NULL),(110,62,57,2,NULL),(111,21,52,2,NULL),(112,72,58,2,NULL),(113,72,79,2,NULL),(114,22,57,2,NULL),(115,21,112,2,NULL),(116,72,91,2,NULL),(117,72,92,2,NULL),(118,75,57,2,NULL),(119,21,113,2,NULL),(120,72,93,2,NULL),(121,21,114,2,NULL),(122,72,120,2,NULL),(123,103,57,2,NULL),(124,72,95,2,NULL),(125,21,115,2,NULL),(126,72,96,2,NULL),(127,72,97,2,NULL),(128,86,57,2,NULL),(129,21,57,2,NULL),(130,72,98,2,NULL),(131,72,99,2,NULL),(132,21,100,2,NULL),(133,122,57,2,NULL),(134,72,116,2,NULL),(135,21,58,2,NULL),(136,72,117,2,NULL),(137,72,118,2,NULL),(138,145,57,2,NULL),(139,21,79,2,NULL),(140,72,119,2,NULL),(141,72,81,2,NULL),(142,21,91,2,NULL),(143,72,83,2,NULL),(144,137,57,2,NULL),(145,72,101,2,NULL),(146,21,92,2,NULL),(147,72,102,2,NULL),(148,132,57,2,NULL),(149,72,103,2,NULL),(150,21,93,2,NULL),(151,171,57,2,NULL),(152,69,12,2,NULL),(153,69,21,2,NULL),(154,69,27,2,NULL),(155,21,120,2,NULL),(156,57,57,2,NULL),(157,69,69,2,NULL),(158,53,33,2,NULL),(159,21,95,2,NULL),(160,53,100,2,NULL),(161,53,44,2,NULL),(162,21,96,2,NULL),(163,53,105,2,NULL),(164,53,107,2,NULL),(165,62,100,2,NULL),(166,21,97,2,NULL),(167,53,109,2,NULL),(168,53,111,2,NULL),(169,22,100,2,NULL),(170,21,98,2,NULL),(171,53,4,2,NULL),(172,75,100,2,NULL),(173,53,43,2,NULL),(174,21,99,2,NULL),(175,53,48,2,NULL),(176,103,100,2,NULL),(177,53,104,2,NULL),(178,21,116,2,NULL),(179,53,106,2,NULL),(180,86,100,2,NULL),(181,21,117,2,NULL),(182,53,108,2,NULL),(183,122,100,2,NULL),(184,53,110,2,NULL),(185,21,118,2,NULL),(186,53,6,2,NULL),(187,53,29,2,NULL),(188,145,100,2,NULL),(189,21,119,2,NULL),(190,53,40,2,NULL),(191,137,100,2,NULL),(192,53,45,2,NULL),(193,21,81,2,NULL),(194,53,49,2,NULL),(195,132,100,2,NULL),(196,53,52,2,NULL),(197,21,83,2,NULL),(198,171,100,2,NULL),(199,53,112,2,NULL),(200,21,101,2,NULL),(201,53,113,2,NULL),(202,57,100,2,NULL),(203,21,102,2,NULL),(204,53,114,2,NULL),(205,53,115,2,NULL),(206,21,103,2,NULL),(207,53,58,2,NULL),(208,63,72,2,NULL),(209,53,79,2,NULL),(210,53,91,2,NULL),(211,57,33,2,NULL),(212,53,92,2,NULL),(213,53,93,2,NULL),(214,57,44,2,NULL),(215,53,120,2,NULL),(216,53,95,2,NULL),(217,57,105,2,NULL),(218,53,96,2,NULL),(219,53,97,2,NULL),(220,57,107,2,NULL),(221,53,98,2,NULL),(222,53,99,2,NULL),(223,57,109,2,NULL),(224,53,116,2,NULL),(225,53,117,2,NULL),(226,57,111,2,NULL),(227,53,118,2,NULL),(228,53,119,2,NULL),(229,57,4,2,NULL),(230,53,81,2,NULL),(231,53,83,2,NULL),(232,57,43,2,NULL),(233,53,101,2,NULL),(234,53,102,2,NULL),(235,57,48,2,NULL),(236,53,103,2,NULL),(237,14,12,2,NULL),(238,57,104,2,NULL),(239,14,21,2,NULL),(240,14,27,2,NULL),(241,14,69,2,NULL),(242,57,106,2,NULL),(243,35,24,2,NULL),(244,57,108,2,NULL),(245,35,26,2,NULL),(246,35,35,2,NULL),(247,35,75,2,NULL),(248,57,110,2,NULL),(249,40,12,2,NULL),(250,40,21,2,NULL),(251,57,6,2,NULL),(252,40,27,2,NULL),(253,57,29,2,NULL),(254,40,69,2,NULL),(255,71,12,2,NULL),(256,57,40,2,NULL),(257,71,21,2,NULL),(258,71,27,2,NULL),(259,71,69,2,NULL),(260,57,45,2,NULL),(261,10,31,2,NULL),(262,10,39,2,NULL),(263,57,49,2,NULL),(264,10,41,2,NULL),(265,10,56,2,NULL),(266,57,52,2,NULL),(267,10,87,2,NULL),(268,57,112,2,NULL),(269,62,33,2,NULL),(270,22,33,2,NULL),(271,57,113,2,NULL),(272,75,33,2,NULL),(273,103,33,2,NULL),(274,57,114,2,NULL),(275,86,33,2,NULL),(276,122,33,2,NULL),(277,57,115,2,NULL),(278,145,33,2,NULL),(279,137,33,2,NULL),(280,57,58,2,NULL),(281,132,33,2,NULL),(282,171,33,2,NULL),(283,57,79,2,NULL),(284,62,44,2,NULL),(285,22,44,2,NULL),(286,57,91,2,NULL),(287,75,44,2,NULL),(288,57,92,2,NULL),(289,103,44,2,NULL),(290,86,44,2,NULL),(291,57,93,2,NULL),(292,122,44,2,NULL),(293,145,44,2,NULL),(294,57,120,2,NULL),(295,137,44,2,NULL),(296,132,44,2,NULL),(297,57,95,2,NULL),(298,171,44,2,NULL),(299,62,105,2,NULL),(300,57,96,2,NULL),(301,22,105,2,NULL),(302,75,105,2,NULL),(303,103,105,2,NULL),(304,57,97,2,NULL),(305,86,105,2,NULL),(306,57,98,2,NULL),(307,122,105,2,NULL),(308,145,105,2,NULL),(309,57,99,2,NULL),(310,137,105,2,NULL),(311,132,105,2,NULL),(312,171,105,2,NULL),(313,57,116,2,NULL),(314,62,107,2,NULL),(315,57,117,2,NULL),(316,22,107,2,NULL),(317,75,107,2,NULL),(318,75,107,2,NULL),(319,57,118,2,NULL),(320,103,107,2,NULL),(321,57,119,2,NULL),(322,86,107,2,NULL),(323,122,107,2,NULL),(324,57,81,2,NULL),(325,145,107,2,NULL),(326,137,107,2,NULL),(327,57,83,2,NULL),(328,132,107,2,NULL),(329,171,107,2,NULL),(330,57,101,2,NULL),(331,62,109,2,NULL),(332,22,109,2,NULL),(333,57,102,2,NULL),(334,75,109,2,NULL),(335,57,103,2,NULL),(336,103,109,2,NULL),(337,86,109,2,NULL),(338,122,109,2,NULL),(339,65,72,2,NULL),(340,145,109,2,NULL),(341,137,109,2,NULL),(342,6,78,2,NULL),(343,132,109,2,NULL),(344,171,109,2,NULL),(345,30,72,2,NULL),(346,62,111,2,NULL),(347,22,111,2,NULL),(348,75,111,2,NULL),(349,3,80,2,NULL),(350,103,111,2,NULL),(351,86,111,2,NULL),(352,122,111,2,NULL),(353,24,72,2,NULL),(354,145,111,2,NULL),(355,137,111,2,NULL),(356,62,81,2,NULL),(357,132,111,2,NULL),(358,22,81,2,NULL),(359,171,111,2,NULL),(360,5,2,2,NULL),(361,75,81,2,NULL),(362,5,8,2,NULL),(363,5,10,2,NULL),(364,103,81,2,NULL),(365,5,60,2,NULL),(366,62,4,2,NULL),(367,86,81,2,NULL),(368,22,4,2,NULL),(369,75,4,2,NULL),(370,122,81,2,NULL),(371,103,4,2,NULL),(372,86,4,2,NULL),(373,145,81,2,NULL),(374,122,4,2,NULL),(375,145,4,2,NULL),(376,137,81,2,NULL),(377,137,4,2,NULL),(378,132,4,2,NULL),(379,132,81,2,NULL),(380,171,4,2,NULL),(381,44,28,2,NULL),(382,171,81,2,NULL),(383,44,36,2,NULL),(384,44,38,2,NULL),(385,44,84,2,NULL),(386,62,83,2,NULL),(387,66,12,2,NULL),(388,22,83,2,NULL),(389,66,21,2,NULL),(390,66,27,2,NULL),(391,66,69,2,NULL),(392,75,83,2,NULL),(393,62,43,2,NULL),(394,103,83,2,NULL),(395,62,48,2,NULL),(396,62,104,2,NULL),(397,62,106,2,NULL),(398,86,83,2,NULL),(399,62,108,2,NULL),(400,62,110,2,NULL),(401,122,83,2,NULL),(402,62,6,2,NULL),(403,62,29,2,NULL),(404,145,83,2,NULL),(405,62,40,2,NULL),(406,62,45,2,NULL),(407,137,83,2,NULL),(408,62,49,2,NULL),(409,62,52,2,NULL),(410,132,83,2,NULL),(411,62,112,2,NULL),(412,62,113,2,NULL),(413,171,83,2,NULL),(414,62,114,2,NULL),(415,62,115,2,NULL),(416,62,101,2,NULL),(417,62,58,2,NULL),(418,62,79,2,NULL),(419,62,91,2,NULL),(420,22,101,2,NULL),(421,62,92,2,NULL),(422,62,93,2,NULL),(423,75,101,2,NULL),(424,62,120,2,NULL),(425,62,95,2,NULL),(426,103,101,2,NULL),(427,62,96,2,NULL),(428,62,97,2,NULL),(429,86,101,2,NULL),(430,62,98,2,NULL),(431,62,99,2,NULL),(432,122,101,2,NULL),(433,62,116,2,NULL),(434,62,117,2,NULL),(435,145,101,2,NULL),(436,62,118,2,NULL),(437,62,119,2,NULL),(438,137,101,2,NULL),(439,62,102,2,NULL),(440,62,103,2,NULL),(441,132,101,2,NULL),(442,42,12,2,NULL),(443,42,21,2,NULL),(444,171,101,2,NULL),(445,42,27,2,NULL),(446,42,69,2,NULL),(447,22,102,2,NULL),(448,22,43,2,NULL),(449,22,48,2,NULL),(450,75,102,2,NULL),(451,22,104,2,NULL),(452,22,106,2,NULL),(453,103,102,2,NULL),(454,22,108,2,NULL),(455,22,110,2,NULL),(456,22,6,2,NULL),(457,86,102,2,NULL),(458,22,29,2,NULL),(459,22,40,2,NULL),(460,122,102,2,NULL),(461,22,45,2,NULL),(462,22,49,2,NULL),(463,145,102,2,NULL),(464,22,52,2,NULL),(465,22,112,2,NULL),(466,137,102,2,NULL),(467,22,113,2,NULL),(468,22,114,2,NULL),(469,132,102,2,NULL),(470,22,115,2,NULL),(471,171,102,2,NULL),(472,22,58,2,NULL),(473,22,79,2,NULL),(474,22,103,2,NULL),(475,22,91,2,NULL),(476,22,91,2,NULL),(477,75,103,2,NULL),(478,22,92,2,NULL),(479,22,92,2,NULL),(480,103,103,2,NULL),(481,22,93,2,NULL),(482,22,93,2,NULL),(483,86,103,2,NULL),(484,22,120,2,NULL),(485,22,120,2,NULL),(486,122,103,2,NULL),(487,22,95,2,NULL),(488,22,95,2,NULL),(489,145,103,2,NULL),(490,22,96,2,NULL),(491,22,96,2,NULL),(492,137,103,2,NULL),(493,22,97,2,NULL),(494,22,97,2,NULL),(495,132,103,2,NULL),(496,22,98,2,NULL),(497,22,99,2,NULL),(498,171,103,2,NULL),(499,22,116,2,NULL),(500,22,117,2,NULL),(501,22,118,2,NULL),(502,22,119,2,NULL),(503,67,12,2,NULL),(504,67,21,2,NULL),(505,67,27,2,NULL),(506,67,69,2,NULL),(507,51,12,2,NULL),(508,51,21,2,NULL),(509,51,27,2,NULL),(510,51,69,2,NULL),(511,55,24,2,NULL),(512,55,26,2,NULL),(513,55,35,2,NULL),(514,55,75,2,NULL),(515,32,12,2,NULL),(516,32,21,2,NULL),(517,32,27,2,NULL),(518,32,69,2,NULL),(519,38,31,2,NULL),(520,38,39,2,NULL),(521,38,41,2,NULL),(522,38,56,2,NULL),(523,38,87,2,NULL),(524,75,43,2,NULL),(525,103,43,2,NULL),(526,86,43,2,NULL),(527,122,43,2,NULL),(528,145,43,2,NULL),(529,137,43,2,NULL),(530,132,43,2,NULL),(531,171,43,2,NULL),(532,75,48,2,NULL),(533,103,48,2,NULL),(534,86,48,2,NULL),(535,122,48,2,NULL),(536,145,48,2,NULL),(537,137,48,2,NULL),(538,132,48,2,NULL),(539,171,48,2,NULL),(540,75,104,2,NULL),(541,103,104,2,NULL),(542,86,104,2,NULL),(543,122,104,2,NULL),(544,145,104,2,NULL),(545,137,104,2,NULL),(546,132,104,2,NULL),(547,171,104,2,NULL),(548,75,106,2,NULL),(549,103,106,2,NULL),(550,86,106,2,NULL),(551,122,106,2,NULL),(552,145,106,2,NULL),(553,137,106,2,NULL),(554,132,106,2,NULL),(555,171,106,2,NULL),(556,75,108,2,NULL),(557,103,108,2,NULL),(558,103,108,2,NULL),(559,86,108,2,NULL),(560,122,108,2,NULL),(561,145,108,2,NULL),(562,137,108,2,NULL),(563,132,108,2,NULL),(564,171,108,2,NULL),(565,75,110,2,NULL),(566,103,110,2,NULL),(567,86,110,2,NULL),(568,122,110,2,NULL),(569,145,110,2,NULL),(570,137,110,2,NULL),(571,132,110,2,NULL),(572,171,110,2,NULL),(573,80,2,2,NULL),(574,80,8,2,NULL),(575,80,10,2,NULL),(576,80,60,2,NULL),(577,96,2,2,NULL),(578,96,8,2,NULL),(579,96,10,2,NULL),(580,96,60,2,NULL),(581,75,6,2,NULL),(582,103,6,2,NULL),(583,86,6,2,NULL),(584,122,6,2,NULL),(585,145,6,2,NULL),(586,137,6,2,NULL),(587,132,6,2,NULL),(588,171,6,2,NULL),(589,83,28,2,NULL),(590,83,36,2,NULL),(591,83,38,2,NULL),(592,83,84,2,NULL),(593,119,28,2,NULL),(594,119,36,2,NULL),(595,119,38,2,NULL),(596,119,84,2,NULL),(597,76,12,2,NULL),(598,76,21,2,NULL),(599,76,27,2,NULL),(600,76,69,2,NULL),(601,118,12,2,NULL),(602,118,21,2,NULL),(603,118,27,2,NULL),(604,118,69,2,NULL),(605,75,29,2,NULL),(606,103,29,2,NULL),(607,103,29,2,NULL),(608,75,40,2,NULL),(609,103,40,2,NULL),(610,75,45,2,NULL),(611,103,45,2,NULL),(612,75,49,2,NULL),(613,103,49,2,NULL),(614,75,52,2,NULL),(615,103,52,2,NULL),(616,75,112,2,NULL),(617,103,112,2,NULL),(618,75,113,2,NULL),(619,103,113,2,NULL),(620,75,114,2,NULL),(621,103,114,2,NULL),(622,75,115,2,NULL),(623,103,115,2,NULL),(624,75,58,2,NULL),(625,103,58,2,NULL),(626,75,79,2,NULL),(627,103,79,2,NULL),(628,75,91,2,NULL),(629,103,91,2,NULL),(630,75,92,2,NULL),(631,103,92,2,NULL),(632,103,92,2,NULL),(633,75,93,2,NULL),(634,103,93,2,NULL),(635,75,120,2,NULL),(636,103,120,2,NULL),(637,75,95,2,NULL),(638,103,95,2,NULL),(639,75,96,2,NULL),(640,103,96,2,NULL),(641,75,97,2,NULL),(642,103,97,2,NULL),(643,75,98,2,NULL),(644,103,98,2,NULL),(645,75,99,2,NULL),(646,103,99,2,NULL),(647,75,116,2,NULL),(648,103,116,2,NULL),(649,75,117,2,NULL),(650,103,117,2,NULL),(651,75,118,2,NULL),(652,103,118,2,NULL),(653,75,119,2,NULL),(654,103,119,2,NULL),(655,81,12,2,NULL),(656,81,21,2,NULL),(657,81,27,2,NULL),(658,81,69,2,NULL),(659,91,12,2,NULL),(660,91,21,2,NULL),(661,91,27,2,NULL),(662,91,69,2,NULL),(663,86,29,2,NULL),(664,122,29,2,NULL),(665,86,40,2,NULL),(666,122,40,2,NULL),(667,86,45,2,NULL),(668,122,45,2,NULL),(669,86,49,2,NULL),(670,122,49,2,NULL),(671,86,52,2,NULL),(672,122,52,2,NULL),(673,86,112,2,NULL),(674,122,112,2,NULL),(675,86,113,2,NULL),(676,122,113,2,NULL),(677,86,114,2,NULL),(678,122,114,2,NULL),(679,86,115,2,NULL),(680,122,115,2,NULL),(681,86,58,2,NULL),(682,122,58,2,NULL),(683,86,79,2,NULL),(684,86,79,2,NULL),(685,122,79,2,NULL),(686,86,91,2,NULL),(687,122,91,2,NULL),(688,122,91,2,NULL),(689,86,92,2,NULL),(690,122,92,2,NULL),(691,86,93,2,NULL),(692,86,93,2,NULL),(693,122,93,2,NULL),(694,86,120,2,NULL),(695,122,120,2,NULL),(696,86,95,2,NULL),(697,122,95,2,NULL),(698,86,96,2,NULL),(699,122,96,2,NULL),(700,86,97,2,NULL),(701,122,97,2,NULL),(702,86,98,2,NULL),(703,122,98,2,NULL),(704,86,99,2,NULL),(705,122,99,2,NULL),(706,86,116,2,NULL),(707,122,116,2,NULL),(708,86,117,2,NULL),(709,122,117,2,NULL),(710,86,118,2,NULL),(711,122,118,2,NULL),(712,86,119,2,NULL),(713,122,119,2,NULL),(714,77,12,2,NULL),(715,77,21,2,NULL),(716,77,27,2,NULL),(717,77,69,2,NULL),(718,124,12,2,NULL),(719,124,21,2,NULL),(720,124,27,2,NULL),(721,124,69,2,NULL),(722,93,12,2,NULL),(723,93,21,2,NULL),(724,93,27,2,NULL),(725,93,69,2,NULL),(726,95,12,2,NULL),(727,95,21,2,NULL),(728,95,27,2,NULL),(729,95,69,2,NULL),(730,104,24,2,NULL),(731,104,26,2,NULL),(732,104,35,2,NULL),(733,104,75,2,NULL),(734,108,24,2,NULL),(735,108,26,2,NULL),(736,108,35,2,NULL),(737,108,75,2,NULL),(738,73,12,2,NULL),(739,73,21,2,NULL),(740,73,27,2,NULL),(741,73,69,2,NULL),(742,99,12,2,NULL),(743,99,21,2,NULL),(744,99,27,2,NULL),(745,99,69,2,NULL),(746,92,34,2,NULL),(747,92,82,2,NULL),(748,107,37,2,NULL),(749,107,85,2,NULL),(750,111,37,2,NULL),(751,111,85,2,NULL),(752,109,34,2,NULL),(753,109,82,2,NULL),(754,116,37,2,NULL),(755,116,85,2,NULL),(756,117,37,2,NULL),(757,117,85,2,NULL),(758,145,29,2,NULL),(759,137,29,2,NULL),(760,132,29,2,NULL),(761,171,29,2,NULL),(762,145,40,2,NULL),(763,137,40,2,NULL),(764,132,40,2,NULL),(765,171,40,2,NULL),(766,145,45,2,NULL),(767,137,45,2,NULL),(768,132,45,2,NULL),(769,171,45,2,NULL),(770,98,28,2,NULL),(771,98,36,2,NULL),(772,98,38,2,NULL),(773,98,84,2,NULL),(774,126,28,2,NULL),(775,126,36,2,NULL),(776,126,38,2,NULL),(777,126,84,2,NULL),(778,145,49,2,NULL),(779,137,49,2,NULL),(780,132,49,2,NULL),(781,171,49,2,NULL),(782,101,31,2,NULL),(783,101,39,2,NULL),(784,101,41,2,NULL),(785,101,56,2,NULL),(786,101,87,2,NULL),(787,114,31,2,NULL),(788,114,39,2,NULL),(789,114,41,2,NULL),(790,114,56,2,NULL),(791,114,87,2,NULL),(792,145,52,2,NULL),(793,137,52,2,NULL),(794,132,52,2,NULL),(795,171,52,2,NULL),(796,145,112,2,NULL),(797,137,112,2,NULL),(798,132,112,2,NULL),(799,171,112,2,NULL),(800,145,113,2,NULL),(801,137,113,2,NULL),(802,132,113,2,NULL),(803,171,113,2,NULL),(804,145,114,2,NULL),(805,137,114,2,NULL),(806,132,114,2,NULL),(807,171,114,2,NULL),(808,145,115,2,NULL),(809,137,115,2,NULL),(810,132,115,2,NULL),(811,171,115,2,NULL),(812,150,2,2,NULL),(813,150,8,2,NULL),(814,150,10,2,NULL),(815,150,60,2,NULL),(816,145,58,2,NULL),(817,137,58,2,NULL),(818,132,58,2,NULL),(819,171,58,2,NULL),(820,170,28,2,NULL),(821,170,36,2,NULL),(822,170,38,2,NULL),(823,170,84,2,NULL),(824,175,12,2,NULL),(825,175,21,2,NULL),(826,175,27,2,NULL),(827,175,69,2,NULL),(828,145,79,2,NULL),(829,145,91,2,NULL),(830,145,92,2,NULL),(831,145,93,2,NULL),(832,145,120,2,NULL),(833,145,95,2,NULL),(834,145,96,2,NULL),(835,145,97,2,NULL),(836,145,98,2,NULL),(837,145,99,2,NULL),(838,145,116,2,NULL),(839,145,117,2,NULL),(840,145,118,2,NULL),(841,145,119,2,NULL),(842,172,12,2,NULL),(843,172,21,2,NULL),(844,172,27,2,NULL),(845,172,69,2,NULL),(846,137,79,2,NULL),(847,137,79,2,NULL),(848,137,79,2,NULL),(849,137,91,2,NULL),(850,137,92,2,NULL),(851,137,93,2,NULL),(852,137,120,2,NULL),(853,137,95,2,NULL),(854,137,96,2,NULL),(855,137,97,2,NULL),(856,137,98,2,NULL),(857,137,99,2,NULL),(858,137,116,2,NULL),(859,137,117,2,NULL),(860,137,118,2,NULL),(861,137,119,2,NULL),(862,131,12,2,NULL),(863,131,21,2,NULL),(864,131,27,2,NULL),(865,131,69,2,NULL),(866,149,12,2,NULL),(867,149,21,2,NULL),(868,149,27,2,NULL),(869,149,27,2,NULL),(870,149,69,2,NULL),(871,167,24,2,NULL),(872,167,26,2,NULL),(873,167,35,2,NULL),(874,167,75,2,NULL),(875,148,12,2,NULL),(876,148,21,2,NULL),(877,148,27,2,NULL),(878,148,69,2,NULL),(879,132,79,2,NULL),(880,132,79,2,NULL),(881,132,79,2,NULL),(882,171,79,2,NULL),(883,132,91,2,NULL),(884,171,91,2,NULL),(885,132,92,2,NULL),(886,171,92,2,NULL),(887,171,92,2,NULL),(888,132,93,2,NULL),(889,171,93,2,NULL),(890,132,120,2,NULL),(891,171,120,2,NULL),(892,132,95,2,NULL),(893,171,95,2,NULL),(894,132,96,2,NULL),(895,132,96,2,NULL),(896,171,96,2,NULL),(897,132,97,2,NULL),(898,171,97,2,NULL),(899,132,98,2,NULL),(900,171,98,2,NULL),(901,171,98,2,NULL),(902,132,99,2,NULL),(903,171,99,2,NULL),(904,132,116,2,NULL),(905,171,116,2,NULL),(906,132,117,2,NULL),(907,132,117,2,NULL),(908,171,117,2,NULL),(909,132,118,2,NULL),(910,171,118,2,NULL),(911,132,119,2,NULL),(912,171,119,2,NULL),(913,171,119,2,NULL),(914,130,34,2,NULL),(915,130,82,2,NULL),(916,130,82,2,NULL),(917,146,37,2,NULL),(918,146,85,2,NULL),(919,146,85,2,NULL),(920,147,37,2,NULL),(921,147,85,2,NULL),(922,173,28,2,NULL),(923,173,28,2,NULL),(924,173,36,2,NULL),(925,173,38,2,NULL),(926,173,84,2,NULL),(927,151,90,2,NULL),(928,152,90,2,NULL),(929,153,90,2,NULL),(930,154,90,2,NULL),(931,155,90,2,NULL),(932,155,90,2,NULL),(933,156,90,2,NULL),(934,157,90,2,NULL),(935,157,90,2,NULL),(936,158,90,2,NULL),(937,159,90,2,NULL),(938,159,90,2,NULL),(939,160,90,2,NULL),(940,161,90,2,NULL),(941,161,90,2,NULL),(942,162,90,2,NULL),(943,163,90,2,NULL),(944,163,90,2,NULL),(945,164,90,2,NULL),(946,165,90,2,NULL),(947,166,90,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BLUETOOTH'),(19,'android.permission.BLUETOOTH_ADMIN'),(16,'android.permission.CHANGE_WIFI_STATE'),(22,'android.permission.CLEAR_APP_CACHE'),(10,'android.permission.DISABLE_KEYGUARD'),(24,'android.permission.GET_PACKAGE_SIZE'),(1,'android.permission.GET_TASKS'),(13,'android.permission.INTERNET'),(23,'android.permission.KILL_BACKGROUND_PROCESSES'),(25,'android.permission.READ_CONTACTS'),(29,'android.permission.READ_LOGS'),(9,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(8,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SEND_SMS'),(18,'android.permission.VIBRATE'),(21,'android.permission.WAKE_LOCK'),(26,'android.permission.WRITE_CONTACTS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SETTINGS'),(4,'android.permission.WRITE_SMS'),(28,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(27,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://mms',NULL,NULL,NULL),(2,NULL,NULL,'content://sms',NULL,NULL,NULL),(3,NULL,NULL,'content://com.google.android.maps.SearchHistoryProvider/history',NULL,NULL,NULL),(4,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(5,NULL,NULL,'content://mms',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(14,NULL,NULL,'content://sms',NULL,NULL,NULL),(15,NULL,NULL,'content://mms',NULL,NULL,NULL),(16,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(17,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=com.androiddoctor.batteryapp',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://sms',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(26,NULL,NULL,'content://mms',NULL,NULL,NULL),(27,NULL,NULL,'content://sms',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://mms',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL),(35,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(36,NULL,NULL,'content://sms',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'package:com.mag.appmanager',NULL,NULL,NULL),(41,NULL,NULL,'content://sms',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(44,NULL,NULL,'content://mms',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,NULL,NULL,'http://privacy-policy.truste.com/certified-policy/mobile/app/en/omnimetro_androidbatterydoctor.com',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,5,2),(3,6,3),(4,11,5),(5,48,14),(6,50,15),(7,65,20),(8,87,26),(9,89,27),(10,113,32),(11,127,36),(12,144,41),(13,149,43),(14,151,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,1),(12,1,11),(13,2,2),(14,1,12),(15,2,3),(16,1,13),(17,2,4),(18,1,14),(19,2,5),(20,1,15),(21,2,6),(22,3,1),(23,1,17),(24,2,7),(25,3,2),(26,1,16),(27,3,3),(28,2,8),(29,1,19),(30,3,4),(31,2,9),(32,1,18),(33,2,10),(34,3,5),(35,1,21),(36,2,11),(37,3,6),(38,1,20),(39,2,12),(40,3,8),(41,3,9),(42,2,13),(43,3,10),(44,2,14),(45,2,15),(46,3,11),(47,2,17),(48,3,12),(49,2,16),(50,3,13),(51,2,19),(52,3,14),(53,3,15),(54,2,18),(55,3,16),(56,2,21),(57,3,19),(58,2,20),(59,3,18),(60,3,21),(61,3,20),(62,3,23),(63,3,22),(64,3,24),(65,4,2),(66,4,4),(67,4,5),(68,4,6),(69,4,8),(70,4,9),(71,4,11),(72,4,12),(73,4,13),(74,4,18),(75,4,21),(76,4,20),(77,4,23),(78,4,22),(79,4,25),(80,4,24),(81,4,27),(82,4,26),(83,4,28),(84,5,1),(85,5,2),(86,5,3),(87,5,4),(88,5,5),(89,5,6),(90,5,8),(91,5,9),(92,5,10),(93,5,11),(94,5,12),(95,5,13),(96,5,14),(97,5,15),(98,6,1),(99,5,16),(100,6,3),(101,5,19),(102,6,5),(103,5,18),(104,6,8),(105,5,21),(106,6,9),(107,5,20),(108,6,12),(109,5,23),(110,6,13),(111,5,22),(112,6,14),(113,5,24),(114,6,15),(115,5,29),(116,6,16),(117,6,19),(118,6,18),(119,6,20);
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

-- Dump completed on 2015-10-12  3:29:42
