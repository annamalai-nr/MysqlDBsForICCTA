-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_754
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (4,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.VIEW'),(3,'ru.jabox.android.smsbox.SMS_SENT_Jabox'),(5,'ru.jabox.logcollector.intent.action.SEND_LOG');
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
INSERT INTO `Applications` VALUES (1,'com.first.azip',1),(2,'ru.jabox.android.smsbox.sexbox',14),(3,'ru.jabox.android.smsbox.happybox',14),(4,'ru.jabox.android.smsbox.lovebox',14);
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
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.SAMPLE_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.first.azip.AzipActivity'),(2,1,'com.first.azip.ScreenActivity'),(3,1,'com.first.azip.FinActivity'),(4,1,'com.first.azip.HelpActivity'),(5,2,'ru.jabox.android.smsbox.activity.StartupActivity'),(6,3,'ru.jabox.android.smsbox.activity.StartupActivity'),(7,2,'ru.jabox.android.smsbox.activity.ChooseCategoryActivity'),(8,2,'ru.jabox.android.smsbox.activity.ChooseCategoryActivity'),(9,2,'ru.jabox.android.smsbox.activity.ChooseTemplateActivity'),(10,2,'ru.jabox.android.smsbox.activity.SendMessageActivity'),(11,2,'ru.jabox.android.smsbox.activity.SendMessageActivity'),(12,3,'ru.jabox.android.smsbox.activity.ChooseCategoryActivity'),(13,2,'ru.jabox.android.smsbox.activity.HelpActivity'),(14,4,'ru.jabox.android.smsbox.activity.StartupActivity'),(15,2,'ru.jabox.android.smsbox.activity.SmsboxPreferencesActivity'),(16,2,'ru.jabox.android.smsbox.activity.SmsboxPreferencesActivity'),(17,3,'ru.jabox.android.smsbox.activity.ChooseTemplateActivity'),(18,2,'ru.jabox.android.smsbox.activity.OurProjectsActivity'),(19,2,'ru.jabox.android.smsbox.log.SendLogActivity'),(20,2,'ru.jabox.android.smsbox.log.SendLogActivity'),(21,3,'ru.jabox.android.smsbox.activity.SendMessageActivity'),(22,3,'ru.jabox.android.smsbox.activity.HelpActivity'),(23,4,'ru.jabox.android.smsbox.activity.ChooseCategoryActivity'),(24,3,'ru.jabox.android.smsbox.activity.SmsboxPreferencesActivity'),(25,4,'ru.jabox.android.smsbox.activity.ChooseTemplateActivity'),(26,3,'ru.jabox.android.smsbox.activity.OurProjectsActivity'),(27,4,'ru.jabox.android.smsbox.activity.SendMessageActivity'),(28,3,'ru.jabox.android.smsbox.log.SendLogActivity'),(29,4,'ru.jabox.android.smsbox.activity.HelpActivity'),(30,4,'ru.jabox.android.smsbox.activity.SmsboxPreferencesActivity'),(31,4,'ru.jabox.android.smsbox.activity.OurProjectsActivity'),(32,4,'ru.jabox.android.smsbox.log.SendLogActivity'),(33,2,'ru.jabox.android.smsbox.c.d'),(34,4,'ru.jabox.android.smsbox.c.d'),(35,3,'ru.jabox.android.smsbox.d.d');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'0'),(2,2,'0'),(3,19,'android.intent.extra.CC'),(4,19,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(5,10,'categoryId'),(6,19,'android.intent.extra.SUBJECT'),(7,10,'templateSenderName'),(8,9,'categoryId'),(9,21,'categoryId'),(10,27,'templateText'),(11,28,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(12,32,'android.intent.extra.EMAIL'),(13,28,'android.intent.extra.CC'),(14,18,'categoryId'),(15,19,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(16,10,'templateText'),(17,19,'ru.jabox.logcollector.intent.extra.BUFFER'),(18,28,'ru.jabox.logcollector.intent.extra.DATA'),(19,28,'ru.jabox.logcollector.intent.extra.BUFFER'),(20,21,'templateText'),(21,19,'android.intent.extra.BCC'),(22,10,'templateId'),(23,19,'ru.jabox.logcollector.intent.extra.DATA'),(24,19,'android.intent.extra.EMAIL'),(25,9,'categoryName'),(26,19,'ru.jabox.logcollector.intent.extra.FORMAT'),(27,11,'templateText'),(28,32,'android.intent.extra.CC'),(29,11,'templateId'),(30,20,'android.intent.extra.EMAIL'),(31,20,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(32,20,'android.intent.extra.BCC'),(33,20,'ru.jabox.logcollector.intent.extra.DATA'),(34,32,'ru.jabox.logcollector.intent.extra.DATA'),(35,32,'ru.jabox.logcollector.intent.extra.FORMAT'),(36,20,'android.intent.extra.SUBJECT'),(37,27,'categoryId'),(38,27,'templateSenderName'),(39,21,'templateId'),(40,25,'categoryName'),(41,27,'templateId'),(42,20,'ru.jabox.logcollector.intent.extra.FORMAT'),(43,28,'android.intent.extra.BCC'),(44,20,'ru.jabox.logcollector.intent.extra.BUFFER'),(45,21,'templateSenderName'),(46,32,'ru.jabox.logcollector.intent.extra.BUFFER'),(47,11,'categoryId'),(48,28,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(49,32,'android.intent.extra.BCC'),(50,11,'templateSenderName'),(51,28,'android.intent.extra.EMAIL'),(52,32,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(53,20,'android.intent.extra.CC'),(54,18,'categoryName'),(55,32,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(56,28,'ru.jabox.logcollector.intent.extra.FORMAT'),(57,25,'categoryId'),(58,32,'android.intent.extra.SUBJECT'),(59,28,'android.intent.extra.SUBJECT'),(60,20,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,13,'a',0,NULL,NULL),(13,12,'a',0,NULL,NULL),(14,15,'a',0,NULL,NULL),(15,14,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,18,'a',0,NULL,NULL),(18,17,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,4),(3,3,1),(4,4,1),(5,5,1),(6,6,7),(7,7,7),(8,8,7),(9,9,7),(10,10,7),(11,11,15),(12,12,18),(13,13,9),(14,14,7),(15,15,8),(16,16,23),(17,18,5),(18,17,5),(19,19,8),(20,20,7),(21,22,8),(22,21,13),(23,23,7),(24,24,13),(25,25,7),(26,26,17),(27,27,23),(28,28,13),(29,29,23),(30,30,5),(31,31,13),(32,32,7),(33,33,7),(34,34,8),(35,35,23),(36,36,17),(37,37,8),(38,38,23),(39,39,7),(40,40,9),(41,41,9),(42,42,23),(43,43,31),(44,44,13),(45,45,8),(46,46,26),(47,47,25),(48,48,13),(49,49,17),(50,50,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.first.azip.AzipActivity: void goSite()>',5,'a',NULL),(2,4,'<com.first.azip.HelpActivity: void onClick(android.view.View)>',8,'a',NULL),(3,1,'<com.first.azip.AzipActivity: boolean onKeyDown(int,android.view.KeyEvent)>',12,'a',NULL),(4,1,'<com.first.azip.AzipActivity: void sendSms(java.lang.String,java.lang.String)>',13,'a',NULL),(5,1,'<com.first.azip.AzipActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',9,'a',NULL),(6,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(7,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(8,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(9,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(10,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(11,14,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(12,17,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(13,9,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(14,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(15,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(16,23,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(17,5,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(18,5,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(19,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(20,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(21,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(22,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(23,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(24,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(25,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(26,18,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(27,23,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(28,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(29,23,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(30,5,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL),(31,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(32,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(33,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(34,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(35,23,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: void a(ru.jabox.android.smsbox.activity.ChooseCategoryActivity,int)>',14,'a',NULL),(36,18,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(37,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(38,23,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(39,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(40,9,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(41,9,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(42,23,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(43,31,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(44,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',25,'a',NULL),(45,7,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',63,'a',NULL),(46,26,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(47,25,'<ru.jabox.android.smsbox.activity.ChooseTemplateActivity: void a(ru.jabox.android.smsbox.activity.ChooseTemplateActivity,int)>',24,'a',NULL),(48,12,'<ru.jabox.android.smsbox.activity.ChooseCategoryActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',94,'a',NULL),(49,18,'<ru.jabox.android.smsbox.activity.OurProjectsActivity: void a(ru.jabox.android.smsbox.activity.OurProjectsActivity,int)>',21,'a',NULL),(50,6,'<ru.jabox.android.smsbox.activity.StartupActivity: void a()>',3,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,1,2),(2,2,2),(3,8,4),(4,9,4),(5,10,4),(6,11,4),(7,12,4),(8,13,4),(9,14,4),(10,16,4),(11,23,4),(12,24,4),(13,29,4),(14,31,4),(15,32,4),(16,33,4),(17,35,4),(18,36,4),(19,38,4),(20,39,4),(21,40,4),(22,41,4),(23,42,4),(24,43,4),(25,45,5),(26,46,4),(27,47,4),(28,48,4),(29,49,4),(30,50,4),(31,51,2),(32,54,4),(33,53,4),(34,56,4),(35,57,5),(36,58,4),(37,60,4),(38,61,4),(39,62,4),(40,63,5),(41,64,5),(42,65,4),(43,67,4),(44,69,4),(45,70,4),(46,71,2),(47,73,4),(48,76,4),(49,82,2),(50,84,5),(51,85,2),(52,89,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/first/azip/HelpActivity'),(2,4,'com/first/azip/FinActivity'),(3,5,'com/first/azip/ScreenActivity'),(4,6,'ru/jabox/android/smsbox/activity/HelpActivity'),(5,7,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(6,15,'ru/jabox/android/smsbox/activity/HelpActivity'),(7,17,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(8,18,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(9,21,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(10,22,'ru/jabox/android/smsbox/activity/HelpActivity'),(11,19,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(12,20,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(13,26,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(14,27,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(15,25,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(16,28,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(17,30,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(18,34,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(19,37,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(20,44,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(21,45,'ru/jabox/android/smsbox/log/SendLogActivity'),(22,52,'ru/jabox/android/smsbox/activity/HelpActivity'),(23,55,'ru/jabox/android/smsbox/activity/HelpActivity'),(24,59,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity'),(25,57,'ru/jabox/android/smsbox/log/SendLogActivity'),(26,66,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(27,63,'ru/jabox/android/smsbox/log/SendLogActivity'),(28,64,'ru/jabox/android/smsbox/log/SendLogActivity'),(29,68,'ru/jabox/android/smsbox/activity/ChooseTemplateActivity'),(30,72,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(31,74,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(32,75,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(33,77,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(34,79,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(35,78,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(36,80,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(37,83,'ru/jabox/android/smsbox/activity/SmsboxPreferencesActivity'),(38,81,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(39,86,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(40,84,'ru/jabox/android/smsbox/log/SendLogActivity'),(41,87,'ru/jabox/android/smsbox/activity/OurProjectsActivity'),(42,88,'ru/jabox/android/smsbox/activity/SendMessageActivity'),(43,90,'ru/jabox/android/smsbox/activity/ChooseCategoryActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,51,3),(4,71,4),(5,82,5),(6,85,6),(7,89,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'0'),(2,5,'0'),(3,8,'android.intent.extra.INTENT'),(4,9,'android.intent.extra.INTENT'),(5,10,'android.intent.extra.TITLE'),(6,10,'android.intent.extra.INTENT'),(7,11,'android.intent.extra.INTENT'),(8,12,'android.intent.extra.TITLE'),(9,12,'android.intent.extra.INTENT'),(10,13,'android.intent.extra.INTENT'),(11,14,'android.intent.extra.TITLE'),(12,14,'android.intent.extra.INTENT'),(13,16,'android.intent.extra.TITLE'),(14,16,'android.intent.extra.INTENT'),(15,17,'categoryName'),(16,17,'categoryId'),(17,19,'templateId'),(18,19,'templateSenderName'),(19,19,'categoryId'),(20,20,'templateId'),(21,19,'templateText'),(22,20,'categoryId'),(23,20,'templateText'),(24,23,'android.intent.extra.INTENT'),(25,25,'templateId'),(26,24,'android.intent.extra.INTENT'),(27,25,'categoryId'),(28,28,'templateId'),(29,25,'templateText'),(30,28,'templateSenderName'),(31,29,'android.intent.extra.TITLE'),(32,28,'categoryId'),(33,29,'android.intent.extra.INTENT'),(34,28,'templateText'),(35,31,'android.intent.extra.INTENT'),(36,32,'android.intent.extra.INTENT'),(37,33,'android.intent.extra.TITLE'),(38,34,'categoryName'),(39,33,'android.intent.extra.INTENT'),(40,37,'categoryName'),(41,35,'android.intent.extra.INTENT'),(42,34,'categoryId'),(43,36,'android.intent.extra.INTENT'),(44,37,'categoryId'),(45,38,'android.intent.extra.INTENT'),(46,39,'android.intent.extra.TITLE'),(47,40,'android.intent.extra.INTENT'),(48,39,'android.intent.extra.INTENT'),(49,41,'android.intent.extra.TITLE'),(50,42,'android.intent.extra.TITLE'),(51,41,'android.intent.extra.INTENT'),(52,43,'android.intent.extra.INTENT'),(53,42,'android.intent.extra.INTENT'),(54,45,'android.intent.extra.SUBJECT'),(55,45,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(56,46,'android.intent.extra.TITLE'),(57,47,'android.intent.extra.TITLE'),(58,45,'ru.jabox.logcollector.intent.extra.FORMAT'),(59,48,'android.intent.extra.INTENT'),(60,46,'android.intent.extra.INTENT'),(61,47,'android.intent.extra.INTENT'),(62,45,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(63,45,'ru.jabox.logcollector.intent.extra.DATA'),(64,49,'android.intent.extra.TITLE'),(65,49,'android.intent.extra.INTENT'),(66,50,'android.intent.extra.INTENT'),(67,53,'android.intent.extra.INTENT'),(68,54,'android.intent.extra.TITLE'),(69,54,'android.intent.extra.INTENT'),(70,56,'android.intent.extra.TITLE'),(71,57,'android.intent.extra.SUBJECT'),(72,58,'android.intent.extra.TITLE'),(73,56,'android.intent.extra.INTENT'),(74,57,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(75,58,'android.intent.extra.INTENT'),(76,57,'ru.jabox.logcollector.intent.extra.FORMAT'),(77,57,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(78,60,'android.intent.extra.INTENT'),(79,61,'android.intent.extra.TITLE'),(80,57,'ru.jabox.logcollector.intent.extra.DATA'),(81,61,'android.intent.extra.INTENT'),(82,62,'android.intent.extra.INTENT'),(83,63,'android.intent.extra.SUBJECT'),(84,64,'android.intent.extra.SUBJECT'),(85,63,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(86,64,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(87,63,'ru.jabox.logcollector.intent.extra.FORMAT'),(88,65,'android.intent.extra.TITLE'),(89,64,'ru.jabox.logcollector.intent.extra.FORMAT'),(90,66,'categoryName'),(91,63,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(92,64,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(93,65,'android.intent.extra.INTENT'),(94,66,'categoryId'),(95,63,'ru.jabox.logcollector.intent.extra.DATA'),(96,64,'ru.jabox.logcollector.intent.extra.DATA'),(97,67,'android.intent.extra.INTENT'),(98,68,'categoryName'),(99,68,'categoryId'),(100,69,'android.intent.extra.TITLE'),(101,69,'android.intent.extra.INTENT'),(102,70,'android.intent.extra.INTENT'),(103,73,'android.intent.extra.TITLE'),(104,73,'android.intent.extra.INTENT'),(105,76,'android.intent.extra.TITLE'),(106,77,'templateId'),(107,76,'android.intent.extra.INTENT'),(108,77,'categoryId'),(109,77,'templateText'),(110,78,'templateId'),(111,78,'categoryId'),(112,78,'templateText'),(113,80,'templateId'),(114,80,'templateSenderName'),(115,80,'categoryId'),(116,81,'templateId'),(117,80,'templateText'),(118,81,'templateSenderName'),(119,81,'categoryId'),(120,81,'templateText'),(121,84,'android.intent.extra.SUBJECT'),(122,86,'templateId'),(123,84,'ru.jabox.logcollector.intent.extra.FILTER_SPECS'),(124,86,'templateSenderName'),(125,84,'ru.jabox.logcollector.intent.extra.FORMAT'),(126,86,'categoryId'),(127,84,'ru.jabox.logcollector.intent.extra.SEND_INTENT_ACTION'),(128,86,'templateText'),(129,84,'ru.jabox.logcollector.intent.extra.DATA'),(130,88,'templateId'),(131,88,'categoryId'),(132,88,'templateText');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,6,1),(6,5,1),(7,7,1),(8,8,1),(9,9,1),(10,10,3),(11,11,3),(12,12,3),(13,13,3),(14,14,3),(15,15,3),(16,16,3),(17,17,3),(18,18,3),(19,19,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,2),(5,6,1),(6,5,1),(7,7,1),(8,8,1),(9,9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.first.azip'),(2,4,'com.first.azip'),(3,5,'com.first.azip'),(4,6,'ru.jabox.android.smsbox.sexbox'),(5,7,'ru.jabox.android.smsbox.sexbox'),(6,15,'ru.jabox.android.smsbox.sexbox'),(7,17,'ru.jabox.android.smsbox.sexbox'),(8,18,'ru.jabox.android.smsbox.lovebox'),(9,21,'ru.jabox.android.smsbox.sexbox'),(10,22,'ru.jabox.android.smsbox.sexbox'),(11,19,'ru.jabox.android.smsbox.happybox'),(12,20,'ru.jabox.android.smsbox.sexbox'),(13,26,'ru.jabox.android.smsbox.sexbox'),(14,27,'ru.jabox.android.smsbox.sexbox'),(15,25,'ru.jabox.android.smsbox.happybox'),(16,28,'ru.jabox.android.smsbox.sexbox'),(17,30,'ru.jabox.android.smsbox.sexbox'),(18,34,'ru.jabox.android.smsbox.happybox'),(19,37,'ru.jabox.android.smsbox.sexbox'),(20,44,'ru.jabox.android.smsbox.sexbox'),(21,45,'ru.jabox.android.smsbox.happybox'),(22,52,'ru.jabox.android.smsbox.lovebox'),(23,55,'ru.jabox.android.smsbox.happybox'),(24,59,'ru.jabox.android.smsbox.sexbox'),(25,57,'ru.jabox.android.smsbox.lovebox'),(26,66,'ru.jabox.android.smsbox.sexbox'),(27,63,'ru.jabox.android.smsbox.sexbox'),(28,64,'ru.jabox.android.smsbox.sexbox'),(29,68,'ru.jabox.android.smsbox.lovebox'),(30,72,'ru.jabox.android.smsbox.sexbox'),(31,74,'ru.jabox.android.smsbox.lovebox'),(32,75,'ru.jabox.android.smsbox.sexbox'),(33,77,'ru.jabox.android.smsbox.sexbox'),(34,79,'ru.jabox.android.smsbox.lovebox'),(35,78,'ru.jabox.android.smsbox.sexbox'),(36,80,'ru.jabox.android.smsbox.sexbox'),(37,83,'ru.jabox.android.smsbox.happybox'),(38,81,'ru.jabox.android.smsbox.sexbox'),(39,86,'ru.jabox.android.smsbox.lovebox'),(40,84,'ru.jabox.android.smsbox.sexbox'),(41,87,'ru.jabox.android.smsbox.happybox'),(42,88,'ru.jabox.android.smsbox.lovebox'),(43,90,'ru.jabox.android.smsbox.happybox');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,5,0),(7,5,0),(8,6,0),(9,15,0),(10,33,0),(11,33,0),(12,33,0),(13,34,0),(14,33,0),(15,33,0),(16,35,0),(17,35,0),(18,33,0),(19,34,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,1,0),(9,8,1,0),(10,8,1,0),(11,8,1,0),(12,8,1,0),(13,8,1,0),(14,8,1,0),(15,9,0,0),(16,8,1,0),(17,10,0,0),(18,11,0,0),(19,12,0,0),(20,13,0,0),(21,14,0,0),(22,15,0,0),(23,16,1,0),(24,16,1,0),(25,12,0,0),(26,17,0,0),(27,18,0,0),(28,13,0,0),(29,16,1,0),(30,19,0,0),(31,16,1,0),(32,20,1,0),(33,16,1,0),(34,21,0,0),(35,20,1,0),(36,22,1,0),(37,23,0,0),(38,16,1,0),(39,20,1,0),(40,22,1,0),(41,16,1,0),(42,22,1,0),(43,20,1,0),(44,25,0,0),(45,24,0,0),(46,16,1,0),(47,20,1,0),(48,22,1,0),(49,22,1,0),(50,20,1,0),(51,26,1,0),(52,27,0,0),(53,22,1,0),(54,20,1,0),(55,28,0,0),(56,22,1,0),(57,29,0,0),(58,20,1,0),(59,30,0,0),(60,31,1,0),(61,22,1,0),(62,31,1,0),(63,32,0,0),(64,33,0,0),(65,31,1,0),(66,34,0,0),(67,31,1,0),(68,35,0,0),(69,31,1,0),(70,31,1,0),(71,36,1,0),(72,37,0,0),(73,31,1,0),(74,38,0,0),(75,39,0,0),(76,31,1,0),(77,40,0,0),(78,41,0,0),(79,42,0,0),(80,40,0,0),(81,41,0,0),(82,43,1,0),(83,44,0,0),(84,45,0,0),(85,46,1,0),(86,47,0,0),(87,48,0,0),(88,47,0,0),(89,49,1,0),(90,50,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (2,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(1,'android.permission.SEND_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'http://cowslab.com/abuse.php',NULL,NULL,NULL),(3,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,3,1),(4,2,1),(5,3,2),(6,2,2),(7,3,3),(8,2,3),(9,2,4),(10,3,4),(11,4,1),(12,4,2),(13,4,3),(14,4,4);
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

-- Dump completed on 2015-10-09  0:41:05
