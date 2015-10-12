-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_87
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (12,'(.*)'),(8,'android.appwidget.action.APPWIDGET_UPDATE'),(6,'android.intent.action.BOOT_COMPLETED'),(20,'android.intent.action.CALL'),(11,'android.intent.action.CHOOSER'),(9,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PACKAGE_ADDED'),(4,'android.intent.action.PACKAGE_CHANGED'),(3,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.PACKAGE_REPLACED'),(2,'android.intent.action.PHONE_STATE'),(16,'android.intent.action.RINGTONE_PICKER'),(17,'android.intent.action.SCREEN_OFF'),(14,'android.intent.action.SCREEN_ON'),(21,'android.intent.action.SENDTO'),(10,'android.intent.action.VIEW'),(13,'android.media.RINGER_MODE_CHANGED'),(18,'android.settings.APPLICATION_DETAILS_SETTINGS'),(15,'android.settings.SOUND_SETTINGS'),(19,'android.view.InputMethod');
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
INSERT INTO `Applications` VALUES (1,'de.android_telefonie.super.appmanager',105),(2,'com.tuan.android',14),(3,'com.bmdt.disciplined',1),(4,'com.quick.task',4),(5,'com.info.eraser.smshistory',1),(6,'com.sound.adjustment',2),(7,'com.jinshou.jsinputmethod',9);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'de.android_telefonie.appmanager.MainActivity'),(2,1,'de.android_telefonie.appmanager.AppMonster'),(3,1,'de.android_telefonie.appmanager.ArchiveView'),(4,1,'de.android_telefonie.appmanager.About'),(5,1,'de.android_telefonie.appmanager.Preferences'),(6,1,'com.passionteam.lightdd.CoreService'),(7,1,'com.passionteam.lightdd.Receiver'),(8,3,'com.bmdt.disciplined.AppSafeGuardActivity'),(9,2,'com.tuan.android.daquan.LaunchActivity'),(10,3,'com.bmdt.disciplined.install.installActivity'),(11,3,'com.bmdt.disciplined.uninstall.uninstallActivity'),(12,3,'com.google.ads.AdActivity'),(13,2,'com.tuan.android.daquan.MainActivity'),(14,3,'com.bmdt.disciplined.uninstall.Settings'),(15,2,'com.tuan.android.daquan.ActivityContainer'),(16,3,'com.bmdt.disciplined.apptosd.MainTab'),(17,2,'com.tuan.android.daquan.HeaderWebActivity'),(18,3,'com.bmdt.disciplined.apptosd.App2SdActivity'),(19,2,'com.coming.match.MeetService'),(20,3,'com.bmdt.disciplined.apptosd.Preferences'),(21,2,'com.coming.match.Receiver'),(22,3,'com.bmdt.disciplined.safescan.SafeGuardActivity'),(23,3,'com.bmdt.disciplined.safescan.TrustListActivity'),(24,6,'com.sound.adjustment.SoundSetting'),(25,3,'com.bmdt.disciplined.mighty.service.CustomService'),(26,4,'com.quick.task.main'),(27,3,'com.bmdt.disciplined.uninstall.Receiver'),(28,6,'com.google.ads.AdActivity'),(29,5,'com.info.eraser.smshistory.main'),(30,4,'com.quick.task.Settings'),(31,6,'com.sound.adjustment.Setting'),(32,4,'com.google.ads.AdActivity'),(33,6,'com.sound.adjustment.protact.DreamerService'),(34,5,'com.google.ads.AdActivity'),(35,4,'com.quick.task.KillService'),(36,6,'com.sound.adjustment.Receiver'),(37,5,'com.info.eraser.smshistory.strategy.service.CelebrateService'),(38,4,'com.quick.task.strategy.service.CelebrateService'),(39,5,'com.info.eraser.smshistory.strategy.core.RebirthReceiver'),(40,4,'com.quick.task.Receiver'),(41,6,'com.sound.adjustment.protact.BeerReceiver'),(42,4,'com.quick.task.ExampleAppWidgetProvider'),(43,3,'com.bmdt.disciplined.safescan.Receiver'),(44,4,'com.quick.task.strategy.core.RebirthReceiver'),(45,3,'com.bmdt.disciplined.mighty.core.BootReceiver'),(46,1,'de.android_telefonie.appmanager.AppMonster$3'),(47,1,'de.android_telefonie.appmanager.MainActivity$6'),(48,1,'de.android_telefonie.appmanager.MainActivity$8'),(49,1,'de.android_telefonie.appmanager.ArchiveView$4'),(50,1,'de.android_telefonie.appmanager.MainActivity$14'),(51,1,'de.android_telefonie.appmanager.ArchiveView$PackageReceiver'),(52,1,'de.android_telefonie.appmanager.MainActivity$3'),(53,1,'de.android_telefonie.appmanager.AppMonster$PackageReceiver'),(54,1,'de.android_telefonie.appmanager.MainActivity$15'),(55,5,'com.info.common.TaskHandler'),(56,5,'com.info.eraser.smshistory.strategy.service.Tools'),(57,6,'com.sound.adjustment.NetworkStateReceiver'),(58,6,'com.sound.adjustment.protact.Tools'),(59,4,'com.quick.task.strategy.service.Tools'),(60,7,'com.jinshou.jsinputmethod.SettingsActivity'),(61,7,'com.jinshou.jsinputmethod.MyActivity'),(62,7,'com.jinshou.jsinputmethod.MyActivity4'),(63,7,'com.jinshou.jsinputmethod.MyActivity1'),(64,7,'com.jinshou.jsinputmethod.MyActivity2'),(65,7,'com.jinshou.jsinputmethod.MyActivity3'),(66,7,'com.jinshou.jsinputmethod.MyActivity6'),(67,7,'com.jinshou.jsinputmethod.MyActivity5'),(68,7,'com.jinshou.jsinputmethod.JSInputMethod'),(69,3,'com.bmdt.disciplined.safescan.l'),(70,7,'com.coming.match.MeetService'),(71,7,'com.coming.match.Receiver'),(72,3,'com.bmdt.disciplined.mighty.a.g'),(73,7,'com.jinshou.jsinputmethod.MyActivity$14'),(74,7,'com.jinshou.jsinputmethod.MyActivity3$5'),(75,7,'com.jinshou.jsinputmethod.MyActivity3$8'),(76,7,'com.jinshou.jsinputmethod.MyActivity$1'),(77,7,'com.jinshou.jsinputmethod.HttpEngine'),(78,7,'com.jinshou.jsinputmethod.MyActivity5$1'),(79,7,'com.jinshou.jsinputmethod.MyActivity5$3');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,6,'filename2'),(2,6,'url2'),(3,6,'PackageName2'),(4,6,'Title2'),(5,6,'Description2'),(6,9,'UMENG_APPKEY'),(7,17,'isFirst'),(8,19,'filename12'),(9,17,'controller'),(10,17,'url'),(11,17,'ui_title'),(12,19,'Description12'),(13,19,'Title12'),(14,19,'url12'),(15,9,'UMENG_CHANNEL'),(16,37,'Title4'),(17,34,'params'),(18,37,'url4'),(19,34,'com.google.ads.AdOpener'),(20,34,'action'),(21,37,'filename4'),(22,37,'PackageName4'),(23,37,'Description4'),(24,24,'android.intent.extra.ringtone.PICKED_URI'),(25,33,'De8scription4'),(26,33,'filename8'),(27,28,'params'),(28,38,'PackageName4'),(29,33,'url1'),(30,33,'T7itle5'),(31,28,'action'),(32,28,'com.google.ads.AdOpener'),(33,38,'Title4'),(34,38,'Description4'),(35,32,'params'),(36,38,'filename4'),(37,38,'url4'),(38,32,'com.google.ads.AdOpener'),(39,33,'Pa2ckageName3'),(40,32,'action'),(41,35,'screen'),(42,12,'action'),(43,25,'url5'),(44,25,'Description5'),(45,25,'PackageName5'),(46,25,'filename5'),(47,12,'com.google.ads.AdOpener'),(48,12,'params'),(49,25,'Title5'),(50,58,'url12'),(51,58,'Title12'),(52,58,'Description12'),(53,58,'filename12');
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'s',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,51,'r',1,NULL,NULL),(47,53,'r',1,NULL,NULL),(48,57,'r',1,NULL,NULL),(49,60,'a',0,NULL,NULL),(50,61,'a',1,NULL,NULL),(51,62,'a',1,NULL,NULL),(52,63,'a',0,NULL,NULL),(53,64,'a',0,NULL,NULL),(54,65,'a',0,NULL,NULL),(55,66,'a',0,NULL,NULL),(56,67,'a',0,NULL,NULL),(57,68,'s',1,30,NULL),(58,70,'s',0,NULL,NULL),(59,71,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,1),(4,4,1),(5,5,1),(6,6,3),(7,7,1),(8,8,1),(9,9,2),(10,10,2),(11,11,2),(12,12,1),(13,13,7),(14,14,2),(15,15,1),(16,16,21),(17,17,9),(18,18,39),(19,19,29),(20,20,29),(21,21,29),(22,22,29),(23,23,37),(24,24,29),(25,25,34),(26,26,26),(27,27,32),(28,28,28),(29,29,44),(30,30,33),(31,31,40),(32,32,41),(33,33,26),(34,34,26),(35,35,24),(36,36,24),(37,37,24),(38,38,26),(39,39,24),(40,40,40),(41,41,38),(42,42,26),(43,43,26),(44,44,40),(45,45,40),(46,46,26),(47,47,45),(48,48,18),(49,49,23),(50,50,10),(51,50,18),(52,51,10),(53,51,18),(54,51,8),(55,52,8),(56,52,10),(57,52,18),(58,53,18),(59,54,22),(60,55,11),(61,55,10),(62,55,18),(63,56,25),(64,57,12),(65,58,23),(66,59,11),(67,60,8),(68,61,22),(69,62,18),(70,63,10),(71,64,8),(72,65,22),(73,66,23),(74,67,22),(75,68,18),(76,69,22),(77,70,11),(78,71,10),(79,72,23),(80,73,10),(81,73,8),(82,73,18),(83,74,8),(84,75,10),(85,75,18),(86,76,18),(87,77,10),(88,77,8),(89,77,18),(90,78,54),(91,79,50),(92,80,50),(93,81,50),(94,82,54),(95,83,50),(96,84,50),(97,85,50),(98,86,52),(99,87,54),(100,88,54),(101,89,50),(102,90,57),(103,91,59),(104,92,54),(105,93,57),(106,94,50),(107,95,50),(108,96,51),(109,97,57),(110,98,50),(111,99,56),(112,100,50),(113,101,51),(114,102,56),(115,103,54);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,46,'<de.android_telefonie.appmanager.AppMonster$3: void onClick(android.content.DialogInterface,int)>',42,'a',NULL),(2,46,'<de.android_telefonie.appmanager.AppMonster$3: void onClick(android.content.DialogInterface,int)>',60,'a',NULL),(3,1,'<de.android_telefonie.appmanager.MainActivity: void checkSD()>',30,'a',0),(4,47,'<de.android_telefonie.appmanager.MainActivity$6: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(5,48,'<de.android_telefonie.appmanager.MainActivity$8: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(6,49,'<de.android_telefonie.appmanager.ArchiveView$4: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(7,1,'<de.android_telefonie.appmanager.MainActivity: void onCreate(android.os.Bundle)>',5,'s',NULL),(8,50,'<de.android_telefonie.appmanager.MainActivity$14: void onClick(android.content.DialogInterface,int)>',8,'a',0),(9,2,'<de.android_telefonie.appmanager.AppMonster: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',0),(10,2,'<de.android_telefonie.appmanager.AppMonster: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',0),(11,46,'<de.android_telefonie.appmanager.AppMonster$3: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(12,52,'<de.android_telefonie.appmanager.MainActivity$3: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(13,7,'<com.passionteam.lightdd.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(14,2,'<de.android_telefonie.appmanager.AppMonster: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(15,54,'<de.android_telefonie.appmanager.MainActivity$15: void onClick(android.content.DialogInterface,int)>',8,'a',0),(16,21,'<com.coming.match.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(17,9,'<com.tuan.android.daquan.LaunchActivity: void onCreate(android.os.Bundle)>',5,'s',NULL),(18,39,'<com.info.eraser.smshistory.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(19,55,'<com.info.common.TaskHandler: int deleteAllSms()>',4,'p',NULL),(20,29,'<com.info.eraser.smshistory.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(21,55,'<com.info.common.TaskHandler: int deleteAllCallLogs()>',4,'p',NULL),(22,55,'<com.info.common.TaskHandler: int deleteAllContacts()>',3,'p',NULL),(23,56,'<com.info.eraser.smshistory.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(24,55,'<com.info.common.TaskHandler: int deleteAllSms()>',8,'p',NULL),(25,34,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(26,26,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',51,'a',NULL),(27,32,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(28,28,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(29,44,'<com.quick.task.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(30,58,'<com.sound.adjustment.protact.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(31,40,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',23,'s',NULL),(32,41,'<com.sound.adjustment.protact.BeerReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(33,26,'<com.quick.task.main: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(34,26,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',67,'a',NULL),(35,24,'<com.sound.adjustment.SoundSetting: void onCreate(android.os.Bundle)>',8,'s',NULL),(36,24,'<com.sound.adjustment.SoundSetting: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(37,24,'<com.sound.adjustment.SoundSetting: void onClick(android.view.View)>',59,'a',NULL),(38,26,'<com.quick.task.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(39,24,'<com.sound.adjustment.SoundSetting: void doPickRingtone(int)>',12,'a',NULL),(40,40,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(41,59,'<com.quick.task.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(42,26,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(43,26,'<com.quick.task.main: boolean onContextItemSelected(android.view.MenuItem)>',31,'a',NULL),(44,40,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',40,'s',NULL),(45,40,'<com.quick.task.Receiver: void onReceive(android.content.Context,android.content.Intent)>',32,'s',NULL),(46,26,'<com.quick.task.main: void onCreate(android.os.Bundle)>',10,'s',NULL),(47,45,'<com.bmdt.disciplined.mighty.core.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(48,18,'<com.bmdt.disciplined.apptosd.App2SdActivity: boolean onContextItemSelected(android.view.MenuItem)>',24,'a',NULL),(49,69,'<com.bmdt.disciplined.safescan.l: void onClick(android.content.DialogInterface,int)>',22,'a',NULL),(50,18,'<com.bmdt.disciplined.apptosd.App2SdActivity: void a(java.lang.String)>',30,'a',NULL),(51,8,'<com.bmdt.disciplined.AppSafeGuardActivity: void onClick(android.view.View)>',19,'a',NULL),(52,8,'<com.bmdt.disciplined.AppSafeGuardActivity: void onClick(android.view.View)>',11,'a',NULL),(53,18,'<com.bmdt.disciplined.apptosd.App2SdActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(54,22,'<com.bmdt.disciplined.safescan.SafeGuardActivity: void a(com.bmdt.disciplined.safescan.SafeGuardActivity,java.lang.String)>',30,'a',NULL),(55,11,'<com.bmdt.disciplined.uninstall.uninstallActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(56,72,'<com.bmdt.disciplined.mighty.a.g: java.net.HttpURLConnection d()>',40,'p',NULL),(57,12,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(58,69,'<com.bmdt.disciplined.safescan.l: void onClick(android.content.DialogInterface,int)>',41,'a',NULL),(59,11,'<com.bmdt.disciplined.uninstall.uninstallActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(60,8,'<com.bmdt.disciplined.AppSafeGuardActivity: void onCreate(android.os.Bundle)>',6,'s',NULL),(61,22,'<com.bmdt.disciplined.safescan.SafeGuardActivity: void a(com.bmdt.disciplined.safescan.SafeGuardActivity,java.lang.String)>',11,'a',NULL),(62,18,'<com.bmdt.disciplined.apptosd.App2SdActivity: boolean onContextItemSelected(android.view.MenuItem)>',35,'a',NULL),(63,10,'<com.bmdt.disciplined.install.installActivity: boolean onContextItemSelected(android.view.MenuItem)>',20,'a',NULL),(64,8,'<com.bmdt.disciplined.AppSafeGuardActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',26,'a',NULL),(65,22,'<com.bmdt.disciplined.safescan.SafeGuardActivity: void c(com.bmdt.disciplined.safescan.SafeGuardActivity,java.lang.String)>',6,'a',NULL),(66,69,'<com.bmdt.disciplined.safescan.l: void onClick(android.content.DialogInterface,int)>',59,'a',NULL),(67,22,'<com.bmdt.disciplined.safescan.SafeGuardActivity: void b(com.bmdt.disciplined.safescan.SafeGuardActivity,java.lang.String)>',10,'a',NULL),(68,18,'<com.bmdt.disciplined.apptosd.App2SdActivity: boolean onContextItemSelected(android.view.MenuItem)>',59,'a',NULL),(69,22,'<com.bmdt.disciplined.safescan.SafeGuardActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(70,11,'<com.bmdt.disciplined.uninstall.uninstallActivity: void f(com.bmdt.disciplined.uninstall.uninstallActivity)>',13,'a',NULL),(71,10,'<com.bmdt.disciplined.install.installActivity: boolean onContextItemSelected(android.view.MenuItem)>',76,'a',NULL),(72,23,'<com.bmdt.disciplined.safescan.TrustListActivity: void a(com.bmdt.disciplined.safescan.TrustListActivity,java.lang.String)>',6,'a',NULL),(73,8,'<com.bmdt.disciplined.AppSafeGuardActivity: void onClick(android.view.View)>',7,'a',NULL),(74,8,'<com.bmdt.disciplined.AppSafeGuardActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(75,18,'<com.bmdt.disciplined.apptosd.App2SdActivity: void a(java.lang.String)>',11,'a',NULL),(76,18,'<com.bmdt.disciplined.apptosd.App2SdActivity: boolean onContextItemSelected(android.view.MenuItem)>',14,'a',NULL),(77,8,'<com.bmdt.disciplined.AppSafeGuardActivity: void onClick(android.view.View)>',15,'a',NULL),(78,65,'<com.jinshou.jsinputmethod.MyActivity3: void ShareToKaixin()>',71,'a',NULL),(79,61,'<com.jinshou.jsinputmethod.MyActivity: com.jinshou.jsinputmethod.MyActivity$APNType getCurrentUsedAPNType()>',8,'p',NULL),(80,61,'<com.jinshou.jsinputmethod.MyActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',1351,'a',NULL),(81,73,'<com.jinshou.jsinputmethod.MyActivity$14: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(82,74,'<com.jinshou.jsinputmethod.MyActivity3$5: void onClick(android.view.View)>',33,'a',NULL),(83,61,'<com.jinshou.jsinputmethod.MyActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',153,'a',NULL),(84,61,'<com.jinshou.jsinputmethod.MyActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',219,'a',NULL),(85,61,'<com.jinshou.jsinputmethod.MyActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',1166,'a',NULL),(86,63,'<com.jinshou.jsinputmethod.MyActivity1: com.jinshou.jsinputmethod.MyActivity1$APNType getCurrentUsedAPNType()>',8,'p',NULL),(87,75,'<com.jinshou.jsinputmethod.MyActivity3$8: void onClick(android.view.View)>',33,'a',NULL),(88,65,'<com.jinshou.jsinputmethod.MyActivity3: com.jinshou.jsinputmethod.MyActivity3$APNType getCurrentUsedAPNType()>',8,'p',NULL),(89,61,'<com.jinshou.jsinputmethod.MyActivity: void StorePeople()>',10,'p',NULL),(90,68,'<com.jinshou.jsinputmethod.JSInputMethod: void InitFeel()>',29,'a',NULL),(91,71,'<com.coming.match.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(92,65,'<com.jinshou.jsinputmethod.MyActivity3: void ShareToQQZone()>',68,'a',NULL),(93,68,'<com.jinshou.jsinputmethod.JSInputMethod: void DrawAlpha(int)>',45,'a',NULL),(94,61,'<com.jinshou.jsinputmethod.MyActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',146,'a',NULL),(95,76,'<com.jinshou.jsinputmethod.MyActivity$1: void onClick(android.content.DialogInterface,int)>',11,'a',NULL),(96,62,'<com.jinshou.jsinputmethod.MyActivity4: void onCreate(android.os.Bundle)>',9,'a',NULL),(97,77,'<com.jinshou.jsinputmethod.HttpEngine: com.jinshou.jsinputmethod.HttpEngine$APNType getCurrentUsedAPNType()>',8,'p',NULL),(98,61,'<com.jinshou.jsinputmethod.MyActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',1195,'a',NULL),(99,78,'<com.jinshou.jsinputmethod.MyActivity5$1: void onClick(android.view.View)>',12,'a',NULL),(100,61,'<com.jinshou.jsinputmethod.MyActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',1320,'a',NULL),(101,62,'<com.jinshou.jsinputmethod.MyActivity4: void onCreate(android.os.Bundle)>',5,'s',NULL),(102,79,'<com.jinshou.jsinputmethod.MyActivity5$3: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(103,65,'<com.jinshou.jsinputmethod.MyActivity3: void ShareToRenren()>',69,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,9),(2,2,10),(3,3,10),(4,4,11),(5,5,11),(6,6,11),(7,7,11),(8,8,11),(9,9,11),(10,10,11),(11,11,11),(12,12,10),(13,13,10),(14,15,1),(15,16,10),(16,18,10),(17,23,12),(18,24,10),(19,25,12),(20,28,12),(21,29,12),(22,30,10),(23,31,10),(24,32,12),(25,33,12),(26,38,9),(27,41,15),(28,43,16),(29,45,1),(30,46,1),(31,47,18),(32,52,9),(33,53,9),(34,54,18),(35,62,9),(36,63,9),(37,64,12),(38,65,10),(39,66,12),(40,71,18),(41,72,10),(42,73,10),(43,74,10),(44,75,10),(45,76,1),(46,77,1),(47,78,10),(48,79,10),(49,80,11),(50,81,11),(51,82,11),(52,83,11),(53,84,11),(54,85,11),(55,86,11),(56,87,11),(57,89,11),(58,90,11),(59,91,11),(60,92,11),(61,93,11),(62,94,11),(63,95,11),(64,96,11),(65,97,11),(66,98,11),(67,99,11),(68,100,11),(69,101,11),(70,102,11),(71,103,11),(72,104,11),(73,105,1),(74,106,1),(75,108,11),(76,109,11),(77,110,11),(78,111,11),(79,112,11),(80,113,11),(81,114,11),(82,115,11),(83,116,18),(84,117,18),(85,118,1),(86,119,1),(87,120,1),(88,121,1),(89,123,10),(90,124,20),(91,125,10),(92,126,10),(93,127,10),(94,128,10),(95,129,10),(96,130,20),(97,131,10),(98,132,10),(99,133,20),(100,135,10),(101,136,20),(102,137,21),(103,138,10),(104,140,20),(105,141,10),(106,142,20),(107,144,10),(108,145,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,23,3),(2,24,3),(3,25,3),(4,28,3),(5,29,3),(6,30,3),(7,31,3),(8,32,3),(9,33,3),(10,45,1),(11,46,4),(12,64,3),(13,65,3),(14,66,3),(15,76,1),(16,77,4),(17,105,1),(18,106,4),(19,118,1),(20,119,4),(21,120,1),(22,121,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com.android.packageinstaller.UninstallerActivity'),(2,12,'com.android.packageinstaller.PackageInstallerActivity'),(3,13,'com.android.packageinstaller.PackageInstallerActivity'),(4,14,'com/passionteam/lightdd/CoreService'),(5,15,'NULL-CONSTANT'),(6,17,'com/passionteam/lightdd/CoreService'),(7,19,'com/coming/match/MeetService'),(8,20,'com/coming/match/MeetService'),(9,21,'com/info/eraser/smshistory/strategy/service/CelebrateService'),(10,22,'com/info/eraser/smshistory/strategy/service/CelebrateService'),(11,26,'com.android.settings.InstalledAppDetails'),(12,27,'com.android.settings.InstalledAppDetails'),(13,34,'com/quick/task/strategy/service/CelebrateService'),(14,35,'com/quick/task/KillService'),(15,36,'com/sound/adjustment/protact/DreamerService'),(16,37,'com/quick/task/Settings'),(17,39,'com/sound/adjustment/protact/DreamerService'),(18,40,'com/sound/adjustment/Setting'),(19,42,'com/quick/task/KillService'),(20,44,'com/quick/task/KillService'),(21,48,'com/quick/task/KillService'),(22,49,'com/quick/task/KillService'),(23,50,'com/quick/task/strategy/service/CelebrateService'),(24,51,'com/bmdt/disciplined/mighty/service/CustomService'),(25,55,'com.android.settings.InstalledAppDetails'),(26,56,'com.android.settings.InstalledAppDetails'),(27,57,'com/bmdt/disciplined/safescan/SafeGuardActivity'),(28,58,'com/bmdt/disciplined/uninstall/uninstallActivity'),(29,59,'com/bmdt/disciplined/apptosd/Preferences'),(30,60,'com.android.settings.InstalledAppDetails'),(31,61,'com.android.settings.InstalledAppDetails'),(32,67,'com.android.settings.InstalledAppDetails'),(33,68,'com.android.settings.InstalledAppDetails'),(34,69,'com/bmdt/disciplined/uninstall/Settings'),(35,70,'com/bmdt/disciplined/mighty/service/CustomService'),(36,88,'com/bmdt/disciplined/safescan/TrustListActivity'),(37,107,'com/bmdt/disciplined/install/installActivity'),(38,122,'com/bmdt/disciplined/apptosd/MainTab'),(39,124,'com.jinshou.jsinputmethod.MyActivity3'),(40,130,'com.jinshou.jsinputmethod.MyActivity3'),(41,133,'com.jinshou.jsinputmethod.MyActivity2'),(42,134,'com/coming/match/MeetService'),(43,136,'com.jinshou.jsinputmethod.MyActivity2'),(44,139,'com/jinshou/jsinputmethod/MyActivity'),(45,140,'com.jinshou.jsinputmethod.MyActivity1'),(46,142,'com.jinshou.jsinputmethod.MyActivity3'),(47,143,'com/coming/match/MeetService');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,3,3),(4,12,4),(5,13,5),(6,16,6),(7,18,7),(8,23,13),(9,24,14),(10,25,15),(11,28,16),(12,29,17),(13,30,18),(14,31,19),(15,32,20),(16,33,21),(17,38,23),(18,47,25),(19,52,26),(20,53,27),(21,54,28),(22,62,29),(23,63,30),(24,64,32),(25,65,33),(26,66,34),(27,71,35),(28,72,36),(29,73,37),(30,74,38),(31,75,39),(32,78,40),(33,79,41),(34,116,42),(35,117,43),(36,123,44),(37,125,46),(38,126,47),(39,127,48),(40,128,49),(41,129,50),(42,131,52),(43,132,53),(44,135,56),(45,137,57),(46,138,58),(47,141,60),(48,144,61),(49,145,62);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'android.intent.extra.INTENT'),(2,5,'android.intent.extra.INTENT'),(3,6,'android.intent.extra.TITLE'),(4,6,'android.intent.extra.INTENT'),(5,7,'android.intent.extra.INTENT'),(6,8,'android.intent.extra.TITLE'),(7,8,'android.intent.extra.INTENT'),(8,9,'android.intent.extra.INTENT'),(9,10,'android.intent.extra.TITLE'),(10,10,'android.intent.extra.INTENT'),(11,11,'android.intent.extra.TITLE'),(12,11,'android.intent.extra.INTENT'),(13,26,'com.android.settings.ApplicationPkgName'),(14,27,'pkg'),(15,35,'screen'),(16,43,'android.intent.extra.ringtone.TYPE'),(17,43,'android.intent.extra.ringtone.SHOW_DEFAULT'),(18,43,'android.intent.extra.ringtone.TITLE'),(19,43,'android.intent.extra.ringtone.SHOW_SILENT'),(20,43,'android.intent.extra.ringtone.DEFAULT_URI'),(21,43,'android.intent.extra.ringtone.EXISTING_URI'),(22,48,'screen'),(23,49,'screen'),(24,55,'com.android.settings.ApplicationPkgName'),(25,56,'pkg'),(26,60,'com.android.settings.ApplicationPkgName'),(27,61,'pkg'),(28,67,'com.android.settings.ApplicationPkgName'),(29,68,'pkg'),(30,80,'android.intent.extra.INTENT'),(31,81,'android.intent.extra.INTENT'),(32,82,'android.intent.extra.TITLE'),(33,82,'android.intent.extra.INTENT'),(34,83,'android.intent.extra.INTENT'),(35,84,'android.intent.extra.TITLE'),(36,84,'android.intent.extra.INTENT'),(37,85,'android.intent.extra.INTENT'),(38,86,'android.intent.extra.TITLE'),(39,86,'android.intent.extra.INTENT'),(40,87,'android.intent.extra.TITLE'),(41,87,'android.intent.extra.INTENT'),(42,89,'android.intent.extra.INTENT'),(43,90,'android.intent.extra.INTENT'),(44,91,'android.intent.extra.TITLE'),(45,91,'android.intent.extra.INTENT'),(46,92,'android.intent.extra.INTENT'),(47,93,'android.intent.extra.TITLE'),(48,93,'android.intent.extra.INTENT'),(49,94,'android.intent.extra.INTENT'),(50,95,'android.intent.extra.TITLE'),(51,95,'android.intent.extra.INTENT'),(52,96,'android.intent.extra.TITLE'),(53,96,'android.intent.extra.INTENT'),(54,97,'android.intent.extra.INTENT'),(55,98,'android.intent.extra.INTENT'),(56,99,'android.intent.extra.TITLE'),(57,99,'android.intent.extra.INTENT'),(58,100,'android.intent.extra.INTENT'),(59,101,'android.intent.extra.TITLE'),(60,101,'android.intent.extra.INTENT'),(61,102,'android.intent.extra.INTENT'),(62,103,'android.intent.extra.TITLE'),(63,103,'android.intent.extra.INTENT'),(64,104,'android.intent.extra.TITLE'),(65,104,'android.intent.extra.INTENT'),(66,108,'android.intent.extra.INTENT'),(67,109,'android.intent.extra.INTENT'),(68,110,'android.intent.extra.TITLE'),(69,110,'android.intent.extra.INTENT'),(70,111,'android.intent.extra.INTENT'),(71,112,'android.intent.extra.TITLE'),(72,112,'android.intent.extra.INTENT'),(73,113,'android.intent.extra.INTENT'),(74,114,'android.intent.extra.TITLE'),(75,114,'android.intent.extra.INTENT'),(76,115,'android.intent.extra.TITLE'),(77,115,'android.intent.extra.INTENT'),(78,137,'sms_body');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,2),(6,6,1),(7,7,1),(8,8,3),(9,9,1),(10,10,4),(11,11,5),(12,12,6),(13,13,6),(14,13,2),(15,14,6),(16,15,6),(17,16,2),(18,16,6),(19,17,7),(20,18,8),(21,19,5),(22,20,2),(23,20,6),(24,21,7),(25,22,6),(26,23,3),(27,24,4),(28,25,2),(29,25,6),(30,26,5),(31,27,5),(32,27,3),(33,28,13),(34,29,14),(35,30,17),(36,32,1),(37,33,19),(38,34,2);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,2),(6,6,1),(7,7,1),(8,9,1),(9,13,2),(10,16,2),(11,20,2),(12,25,2),(13,32,1),(14,33,2),(15,34,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,8,'package',NULL,NULL,NULL,NULL,NULL),(2,10,'package',NULL,NULL,NULL,NULL,NULL),(3,11,'package',NULL,NULL,NULL,NULL,NULL),(4,17,'package',NULL,NULL,NULL,NULL,NULL),(5,19,'package',NULL,NULL,NULL,NULL,NULL),(6,21,'package',NULL,NULL,NULL,NULL,NULL),(7,23,'package',NULL,NULL,NULL,NULL,NULL),(8,24,'package',NULL,NULL,NULL,NULL,NULL),(9,26,'package',NULL,NULL,NULL,NULL,NULL),(10,27,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,25,'(.*)','(.*)'),(2,32,'(.*)','(.*)'),(3,33,'(.*)','(.*)'),(4,66,'(.*)','(.*)'),(5,74,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.android.packageinstaller'),(2,12,'com.android.packageinstaller'),(3,13,'com.android.packageinstaller'),(4,14,'de.android_telefonie.super.appmanager'),(5,15,'NULL-CONSTANT'),(6,17,'de.android_telefonie.super.appmanager'),(7,19,'com.tuan.android'),(8,20,'com.tuan.android'),(9,21,'com.info.eraser.smshistory'),(10,22,'com.info.eraser.smshistory'),(11,26,'com.android.settings'),(12,27,'com.android.settings'),(13,34,'com.quick.task'),(14,35,'com.quick.task'),(15,36,'com.sound.adjustment'),(16,37,'com.quick.task'),(17,39,'com.sound.adjustment'),(18,40,'com.sound.adjustment'),(19,42,'com.quick.task'),(20,44,'com.quick.task'),(21,45,'(.*)'),(22,46,'(.*)'),(23,48,'com.quick.task'),(24,49,'com.quick.task'),(25,50,'com.quick.task'),(26,51,'com.bmdt.disciplined'),(27,55,'com.android.settings'),(28,56,'com.android.settings'),(29,57,'com.bmdt.disciplined'),(30,58,'com.bmdt.disciplined'),(31,59,'com.bmdt.disciplined'),(32,60,'com.android.settings'),(33,61,'com.android.settings'),(34,67,'com.android.settings'),(35,68,'com.android.settings'),(36,69,'com.bmdt.disciplined'),(37,70,'com.bmdt.disciplined'),(38,76,'NULL-CONSTANT'),(39,77,'NULL-CONSTANT'),(40,88,'com.bmdt.disciplined'),(41,105,'NULL-CONSTANT'),(42,106,'NULL-CONSTANT'),(43,107,'com.bmdt.disciplined'),(44,118,'(.*)'),(45,119,'(.*)'),(46,120,'NULL-CONSTANT'),(47,121,'NULL-CONSTANT'),(48,122,'com.bmdt.disciplined'),(49,124,'com.jinshou.jsinputmethod'),(50,130,'com.jinshou.jsinputmethod'),(51,133,'com.jinshou.jsinputmethod'),(52,134,'com.jinshou.jsinputmethod'),(53,136,'com.jinshou.jsinputmethod'),(54,139,'com.jinshou.jsinputmethod'),(55,140,'com.jinshou.jsinputmethod'),(56,142,'com.jinshou.jsinputmethod'),(57,143,'com.jinshou.jsinputmethod');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,8,0),(4,9,0),(5,21,0),(6,24,0),(7,26,0),(8,27,0),(9,29,0),(10,27,0),(11,27,0),(12,36,0),(13,39,0),(14,27,0),(15,40,0),(16,41,0),(17,27,0),(18,42,0),(19,43,0),(20,44,0),(21,43,0),(22,43,0),(23,43,0),(24,43,0),(25,45,0),(26,46,0),(27,47,0),(28,48,0),(29,40,0),(30,40,0),(31,50,0),(32,51,0),(33,57,0),(34,59,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,4,1,0),(4,5,1,0),(5,5,1,0),(6,5,1,0),(7,5,1,0),(8,5,1,0),(9,5,1,0),(10,5,1,0),(11,5,1,0),(12,6,0,0),(13,6,0,0),(14,7,0,0),(15,11,0,0),(16,12,1,0),(17,13,0,0),(18,14,1,0),(19,16,0,0),(20,17,0,0),(21,18,0,0),(22,20,0,0),(23,25,1,0),(24,25,1,0),(25,25,1,0),(26,26,0,0),(27,26,0,0),(28,27,1,0),(29,28,1,0),(30,27,1,0),(31,28,1,0),(32,27,1,0),(33,28,1,0),(34,29,0,0),(35,31,0,0),(36,32,0,0),(37,33,0,0),(38,34,1,0),(39,35,0,0),(40,36,0,0),(41,37,1,0),(42,38,0,0),(43,39,1,0),(44,40,0,0),(45,42,1,0),(46,42,1,0),(47,43,1,0),(48,44,0,0),(49,45,0,0),(50,46,0,0),(51,47,0,0),(52,48,1,0),(53,48,1,0),(54,49,1,0),(55,50,0,0),(56,50,0,0),(57,51,0,0),(58,52,0,0),(59,53,0,0),(60,54,0,0),(61,54,0,0),(62,55,1,0),(63,55,1,0),(64,57,1,0),(65,57,1,0),(66,57,1,0),(67,58,0,0),(68,58,0,0),(69,59,0,0),(70,60,0,0),(71,61,1,0),(72,62,1,0),(73,62,1,0),(74,63,1,0),(75,64,1,0),(76,65,1,0),(77,65,1,0),(78,66,1,0),(79,67,1,0),(80,68,1,0),(81,68,1,0),(82,68,1,0),(83,68,1,0),(84,68,1,0),(85,68,1,0),(86,68,1,0),(87,68,1,0),(88,69,0,0),(89,70,1,0),(90,70,1,0),(91,70,1,0),(92,70,1,0),(93,70,1,0),(94,70,1,0),(95,70,1,0),(96,70,1,0),(97,71,1,0),(98,71,1,0),(99,71,1,0),(100,71,1,0),(101,71,1,0),(102,71,1,0),(103,71,1,0),(104,71,1,0),(105,72,1,0),(106,72,1,0),(107,73,0,0),(108,74,1,0),(109,74,1,0),(110,74,1,0),(111,74,1,0),(112,74,1,0),(113,74,1,0),(114,74,1,0),(115,74,1,0),(116,75,1,0),(117,75,1,0),(118,76,1,0),(119,76,1,0),(120,76,1,0),(121,76,1,0),(122,77,0,0),(123,78,1,0),(124,80,0,0),(125,81,1,0),(126,82,1,0),(127,82,1,0),(128,83,1,0),(129,84,1,0),(130,85,0,0),(131,87,1,0),(132,87,1,0),(133,90,0,0),(134,91,0,0),(135,92,1,0),(136,93,0,0),(137,94,1,0),(138,95,1,0),(139,96,0,0),(140,98,0,0),(141,99,1,0),(142,100,0,0),(143,101,0,0),(144,102,1,0),(145,103,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_FINE_LOCATION'),(11,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(14,'android.permission.ACCESS_NETWORK_STATE'),(30,'android.permission.BIND_INPUT_METHOD'),(8,'android.permission.CALL_PHONE'),(10,'android.permission.CAMERA'),(18,'android.permission.CLEAR_APP_CACHE'),(16,'android.permission.DELETE_CACHE_FILES'),(22,'android.permission.GET_ACCOUNTS'),(17,'android.permission.GET_PACKAGE_SIZE'),(20,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(24,'android.permission.KILL_BACKGROUND_PROCESSES'),(9,'android.permission.MODIFY_AUDIO_SETTINGS'),(21,'android.permission.READ_CONTACTS'),(6,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(19,'android.permission.READ_SMS'),(15,'android.permission.RECEIVE_BOOT_COMPLETED'),(13,'android.permission.RECORD_AUDIO'),(23,'android.permission.RESTART_PACKAGES'),(5,'android.permission.SEND_SMS'),(4,'android.permission.VIBRATE'),(26,'android.permission.WRITE_CONTACTS'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(29,'android.permission.WRITE_SETTINGS'),(25,'android.permission.WRITE_SMS'),(28,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(27,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'http://market.android.com/details?id=de.android_telefonie.super.appmanager',NULL,NULL,NULL),(4,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'http://market.android.com/details?id=de.android_telefonie.super.appmanager',NULL,NULL,NULL),(7,NULL,NULL,'http://market.android.com/details?id=com.think_android.appmanagerpro',NULL,NULL,NULL),(8,NULL,NULL,'content://mms',NULL,NULL,NULL),(9,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(10,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(12,NULL,NULL,'content://sms',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(23,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(25,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(26,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(27,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(30,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'market://details?id=NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'market://details?id=(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'market://search?q=pub:Mobile Idea Studio',NULL,NULL,NULL),(40,NULL,NULL,'market://details?id=NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'market://details?id=NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'package:(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'http://open.t.qq.com/cgi-bin/authorize?oauth_token=(.*)',NULL,NULL,NULL),(48,NULL,NULL,'http://open.t.qq.com/cgi-bin/authorize?oauth_token=',NULL,NULL,NULL),(49,NULL,NULL,'http://wap.wap-z.com',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(52,NULL,NULL,'http://open.t.qq.com/cgi-bin/authorize?oauth_token=(.*)',NULL,NULL,NULL),(53,NULL,NULL,'http://open.t.qq.com/cgi-bin/authorize?oauth_token=',NULL,NULL,NULL),(54,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(55,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(56,NULL,NULL,'(.*)',NULL,NULL,NULL),(57,NULL,NULL,'smsto:',NULL,NULL,NULL),(58,NULL,NULL,'(.*)',NULL,NULL,NULL),(59,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'(.*)',NULL,NULL,NULL),(62,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,19,8),(2,21,9),(3,22,10),(4,23,11),(5,24,12),(6,30,22),(7,41,24),(8,56,31),(9,79,45),(10,86,51),(11,88,54),(12,89,55),(13,97,59);
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,3,17),(7,2,2),(8,3,16),(9,2,3),(10,3,1),(11,2,4),(12,3,2),(13,2,5),(14,3,18),(15,2,6),(16,3,3),(17,2,7),(18,3,4),(19,2,8),(20,3,14),(21,2,9),(22,3,15),(23,2,10),(24,2,11),(25,2,12),(26,2,13),(27,2,14),(28,4,1),(29,4,19),(30,4,3),(31,5,1),(32,5,2),(33,4,21),(34,6,1),(35,5,19),(36,4,20),(37,6,3),(38,5,3),(39,4,23),(40,6,29),(41,5,21),(42,4,22),(43,6,14),(44,4,24),(45,5,22),(46,6,15),(47,4,14),(48,5,25),(49,5,27),(50,4,15),(51,5,26),(52,5,28),(53,5,14),(54,5,15),(55,7,1),(56,7,19),(57,7,3),(58,7,21),(59,7,4),(60,7,20),(61,7,14);
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

-- Dump completed on 2015-10-09  0:41:13
