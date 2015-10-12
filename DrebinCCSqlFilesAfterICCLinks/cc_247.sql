-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_247
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (14,'INTENT_DONE'),(13,'SENDED'),(12,'SENDING_OK'),(8,'SMS_DELIVERED'),(10,'SMS_SENT'),(2,'android.intent.action.BOOT_COMPLETED'),(4,'android.intent.action.DATA_SMS_RECEIVED'),(9,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.VIEW'),(11,'android.provider.Telephony.SMS_RECEIVED'),(5,'com.google.android.c2dm.intent.RECEIVE'),(15,'com.google.android.c2dm.intent.REGISTER'),(6,'com.google.android.c2dm.intent.REGISTRATION'),(3,'com.software.CHECKER');
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
INSERT INTO `Applications` VALUES (1,'com.malice.alarm',1),(2,'com.app.installer',1),(3,'com.software.application',1),(4,'com.software.app',1),(5,'com.soft.android.appinstaller',1),(6,'ru.wallpapermobile.worldofwarcraft',2);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(3,'com.software.application');
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
INSERT INTO `Classes` VALUES (1,1,'com.malice.alarm.Alarm'),(2,1,'com.malice.alarm.Rules'),(3,1,'com.malice.alarm.LastPage'),(4,2,'com.app.installer.AppInstallerActivity'),(5,3,'com.software.application.Main'),(6,4,'com.software.app.Main'),(7,3,'com.software.application.OffertActivity'),(8,3,'com.software.application.ShowLink'),(9,4,'com.software.app.AgreementActivity'),(10,3,'com.software.application.Notificator'),(11,3,'com.software.application.C2DMReceiver'),(12,5,'com.soft.android.appinstaller.FirstActivity'),(13,4,'com.software.app.GrantAccess'),(14,4,'com.software.app.PushHandler'),(15,5,'com.soft.android.appinstaller.RulesActivity'),(16,4,'com.software.app.Notifier'),(17,3,'com.software.application.Checker'),(18,5,'com.soft.android.appinstaller.FinishActivity'),(19,5,'com.soft.android.appinstaller.QuestionActivity'),(20,3,'com.software.application.SmsReceiver'),(21,4,'com.software.app.Checker'),(22,5,'com.soft.android.appinstaller.MemberActivity'),(23,5,'com.soft.android.appinstaller.services.SMSSenderService'),(24,4,'com.software.app.SmsReceiver'),(25,5,'com.soft.android.appinstaller.sms.BinarySMSReceiver'),(26,3,'com.google.android.c2dm.C2DMBroadcastReceiver'),(27,2,'com.app.installer.AppInstallerActivity$6'),(28,2,'com.app.installer.AppInstallerActivity$4'),(29,2,'com.app.installer.AppInstallerActivity$5'),(30,2,'com.app.installer.AppInstallerActivity$3'),(31,6,'com.pavel.wallpaper.LicenseActivity'),(32,6,'com.pavel.wallpaper.ListsActivity'),(33,6,'com.pavel.wallpaper.AndroidWallpaperActivity'),(34,6,'com.pavel.wallpaper.RuleActivity'),(35,6,'com.pavel.wallpaper.ChooseActivity'),(36,6,'com.pavel.wallpaper.SmsReceiver'),(37,3,'com.software.application.Actor'),(38,5,'com.soft.android.appinstaller.MemberActivity$1'),(39,3,'com.software.application.ShowLink$1'),(40,3,'com.software.application.Main$4'),(41,4,'com.software.app.Activator'),(42,3,'com.software.application.Actor$1'),(43,5,'com.soft.android.appinstaller.FlowController'),(44,4,'com.software.app.Main$2'),(45,4,'com.software.app.Activator$1'),(46,3,'com.software.application.Main$3'),(47,4,'com.software.app.GrantAccess$1'),(48,3,'com.google.android.c2dm.C2DMessaging'),(49,3,'com.google.android.c2dm.C2DMBaseReceiver'),(50,6,'com.pavel.wallpaper.ListsActivity$12'),(51,6,'com.pavel.wallpaper.ListsActivity$14'),(52,6,'com.pavel.wallpaper.ListsActivity$18'),(53,6,'com.pavel.wallpaper.LicenseActivity$4'),(54,6,'com.pavel.wallpaper.ListsActivity$10'),(55,6,'com.pavel.wallpaper.AndroidWallpaperActivity$1'),(56,6,'com.pavel.wallpaper.ListsActivity$2'),(57,6,'com.pavel.wallpaper.ListsActivity$5'),(58,6,'com.pavel.wallpaper.ListsActivity$7'),(59,6,'com.pavel.wallpaper.ListsActivity$11'),(60,6,'com.pavel.wallpaper.ListsActivity$16'),(61,6,'com.pavel.wallpaper.RuleActivity$2'),(62,6,'com.pavel.wallpaper.RuleActivity$3'),(63,6,'com.pavel.wallpaper.LicenseActivity$1'),(64,6,'com.pavel.wallpaper.LicenseActivity$3'),(65,6,'com.pavel.wallpaper.ListsActivity$6'),(66,6,'com.pavel.wallpaper.ListsActivity$9'),(67,6,'com.pavel.wallpaper.ListsActivity$17'),(68,6,'com.pavel.wallpaper.ListsActivity$15'),(69,6,'com.pavel.wallpaper.ListsActivity$8'),(70,6,'com.pavel.wallpaper.ListsActivity$4'),(71,6,'com.pavel.wallpaper.ListsActivity$13'),(72,6,'com.pavel.wallpaper.ListsActivity$3'),(73,6,'com.pavel.wallpaper.ListsActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'URL'),(2,13,'URL'),(3,24,'pdus'),(4,14,'URL'),(5,34,'pdus');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,10,'r',1,NULL,NULL),(10,9,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,17,'r',1,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,15,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,25,'r',1,NULL,NULL),(25,24,'r',1,NULL,NULL),(26,26,'r',1,18,NULL),(27,28,'r',1,NULL,NULL),(28,30,'r',1,NULL,NULL),(29,31,'a',1,NULL,NULL),(30,32,'a',0,NULL,NULL),(31,33,'a',0,NULL,NULL),(32,34,'a',0,NULL,NULL),(33,35,'a',0,NULL,NULL),(34,36,'r',1,NULL,NULL),(35,40,'r',1,NULL,NULL),(36,42,'r',1,NULL,NULL),(37,44,'r',1,NULL,NULL),(38,45,'r',1,NULL,NULL),(39,46,'r',1,NULL,NULL),(40,53,'r',1,NULL,NULL),(41,61,'r',1,NULL,NULL),(42,62,'r',1,NULL,NULL),(43,64,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,4),(4,4,4),(5,5,4),(6,6,4),(7,7,5),(8,8,5),(9,9,22),(10,10,8),(11,11,5),(12,12,18),(13,13,6),(14,14,6),(15,15,19),(16,15,12),(17,16,5),(18,17,14),(19,18,5),(20,19,13),(21,20,8),(22,21,6),(23,22,5),(24,23,5),(25,24,26),(26,25,30),(27,26,30),(28,27,30),(29,28,29),(30,29,30),(31,30,31),(32,31,30),(33,32,30),(34,33,30),(35,34,30),(36,35,30),(37,36,29),(38,37,30),(39,38,30),(40,39,30),(41,40,30),(42,41,30),(43,42,30),(44,43,30),(45,44,30),(46,45,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.malice.alarm.Rules: void onClick(android.view.View)>',15,'a',NULL),(2,2,'<com.malice.alarm.Rules: void onClick(android.view.View)>',8,'a',NULL),(3,27,'<com.app.installer.AppInstallerActivity$6: void onClick(android.view.View)>',67,'a',NULL),(4,29,'<com.app.installer.AppInstallerActivity$5: void onClick(android.view.View)>',55,'a',NULL),(5,29,'<com.app.installer.AppInstallerActivity$5: void onClick(android.view.View)>',67,'a',NULL),(6,27,'<com.app.installer.AppInstallerActivity$6: void onClick(android.view.View)>',48,'a',NULL),(7,5,'<com.software.application.Main: void showRules()>',3,'a',NULL),(8,37,'<com.software.application.Actor: void report(int,android.app.PendingIntent)>',4,'r',NULL),(9,38,'<com.soft.android.appinstaller.MemberActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',62,'a',NULL),(10,39,'<com.software.application.ShowLink$1: void onClick(android.view.View)>',8,'a',NULL),(11,5,'<com.software.application.Main: void showURL()>',6,'a',NULL),(12,18,'<com.soft.android.appinstaller.FinishActivity: void onNextClicked(android.view.View)>',8,'a',NULL),(13,41,'<com.software.app.Activator: void report(int,android.app.PendingIntent)>',4,'r',NULL),(14,6,'<com.software.app.Main: void showURL()>',6,'a',NULL),(15,43,'<com.soft.android.appinstaller.FlowController: void sendMessages(android.content.Context,android.app.Activity)>',7,'s',NULL),(16,5,'<com.software.application.Main: void showURL()>',6,'a',NULL),(17,14,'<com.software.app.PushHandler: void onCreate(android.os.Bundle)>',17,'a',NULL),(18,5,'<com.software.application.Main: void showRules()>',3,'a',NULL),(19,47,'<com.software.app.GrantAccess$1: void onClick(android.view.View)>',8,'a',NULL),(20,39,'<com.software.application.ShowLink$1: void onClick(android.view.View)>',8,'a',NULL),(21,6,'<com.software.app.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(22,48,'<com.google.android.c2dm.C2DMessaging: boolean register(android.content.Context,java.lang.String)>',10,'s',NULL),(23,37,'<com.software.application.Actor: void report(int,android.app.PendingIntent)>',4,'r',NULL),(24,49,'<com.google.android.c2dm.C2DMBaseReceiver: void runIntentInService(android.content.Context,android.content.Intent)>',17,'s',NULL),(25,50,'<com.pavel.wallpaper.ListsActivity$12: void onClick(android.view.View)>',7,'a',NULL),(26,51,'<com.pavel.wallpaper.ListsActivity$14: void onClick(android.view.View)>',7,'a',NULL),(27,52,'<com.pavel.wallpaper.ListsActivity$18: void onClick(android.view.View)>',7,'a',NULL),(28,31,'<com.pavel.wallpaper.LicenseActivity: void onCreate(android.os.Bundle)>',26,'a',NULL),(29,54,'<com.pavel.wallpaper.ListsActivity$10: void onClick(android.view.View)>',7,'a',NULL),(30,55,'<com.pavel.wallpaper.AndroidWallpaperActivity$1: void onClick(android.view.View)>',6,'a',NULL),(31,56,'<com.pavel.wallpaper.ListsActivity$2: void onClick(android.view.View)>',7,'a',NULL),(32,57,'<com.pavel.wallpaper.ListsActivity$5: void onClick(android.view.View)>',7,'a',NULL),(33,58,'<com.pavel.wallpaper.ListsActivity$7: void onClick(android.view.View)>',7,'a',NULL),(34,59,'<com.pavel.wallpaper.ListsActivity$11: void onClick(android.view.View)>',7,'a',NULL),(35,60,'<com.pavel.wallpaper.ListsActivity$16: void onClick(android.view.View)>',7,'a',NULL),(36,63,'<com.pavel.wallpaper.LicenseActivity$1: void onClick(android.view.View)>',6,'a',NULL),(37,65,'<com.pavel.wallpaper.ListsActivity$6: void onClick(android.view.View)>',7,'a',NULL),(38,66,'<com.pavel.wallpaper.ListsActivity$9: void onClick(android.view.View)>',7,'a',NULL),(39,67,'<com.pavel.wallpaper.ListsActivity$17: void onClick(android.view.View)>',7,'a',NULL),(40,68,'<com.pavel.wallpaper.ListsActivity$15: void onClick(android.view.View)>',7,'a',NULL),(41,69,'<com.pavel.wallpaper.ListsActivity$8: void onClick(android.view.View)>',7,'a',NULL),(42,70,'<com.pavel.wallpaper.ListsActivity$4: void onClick(android.view.View)>',7,'a',NULL),(43,71,'<com.pavel.wallpaper.ListsActivity$13: void onClick(android.view.View)>',7,'a',NULL),(44,72,'<com.pavel.wallpaper.ListsActivity$3: void onClick(android.view.View)>',7,'a',NULL),(45,73,'<com.pavel.wallpaper.ListsActivity$1: void onClick(android.view.View)>',7,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,7),(2,4,7),(3,5,9),(4,6,7),(5,7,7),(6,8,9),(7,10,7),(8,11,12),(9,12,7),(10,13,7),(11,14,7),(12,16,7),(13,17,7),(14,18,7),(15,19,14),(16,23,7),(17,25,7),(18,26,7),(19,28,15),(20,29,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/malice/alarm/LastPage'),(2,2,'com/malice/alarm/Alarm'),(3,9,'com/software/application/OffertActivity'),(4,15,'com/software/application/ShowLink'),(5,20,'com/software/app/GrantAccess'),(6,21,'com/soft/android/appinstaller/services/SMSSenderService'),(7,22,'com/software/application/ShowLink'),(8,24,'com/software/application/OffertActivity'),(9,27,'com/software/app/OffertActivity'),(10,30,'com.software.application.C2DMReceiver'),(11,31,'com/pavel/wallpaper/ChooseActivity'),(12,32,'com/pavel/wallpaper/ChooseActivity'),(13,33,'com/pavel/wallpaper/ChooseActivity'),(14,34,'com/pavel/wallpaper/AndroidWallpaperActivity'),(15,35,'com/pavel/wallpaper/ChooseActivity'),(16,36,'com/pavel/wallpaper/ListsActivity'),(17,37,'com/pavel/wallpaper/ChooseActivity'),(18,38,'com/pavel/wallpaper/ChooseActivity'),(19,39,'com/pavel/wallpaper/ChooseActivity'),(20,40,'com/pavel/wallpaper/ChooseActivity'),(21,41,'com/pavel/wallpaper/ChooseActivity'),(22,42,'com/pavel/wallpaper/RuleActivity'),(23,43,'com/pavel/wallpaper/ChooseActivity'),(24,44,'com/pavel/wallpaper/ChooseActivity'),(25,45,'com/pavel/wallpaper/ChooseActivity'),(26,46,'com/pavel/wallpaper/ChooseActivity'),(27,47,'com/pavel/wallpaper/ChooseActivity'),(28,48,'com/pavel/wallpaper/ChooseActivity'),(29,49,'com/pavel/wallpaper/ChooseActivity'),(30,50,'com/pavel/wallpaper/ChooseActivity'),(31,51,'com/pavel/wallpaper/ChooseActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,5,3),(4,6,4),(5,7,5),(6,8,6),(7,10,7),(8,12,8),(9,13,9),(10,14,10),(11,16,11),(12,17,12),(13,18,13),(14,23,14),(15,25,15),(16,26,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,15,'URL'),(2,20,'URL'),(3,22,'URL'),(4,28,'sender'),(5,28,'app');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,1),(8,8,2),(9,9,3),(10,11,2),(11,10,3),(12,12,4),(13,13,4),(14,14,3),(15,15,4),(16,16,4),(17,17,5),(18,18,6),(19,19,8),(20,20,10),(21,21,1),(22,22,11),(23,23,12),(24,24,13),(25,25,14),(26,26,13),(27,27,14),(28,28,13),(29,29,8),(30,30,10),(31,31,8),(32,32,10);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,1),(8,8,2),(9,9,2),(10,10,2),(11,11,2),(12,14,2),(13,17,3),(14,18,3),(15,21,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,12,'sms',NULL,NULL,NULL,NULL,NULL),(2,13,'sms',NULL,NULL,NULL,NULL,NULL),(3,12,NULL,NULL,'8901',NULL,NULL,NULL),(4,13,NULL,NULL,'8901',NULL,NULL,NULL),(5,15,'sms',NULL,NULL,NULL,NULL,NULL),(6,16,NULL,NULL,'1688',NULL,NULL,NULL),(7,15,NULL,NULL,'8901',NULL,NULL,NULL),(8,16,'sms',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.malice.alarm'),(2,2,'com.malice.alarm'),(3,9,'com.software.application'),(4,15,'com.software.application'),(5,20,'com.software.app'),(6,21,'com.soft.android.appinstaller'),(7,22,'com.software.application'),(8,24,'com.software.application'),(9,27,'com.software.app'),(10,28,'com.google.android.gsf'),(11,30,'com.software.application'),(12,31,'ru.wallpapermobile.worldofwarcraft'),(13,32,'ru.wallpapermobile.worldofwarcraft'),(14,33,'ru.wallpapermobile.worldofwarcraft'),(15,34,'ru.wallpapermobile.worldofwarcraft'),(16,35,'ru.wallpapermobile.worldofwarcraft'),(17,36,'ru.wallpapermobile.worldofwarcraft'),(18,37,'ru.wallpapermobile.worldofwarcraft'),(19,38,'ru.wallpapermobile.worldofwarcraft'),(20,39,'ru.wallpapermobile.worldofwarcraft'),(21,40,'ru.wallpapermobile.worldofwarcraft'),(22,41,'ru.wallpapermobile.worldofwarcraft'),(23,42,'ru.wallpapermobile.worldofwarcraft'),(24,43,'ru.wallpapermobile.worldofwarcraft'),(25,44,'ru.wallpapermobile.worldofwarcraft'),(26,45,'ru.wallpapermobile.worldofwarcraft'),(27,46,'ru.wallpapermobile.worldofwarcraft'),(28,47,'ru.wallpapermobile.worldofwarcraft'),(29,48,'ru.wallpapermobile.worldofwarcraft'),(30,49,'ru.wallpapermobile.worldofwarcraft'),(31,50,'ru.wallpapermobile.worldofwarcraft'),(32,51,'ru.wallpapermobile.worldofwarcraft');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,5,0),(4,5,0),(5,6,0),(6,9,0),(7,12,0),(8,9,0),(9,15,0),(10,15,0),(11,16,0),(12,20,0),(13,20,0),(14,21,0),(15,25,0),(16,24,0),(17,26,0),(18,26,0),(19,27,0),(20,28,0),(21,29,0),(22,34,0),(23,35,0),(24,36,0),(25,37,0),(26,38,0),(27,39,0),(28,36,0),(29,40,0),(30,41,0),(31,42,0),(32,43,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,4,1,0),(6,5,1,0),(7,5,1,0),(8,6,1,0),(9,7,0,0),(10,9,1,0),(11,8,1,0),(12,9,1,0),(13,10,1,0),(14,9,1,0),(15,11,0,0),(16,9,1,0),(17,12,1,0),(18,12,1,0),(19,13,1,0),(20,14,0,0),(21,15,0,0),(22,16,0,0),(23,17,1,0),(24,18,0,0),(25,19,1,0),(26,20,1,0),(27,21,0,0),(28,22,1,0),(29,23,1,0),(30,24,0,0),(31,25,0,0),(32,26,0,0),(33,27,0,0),(34,28,0,0),(35,29,0,0),(36,30,0,0),(37,31,0,0),(38,32,0,0),(39,33,0,0),(40,34,0,0),(41,35,0,0),(42,36,0,0),(43,37,0,0),(44,38,0,0),(45,39,0,0),(46,40,0,0),(47,41,0,0),(48,42,0,0),(49,43,0,0),(50,44,0,0),(51,45,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,23,12,2,NULL),(2,17,12,2,NULL),(3,18,12,2,NULL),(4,17,1,2,NULL),(5,18,1,2,NULL),(6,17,4,2,NULL),(7,18,4,2,NULL),(8,17,27,2,NULL),(9,18,27,2,NULL),(10,17,28,2,NULL),(11,18,28,2,NULL),(12,17,5,2,NULL),(13,18,5,2,NULL),(14,17,9,2,NULL),(15,18,9,2,NULL),(16,17,15,2,NULL),(17,18,15,2,NULL),(18,17,26,2,NULL),(19,18,26,2,NULL),(20,17,35,2,NULL),(21,18,35,2,NULL),(22,17,36,2,NULL),(23,18,36,2,NULL),(24,17,39,2,NULL),(25,18,39,2,NULL),(26,17,6,2,NULL),(27,18,6,2,NULL),(28,17,16,2,NULL),(29,18,16,2,NULL),(30,17,21,2,NULL),(31,18,21,2,NULL),(32,17,37,2,NULL),(33,18,37,2,NULL),(34,17,38,2,NULL),(35,18,38,2,NULL),(36,17,29,2,NULL),(37,18,29,2,NULL),(38,17,34,2,NULL),(39,18,34,2,NULL),(40,17,40,2,NULL),(41,18,40,2,NULL),(42,17,41,2,NULL),(43,18,41,2,NULL),(44,17,42,2,NULL),(45,18,42,2,NULL),(46,17,43,2,NULL),(47,18,43,2,NULL),(48,9,7,2,NULL),(49,15,8,2,NULL),(50,22,8,2,NULL),(51,24,7,2,NULL),(52,23,5,2,NULL),(53,23,9,2,NULL),(54,23,15,2,NULL),(55,23,26,2,NULL),(56,23,35,2,NULL),(57,23,36,2,NULL),(58,23,39,2,NULL),(59,23,4,2,NULL),(60,23,27,2,NULL),(61,23,28,2,NULL),(62,20,13,2,NULL),(63,23,6,2,NULL),(64,23,1,2,NULL),(65,23,16,2,NULL),(66,23,21,2,NULL),(67,23,37,2,NULL),(68,23,38,2,NULL),(69,23,29,2,NULL),(70,23,34,2,NULL),(71,23,40,2,NULL),(72,23,41,2,NULL),(73,23,42,2,NULL),(74,23,43,2,NULL),(75,1,3,2,NULL),(76,2,1,2,NULL),(77,34,31,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.BATTERY_STATS'),(11,'android.permission.CHANGE_NETWORK_STATE'),(6,'android.permission.CHANGE_WIFI_STATE'),(4,'android.permission.CLEAR_APP_USER_DATA'),(8,'android.permission.DELETE_CACHE_FILES'),(5,'android.permission.INTERNET'),(2,'android.permission.READ_CALENDAR'),(12,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_SMS'),(1,'android.permission.SEND_SMS'),(19,'android.permission.SET_WALLPAPER'),(9,'android.permission.STATUS_BAR'),(7,'android.permission.VIBRATE'),(16,'android.permission.WAKE_LOCK'),(13,'android.permission.WRITE_EXTERNAL_STORAGE'),(20,'android.permission.WRITE_SMS'),(17,'com.google.android.c2dm.permission.RECEIVE'),(18,'com.google.android.c2dm.permission.SEND'),(15,'com.software.application.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (15,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'package:com.app.installer',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'',NULL,NULL,NULL),(6,NULL,NULL,'package:com.app.installer',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)&o=1',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)(.*)&o=1',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,2,2),(4,2,3),(5,2,4),(6,2,5),(7,2,6),(8,2,7),(9,2,8),(10,2,9),(11,2,10),(12,2,11),(13,3,1),(14,4,1),(15,3,17),(16,4,3),(17,3,3),(18,3,16),(19,4,5),(20,3,5),(21,3,12),(22,4,12),(23,3,13),(24,3,14),(25,4,13),(26,3,15),(27,4,14),(28,5,1),(29,5,5),(30,5,12),(31,5,14),(32,6,1),(33,6,19),(34,6,3),(35,6,20),(36,6,14);
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

-- Dump completed on 2015-10-12  3:29:48
