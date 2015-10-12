-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_67
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (7,'(.*)'),(3,'SMS_SENT'),(4,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.SCREEN_OFF'),(6,'android.intent.action.USER_PRESENT'),(2,'android.intent.action.VIEW'),(10,'com.xtralogic.logcollector.intent.action.SEND_LOG'),(8,'ru.erwap.android.smsbox.SMS_SENT_Jabox'),(9,'ru.jabox.android.smsbox.SMS_SENT_Jabox'),(11,'ru.jabox.logcollector.intent.action.SEND_LOG');
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
INSERT INTO `Applications` VALUES (1,'com.depositmobi',1),(2,'ru.erwap.android.smsbox.jokebox',4),(3,'ru.jabox.android.smsbox.lovebox',9),(4,'com.hazuu.don',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.depositmobi.Main'),(2,1,'com.depositmobi.ReadOffertActivity'),(3,1,'com.depositmobi.ActivationDoneActivity'),(4,2,'ru.erwap.android.smsbox.activity.StartupActivity'),(5,2,'ru.erwap.android.smsbox.activity.ChooseCategoryActivity'),(6,2,'ru.erwap.android.smsbox.activity.ChooseTemplateActivity'),(7,2,'ru.erwap.android.smsbox.activity.SendMessageActivity'),(8,2,'ru.erwap.android.smsbox.activity.HelpActivity'),(9,2,'ru.erwap.android.smsbox.activity.SmsboxPreferencesActivity'),(10,2,'com.xtralogic.android.logcollector.SendLogActivity'),(11,3,'ru.jabox.android.smsbox.activity.StartupActivity'),(12,3,'ru.jabox.android.smsbox.activity.ChooseCategoryActivity'),(13,3,'ru.jabox.android.smsbox.activity.ChooseTemplateActivity'),(14,3,'ru.jabox.android.smsbox.activity.SendMessageActivity'),(15,3,'ru.jabox.android.smsbox.activity.HelpActivity'),(16,3,'ru.jabox.android.smsbox.activity.SmsboxPreferencesActivity'),(17,3,'ru.jabox.android.smsbox.activity.OurProjectsActivity'),(18,3,'ru.jabox.android.smsbox.log.SendLogActivity'),(19,4,'com.hazuu.don.MainActivity'),(20,4,'com.google.ads.AdActivity'),(21,1,'com.depositmobi.Main$1'),(22,4,'com.hazuu.don.MainActivity$8'),(23,4,'com.google.ads.util.AdUtil$UserActivityReceiver'),(24,2,'ru.erwap.android.smsbox.a.b'),(25,3,'ru.jabox.android.smsbox.c.d'),(26,2,'ru.erwap.android.smsbox.activity.o');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'URL'),(2,10,'com.xtralogic.logcollector.intent.extra.BUFFER'),(3,10,'android.intent.extra.EMAIL'),(4,6,'categoryName'),(5,20,'com.google.circles.platform.result.extra.ACTION'),(6,20,'com.google.ads.AdOpener'),(7,20,'action'),(8,20,'com.google.circles.platform.result.extra.CONFIRMATION'),(9,10,'com.xtralogic.logcollector.intent.extra.DATA'),(10,20,'params'),(11,7,'templateSenderName'),(12,18,'android.intent.extra.CC'),(13,18,'android.intent.extra.EMAIL'),(14,18,'ru.jabox.logcollector.intent.extra.DATA'),(15,18,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(16,10,'android.intent.extra.SUBJECT'),(17,10,'android.intent.extra.BCC'),(18,10,'com.xtralogic.logcollector.intent.extra.SEND_INTENT_ACTION'),(19,7,'templateId'),(20,10,'com.xtralogic.logcollector.intent.extra.FILTER_SPECS'),(21,7,'categoryId'),(22,14,'categoryId'),(23,6,'categoryId'),(24,7,'templateText'),(25,14,'templateText'),(26,14,'templateSenderName'),(27,10,'android.intent.extra.CC'),(28,10,'com.xtralogic.logcollector.intent.extra.FORMAT'),(29,18,'android.intent.extra.BCC'),(30,13,'categoryId'),(31,13,'categoryName'),(32,18,'android.intent.extra.SUBJECT'),(33,18,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(34,18,'ru.jabox.logcollector.intent.extra.FORMAT'),(35,18,'ru.jabox.logcollector.intent.extra.BUFFER'),(36,14,'templateId');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,23,'r',1,NULL,NULL),(23,24,'r',1,NULL,NULL),(24,25,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,3),(4,4,1),(5,5,1),(6,6,1),(7,7,5),(8,8,5),(9,9,19),(10,10,20),(11,11,20),(12,12,20),(13,13,4),(14,15,13),(15,14,5),(16,16,20),(17,17,5),(18,18,12),(19,19,19),(20,20,5),(21,21,12),(22,22,12),(23,23,12),(24,24,4),(25,25,6),(26,26,11),(27,27,12),(28,28,12),(29,29,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.depositmobi.Main: void showLink(boolean)>',10,'a',NULL),(2,3,'<com.depositmobi.ActivationDoneActivity: void onClick(android.view.View)>',8,'a',NULL),(3,3,'<com.depositmobi.ActivationDoneActivity: void onClick(android.view.View)>',8,'a',NULL),(4,1,'<com.depositmobi.Main: void onClick(android.view.View)>',7,'a',NULL),(5,1,'<com.depositmobi.Main: void showLink(boolean)>',10,'a',NULL),(6,1,'<com.depositmobi.Main: void onClick(android.view.View)>',7,'a',NULL),(7,5,'<ru.erwap.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(8,5,'<ru.erwap.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(9,22,'<com.hazuu.don.MainActivity$8: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(10,20,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(11,20,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(12,20,'<com.google.ads.AdActivity: void b(java.util.HashMap,com.google.ads.internal.d)>',31,'a',NULL),(13,4,'<ru.erwap.android.smsbox.activity.StartupActivity: void c(ru.erwap.android.smsbox.activity.StartupActivity)>',7,'a',NULL),(14,5,'<ru.erwap.android.smsbox.activity.ChooseCategoryActivity: void a(ru.erwap.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(15,13,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(16,20,'<com.google.ads.AdActivity: void a(java.util.HashMap,com.google.ads.internal.d)>',23,'a',NULL),(17,5,'<ru.erwap.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(18,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(19,22,'<com.hazuu.don.MainActivity$8: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(20,5,'<ru.erwap.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(21,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(22,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(23,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(24,26,'<ru.erwap.android.smsbox.activity.o: void onClick(android.content.DialogInterface,int)>',17,'a',NULL),(25,6,'<ru.erwap.android.smsbox.activity.ChooseTemplateActivity: void a(ru.erwap.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(26,11,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(27,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(28,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(29,17,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,2),(2,3,2),(3,8,4),(4,9,4),(5,10,2),(6,11,4),(7,12,4),(8,14,4),(9,15,4),(10,16,4),(11,17,4),(12,18,2),(13,19,2),(14,21,7),(15,22,7),(16,25,7),(17,26,7),(18,27,2),(19,28,2),(20,33,2),(21,34,10),(22,37,4),(23,39,4),(24,41,4),(25,42,4),(26,44,4),(27,45,4),(28,46,4),(29,47,4),(30,50,11),(31,51,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,13,1),(2,30,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/depositmobi/ActivationDoneActivity'),(2,4,'com/depositmobi/ReadOffertActivity'),(3,5,'com/depositmobi/ActivationDoneActivity'),(4,6,'com/depositmobi/ReadOffertActivity'),(5,7,'ru/erwap/android/smsbox/activity/HelpActivity'),(6,13,'com.google.android.apps.circles.platform.PlusOneActivity'),(7,20,'ru/erwap/android/smsbox/activity/ChooseCategoryActivity'),(8,23,'ru/erwap/android/smsbox/activity/ChooseTemplateActivity'),(9,24,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(10,29,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(11,31,'ru/erwap/android/smsbox/activity/SmsboxPreferencesActivity'),(12,30,'com.google.android.apps.circles.platform.PlusOneActivity'),(13,32,'ru/jabox/android/smsbox/activity/HelpActivity'),(14,35,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(15,34,'com/xtralogic/android/logcollector/SendLogActivity'),(16,36,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(17,38,'ru/erwap/android/smsbox/activity/ChooseCategoryActivity'),(18,40,'ru/erwap/android/smsbox/activity/SendMessageActivity'),(19,43,'ru/erwap/android/smsbox/activity/SendMessageActivity'),(20,48,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(21,49,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(22,50,'ru/jabox/android/smsbox/log/SendLogActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,10,3),(4,18,4),(5,19,5),(6,21,6),(7,22,7),(8,25,8),(9,26,9),(10,27,10),(11,28,11),(12,33,12),(13,51,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'URL'),(2,5,'URL'),(3,8,'android.intent.extra.INTENT'),(4,9,'android.intent.extra.INTENT'),(5,11,'android.intent.extra.TITLE'),(6,11,'android.intent.extra.INTENT'),(7,12,'android.intent.extra.INTENT'),(8,13,'com.google.circles.platform.intent.extra.ACTION'),(9,14,'android.intent.extra.TITLE'),(10,13,'(.*)'),(11,14,'android.intent.extra.INTENT'),(12,13,'com.google.circles.platform.intent.extra.ENTITY'),(13,13,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(14,15,'android.intent.extra.INTENT'),(15,16,'android.intent.extra.TITLE'),(16,16,'android.intent.extra.INTENT'),(17,17,'android.intent.extra.TITLE'),(18,17,'android.intent.extra.INTENT'),(19,23,'categoryName'),(20,24,'templateId'),(21,23,'categoryId'),(22,24,'templateSenderName'),(23,24,'categoryId'),(24,24,'templateText'),(25,29,'templateId'),(26,29,'categoryId'),(27,29,'templateText'),(28,30,'com.google.circles.platform.intent.extra.ACTION'),(29,30,'(.*)'),(30,30,'com.google.circles.platform.intent.extra.ENTITY'),(31,30,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(32,34,'android.intent.extra.SUBJECT'),(33,34,'com.xtralogic.logcollector.intent.extra.DATA'),(34,34,'com.xtralogic.logcollector.intent.extra.FILTER_SPECS'),(35,34,'com.xtralogic.logcollector.intent.extra.SEND_INTENT_ACTION'),(36,34,'com.xtralogic.logcollector.intent.extra.FORMAT'),(37,37,'android.intent.extra.INTENT'),(38,39,'android.intent.extra.INTENT'),(39,40,'templateId'),(40,40,'categoryId'),(41,41,'android.intent.extra.TITLE'),(42,40,'templateText'),(43,41,'android.intent.extra.INTENT'),(44,42,'android.intent.extra.INTENT'),(45,43,'templateId'),(46,43,'templateSenderName'),(47,43,'categoryId'),(48,44,'android.intent.extra.TITLE'),(49,43,'templateText'),(50,44,'android.intent.extra.INTENT'),(51,45,'android.intent.extra.INTENT'),(52,46,'android.intent.extra.TITLE'),(53,46,'android.intent.extra.INTENT'),(54,47,'android.intent.extra.TITLE'),(55,47,'android.intent.extra.INTENT'),(56,49,'categoryName'),(57,49,'categoryId'),(58,50,'android.intent.extra.SUBJECT'),(59,50,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(60,50,'ru.jabox.logcollector.intent.extra.FORMAT'),(61,50,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(62,50,'ru.jabox.logcollector.intent.extra.DATA');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,3),(8,8,3),(9,9,5),(10,9,6),(11,10,8),(12,11,5),(13,11,6),(14,12,9),(15,13,8),(16,14,9);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,21,'(.*)','(.*)'),(2,22,'(.*)','(.*)'),(3,27,'(.*)','(.*)'),(4,28,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.depositmobi'),(2,4,'com.depositmobi'),(3,5,'com.depositmobi'),(4,6,'com.depositmobi'),(5,7,'ru.erwap.android.smsbox.jokebox'),(6,13,'com.google.android.apps.plus'),(7,20,'ru.erwap.android.smsbox.jokebox'),(8,23,'ru.erwap.android.smsbox.jokebox'),(9,24,'ru.jabox.android.smsbox.lovebox'),(10,29,'ru.jabox.android.smsbox.lovebox'),(11,31,'ru.erwap.android.smsbox.jokebox'),(12,30,'com.google.android.apps.plus'),(13,32,'ru.jabox.android.smsbox.lovebox'),(14,35,'ru.jabox.android.smsbox.lovebox'),(15,34,'ru.erwap.android.smsbox.jokebox'),(16,36,'ru.jabox.android.smsbox.lovebox'),(17,38,'ru.erwap.android.smsbox.jokebox'),(18,40,'ru.erwap.android.smsbox.jokebox'),(19,43,'ru.erwap.android.smsbox.jokebox'),(20,48,'ru.jabox.android.smsbox.lovebox'),(21,49,'ru.jabox.android.smsbox.lovebox'),(22,50,'ru.jabox.android.smsbox.lovebox');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,1,0),(3,4,0),(4,11,0),(5,19,0),(6,19,0),(7,21,0),(8,21,0),(9,22,0),(10,23,0),(11,22,0),(12,24,0),(13,23,0),(14,24,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,1,0),(9,8,1,0),(10,9,1,0),(11,8,1,0),(12,8,1,0),(13,10,0,0),(14,8,1,0),(15,8,1,0),(16,8,1,0),(17,8,1,0),(18,11,1,0),(19,12,1,0),(20,13,0,0),(21,11,1,0),(22,12,1,0),(23,14,0,0),(24,15,0,0),(25,11,1,0),(26,12,1,0),(27,11,1,0),(28,12,1,0),(29,15,0,0),(30,16,0,0),(31,17,0,0),(32,18,0,0),(33,19,1,0),(34,20,0,0),(35,21,0,0),(36,22,0,0),(37,23,1,0),(38,24,0,0),(39,23,1,0),(40,25,0,0),(41,23,1,0),(42,23,1,0),(43,25,0,0),(44,23,1,0),(45,23,1,0),(46,23,1,0),(47,23,1,0),(48,26,0,0),(49,27,0,0),(50,28,0,0),(51,29,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,3,2,NULL),(2,4,2,2,NULL),(3,5,3,2,NULL),(4,6,2,2,NULL),(5,2,1,2,NULL),(6,3,1,2,NULL),(7,8,1,2,NULL),(8,9,1,2,NULL),(9,11,1,2,NULL),(10,12,1,2,NULL),(11,14,1,2,NULL),(12,15,1,2,NULL),(13,16,1,2,NULL),(14,17,1,2,NULL),(15,37,1,2,NULL),(16,39,1,2,NULL),(17,41,1,2,NULL),(18,42,1,2,NULL),(19,44,1,2,NULL),(20,45,1,2,NULL),(21,46,1,2,NULL),(22,47,1,2,NULL),(23,51,1,2,NULL),(24,18,1,2,NULL),(25,25,1,2,NULL),(26,19,1,2,NULL),(27,26,1,2,NULL),(28,2,21,2,NULL),(29,3,21,2,NULL),(30,2,4,2,NULL),(31,3,4,2,NULL),(32,2,23,2,NULL),(33,3,23,2,NULL),(34,2,11,2,NULL),(35,3,11,2,NULL),(36,2,24,2,NULL),(37,3,24,2,NULL),(38,2,19,2,NULL),(39,3,19,2,NULL),(40,2,22,2,NULL),(41,3,22,2,NULL),(42,8,21,2,NULL),(43,9,21,2,NULL),(44,11,21,2,NULL),(45,12,21,2,NULL),(46,14,21,2,NULL),(47,15,21,2,NULL),(48,16,21,2,NULL),(49,17,21,2,NULL),(50,37,21,2,NULL),(51,39,21,2,NULL),(52,41,21,2,NULL),(53,42,21,2,NULL),(54,44,21,2,NULL),(55,45,21,2,NULL),(56,46,21,2,NULL),(57,47,21,2,NULL),(58,51,21,2,NULL),(59,18,21,2,NULL),(60,25,21,2,NULL),(61,19,21,2,NULL),(62,26,21,2,NULL),(63,8,19,2,NULL),(64,9,19,2,NULL),(65,11,19,2,NULL),(66,12,19,2,NULL),(67,14,19,2,NULL),(68,15,19,2,NULL),(69,16,19,2,NULL),(70,17,19,2,NULL),(71,37,19,2,NULL),(72,39,19,2,NULL),(73,41,19,2,NULL),(74,42,19,2,NULL),(75,44,19,2,NULL),(76,45,19,2,NULL),(77,46,19,2,NULL),(78,47,19,2,NULL),(79,51,19,2,NULL),(80,18,19,2,NULL),(81,25,19,2,NULL),(82,19,19,2,NULL),(83,26,19,2,NULL),(84,18,4,2,NULL),(85,25,4,2,NULL),(86,19,4,2,NULL),(87,26,4,2,NULL),(88,18,23,2,NULL),(89,25,23,2,NULL),(90,19,23,2,NULL),(91,26,23,2,NULL),(92,18,11,2,NULL),(93,25,11,2,NULL),(94,19,11,2,NULL),(95,26,11,2,NULL),(96,18,24,2,NULL),(97,25,24,2,NULL),(98,19,24,2,NULL),(99,26,24,2,NULL),(100,18,22,2,NULL),(101,25,22,2,NULL),(102,19,22,2,NULL),(103,26,22,2,NULL),(104,8,22,2,NULL),(105,9,22,2,NULL),(106,11,22,2,NULL),(107,12,22,2,NULL),(108,14,22,2,NULL),(109,15,22,2,NULL),(110,16,22,2,NULL),(111,17,22,2,NULL),(112,37,22,2,NULL),(113,39,22,2,NULL),(114,41,22,2,NULL),(115,42,22,2,NULL),(116,44,22,2,NULL),(117,45,22,2,NULL),(118,46,22,2,NULL),(119,47,22,2,NULL),(120,51,22,2,NULL),(121,48,12,2,NULL),(122,8,11,2,NULL),(123,9,11,2,NULL),(124,11,11,2,NULL),(125,12,11,2,NULL),(126,14,11,2,NULL),(127,15,11,2,NULL),(128,16,11,2,NULL),(129,17,11,2,NULL),(130,37,11,2,NULL),(131,39,11,2,NULL),(132,41,11,2,NULL),(133,42,11,2,NULL),(134,44,11,2,NULL),(135,45,11,2,NULL),(136,46,11,2,NULL),(137,47,11,2,NULL),(138,51,11,2,NULL),(139,32,15,2,NULL),(140,35,16,2,NULL),(141,36,17,2,NULL),(142,49,13,2,NULL),(143,50,18,2,NULL),(144,37,4,2,NULL),(145,39,4,2,NULL),(146,41,4,2,NULL),(147,42,4,2,NULL),(148,44,4,2,NULL),(149,45,4,2,NULL),(150,46,4,2,NULL),(151,47,4,2,NULL),(152,37,23,2,NULL),(153,39,23,2,NULL),(154,41,23,2,NULL),(155,42,23,2,NULL),(156,44,23,2,NULL),(157,45,23,2,NULL),(158,46,23,2,NULL),(159,47,23,2,NULL),(160,37,24,2,NULL),(161,39,24,2,NULL),(162,41,24,2,NULL),(163,42,24,2,NULL),(164,44,24,2,NULL),(165,45,24,2,NULL),(166,46,24,2,NULL),(167,47,24,2,NULL),(168,24,14,2,NULL),(169,29,14,2,NULL),(170,51,4,2,NULL),(171,51,23,2,NULL),(172,51,24,2,NULL),(173,8,24,2,NULL),(174,9,24,2,NULL),(175,11,24,2,NULL),(176,12,24,2,NULL),(177,14,24,2,NULL),(178,15,24,2,NULL),(179,16,24,2,NULL),(180,17,24,2,NULL),(181,20,5,2,NULL),(182,8,4,2,NULL),(183,9,4,2,NULL),(184,11,4,2,NULL),(185,12,4,2,NULL),(186,14,4,2,NULL),(187,15,4,2,NULL),(188,16,4,2,NULL),(189,17,4,2,NULL),(190,7,8,2,NULL),(191,23,6,2,NULL),(192,31,9,2,NULL),(193,34,10,2,NULL),(194,8,23,2,NULL),(195,9,23,2,NULL),(196,11,23,2,NULL),(197,12,23,2,NULL),(198,14,23,2,NULL),(199,15,23,2,NULL),(200,16,23,2,NULL),(201,17,23,2,NULL),(202,40,7,2,NULL),(203,43,7,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.CALL_PHONE'),(4,'android.permission.INTERNET'),(7,'android.permission.READ_CONTACTS'),(6,'android.permission.READ_LOGS'),(2,'android.permission.READ_SMS'),(1,'android.permission.RECEIVE_WAP_PUSH'),(3,'android.permission.SEND_SMS'),(8,'android.permission.WRITE_EXTERNAL_STORAGE');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'http://bit.ly/KiNBPs',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'http://tamdiem.astore.vn/home/bookmark/download/MAI',NULL,NULL,NULL),(13,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,3),(2,1,1),(3,1,2),(4,1,4),(5,1,4),(6,1,5),(7,1,5),(8,2,3),(9,2,4),(10,2,6),(11,2,7),(12,3,3),(13,3,4),(14,3,6),(15,3,7),(16,4,3),(17,4,4),(18,4,8),(19,4,9);
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

-- Dump completed on 2015-10-12  3:31:19
