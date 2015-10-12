-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_749
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'SERVICE_RESCHEDULE'),(19,'SERVICE_START'),(15,'SMS_DELIVERED'),(17,'SMS_SENT'),(12,'android.intent.action.BATTERY_CHANGED'),(6,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CHOOSER'),(16,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.SENDTO'),(2,'android.intent.action.VIEW'),(11,'com.airpush.android.PushServiceStart(.*)'),(3,'com.airpush.android.PushServiceStart12483'),(13,'com.airpush.android.PushServiceStartInvalid'),(18,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(14,'com.airpush.android.PushServiceStartinvalid Id'),(4,'com.android.vending.INSTALL_REFERRER'),(7,'ru.jabox.android.smsbox.SMS_SENT_Jabox'),(8,'ru.jabox.logcollector.intent.action.SEND_LOG');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.first.azip',1),(2,'ru.jabox.android.smsbox.lovebox',14),(3,'ru.jabox.android.smsbox.jokebox',14),(4,'com.battery.improve8',1),(5,'com.battery.improve5',3);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.SAMPLE_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.first.azip.AzipActivity'),(2,1,'com.first.azip.ScreenActivity'),(3,1,'com.first.azip.FinActivity'),(4,1,'com.first.azip.HelpActivity'),(5,2,'ru.jabox.android.smsbox.activity.StartupActivity'),(6,2,'ru.jabox.android.smsbox.activity.ChooseCategoryActivity'),(7,2,'ru.jabox.android.smsbox.activity.ChooseTemplateActivity'),(8,2,'ru.jabox.android.smsbox.activity.SendMessageActivity'),(9,2,'ru.jabox.android.smsbox.activity.HelpActivity'),(10,2,'ru.jabox.android.smsbox.activity.SmsboxPreferencesActivity'),(11,2,'ru.jabox.android.smsbox.activity.OurProjectsActivity'),(12,2,'ru.jabox.android.smsbox.log.SendLogActivity'),(13,3,'ru.jabox.android.smsbox.activity.StartupActivity'),(14,3,'ru.jabox.android.smsbox.activity.ChooseCategoryActivity'),(15,3,'ru.jabox.android.smsbox.activity.ChooseTemplateActivity'),(16,3,'ru.jabox.android.smsbox.activity.SendMessageActivity'),(17,3,'ru.jabox.android.smsbox.activity.HelpActivity'),(18,3,'ru.jabox.android.smsbox.activity.SmsboxPreferencesActivity'),(19,3,'ru.jabox.android.smsbox.activity.OurProjectsActivity'),(20,3,'ru.jabox.android.smsbox.log.SendLogActivity'),(21,4,'com.battery.improve8.BatteryImprove'),(22,4,'com.battery.improve8.Main'),(23,4,'com.battery.improve.lib.Banner'),(24,4,'com.battery.improve.lib.OptInPage'),(25,4,'com.battery.improve.lib.TermsAndConditions'),(26,4,'com.battery.improve.lib.PrivacyPolicy'),(27,4,'com.airpush.android.PushAds'),(28,4,'com.battery.improve8.BatteryService'),(29,4,'com.airpush.android.PushService'),(30,4,'com.battery.improve.utils.GoogleInterceptor'),(31,4,'com.battery.improve8.PhoneStateReceiver'),(32,4,'com.battery.improve8.BootReceiver'),(33,5,'com.battery.improve5.BatteryImprove'),(34,4,'com.airpush.android.UserDetailsReceiver'),(35,5,'com.battery.improve5.Main'),(36,4,'com.airpush.android.MessageReceiver'),(37,5,'com.battery.improve.lib.Banner'),(38,4,'com.airpush.android.DeliveryReceiver'),(39,5,'com.battery.improve.lib.OptInPage'),(40,5,'com.battery.improve.lib.TermsAndConditions'),(41,5,'com.battery.improve.lib.PrivacyPolicy'),(42,5,'com.airpush.android.PushAds'),(43,5,'com.battery.improve5.BatteryService'),(44,5,'com.airpush.android.PushService'),(45,5,'com.battery.improve.utils.GoogleInterceptor'),(46,5,'com.battery.improve4.PhoneStateReceiver'),(47,5,'com.battery.improve5.BootReceiver'),(48,5,'com.airpush.android.UserDetailsReceiver'),(49,5,'com.airpush.android.MessageReceiver'),(50,5,'com.airpush.android.DeliveryReceiver'),(51,2,'ru.jabox.android.smsbox.c.d'),(52,3,'ru.jabox.android.smsbox.d.d'),(53,4,'com.battery.improve.utils.SmsTransaction$1'),(54,4,'com.google.android.apps.analytics.AnalyticsReceiver'),(55,4,'com.battery.improve8.BatteryJsInterface$1'),(56,5,'com.battery.improve5.BatteryJsInterface$1'),(57,4,'com.battery.improve8.BatteryService$1'),(58,5,'com.battery.improve5.PhoneStateReceiver'),(59,5,'com.battery.improve5.BatteryService$1'),(60,4,'com.battery.improve.utils.SmsTransaction$2'),(61,5,'com.battery.improve.utils.SmsTransaction$1'),(62,5,'com.google.android.apps.analytics.AnalyticsReceiver'),(63,5,'com.battery.improve.utils.SmsTransaction$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'0'),(2,2,'0'),(3,12,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(4,12,'android.intent.extra.EMAIL'),(5,8,'categoryId'),(6,12,'ru.jabox.logcollector.intent.extra.FORMAT'),(7,7,'categoryName'),(8,12,'android.intent.extra.BCC'),(9,8,'templateText'),(10,12,'ru.jabox.logcollector.intent.extra.DATA'),(11,8,'templateId'),(12,8,'templateSenderName'),(13,7,'categoryId'),(14,12,'android.intent.extra.SUBJECT'),(15,16,'categoryId'),(16,20,'android.intent.extra.BCC'),(17,12,'android.intent.extra.CC'),(18,20,'android.intent.extra.SUBJECT'),(19,20,'ru.jabox.logcollector.intent.extra.FORMAT'),(20,16,'templateId'),(21,15,'categoryId'),(22,20,'ru.jabox.logcollector.intent.extra.DATA'),(23,12,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(24,12,'ru.jabox.logcollector.intent.extra.BUFFER'),(25,20,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(26,20,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(27,15,'categoryName'),(28,21,'url'),(29,50,'imei'),(30,42,'creativeId'),(31,44,'testMode'),(32,42,'campId'),(33,38,'creativeId'),(34,16,'templateSenderName'),(35,29,'campId'),(36,20,'android.intent.extra.CC'),(37,27,'appId'),(38,29,'creativeId'),(39,38,'imei'),(40,50,'campId'),(41,29,'link'),(42,29,'appId'),(43,20,'ru.jabox.logcollector.intent.extra.BUFFER'),(44,16,'templateText'),(45,20,'android.intent.extra.EMAIL'),(46,50,'url'),(47,38,'imageurl'),(48,27,'creativeId'),(49,29,'title'),(50,29,'text'),(51,38,'appId'),(52,27,'test'),(53,44,'adType'),(54,50,'sms'),(55,44,'header'),(56,38,'title'),(57,27,'campId'),(58,31,'startTime'),(59,27,'apikey'),(60,38,'apikey'),(61,30,'referrer'),(62,38,'campId'),(63,29,'testMode'),(64,44,'sms'),(65,29,'imageurl'),(66,42,'number'),(67,44,'link'),(68,50,'number'),(69,50,'title'),(70,42,'url'),(71,42,'appId'),(72,44,'creativeId'),(73,42,'apikey'),(74,27,'number'),(75,50,'appId'),(76,29,'adType'),(77,50,'imageurl'),(78,38,'text'),(79,50,'text'),(80,29,'number'),(81,42,'sms'),(82,26,'content'),(83,44,'text'),(84,29,'header'),(85,44,'appId'),(86,29,'apikey'),(87,44,'campId'),(88,42,'adType'),(89,44,'type'),(90,50,'apikey'),(91,50,'header'),(92,33,'dynamicContent'),(93,44,'title'),(94,21,'dynamicContent'),(95,27,'header'),(96,27,'url'),(97,29,'sms'),(98,38,'url'),(99,44,'number'),(100,44,'imageurl'),(101,38,'header'),(102,29,'type'),(103,31,'interval'),(104,27,'adType'),(105,25,'content'),(106,27,'sms'),(107,38,'sms'),(108,38,'number'),(109,24,'dynamicContent'),(110,41,'content'),(111,33,'url'),(112,42,'header'),(113,40,'content'),(114,42,'test'),(115,39,'dynamicContent'),(116,50,'creativeId'),(117,44,'apikey'),(118,45,'referrer');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'s',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'r',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'r',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'s',1,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'r',0,NULL,NULL),(49,49,'r',0,NULL,NULL),(50,50,'r',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,34,'r',1,NULL,NULL),(57,38,'r',1,NULL,NULL),(58,36,'r',1,NULL,NULL),(59,56,'r',1,NULL,NULL),(60,57,'r',1,NULL,NULL),(61,58,'r',1,NULL,NULL),(62,59,'r',1,NULL,NULL),(63,60,'r',1,NULL,NULL),(64,61,'r',1,NULL,NULL),(65,62,'r',1,NULL,NULL),(66,48,'r',1,NULL,NULL),(67,50,'r',1,NULL,NULL),(68,49,'r',1,NULL,NULL),(69,63,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,4),(7,7,1),(8,8,1),(9,9,4),(10,10,1),(11,11,7),(12,12,5),(13,13,6),(14,14,14),(15,15,6),(16,16,5),(17,17,6),(18,18,6),(19,19,11),(20,20,13),(21,21,6),(22,22,6),(23,23,14),(24,24,6),(25,25,14),(26,26,19),(27,27,14),(28,28,14),(29,29,6),(30,30,11),(31,31,6),(32,32,6),(33,33,6),(34,34,6),(35,35,7),(36,36,15),(37,37,21),(38,38,42),(39,39,14),(40,40,48),(41,41,34),(42,42,33),(43,43,33),(44,44,27),(45,45,36),(46,46,49),(47,47,27),(48,48,33),(49,49,21),(50,50,50),(51,51,21),(52,52,38),(53,53,42),(54,54,35),(55,55,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.first.azip.AzipActivity: boolean onKeyDown(int,android.view.KeyEvent)>',12,'a',NULL),(2,1,'<com.first.azip.AzipActivity: void sendSms(java.lang.String,java.lang.String)>',13,'a',NULL),(3,1,'<com.first.azip.AzipActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',NULL),(4,1,'<com.first.azip.AzipActivity: void goSite()>',5,'a',NULL),(5,1,'<com.first.azip.AzipActivity: void goSite()>',5,'a',NULL),(6,4,'<com.first.azip.HelpActivity: void onClick(android.view.View)>',8,'a',NULL),(7,1,'<com.first.azip.AzipActivity: boolean onKeyDown(int,android.view.KeyEvent)>',12,'a',NULL),(8,1,'<com.first.azip.AzipActivity: void sendSms(java.lang.String,java.lang.String)>',13,'a',NULL),(9,4,'<com.first.azip.HelpActivity: void onClick(android.view.View)>',8,'a',NULL),(10,1,'<com.first.azip.AzipActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',NULL),(11,7,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(12,5,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(13,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(14,14,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(15,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(16,5,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(17,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(18,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(19,11,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(20,13,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(21,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(22,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(23,14,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(24,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(25,14,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(26,19,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(27,14,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(28,14,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(29,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(30,11,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(31,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(32,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(33,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(34,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(35,7,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(36,15,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(37,21,'<com.battery.improve8.BatteryImprove: void onCreate(android.os.Bundle)>',10,'a',NULL),(38,42,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',189,'a',NULL),(39,14,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(40,48,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(41,34,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(42,33,'<com.battery.improve5.BatteryImprove: void onCreate(android.os.Bundle)>',10,'a',NULL),(43,33,'<com.battery.improve5.BatteryImprove: void onActivityResult(int,int,android.content.Intent)>',14,'a',NULL),(44,27,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',81,'a',NULL),(45,36,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(46,49,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(47,27,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',189,'a',NULL),(48,33,'<com.battery.improve5.BatteryImprove: void showWebView(java.lang.String)>',4,'a',NULL),(49,21,'<com.battery.improve8.BatteryImprove: void onActivityResult(int,int,android.content.Intent)>',14,'a',NULL),(50,50,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(51,21,'<com.battery.improve8.BatteryImprove: void showWebView(java.lang.String)>',4,'a',NULL),(52,38,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(53,42,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',81,'a',NULL),(54,35,'<com.battery.improve5.Main: void initialize()>',93,'s',NULL),(55,22,'<com.battery.improve8.Main: void initialize()>',93,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,2),(2,5,2),(3,6,2),(4,9,2),(5,16,8),(6,18,8),(7,20,2),(8,24,9),(9,25,9),(10,26,9),(11,28,9),(12,29,9),(13,30,9),(14,31,9),(15,32,2),(16,33,9),(17,34,9),(18,35,9),(19,36,9),(20,38,9),(21,39,9),(22,40,9),(23,41,9),(24,42,9),(25,43,9),(26,45,9),(27,46,9),(28,47,2),(29,49,9),(30,51,9),(31,52,8),(32,53,9),(33,54,9),(34,56,9),(35,62,10),(36,64,11),(37,65,13),(38,66,14),(39,67,11),(40,68,13),(41,69,14),(42,72,16),(43,73,11),(44,74,11),(45,75,14),(46,76,14),(47,77,13),(48,78,13),(49,79,10),(50,83,11),(51,85,11),(52,87,11),(53,88,18),(54,89,11),(55,90,11),(56,91,18),(57,92,11),(58,93,11),(59,94,18),(60,95,11),(61,96,18),(62,97,18),(63,98,18),(64,99,18),(65,100,18),(66,101,16),(67,102,19),(68,103,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/first/azip/FinActivity'),(2,1,'com/first/azip/HelpActivity'),(3,3,'com/first/azip/ScreenActivity'),(4,7,'com/first/azip/HelpActivity'),(5,8,'com/first/azip/FinActivity'),(6,10,'com/first/azip/ScreenActivity'),(7,11,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(8,12,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(9,13,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(10,14,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(11,15,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(12,17,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(13,19,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(14,16,'ru/jabox/android/smsbox/log/SendLogActivity'),(15,18,'ru/jabox/android/smsbox/log/SendLogActivity'),(16,21,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(17,22,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(18,23,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(19,27,'ru/jabox/android/smsbox/activity/HelpActivity'),(20,37,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(21,44,'ru/jabox/android/smsbox/activity/HelpActivity'),(22,48,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(23,50,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(24,55,'ru/jabox/android/smsbox/activity/HelpActivity'),(25,52,'ru/jabox/android/smsbox/log/SendLogActivity'),(26,57,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(27,58,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(28,59,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(29,60,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(30,61,'com/battery/improve/lib/Banner'),(31,63,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(32,70,'com/battery/improve/lib/Banner'),(33,71,'com/battery/improve/lib/OptInPage'),(34,80,'com/battery/improve5/Main'),(35,81,'com/battery/improve/lib/OptInPage'),(36,84,'com/battery/improve8/Main'),(37,102,'com/battery/improve5/BatteryService'),(38,103,'com/battery/improve8/BatteryService');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,5,2),(3,6,3),(4,9,4),(5,20,5),(6,32,6),(7,47,7),(8,62,8),(9,72,9),(10,79,10),(11,101,11);
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
INSERT INTO `IExtras` VALUES (1,1,'0'),(2,3,'0'),(3,7,'0'),(4,10,'0'),(5,11,'templateId'),(6,11,'templateSenderName'),(7,11,'categoryId'),(8,11,'templateText'),(9,12,'templateId'),(10,12,'categoryId'),(11,12,'templateText'),(12,16,'android.intent.extra.SUBJECT'),(13,16,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(14,16,'ru.jabox.logcollector.intent.extra.FORMAT'),(15,16,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(16,16,'ru.jabox.logcollector.intent.extra.DATA'),(17,18,'android.intent.extra.SUBJECT'),(18,18,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(19,18,'ru.jabox.logcollector.intent.extra.FORMAT'),(20,18,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(21,18,'ru.jabox.logcollector.intent.extra.DATA'),(22,24,'android.intent.extra.INTENT'),(23,25,'android.intent.extra.INTENT'),(24,26,'android.intent.extra.INTENT'),(25,28,'android.intent.extra.TITLE'),(26,28,'android.intent.extra.INTENT'),(27,29,'android.intent.extra.INTENT'),(28,30,'android.intent.extra.INTENT'),(29,31,'android.intent.extra.TITLE'),(30,31,'android.intent.extra.INTENT'),(31,33,'android.intent.extra.TITLE'),(32,33,'android.intent.extra.INTENT'),(33,34,'android.intent.extra.INTENT'),(34,35,'android.intent.extra.INTENT'),(35,37,'categoryName'),(36,36,'android.intent.extra.TITLE'),(37,37,'categoryId'),(38,36,'android.intent.extra.INTENT'),(39,38,'android.intent.extra.TITLE'),(40,38,'android.intent.extra.INTENT'),(41,39,'android.intent.extra.INTENT'),(42,40,'android.intent.extra.TITLE'),(43,41,'android.intent.extra.TITLE'),(44,40,'android.intent.extra.INTENT'),(45,41,'android.intent.extra.INTENT'),(46,42,'android.intent.extra.INTENT'),(47,43,'android.intent.extra.TITLE'),(48,43,'android.intent.extra.INTENT'),(49,45,'android.intent.extra.INTENT'),(50,46,'android.intent.extra.TITLE'),(51,46,'android.intent.extra.INTENT'),(52,48,'categoryName'),(53,48,'categoryId'),(54,49,'android.intent.extra.INTENT'),(55,50,'categoryName'),(56,50,'categoryId'),(57,51,'android.intent.extra.TITLE'),(58,51,'android.intent.extra.INTENT'),(59,52,'android.intent.extra.SUBJECT'),(60,53,'android.intent.extra.INTENT'),(61,52,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(62,52,'ru.jabox.logcollector.intent.extra.FORMAT'),(63,52,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(64,54,'android.intent.extra.TITLE'),(65,52,'ru.jabox.logcollector.intent.extra.DATA'),(66,54,'android.intent.extra.INTENT'),(67,56,'android.intent.extra.TITLE'),(68,56,'android.intent.extra.INTENT'),(69,57,'templateId'),(70,57,'templateSenderName'),(71,57,'categoryId'),(72,57,'templateText'),(73,58,'templateId'),(74,59,'templateId'),(75,58,'categoryId'),(76,59,'categoryId'),(77,58,'templateText'),(78,59,'templateText'),(79,60,'templateId'),(80,60,'templateSenderName'),(81,60,'categoryId'),(82,60,'templateText'),(83,62,'sms_body'),(84,64,'appId'),(85,64,'type'),(86,64,'apikey'),(87,65,'appId'),(88,65,'type'),(89,65,'apikey'),(90,66,'appId'),(91,66,'type'),(92,66,'apikey'),(93,67,'appId'),(94,67,'type'),(95,67,'apikey'),(96,68,'appId'),(97,68,'type'),(98,68,'apikey'),(99,69,'appId'),(100,69,'type'),(101,69,'apikey'),(102,71,'dynamicContent'),(103,73,'icon'),(104,73,'appId'),(105,73,'testMode'),(106,73,'type'),(107,73,'apikey'),(108,74,'icon'),(109,75,'icon'),(110,74,'appId'),(111,75,'appId'),(112,74,'testMode'),(113,75,'testMode'),(114,74,'type'),(115,75,'type'),(116,74,'apikey'),(117,75,'apikey'),(118,76,'icon'),(119,77,'icon'),(120,76,'appId'),(121,77,'appId'),(122,76,'testMode'),(123,77,'testMode'),(124,76,'type'),(125,77,'type'),(126,76,'apikey'),(127,77,'apikey'),(128,78,'icon'),(129,78,'appId'),(130,78,'testMode'),(131,78,'type'),(132,78,'apikey'),(133,79,'sms_body'),(134,81,'dynamicContent'),(135,83,'campId'),(136,83,'text'),(137,83,'title'),(138,83,'creativeId'),(139,83,'appId'),(140,83,'expiry_time'),(141,83,'number'),(142,83,'adType'),(143,83,'type'),(144,83,'sms'),(145,83,'imageurl'),(146,83,'apikey'),(147,85,'campId'),(148,85,'title'),(149,85,'text'),(150,85,'creativeId'),(151,85,'appId'),(152,85,'expiry_time'),(153,87,'campId'),(154,85,'link'),(155,87,'text'),(156,85,'adType'),(157,87,'title'),(158,85,'type'),(159,87,'creativeId'),(160,85,'imageurl'),(161,87,'appId'),(162,85,'header'),(163,87,'expiry_time'),(164,85,'apikey'),(165,87,'number'),(166,87,'adType'),(167,87,'type'),(168,87,'sms'),(169,88,'campId'),(170,87,'imageurl'),(171,88,'text'),(172,87,'apikey'),(173,88,'title'),(174,88,'creativeId'),(175,88,'appId'),(176,89,'campId'),(177,88,'expiry_time'),(178,89,'title'),(179,88,'number'),(180,89,'text'),(181,88,'adType'),(182,89,'creativeId'),(183,88,'type'),(184,89,'appId'),(185,88,'sms'),(186,89,'expiry_time'),(187,88,'imageurl'),(188,89,'link'),(189,88,'apikey'),(190,89,'adType'),(191,89,'type'),(192,89,'imageurl'),(193,90,'title'),(194,89,'header'),(195,90,'text'),(196,89,'apikey'),(197,90,'appId'),(198,90,'expiry_time'),(199,90,'number'),(200,91,'campId'),(201,90,'adType'),(202,91,'text'),(203,90,'type'),(204,91,'title'),(205,90,'imageurl'),(206,91,'creativeId'),(207,90,'apikey'),(208,91,'appId'),(209,91,'expiry_time'),(210,91,'number'),(211,92,'campId'),(212,91,'adType'),(213,92,'title'),(214,91,'type'),(215,92,'text'),(216,91,'sms'),(217,92,'creativeId'),(218,91,'imageurl'),(219,92,'appId'),(220,91,'apikey'),(221,92,'expiry_time'),(222,92,'link'),(223,92,'adType'),(224,93,'title'),(225,92,'type'),(226,93,'text'),(227,92,'imageurl'),(228,93,'appId'),(229,92,'apikey'),(230,93,'expiry_time'),(231,93,'number'),(232,93,'adType'),(233,94,'campId'),(234,93,'type'),(235,94,'title'),(236,93,'imageurl'),(237,94,'text'),(238,93,'apikey'),(239,94,'creativeId'),(240,94,'appId'),(241,94,'expiry_time'),(242,95,'campId'),(243,94,'link'),(244,95,'title'),(245,94,'adType'),(246,95,'text'),(247,94,'type'),(248,95,'creativeId'),(249,94,'imageurl'),(250,95,'appId'),(251,94,'header'),(252,95,'expiry_time'),(253,94,'apikey'),(254,95,'link'),(255,95,'adType'),(256,95,'type'),(257,96,'title'),(258,95,'imageurl'),(259,96,'text'),(260,95,'apikey'),(261,96,'appId'),(262,96,'expiry_time'),(263,96,'number'),(264,97,'campId'),(265,96,'adType'),(266,97,'title'),(267,96,'type'),(268,97,'text'),(269,96,'imageurl'),(270,97,'creativeId'),(271,96,'apikey'),(272,97,'appId'),(273,97,'expiry_time'),(274,97,'link'),(275,98,'campId'),(276,97,'adType'),(277,98,'title'),(278,97,'type'),(279,98,'text'),(280,97,'imageurl'),(281,98,'creativeId'),(282,97,'header'),(283,98,'appId'),(284,97,'apikey'),(285,98,'expiry_time'),(286,98,'link'),(287,98,'adType'),(288,99,'title'),(289,98,'type'),(290,99,'text'),(291,98,'imageurl'),(292,99,'appId'),(293,98,'apikey'),(294,99,'expiry_time'),(295,99,'number'),(296,99,'adType'),(297,99,'type'),(298,99,'imageurl'),(299,99,'apikey'),(300,100,'campId'),(301,100,'title'),(302,100,'text'),(303,100,'creativeId'),(304,100,'appId'),(305,100,'expiry_time'),(306,100,'link'),(307,100,'adType'),(308,100,'type'),(309,100,'imageurl'),(310,100,'apikey');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,3),(14,14,4),(15,15,5),(16,16,6),(17,17,1),(18,18,3),(19,19,4),(20,20,5),(21,21,6),(22,22,7),(23,23,7),(24,24,7),(25,25,7),(26,26,7),(27,27,12),(28,28,7),(29,29,12),(30,30,12),(31,31,12),(32,32,12),(33,33,12),(34,34,12),(35,35,12),(36,36,12),(37,37,12),(38,38,12),(39,39,12),(40,40,12),(41,41,12),(42,42,12),(43,43,12),(44,44,12),(45,45,12),(46,46,12),(47,47,12),(48,48,12),(49,49,12),(50,50,15),(51,51,12),(52,52,12),(53,53,12),(54,54,12),(55,55,12),(56,56,12),(57,57,12),(58,58,12),(59,59,12),(60,60,12),(61,61,12),(62,62,12),(63,63,12),(64,64,12),(65,65,12),(66,66,12),(67,67,12),(68,68,12),(69,69,12),(70,70,12),(71,71,12),(72,72,12),(73,73,17),(74,74,17),(75,75,15);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,2),(6,6,2),(7,7,2),(8,8,2),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,16,3),(14,17,1),(15,21,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.first.azip'),(2,1,'com.first.azip'),(3,3,'com.first.azip'),(4,7,'com.first.azip'),(5,8,'com.first.azip'),(6,10,'com.first.azip'),(7,11,'ru.jabox.android.smsbox.lovebox'),(8,12,'ru.jabox.android.smsbox.lovebox'),(9,13,'ru.jabox.android.smsbox.lovebox'),(10,14,'ru.jabox.android.smsbox.lovebox'),(11,15,'ru.jabox.android.smsbox.lovebox'),(12,17,'ru.jabox.android.smsbox.lovebox'),(13,19,'ru.jabox.android.smsbox.lovebox'),(14,16,'ru.jabox.android.smsbox.jokebox'),(15,18,'ru.jabox.android.smsbox.lovebox'),(16,21,'ru.jabox.android.smsbox.jokebox'),(17,22,'ru.jabox.android.smsbox.lovebox'),(18,23,'ru.jabox.android.smsbox.jokebox'),(19,27,'ru.jabox.android.smsbox.jokebox'),(20,37,'ru.jabox.android.smsbox.jokebox'),(21,44,'ru.jabox.android.smsbox.lovebox'),(22,48,'ru.jabox.android.smsbox.lovebox'),(23,50,'ru.jabox.android.smsbox.lovebox'),(24,55,'ru.jabox.android.smsbox.lovebox'),(25,52,'ru.jabox.android.smsbox.lovebox'),(26,57,'ru.jabox.android.smsbox.lovebox'),(27,58,'ru.jabox.android.smsbox.jokebox'),(28,59,'ru.jabox.android.smsbox.lovebox'),(29,60,'ru.jabox.android.smsbox.jokebox'),(30,61,'com.battery.improve8'),(31,63,'ru.jabox.android.smsbox.jokebox'),(32,70,'com.battery.improve5'),(33,71,'com.battery.improve5'),(34,80,'com.battery.improve5'),(35,81,'com.battery.improve8'),(36,84,'com.battery.improve8'),(37,102,'com.battery.improve5'),(38,103,'com.battery.improve8');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,2,0),(4,2,0),(5,3,0),(6,3,0),(7,4,0),(8,4,0),(9,5,0),(10,5,0),(11,13,0),(12,21,0),(13,29,0),(14,30,0),(15,31,0),(16,32,0),(17,33,0),(18,44,0),(19,45,0),(20,46,0),(21,47,0),(22,51,0),(23,51,0),(24,51,0),(25,51,0),(26,52,0),(27,30,0),(28,52,0),(29,53,0),(30,54,0),(31,55,0),(32,56,0),(33,47,0),(34,57,0),(35,45,0),(36,58,0),(37,59,0),(38,60,0),(39,32,0),(40,61,0),(41,31,0),(42,62,0),(43,63,0),(44,64,0),(45,65,0),(46,66,0),(47,67,0),(48,68,0),(49,69,0),(50,63,0),(51,30,0),(52,47,0),(53,53,0),(54,45,0),(55,54,0),(56,59,0),(57,55,0),(58,61,0),(59,56,0),(60,62,0),(61,57,0),(62,64,0),(63,58,0),(64,65,0),(65,60,0),(66,66,0),(67,32,0),(68,67,0),(69,31,0),(70,68,0),(71,63,0),(72,69,0),(73,53,0),(74,64,0),(75,69,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,6,1,0),(7,7,0,0),(8,8,0,0),(9,9,1,0),(10,10,0,0),(11,11,0,0),(12,11,0,0),(13,12,0,0),(14,13,0,0),(15,15,0,0),(16,14,0,0),(17,16,0,0),(18,17,0,0),(19,18,0,0),(20,19,1,0),(21,20,0,0),(22,22,0,0),(23,23,0,0),(24,21,1,0),(25,21,1,0),(26,24,1,0),(27,25,0,0),(28,21,1,0),(29,24,1,0),(30,21,1,0),(31,24,1,0),(32,26,1,0),(33,21,1,0),(34,24,1,0),(35,21,1,0),(36,24,1,0),(37,27,0,0),(38,21,1,0),(39,24,1,0),(40,21,1,0),(41,24,1,0),(42,28,1,0),(43,24,1,0),(44,29,0,0),(45,28,1,0),(46,28,1,0),(47,30,1,0),(48,31,0,0),(49,28,1,0),(50,32,0,0),(51,28,1,0),(52,33,0,0),(53,28,1,0),(54,28,1,0),(55,34,0,0),(56,28,1,0),(57,35,0,0),(58,36,0,0),(59,35,0,0),(60,36,0,0),(61,37,0,0),(62,38,1,0),(63,39,0,0),(64,40,1,0),(65,40,1,0),(66,40,1,0),(67,41,1,0),(68,41,1,0),(69,41,1,0),(70,42,0,0),(71,43,0,0),(72,44,1,0),(73,45,1,0),(74,46,1,0),(75,45,1,0),(76,46,1,0),(77,45,1,0),(78,46,1,0),(79,47,1,0),(80,48,0,0),(81,49,0,0),(82,50,1,0),(83,50,1,0),(84,51,0,0),(85,50,1,0),(86,52,1,0),(87,52,1,0),(88,50,1,0),(89,52,1,0),(90,50,1,0),(91,52,1,0),(92,50,1,0),(93,52,1,0),(94,50,1,0),(95,52,1,0),(96,50,1,0),(97,52,1,0),(98,50,1,0),(99,52,1,0),(100,52,1,0),(101,53,1,0),(102,54,0,0),(103,55,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (17,'android.permission.ACCESS_COARSE_LOCATION'),(18,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(7,'android.permission.BATTERY_STATS'),(12,'android.permission.BLUETOOTH'),(15,'android.permission.BLUETOOTH_ADMIN'),(13,'android.permission.CHANGE_WIFI_STATE'),(5,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(9,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(11,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RESTART_PACKAGES'),(1,'android.permission.SEND_SMS'),(14,'android.permission.VIBRATE');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'http://cowslab.com/abuse.php',NULL,NULL,NULL),(4,NULL,NULL,'http://cowslab.com/abuse.php',NULL,NULL,NULL),(5,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(8,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(9,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(11,NULL,NULL,'tel:(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,2,3),(6,2,4),(7,3,1),(8,3,2),(9,3,3),(10,3,4),(11,4,1),(12,4,2),(13,4,4),(14,4,5),(15,4,6),(16,4,7),(17,4,8),(18,4,9),(19,4,10),(20,4,11),(21,4,12),(22,4,13),(23,4,14),(24,4,15),(25,4,16),(26,5,1),(27,5,2),(28,5,4),(29,5,5),(30,5,6),(31,5,7),(32,5,8),(33,5,9),(34,5,10),(35,5,11),(36,5,12),(37,5,13),(38,5,14),(39,5,15),(40,5,17),(41,5,16),(42,5,18);
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

-- Dump completed on 2015-10-09  0:41:04
