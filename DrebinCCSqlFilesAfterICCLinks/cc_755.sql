-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_755
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (9,'android.intent.action.BOOT_COMPLETED'),(4,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.SEARCH'),(2,'android.intent.action.VIEW'),(7,'com.airpush.android.PushServiceStart44382'),(8,'com.android.vending.INSTALL_REFERRER'),(3,'ru.jabox.android.smsbox.SMS_SENT_Jabox'),(5,'ru.jabox.logcollector.intent.action.SEND_LOG');
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
INSERT INTO `Applications` VALUES (1,'com.first.azip',1),(2,'ru.jabox.android.smsbox.jokebox',14),(3,'ru.jabox.android.smsbox.sexbox',10),(4,'ru.jabox.android.smsbox.sexbox',14),(5,'ru.jabox.android.smsbox.lovebox',14),(6,'com.appsministry.books.test',210);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(4,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.SAMPLE_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.first.azip.AzipActivity'),(2,1,'com.first.azip.ScreenActivity'),(3,1,'com.first.azip.FinActivity'),(4,1,'com.first.azip.HelpActivity'),(5,2,'ru.jabox.android.smsbox.activity.StartupActivity'),(6,2,'ru.jabox.android.smsbox.activity.ChooseCategoryActivity'),(7,2,'ru.jabox.android.smsbox.activity.ChooseTemplateActivity'),(8,2,'ru.jabox.android.smsbox.activity.SendMessageActivity'),(9,3,'ru.jabox.android.smsbox.activity.StartupActivity'),(10,2,'ru.jabox.android.smsbox.activity.HelpActivity'),(11,2,'ru.jabox.android.smsbox.activity.SmsboxPreferencesActivity'),(12,3,'ru.jabox.android.smsbox.activity.ChooseCategoryActivity'),(13,2,'ru.jabox.android.smsbox.activity.OurProjectsActivity'),(14,3,'ru.jabox.android.smsbox.activity.ChooseTemplateActivity'),(15,2,'ru.jabox.android.smsbox.log.SendLogActivity'),(16,4,'ru.jabox.android.smsbox.activity.StartupActivity'),(17,3,'ru.jabox.android.smsbox.activity.SendMessageActivity'),(18,5,'ru.jabox.android.smsbox.activity.StartupActivity'),(19,3,'ru.jabox.android.smsbox.activity.HelpActivity'),(20,3,'ru.jabox.android.smsbox.activity.SmsboxPreferencesActivity'),(21,4,'ru.jabox.android.smsbox.activity.ChooseCategoryActivity'),(22,5,'ru.jabox.android.smsbox.activity.ChooseCategoryActivity'),(23,3,'ru.jabox.android.smsbox.activity.OurProjectsActivity'),(24,4,'ru.jabox.android.smsbox.activity.ChooseTemplateActivity'),(25,5,'ru.jabox.android.smsbox.activity.ChooseTemplateActivity'),(26,3,'ru.jabox.android.smsbox.log.SendLogActivity'),(27,4,'ru.jabox.android.smsbox.activity.SendMessageActivity'),(28,5,'ru.jabox.android.smsbox.activity.SendMessageActivity'),(29,4,'ru.jabox.android.smsbox.activity.HelpActivity'),(30,5,'ru.jabox.android.smsbox.activity.HelpActivity'),(31,4,'ru.jabox.android.smsbox.activity.SmsboxPreferencesActivity'),(32,5,'ru.jabox.android.smsbox.activity.SmsboxPreferencesActivity'),(33,4,'ru.jabox.android.smsbox.activity.OurProjectsActivity'),(34,5,'ru.jabox.android.smsbox.activity.OurProjectsActivity'),(35,4,'ru.jabox.android.smsbox.log.SendLogActivity'),(36,5,'ru.jabox.android.smsbox.log.SendLogActivity'),(37,3,'ru.jabox.android.smsbox.c.d'),(38,5,'ru.jabox.android.smsbox.c.d'),(39,2,'ru.jabox.android.smsbox.d.d'),(40,4,'ru.jabox.android.smsbox.c.d'),(41,6,'biz.neoline.android.reader.NeoBookReader'),(42,6,'biz.neoline.android.reader.TextSearchActivity'),(43,6,'biz.neoline.android.reader.LibraryActivity'),(44,6,'biz.neoline.android.reader.BookmarksAndTocActivity'),(45,6,'biz.neoline.app_core.ui.android.library.CrashReportingActivity'),(46,6,'biz.neoline.app_core.ui.android.dialogs.DialogActivity'),(47,6,'biz.neoline.test.DonationActivity'),(48,6,'com.airpush.android.PushAds'),(49,6,'com.airpush.android.PushService'),(50,6,'com.google.android.apps.analytics.AnalyticsReceiver'),(51,6,'com.airpush.android.UserDetailsReceiver'),(52,6,'com.airpush.android.MessageReceiver'),(53,6,'com.airpush.android.DeliveryReceiver'),(54,6,'biz.neoline.test.airpush.BootReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'0'),(2,4,'0'),(3,14,'categoryName'),(4,25,'android.intent.extra.BCC'),(5,24,'categoryId'),(6,35,'ru.jabox.logcollector.intent.extra.DATA'),(7,35,'android.intent.extra.CC'),(8,27,'templateText'),(9,36,'android.intent.extra.CC'),(10,27,'templateId'),(11,28,'categoryId'),(12,35,'ru.jabox.logcollector.intent.extra.BUFFER'),(13,26,'categoryId'),(14,25,'ru.jabox.logcollector.intent.extra.DATA'),(15,36,'ru.jabox.logcollector.intent.extra.FORMAT'),(16,28,'templateId'),(17,7,'categoryName'),(18,15,'android.intent.extra.EMAIL'),(19,36,'android.intent.extra.EMAIL'),(20,26,'categoryName'),(21,28,'templateSenderName'),(22,15,'ru.jabox.logcollector.intent.extra.DATA'),(23,17,'templateId'),(24,36,'android.intent.extra.BCC'),(25,25,'android.intent.extra.CC'),(26,15,'ru.jabox.logcollector.intent.extra.FORMAT'),(27,8,'categoryId'),(28,36,'ru.jabox.logcollector.intent.extra.DATA'),(29,28,'templateText'),(30,17,'templateText'),(31,36,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(32,25,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(33,25,'android.intent.extra.EMAIL'),(34,27,'templateSenderName'),(35,36,'ru.jabox.logcollector.intent.extra.BUFFER'),(36,25,'android.intent.extra.SUBJECT'),(37,15,'android.intent.extra.CC'),(38,15,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(39,36,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(40,36,'android.intent.extra.SUBJECT'),(41,35,'android.intent.extra.BCC'),(42,35,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(43,17,'templateSenderName'),(44,17,'categoryId'),(45,8,'templateText'),(46,25,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(47,8,'templateId'),(48,27,'categoryId'),(49,15,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(50,25,'ru.jabox.logcollector.intent.extra.FORMAT'),(51,35,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(52,15,'android.intent.extra.BCC'),(53,35,'android.intent.extra.SUBJECT'),(54,15,'android.intent.extra.SUBJECT'),(55,35,'ru.jabox.logcollector.intent.extra.FORMAT'),(56,24,'categoryName'),(57,35,'android.intent.extra.EMAIL'),(58,7,'categoryId'),(59,15,'ru.jabox.logcollector.intent.extra.BUFFER'),(60,8,'templateSenderName'),(61,25,'ru.jabox.logcollector.intent.extra.BUFFER'),(62,14,'categoryId');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,26,'a',0,NULL,NULL),(26,25,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',1,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,51,'r',0,NULL,NULL),(52,52,'r',0,NULL,NULL),(53,53,'r',0,NULL,NULL),(54,54,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,4),(8,8,1),(9,9,4),(10,10,1),(11,11,23),(12,12,21),(13,13,14),(14,14,34),(15,15,6),(16,16,18),(17,17,6),(18,18,13),(19,19,12),(20,20,22),(21,21,12),(22,22,7),(23,23,22),(24,24,12),(25,25,24),(26,26,22),(27,27,9),(28,28,6),(29,29,22),(30,30,12),(31,31,6),(32,32,21),(33,33,22),(34,34,12),(35,35,21),(36,36,22),(37,37,6),(38,38,16),(39,39,21),(40,40,21),(41,41,12),(42,42,33),(43,43,26),(44,44,5),(45,45,21),(46,46,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.first.azip.AzipActivity: boolean onKeyDown(int,android.view.KeyEvent)>',12,'a',NULL),(2,1,'<com.first.azip.AzipActivity: void goSite()>',5,'a',NULL),(3,1,'<com.first.azip.AzipActivity: void sendSms(java.lang.String,java.lang.String,java.lang.String)>',29,'a',NULL),(4,1,'<com.first.azip.AzipActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',NULL),(5,1,'<com.first.azip.AzipActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',NULL),(6,1,'<com.first.azip.AzipActivity: void sendSms(java.lang.String,java.lang.String,java.lang.String)>',29,'a',NULL),(7,4,'<com.first.azip.HelpActivity: void onClick(android.view.View)>',8,'a',NULL),(8,1,'<com.first.azip.AzipActivity: boolean onKeyDown(int,android.view.KeyEvent)>',12,'a',NULL),(9,4,'<com.first.azip.HelpActivity: void onClick(android.view.View)>',8,'a',NULL),(10,1,'<com.first.azip.AzipActivity: void goSite()>',5,'a',NULL),(11,23,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(12,21,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(13,14,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(14,34,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(15,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(16,18,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(17,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(18,13,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(19,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(20,22,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(21,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(22,7,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(23,22,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(24,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(25,24,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(26,22,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(27,9,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(28,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(29,22,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(30,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(31,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(32,21,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(33,22,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(34,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(35,21,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(36,22,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(37,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(38,16,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(39,21,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(40,21,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(41,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(42,33,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(43,25,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(44,5,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(45,21,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(46,6,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,2),(2,7,2),(3,9,2),(4,10,2),(5,11,2),(6,13,4),(7,14,2),(8,16,4),(9,18,4),(10,21,4),(11,22,4),(12,23,2),(13,25,4),(14,26,4),(15,29,4),(16,32,5),(17,39,5),(18,44,4),(19,46,4),(20,47,4),(21,48,4),(22,49,4),(23,50,4),(24,52,4),(25,53,4),(26,54,4),(27,55,4),(28,56,5),(29,57,4),(30,58,4),(31,59,4),(32,60,4),(33,61,4),(34,62,4),(35,63,4),(36,64,4),(37,65,4),(38,66,4),(39,67,4),(40,68,4),(41,70,4),(42,71,4),(43,73,2),(44,78,5);
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
INSERT INTO `IClasses` VALUES (1,1,'com/first/azip/HelpActivity'),(2,3,'com/first/azip/FinActivity'),(3,4,'com/first/azip/ScreenActivity'),(4,5,'com/first/azip/ScreenActivity'),(5,6,'com/first/azip/FinActivity'),(6,8,'com/first/azip/HelpActivity'),(7,12,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(8,15,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(9,19,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(10,20,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(11,17,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(12,24,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(13,27,'ru/jabox/android/smsbox/activity/HelpActivity'),(14,28,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(15,30,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(16,31,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(17,33,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(18,32,'ru/jabox/android/smsbox/log/SendLogActivity'),(19,34,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(20,36,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(21,35,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(22,37,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(23,38,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(24,40,'ru/jabox/android/smsbox/activity/HelpActivity'),(25,41,'ru/jabox/android/smsbox/activity/HelpActivity'),(26,39,'ru/jabox/android/smsbox/log/SendLogActivity'),(27,42,'ru/jabox/android/smsbox/activity/HelpActivity'),(28,43,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(29,45,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(30,51,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(31,56,'ru/jabox/android/smsbox/log/SendLogActivity'),(32,69,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(33,72,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(34,74,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(35,75,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(36,76,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(37,77,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(38,78,'ru/jabox/android/smsbox/log/SendLogActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,7,2),(3,9,3),(4,10,4),(5,11,5),(6,14,6),(7,23,7),(8,73,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'0'),(2,4,'0'),(3,5,'0'),(4,8,'0'),(5,12,'templateId'),(6,12,'categoryId'),(7,13,'android.intent.extra.INTENT'),(8,12,'templateText'),(9,16,'android.intent.extra.INTENT'),(10,17,'templateId'),(11,17,'templateSenderName'),(12,18,'android.intent.extra.TITLE'),(13,17,'categoryId'),(14,18,'android.intent.extra.INTENT'),(15,17,'templateText'),(16,21,'android.intent.extra.INTENT'),(17,22,'android.intent.extra.TITLE'),(18,22,'android.intent.extra.INTENT'),(19,25,'android.intent.extra.INTENT'),(20,26,'android.intent.extra.TITLE'),(21,26,'android.intent.extra.INTENT'),(22,29,'android.intent.extra.TITLE'),(23,29,'android.intent.extra.INTENT'),(24,30,'templateId'),(25,30,'categoryId'),(26,30,'templateText'),(27,31,'categoryName'),(28,31,'categoryId'),(29,33,'templateId'),(30,32,'android.intent.extra.SUBJECT'),(31,33,'categoryId'),(32,32,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(33,34,'templateId'),(34,33,'templateText'),(35,32,'ru.jabox.logcollector.intent.extra.FORMAT'),(36,34,'templateSenderName'),(37,32,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(38,34,'categoryId'),(39,32,'ru.jabox.logcollector.intent.extra.DATA'),(40,34,'templateText'),(41,35,'templateId'),(42,35,'templateSenderName'),(43,35,'categoryId'),(44,35,'templateText'),(45,38,'categoryName'),(46,38,'categoryId'),(47,39,'android.intent.extra.SUBJECT'),(48,39,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(49,39,'ru.jabox.logcollector.intent.extra.FORMAT'),(50,39,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(51,39,'ru.jabox.logcollector.intent.extra.DATA'),(52,44,'android.intent.extra.INTENT'),(53,46,'android.intent.extra.INTENT'),(54,47,'android.intent.extra.INTENT'),(55,48,'android.intent.extra.INTENT'),(56,49,'android.intent.extra.INTENT'),(57,50,'android.intent.extra.TITLE'),(58,52,'android.intent.extra.INTENT'),(59,50,'android.intent.extra.INTENT'),(60,53,'android.intent.extra.TITLE'),(61,54,'android.intent.extra.TITLE'),(62,55,'android.intent.extra.INTENT'),(63,53,'android.intent.extra.INTENT'),(64,54,'android.intent.extra.INTENT'),(65,56,'android.intent.extra.SUBJECT'),(66,57,'android.intent.extra.TITLE'),(67,58,'android.intent.extra.INTENT'),(68,56,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(69,59,'android.intent.extra.INTENT'),(70,57,'android.intent.extra.INTENT'),(71,56,'ru.jabox.logcollector.intent.extra.FORMAT'),(72,56,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(73,60,'android.intent.extra.TITLE'),(74,56,'ru.jabox.logcollector.intent.extra.DATA'),(75,61,'android.intent.extra.TITLE'),(76,62,'android.intent.extra.INTENT'),(77,60,'android.intent.extra.INTENT'),(78,61,'android.intent.extra.INTENT'),(79,63,'android.intent.extra.TITLE'),(80,64,'android.intent.extra.INTENT'),(81,65,'android.intent.extra.INTENT'),(82,63,'android.intent.extra.INTENT'),(83,66,'android.intent.extra.TITLE'),(84,67,'android.intent.extra.TITLE'),(85,68,'android.intent.extra.TITLE'),(86,66,'android.intent.extra.INTENT'),(87,69,'categoryName'),(88,67,'android.intent.extra.INTENT'),(89,68,'android.intent.extra.INTENT'),(90,69,'categoryId'),(91,70,'android.intent.extra.TITLE'),(92,71,'android.intent.extra.TITLE'),(93,70,'android.intent.extra.INTENT'),(94,71,'android.intent.extra.INTENT'),(95,72,'categoryName'),(96,72,'categoryId'),(97,74,'templateId'),(98,74,'templateSenderName'),(99,74,'categoryId'),(100,74,'templateText'),(101,77,'templateId'),(102,77,'categoryId'),(103,77,'templateText'),(104,78,'android.intent.extra.SUBJECT'),(105,78,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(106,78,'ru.jabox.logcollector.intent.extra.FORMAT'),(107,78,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(108,78,'ru.jabox.logcollector.intent.extra.DATA');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,3),(14,14,3),(15,15,3),(16,16,3),(17,17,3),(18,18,3),(19,19,3),(20,20,1),(21,21,6),(22,22,7),(23,23,8),(24,24,3),(25,25,9);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,2),(6,6,2),(7,7,2),(8,8,2),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,20,1),(14,21,3),(15,25,4);
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
INSERT INTO `IPackages` VALUES (1,1,'com.first.azip'),(2,3,'com.first.azip'),(3,4,'com.first.azip'),(4,5,'com.first.azip'),(5,6,'com.first.azip'),(6,8,'com.first.azip'),(7,15,'ru.jabox.android.smsbox.jokebox'),(8,12,'ru.jabox.android.smsbox.sexbox'),(9,19,'ru.jabox.android.smsbox.lovebox'),(10,20,'ru.jabox.android.smsbox.jokebox'),(11,17,'ru.jabox.android.smsbox.sexbox'),(12,24,'ru.jabox.android.smsbox.sexbox'),(13,27,'ru.jabox.android.smsbox.lovebox'),(14,28,'ru.jabox.android.smsbox.sexbox'),(15,30,'ru.jabox.android.smsbox.jokebox'),(16,31,'ru.jabox.android.smsbox.lovebox'),(17,33,'ru.jabox.android.smsbox.sexbox'),(18,32,'ru.jabox.android.smsbox.sexbox'),(19,34,'ru.jabox.android.smsbox.jokebox'),(20,36,'ru.jabox.android.smsbox.lovebox'),(21,35,'ru.jabox.android.smsbox.sexbox'),(22,37,'ru.jabox.android.smsbox.sexbox'),(23,38,'ru.jabox.android.smsbox.jokebox'),(24,40,'ru.jabox.android.smsbox.sexbox'),(25,41,'ru.jabox.android.smsbox.jokebox'),(26,39,'ru.jabox.android.smsbox.lovebox'),(27,42,'ru.jabox.android.smsbox.sexbox'),(28,43,'ru.jabox.android.smsbox.lovebox'),(29,45,'ru.jabox.android.smsbox.sexbox'),(30,51,'ru.jabox.android.smsbox.sexbox'),(31,56,'ru.jabox.android.smsbox.sexbox'),(32,69,'ru.jabox.android.smsbox.sexbox'),(33,72,'ru.jabox.android.smsbox.sexbox'),(34,74,'ru.jabox.android.smsbox.lovebox'),(35,75,'ru.jabox.android.smsbox.jokebox'),(36,76,'ru.jabox.android.smsbox.sexbox'),(37,77,'ru.jabox.android.smsbox.lovebox'),(38,78,'ru.jabox.android.smsbox.jokebox');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,2,0),(4,2,0),(5,3,0),(6,3,0),(7,4,0),(8,4,0),(9,5,0),(10,9,0),(11,16,0),(12,18,0),(13,37,0),(14,38,0),(15,39,0),(16,38,0),(17,40,0),(18,37,0),(19,39,0),(20,41,0),(21,42,0),(22,49,0),(23,50,0),(24,40,0),(25,54,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,1,0),(8,8,0,0),(9,9,1,0),(10,10,1,0),(11,11,1,0),(12,13,0,0),(13,12,1,0),(14,14,1,0),(15,15,0,0),(16,12,1,0),(17,13,0,0),(18,12,1,0),(19,16,0,0),(20,17,0,0),(21,12,1,0),(22,12,1,0),(23,18,1,0),(24,19,0,0),(25,12,1,0),(26,12,1,0),(27,20,0,0),(28,21,0,0),(29,12,1,0),(30,22,0,0),(31,23,0,0),(32,24,0,0),(33,25,0,0),(34,22,0,0),(35,25,0,0),(36,26,0,0),(37,27,0,0),(38,28,0,0),(39,29,0,0),(40,30,0,0),(41,31,0,0),(42,32,0,0),(43,33,0,0),(44,34,1,0),(45,35,0,0),(46,36,1,0),(47,34,1,0),(48,37,1,0),(49,36,1,0),(50,34,1,0),(51,38,0,0),(52,37,1,0),(53,36,1,0),(54,37,1,0),(55,34,1,0),(56,39,0,0),(57,34,1,0),(58,36,1,0),(59,37,1,0),(60,36,1,0),(61,37,1,0),(62,34,1,0),(63,34,1,0),(64,36,1,0),(65,37,1,0),(66,36,1,0),(67,37,1,0),(68,34,1,0),(69,40,0,0),(70,36,1,0),(71,37,1,0),(72,41,0,0),(73,42,1,0),(74,43,0,0),(75,44,0,0),(76,45,0,0),(77,43,0,0),(78,46,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=779 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,75,6,2,NULL),(2,75,12,2,NULL),(3,75,21,2,NULL),(4,75,22,2,NULL),(5,2,5,2,NULL),(6,10,5,2,NULL),(7,48,5,2,NULL),(8,52,5,2,NULL),(9,54,5,2,NULL),(10,59,5,2,NULL),(11,61,5,2,NULL),(12,65,5,2,NULL),(13,67,5,2,NULL),(14,71,5,2,NULL),(15,23,5,2,NULL),(16,44,5,2,NULL),(17,47,5,2,NULL),(18,50,5,2,NULL),(19,55,5,2,NULL),(20,57,5,2,NULL),(21,62,5,2,NULL),(22,63,5,2,NULL),(23,68,5,2,NULL),(24,11,5,2,NULL),(25,13,5,2,NULL),(26,16,5,2,NULL),(27,18,5,2,NULL),(28,21,5,2,NULL),(29,22,5,2,NULL),(30,25,5,2,NULL),(31,26,5,2,NULL),(32,29,5,2,NULL),(33,73,5,2,NULL),(34,46,5,2,NULL),(35,49,5,2,NULL),(36,53,5,2,NULL),(37,58,5,2,NULL),(38,60,5,2,NULL),(39,64,5,2,NULL),(40,66,5,2,NULL),(41,70,5,2,NULL),(42,14,5,2,NULL),(43,15,11,2,NULL),(44,15,20,2,NULL),(45,15,31,2,NULL),(46,15,32,2,NULL),(47,20,13,2,NULL),(48,20,23,2,NULL),(49,20,33,2,NULL),(50,20,34,2,NULL),(51,38,7,2,NULL),(52,38,14,2,NULL),(53,38,24,2,NULL),(54,38,26,2,NULL),(55,41,10,2,NULL),(56,41,19,2,NULL),(57,41,29,2,NULL),(58,41,30,2,NULL),(59,78,15,2,NULL),(60,78,25,2,NULL),(61,78,35,2,NULL),(62,78,36,2,NULL),(63,48,1,2,NULL),(64,52,1,2,NULL),(65,54,1,2,NULL),(66,59,1,2,NULL),(67,61,1,2,NULL),(68,65,1,2,NULL),(69,67,1,2,NULL),(70,71,1,2,NULL),(71,48,2,2,NULL),(72,52,2,2,NULL),(73,54,2,2,NULL),(74,59,2,2,NULL),(75,61,2,2,NULL),(76,65,2,2,NULL),(77,67,2,2,NULL),(78,71,2,2,NULL),(79,48,3,2,NULL),(80,52,3,2,NULL),(81,54,3,2,NULL),(82,59,3,2,NULL),(83,61,3,2,NULL),(84,65,3,2,NULL),(85,67,3,2,NULL),(86,71,3,2,NULL),(87,48,4,2,NULL),(88,52,4,2,NULL),(89,54,4,2,NULL),(90,59,4,2,NULL),(91,61,4,2,NULL),(92,65,4,2,NULL),(93,67,4,2,NULL),(94,71,4,2,NULL),(95,48,39,2,NULL),(96,52,39,2,NULL),(97,54,39,2,NULL),(98,59,39,2,NULL),(99,61,39,2,NULL),(100,65,39,2,NULL),(101,67,39,2,NULL),(102,71,39,2,NULL),(103,48,9,2,NULL),(104,52,9,2,NULL),(105,54,9,2,NULL),(106,59,9,2,NULL),(107,61,9,2,NULL),(108,65,9,2,NULL),(109,67,9,2,NULL),(110,71,9,2,NULL),(111,48,37,2,NULL),(112,52,37,2,NULL),(113,54,37,2,NULL),(114,59,37,2,NULL),(115,61,37,2,NULL),(116,65,37,2,NULL),(117,67,37,2,NULL),(118,71,37,2,NULL),(119,48,16,2,NULL),(120,52,16,2,NULL),(121,54,16,2,NULL),(122,59,16,2,NULL),(123,61,16,2,NULL),(124,65,16,2,NULL),(125,67,16,2,NULL),(126,71,16,2,NULL),(127,48,40,2,NULL),(128,52,40,2,NULL),(129,54,40,2,NULL),(130,59,40,2,NULL),(131,61,40,2,NULL),(132,65,40,2,NULL),(133,67,40,2,NULL),(134,71,40,2,NULL),(135,48,18,2,NULL),(136,52,18,2,NULL),(137,54,18,2,NULL),(138,59,18,2,NULL),(139,61,18,2,NULL),(140,65,18,2,NULL),(141,67,18,2,NULL),(142,71,18,2,NULL),(143,48,38,2,NULL),(144,52,38,2,NULL),(145,54,38,2,NULL),(146,59,38,2,NULL),(147,61,38,2,NULL),(148,65,38,2,NULL),(149,67,38,2,NULL),(150,71,38,2,NULL),(151,48,41,2,NULL),(152,52,41,2,NULL),(153,54,41,2,NULL),(154,59,41,2,NULL),(155,61,41,2,NULL),(156,65,41,2,NULL),(157,67,41,2,NULL),(158,71,41,2,NULL),(159,48,42,2,NULL),(160,52,42,2,NULL),(161,54,42,2,NULL),(162,59,42,2,NULL),(163,61,42,2,NULL),(164,65,42,2,NULL),(165,67,42,2,NULL),(166,71,42,2,NULL),(167,48,49,2,NULL),(168,52,49,2,NULL),(169,54,49,2,NULL),(170,59,49,2,NULL),(171,61,49,2,NULL),(172,65,49,2,NULL),(173,67,49,2,NULL),(174,71,49,2,NULL),(175,48,50,2,NULL),(176,52,50,2,NULL),(177,54,50,2,NULL),(178,59,50,2,NULL),(179,61,50,2,NULL),(180,65,50,2,NULL),(181,67,50,2,NULL),(182,71,50,2,NULL),(183,48,54,2,NULL),(184,52,54,2,NULL),(185,54,54,2,NULL),(186,59,54,2,NULL),(187,61,54,2,NULL),(188,65,54,2,NULL),(189,67,54,2,NULL),(190,71,54,2,NULL),(191,30,8,2,NULL),(192,30,17,2,NULL),(193,30,27,2,NULL),(194,30,28,2,NULL),(195,34,8,2,NULL),(196,34,17,2,NULL),(197,34,27,2,NULL),(198,34,28,2,NULL),(199,23,1,2,NULL),(200,23,2,2,NULL),(201,23,3,2,NULL),(202,23,4,2,NULL),(203,23,39,2,NULL),(204,23,9,2,NULL),(205,23,37,2,NULL),(206,23,16,2,NULL),(207,23,40,2,NULL),(208,23,18,2,NULL),(209,23,38,2,NULL),(210,23,41,2,NULL),(211,23,42,2,NULL),(212,23,49,2,NULL),(213,23,50,2,NULL),(214,23,54,2,NULL),(215,2,39,2,NULL),(216,10,39,2,NULL),(217,44,39,2,NULL),(218,47,39,2,NULL),(219,50,39,2,NULL),(220,55,39,2,NULL),(221,57,39,2,NULL),(222,62,39,2,NULL),(223,63,39,2,NULL),(224,68,39,2,NULL),(225,11,39,2,NULL),(226,13,39,2,NULL),(227,16,39,2,NULL),(228,18,39,2,NULL),(229,21,39,2,NULL),(230,22,39,2,NULL),(231,25,39,2,NULL),(232,26,39,2,NULL),(233,29,39,2,NULL),(234,73,39,2,NULL),(235,46,39,2,NULL),(236,49,39,2,NULL),(237,53,39,2,NULL),(238,58,39,2,NULL),(239,60,39,2,NULL),(240,64,39,2,NULL),(241,66,39,2,NULL),(242,70,39,2,NULL),(243,14,39,2,NULL),(244,37,6,2,NULL),(245,37,12,2,NULL),(246,37,21,2,NULL),(247,37,22,2,NULL),(248,2,9,2,NULL),(249,10,9,2,NULL),(250,44,9,2,NULL),(251,47,9,2,NULL),(252,50,9,2,NULL),(253,55,9,2,NULL),(254,57,9,2,NULL),(255,62,9,2,NULL),(256,63,9,2,NULL),(257,68,9,2,NULL),(258,11,9,2,NULL),(259,13,9,2,NULL),(260,16,9,2,NULL),(261,18,9,2,NULL),(262,21,9,2,NULL),(263,22,9,2,NULL),(264,25,9,2,NULL),(265,26,9,2,NULL),(266,29,9,2,NULL),(267,73,9,2,NULL),(268,46,9,2,NULL),(269,49,9,2,NULL),(270,53,9,2,NULL),(271,58,9,2,NULL),(272,60,9,2,NULL),(273,64,9,2,NULL),(274,66,9,2,NULL),(275,70,9,2,NULL),(276,14,9,2,NULL),(277,24,11,2,NULL),(278,24,20,2,NULL),(279,24,31,2,NULL),(280,24,32,2,NULL),(281,28,13,2,NULL),(282,28,23,2,NULL),(283,28,33,2,NULL),(284,28,34,2,NULL),(285,32,15,2,NULL),(286,32,25,2,NULL),(287,32,35,2,NULL),(288,32,36,2,NULL),(289,40,10,2,NULL),(290,40,19,2,NULL),(291,40,29,2,NULL),(292,40,30,2,NULL),(293,72,7,2,NULL),(294,72,14,2,NULL),(295,72,24,2,NULL),(296,72,26,2,NULL),(297,44,1,2,NULL),(298,47,1,2,NULL),(299,50,1,2,NULL),(300,55,1,2,NULL),(301,57,1,2,NULL),(302,62,1,2,NULL),(303,63,1,2,NULL),(304,68,1,2,NULL),(305,44,2,2,NULL),(306,47,2,2,NULL),(307,50,2,2,NULL),(308,55,2,2,NULL),(309,57,2,2,NULL),(310,62,2,2,NULL),(311,63,2,2,NULL),(312,68,2,2,NULL),(313,44,3,2,NULL),(314,47,3,2,NULL),(315,50,3,2,NULL),(316,55,3,2,NULL),(317,57,3,2,NULL),(318,62,3,2,NULL),(319,63,3,2,NULL),(320,68,3,2,NULL),(321,44,4,2,NULL),(322,47,4,2,NULL),(323,50,4,2,NULL),(324,55,4,2,NULL),(325,57,4,2,NULL),(326,62,4,2,NULL),(327,63,4,2,NULL),(328,68,4,2,NULL),(329,44,37,2,NULL),(330,47,37,2,NULL),(331,50,37,2,NULL),(332,55,37,2,NULL),(333,57,37,2,NULL),(334,62,37,2,NULL),(335,63,37,2,NULL),(336,68,37,2,NULL),(337,44,16,2,NULL),(338,47,16,2,NULL),(339,50,16,2,NULL),(340,55,16,2,NULL),(341,57,16,2,NULL),(342,62,16,2,NULL),(343,63,16,2,NULL),(344,68,16,2,NULL),(345,44,40,2,NULL),(346,47,40,2,NULL),(347,50,40,2,NULL),(348,55,40,2,NULL),(349,57,40,2,NULL),(350,62,40,2,NULL),(351,63,40,2,NULL),(352,68,40,2,NULL),(353,44,18,2,NULL),(354,47,18,2,NULL),(355,50,18,2,NULL),(356,55,18,2,NULL),(357,57,18,2,NULL),(358,62,18,2,NULL),(359,63,18,2,NULL),(360,68,18,2,NULL),(361,44,38,2,NULL),(362,47,38,2,NULL),(363,50,38,2,NULL),(364,55,38,2,NULL),(365,57,38,2,NULL),(366,62,38,2,NULL),(367,63,38,2,NULL),(368,68,38,2,NULL),(369,44,41,2,NULL),(370,47,41,2,NULL),(371,50,41,2,NULL),(372,55,41,2,NULL),(373,57,41,2,NULL),(374,62,41,2,NULL),(375,63,41,2,NULL),(376,68,41,2,NULL),(377,44,42,2,NULL),(378,47,42,2,NULL),(379,50,42,2,NULL),(380,55,42,2,NULL),(381,57,42,2,NULL),(382,62,42,2,NULL),(383,63,42,2,NULL),(384,68,42,2,NULL),(385,44,49,2,NULL),(386,47,49,2,NULL),(387,50,49,2,NULL),(388,55,49,2,NULL),(389,57,49,2,NULL),(390,62,49,2,NULL),(391,63,49,2,NULL),(392,68,49,2,NULL),(393,44,50,2,NULL),(394,47,50,2,NULL),(395,50,50,2,NULL),(396,55,50,2,NULL),(397,57,50,2,NULL),(398,62,50,2,NULL),(399,63,50,2,NULL),(400,68,50,2,NULL),(401,44,54,2,NULL),(402,47,54,2,NULL),(403,50,54,2,NULL),(404,55,54,2,NULL),(405,57,54,2,NULL),(406,62,54,2,NULL),(407,63,54,2,NULL),(408,68,54,2,NULL),(409,12,8,2,NULL),(410,12,17,2,NULL),(411,12,27,2,NULL),(412,12,28,2,NULL),(413,17,8,2,NULL),(414,17,17,2,NULL),(415,17,27,2,NULL),(416,17,28,2,NULL),(417,11,1,2,NULL),(418,11,2,2,NULL),(419,11,3,2,NULL),(420,11,4,2,NULL),(421,11,37,2,NULL),(422,11,16,2,NULL),(423,11,40,2,NULL),(424,11,18,2,NULL),(425,11,38,2,NULL),(426,11,41,2,NULL),(427,11,42,2,NULL),(428,11,49,2,NULL),(429,11,50,2,NULL),(430,11,54,2,NULL),(431,2,37,2,NULL),(432,10,37,2,NULL),(433,13,37,2,NULL),(434,16,37,2,NULL),(435,18,37,2,NULL),(436,21,37,2,NULL),(437,22,37,2,NULL),(438,25,37,2,NULL),(439,26,37,2,NULL),(440,29,37,2,NULL),(441,73,37,2,NULL),(442,46,37,2,NULL),(443,49,37,2,NULL),(444,53,37,2,NULL),(445,58,37,2,NULL),(446,60,37,2,NULL),(447,64,37,2,NULL),(448,66,37,2,NULL),(449,70,37,2,NULL),(450,14,37,2,NULL),(451,51,6,2,NULL),(452,51,12,2,NULL),(453,51,21,2,NULL),(454,51,22,2,NULL),(455,2,16,2,NULL),(456,10,16,2,NULL),(457,13,16,2,NULL),(458,16,16,2,NULL),(459,18,16,2,NULL),(460,21,16,2,NULL),(461,22,16,2,NULL),(462,25,16,2,NULL),(463,26,16,2,NULL),(464,29,16,2,NULL),(465,73,16,2,NULL),(466,46,16,2,NULL),(467,49,16,2,NULL),(468,53,16,2,NULL),(469,58,16,2,NULL),(470,60,16,2,NULL),(471,64,16,2,NULL),(472,66,16,2,NULL),(473,70,16,2,NULL),(474,14,16,2,NULL),(475,42,10,2,NULL),(476,42,19,2,NULL),(477,42,29,2,NULL),(478,42,30,2,NULL),(479,45,11,2,NULL),(480,45,20,2,NULL),(481,45,31,2,NULL),(482,45,32,2,NULL),(483,56,15,2,NULL),(484,56,25,2,NULL),(485,56,35,2,NULL),(486,56,36,2,NULL),(487,69,7,2,NULL),(488,69,14,2,NULL),(489,69,24,2,NULL),(490,69,26,2,NULL),(491,76,13,2,NULL),(492,76,23,2,NULL),(493,76,33,2,NULL),(494,76,34,2,NULL),(495,13,1,2,NULL),(496,16,1,2,NULL),(497,18,1,2,NULL),(498,21,1,2,NULL),(499,22,1,2,NULL),(500,25,1,2,NULL),(501,26,1,2,NULL),(502,29,1,2,NULL),(503,13,2,2,NULL),(504,16,2,2,NULL),(505,18,2,2,NULL),(506,21,2,2,NULL),(507,22,2,2,NULL),(508,25,2,2,NULL),(509,26,2,2,NULL),(510,29,2,2,NULL),(511,13,3,2,NULL),(512,16,3,2,NULL),(513,18,3,2,NULL),(514,21,3,2,NULL),(515,22,3,2,NULL),(516,25,3,2,NULL),(517,26,3,2,NULL),(518,29,3,2,NULL),(519,13,4,2,NULL),(520,16,4,2,NULL),(521,18,4,2,NULL),(522,21,4,2,NULL),(523,22,4,2,NULL),(524,25,4,2,NULL),(525,26,4,2,NULL),(526,29,4,2,NULL),(527,13,40,2,NULL),(528,16,40,2,NULL),(529,18,40,2,NULL),(530,21,40,2,NULL),(531,22,40,2,NULL),(532,25,40,2,NULL),(533,26,40,2,NULL),(534,29,40,2,NULL),(535,13,18,2,NULL),(536,16,18,2,NULL),(537,18,18,2,NULL),(538,21,18,2,NULL),(539,22,18,2,NULL),(540,25,18,2,NULL),(541,26,18,2,NULL),(542,29,18,2,NULL),(543,13,38,2,NULL),(544,16,38,2,NULL),(545,18,38,2,NULL),(546,21,38,2,NULL),(547,22,38,2,NULL),(548,25,38,2,NULL),(549,26,38,2,NULL),(550,29,38,2,NULL),(551,13,41,2,NULL),(552,16,41,2,NULL),(553,18,41,2,NULL),(554,21,41,2,NULL),(555,22,41,2,NULL),(556,25,41,2,NULL),(557,26,41,2,NULL),(558,29,41,2,NULL),(559,13,42,2,NULL),(560,16,42,2,NULL),(561,1,4,2,NULL),(562,18,42,2,NULL),(563,3,3,2,NULL),(564,21,42,2,NULL),(565,4,2,2,NULL),(566,22,42,2,NULL),(567,5,2,2,NULL),(568,25,42,2,NULL),(569,6,3,2,NULL),(570,26,42,2,NULL),(571,8,4,2,NULL),(572,29,42,2,NULL),(573,2,2,2,NULL),(574,13,49,2,NULL),(575,10,2,2,NULL),(576,16,49,2,NULL),(577,2,3,2,NULL),(578,18,49,2,NULL),(579,10,3,2,NULL),(580,21,49,2,NULL),(581,2,4,2,NULL),(582,22,49,2,NULL),(583,10,4,2,NULL),(584,25,49,2,NULL),(585,26,49,2,NULL),(586,73,1,2,NULL),(587,29,49,2,NULL),(588,2,40,2,NULL),(589,13,50,2,NULL),(590,10,40,2,NULL),(591,16,50,2,NULL),(592,2,18,2,NULL),(593,18,50,2,NULL),(594,10,18,2,NULL),(595,21,50,2,NULL),(596,46,1,2,NULL),(597,22,50,2,NULL),(598,49,1,2,NULL),(599,25,50,2,NULL),(600,53,1,2,NULL),(601,26,50,2,NULL),(602,58,1,2,NULL),(603,29,50,2,NULL),(604,60,1,2,NULL),(605,13,54,2,NULL),(606,64,1,2,NULL),(607,16,54,2,NULL),(608,66,1,2,NULL),(609,18,54,2,NULL),(610,70,1,2,NULL),(611,21,54,2,NULL),(612,14,1,2,NULL),(613,22,54,2,NULL),(614,2,38,2,NULL),(615,25,54,2,NULL),(616,10,38,2,NULL),(617,26,54,2,NULL),(618,2,41,2,NULL),(619,29,54,2,NULL),(620,10,41,2,NULL),(621,33,8,2,NULL),(622,2,42,2,NULL),(623,33,17,2,NULL),(624,10,42,2,NULL),(625,33,27,2,NULL),(626,2,49,2,NULL),(627,33,28,2,NULL),(628,10,49,2,NULL),(629,35,8,2,NULL),(630,2,50,2,NULL),(631,35,17,2,NULL),(632,10,50,2,NULL),(633,35,27,2,NULL),(634,2,54,2,NULL),(635,35,28,2,NULL),(636,10,54,2,NULL),(637,73,2,2,NULL),(638,46,2,2,NULL),(639,73,3,2,NULL),(640,49,2,2,NULL),(641,73,4,2,NULL),(642,53,2,2,NULL),(643,73,40,2,NULL),(644,58,2,2,NULL),(645,73,18,2,NULL),(646,60,2,2,NULL),(647,73,38,2,NULL),(648,64,2,2,NULL),(649,73,41,2,NULL),(650,66,2,2,NULL),(651,73,42,2,NULL),(652,70,2,2,NULL),(653,73,49,2,NULL),(654,14,2,2,NULL),(655,73,50,2,NULL),(656,46,3,2,NULL),(657,73,54,2,NULL),(658,49,3,2,NULL),(659,46,40,2,NULL),(660,53,3,2,NULL),(661,49,40,2,NULL),(662,58,3,2,NULL),(663,53,40,2,NULL),(664,60,3,2,NULL),(665,58,40,2,NULL),(666,64,3,2,NULL),(667,60,40,2,NULL),(668,66,3,2,NULL),(669,64,40,2,NULL),(670,70,3,2,NULL),(671,66,40,2,NULL),(672,14,3,2,NULL),(673,70,40,2,NULL),(674,46,4,2,NULL),(675,14,40,2,NULL),(676,49,4,2,NULL),(677,53,4,2,NULL),(678,58,4,2,NULL),(679,60,4,2,NULL),(680,64,4,2,NULL),(681,66,4,2,NULL),(682,70,4,2,NULL),(683,14,4,2,NULL),(684,46,41,2,NULL),(685,49,41,2,NULL),(686,53,41,2,NULL),(687,58,41,2,NULL),(688,60,41,2,NULL),(689,64,41,2,NULL),(690,66,41,2,NULL),(691,70,41,2,NULL),(692,14,41,2,NULL),(693,46,42,2,NULL),(694,49,42,2,NULL),(695,53,42,2,NULL),(696,58,42,2,NULL),(697,60,42,2,NULL),(698,64,42,2,NULL),(699,66,42,2,NULL),(700,70,42,2,NULL),(701,14,42,2,NULL),(702,46,49,2,NULL),(703,49,49,2,NULL),(704,53,49,2,NULL),(705,58,49,2,NULL),(706,60,49,2,NULL),(707,64,49,2,NULL),(708,66,49,2,NULL),(709,70,49,2,NULL),(710,14,49,2,NULL),(711,46,50,2,NULL),(712,49,50,2,NULL),(713,53,50,2,NULL),(714,58,50,2,NULL),(715,60,50,2,NULL),(716,64,50,2,NULL),(717,66,50,2,NULL),(718,70,50,2,NULL),(719,14,50,2,NULL),(720,46,54,2,NULL),(721,49,54,2,NULL),(722,53,54,2,NULL),(723,58,54,2,NULL),(724,60,54,2,NULL),(725,64,54,2,NULL),(726,66,54,2,NULL),(727,70,54,2,NULL),(728,14,54,2,NULL),(729,19,6,2,NULL),(730,19,12,2,NULL),(731,19,21,2,NULL),(732,19,22,2,NULL),(733,46,18,2,NULL),(734,49,18,2,NULL),(735,53,18,2,NULL),(736,58,18,2,NULL),(737,60,18,2,NULL),(738,64,18,2,NULL),(739,66,18,2,NULL),(740,70,18,2,NULL),(741,14,18,2,NULL),(742,27,10,2,NULL),(743,27,19,2,NULL),(744,27,29,2,NULL),(745,27,30,2,NULL),(746,31,7,2,NULL),(747,31,14,2,NULL),(748,31,24,2,NULL),(749,31,26,2,NULL),(750,36,11,2,NULL),(751,36,20,2,NULL),(752,36,31,2,NULL),(753,36,32,2,NULL),(754,39,15,2,NULL),(755,39,25,2,NULL),(756,39,35,2,NULL),(757,39,36,2,NULL),(758,43,13,2,NULL),(759,43,23,2,NULL),(760,43,33,2,NULL),(761,43,34,2,NULL),(762,46,38,2,NULL),(763,49,38,2,NULL),(764,53,38,2,NULL),(765,58,38,2,NULL),(766,60,38,2,NULL),(767,64,38,2,NULL),(768,66,38,2,NULL),(769,70,38,2,NULL),(770,74,8,2,NULL),(771,74,17,2,NULL),(772,74,27,2,NULL),(773,74,28,2,NULL),(774,77,8,2,NULL),(775,77,17,2,NULL),(776,77,27,2,NULL),(777,77,28,2,NULL),(778,14,38,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_NETWORK_STATE'),(2,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_SMS'),(1,'android.permission.SEND_SMS'),(15,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(13,'android.permission.WRITE_SETTINGS'),(7,'android.permission.WRITE_SMS'),(5,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'http://cowslab.com/abuse.php',NULL,NULL,NULL),(3,NULL,NULL,'http://cowslab.com/abuse.php',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,2,3),(6,2,4),(7,3,1),(8,3,2),(9,3,3),(10,3,4),(11,4,1),(12,4,2),(13,5,1),(14,4,3),(15,5,2),(16,4,4),(17,5,3),(18,5,4),(19,6,1),(20,6,2),(21,6,5),(22,6,6),(23,6,7),(24,6,8),(25,6,9),(26,6,10),(27,6,11),(28,6,12),(29,6,13),(30,6,14),(31,6,15),(32,6,17),(33,6,16);
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

-- Dump completed on 2015-10-12  3:31:39
