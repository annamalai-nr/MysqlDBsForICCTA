-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_188
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
INSERT INTO `ActionStrings` VALUES (5,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.VIEW'),(3,'android.net.wifi.PICK_WIFI_NETWORK'),(4,'android.net.wifi.WIFI_STATE_CHANGED');
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
INSERT INTO `Applications` VALUES (1,'com.zoner.android.eicar',1),(2,'de.trier.infsec.koch.droidsheep',4),(3,'de.trier.infsec.koch.droidsheep',14),(4,'de.trier.infsec.koch.droidsheep',6),(5,'de.trier.infsec.koch.droidsheep',9),(6,'de.trier.infsec.koch.droidsheep',15);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
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
INSERT INTO `Classes` VALUES (1,1,'com.zoner.android.eicar.ActMain'),(2,1,'com.zoner.android.eicar.ActMain$1'),(3,2,'de.trier.infsec.koch.droidsheep.activities.ListenActivity'),(4,2,'de.trier.infsec.koch.droidsheep.activities.HijackActivity'),(5,2,'de.trier.infsec.koch.droidsheep.arpspoof.ArpspoofService'),(6,4,'de.trier.infsec.koch.droidsheep.activities.ListenActivity'),(7,3,'de.trier.infsec.koch.droidsheep.activities.ListenActivity'),(8,5,'de.trier.infsec.koch.droidsheep.activities.ListenActivity'),(9,4,'de.trier.infsec.koch.droidsheep.activities.HijackActivity'),(10,3,'de.trier.infsec.koch.droidsheep.activities.HijackActivity'),(11,5,'de.trier.infsec.koch.droidsheep.activities.HijackActivity'),(12,4,'de.trier.infsec.koch.droidsheep.arpspoof.ArpspoofService'),(13,6,'de.trier.infsec.koch.droidsheep.activities.ListenActivity'),(14,3,'de.trier.infsec.koch.droidsheep.activities.DonateActivity'),(15,5,'de.trier.infsec.koch.droidsheep.activities.DonateActivity'),(16,4,'de.trier.infsec.koch.droidsheep.thread.ListenService'),(17,6,'de.trier.infsec.koch.droidsheep.activities.HijackActivity'),(18,3,'de.trier.infsec.koch.droidsheep.activities.UpdateActivity'),(19,5,'de.trier.infsec.koch.droidsheep.arpspoof.ArpspoofService'),(20,5,'de.trier.infsec.koch.droidsheep.thread.ListenService'),(21,6,'de.trier.infsec.koch.droidsheep.activities.DonateActivity'),(22,3,'de.trier.infsec.koch.droidsheep.services.ArpspoofService'),(23,3,'de.trier.infsec.koch.droidsheep.services.DroidSheepService'),(24,6,'de.trier.infsec.koch.droidsheep.activities.UpdateActivity'),(25,6,'de.trier.infsec.koch.droidsheep.activities.UpdateActivity'),(26,6,'de.trier.infsec.koch.droidsheep.services.ArpspoofService'),(27,6,'de.trier.infsec.koch.droidsheep.services.DroidSheepService'),(28,2,'de.trier.infsec.koch.droidsheep.objects.WifiChangeChecker'),(29,4,'de.trier.infsec.koch.droidsheep.objects.WifiChangeChecker'),(30,5,'de.trier.infsec.koch.droidsheep.objects.WifiChangeChecker'),(31,5,'de.trier.infsec.koch.droidsheep.helper.MailHelper'),(32,3,'de.trier.infsec.koch.droidsheep.helper.MailHelper'),(33,6,'de.trier.infsec.koch.droidsheep.helper.MailHelper'),(34,3,'de.trier.infsec.koch.droidsheep.objects.WifiChangeChecker'),(35,6,'de.trier.infsec.koch.droidsheep.objects.WifiChangeChecker');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'interface'),(2,4,'gateway'),(3,3,'ID'),(4,3,'MOBILE'),(5,4,'localBin'),(6,11,'localBin'),(7,8,'ID'),(8,11,'gateway'),(9,8,'MOBILE'),(10,11,'interface'),(11,18,'localBin'),(12,10,'MOBILE'),(13,10,'ID'),(14,18,'gateway'),(15,18,'interface'),(16,16,'AUTH'),(17,26,'localBin'),(18,22,'gateway'),(19,16,'MOBILE'),(20,9,'AUTH'),(21,26,'gateway'),(22,26,'interface'),(23,22,'interface'),(24,9,'MOBILE'),(25,22,'localBin');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,3,'a',1,NULL,NULL),(3,4,'a',1,NULL,NULL),(4,5,'s',0,NULL,NULL),(5,6,'a',1,NULL,NULL),(6,7,'a',1,NULL,NULL),(7,8,'a',1,NULL,NULL),(8,9,'a',1,NULL,NULL),(9,10,'a',1,NULL,NULL),(10,11,'a',1,NULL,NULL),(11,12,'s',0,NULL,NULL),(12,13,'a',1,NULL,NULL),(13,14,'a',1,NULL,NULL),(14,15,'a',1,NULL,NULL),(15,16,'s',0,NULL,NULL),(16,17,'a',1,NULL,NULL),(17,18,'a',1,NULL,NULL),(18,19,'s',0,NULL,NULL),(19,20,'s',0,NULL,NULL),(20,21,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,25,'a',1,NULL,NULL),(25,24,'a',1,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,34,'r',1,NULL,NULL),(32,35,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,2),(5,5,5),(6,6,5),(7,7,14),(8,8,7),(9,9,7),(10,10,7),(11,11,10),(12,12,7),(13,13,9),(14,14,12),(15,15,6),(16,16,12),(17,17,6),(18,18,21),(19,19,16),(20,20,6),(21,21,12),(22,22,12),(23,23,12),(24,24,16),(25,25,12),(26,26,12),(27,27,6),(28,28,6),(29,29,13),(30,30,12),(31,31,20),(32,32,12),(33,33,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.zoner.android.eicar.ActMain$1: void onClick(android.view.View)>',6,'a',NULL),(2,3,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: void click(int,boolean)>',22,'a',NULL),(3,3,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(4,3,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: void startSpoofing()>',31,'s',NULL),(5,6,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: void click(int,boolean)>',22,'a',NULL),(6,6,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(7,15,'<de.trier.infsec.koch.droidsheep.activities.DonateActivity: void onClick(android.view.View)>',12,'a',NULL),(8,8,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(9,31,'<de.trier.infsec.koch.droidsheep.helper.MailHelper: void sendAuthByMail(android.content.Context,de.trier.infsec.koch.droidsheep.auth.Auth)>',15,'a',NULL),(10,8,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',38,'a',NULL),(11,11,'<de.trier.infsec.koch.droidsheep.activities.HijackActivity: void showDonate()>',8,'a',NULL),(12,8,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: void click(int,boolean)>',22,'a',NULL),(13,10,'<de.trier.infsec.koch.droidsheep.activities.HijackActivity: void showDonate()>',8,'a',NULL),(14,13,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(15,7,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(16,13,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: void click(int,boolean)>',26,'a',NULL),(17,7,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(18,21,'<de.trier.infsec.koch.droidsheep.activities.DonateActivity: void onClick(android.view.View)>',12,'a',NULL),(19,17,'<de.trier.infsec.koch.droidsheep.activities.HijackActivity: void showDonate()>',8,'a',NULL),(20,32,'<de.trier.infsec.koch.droidsheep.helper.MailHelper: void sendAuthByMail(android.content.Context,de.trier.infsec.koch.droidsheep.auth.Auth)>',15,'a',NULL),(21,13,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(22,13,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(23,13,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(24,17,'<de.trier.infsec.koch.droidsheep.activities.HijackActivity: void showDonate()>',8,'a',NULL),(25,33,'<de.trier.infsec.koch.droidsheep.helper.MailHelper: void sendAuthByMail(android.content.Context,de.trier.infsec.koch.droidsheep.auth.Auth)>',15,'a',NULL),(26,33,'<de.trier.infsec.koch.droidsheep.helper.MailHelper: void sendAuthByMail(android.content.Context,de.trier.infsec.koch.droidsheep.auth.Auth)>',15,'a',NULL),(27,7,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: void click(int,boolean)>',26,'a',NULL),(28,7,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(29,14,'<de.trier.infsec.koch.droidsheep.activities.DonateActivity: void onClick(android.view.View)>',12,'a',NULL),(30,13,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(31,21,'<de.trier.infsec.koch.droidsheep.activities.DonateActivity: void onClick(android.view.View)>',12,'a',NULL),(32,13,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: void click(int,boolean)>',26,'a',NULL),(33,13,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,3,3),(3,6,3),(4,7,2),(5,8,3),(6,9,5),(7,10,5),(8,11,5),(9,12,5),(10,13,5),(11,14,5),(12,15,5),(13,16,5),(14,17,2),(15,21,2),(16,22,2),(17,24,3),(18,25,2),(19,27,5),(20,28,5),(21,29,2),(22,30,2),(23,31,5),(24,33,5),(25,32,2),(26,35,5),(27,36,5),(28,38,5),(29,37,5),(30,39,5),(31,40,5),(32,41,5),(33,42,5),(34,43,5),(35,44,5),(36,45,5),(37,46,5),(38,47,5),(39,48,5),(40,49,5),(41,50,5),(42,52,5),(43,53,5),(44,54,5),(45,55,5),(46,56,2),(47,57,2),(48,58,3),(49,59,2),(50,61,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'de/trier/infsec/koch/droidsheep/activities/HijackActivity'),(2,4,'de/trier/infsec/koch/droidsheep/arpspoof/ArpspoofService'),(3,5,'de/trier/infsec/koch/droidsheep/activities/HijackActivity'),(4,18,'de/trier/infsec/koch/droidsheep/activities/DonateActivity'),(5,19,'de/trier/infsec/koch/droidsheep/activities/HijackActivity'),(6,20,'de/trier/infsec/koch/droidsheep/activities/DonateActivity'),(7,23,'de/trier/infsec/koch/droidsheep/activities/HijackActivity'),(8,26,'de/trier/infsec/koch/droidsheep/activities/DonateActivity'),(9,34,'de/trier/infsec/koch/droidsheep/activities/DonateActivity'),(10,51,'de/trier/infsec/koch/droidsheep/activities/HijackActivity'),(11,60,'de/trier/infsec/koch/droidsheep/activities/HijackActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,7,2),(3,17,3),(4,21,4),(5,22,5),(6,25,6),(7,29,7),(8,30,8),(9,32,9),(10,56,10),(11,57,11),(12,59,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'MOBILE'),(2,2,'ID'),(3,4,'gateway'),(4,4,'localBin'),(5,4,'interface'),(6,5,'MOBILE'),(7,5,'ID'),(8,9,'android.intent.extra.INTENT'),(9,10,'android.intent.extra.INTENT'),(10,11,'android.intent.extra.TITLE'),(11,11,'android.intent.extra.INTENT'),(12,12,'android.intent.extra.INTENT'),(13,13,'android.intent.extra.TITLE'),(14,13,'android.intent.extra.INTENT'),(15,14,'android.intent.extra.INTENT'),(16,15,'android.intent.extra.TITLE'),(17,15,'android.intent.extra.INTENT'),(18,16,'android.intent.extra.TITLE'),(19,16,'android.intent.extra.INTENT'),(20,19,'MOBILE'),(21,19,'ID'),(22,23,'MOBILE'),(23,23,'AUTH'),(24,27,'android.intent.extra.INTENT'),(25,28,'android.intent.extra.INTENT'),(26,31,'android.intent.extra.TITLE'),(27,31,'android.intent.extra.INTENT'),(28,33,'android.intent.extra.INTENT'),(29,35,'android.intent.extra.TITLE'),(30,35,'android.intent.extra.INTENT'),(31,36,'android.intent.extra.INTENT'),(32,38,'android.intent.extra.INTENT'),(33,37,'android.intent.extra.INTENT'),(34,39,'android.intent.extra.INTENT'),(35,40,'android.intent.extra.INTENT'),(36,41,'android.intent.extra.TITLE'),(37,41,'android.intent.extra.INTENT'),(38,42,'android.intent.extra.TITLE'),(39,43,'android.intent.extra.TITLE'),(40,42,'android.intent.extra.INTENT'),(41,44,'android.intent.extra.TITLE'),(42,43,'android.intent.extra.INTENT'),(43,44,'android.intent.extra.INTENT'),(44,45,'android.intent.extra.INTENT'),(45,46,'android.intent.extra.INTENT'),(46,47,'android.intent.extra.TITLE'),(47,48,'android.intent.extra.TITLE'),(48,47,'android.intent.extra.INTENT'),(49,48,'android.intent.extra.INTENT'),(50,49,'android.intent.extra.INTENT'),(51,50,'android.intent.extra.INTENT'),(52,51,'MOBILE'),(53,51,'AUTH'),(54,52,'android.intent.extra.TITLE'),(55,53,'android.intent.extra.TITLE'),(56,52,'android.intent.extra.INTENT'),(57,53,'android.intent.extra.INTENT'),(58,54,'android.intent.extra.TITLE'),(59,55,'android.intent.extra.TITLE'),(60,54,'android.intent.extra.INTENT'),(61,55,'android.intent.extra.INTENT'),(62,60,'MOBILE'),(63,60,'AUTH');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,1),(6,6,1),(7,7,2),(8,8,2),(9,9,2),(10,10,1),(11,11,2),(12,12,2),(13,13,1),(14,14,2),(15,15,2),(16,16,2),(17,17,2),(18,18,2),(19,19,2),(20,20,2),(21,21,4),(22,22,4),(23,23,4),(24,24,4),(25,25,4),(26,26,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,1),(6,6,1),(7,7,2),(8,8,2),(9,9,2),(10,10,1),(11,11,2),(12,12,2),(13,13,1),(14,14,2),(15,15,2),(16,16,2),(17,17,2),(18,18,2),(19,19,2),(20,20,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'de.trier.infsec.koch.droidsheep'),(2,4,'de.trier.infsec.koch.droidsheep'),(3,5,'de.trier.infsec.koch.droidsheep'),(4,18,'de.trier.infsec.koch.droidsheep'),(5,19,'de.trier.infsec.koch.droidsheep'),(6,20,'de.trier.infsec.koch.droidsheep'),(7,23,'de.trier.infsec.koch.droidsheep'),(8,26,'de.trier.infsec.koch.droidsheep'),(9,34,'de.trier.infsec.koch.droidsheep'),(10,51,'de.trier.infsec.koch.droidsheep'),(11,60,'de.trier.infsec.koch.droidsheep');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,6,0),(6,7,0),(7,8,0),(8,9,0),(9,10,0),(10,12,0),(11,13,0),(12,14,0),(13,12,0),(14,16,0),(15,16,0),(16,17,0),(17,21,0),(18,20,0),(19,24,0),(20,25,0),(21,28,0),(22,29,0),(23,30,0),(24,31,0),(25,32,0),(26,32,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,7,1,0),(8,8,1,0),(9,9,1,0),(10,9,1,0),(11,9,1,0),(12,9,1,0),(13,9,1,0),(14,9,1,0),(15,9,1,0),(16,9,1,0),(17,10,1,0),(18,11,0,0),(19,12,0,0),(20,13,0,0),(21,14,1,0),(22,15,1,0),(23,16,0,0),(24,17,1,0),(25,18,1,0),(26,19,0,0),(27,20,1,0),(28,20,1,0),(29,21,1,0),(30,22,1,0),(31,20,1,0),(32,23,1,0),(33,20,1,0),(34,24,0,0),(35,20,1,0),(36,25,1,0),(37,26,1,0),(38,20,1,0),(39,25,1,0),(40,26,1,0),(41,20,1,0),(42,25,1,0),(43,26,1,0),(44,20,1,0),(45,25,1,0),(46,26,1,0),(47,25,1,0),(48,26,1,0),(49,25,1,0),(50,26,1,0),(51,27,0,0),(52,25,1,0),(53,26,1,0),(54,25,1,0),(55,26,1,0),(56,28,1,0),(57,29,1,0),(58,30,1,0),(59,31,1,0),(60,32,0,0),(61,33,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,2,3,2,NULL),(2,2,8,2,NULL),(3,2,9,2,NULL),(4,2,10,2,NULL),(5,2,16,2,NULL),(6,4,4,2,NULL),(7,4,11,2,NULL),(8,4,18,2,NULL),(9,3,1,2,NULL),(10,3,3,2,NULL),(11,3,28,2,NULL),(12,3,9,2,NULL),(13,3,13,2,NULL),(14,3,17,2,NULL),(15,3,31,2,NULL),(16,3,8,2,NULL),(17,3,29,2,NULL),(18,3,10,2,NULL),(19,3,14,2,NULL),(20,3,30,2,NULL),(21,3,16,2,NULL),(22,3,20,2,NULL),(23,3,21,2,NULL),(24,3,25,2,NULL),(25,3,24,2,NULL),(26,3,32,2,NULL),(27,24,3,2,NULL),(28,6,3,2,NULL),(29,8,3,2,NULL),(30,58,3,2,NULL),(31,61,3,2,NULL),(32,24,28,2,NULL),(33,6,28,2,NULL),(34,8,28,2,NULL),(35,58,28,2,NULL),(36,61,28,2,NULL),(37,51,3,2,NULL),(38,51,8,2,NULL),(39,51,9,2,NULL),(40,51,10,2,NULL),(41,51,16,2,NULL),(42,24,1,2,NULL),(43,24,9,2,NULL),(44,24,13,2,NULL),(45,24,17,2,NULL),(46,24,31,2,NULL),(47,24,8,2,NULL),(48,24,29,2,NULL),(49,24,10,2,NULL),(50,24,14,2,NULL),(51,24,30,2,NULL),(52,24,16,2,NULL),(53,24,20,2,NULL),(54,24,21,2,NULL),(55,24,25,2,NULL),(56,24,24,2,NULL),(57,24,32,2,NULL),(58,20,13,2,NULL),(59,20,14,2,NULL),(60,20,20,2,NULL),(61,20,21,2,NULL),(62,6,9,2,NULL),(63,8,9,2,NULL),(64,58,9,2,NULL),(65,61,9,2,NULL),(66,6,13,2,NULL),(67,8,13,2,NULL),(68,58,13,2,NULL),(69,61,13,2,NULL),(70,6,17,2,NULL),(71,8,17,2,NULL),(72,58,17,2,NULL),(73,61,17,2,NULL),(74,6,31,2,NULL),(75,8,31,2,NULL),(76,58,31,2,NULL),(77,61,31,2,NULL),(78,5,3,2,NULL),(79,5,8,2,NULL),(80,5,9,2,NULL),(81,5,10,2,NULL),(82,5,16,2,NULL),(83,6,1,2,NULL),(84,6,8,2,NULL),(85,6,29,2,NULL),(86,6,10,2,NULL),(87,6,14,2,NULL),(88,6,30,2,NULL),(89,6,16,2,NULL),(90,6,20,2,NULL),(91,6,21,2,NULL),(92,6,25,2,NULL),(93,6,24,2,NULL),(94,6,32,2,NULL),(95,8,8,2,NULL),(96,58,8,2,NULL),(97,61,8,2,NULL),(98,8,29,2,NULL),(99,58,29,2,NULL),(100,61,29,2,NULL),(101,19,3,2,NULL),(102,19,8,2,NULL),(103,19,9,2,NULL),(104,19,10,2,NULL),(105,19,16,2,NULL),(106,8,1,2,NULL),(107,8,10,2,NULL),(108,8,14,2,NULL),(109,8,30,2,NULL),(110,8,16,2,NULL),(111,8,20,2,NULL),(112,8,21,2,NULL),(113,8,25,2,NULL),(114,8,24,2,NULL),(115,8,32,2,NULL),(116,18,13,2,NULL),(117,18,14,2,NULL),(118,18,20,2,NULL),(119,18,21,2,NULL),(120,58,10,2,NULL),(121,61,10,2,NULL),(122,58,14,2,NULL),(123,61,14,2,NULL),(124,58,30,2,NULL),(125,61,30,2,NULL),(126,23,3,2,NULL),(127,23,8,2,NULL),(128,23,9,2,NULL),(129,23,10,2,NULL),(130,23,16,2,NULL),(131,60,3,2,NULL),(132,60,8,2,NULL),(133,60,9,2,NULL),(134,60,10,2,NULL),(135,60,16,2,NULL),(136,58,1,2,NULL),(137,58,1,2,NULL),(138,61,1,2,NULL),(139,58,16,2,NULL),(140,61,16,2,NULL),(141,58,20,2,NULL),(142,61,20,2,NULL),(143,58,21,2,NULL),(144,61,21,2,NULL),(145,58,25,2,NULL),(146,61,25,2,NULL),(147,58,24,2,NULL),(148,61,24,2,NULL),(149,58,32,2,NULL),(150,61,32,2,NULL),(151,26,13,2,NULL),(152,26,14,2,NULL),(153,26,20,2,NULL),(154,26,21,2,NULL),(155,34,13,2,NULL),(156,34,14,2,NULL),(157,34,20,2,NULL),(158,34,21,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (2,'android.permission.ACCESS_WIFI_STATE'),(1,'android.permission.INTERNET'),(3,'android.permission.WAKE_LOCK'),(4,'com.google.android.gm.permission.WRITE_GMAIL');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://www.zonerantivirus.com',NULL,NULL,NULL),(2,NULL,NULL,'http://droidsheep.de/?page_id=121',NULL,NULL,NULL),(3,NULL,NULL,'http://droidsheep.de/forum',NULL,NULL,NULL),(4,NULL,NULL,'http://droidsheep.de/forum',NULL,NULL,NULL),(5,NULL,NULL,'http://droidsheep.de/forum',NULL,NULL,NULL),(6,NULL,NULL,'http://droidsheep.de/?page_id=121',NULL,NULL,NULL),(7,NULL,NULL,'http://droidsheep.de/forum',NULL,NULL,NULL),(8,NULL,NULL,'http://droidsheep.de/?page_id=121',NULL,NULL,NULL),(9,NULL,NULL,'http://droidsheep.de/?page_id=121',NULL,NULL,NULL),(10,NULL,NULL,'http://droidsheep.de/?page_id=121',NULL,NULL,NULL),(11,NULL,NULL,'http://droidsheep.de/?page_id=121',NULL,NULL,NULL),(12,NULL,NULL,'http://droidsheep.de/?page_id=121',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,2,1),(2,2,2),(3,2,3),(4,3,1),(5,5,1),(6,4,1),(7,3,2),(8,5,2),(9,4,2),(10,3,3),(11,5,3),(12,4,3),(13,3,4),(14,5,4),(15,6,1),(16,6,2),(17,6,3),(18,6,4);
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

-- Dump completed on 2015-10-12  3:29:36
