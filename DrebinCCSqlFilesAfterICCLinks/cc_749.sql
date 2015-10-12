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
) ENGINE=InnoDB AUTO_INCREMENT=2240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,70,23,2,NULL),(2,70,37,2,NULL),(3,71,24,2,NULL),(4,71,39,2,NULL),(5,80,35,2,NULL),(6,4,33,2,NULL),(7,5,33,2,NULL),(8,24,33,2,NULL),(9,25,33,2,NULL),(10,28,33,2,NULL),(11,30,33,2,NULL),(12,33,33,2,NULL),(13,35,33,2,NULL),(14,38,33,2,NULL),(15,40,33,2,NULL),(16,26,33,2,NULL),(17,29,33,2,NULL),(18,31,33,2,NULL),(19,34,33,2,NULL),(20,36,33,2,NULL),(21,39,33,2,NULL),(22,41,33,2,NULL),(23,43,33,2,NULL),(24,20,33,2,NULL),(25,47,33,2,NULL),(26,42,33,2,NULL),(27,45,33,2,NULL),(28,46,33,2,NULL),(29,49,33,2,NULL),(30,51,33,2,NULL),(31,53,33,2,NULL),(32,54,33,2,NULL),(33,56,33,2,NULL),(34,32,33,2,NULL),(35,72,33,2,NULL),(36,79,33,2,NULL),(37,67,33,2,NULL),(38,68,33,2,NULL),(39,69,33,2,NULL),(40,73,33,2,NULL),(41,75,33,2,NULL),(42,77,33,2,NULL),(43,86,33,2,NULL),(44,87,33,2,NULL),(45,89,33,2,NULL),(46,91,33,2,NULL),(47,93,33,2,NULL),(48,95,33,2,NULL),(49,97,33,2,NULL),(50,99,33,2,NULL),(51,100,33,2,NULL),(52,62,33,2,NULL),(53,101,33,2,NULL),(54,64,33,2,NULL),(55,65,33,2,NULL),(56,66,33,2,NULL),(57,74,33,2,NULL),(58,76,33,2,NULL),(59,78,33,2,NULL),(60,82,33,2,NULL),(61,83,33,2,NULL),(62,85,33,2,NULL),(63,88,33,2,NULL),(64,90,33,2,NULL),(65,92,33,2,NULL),(66,94,33,2,NULL),(67,96,33,2,NULL),(68,98,33,2,NULL),(69,102,43,2,NULL),(70,62,1,2,NULL),(71,101,1,2,NULL),(72,62,2,2,NULL),(73,101,2,2,NULL),(74,62,3,2,NULL),(75,101,3,2,NULL),(76,62,4,2,NULL),(77,101,4,2,NULL),(78,62,5,2,NULL),(79,101,5,2,NULL),(80,62,51,2,NULL),(81,101,51,2,NULL),(82,62,13,2,NULL),(83,101,13,2,NULL),(84,62,52,2,NULL),(85,101,52,2,NULL),(86,62,21,2,NULL),(87,101,21,2,NULL),(88,62,29,2,NULL),(89,101,29,2,NULL),(90,62,30,2,NULL),(91,101,30,2,NULL),(92,62,31,2,NULL),(93,101,31,2,NULL),(94,62,32,2,NULL),(95,101,32,2,NULL),(96,62,56,2,NULL),(97,101,56,2,NULL),(98,62,58,2,NULL),(99,101,58,2,NULL),(100,62,57,2,NULL),(101,101,57,2,NULL),(102,62,53,2,NULL),(103,101,53,2,NULL),(104,62,54,2,NULL),(105,101,54,2,NULL),(106,62,55,2,NULL),(107,101,55,2,NULL),(108,62,60,2,NULL),(109,101,60,2,NULL),(110,62,63,2,NULL),(111,101,63,2,NULL),(112,62,44,2,NULL),(113,101,44,2,NULL),(114,62,45,2,NULL),(115,101,45,2,NULL),(116,62,46,2,NULL),(117,101,46,2,NULL),(118,62,47,2,NULL),(119,101,47,2,NULL),(120,62,66,2,NULL),(121,101,66,2,NULL),(122,62,68,2,NULL),(123,101,68,2,NULL),(124,62,67,2,NULL),(125,101,67,2,NULL),(126,62,59,2,NULL),(127,101,59,2,NULL),(128,62,61,2,NULL),(129,101,61,2,NULL),(130,62,62,2,NULL),(131,101,62,2,NULL),(132,62,64,2,NULL),(133,101,64,2,NULL),(134,62,65,2,NULL),(135,101,65,2,NULL),(136,62,69,2,NULL),(137,101,69,2,NULL),(138,4,44,2,NULL),(139,5,44,2,NULL),(140,24,44,2,NULL),(141,25,44,2,NULL),(142,28,44,2,NULL),(143,30,44,2,NULL),(144,33,44,2,NULL),(145,35,44,2,NULL),(146,38,44,2,NULL),(147,40,44,2,NULL),(148,26,44,2,NULL),(149,29,44,2,NULL),(150,31,44,2,NULL),(151,34,44,2,NULL),(152,36,44,2,NULL),(153,39,44,2,NULL),(154,41,44,2,NULL),(155,43,44,2,NULL),(156,20,44,2,NULL),(157,47,44,2,NULL),(158,42,44,2,NULL),(159,45,44,2,NULL),(160,46,44,2,NULL),(161,49,44,2,NULL),(162,51,44,2,NULL),(163,53,44,2,NULL),(164,54,44,2,NULL),(165,56,44,2,NULL),(166,32,44,2,NULL),(167,72,44,2,NULL),(168,79,44,2,NULL),(169,67,44,2,NULL),(170,68,44,2,NULL),(171,69,44,2,NULL),(172,73,44,2,NULL),(173,75,44,2,NULL),(174,77,44,2,NULL),(175,86,44,2,NULL),(176,87,44,2,NULL),(177,89,44,2,NULL),(178,91,44,2,NULL),(179,93,44,2,NULL),(180,95,44,2,NULL),(181,97,44,2,NULL),(182,99,44,2,NULL),(183,100,44,2,NULL),(184,64,44,2,NULL),(185,65,44,2,NULL),(186,66,44,2,NULL),(187,74,44,2,NULL),(188,76,44,2,NULL),(189,78,44,2,NULL),(190,82,44,2,NULL),(191,83,44,2,NULL),(192,85,44,2,NULL),(193,88,44,2,NULL),(194,90,44,2,NULL),(195,92,44,2,NULL),(196,94,44,2,NULL),(197,96,44,2,NULL),(198,98,44,2,NULL),(199,4,45,2,NULL),(200,5,45,2,NULL),(201,24,45,2,NULL),(202,25,45,2,NULL),(203,28,45,2,NULL),(204,30,45,2,NULL),(205,33,45,2,NULL),(206,35,45,2,NULL),(207,38,45,2,NULL),(208,40,45,2,NULL),(209,26,45,2,NULL),(210,29,45,2,NULL),(211,31,45,2,NULL),(212,34,45,2,NULL),(213,36,45,2,NULL),(214,39,45,2,NULL),(215,41,45,2,NULL),(216,43,45,2,NULL),(217,20,45,2,NULL),(218,47,45,2,NULL),(219,42,45,2,NULL),(220,45,45,2,NULL),(221,46,45,2,NULL),(222,49,45,2,NULL),(223,51,45,2,NULL),(224,53,45,2,NULL),(225,54,45,2,NULL),(226,56,45,2,NULL),(227,32,45,2,NULL),(228,72,45,2,NULL),(229,79,45,2,NULL),(230,67,45,2,NULL),(231,68,45,2,NULL),(232,69,45,2,NULL),(233,73,45,2,NULL),(234,75,45,2,NULL),(235,77,45,2,NULL),(236,86,45,2,NULL),(237,87,45,2,NULL),(238,89,45,2,NULL),(239,91,45,2,NULL),(240,93,45,2,NULL),(241,95,45,2,NULL),(242,97,45,2,NULL),(243,99,45,2,NULL),(244,100,45,2,NULL),(245,64,45,2,NULL),(246,65,45,2,NULL),(247,66,45,2,NULL),(248,74,45,2,NULL),(249,76,45,2,NULL),(250,78,45,2,NULL),(251,82,45,2,NULL),(252,83,45,2,NULL),(253,85,45,2,NULL),(254,88,45,2,NULL),(255,90,45,2,NULL),(256,92,45,2,NULL),(257,94,45,2,NULL),(258,96,45,2,NULL),(259,98,45,2,NULL),(260,4,46,2,NULL),(261,5,46,2,NULL),(262,24,46,2,NULL),(263,25,46,2,NULL),(264,28,46,2,NULL),(265,30,46,2,NULL),(266,33,46,2,NULL),(267,35,46,2,NULL),(268,38,46,2,NULL),(269,40,46,2,NULL),(270,26,46,2,NULL),(271,29,46,2,NULL),(272,31,46,2,NULL),(273,34,46,2,NULL),(274,36,46,2,NULL),(275,39,46,2,NULL),(276,41,46,2,NULL),(277,43,46,2,NULL),(278,20,46,2,NULL),(279,47,46,2,NULL),(280,42,46,2,NULL),(281,45,46,2,NULL),(282,46,46,2,NULL),(283,49,46,2,NULL),(284,51,46,2,NULL),(285,53,46,2,NULL),(286,54,46,2,NULL),(287,56,46,2,NULL),(288,32,46,2,NULL),(289,72,46,2,NULL),(290,79,46,2,NULL),(291,67,46,2,NULL),(292,68,46,2,NULL),(293,69,46,2,NULL),(294,73,46,2,NULL),(295,75,46,2,NULL),(296,77,46,2,NULL),(297,86,46,2,NULL),(298,87,46,2,NULL),(299,89,46,2,NULL),(300,91,46,2,NULL),(301,93,46,2,NULL),(302,95,46,2,NULL),(303,97,46,2,NULL),(304,99,46,2,NULL),(305,100,46,2,NULL),(306,64,46,2,NULL),(307,65,46,2,NULL),(308,66,46,2,NULL),(309,74,46,2,NULL),(310,76,46,2,NULL),(311,78,46,2,NULL),(312,82,46,2,NULL),(313,83,46,2,NULL),(314,85,46,2,NULL),(315,88,46,2,NULL),(316,90,46,2,NULL),(317,92,46,2,NULL),(318,94,46,2,NULL),(319,96,46,2,NULL),(320,98,46,2,NULL),(321,4,47,2,NULL),(322,5,47,2,NULL),(323,24,47,2,NULL),(324,25,47,2,NULL),(325,28,47,2,NULL),(326,30,47,2,NULL),(327,33,47,2,NULL),(328,35,47,2,NULL),(329,38,47,2,NULL),(330,40,47,2,NULL),(331,26,47,2,NULL),(332,29,47,2,NULL),(333,31,47,2,NULL),(334,34,47,2,NULL),(335,36,47,2,NULL),(336,39,47,2,NULL),(337,41,47,2,NULL),(338,43,47,2,NULL),(339,20,47,2,NULL),(340,47,47,2,NULL),(341,42,47,2,NULL),(342,45,47,2,NULL),(343,46,47,2,NULL),(344,49,47,2,NULL),(345,51,47,2,NULL),(346,53,47,2,NULL),(347,54,47,2,NULL),(348,56,47,2,NULL),(349,32,47,2,NULL),(350,72,47,2,NULL),(351,79,47,2,NULL),(352,67,47,2,NULL),(353,68,47,2,NULL),(354,69,47,2,NULL),(355,73,47,2,NULL),(356,75,47,2,NULL),(357,77,47,2,NULL),(358,86,47,2,NULL),(359,87,47,2,NULL),(360,89,47,2,NULL),(361,91,47,2,NULL),(362,93,47,2,NULL),(363,95,47,2,NULL),(364,97,47,2,NULL),(365,99,47,2,NULL),(366,100,47,2,NULL),(367,64,47,2,NULL),(368,65,47,2,NULL),(369,66,47,2,NULL),(370,74,47,2,NULL),(371,76,47,2,NULL),(372,78,47,2,NULL),(373,82,47,2,NULL),(374,83,47,2,NULL),(375,85,47,2,NULL),(376,88,47,2,NULL),(377,90,47,2,NULL),(378,92,47,2,NULL),(379,94,47,2,NULL),(380,96,47,2,NULL),(381,98,47,2,NULL),(382,64,1,2,NULL),(383,65,1,2,NULL),(384,66,1,2,NULL),(385,64,2,2,NULL),(386,65,2,2,NULL),(387,66,2,2,NULL),(388,64,3,2,NULL),(389,65,3,2,NULL),(390,66,3,2,NULL),(391,64,4,2,NULL),(392,65,4,2,NULL),(393,66,4,2,NULL),(394,64,5,2,NULL),(395,65,5,2,NULL),(396,66,5,2,NULL),(397,64,51,2,NULL),(398,65,51,2,NULL),(399,66,51,2,NULL),(400,64,13,2,NULL),(401,65,13,2,NULL),(402,66,13,2,NULL),(403,64,52,2,NULL),(404,65,52,2,NULL),(405,66,52,2,NULL),(406,64,21,2,NULL),(407,65,21,2,NULL),(408,66,21,2,NULL),(409,64,29,2,NULL),(410,65,29,2,NULL),(411,66,29,2,NULL),(412,64,30,2,NULL),(413,65,30,2,NULL),(414,66,30,2,NULL),(415,64,31,2,NULL),(416,65,31,2,NULL),(417,66,31,2,NULL),(418,64,32,2,NULL),(419,65,32,2,NULL),(420,66,32,2,NULL),(421,64,56,2,NULL),(422,65,56,2,NULL),(423,66,56,2,NULL),(424,64,58,2,NULL),(425,65,58,2,NULL),(426,66,58,2,NULL),(427,64,57,2,NULL),(428,65,57,2,NULL),(429,66,57,2,NULL),(430,64,53,2,NULL),(431,65,53,2,NULL),(432,66,53,2,NULL),(433,64,54,2,NULL),(434,65,54,2,NULL),(435,66,54,2,NULL),(436,64,55,2,NULL),(437,65,55,2,NULL),(438,66,55,2,NULL),(439,64,60,2,NULL),(440,65,60,2,NULL),(441,66,60,2,NULL),(442,64,63,2,NULL),(443,65,63,2,NULL),(444,66,63,2,NULL),(445,64,68,2,NULL),(446,65,68,2,NULL),(447,66,68,2,NULL),(448,64,67,2,NULL),(449,65,67,2,NULL),(450,66,67,2,NULL),(451,64,59,2,NULL),(452,65,59,2,NULL),(453,66,59,2,NULL),(454,64,61,2,NULL),(455,65,61,2,NULL),(456,66,61,2,NULL),(457,64,62,2,NULL),(458,65,62,2,NULL),(459,66,62,2,NULL),(460,64,64,2,NULL),(461,65,64,2,NULL),(462,66,64,2,NULL),(463,64,65,2,NULL),(464,65,65,2,NULL),(465,66,65,2,NULL),(466,64,69,2,NULL),(467,65,69,2,NULL),(468,66,69,2,NULL),(469,4,66,2,NULL),(470,5,66,2,NULL),(471,24,66,2,NULL),(472,25,66,2,NULL),(473,28,66,2,NULL),(474,30,66,2,NULL),(475,33,66,2,NULL),(476,35,66,2,NULL),(477,38,66,2,NULL),(478,40,66,2,NULL),(479,26,66,2,NULL),(480,29,66,2,NULL),(481,31,66,2,NULL),(482,34,66,2,NULL),(483,36,66,2,NULL),(484,39,66,2,NULL),(485,41,66,2,NULL),(486,43,66,2,NULL),(487,20,66,2,NULL),(488,47,66,2,NULL),(489,42,66,2,NULL),(490,45,66,2,NULL),(491,46,66,2,NULL),(492,49,66,2,NULL),(493,51,66,2,NULL),(494,53,66,2,NULL),(495,54,66,2,NULL),(496,56,66,2,NULL),(497,32,66,2,NULL),(498,72,66,2,NULL),(499,79,66,2,NULL),(500,67,66,2,NULL),(501,68,66,2,NULL),(502,69,66,2,NULL),(503,73,66,2,NULL),(504,75,66,2,NULL),(505,77,66,2,NULL),(506,86,66,2,NULL),(507,87,66,2,NULL),(508,89,66,2,NULL),(509,91,66,2,NULL),(510,93,66,2,NULL),(511,95,66,2,NULL),(512,97,66,2,NULL),(513,99,66,2,NULL),(514,100,66,2,NULL),(515,74,66,2,NULL),(516,76,66,2,NULL),(517,78,66,2,NULL),(518,82,66,2,NULL),(519,83,66,2,NULL),(520,85,66,2,NULL),(521,88,66,2,NULL),(522,90,66,2,NULL),(523,92,66,2,NULL),(524,94,66,2,NULL),(525,96,66,2,NULL),(526,98,66,2,NULL),(527,74,1,2,NULL),(528,76,1,2,NULL),(529,78,1,2,NULL),(530,74,2,2,NULL),(531,76,2,2,NULL),(532,78,2,2,NULL),(533,74,3,2,NULL),(534,76,3,2,NULL),(535,78,3,2,NULL),(536,74,4,2,NULL),(537,76,4,2,NULL),(538,78,4,2,NULL),(539,74,5,2,NULL),(540,76,5,2,NULL),(541,78,5,2,NULL),(542,74,51,2,NULL),(543,76,51,2,NULL),(544,78,51,2,NULL),(545,74,13,2,NULL),(546,76,13,2,NULL),(547,78,13,2,NULL),(548,74,52,2,NULL),(549,76,52,2,NULL),(550,78,52,2,NULL),(551,74,21,2,NULL),(552,76,21,2,NULL),(553,78,21,2,NULL),(554,74,29,2,NULL),(555,76,29,2,NULL),(556,78,29,2,NULL),(557,74,30,2,NULL),(558,76,30,2,NULL),(559,78,30,2,NULL),(560,74,31,2,NULL),(561,76,31,2,NULL),(562,78,31,2,NULL),(563,74,32,2,NULL),(564,76,32,2,NULL),(565,78,32,2,NULL),(566,74,56,2,NULL),(567,76,56,2,NULL),(568,78,56,2,NULL),(569,74,58,2,NULL),(570,76,58,2,NULL),(571,78,58,2,NULL),(572,74,57,2,NULL),(573,76,57,2,NULL),(574,78,57,2,NULL),(575,74,53,2,NULL),(576,76,53,2,NULL),(577,78,53,2,NULL),(578,74,54,2,NULL),(579,76,54,2,NULL),(580,78,54,2,NULL),(581,74,55,2,NULL),(582,76,55,2,NULL),(583,78,55,2,NULL),(584,74,60,2,NULL),(585,76,60,2,NULL),(586,78,60,2,NULL),(587,74,63,2,NULL),(588,76,63,2,NULL),(589,78,63,2,NULL),(590,74,67,2,NULL),(591,76,67,2,NULL),(592,78,67,2,NULL),(593,74,59,2,NULL),(594,76,59,2,NULL),(595,78,59,2,NULL),(596,74,61,2,NULL),(597,76,61,2,NULL),(598,78,61,2,NULL),(599,74,62,2,NULL),(600,76,62,2,NULL),(601,78,62,2,NULL),(602,74,64,2,NULL),(603,76,64,2,NULL),(604,78,64,2,NULL),(605,74,65,2,NULL),(606,76,65,2,NULL),(607,78,65,2,NULL),(608,74,69,2,NULL),(609,76,69,2,NULL),(610,78,69,2,NULL),(611,4,68,2,NULL),(612,5,68,2,NULL),(613,24,68,2,NULL),(614,25,68,2,NULL),(615,28,68,2,NULL),(616,30,68,2,NULL),(617,33,68,2,NULL),(618,35,68,2,NULL),(619,38,68,2,NULL),(620,40,68,2,NULL),(621,26,68,2,NULL),(622,29,68,2,NULL),(623,31,68,2,NULL),(624,34,68,2,NULL),(625,36,68,2,NULL),(626,39,68,2,NULL),(627,41,68,2,NULL),(628,43,68,2,NULL),(629,20,68,2,NULL),(630,47,68,2,NULL),(631,42,68,2,NULL),(632,45,68,2,NULL),(633,46,68,2,NULL),(634,49,68,2,NULL),(635,51,68,2,NULL),(636,53,68,2,NULL),(637,54,68,2,NULL),(638,56,68,2,NULL),(639,32,68,2,NULL),(640,72,68,2,NULL),(641,79,68,2,NULL),(642,67,68,2,NULL),(643,68,68,2,NULL),(644,69,68,2,NULL),(645,73,68,2,NULL),(646,75,68,2,NULL),(647,77,68,2,NULL),(648,86,68,2,NULL),(649,87,68,2,NULL),(650,89,68,2,NULL),(651,91,68,2,NULL),(652,93,68,2,NULL),(653,95,68,2,NULL),(654,97,68,2,NULL),(655,99,68,2,NULL),(656,100,68,2,NULL),(657,82,68,2,NULL),(658,83,68,2,NULL),(659,85,68,2,NULL),(660,88,68,2,NULL),(661,90,68,2,NULL),(662,92,68,2,NULL),(663,94,68,2,NULL),(664,96,68,2,NULL),(665,98,68,2,NULL),(666,82,1,2,NULL),(667,83,1,2,NULL),(668,85,1,2,NULL),(669,88,1,2,NULL),(670,90,1,2,NULL),(671,92,1,2,NULL),(672,94,1,2,NULL),(673,96,1,2,NULL),(674,98,1,2,NULL),(675,82,2,2,NULL),(676,83,2,2,NULL),(677,85,2,2,NULL),(678,88,2,2,NULL),(679,90,2,2,NULL),(680,92,2,2,NULL),(681,94,2,2,NULL),(682,96,2,2,NULL),(683,98,2,2,NULL),(684,82,3,2,NULL),(685,83,3,2,NULL),(686,85,3,2,NULL),(687,88,3,2,NULL),(688,90,3,2,NULL),(689,92,3,2,NULL),(690,94,3,2,NULL),(691,96,3,2,NULL),(692,98,3,2,NULL),(693,82,4,2,NULL),(694,83,4,2,NULL),(695,85,4,2,NULL),(696,88,4,2,NULL),(697,90,4,2,NULL),(698,92,4,2,NULL),(699,94,4,2,NULL),(700,96,4,2,NULL),(701,98,4,2,NULL),(702,82,5,2,NULL),(703,83,5,2,NULL),(704,85,5,2,NULL),(705,88,5,2,NULL),(706,90,5,2,NULL),(707,92,5,2,NULL),(708,94,5,2,NULL),(709,96,5,2,NULL),(710,98,5,2,NULL),(711,82,51,2,NULL),(712,83,51,2,NULL),(713,85,51,2,NULL),(714,88,51,2,NULL),(715,90,51,2,NULL),(716,92,51,2,NULL),(717,94,51,2,NULL),(718,96,51,2,NULL),(719,98,51,2,NULL),(720,82,13,2,NULL),(721,83,13,2,NULL),(722,85,13,2,NULL),(723,88,13,2,NULL),(724,90,13,2,NULL),(725,92,13,2,NULL),(726,94,13,2,NULL),(727,96,13,2,NULL),(728,98,13,2,NULL),(729,82,52,2,NULL),(730,83,52,2,NULL),(731,85,52,2,NULL),(732,88,52,2,NULL),(733,90,52,2,NULL),(734,92,52,2,NULL),(735,94,52,2,NULL),(736,96,52,2,NULL),(737,98,52,2,NULL),(738,82,21,2,NULL),(739,83,21,2,NULL),(740,85,21,2,NULL),(741,88,21,2,NULL),(742,90,21,2,NULL),(743,92,21,2,NULL),(744,94,21,2,NULL),(745,96,21,2,NULL),(746,98,21,2,NULL),(747,82,29,2,NULL),(748,83,29,2,NULL),(749,85,29,2,NULL),(750,88,29,2,NULL),(751,90,29,2,NULL),(752,92,29,2,NULL),(753,94,29,2,NULL),(754,96,29,2,NULL),(755,98,29,2,NULL),(756,82,30,2,NULL),(757,83,30,2,NULL),(758,85,30,2,NULL),(759,88,30,2,NULL),(760,90,30,2,NULL),(761,92,30,2,NULL),(762,94,30,2,NULL),(763,96,30,2,NULL),(764,98,30,2,NULL),(765,82,31,2,NULL),(766,83,31,2,NULL),(767,85,31,2,NULL),(768,88,31,2,NULL),(769,90,31,2,NULL),(770,92,31,2,NULL),(771,94,31,2,NULL),(772,96,31,2,NULL),(773,98,31,2,NULL),(774,82,32,2,NULL),(775,83,32,2,NULL),(776,85,32,2,NULL),(777,88,32,2,NULL),(778,90,32,2,NULL),(779,92,32,2,NULL),(780,94,32,2,NULL),(781,96,32,2,NULL),(782,98,32,2,NULL),(783,82,56,2,NULL),(784,83,56,2,NULL),(785,85,56,2,NULL),(786,88,56,2,NULL),(787,90,56,2,NULL),(788,92,56,2,NULL),(789,94,56,2,NULL),(790,96,56,2,NULL),(791,98,56,2,NULL),(792,82,58,2,NULL),(793,83,58,2,NULL),(794,85,58,2,NULL),(795,88,58,2,NULL),(796,90,58,2,NULL),(797,92,58,2,NULL),(798,94,58,2,NULL),(799,96,58,2,NULL),(800,98,58,2,NULL),(801,82,57,2,NULL),(802,83,57,2,NULL),(803,85,57,2,NULL),(804,88,57,2,NULL),(805,90,57,2,NULL),(806,92,57,2,NULL),(807,94,57,2,NULL),(808,96,57,2,NULL),(809,98,57,2,NULL),(810,82,53,2,NULL),(811,83,53,2,NULL),(812,85,53,2,NULL),(813,88,53,2,NULL),(814,90,53,2,NULL),(815,92,53,2,NULL),(816,94,53,2,NULL),(817,96,53,2,NULL),(818,98,53,2,NULL),(819,82,54,2,NULL),(820,83,54,2,NULL),(821,85,54,2,NULL),(822,88,54,2,NULL),(823,90,54,2,NULL),(824,92,54,2,NULL),(825,94,54,2,NULL),(826,96,54,2,NULL),(827,98,54,2,NULL),(828,82,55,2,NULL),(829,83,55,2,NULL),(830,85,55,2,NULL),(831,88,55,2,NULL),(832,90,55,2,NULL),(833,92,55,2,NULL),(834,94,55,2,NULL),(835,96,55,2,NULL),(836,98,55,2,NULL),(837,82,60,2,NULL),(838,83,60,2,NULL),(839,85,60,2,NULL),(840,88,60,2,NULL),(841,90,60,2,NULL),(842,92,60,2,NULL),(843,94,60,2,NULL),(844,96,60,2,NULL),(845,98,60,2,NULL),(846,82,63,2,NULL),(847,83,63,2,NULL),(848,85,63,2,NULL),(849,88,63,2,NULL),(850,90,63,2,NULL),(851,92,63,2,NULL),(852,94,63,2,NULL),(853,96,63,2,NULL),(854,98,63,2,NULL),(855,82,59,2,NULL),(856,83,59,2,NULL),(857,85,59,2,NULL),(858,88,59,2,NULL),(859,90,59,2,NULL),(860,92,59,2,NULL),(861,94,59,2,NULL),(862,96,59,2,NULL),(863,98,59,2,NULL),(864,82,61,2,NULL),(865,83,61,2,NULL),(866,85,61,2,NULL),(867,88,61,2,NULL),(868,90,61,2,NULL),(869,92,61,2,NULL),(870,94,61,2,NULL),(871,96,61,2,NULL),(872,98,61,2,NULL),(873,82,62,2,NULL),(874,83,62,2,NULL),(875,85,62,2,NULL),(876,88,62,2,NULL),(877,90,62,2,NULL),(878,92,62,2,NULL),(879,94,62,2,NULL),(880,96,62,2,NULL),(881,98,62,2,NULL),(882,82,64,2,NULL),(883,83,64,2,NULL),(884,85,64,2,NULL),(885,88,64,2,NULL),(886,90,64,2,NULL),(887,92,64,2,NULL),(888,94,64,2,NULL),(889,96,64,2,NULL),(890,98,64,2,NULL),(891,82,65,2,NULL),(892,83,65,2,NULL),(893,85,65,2,NULL),(894,88,65,2,NULL),(895,90,65,2,NULL),(896,92,65,2,NULL),(897,94,65,2,NULL),(898,96,65,2,NULL),(899,98,65,2,NULL),(900,82,69,2,NULL),(901,83,69,2,NULL),(902,85,69,2,NULL),(903,88,69,2,NULL),(904,90,69,2,NULL),(905,92,69,2,NULL),(906,94,69,2,NULL),(907,96,69,2,NULL),(908,98,69,2,NULL),(909,4,67,2,NULL),(910,5,67,2,NULL),(911,24,67,2,NULL),(912,25,67,2,NULL),(913,28,67,2,NULL),(914,30,67,2,NULL),(915,33,67,2,NULL),(916,35,67,2,NULL),(917,38,67,2,NULL),(918,40,67,2,NULL),(919,26,67,2,NULL),(920,29,67,2,NULL),(921,31,67,2,NULL),(922,34,67,2,NULL),(923,36,67,2,NULL),(924,39,67,2,NULL),(925,41,67,2,NULL),(926,43,67,2,NULL),(927,20,67,2,NULL),(928,47,67,2,NULL),(929,42,67,2,NULL),(930,45,67,2,NULL),(931,46,67,2,NULL),(932,49,67,2,NULL),(933,51,67,2,NULL),(934,53,67,2,NULL),(935,54,67,2,NULL),(936,56,67,2,NULL),(937,32,67,2,NULL),(938,72,67,2,NULL),(939,79,67,2,NULL),(940,67,67,2,NULL),(941,68,67,2,NULL),(942,69,67,2,NULL),(943,73,67,2,NULL),(944,75,67,2,NULL),(945,77,67,2,NULL),(946,86,67,2,NULL),(947,87,67,2,NULL),(948,89,67,2,NULL),(949,91,67,2,NULL),(950,93,67,2,NULL),(951,95,67,2,NULL),(952,97,67,2,NULL),(953,99,67,2,NULL),(954,100,67,2,NULL),(955,4,59,2,NULL),(956,5,59,2,NULL),(957,24,59,2,NULL),(958,25,59,2,NULL),(959,28,59,2,NULL),(960,30,59,2,NULL),(961,33,59,2,NULL),(962,35,59,2,NULL),(963,38,59,2,NULL),(964,40,59,2,NULL),(965,26,59,2,NULL),(966,29,59,2,NULL),(967,31,59,2,NULL),(968,34,59,2,NULL),(969,36,59,2,NULL),(970,39,59,2,NULL),(971,41,59,2,NULL),(972,43,59,2,NULL),(973,20,59,2,NULL),(974,47,59,2,NULL),(975,42,59,2,NULL),(976,45,59,2,NULL),(977,46,59,2,NULL),(978,49,59,2,NULL),(979,51,59,2,NULL),(980,53,59,2,NULL),(981,54,59,2,NULL),(982,56,59,2,NULL),(983,32,59,2,NULL),(984,72,59,2,NULL),(985,79,59,2,NULL),(986,67,59,2,NULL),(987,68,59,2,NULL),(988,69,59,2,NULL),(989,73,59,2,NULL),(990,75,59,2,NULL),(991,77,59,2,NULL),(992,86,59,2,NULL),(993,87,59,2,NULL),(994,89,59,2,NULL),(995,91,59,2,NULL),(996,93,59,2,NULL),(997,95,59,2,NULL),(998,97,59,2,NULL),(999,99,59,2,NULL),(1000,100,59,2,NULL),(1001,4,61,2,NULL),(1002,5,61,2,NULL),(1003,24,61,2,NULL),(1004,25,61,2,NULL),(1005,28,61,2,NULL),(1006,30,61,2,NULL),(1007,33,61,2,NULL),(1008,35,61,2,NULL),(1009,38,61,2,NULL),(1010,40,61,2,NULL),(1011,26,61,2,NULL),(1012,29,61,2,NULL),(1013,31,61,2,NULL),(1014,34,61,2,NULL),(1015,36,61,2,NULL),(1016,39,61,2,NULL),(1017,41,61,2,NULL),(1018,43,61,2,NULL),(1019,20,61,2,NULL),(1020,47,61,2,NULL),(1021,42,61,2,NULL),(1022,45,61,2,NULL),(1023,46,61,2,NULL),(1024,49,61,2,NULL),(1025,51,61,2,NULL),(1026,53,61,2,NULL),(1027,54,61,2,NULL),(1028,56,61,2,NULL),(1029,32,61,2,NULL),(1030,72,61,2,NULL),(1031,79,61,2,NULL),(1032,67,61,2,NULL),(1033,68,61,2,NULL),(1034,69,61,2,NULL),(1035,73,61,2,NULL),(1036,75,61,2,NULL),(1037,77,61,2,NULL),(1038,86,61,2,NULL),(1039,87,61,2,NULL),(1040,89,61,2,NULL),(1041,91,61,2,NULL),(1042,93,61,2,NULL),(1043,95,61,2,NULL),(1044,97,61,2,NULL),(1045,99,61,2,NULL),(1046,100,61,2,NULL),(1047,4,62,2,NULL),(1048,5,62,2,NULL),(1049,24,62,2,NULL),(1050,25,62,2,NULL),(1051,28,62,2,NULL),(1052,30,62,2,NULL),(1053,33,62,2,NULL),(1054,35,62,2,NULL),(1055,38,62,2,NULL),(1056,40,62,2,NULL),(1057,26,62,2,NULL),(1058,29,62,2,NULL),(1059,31,62,2,NULL),(1060,34,62,2,NULL),(1061,36,62,2,NULL),(1062,39,62,2,NULL),(1063,41,62,2,NULL),(1064,43,62,2,NULL),(1065,20,62,2,NULL),(1066,47,62,2,NULL),(1067,42,62,2,NULL),(1068,45,62,2,NULL),(1069,46,62,2,NULL),(1070,49,62,2,NULL),(1071,51,62,2,NULL),(1072,53,62,2,NULL),(1073,54,62,2,NULL),(1074,56,62,2,NULL),(1075,32,62,2,NULL),(1076,72,62,2,NULL),(1077,79,62,2,NULL),(1078,67,62,2,NULL),(1079,68,62,2,NULL),(1080,69,62,2,NULL),(1081,73,62,2,NULL),(1082,75,62,2,NULL),(1083,77,62,2,NULL),(1084,86,62,2,NULL),(1085,87,62,2,NULL),(1086,89,62,2,NULL),(1087,91,62,2,NULL),(1088,93,62,2,NULL),(1089,95,62,2,NULL),(1090,97,62,2,NULL),(1091,99,62,2,NULL),(1092,100,62,2,NULL),(1093,4,64,2,NULL),(1094,5,64,2,NULL),(1095,24,64,2,NULL),(1096,25,64,2,NULL),(1097,28,64,2,NULL),(1098,30,64,2,NULL),(1099,33,64,2,NULL),(1100,35,64,2,NULL),(1101,38,64,2,NULL),(1102,40,64,2,NULL),(1103,26,64,2,NULL),(1104,29,64,2,NULL),(1105,31,64,2,NULL),(1106,34,64,2,NULL),(1107,36,64,2,NULL),(1108,39,64,2,NULL),(1109,41,64,2,NULL),(1110,43,64,2,NULL),(1111,20,64,2,NULL),(1112,47,64,2,NULL),(1113,42,64,2,NULL),(1114,45,64,2,NULL),(1115,46,64,2,NULL),(1116,49,64,2,NULL),(1117,51,64,2,NULL),(1118,53,64,2,NULL),(1119,54,64,2,NULL),(1120,56,64,2,NULL),(1121,32,64,2,NULL),(1122,72,64,2,NULL),(1123,79,64,2,NULL),(1124,67,64,2,NULL),(1125,68,64,2,NULL),(1126,69,64,2,NULL),(1127,73,64,2,NULL),(1128,75,64,2,NULL),(1129,77,64,2,NULL),(1130,86,64,2,NULL),(1131,87,64,2,NULL),(1132,89,64,2,NULL),(1133,91,64,2,NULL),(1134,93,64,2,NULL),(1135,95,64,2,NULL),(1136,97,64,2,NULL),(1137,99,64,2,NULL),(1138,100,64,2,NULL),(1139,4,65,2,NULL),(1140,5,65,2,NULL),(1141,24,65,2,NULL),(1142,25,65,2,NULL),(1143,28,65,2,NULL),(1144,30,65,2,NULL),(1145,33,65,2,NULL),(1146,35,65,2,NULL),(1147,38,65,2,NULL),(1148,40,65,2,NULL),(1149,26,65,2,NULL),(1150,29,65,2,NULL),(1151,31,65,2,NULL),(1152,34,65,2,NULL),(1153,36,65,2,NULL),(1154,39,65,2,NULL),(1155,41,65,2,NULL),(1156,43,65,2,NULL),(1157,20,65,2,NULL),(1158,47,65,2,NULL),(1159,42,65,2,NULL),(1160,45,65,2,NULL),(1161,46,65,2,NULL),(1162,49,65,2,NULL),(1163,51,65,2,NULL),(1164,53,65,2,NULL),(1165,54,65,2,NULL),(1166,56,65,2,NULL),(1167,32,65,2,NULL),(1168,72,65,2,NULL),(1169,79,65,2,NULL),(1170,67,65,2,NULL),(1171,68,65,2,NULL),(1172,69,65,2,NULL),(1173,73,65,2,NULL),(1174,75,65,2,NULL),(1175,77,65,2,NULL),(1176,86,65,2,NULL),(1177,87,65,2,NULL),(1178,89,65,2,NULL),(1179,91,65,2,NULL),(1180,93,65,2,NULL),(1181,95,65,2,NULL),(1182,97,65,2,NULL),(1183,99,65,2,NULL),(1184,100,65,2,NULL),(1185,4,69,2,NULL),(1186,5,69,2,NULL),(1187,24,69,2,NULL),(1188,25,69,2,NULL),(1189,28,69,2,NULL),(1190,30,69,2,NULL),(1191,33,69,2,NULL),(1192,35,69,2,NULL),(1193,38,69,2,NULL),(1194,40,69,2,NULL),(1195,26,69,2,NULL),(1196,29,69,2,NULL),(1197,31,69,2,NULL),(1198,34,69,2,NULL),(1199,36,69,2,NULL),(1200,39,69,2,NULL),(1201,41,69,2,NULL),(1202,43,69,2,NULL),(1203,20,69,2,NULL),(1204,47,69,2,NULL),(1205,42,69,2,NULL),(1206,45,69,2,NULL),(1207,46,69,2,NULL),(1208,49,69,2,NULL),(1209,51,69,2,NULL),(1210,53,69,2,NULL),(1211,54,69,2,NULL),(1212,56,69,2,NULL),(1213,32,69,2,NULL),(1214,72,69,2,NULL),(1215,79,69,2,NULL),(1216,67,69,2,NULL),(1217,68,69,2,NULL),(1218,69,69,2,NULL),(1219,73,69,2,NULL),(1220,75,69,2,NULL),(1221,77,69,2,NULL),(1222,86,69,2,NULL),(1223,87,69,2,NULL),(1224,89,69,2,NULL),(1225,91,69,2,NULL),(1226,93,69,2,NULL),(1227,95,69,2,NULL),(1228,97,69,2,NULL),(1229,99,69,2,NULL),(1230,100,69,2,NULL),(1231,13,6,2,NULL),(1232,13,14,2,NULL),(1233,17,6,2,NULL),(1234,17,14,2,NULL),(1235,4,5,2,NULL),(1236,5,5,2,NULL),(1237,24,5,2,NULL),(1238,25,5,2,NULL),(1239,28,5,2,NULL),(1240,30,5,2,NULL),(1241,33,5,2,NULL),(1242,35,5,2,NULL),(1243,38,5,2,NULL),(1244,40,5,2,NULL),(1245,26,5,2,NULL),(1246,29,5,2,NULL),(1247,31,5,2,NULL),(1248,34,5,2,NULL),(1249,36,5,2,NULL),(1250,39,5,2,NULL),(1251,41,5,2,NULL),(1252,43,5,2,NULL),(1253,20,5,2,NULL),(1254,47,5,2,NULL),(1255,42,5,2,NULL),(1256,45,5,2,NULL),(1257,46,5,2,NULL),(1258,49,5,2,NULL),(1259,51,5,2,NULL),(1260,53,5,2,NULL),(1261,54,5,2,NULL),(1262,56,5,2,NULL),(1263,32,5,2,NULL),(1264,72,5,2,NULL),(1265,79,5,2,NULL),(1266,67,5,2,NULL),(1267,68,5,2,NULL),(1268,69,5,2,NULL),(1269,73,5,2,NULL),(1270,75,5,2,NULL),(1271,77,5,2,NULL),(1272,86,5,2,NULL),(1273,87,5,2,NULL),(1274,89,5,2,NULL),(1275,91,5,2,NULL),(1276,93,5,2,NULL),(1277,95,5,2,NULL),(1278,97,5,2,NULL),(1279,99,5,2,NULL),(1280,100,5,2,NULL),(1281,14,11,2,NULL),(1282,14,19,2,NULL),(1283,15,11,2,NULL),(1284,15,19,2,NULL),(1285,18,12,2,NULL),(1286,18,20,2,NULL),(1287,19,10,2,NULL),(1288,19,18,2,NULL),(1289,22,10,2,NULL),(1290,22,18,2,NULL),(1291,44,9,2,NULL),(1292,44,17,2,NULL),(1293,48,7,2,NULL),(1294,48,15,2,NULL),(1295,50,7,2,NULL),(1296,50,15,2,NULL),(1297,52,12,2,NULL),(1298,52,20,2,NULL),(1299,55,9,2,NULL),(1300,55,17,2,NULL),(1301,24,1,2,NULL),(1302,25,1,2,NULL),(1303,28,1,2,NULL),(1304,30,1,2,NULL),(1305,33,1,2,NULL),(1306,35,1,2,NULL),(1307,38,1,2,NULL),(1308,40,1,2,NULL),(1309,26,1,2,NULL),(1310,29,1,2,NULL),(1311,31,1,2,NULL),(1312,34,1,2,NULL),(1313,36,1,2,NULL),(1314,39,1,2,NULL),(1315,41,1,2,NULL),(1316,43,1,2,NULL),(1317,24,2,2,NULL),(1318,25,2,2,NULL),(1319,28,2,2,NULL),(1320,30,2,2,NULL),(1321,33,2,2,NULL),(1322,35,2,2,NULL),(1323,38,2,2,NULL),(1324,40,2,2,NULL),(1325,26,2,2,NULL),(1326,29,2,2,NULL),(1327,31,2,2,NULL),(1328,34,2,2,NULL),(1329,36,2,2,NULL),(1330,39,2,2,NULL),(1331,41,2,2,NULL),(1332,43,2,2,NULL),(1333,24,3,2,NULL),(1334,25,3,2,NULL),(1335,28,3,2,NULL),(1336,30,3,2,NULL),(1337,33,3,2,NULL),(1338,35,3,2,NULL),(1339,38,3,2,NULL),(1340,40,3,2,NULL),(1341,26,3,2,NULL),(1342,29,3,2,NULL),(1343,31,3,2,NULL),(1344,34,3,2,NULL),(1345,36,3,2,NULL),(1346,39,3,2,NULL),(1347,41,3,2,NULL),(1348,43,3,2,NULL),(1349,24,4,2,NULL),(1350,25,4,2,NULL),(1351,28,4,2,NULL),(1352,30,4,2,NULL),(1353,33,4,2,NULL),(1354,35,4,2,NULL),(1355,38,4,2,NULL),(1356,40,4,2,NULL),(1357,26,4,2,NULL),(1358,29,4,2,NULL),(1359,31,4,2,NULL),(1360,34,4,2,NULL),(1361,36,4,2,NULL),(1362,39,4,2,NULL),(1363,41,4,2,NULL),(1364,43,4,2,NULL),(1365,24,51,2,NULL),(1366,25,51,2,NULL),(1367,28,51,2,NULL),(1368,30,51,2,NULL),(1369,33,51,2,NULL),(1370,35,51,2,NULL),(1371,38,51,2,NULL),(1372,40,51,2,NULL),(1373,26,51,2,NULL),(1374,29,51,2,NULL),(1375,31,51,2,NULL),(1376,34,51,2,NULL),(1377,36,51,2,NULL),(1378,39,51,2,NULL),(1379,41,51,2,NULL),(1380,43,51,2,NULL),(1381,24,13,2,NULL),(1382,25,13,2,NULL),(1383,28,13,2,NULL),(1384,30,13,2,NULL),(1385,33,13,2,NULL),(1386,35,13,2,NULL),(1387,38,13,2,NULL),(1388,40,13,2,NULL),(1389,26,13,2,NULL),(1390,29,13,2,NULL),(1391,31,13,2,NULL),(1392,34,13,2,NULL),(1393,36,13,2,NULL),(1394,39,13,2,NULL),(1395,41,13,2,NULL),(1396,43,13,2,NULL),(1397,24,52,2,NULL),(1398,25,52,2,NULL),(1399,28,52,2,NULL),(1400,30,52,2,NULL),(1401,33,52,2,NULL),(1402,35,52,2,NULL),(1403,38,52,2,NULL),(1404,40,52,2,NULL),(1405,26,52,2,NULL),(1406,29,52,2,NULL),(1407,31,52,2,NULL),(1408,34,52,2,NULL),(1409,36,52,2,NULL),(1410,39,52,2,NULL),(1411,41,52,2,NULL),(1412,43,52,2,NULL),(1413,24,21,2,NULL),(1414,25,21,2,NULL),(1415,28,21,2,NULL),(1416,30,21,2,NULL),(1417,33,21,2,NULL),(1418,35,21,2,NULL),(1419,38,21,2,NULL),(1420,40,21,2,NULL),(1421,26,21,2,NULL),(1422,29,21,2,NULL),(1423,31,21,2,NULL),(1424,34,21,2,NULL),(1425,36,21,2,NULL),(1426,39,21,2,NULL),(1427,41,21,2,NULL),(1428,43,21,2,NULL),(1429,24,29,2,NULL),(1430,25,29,2,NULL),(1431,28,29,2,NULL),(1432,30,29,2,NULL),(1433,33,29,2,NULL),(1434,35,29,2,NULL),(1435,38,29,2,NULL),(1436,40,29,2,NULL),(1437,26,29,2,NULL),(1438,29,29,2,NULL),(1439,31,29,2,NULL),(1440,34,29,2,NULL),(1441,36,29,2,NULL),(1442,39,29,2,NULL),(1443,41,29,2,NULL),(1444,43,29,2,NULL),(1445,24,30,2,NULL),(1446,25,30,2,NULL),(1447,28,30,2,NULL),(1448,30,30,2,NULL),(1449,33,30,2,NULL),(1450,35,30,2,NULL),(1451,38,30,2,NULL),(1452,40,30,2,NULL),(1453,26,30,2,NULL),(1454,29,30,2,NULL),(1455,31,30,2,NULL),(1456,34,30,2,NULL),(1457,36,30,2,NULL),(1458,39,30,2,NULL),(1459,41,30,2,NULL),(1460,43,30,2,NULL),(1461,24,31,2,NULL),(1462,25,31,2,NULL),(1463,28,31,2,NULL),(1464,30,31,2,NULL),(1465,33,31,2,NULL),(1466,35,31,2,NULL),(1467,38,31,2,NULL),(1468,40,31,2,NULL),(1469,1,4,2,NULL),(1470,26,31,2,NULL),(1471,2,3,2,NULL),(1472,29,31,2,NULL),(1473,3,2,2,NULL),(1474,31,31,2,NULL),(1475,7,4,2,NULL),(1476,34,31,2,NULL),(1477,8,3,2,NULL),(1478,36,31,2,NULL),(1479,10,2,2,NULL),(1480,39,31,2,NULL),(1481,4,2,2,NULL),(1482,41,31,2,NULL),(1483,5,2,2,NULL),(1484,43,31,2,NULL),(1485,4,3,2,NULL),(1486,24,32,2,NULL),(1487,5,3,2,NULL),(1488,25,32,2,NULL),(1489,4,4,2,NULL),(1490,28,32,2,NULL),(1491,5,4,2,NULL),(1492,30,32,2,NULL),(1493,33,32,2,NULL),(1494,20,1,2,NULL),(1495,35,32,2,NULL),(1496,47,1,2,NULL),(1497,38,32,2,NULL),(1498,4,51,2,NULL),(1499,40,32,2,NULL),(1500,5,51,2,NULL),(1501,26,32,2,NULL),(1502,4,13,2,NULL),(1503,29,32,2,NULL),(1504,5,13,2,NULL),(1505,31,32,2,NULL),(1506,42,1,2,NULL),(1507,34,32,2,NULL),(1508,45,1,2,NULL),(1509,36,32,2,NULL),(1510,46,1,2,NULL),(1511,39,32,2,NULL),(1512,49,1,2,NULL),(1513,41,32,2,NULL),(1514,51,1,2,NULL),(1515,43,32,2,NULL),(1516,53,1,2,NULL),(1517,24,56,2,NULL),(1518,54,1,2,NULL),(1519,25,56,2,NULL),(1520,56,1,2,NULL),(1521,28,56,2,NULL),(1522,32,1,2,NULL),(1523,30,56,2,NULL),(1524,4,52,2,NULL),(1525,33,56,2,NULL),(1526,5,52,2,NULL),(1527,35,56,2,NULL),(1528,4,21,2,NULL),(1529,38,56,2,NULL),(1530,5,21,2,NULL),(1531,40,56,2,NULL),(1532,72,1,2,NULL),(1533,26,56,2,NULL),(1534,79,1,2,NULL),(1535,29,56,2,NULL),(1536,4,29,2,NULL),(1537,31,56,2,NULL),(1538,5,29,2,NULL),(1539,34,56,2,NULL),(1540,4,30,2,NULL),(1541,36,56,2,NULL),(1542,5,30,2,NULL),(1543,39,56,2,NULL),(1544,4,31,2,NULL),(1545,41,56,2,NULL),(1546,5,31,2,NULL),(1547,43,56,2,NULL),(1548,4,32,2,NULL),(1549,24,58,2,NULL),(1550,5,32,2,NULL),(1551,25,58,2,NULL),(1552,67,1,2,NULL),(1553,28,58,2,NULL),(1554,68,1,2,NULL),(1555,30,58,2,NULL),(1556,69,1,2,NULL),(1557,33,58,2,NULL),(1558,61,23,2,NULL),(1559,4,56,2,NULL),(1560,35,58,2,NULL),(1561,61,37,2,NULL),(1562,5,56,2,NULL),(1563,38,58,2,NULL),(1564,81,24,2,NULL),(1565,73,1,2,NULL),(1566,40,58,2,NULL),(1567,81,39,2,NULL),(1568,75,1,2,NULL),(1569,26,58,2,NULL),(1570,84,22,2,NULL),(1571,77,1,2,NULL),(1572,29,58,2,NULL),(1573,20,21,2,NULL),(1574,4,58,2,NULL),(1575,31,58,2,NULL),(1576,5,58,2,NULL),(1577,47,21,2,NULL),(1578,34,58,2,NULL),(1579,42,21,2,NULL),(1580,86,1,2,NULL),(1581,36,58,2,NULL),(1582,45,21,2,NULL),(1583,39,58,2,NULL),(1584,87,1,2,NULL),(1585,46,21,2,NULL),(1586,41,58,2,NULL),(1587,89,1,2,NULL),(1588,49,21,2,NULL),(1589,43,58,2,NULL),(1590,91,1,2,NULL),(1591,51,21,2,NULL),(1592,24,57,2,NULL),(1593,93,1,2,NULL),(1594,53,21,2,NULL),(1595,25,57,2,NULL),(1596,95,1,2,NULL),(1597,54,21,2,NULL),(1598,28,57,2,NULL),(1599,97,1,2,NULL),(1600,56,21,2,NULL),(1601,30,57,2,NULL),(1602,99,1,2,NULL),(1603,32,21,2,NULL),(1604,33,57,2,NULL),(1605,100,1,2,NULL),(1606,72,21,2,NULL),(1607,35,57,2,NULL),(1608,4,57,2,NULL),(1609,79,21,2,NULL),(1610,38,57,2,NULL),(1611,5,57,2,NULL),(1612,67,21,2,NULL),(1613,40,57,2,NULL),(1614,4,53,2,NULL),(1615,68,21,2,NULL),(1616,26,57,2,NULL),(1617,5,53,2,NULL),(1618,69,21,2,NULL),(1619,4,54,2,NULL),(1620,29,57,2,NULL),(1621,73,21,2,NULL),(1622,31,57,2,NULL),(1623,5,54,2,NULL),(1624,75,21,2,NULL),(1625,34,57,2,NULL),(1626,4,55,2,NULL),(1627,77,21,2,NULL),(1628,36,57,2,NULL),(1629,5,55,2,NULL),(1630,86,21,2,NULL),(1631,39,57,2,NULL),(1632,4,60,2,NULL),(1633,87,21,2,NULL),(1634,41,57,2,NULL),(1635,5,60,2,NULL),(1636,89,21,2,NULL),(1637,43,57,2,NULL),(1638,4,63,2,NULL),(1639,91,21,2,NULL),(1640,24,53,2,NULL),(1641,5,63,2,NULL),(1642,93,21,2,NULL),(1643,25,53,2,NULL),(1644,95,21,2,NULL),(1645,28,53,2,NULL),(1646,20,2,2,NULL),(1647,97,21,2,NULL),(1648,30,53,2,NULL),(1649,47,2,2,NULL),(1650,99,21,2,NULL),(1651,33,53,2,NULL),(1652,42,2,2,NULL),(1653,100,21,2,NULL),(1654,45,2,2,NULL),(1655,35,53,2,NULL),(1656,38,53,2,NULL),(1657,46,2,2,NULL),(1658,103,28,2,NULL),(1659,40,53,2,NULL),(1660,49,2,2,NULL),(1661,72,2,2,NULL),(1662,26,53,2,NULL),(1663,51,2,2,NULL),(1664,79,2,2,NULL),(1665,29,53,2,NULL),(1666,53,2,2,NULL),(1667,72,3,2,NULL),(1668,31,53,2,NULL),(1669,54,2,2,NULL),(1670,79,3,2,NULL),(1671,34,53,2,NULL),(1672,56,2,2,NULL),(1673,72,4,2,NULL),(1674,36,53,2,NULL),(1675,32,2,2,NULL),(1676,79,4,2,NULL),(1677,39,53,2,NULL),(1678,67,2,2,NULL),(1679,72,51,2,NULL),(1680,41,53,2,NULL),(1681,68,2,2,NULL),(1682,79,51,2,NULL),(1683,43,53,2,NULL),(1684,69,2,2,NULL),(1685,72,13,2,NULL),(1686,24,54,2,NULL),(1687,79,13,2,NULL),(1688,73,2,2,NULL),(1689,25,54,2,NULL),(1690,72,52,2,NULL),(1691,75,2,2,NULL),(1692,28,54,2,NULL),(1693,77,2,2,NULL),(1694,79,52,2,NULL),(1695,30,54,2,NULL),(1696,86,2,2,NULL),(1697,72,29,2,NULL),(1698,33,54,2,NULL),(1699,87,2,2,NULL),(1700,79,29,2,NULL),(1701,35,54,2,NULL),(1702,89,2,2,NULL),(1703,72,30,2,NULL),(1704,38,54,2,NULL),(1705,91,2,2,NULL),(1706,79,30,2,NULL),(1707,40,54,2,NULL),(1708,93,2,2,NULL),(1709,72,31,2,NULL),(1710,26,54,2,NULL),(1711,95,2,2,NULL),(1712,79,31,2,NULL),(1713,29,54,2,NULL),(1714,97,2,2,NULL),(1715,72,32,2,NULL),(1716,31,54,2,NULL),(1717,99,2,2,NULL),(1718,79,32,2,NULL),(1719,34,54,2,NULL),(1720,100,2,2,NULL),(1721,72,56,2,NULL),(1722,36,54,2,NULL),(1723,79,56,2,NULL),(1724,39,54,2,NULL),(1725,20,3,2,NULL),(1726,72,58,2,NULL),(1727,41,54,2,NULL),(1728,47,3,2,NULL),(1729,79,58,2,NULL),(1730,43,54,2,NULL),(1731,42,3,2,NULL),(1732,72,57,2,NULL),(1733,24,55,2,NULL),(1734,79,57,2,NULL),(1735,45,3,2,NULL),(1736,25,55,2,NULL),(1737,46,3,2,NULL),(1738,72,53,2,NULL),(1739,28,55,2,NULL),(1740,49,3,2,NULL),(1741,79,53,2,NULL),(1742,30,55,2,NULL),(1743,51,3,2,NULL),(1744,72,54,2,NULL),(1745,33,55,2,NULL),(1746,79,54,2,NULL),(1747,53,3,2,NULL),(1748,35,55,2,NULL),(1749,72,55,2,NULL),(1750,54,3,2,NULL),(1751,38,55,2,NULL),(1752,79,55,2,NULL),(1753,56,3,2,NULL),(1754,40,55,2,NULL),(1755,32,3,2,NULL),(1756,72,60,2,NULL),(1757,26,55,2,NULL),(1758,79,60,2,NULL),(1759,67,3,2,NULL),(1760,29,55,2,NULL),(1761,72,63,2,NULL),(1762,68,3,2,NULL),(1763,31,55,2,NULL),(1764,79,63,2,NULL),(1765,34,55,2,NULL),(1766,69,3,2,NULL),(1767,20,29,2,NULL),(1768,36,55,2,NULL),(1769,47,29,2,NULL),(1770,73,3,2,NULL),(1771,39,55,2,NULL),(1772,42,29,2,NULL),(1773,75,3,2,NULL),(1774,41,55,2,NULL),(1775,45,29,2,NULL),(1776,77,3,2,NULL),(1777,43,55,2,NULL),(1778,46,29,2,NULL),(1779,86,3,2,NULL),(1780,24,60,2,NULL),(1781,49,29,2,NULL),(1782,87,3,2,NULL),(1783,25,60,2,NULL),(1784,51,29,2,NULL),(1785,89,3,2,NULL),(1786,28,60,2,NULL),(1787,53,29,2,NULL),(1788,91,3,2,NULL),(1789,30,60,2,NULL),(1790,54,29,2,NULL),(1791,93,3,2,NULL),(1792,33,60,2,NULL),(1793,56,29,2,NULL),(1794,95,3,2,NULL),(1795,35,60,2,NULL),(1796,32,29,2,NULL),(1797,97,3,2,NULL),(1798,38,60,2,NULL),(1799,67,29,2,NULL),(1800,99,3,2,NULL),(1801,40,60,2,NULL),(1802,68,29,2,NULL),(1803,100,3,2,NULL),(1804,26,60,2,NULL),(1805,69,29,2,NULL),(1806,29,60,2,NULL),(1807,73,29,2,NULL),(1808,20,4,2,NULL),(1809,31,60,2,NULL),(1810,75,29,2,NULL),(1811,47,4,2,NULL),(1812,34,60,2,NULL),(1813,77,29,2,NULL),(1814,42,4,2,NULL),(1815,36,60,2,NULL),(1816,45,4,2,NULL),(1817,86,29,2,NULL),(1818,39,60,2,NULL),(1819,87,29,2,NULL),(1820,46,4,2,NULL),(1821,41,60,2,NULL),(1822,89,29,2,NULL),(1823,49,4,2,NULL),(1824,43,60,2,NULL),(1825,91,29,2,NULL),(1826,51,4,2,NULL),(1827,24,63,2,NULL),(1828,93,29,2,NULL),(1829,53,4,2,NULL),(1830,25,63,2,NULL),(1831,95,29,2,NULL),(1832,54,4,2,NULL),(1833,28,63,2,NULL),(1834,97,29,2,NULL),(1835,56,4,2,NULL),(1836,30,63,2,NULL),(1837,99,29,2,NULL),(1838,32,4,2,NULL),(1839,33,63,2,NULL),(1840,100,29,2,NULL),(1841,67,4,2,NULL),(1842,35,63,2,NULL),(1843,68,4,2,NULL),(1844,38,63,2,NULL),(1845,20,30,2,NULL),(1846,69,4,2,NULL),(1847,40,63,2,NULL),(1848,47,30,2,NULL),(1849,73,4,2,NULL),(1850,26,63,2,NULL),(1851,42,30,2,NULL),(1852,75,4,2,NULL),(1853,29,63,2,NULL),(1854,45,30,2,NULL),(1855,77,4,2,NULL),(1856,31,63,2,NULL),(1857,46,30,2,NULL),(1858,86,4,2,NULL),(1859,34,63,2,NULL),(1860,49,30,2,NULL),(1861,87,4,2,NULL),(1862,36,63,2,NULL),(1863,51,30,2,NULL),(1864,89,4,2,NULL),(1865,39,63,2,NULL),(1866,53,30,2,NULL),(1867,91,4,2,NULL),(1868,41,63,2,NULL),(1869,54,30,2,NULL),(1870,93,4,2,NULL),(1871,43,63,2,NULL),(1872,56,30,2,NULL),(1873,95,4,2,NULL),(1874,32,30,2,NULL),(1875,97,4,2,NULL),(1876,67,30,2,NULL),(1877,99,4,2,NULL),(1878,68,30,2,NULL),(1879,100,4,2,NULL),(1880,11,8,2,NULL),(1881,69,30,2,NULL),(1882,11,16,2,NULL),(1883,73,30,2,NULL),(1884,12,8,2,NULL),(1885,75,30,2,NULL),(1886,12,16,2,NULL),(1887,77,30,2,NULL),(1888,57,8,2,NULL),(1889,86,30,2,NULL),(1890,57,16,2,NULL),(1891,87,30,2,NULL),(1892,59,8,2,NULL),(1893,89,30,2,NULL),(1894,91,30,2,NULL),(1895,59,16,2,NULL),(1896,93,30,2,NULL),(1897,20,51,2,NULL),(1898,95,30,2,NULL),(1899,47,51,2,NULL),(1900,97,30,2,NULL),(1901,20,13,2,NULL),(1902,99,30,2,NULL),(1903,47,13,2,NULL),(1904,100,30,2,NULL),(1905,20,52,2,NULL),(1906,47,52,2,NULL),(1907,20,31,2,NULL),(1908,47,31,2,NULL),(1909,42,31,2,NULL),(1910,20,32,2,NULL),(1911,45,31,2,NULL),(1912,47,32,2,NULL),(1913,46,31,2,NULL),(1914,20,56,2,NULL),(1915,49,31,2,NULL),(1916,47,56,2,NULL),(1917,51,31,2,NULL),(1918,20,58,2,NULL),(1919,53,31,2,NULL),(1920,47,58,2,NULL),(1921,54,31,2,NULL),(1922,20,57,2,NULL),(1923,56,31,2,NULL),(1924,47,57,2,NULL),(1925,32,31,2,NULL),(1926,20,53,2,NULL),(1927,67,31,2,NULL),(1928,47,53,2,NULL),(1929,68,31,2,NULL),(1930,20,54,2,NULL),(1931,69,31,2,NULL),(1932,47,54,2,NULL),(1933,73,31,2,NULL),(1934,20,55,2,NULL),(1935,75,31,2,NULL),(1936,47,55,2,NULL),(1937,77,31,2,NULL),(1938,20,60,2,NULL),(1939,86,31,2,NULL),(1940,47,60,2,NULL),(1941,87,31,2,NULL),(1942,20,63,2,NULL),(1943,89,31,2,NULL),(1944,47,63,2,NULL),(1945,91,31,2,NULL),(1946,93,31,2,NULL),(1947,42,51,2,NULL),(1948,95,31,2,NULL),(1949,45,51,2,NULL),(1950,97,31,2,NULL),(1951,46,51,2,NULL),(1952,99,31,2,NULL),(1953,49,51,2,NULL),(1954,100,31,2,NULL),(1955,51,51,2,NULL),(1956,53,51,2,NULL),(1957,54,51,2,NULL),(1958,42,32,2,NULL),(1959,56,51,2,NULL),(1960,45,32,2,NULL),(1961,32,51,2,NULL),(1962,46,32,2,NULL),(1963,67,51,2,NULL),(1964,49,32,2,NULL),(1965,68,51,2,NULL),(1966,51,32,2,NULL),(1967,69,51,2,NULL),(1968,53,32,2,NULL),(1969,73,51,2,NULL),(1970,54,32,2,NULL),(1971,75,51,2,NULL),(1972,56,32,2,NULL),(1973,77,51,2,NULL),(1974,32,32,2,NULL),(1975,86,51,2,NULL),(1976,67,32,2,NULL),(1977,87,51,2,NULL),(1978,68,32,2,NULL),(1979,89,51,2,NULL),(1980,69,32,2,NULL),(1981,91,51,2,NULL),(1982,73,32,2,NULL),(1983,93,51,2,NULL),(1984,75,32,2,NULL),(1985,95,51,2,NULL),(1986,77,32,2,NULL),(1987,97,51,2,NULL),(1988,86,32,2,NULL),(1989,99,51,2,NULL),(1990,87,32,2,NULL),(1991,100,51,2,NULL),(1992,89,32,2,NULL),(1993,91,32,2,NULL),(1994,93,32,2,NULL),(1995,95,32,2,NULL),(1996,97,32,2,NULL),(1997,99,32,2,NULL),(1998,100,32,2,NULL),(1999,67,13,2,NULL),(2000,68,13,2,NULL),(2001,69,13,2,NULL),(2002,67,52,2,NULL),(2003,68,52,2,NULL),(2004,69,52,2,NULL),(2005,67,58,2,NULL),(2006,68,58,2,NULL),(2007,69,58,2,NULL),(2008,67,57,2,NULL),(2009,68,57,2,NULL),(2010,69,57,2,NULL),(2011,67,53,2,NULL),(2012,68,53,2,NULL),(2013,69,53,2,NULL),(2014,67,54,2,NULL),(2015,68,54,2,NULL),(2016,69,54,2,NULL),(2017,67,55,2,NULL),(2018,68,55,2,NULL),(2019,69,55,2,NULL),(2020,67,60,2,NULL),(2021,68,60,2,NULL),(2022,69,60,2,NULL),(2023,67,63,2,NULL),(2024,68,63,2,NULL),(2025,69,63,2,NULL),(2026,42,56,2,NULL),(2027,45,56,2,NULL),(2028,46,56,2,NULL),(2029,49,56,2,NULL),(2030,51,56,2,NULL),(2031,53,56,2,NULL),(2032,54,56,2,NULL),(2033,56,56,2,NULL),(2034,32,56,2,NULL),(2035,73,56,2,NULL),(2036,75,56,2,NULL),(2037,77,56,2,NULL),(2038,86,56,2,NULL),(2039,87,56,2,NULL),(2040,89,56,2,NULL),(2041,91,56,2,NULL),(2042,93,56,2,NULL),(2043,95,56,2,NULL),(2044,97,56,2,NULL),(2045,99,56,2,NULL),(2046,100,56,2,NULL),(2047,73,13,2,NULL),(2048,75,13,2,NULL),(2049,77,13,2,NULL),(2050,73,52,2,NULL),(2051,75,52,2,NULL),(2052,77,52,2,NULL),(2053,73,57,2,NULL),(2054,75,57,2,NULL),(2055,77,57,2,NULL),(2056,73,53,2,NULL),(2057,75,53,2,NULL),(2058,77,53,2,NULL),(2059,73,54,2,NULL),(2060,75,54,2,NULL),(2061,77,54,2,NULL),(2062,73,55,2,NULL),(2063,75,55,2,NULL),(2064,77,55,2,NULL),(2065,73,60,2,NULL),(2066,75,60,2,NULL),(2067,77,60,2,NULL),(2068,73,63,2,NULL),(2069,75,63,2,NULL),(2070,77,63,2,NULL),(2071,42,58,2,NULL),(2072,45,58,2,NULL),(2073,46,58,2,NULL),(2074,49,58,2,NULL),(2075,51,58,2,NULL),(2076,53,58,2,NULL),(2077,54,58,2,NULL),(2078,56,58,2,NULL),(2079,32,58,2,NULL),(2080,86,58,2,NULL),(2081,87,58,2,NULL),(2082,89,58,2,NULL),(2083,91,58,2,NULL),(2084,93,58,2,NULL),(2085,95,58,2,NULL),(2086,97,58,2,NULL),(2087,99,58,2,NULL),(2088,100,58,2,NULL),(2089,86,13,2,NULL),(2090,87,13,2,NULL),(2091,89,13,2,NULL),(2092,91,13,2,NULL),(2093,93,13,2,NULL),(2094,95,13,2,NULL),(2095,97,13,2,NULL),(2096,99,13,2,NULL),(2097,100,13,2,NULL),(2098,86,52,2,NULL),(2099,87,52,2,NULL),(2100,89,52,2,NULL),(2101,91,52,2,NULL),(2102,93,52,2,NULL),(2103,95,52,2,NULL),(2104,97,52,2,NULL),(2105,99,52,2,NULL),(2106,100,52,2,NULL),(2107,86,53,2,NULL),(2108,87,53,2,NULL),(2109,89,53,2,NULL),(2110,91,53,2,NULL),(2111,93,53,2,NULL),(2112,95,53,2,NULL),(2113,97,53,2,NULL),(2114,99,53,2,NULL),(2115,100,53,2,NULL),(2116,86,54,2,NULL),(2117,87,54,2,NULL),(2118,89,54,2,NULL),(2119,91,54,2,NULL),(2120,93,54,2,NULL),(2121,95,54,2,NULL),(2122,97,54,2,NULL),(2123,99,54,2,NULL),(2124,100,54,2,NULL),(2125,86,55,2,NULL),(2126,87,55,2,NULL),(2127,89,55,2,NULL),(2128,91,55,2,NULL),(2129,93,55,2,NULL),(2130,95,55,2,NULL),(2131,97,55,2,NULL),(2132,99,55,2,NULL),(2133,100,55,2,NULL),(2134,86,60,2,NULL),(2135,87,60,2,NULL),(2136,89,60,2,NULL),(2137,91,60,2,NULL),(2138,93,60,2,NULL),(2139,95,60,2,NULL),(2140,97,60,2,NULL),(2141,99,60,2,NULL),(2142,100,60,2,NULL),(2143,86,63,2,NULL),(2144,87,63,2,NULL),(2145,89,63,2,NULL),(2146,91,63,2,NULL),(2147,93,63,2,NULL),(2148,95,63,2,NULL),(2149,97,63,2,NULL),(2150,99,63,2,NULL),(2151,100,63,2,NULL),(2152,42,57,2,NULL),(2153,45,57,2,NULL),(2154,46,57,2,NULL),(2155,49,57,2,NULL),(2156,51,57,2,NULL),(2157,53,57,2,NULL),(2158,54,57,2,NULL),(2159,56,57,2,NULL),(2160,32,57,2,NULL),(2161,42,53,2,NULL),(2162,45,53,2,NULL),(2163,46,53,2,NULL),(2164,49,53,2,NULL),(2165,51,53,2,NULL),(2166,53,53,2,NULL),(2167,54,53,2,NULL),(2168,56,53,2,NULL),(2169,32,53,2,NULL),(2170,42,54,2,NULL),(2171,45,54,2,NULL),(2172,46,54,2,NULL),(2173,49,54,2,NULL),(2174,51,54,2,NULL),(2175,53,54,2,NULL),(2176,54,54,2,NULL),(2177,56,54,2,NULL),(2178,32,54,2,NULL),(2179,42,55,2,NULL),(2180,45,55,2,NULL),(2181,46,55,2,NULL),(2182,49,55,2,NULL),(2183,51,55,2,NULL),(2184,53,55,2,NULL),(2185,54,55,2,NULL),(2186,56,55,2,NULL),(2187,32,55,2,NULL),(2188,42,60,2,NULL),(2189,45,60,2,NULL),(2190,46,60,2,NULL),(2191,49,60,2,NULL),(2192,51,60,2,NULL),(2193,53,60,2,NULL),(2194,54,60,2,NULL),(2195,56,60,2,NULL),(2196,32,60,2,NULL),(2197,42,63,2,NULL),(2198,45,63,2,NULL),(2199,46,63,2,NULL),(2200,49,63,2,NULL),(2201,51,63,2,NULL),(2202,53,63,2,NULL),(2203,54,63,2,NULL),(2204,56,63,2,NULL),(2205,32,63,2,NULL),(2206,21,6,2,NULL),(2207,21,14,2,NULL),(2208,42,13,2,NULL),(2209,45,13,2,NULL),(2210,46,13,2,NULL),(2211,49,13,2,NULL),(2212,51,13,2,NULL),(2213,53,13,2,NULL),(2214,54,13,2,NULL),(2215,56,13,2,NULL),(2216,32,13,2,NULL),(2217,16,12,2,NULL),(2218,16,20,2,NULL),(2219,23,11,2,NULL),(2220,23,19,2,NULL),(2221,27,9,2,NULL),(2222,27,17,2,NULL),(2223,37,7,2,NULL),(2224,37,15,2,NULL),(2225,63,10,2,NULL),(2226,63,18,2,NULL),(2227,42,52,2,NULL),(2228,45,52,2,NULL),(2229,46,52,2,NULL),(2230,49,52,2,NULL),(2231,51,52,2,NULL),(2232,53,52,2,NULL),(2233,54,52,2,NULL),(2234,56,52,2,NULL),(2235,58,8,2,NULL),(2236,58,16,2,NULL),(2237,60,8,2,NULL),(2238,60,16,2,NULL),(2239,32,52,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:38
