-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_91
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (10,'(.*)'),(5,'android.appwidget.action.APPWIDGET_UPDATE'),(12,'android.bluetooth.adapter.action.STATE_CHANGED'),(24,'android.intent.action.AIRPLANE_MODE'),(7,'android.intent.action.BOOT_COMPLETED'),(25,'android.intent.action.CHOOSER'),(26,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.PHONE_STATE'),(15,'android.intent.action.SCREEN_OFF'),(23,'android.intent.action.SCREEN_ON'),(3,'android.intent.action.VIEW'),(20,'android.net.wifi.STATE_CHANGE'),(11,'android.net.wifi.WIFI_AP_STATE_CHANGED'),(18,'android.net.wifi.WIFI_STATE_CHANGED'),(21,'android.settings.AIRPLANE_MODE_SETTINGS'),(19,'android.settings.APPLICATION_DETAILS_SETTINGS'),(13,'android.settings.BLUETOOTH_SETTINGS'),(14,'android.settings.DISPLAY_SETTINGS'),(16,'android.settings.LOCATION_SOURCE_SETTINGS'),(17,'android.settings.SYNC_SETTINGS'),(22,'android.settings.WIFI_SETTINGS'),(4,'com.android.vending.INSTALL_REFERRER'),(8,'com.riteshsahu.SMSBackupRestore.SchedulePreferences'),(9,'com.riteshsahu.SMSBackupRestore.SelectConversations'),(6,'com.todo.notes.updatewidget');
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
INSERT INTO `Applications` VALUES (1,'com.japanese.hot.girl',1),(2,'com.glumobi.eraser',1),(3,'com.todo.notes',1),(4,'com.set.phone',1),(5,'com.riteshsahu.super.SMSBackupRestore',45),(6,'com.button.phone',4),(7,'com.copy.contact',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(5,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.japanese.hot.girl.SexyImages'),(2,1,'com.japanese.hot.girl.ShowImage'),(3,1,'com.passionteam.lightdd.CoreService'),(4,1,'com.passionteam.lightdd.Receiver'),(5,2,'com.glumobi.eraser.HistoryEraserActivity'),(6,2,'com.admob.android.ads.AdMobActivity'),(7,2,'com.glumobi.lightdd.CoreService'),(8,2,'com.glumobi.lightdd.Receiver'),(9,1,'com.japanese.hot.girl.SexyImages$2'),(10,2,'com.admob.android.ads.analytics.InstallReceiver'),(11,3,'com.todo.notes.TodoList'),(12,3,'com.google.ads.AdActivity'),(13,3,'com.todo.notes.light.service.TrafficService'),(14,3,'com.todo.notes.ExampleAppWidgetProvider'),(15,3,'com.todo.notes.light.core.BootReceiver'),(16,4,'com.set.phone.main'),(17,4,'com.mobile.taskkiller.main'),(18,4,'com.mobile.taskkiller.Settings'),(19,4,'com.google.ads.AdActivity'),(20,4,'com.mobile.filemanager.main'),(21,5,'com.riteshsahu.SMSBackupRestore.FreeMain'),(22,4,'com.mobile.taskkiller.KillService'),(23,4,'com.set.phone.protact.DreamerService'),(24,5,'com.riteshsahu.SMSBackupRestore.FreePreferences'),(25,4,'com.mobile.taskkiller.Receiver'),(26,5,'com.riteshsahu.SMSBackupRestore.FreeSchedulePreferences'),(27,4,'com.mobile.taskkiller.ExampleAppWidgetProvider'),(28,7,'com.copy.contact.main'),(29,5,'com.riteshsahu.SMSBackupRestore.FreeConversationView'),(30,4,'com.set.phone.protact.BeerReceiver'),(31,7,'com.google.ads.AdActivity'),(32,6,'com.button.phone.Switcher'),(33,7,'com.copy.contact.protact.DreamerService'),(34,5,'com.riteshsahu.SMSBackupRestoreBase.MessageView'),(35,7,'com.copy.contact.protact.BeerReceiver'),(36,5,'com.riteshsahu.SMSBackupRestoreBase.ContactView'),(37,6,'com.google.ads.AdActivity'),(38,5,'com.riteshsahu.SMSBackupRestore.FreeHelp'),(39,6,'com.button.phone.Setting'),(40,5,'com.admob.android.ads.AdMobActivity'),(41,6,'com.button.phone.strategy.service.CelebrateService'),(42,5,'com.riteshsahu.SMSBackupRestore.FreeAlarmProcessorService'),(43,6,'com.button.phone.Receiver'),(44,5,'com.passionteam.lightdd.CoreService'),(45,5,'com.riteshsahu.SMSBackupRestore.FreeAlarmProcessor'),(46,6,'com.button.phone.strategy.core.RebirthReceiver'),(47,5,'com.passionteam.lightdd.Receiver'),(48,2,'com.glumobi.eraser.a.d'),(49,2,'com.glumobi.eraser.a.c'),(50,3,'com.todo.notes.light.a.c'),(51,6,'com.button.phone.NetworkStateReceiver'),(52,6,'com.button.phone.strategy.service.Tools'),(53,4,'com.mobile.filemanager.Utils'),(54,7,'com.copy.contact.main$12'),(55,7,'com.copy.contact.protact.Tools'),(56,7,'com.vcard.VCardComposer'),(57,7,'com.copy.contact.TaskHandler'),(58,7,'com.copy.contact.SmsHandler'),(59,4,'com.set.phone.protact.Tools'),(60,5,'com.riteshsahu.SMSBackupRestoreBase.Common'),(61,5,'com.riteshsahu.SMSBackupRestoreBase.SmsBackupProcessor'),(62,5,'com.riteshsahu.SMSBackupRestoreBase.Main');
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'PackageName2'),(2,3,'Title2'),(3,3,'filename2'),(4,3,'url2'),(5,3,'Description2'),(6,6,'au'),(7,6,'sc'),(8,6,'t'),(9,6,'p'),(10,6,'$'),(11,6,'cs'),(12,6,'rd'),(13,6,'sin'),(14,6,'su'),(15,6,'cbo'),(16,7,'filename2'),(17,6,'oi'),(18,6,'ru'),(19,6,'sku'),(20,6,'si'),(21,6,'s'),(22,12,'url2'),(23,6,'mi'),(24,6,'tr'),(25,6,'ad'),(26,6,'u'),(27,6,'skd'),(28,6,'int'),(29,6,'c'),(30,6,'ap'),(31,9,'ADMOB_PUBLISHER_ID'),(32,9,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(33,6,'json'),(34,7,'Description2'),(35,7,'url2'),(36,6,'msm'),(37,7,'PackageName2'),(38,6,'b'),(39,6,'nosk'),(40,11,'params'),(41,9,'(.*)'),(42,6,'sd'),(43,6,'o'),(44,6,'a'),(45,9,'referrer'),(46,9,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(47,12,'Title2'),(48,12,'filename2'),(49,12,'Description2'),(50,11,'action'),(51,11,'com.google.ads.AdOpener'),(52,6,'or'),(53,7,'Title2'),(54,12,'PackageName2'),(55,36,'com.google.ads.AdOpener'),(56,40,'url4'),(57,40,'Description4'),(58,21,'screen'),(59,22,'filename8'),(60,22,'url1'),(61,18,'action'),(62,36,'action'),(63,40,'Title4'),(64,40,'PackageName4'),(65,40,'filename4'),(66,32,'filename8'),(67,30,'com.google.ads.AdOpener'),(68,22,'T7itle5'),(69,36,'params'),(70,30,'params'),(71,32,'T7itle5'),(72,32,'Pa2ckageName3'),(73,32,'url1'),(74,30,'action'),(75,32,'De8scription4'),(76,22,'De8scription4'),(77,18,'com.google.ads.AdOpener'),(78,22,'Pa2ckageName3'),(79,18,'params'),(80,39,'t'),(81,43,'url2'),(82,39,'u'),(83,39,'mi'),(84,39,'c'),(85,39,'ap'),(86,39,'si'),(87,37,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(88,20,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(89,33,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(90,39,'rd'),(91,39,'a'),(92,39,'sc'),(93,39,'b'),(94,39,'cbo'),(95,37,'ADMOB_PUBLISHER_ID'),(96,37,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(97,20,'ADMOB_PUBLISHER_ID'),(98,20,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(99,33,'ADMOB_PUBLISHER_ID'),(100,33,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(101,39,'ad'),(102,39,'msm'),(103,39,'tr'),(104,43,'Title2'),(105,39,'cs'),(106,39,'json'),(107,39,'sd'),(108,39,'o'),(109,39,'s'),(110,39,'int'),(111,39,'sin'),(112,43,'PackageName2'),(113,39,'ru'),(114,39,'su'),(115,43,'Description2'),(116,39,'skd'),(117,43,'filename2'),(118,39,'sku'),(119,39,'or'),(120,39,'$'),(121,39,'nosk'),(122,39,'oi'),(123,39,'p'),(124,39,'au');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'r',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,10,'r',1,NULL,NULL),(10,11,'a',1,NULL,NULL),(11,12,'a',0,NULL,NULL),(12,13,'s',0,NULL,NULL),(13,14,'r',1,NULL,NULL),(14,15,'r',1,NULL,NULL),(15,16,'a',1,NULL,NULL),(16,17,'a',0,NULL,NULL),(17,18,'a',0,NULL,NULL),(18,19,'a',0,NULL,NULL),(19,20,'a',0,NULL,NULL),(20,21,'a',1,NULL,NULL),(21,22,'s',0,NULL,NULL),(22,23,'s',0,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,25,'r',1,NULL,NULL),(25,26,'a',1,NULL,NULL),(26,27,'r',1,NULL,NULL),(27,28,'a',1,NULL,NULL),(28,29,'a',1,NULL,NULL),(29,30,'r',1,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,32,'a',1,NULL,NULL),(32,33,'s',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,35,'r',1,NULL,NULL),(35,36,'a',0,NULL,NULL),(36,37,'a',0,NULL,NULL),(37,38,'a',0,NULL,NULL),(38,39,'a',0,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,41,'s',0,NULL,NULL),(41,42,'s',0,NULL,NULL),(42,43,'r',1,NULL,NULL),(43,44,'s',0,NULL,NULL),(44,45,'r',1,NULL,NULL),(45,46,'r',1,NULL,NULL),(46,47,'r',1,NULL,NULL),(47,51,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,4),(3,3,1),(4,4,2),(5,5,1),(6,6,5),(7,7,5),(8,8,5),(9,9,5),(10,10,11),(11,11,5),(12,12,12),(13,13,5),(14,14,10),(15,15,8),(16,16,14),(17,17,10),(18,18,31),(19,19,31),(20,20,31),(21,21,36),(22,22,31),(23,23,31),(24,24,40),(25,25,16),(26,26,31),(27,27,31),(28,28,16),(29,29,29),(30,30,31),(31,31,24),(32,32,19),(33,32,16),(34,33,31),(35,34,34),(36,35,45),(37,36,15),(38,37,30),(39,38,31),(40,39,24),(41,40,31),(42,41,31),(43,42,19),(44,42,16),(45,43,19),(46,44,27),(47,45,24),(48,46,32),(49,47,27),(50,48,24),(51,49,27),(52,50,16),(53,51,27),(54,52,16),(55,53,18),(56,54,27),(57,55,27),(58,56,16),(59,57,16),(60,58,22),(61,59,46),(62,60,35),(63,61,33),(64,62,41),(65,63,44),(66,64,41),(67,65,20),(68,66,20),(69,66,33),(70,67,41),(71,68,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,9,'<com.japanese.hot.girl.SexyImages$2: void onClick(android.view.View)>',6,'a',NULL),(2,4,'<com.passionteam.lightdd.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(3,1,'<com.japanese.hot.girl.SexyImages: void showImage(int)>',5,'a',NULL),(4,2,'<com.japanese.hot.girl.ShowImage: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(5,1,'<com.japanese.hot.girl.SexyImages: void onCreate(android.os.Bundle)>',5,'s',NULL),(6,48,'<com.glumobi.eraser.a.d: com.glumobi.eraser.c.a a(android.app.Activity)>',3,'p',NULL),(7,5,'<com.glumobi.eraser.HistoryEraserActivity: void onCreate(android.os.Bundle)>',53,'s',NULL),(8,48,'<com.glumobi.eraser.a.d: com.glumobi.eraser.c.a b(android.app.Activity)>',9,'p',NULL),(9,49,'<com.glumobi.eraser.a.c: void b(android.app.Activity)>',24,'p',NULL),(10,12,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(11,49,'<com.glumobi.eraser.a.c: void a(android.app.Activity)>',33,'p',NULL),(12,50,'<com.todo.notes.light.a.c: java.net.HttpURLConnection d()>',40,'p',NULL),(13,48,'<com.glumobi.eraser.a.d: com.glumobi.eraser.c.a c(android.app.Activity)>',6,'p',NULL),(14,11,'<com.todo.notes.TodoList: void onCreate(android.os.Bundle)>',13,'s',NULL),(15,8,'<com.glumobi.lightdd.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(16,15,'<com.todo.notes.light.core.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(17,11,'<com.todo.notes.TodoList: void a()>',15,'r',NULL),(18,32,'<com.button.phone.Switcher: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(19,32,'<com.button.phone.Switcher: void onClick(android.view.View)>',133,'a',NULL),(20,32,'<com.button.phone.Switcher: void onClick(android.view.View)>',98,'a',NULL),(21,37,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(22,32,'<com.button.phone.Switcher: void onCreate(android.os.Bundle)>',7,'s',NULL),(23,32,'<com.button.phone.Switcher: void onClick(android.view.View)>',154,'a',NULL),(24,52,'<com.button.phone.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(25,17,'<com.mobile.taskkiller.main: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(26,32,'<com.button.phone.Switcher: void onClick(android.view.View)>',91,'a',NULL),(27,32,'<com.button.phone.Switcher: void onClick(android.view.View)>',119,'a',NULL),(28,17,'<com.mobile.taskkiller.main: boolean onContextItemSelected(android.view.MenuItem)>',31,'a',NULL),(29,30,'<com.set.phone.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(30,32,'<com.button.phone.Switcher: void onClick(android.view.View)>',147,'a',NULL),(31,25,'<com.mobile.taskkiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',32,'s',NULL),(32,53,'<com.mobile.filemanager.Utils: void installApk(android.content.Context,java.io.File)>',8,'a',NULL),(33,32,'<com.button.phone.Switcher: void onClick(android.view.View)>',112,'a',NULL),(34,35,'<com.copy.contact.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(35,46,'<com.button.phone.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(36,16,'<com.set.phone.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(37,31,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(38,32,'<com.button.phone.Switcher: void onClick(android.view.View)>',63,'a',NULL),(39,25,'<com.mobile.taskkiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(40,32,'<com.button.phone.Switcher: void onClick(android.view.View)>',105,'a',NULL),(41,32,'<com.button.phone.Switcher: void onClick(android.view.View)>',51,'r',NULL),(42,20,'<com.mobile.filemanager.main: void handlerFileClick(java.io.File)>',19,'a',NULL),(43,20,'<com.mobile.filemanager.main: boolean onContextItemSelected(android.view.MenuItem)>',26,'a',NULL),(44,54,'<com.copy.contact.main$12: void onClick(android.content.DialogInterface,int)>',32,'a',NULL),(45,25,'<com.mobile.taskkiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',40,'s',NULL),(46,55,'<com.copy.contact.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(47,28,'<com.copy.contact.main: void onCreate(android.os.Bundle)>',20,'s',NULL),(48,25,'<com.mobile.taskkiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(49,56,'<com.vcard.VCardComposer: boolean init(java.lang.String,java.lang.String[])>',16,'p',NULL),(50,17,'<com.mobile.taskkiller.main: boolean onContextItemSelected(android.view.MenuItem)>',67,'a',NULL),(51,56,'<com.vcard.VCardComposer: java.lang.String createOneEntryInternal(java.lang.String)>',10,'p',NULL),(52,17,'<com.mobile.taskkiller.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(53,19,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(54,57,'<com.copy.contact.TaskHandler: int deleteAllContacts()>',3,'p',NULL),(55,58,'<com.copy.contact.SmsHandler: int getContactsCount()>',6,'p',NULL),(56,17,'<com.mobile.taskkiller.main: boolean onContextItemSelected(android.view.MenuItem)>',51,'a',NULL),(57,17,'<com.mobile.taskkiller.main: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(58,59,'<com.set.phone.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(59,47,'<com.passionteam.lightdd.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(60,36,'<com.riteshsahu.SMSBackupRestoreBase.ContactView: void openMessages(com.riteshsahu.SMSBackupRestoreBase.ContactNumbers)>',5,'a',NULL),(61,34,'<com.riteshsahu.SMSBackupRestoreBase.MessageView: boolean onContextItemSelected(android.view.MenuItem)>',23,'a',NULL),(62,60,'<com.riteshsahu.SMSBackupRestoreBase.Common: com.riteshsahu.SMSBackupRestoreBase.Contact getContactForNumber(android.content.Context,java.lang.String)>',51,'p',NULL),(63,45,'<com.riteshsahu.SMSBackupRestore.FreeAlarmProcessor: void startAlarmProcessorService(android.content.Context)>',4,'s',NULL),(64,61,'<com.riteshsahu.SMSBackupRestoreBase.SmsBackupProcessor: com.riteshsahu.SMSBackupRestoreBase.OperationResult saveXmlIncremental(android.content.Context,java.lang.String,java.lang.Boolean,android.app.ProgressDialog,android.os.Handler)>',71,'p',NULL),(65,21,'<com.riteshsahu.SMSBackupRestore.FreeMain: void donate()>',5,'a',NULL),(66,62,'<com.riteshsahu.SMSBackupRestoreBase.Main: void setupView()>',4,'s',NULL),(67,60,'<com.riteshsahu.SMSBackupRestoreBase.Common: com.riteshsahu.SMSBackupRestoreBase.Contact getContactForNumber(android.content.Context,java.lang.String)>',31,'p',NULL),(68,61,'<com.riteshsahu.SMSBackupRestoreBase.SmsBackupProcessor: com.riteshsahu.SMSBackupRestoreBase.OperationResult saveXml(android.content.Context,java.lang.String,java.lang.Boolean,android.app.ProgressDialog,android.os.Handler)>',34,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,3),(2,7,10),(3,8,3),(4,9,10),(5,13,5),(6,16,13),(7,17,10),(8,18,3),(9,19,10),(10,21,14),(11,22,1),(12,23,16),(13,24,1),(14,25,17),(15,26,19),(16,30,3),(17,31,21),(18,35,10),(19,36,16),(20,38,3),(21,39,22),(22,40,10),(23,41,24),(24,42,3),(25,43,25),(26,44,25),(27,45,25),(28,46,25),(29,47,25),(30,48,25),(31,49,25),(32,50,25),(33,51,25),(34,52,25),(35,53,25),(36,54,25),(37,55,25),(38,56,25),(39,57,25),(40,58,25),(41,62,26),(42,64,10),(43,65,3),(44,66,10),(45,72,25),(46,73,25),(47,74,25),(48,75,25),(49,76,25),(50,77,25),(51,78,25),(52,79,25),(53,81,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,7,4),(2,8,4),(3,9,4),(4,17,4),(5,18,4),(6,19,4),(7,22,1),(8,24,5),(9,35,4),(10,38,4),(11,40,4),(12,64,4),(13,65,4),(14,66,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/passionteam/lightdd/CoreService'),(2,3,'com/japanese/hot/girl/ShowImage'),(3,4,'com/japanese/hot/girl/SexyImages'),(4,5,'com/passionteam/lightdd/CoreService'),(5,6,'com/glumobi/lightdd/CoreService'),(6,10,'com/todo/notes/light/service/TrafficService'),(7,11,'com/glumobi/lightdd/CoreService'),(8,12,'com/todo/notes/light/service/TrafficService'),(9,13,'com/todo/notes/ExampleAppWidgetProvider'),(10,14,'com/button/phone/Setting'),(11,15,'com.android.phone.Settings'),(12,20,'com/button/phone/strategy/service/CelebrateService'),(13,27,'com/set/phone/protact/DreamerService'),(14,28,'com.android.settings.wifi.WifiApSettings'),(15,29,'com/mobile/taskkiller/KillService'),(16,32,'com/copy/contact/protact/DreamerService'),(17,33,'com/button/phone/strategy/service/CelebrateService'),(18,34,'com/set/phone/protact/DreamerService'),(19,37,'com/mobile/taskkiller/KillService'),(20,59,'com/mobile/taskkiller/KillService'),(21,60,'com/copy/contact/protact/DreamerService'),(22,61,'com/mobile/taskkiller/KillService'),(23,63,'com/mobile/taskkiller/KillService'),(24,67,'com.android.settings.InstalledAppDetails'),(25,68,'com.android.settings.InstalledAppDetails'),(26,69,'com/mobile/taskkiller/Settings'),(27,70,'com/passionteam/lightdd/CoreService'),(28,71,'com/riteshsahu/SMSBackupRestoreBase/MessageView'),(29,80,'com/riteshsahu/SMSBackupRestore/FreeAlarmProcessorService'),(30,82,'com/passionteam/lightdd/CoreService');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,7,5),(3,8,7),(4,9,8),(5,17,11),(6,18,12),(7,19,13),(8,26,15),(9,30,16),(10,35,17),(11,38,18),(12,40,19),(13,42,20),(14,62,23),(15,64,26),(16,65,28),(17,66,29),(18,81,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'ImageId'),(2,29,'screen'),(3,43,'android.intent.extra.INTENT'),(4,44,'android.intent.extra.INTENT'),(5,45,'android.intent.extra.INTENT'),(6,46,'android.intent.extra.INTENT'),(7,47,'android.intent.extra.TITLE'),(8,48,'android.intent.extra.TITLE'),(9,47,'android.intent.extra.INTENT'),(10,48,'android.intent.extra.INTENT'),(11,49,'android.intent.extra.INTENT'),(12,50,'android.intent.extra.INTENT'),(13,51,'android.intent.extra.TITLE'),(14,52,'android.intent.extra.TITLE'),(15,51,'android.intent.extra.INTENT'),(16,52,'android.intent.extra.INTENT'),(17,53,'android.intent.extra.INTENT'),(18,54,'android.intent.extra.INTENT'),(19,55,'android.intent.extra.TITLE'),(20,56,'android.intent.extra.TITLE'),(21,55,'android.intent.extra.INTENT'),(22,56,'android.intent.extra.INTENT'),(23,57,'android.intent.extra.TITLE'),(24,58,'android.intent.extra.TITLE'),(25,57,'android.intent.extra.INTENT'),(26,58,'android.intent.extra.INTENT'),(27,59,'screen'),(28,61,'screen'),(29,67,'com.android.settings.ApplicationPkgName'),(30,68,'pkg'),(31,72,'android.intent.extra.INTENT'),(32,73,'android.intent.extra.INTENT'),(33,74,'android.intent.extra.TITLE'),(34,74,'android.intent.extra.INTENT'),(35,75,'android.intent.extra.INTENT'),(36,76,'android.intent.extra.TITLE'),(37,76,'android.intent.extra.INTENT'),(38,77,'android.intent.extra.INTENT'),(39,78,'android.intent.extra.TITLE'),(40,78,'android.intent.extra.INTENT'),(41,79,'android.intent.extra.TITLE'),(42,79,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,2),(6,6,1),(7,7,4),(8,8,5),(9,8,6),(10,9,7),(11,9,2),(12,10,1),(13,11,1),(14,12,7),(15,13,8),(16,14,5),(17,15,1),(18,16,9),(19,17,7),(20,17,2),(21,18,1),(22,19,7),(23,19,2),(24,20,7),(25,21,2),(26,21,7),(27,22,7),(28,23,2),(29,24,11),(30,25,12),(31,26,2),(32,27,15),(33,28,18),(34,29,20),(35,30,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,2),(3,4,1),(4,5,2),(5,6,1),(6,9,2),(7,10,1),(8,11,1),(9,13,2),(10,15,1),(11,16,2),(12,17,2),(13,18,1),(14,19,2),(15,21,2),(16,22,3),(17,23,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,9,'(.*)','(.*)'),(2,19,'(.*)','(.*)'),(3,30,'application','vnd.android.package-archive'),(4,40,'(.*)','(.*)'),(5,42,'(.*)','(.*)'),(6,66,'(.*)','(.*)');
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
INSERT INTO `IPackages` VALUES (1,2,'com.japanese.hot.girl'),(2,3,'com.japanese.hot.girl'),(3,4,'com.japanese.hot.girl'),(4,5,'com.japanese.hot.girl'),(5,6,'com.glumobi.eraser'),(6,10,'com.todo.notes'),(7,11,'com.glumobi.eraser'),(8,12,'com.todo.notes'),(9,13,'com.todo.notes'),(10,14,'com.button.phone'),(11,15,'com.android.phone'),(12,20,'com.button.phone'),(13,22,'(.*)'),(14,24,'(.*)'),(15,27,'com.set.phone'),(16,28,'com.android.settings'),(17,29,'com.set.phone'),(18,32,'com.copy.contact'),(19,33,'com.button.phone'),(20,34,'com.set.phone'),(21,37,'com.set.phone'),(22,59,'com.set.phone'),(23,60,'com.copy.contact'),(24,61,'com.set.phone'),(25,63,'com.set.phone'),(26,67,'com.android.settings'),(27,68,'com.android.settings'),(28,69,'com.set.phone'),(29,70,'com.riteshsahu.super.SMSBackupRestore'),(30,71,'com.riteshsahu.super.SMSBackupRestore'),(31,80,'com.riteshsahu.super.SMSBackupRestore'),(32,82,'com.riteshsahu.super.SMSBackupRestore');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,5,0),(5,8,0),(6,10,0),(7,9,0),(8,13,0),(9,14,0),(10,15,0),(11,20,0),(12,24,0),(13,25,0),(14,26,0),(15,27,0),(16,28,0),(17,29,0),(18,31,0),(19,34,0),(20,42,0),(21,45,0),(22,44,0),(23,46,0),(24,47,0),(25,47,0),(26,47,0),(27,24,0),(28,47,0),(29,47,0),(30,24,0);
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
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,7,0,0),(7,10,1,0),(8,10,1,0),(9,10,1,0),(10,14,0,0),(11,15,0,0),(12,16,0,0),(13,17,0,0),(14,18,0,0),(15,19,0,0),(16,20,1,0),(17,21,1,0),(18,21,1,0),(19,21,1,0),(20,22,0,0),(21,23,1,0),(22,25,1,0),(23,26,1,0),(24,25,1,0),(25,27,1,0),(26,28,1,0),(27,29,0,0),(28,30,0,0),(29,31,0,0),(30,32,1,0),(31,33,1,0),(32,34,0,0),(33,35,0,0),(34,36,0,0),(35,37,1,0),(36,38,1,0),(37,39,0,0),(38,37,1,0),(39,40,1,0),(40,37,1,0),(41,41,1,0),(42,42,1,0),(43,44,1,0),(44,43,1,0),(45,44,1,0),(46,43,1,0),(47,44,1,0),(48,43,1,0),(49,44,1,0),(50,43,1,0),(51,44,1,0),(52,43,1,0),(53,44,1,0),(54,43,1,0),(55,44,1,0),(56,43,1,0),(57,44,1,0),(58,43,1,0),(59,45,0,0),(60,47,0,0),(61,48,0,0),(62,50,1,0),(63,52,0,0),(64,53,1,0),(65,53,1,0),(66,53,1,0),(67,56,0,0),(68,56,0,0),(69,57,0,0),(70,59,0,0),(71,60,0,0),(72,61,1,0),(73,61,1,0),(74,61,1,0),(75,61,1,0),(76,61,1,0),(77,61,1,0),(78,61,1,0),(79,61,1,0),(80,63,0,0),(81,65,1,0),(82,66,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (24,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.ACCESS_NETWORK_STATE'),(18,'android.permission.ACCESS_WIFI_STATE'),(22,'android.permission.BLUETOOTH'),(26,'android.permission.BLUETOOTH_ADMIN'),(28,'android.permission.CALL_PHONE'),(27,'android.permission.CHANGE_NETWORK_STATE'),(23,'android.permission.CHANGE_WIFI_STATE'),(19,'android.permission.GET_ACCOUNTS'),(11,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(13,'android.permission.KILL_BACKGROUND_PROCESSES'),(5,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(25,'android.permission.READ_SYNC_SETTINGS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(12,'android.permission.RESTART_PACKAGES'),(2,'android.permission.SET_WALLPAPER'),(16,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_CONTACTS'),(9,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'android.permission.WRITE_SETTINGS'),(15,'android.permission.WRITE_SMS'),(20,'android.permission.WRITE_SYNC_SETTINGS'),(7,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(4,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://www.google.com.hk/m/search?site=images&source=mog&hl=zh-CN&gl=cn&q=sexy',NULL,NULL,NULL),(2,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(3,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(4,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://contacts',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(10,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(15,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(22,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(23,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(25,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(31,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(32,NULL,NULL,'content://contacts/phones/filter',NULL,NULL,NULL),(33,NULL,NULL,'content://sms',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'content://contacts/phones/filter',NULL,NULL,NULL),(36,NULL,NULL,'content://com.android.contacts/data',NULL,NULL,NULL),(37,NULL,NULL,'content://sms',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,6,2),(2,8,3),(3,9,4),(4,11,6),(5,12,9),(6,13,10),(7,24,14),(8,46,21),(9,49,22),(10,51,24),(11,54,25),(12,55,27),(13,58,30),(14,62,31),(15,62,32),(16,64,33),(17,67,35),(18,67,36),(19,68,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,3),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,3,1),(11,3,3),(12,3,8),(13,3,9),(14,3,10),(15,4,1),(16,4,3),(17,4,8),(18,4,9),(19,4,10),(20,4,11),(21,4,12),(22,4,13),(23,5,17),(24,5,16),(25,5,1),(26,5,3),(27,5,5),(28,5,9),(29,5,14),(30,5,15),(31,6,1),(32,6,3),(33,6,5),(34,7,17),(35,7,1),(36,6,8),(37,7,3),(38,6,10),(39,7,5),(40,6,14),(41,7,6),(42,6,19),(43,6,18),(44,7,8),(45,7,9),(46,6,21),(47,7,10),(48,6,20),(49,7,28),(50,6,23),(51,6,22),(52,6,25),(53,6,24),(54,6,27),(55,6,26);
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

-- Dump completed on 2015-10-09  0:41:14
