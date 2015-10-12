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
) ENGINE=InnoDB AUTO_INCREMENT=908 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,10,12,2,NULL),(2,13,13,2,NULL),(3,7,10,2,NULL),(4,8,10,2,NULL),(5,22,10,2,NULL),(6,24,10,2,NULL),(7,26,10,2,NULL),(8,62,10,2,NULL),(9,64,10,2,NULL),(10,65,10,2,NULL),(11,44,10,2,NULL),(12,46,10,2,NULL),(13,48,10,2,NULL),(14,50,10,2,NULL),(15,52,10,2,NULL),(16,54,10,2,NULL),(17,56,10,2,NULL),(18,58,10,2,NULL),(19,81,10,2,NULL),(20,72,10,2,NULL),(21,73,10,2,NULL),(22,74,10,2,NULL),(23,75,10,2,NULL),(24,76,10,2,NULL),(25,77,10,2,NULL),(26,78,10,2,NULL),(27,79,10,2,NULL),(28,16,10,2,NULL),(29,21,10,2,NULL),(30,23,10,2,NULL),(31,25,10,2,NULL),(32,31,10,2,NULL),(33,36,10,2,NULL),(34,39,10,2,NULL),(35,41,10,2,NULL),(36,17,10,2,NULL),(37,18,10,2,NULL),(38,35,10,2,NULL),(39,38,10,2,NULL),(40,7,1,2,NULL),(41,8,1,2,NULL),(42,7,2,2,NULL),(43,8,2,2,NULL),(44,7,4,2,NULL),(45,8,4,2,NULL),(46,7,5,2,NULL),(47,8,5,2,NULL),(48,7,8,2,NULL),(49,8,8,2,NULL),(50,7,9,2,NULL),(51,8,9,2,NULL),(52,7,13,2,NULL),(53,8,13,2,NULL),(54,7,14,2,NULL),(55,8,14,2,NULL),(56,7,15,2,NULL),(57,8,15,2,NULL),(58,7,24,2,NULL),(59,8,24,2,NULL),(60,7,26,2,NULL),(61,8,26,2,NULL),(62,7,29,2,NULL),(63,8,29,2,NULL),(64,7,20,2,NULL),(65,8,20,2,NULL),(66,7,25,2,NULL),(67,8,25,2,NULL),(68,7,28,2,NULL),(69,8,28,2,NULL),(70,7,44,2,NULL),(71,8,44,2,NULL),(72,7,46,2,NULL),(73,8,46,2,NULL),(74,7,31,2,NULL),(75,8,31,2,NULL),(76,7,42,2,NULL),(77,8,42,2,NULL),(78,7,45,2,NULL),(79,8,45,2,NULL),(80,7,47,2,NULL),(81,8,47,2,NULL),(82,7,27,2,NULL),(83,8,27,2,NULL),(84,7,34,2,NULL),(85,8,34,2,NULL),(86,22,13,2,NULL),(87,24,13,2,NULL),(88,26,13,2,NULL),(89,62,13,2,NULL),(90,64,13,2,NULL),(91,65,13,2,NULL),(92,44,13,2,NULL),(93,46,13,2,NULL),(94,48,13,2,NULL),(95,50,13,2,NULL),(96,52,13,2,NULL),(97,54,13,2,NULL),(98,56,13,2,NULL),(99,58,13,2,NULL),(100,81,13,2,NULL),(101,72,13,2,NULL),(102,73,13,2,NULL),(103,74,13,2,NULL),(104,75,13,2,NULL),(105,76,13,2,NULL),(106,77,13,2,NULL),(107,78,13,2,NULL),(108,79,13,2,NULL),(109,16,13,2,NULL),(110,21,13,2,NULL),(111,23,13,2,NULL),(112,25,13,2,NULL),(113,31,13,2,NULL),(114,36,13,2,NULL),(115,39,13,2,NULL),(116,41,13,2,NULL),(117,17,13,2,NULL),(118,18,13,2,NULL),(119,35,13,2,NULL),(120,38,13,2,NULL),(121,12,12,2,NULL),(122,22,14,2,NULL),(123,24,14,2,NULL),(124,26,14,2,NULL),(125,62,14,2,NULL),(126,64,14,2,NULL),(127,65,14,2,NULL),(128,44,14,2,NULL),(129,46,14,2,NULL),(130,48,14,2,NULL),(131,50,14,2,NULL),(132,52,14,2,NULL),(133,54,14,2,NULL),(134,56,14,2,NULL),(135,58,14,2,NULL),(136,81,14,2,NULL),(137,72,14,2,NULL),(138,73,14,2,NULL),(139,74,14,2,NULL),(140,75,14,2,NULL),(141,76,14,2,NULL),(142,77,14,2,NULL),(143,78,14,2,NULL),(144,79,14,2,NULL),(145,16,14,2,NULL),(146,21,14,2,NULL),(147,23,14,2,NULL),(148,25,14,2,NULL),(149,31,14,2,NULL),(150,36,14,2,NULL),(151,39,14,2,NULL),(152,41,14,2,NULL),(153,17,14,2,NULL),(154,18,14,2,NULL),(155,35,14,2,NULL),(156,38,14,2,NULL),(157,14,38,2,NULL),(158,20,40,2,NULL),(159,16,1,2,NULL),(160,21,1,2,NULL),(161,23,1,2,NULL),(162,25,1,2,NULL),(163,31,1,2,NULL),(164,36,1,2,NULL),(165,39,1,2,NULL),(166,41,1,2,NULL),(167,16,2,2,NULL),(168,21,2,2,NULL),(169,23,2,2,NULL),(170,25,2,2,NULL),(171,31,2,2,NULL),(172,36,2,2,NULL),(173,39,2,2,NULL),(174,41,2,2,NULL),(175,16,4,2,NULL),(176,21,4,2,NULL),(177,23,4,2,NULL),(178,25,4,2,NULL),(179,31,4,2,NULL),(180,36,4,2,NULL),(181,39,4,2,NULL),(182,41,4,2,NULL),(183,16,5,2,NULL),(184,21,5,2,NULL),(185,23,5,2,NULL),(186,25,5,2,NULL),(187,31,5,2,NULL),(188,36,5,2,NULL),(189,39,5,2,NULL),(190,41,5,2,NULL),(191,16,8,2,NULL),(192,21,8,2,NULL),(193,23,8,2,NULL),(194,25,8,2,NULL),(195,31,8,2,NULL),(196,36,8,2,NULL),(197,39,8,2,NULL),(198,41,8,2,NULL),(199,16,9,2,NULL),(200,21,9,2,NULL),(201,23,9,2,NULL),(202,25,9,2,NULL),(203,31,9,2,NULL),(204,36,9,2,NULL),(205,39,9,2,NULL),(206,41,9,2,NULL),(207,16,15,2,NULL),(208,21,15,2,NULL),(209,23,15,2,NULL),(210,25,15,2,NULL),(211,31,15,2,NULL),(212,36,15,2,NULL),(213,39,15,2,NULL),(214,41,15,2,NULL),(215,22,31,2,NULL),(216,24,31,2,NULL),(217,26,31,2,NULL),(218,62,31,2,NULL),(219,64,31,2,NULL),(220,65,31,2,NULL),(221,44,31,2,NULL),(222,46,31,2,NULL),(223,48,31,2,NULL),(224,50,31,2,NULL),(225,52,31,2,NULL),(226,54,31,2,NULL),(227,56,31,2,NULL),(228,58,31,2,NULL),(229,16,24,2,NULL),(230,21,24,2,NULL),(231,23,24,2,NULL),(232,25,24,2,NULL),(233,31,24,2,NULL),(234,36,24,2,NULL),(235,39,24,2,NULL),(236,41,24,2,NULL),(237,16,26,2,NULL),(238,21,26,2,NULL),(239,23,26,2,NULL),(240,25,26,2,NULL),(241,31,26,2,NULL),(242,36,26,2,NULL),(243,39,26,2,NULL),(244,41,26,2,NULL),(245,16,29,2,NULL),(246,21,29,2,NULL),(247,60,32,2,NULL),(248,23,29,2,NULL),(249,22,27,2,NULL),(250,25,29,2,NULL),(251,24,27,2,NULL),(252,31,29,2,NULL),(253,26,27,2,NULL),(254,36,29,2,NULL),(255,62,27,2,NULL),(256,39,29,2,NULL),(257,64,27,2,NULL),(258,6,7,2,NULL),(259,41,29,2,NULL),(260,65,27,2,NULL),(261,22,5,2,NULL),(262,16,20,2,NULL),(263,44,27,2,NULL),(264,24,5,2,NULL),(265,21,20,2,NULL),(266,46,27,2,NULL),(267,26,5,2,NULL),(268,23,20,2,NULL),(269,62,5,2,NULL),(270,48,27,2,NULL),(271,25,20,2,NULL),(272,64,5,2,NULL),(273,31,20,2,NULL),(274,50,27,2,NULL),(275,65,5,2,NULL),(276,36,20,2,NULL),(277,52,27,2,NULL),(278,44,5,2,NULL),(279,39,20,2,NULL),(280,46,5,2,NULL),(281,54,27,2,NULL),(282,41,20,2,NULL),(283,48,5,2,NULL),(284,81,31,2,NULL),(285,56,27,2,NULL),(286,50,5,2,NULL),(287,16,25,2,NULL),(288,58,27,2,NULL),(289,21,25,2,NULL),(290,52,5,2,NULL),(291,81,27,2,NULL),(292,23,25,2,NULL),(293,54,5,2,NULL),(294,72,27,2,NULL),(295,25,25,2,NULL),(296,56,5,2,NULL),(297,73,27,2,NULL),(298,31,25,2,NULL),(299,58,5,2,NULL),(300,74,27,2,NULL),(301,36,25,2,NULL),(302,81,5,2,NULL),(303,39,25,2,NULL),(304,75,27,2,NULL),(305,72,5,2,NULL),(306,76,27,2,NULL),(307,41,25,2,NULL),(308,73,5,2,NULL),(309,77,27,2,NULL),(310,16,28,2,NULL),(311,74,5,2,NULL),(312,78,27,2,NULL),(313,21,28,2,NULL),(314,75,5,2,NULL),(315,79,27,2,NULL),(316,23,28,2,NULL),(317,76,5,2,NULL),(318,25,28,2,NULL),(319,16,27,2,NULL),(320,77,5,2,NULL),(321,21,27,2,NULL),(322,31,28,2,NULL),(323,78,5,2,NULL),(324,23,27,2,NULL),(325,36,28,2,NULL),(326,79,5,2,NULL),(327,39,28,2,NULL),(328,25,27,2,NULL),(329,17,5,2,NULL),(330,41,28,2,NULL),(331,31,27,2,NULL),(332,18,5,2,NULL),(333,72,31,2,NULL),(334,36,27,2,NULL),(335,35,5,2,NULL),(336,73,31,2,NULL),(337,39,27,2,NULL),(338,38,5,2,NULL),(339,74,31,2,NULL),(340,41,27,2,NULL),(341,11,7,2,NULL),(342,75,31,2,NULL),(343,17,27,2,NULL),(344,22,8,2,NULL),(345,76,31,2,NULL),(346,24,8,2,NULL),(347,18,27,2,NULL),(348,77,31,2,NULL),(349,26,8,2,NULL),(350,35,27,2,NULL),(351,78,31,2,NULL),(352,62,8,2,NULL),(353,38,27,2,NULL),(354,79,31,2,NULL),(355,35,1,2,NULL),(356,64,8,2,NULL),(357,16,44,2,NULL),(358,38,1,2,NULL),(359,65,8,2,NULL),(360,21,44,2,NULL),(361,44,8,2,NULL),(362,35,2,2,NULL),(363,23,44,2,NULL),(364,46,8,2,NULL),(365,38,2,2,NULL),(366,25,44,2,NULL),(367,48,8,2,NULL),(368,35,4,2,NULL),(369,31,44,2,NULL),(370,50,8,2,NULL),(371,38,4,2,NULL),(372,36,44,2,NULL),(373,35,8,2,NULL),(374,52,8,2,NULL),(375,39,44,2,NULL),(376,38,8,2,NULL),(377,54,8,2,NULL),(378,41,44,2,NULL),(379,56,8,2,NULL),(380,35,9,2,NULL),(381,16,46,2,NULL),(382,58,8,2,NULL),(383,38,9,2,NULL),(384,21,46,2,NULL),(385,35,15,2,NULL),(386,81,8,2,NULL),(387,23,46,2,NULL),(388,38,15,2,NULL),(389,72,8,2,NULL),(390,25,46,2,NULL),(391,73,8,2,NULL),(392,35,24,2,NULL),(393,31,46,2,NULL),(394,74,8,2,NULL),(395,38,24,2,NULL),(396,36,46,2,NULL),(397,35,26,2,NULL),(398,75,8,2,NULL),(399,39,46,2,NULL),(400,38,26,2,NULL),(401,76,8,2,NULL),(402,41,46,2,NULL),(403,77,8,2,NULL),(404,35,29,2,NULL),(405,17,31,2,NULL),(406,78,8,2,NULL),(407,38,29,2,NULL),(408,18,31,2,NULL),(409,35,20,2,NULL),(410,79,8,2,NULL),(411,16,42,2,NULL),(412,38,20,2,NULL),(413,17,8,2,NULL),(414,21,42,2,NULL),(415,18,8,2,NULL),(416,35,25,2,NULL),(417,23,42,2,NULL),(418,38,25,2,NULL),(419,22,9,2,NULL),(420,25,42,2,NULL),(421,35,28,2,NULL),(422,24,9,2,NULL),(423,31,42,2,NULL),(424,38,28,2,NULL),(425,26,9,2,NULL),(426,36,42,2,NULL),(427,62,9,2,NULL),(428,35,44,2,NULL),(429,39,42,2,NULL),(430,64,9,2,NULL),(431,38,44,2,NULL),(432,41,42,2,NULL),(433,35,46,2,NULL),(434,65,9,2,NULL),(435,16,45,2,NULL),(436,38,46,2,NULL),(437,44,9,2,NULL),(438,21,45,2,NULL),(439,46,9,2,NULL),(440,35,31,2,NULL),(441,23,45,2,NULL),(442,48,9,2,NULL),(443,38,31,2,NULL),(444,25,45,2,NULL),(445,50,9,2,NULL),(446,35,42,2,NULL),(447,31,45,2,NULL),(448,52,9,2,NULL),(449,38,42,2,NULL),(450,36,45,2,NULL),(451,54,9,2,NULL),(452,35,45,2,NULL),(453,39,45,2,NULL),(454,56,9,2,NULL),(455,38,45,2,NULL),(456,41,45,2,NULL),(457,58,9,2,NULL),(458,35,47,2,NULL),(459,16,47,2,NULL),(460,81,9,2,NULL),(461,38,47,2,NULL),(462,21,47,2,NULL),(463,72,9,2,NULL),(464,35,34,2,NULL),(465,23,47,2,NULL),(466,73,9,2,NULL),(467,38,34,2,NULL),(468,25,47,2,NULL),(469,74,9,2,NULL),(470,32,32,2,NULL),(471,31,47,2,NULL),(472,75,9,2,NULL),(473,22,34,2,NULL),(474,36,47,2,NULL),(475,24,34,2,NULL),(476,76,9,2,NULL),(477,39,47,2,NULL),(478,77,9,2,NULL),(479,26,34,2,NULL),(480,41,47,2,NULL),(481,78,9,2,NULL),(482,62,34,2,NULL),(483,16,34,2,NULL),(484,64,34,2,NULL),(485,79,9,2,NULL),(486,21,34,2,NULL),(487,65,34,2,NULL),(488,17,9,2,NULL),(489,23,34,2,NULL),(490,18,9,2,NULL),(491,44,34,2,NULL),(492,25,34,2,NULL),(493,46,34,2,NULL),(494,31,34,2,NULL),(495,48,34,2,NULL),(496,36,34,2,NULL),(497,50,34,2,NULL),(498,39,34,2,NULL),(499,52,34,2,NULL),(500,41,34,2,NULL),(501,54,34,2,NULL),(502,17,1,2,NULL),(503,56,34,2,NULL),(504,18,1,2,NULL),(505,58,34,2,NULL),(506,17,2,2,NULL),(507,81,34,2,NULL),(508,18,2,2,NULL),(509,72,34,2,NULL),(510,17,4,2,NULL),(511,73,34,2,NULL),(512,18,4,2,NULL),(513,74,34,2,NULL),(514,17,15,2,NULL),(515,75,34,2,NULL),(516,18,15,2,NULL),(517,76,34,2,NULL),(518,17,24,2,NULL),(519,77,34,2,NULL),(520,18,24,2,NULL),(521,78,34,2,NULL),(522,17,26,2,NULL),(523,79,34,2,NULL),(524,18,26,2,NULL),(525,17,34,2,NULL),(526,17,29,2,NULL),(527,18,34,2,NULL),(528,18,29,2,NULL),(529,17,20,2,NULL),(530,18,20,2,NULL),(531,17,25,2,NULL),(532,18,25,2,NULL),(533,17,28,2,NULL),(534,18,28,2,NULL),(535,17,44,2,NULL),(536,18,44,2,NULL),(537,17,46,2,NULL),(538,18,46,2,NULL),(539,17,42,2,NULL),(540,18,42,2,NULL),(541,17,45,2,NULL),(542,18,45,2,NULL),(543,17,47,2,NULL),(544,18,47,2,NULL),(545,22,42,2,NULL),(546,24,42,2,NULL),(547,26,42,2,NULL),(548,62,42,2,NULL),(549,64,42,2,NULL),(550,65,42,2,NULL),(551,44,42,2,NULL),(552,46,42,2,NULL),(553,48,42,2,NULL),(554,50,42,2,NULL),(555,52,42,2,NULL),(556,54,42,2,NULL),(557,56,42,2,NULL),(558,58,42,2,NULL),(559,81,42,2,NULL),(560,72,42,2,NULL),(561,73,42,2,NULL),(562,74,42,2,NULL),(563,75,42,2,NULL),(564,76,42,2,NULL),(565,77,42,2,NULL),(566,78,42,2,NULL),(567,79,42,2,NULL),(568,33,40,2,NULL),(569,22,45,2,NULL),(570,24,45,2,NULL),(571,26,45,2,NULL),(572,62,45,2,NULL),(573,64,45,2,NULL),(574,65,45,2,NULL),(575,44,45,2,NULL),(576,46,45,2,NULL),(577,48,45,2,NULL),(578,50,45,2,NULL),(579,52,45,2,NULL),(580,54,45,2,NULL),(581,56,45,2,NULL),(582,58,45,2,NULL),(583,81,45,2,NULL),(584,72,45,2,NULL),(585,73,45,2,NULL),(586,74,45,2,NULL),(587,75,45,2,NULL),(588,76,45,2,NULL),(589,77,45,2,NULL),(590,78,45,2,NULL),(591,79,45,2,NULL),(592,22,47,2,NULL),(593,24,47,2,NULL),(594,26,47,2,NULL),(595,62,47,2,NULL),(596,64,47,2,NULL),(597,65,47,2,NULL),(598,44,47,2,NULL),(599,46,47,2,NULL),(600,48,47,2,NULL),(601,50,47,2,NULL),(602,52,47,2,NULL),(603,54,47,2,NULL),(604,56,47,2,NULL),(605,58,47,2,NULL),(606,81,47,2,NULL),(607,72,47,2,NULL),(608,73,47,2,NULL),(609,74,47,2,NULL),(610,75,47,2,NULL),(611,76,47,2,NULL),(612,77,47,2,NULL),(613,78,47,2,NULL),(614,79,47,2,NULL),(615,34,22,2,NULL),(616,22,15,2,NULL),(617,24,15,2,NULL),(618,26,15,2,NULL),(619,62,15,2,NULL),(620,64,15,2,NULL),(621,65,15,2,NULL),(622,44,15,2,NULL),(623,46,15,2,NULL),(624,48,15,2,NULL),(625,50,15,2,NULL),(626,52,15,2,NULL),(627,54,15,2,NULL),(628,56,15,2,NULL),(629,58,15,2,NULL),(630,81,15,2,NULL),(631,72,15,2,NULL),(632,73,15,2,NULL),(633,74,15,2,NULL),(634,75,15,2,NULL),(635,76,15,2,NULL),(636,77,15,2,NULL),(637,78,15,2,NULL),(638,79,15,2,NULL),(639,63,21,2,NULL),(640,69,17,2,NULL),(641,22,1,2,NULL),(642,24,1,2,NULL),(643,26,1,2,NULL),(644,62,1,2,NULL),(645,22,2,2,NULL),(646,24,2,2,NULL),(647,26,2,2,NULL),(648,62,2,2,NULL),(649,22,4,2,NULL),(650,24,4,2,NULL),(651,26,4,2,NULL),(652,62,4,2,NULL),(653,22,24,2,NULL),(654,24,24,2,NULL),(655,26,24,2,NULL),(656,62,24,2,NULL),(657,22,26,2,NULL),(658,24,26,2,NULL),(659,26,26,2,NULL),(660,62,26,2,NULL),(661,22,29,2,NULL),(662,24,29,2,NULL),(663,26,29,2,NULL),(664,62,29,2,NULL),(665,22,20,2,NULL),(666,24,20,2,NULL),(667,26,20,2,NULL),(668,62,20,2,NULL),(669,22,25,2,NULL),(670,24,25,2,NULL),(671,26,25,2,NULL),(672,62,25,2,NULL),(673,22,28,2,NULL),(674,24,28,2,NULL),(675,26,28,2,NULL),(676,62,28,2,NULL),(677,22,44,2,NULL),(678,24,44,2,NULL),(679,26,44,2,NULL),(680,62,44,2,NULL),(681,22,46,2,NULL),(682,24,46,2,NULL),(683,26,46,2,NULL),(684,62,46,2,NULL),(685,64,1,2,NULL),(686,65,1,2,NULL),(687,64,2,2,NULL),(688,65,2,2,NULL),(689,64,4,2,NULL),(690,65,4,2,NULL),(691,64,24,2,NULL),(692,65,24,2,NULL),(693,64,26,2,NULL),(694,65,26,2,NULL),(695,64,29,2,NULL),(696,65,29,2,NULL),(697,64,20,2,NULL),(698,65,20,2,NULL),(699,64,25,2,NULL),(700,65,25,2,NULL),(701,64,28,2,NULL),(702,65,28,2,NULL),(703,64,44,2,NULL),(704,65,44,2,NULL),(705,64,46,2,NULL),(706,65,46,2,NULL),(707,44,1,2,NULL),(708,3,2,2,NULL),(709,46,1,2,NULL),(710,5,3,2,NULL),(711,48,1,2,NULL),(712,5,43,2,NULL),(713,50,1,2,NULL),(714,52,1,2,NULL),(715,54,1,2,NULL),(716,56,1,2,NULL),(717,58,1,2,NULL),(718,81,1,2,NULL),(719,44,2,2,NULL),(720,72,1,2,NULL),(721,46,2,2,NULL),(722,73,1,2,NULL),(723,48,2,2,NULL),(724,74,1,2,NULL),(725,50,2,2,NULL),(726,75,1,2,NULL),(727,52,2,2,NULL),(728,76,1,2,NULL),(729,54,2,2,NULL),(730,77,1,2,NULL),(731,56,2,2,NULL),(732,78,1,2,NULL),(733,58,2,2,NULL),(734,79,1,2,NULL),(735,44,4,2,NULL),(736,46,4,2,NULL),(737,4,1,2,NULL),(738,48,4,2,NULL),(739,81,2,2,NULL),(740,50,4,2,NULL),(741,72,2,2,NULL),(742,52,4,2,NULL),(743,73,2,2,NULL),(744,54,4,2,NULL),(745,74,2,2,NULL),(746,56,4,2,NULL),(747,75,2,2,NULL),(748,58,4,2,NULL),(749,76,2,2,NULL),(750,44,24,2,NULL),(751,77,2,2,NULL),(752,46,24,2,NULL),(753,78,2,2,NULL),(754,48,24,2,NULL),(755,79,2,2,NULL),(756,50,24,2,NULL),(757,2,3,2,NULL),(758,52,24,2,NULL),(759,2,43,2,NULL),(760,54,24,2,NULL),(761,56,24,2,NULL),(762,81,4,2,NULL),(763,58,24,2,NULL),(764,72,4,2,NULL),(765,44,26,2,NULL),(766,73,4,2,NULL),(767,46,26,2,NULL),(768,74,4,2,NULL),(769,48,26,2,NULL),(770,75,4,2,NULL),(771,50,26,2,NULL),(772,76,4,2,NULL),(773,52,26,2,NULL),(774,77,4,2,NULL),(775,54,26,2,NULL),(776,78,4,2,NULL),(777,56,26,2,NULL),(778,79,4,2,NULL),(779,58,26,2,NULL),(780,44,29,2,NULL),(781,46,29,2,NULL),(782,48,29,2,NULL),(783,50,29,2,NULL),(784,52,29,2,NULL),(785,54,29,2,NULL),(786,56,29,2,NULL),(787,58,29,2,NULL),(788,44,20,2,NULL),(789,46,20,2,NULL),(790,48,20,2,NULL),(791,50,20,2,NULL),(792,52,20,2,NULL),(793,54,20,2,NULL),(794,56,20,2,NULL),(795,58,20,2,NULL),(796,44,25,2,NULL),(797,46,25,2,NULL),(798,48,25,2,NULL),(799,50,25,2,NULL),(800,52,25,2,NULL),(801,54,25,2,NULL),(802,56,25,2,NULL),(803,58,25,2,NULL),(804,44,28,2,NULL),(805,46,28,2,NULL),(806,48,28,2,NULL),(807,50,28,2,NULL),(808,52,28,2,NULL),(809,54,28,2,NULL),(810,56,28,2,NULL),(811,58,28,2,NULL),(812,44,44,2,NULL),(813,46,44,2,NULL),(814,48,44,2,NULL),(815,50,44,2,NULL),(816,52,44,2,NULL),(817,54,44,2,NULL),(818,56,44,2,NULL),(819,58,44,2,NULL),(820,44,46,2,NULL),(821,46,46,2,NULL),(822,48,46,2,NULL),(823,50,46,2,NULL),(824,52,46,2,NULL),(825,54,46,2,NULL),(826,56,46,2,NULL),(827,58,46,2,NULL),(828,29,21,2,NULL),(829,37,21,2,NULL),(830,59,21,2,NULL),(831,81,24,2,NULL),(832,61,21,2,NULL),(833,81,26,2,NULL),(834,72,24,2,NULL),(835,81,29,2,NULL),(836,73,24,2,NULL),(837,81,25,2,NULL),(838,74,24,2,NULL),(839,81,28,2,NULL),(840,75,24,2,NULL),(841,72,20,2,NULL),(842,76,24,2,NULL),(843,73,20,2,NULL),(844,77,24,2,NULL),(845,74,20,2,NULL),(846,78,24,2,NULL),(847,75,20,2,NULL),(848,79,24,2,NULL),(849,76,20,2,NULL),(850,72,26,2,NULL),(851,73,26,2,NULL),(852,77,20,2,NULL),(853,74,26,2,NULL),(854,78,20,2,NULL),(855,75,26,2,NULL),(856,79,20,2,NULL),(857,76,26,2,NULL),(858,81,44,2,NULL),(859,77,26,2,NULL),(860,81,46,2,NULL),(861,78,26,2,NULL),(862,79,26,2,NULL),(863,72,25,2,NULL),(864,27,22,2,NULL),(865,73,25,2,NULL),(866,72,29,2,NULL),(867,74,25,2,NULL),(868,73,29,2,NULL),(869,75,25,2,NULL),(870,74,29,2,NULL),(871,76,25,2,NULL),(872,75,29,2,NULL),(873,77,25,2,NULL),(874,76,29,2,NULL),(875,78,25,2,NULL),(876,77,29,2,NULL),(877,79,25,2,NULL),(878,78,29,2,NULL),(879,72,28,2,NULL),(880,79,29,2,NULL),(881,73,28,2,NULL),(882,74,28,2,NULL),(883,75,28,2,NULL),(884,76,28,2,NULL),(885,77,28,2,NULL),(886,78,28,2,NULL),(887,79,28,2,NULL),(888,72,44,2,NULL),(889,73,44,2,NULL),(890,74,44,2,NULL),(891,75,44,2,NULL),(892,76,44,2,NULL),(893,77,44,2,NULL),(894,78,44,2,NULL),(895,79,44,2,NULL),(896,72,46,2,NULL),(897,73,46,2,NULL),(898,74,46,2,NULL),(899,75,46,2,NULL),(900,76,46,2,NULL),(901,77,46,2,NULL),(902,78,46,2,NULL),(903,79,46,2,NULL),(904,71,33,2,NULL),(905,80,41,2,NULL),(906,70,3,2,NULL),(907,70,43,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:49
