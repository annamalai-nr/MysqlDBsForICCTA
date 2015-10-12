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
) ENGINE=InnoDB AUTO_INCREMENT=1476 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,20,19,2,NULL),(2,22,37,2,NULL),(3,20,58,2,NULL),(4,108,29,2,NULL),(5,108,9,2,NULL),(6,109,29,2,NULL),(7,109,9,2,NULL),(8,110,29,2,NULL),(9,110,9,2,NULL),(10,111,29,2,NULL),(11,111,9,2,NULL),(12,112,29,2,NULL),(13,112,9,2,NULL),(14,113,29,2,NULL),(15,113,9,2,NULL),(16,114,29,2,NULL),(17,114,9,2,NULL),(18,115,29,2,NULL),(19,115,9,2,NULL),(20,97,29,2,NULL),(21,97,9,2,NULL),(22,98,29,2,NULL),(23,98,9,2,NULL),(24,99,29,2,NULL),(25,99,9,2,NULL),(26,100,29,2,NULL),(27,100,9,2,NULL),(28,101,29,2,NULL),(29,101,9,2,NULL),(30,102,29,2,NULL),(31,102,9,2,NULL),(32,103,29,2,NULL),(33,103,9,2,NULL),(34,104,29,2,NULL),(35,104,9,2,NULL),(36,62,29,2,NULL),(37,62,9,2,NULL),(38,63,29,2,NULL),(39,63,9,2,NULL),(40,89,29,2,NULL),(41,89,9,2,NULL),(42,90,29,2,NULL),(43,90,9,2,NULL),(44,91,29,2,NULL),(45,91,9,2,NULL),(46,92,29,2,NULL),(47,92,9,2,NULL),(48,93,29,2,NULL),(49,93,9,2,NULL),(50,94,29,2,NULL),(51,94,9,2,NULL),(52,95,29,2,NULL),(53,95,9,2,NULL),(54,96,29,2,NULL),(55,96,9,2,NULL),(56,64,29,2,NULL),(57,64,9,2,NULL),(58,65,29,2,NULL),(59,65,9,2,NULL),(60,52,29,2,NULL),(61,52,9,2,NULL),(62,53,29,2,NULL),(63,53,9,2,NULL),(64,80,29,2,NULL),(65,80,9,2,NULL),(66,81,29,2,NULL),(67,81,9,2,NULL),(68,82,29,2,NULL),(69,82,9,2,NULL),(70,83,29,2,NULL),(71,83,9,2,NULL),(72,84,29,2,NULL),(73,84,9,2,NULL),(74,85,29,2,NULL),(75,85,9,2,NULL),(76,86,29,2,NULL),(77,86,9,2,NULL),(78,87,29,2,NULL),(79,87,9,2,NULL),(80,116,29,2,NULL),(81,116,9,2,NULL),(82,117,29,2,NULL),(83,117,9,2,NULL),(84,118,29,2,NULL),(85,118,9,2,NULL),(86,119,29,2,NULL),(87,119,9,2,NULL),(88,120,29,2,NULL),(89,120,9,2,NULL),(90,121,29,2,NULL),(91,121,9,2,NULL),(92,71,29,2,NULL),(93,71,9,2,NULL),(94,76,29,2,NULL),(95,76,9,2,NULL),(96,77,29,2,NULL),(97,77,9,2,NULL),(98,105,29,2,NULL),(99,105,9,2,NULL),(100,106,29,2,NULL),(101,106,9,2,NULL),(102,38,29,2,NULL),(103,38,9,2,NULL),(104,45,29,2,NULL),(105,45,9,2,NULL),(106,46,29,2,NULL),(107,46,9,2,NULL),(108,47,29,2,NULL),(109,47,9,2,NULL),(110,28,29,2,NULL),(111,28,9,2,NULL),(112,30,29,2,NULL),(113,30,9,2,NULL),(114,23,29,2,NULL),(115,23,9,2,NULL),(116,24,29,2,NULL),(117,24,9,2,NULL),(118,41,29,2,NULL),(119,41,9,2,NULL),(120,43,29,2,NULL),(121,43,9,2,NULL),(122,29,29,2,NULL),(123,29,9,2,NULL),(124,31,29,2,NULL),(125,31,9,2,NULL),(126,129,29,2,NULL),(127,129,9,2,NULL),(128,137,29,2,NULL),(129,137,9,2,NULL),(130,123,29,2,NULL),(131,123,9,2,NULL),(132,135,29,2,NULL),(133,135,9,2,NULL),(134,145,29,2,NULL),(135,145,9,2,NULL),(136,23,1,2,NULL),(137,19,19,2,NULL),(138,24,1,2,NULL),(139,19,58,2,NULL),(140,23,7,2,NULL),(141,108,21,2,NULL),(142,24,7,2,NULL),(143,109,21,2,NULL),(144,23,21,2,NULL),(145,110,21,2,NULL),(146,24,21,2,NULL),(147,111,21,2,NULL),(148,23,8,2,NULL),(149,112,21,2,NULL),(150,24,8,2,NULL),(151,113,21,2,NULL),(152,23,27,2,NULL),(153,114,21,2,NULL),(154,24,27,2,NULL),(155,115,21,2,NULL),(156,23,43,2,NULL),(157,97,21,2,NULL),(158,24,43,2,NULL),(159,98,21,2,NULL),(160,23,45,2,NULL),(161,99,21,2,NULL),(162,24,45,2,NULL),(163,100,21,2,NULL),(164,23,26,2,NULL),(165,101,21,2,NULL),(166,24,26,2,NULL),(167,102,21,2,NULL),(168,23,40,2,NULL),(169,103,21,2,NULL),(170,24,40,2,NULL),(171,104,21,2,NULL),(172,23,42,2,NULL),(173,62,21,2,NULL),(174,24,42,2,NULL),(175,63,21,2,NULL),(176,23,44,2,NULL),(177,89,21,2,NULL),(178,24,44,2,NULL),(179,90,21,2,NULL),(180,23,39,2,NULL),(181,91,21,2,NULL),(182,24,39,2,NULL),(183,92,21,2,NULL),(184,23,24,2,NULL),(185,93,21,2,NULL),(186,24,24,2,NULL),(187,94,21,2,NULL),(188,23,36,2,NULL),(189,95,21,2,NULL),(190,24,36,2,NULL),(191,96,21,2,NULL),(192,23,41,2,NULL),(193,64,21,2,NULL),(194,24,41,2,NULL),(195,65,21,2,NULL),(196,23,48,2,NULL),(197,52,21,2,NULL),(198,24,48,2,NULL),(199,53,21,2,NULL),(200,23,50,2,NULL),(201,80,21,2,NULL),(202,24,50,2,NULL),(203,81,21,2,NULL),(204,23,51,2,NULL),(205,82,21,2,NULL),(206,24,51,2,NULL),(207,83,21,2,NULL),(208,23,57,2,NULL),(209,84,21,2,NULL),(210,24,57,2,NULL),(211,85,21,2,NULL),(212,23,59,2,NULL),(213,86,21,2,NULL),(214,24,59,2,NULL),(215,87,21,2,NULL),(216,21,37,2,NULL),(217,116,21,2,NULL),(218,108,39,2,NULL),(219,117,21,2,NULL),(220,109,39,2,NULL),(221,118,21,2,NULL),(222,110,39,2,NULL),(223,119,21,2,NULL),(224,111,39,2,NULL),(225,120,21,2,NULL),(226,112,39,2,NULL),(227,121,21,2,NULL),(228,113,39,2,NULL),(229,71,21,2,NULL),(230,114,39,2,NULL),(231,76,21,2,NULL),(232,115,39,2,NULL),(233,77,21,2,NULL),(234,97,39,2,NULL),(235,105,21,2,NULL),(236,98,39,2,NULL),(237,106,21,2,NULL),(238,99,39,2,NULL),(239,38,21,2,NULL),(240,100,39,2,NULL),(241,45,21,2,NULL),(242,101,39,2,NULL),(243,46,21,2,NULL),(244,102,39,2,NULL),(245,47,21,2,NULL),(246,103,39,2,NULL),(247,28,21,2,NULL),(248,104,39,2,NULL),(249,30,21,2,NULL),(250,62,39,2,NULL),(251,41,21,2,NULL),(252,63,39,2,NULL),(253,43,21,2,NULL),(254,89,39,2,NULL),(255,29,21,2,NULL),(256,14,6,2,NULL),(257,90,39,2,NULL),(258,31,21,2,NULL),(259,108,1,2,NULL),(260,91,39,2,NULL),(261,129,21,2,NULL),(262,92,39,2,NULL),(263,109,1,2,NULL),(264,137,21,2,NULL),(265,93,39,2,NULL),(266,110,1,2,NULL),(267,123,21,2,NULL),(268,94,39,2,NULL),(269,135,21,2,NULL),(270,111,1,2,NULL),(271,95,39,2,NULL),(272,145,21,2,NULL),(273,112,1,2,NULL),(274,96,39,2,NULL),(275,113,1,2,NULL),(276,64,39,2,NULL),(277,114,1,2,NULL),(278,65,39,2,NULL),(279,115,1,2,NULL),(280,52,39,2,NULL),(281,97,1,2,NULL),(282,53,39,2,NULL),(283,98,1,2,NULL),(284,80,39,2,NULL),(285,99,1,2,NULL),(286,81,39,2,NULL),(287,100,1,2,NULL),(288,82,39,2,NULL),(289,101,1,2,NULL),(290,83,39,2,NULL),(291,102,1,2,NULL),(292,84,39,2,NULL),(293,103,1,2,NULL),(294,85,39,2,NULL),(295,104,1,2,NULL),(296,86,39,2,NULL),(297,62,1,2,NULL),(298,87,39,2,NULL),(299,63,1,2,NULL),(300,116,39,2,NULL),(301,89,1,2,NULL),(302,117,39,2,NULL),(303,90,1,2,NULL),(304,118,39,2,NULL),(305,91,1,2,NULL),(306,119,39,2,NULL),(307,92,1,2,NULL),(308,120,39,2,NULL),(309,93,1,2,NULL),(310,121,39,2,NULL),(311,94,1,2,NULL),(312,71,39,2,NULL),(313,95,1,2,NULL),(314,76,39,2,NULL),(315,96,1,2,NULL),(316,77,39,2,NULL),(317,64,1,2,NULL),(318,105,39,2,NULL),(319,65,1,2,NULL),(320,106,39,2,NULL),(321,52,1,2,NULL),(322,38,39,2,NULL),(323,53,1,2,NULL),(324,45,39,2,NULL),(325,80,1,2,NULL),(326,46,39,2,NULL),(327,81,1,2,NULL),(328,47,39,2,NULL),(329,82,1,2,NULL),(330,28,39,2,NULL),(331,83,1,2,NULL),(332,30,39,2,NULL),(333,84,1,2,NULL),(334,41,39,2,NULL),(335,85,1,2,NULL),(336,43,39,2,NULL),(337,86,1,2,NULL),(338,29,39,2,NULL),(339,87,1,2,NULL),(340,31,39,2,NULL),(341,116,1,2,NULL),(342,129,39,2,NULL),(343,117,1,2,NULL),(344,137,39,2,NULL),(345,118,1,2,NULL),(346,123,39,2,NULL),(347,119,1,2,NULL),(348,135,39,2,NULL),(349,120,1,2,NULL),(350,145,39,2,NULL),(351,121,1,2,NULL),(352,71,1,2,NULL),(353,76,1,2,NULL),(354,77,1,2,NULL),(355,105,1,2,NULL),(356,106,1,2,NULL),(357,38,1,2,NULL),(358,45,1,2,NULL),(359,46,1,2,NULL),(360,47,1,2,NULL),(361,28,1,2,NULL),(362,30,1,2,NULL),(363,41,1,2,NULL),(364,43,1,2,NULL),(365,29,1,2,NULL),(366,31,1,2,NULL),(367,129,1,2,NULL),(368,137,1,2,NULL),(369,123,1,2,NULL),(370,135,1,2,NULL),(371,145,1,2,NULL),(372,17,6,2,NULL),(373,108,7,2,NULL),(374,109,7,2,NULL),(375,110,7,2,NULL),(376,111,7,2,NULL),(377,112,7,2,NULL),(378,113,7,2,NULL),(379,114,7,2,NULL),(380,115,7,2,NULL),(381,97,7,2,NULL),(382,98,7,2,NULL),(383,99,7,2,NULL),(384,100,7,2,NULL),(385,101,7,2,NULL),(386,102,7,2,NULL),(387,103,7,2,NULL),(388,104,7,2,NULL),(389,62,7,2,NULL),(390,63,7,2,NULL),(391,89,7,2,NULL),(392,90,7,2,NULL),(393,91,7,2,NULL),(394,92,7,2,NULL),(395,93,7,2,NULL),(396,94,7,2,NULL),(397,95,7,2,NULL),(398,96,7,2,NULL),(399,64,7,2,NULL),(400,65,7,2,NULL),(401,52,7,2,NULL),(402,53,7,2,NULL),(403,80,7,2,NULL),(404,81,7,2,NULL),(405,82,7,2,NULL),(406,83,7,2,NULL),(407,84,7,2,NULL),(408,85,7,2,NULL),(409,86,7,2,NULL),(410,87,7,2,NULL),(411,116,7,2,NULL),(412,117,7,2,NULL),(413,118,7,2,NULL),(414,119,7,2,NULL),(415,120,7,2,NULL),(416,121,7,2,NULL),(417,71,7,2,NULL),(418,76,7,2,NULL),(419,77,7,2,NULL),(420,105,7,2,NULL),(421,106,7,2,NULL),(422,38,7,2,NULL),(423,45,7,2,NULL),(424,46,7,2,NULL),(425,47,7,2,NULL),(426,28,7,2,NULL),(427,30,7,2,NULL),(428,41,7,2,NULL),(429,43,7,2,NULL),(430,29,7,2,NULL),(431,31,7,2,NULL),(432,129,7,2,NULL),(433,137,7,2,NULL),(434,123,7,2,NULL),(435,135,7,2,NULL),(436,145,7,2,NULL),(437,37,30,2,NULL),(438,42,35,2,NULL),(439,50,38,2,NULL),(440,38,8,2,NULL),(441,45,8,2,NULL),(442,46,8,2,NULL),(443,47,8,2,NULL),(444,108,26,2,NULL),(445,109,26,2,NULL),(446,110,26,2,NULL),(447,111,26,2,NULL),(448,112,26,2,NULL),(449,113,26,2,NULL),(450,114,26,2,NULL),(451,115,26,2,NULL),(452,97,26,2,NULL),(453,98,26,2,NULL),(454,99,26,2,NULL),(455,100,26,2,NULL),(456,101,26,2,NULL),(457,102,26,2,NULL),(458,103,26,2,NULL),(459,104,26,2,NULL),(460,62,26,2,NULL),(461,63,26,2,NULL),(462,89,26,2,NULL),(463,90,26,2,NULL),(464,91,26,2,NULL),(465,92,26,2,NULL),(466,93,26,2,NULL),(467,94,26,2,NULL),(468,95,26,2,NULL),(469,96,26,2,NULL),(470,64,26,2,NULL),(471,65,26,2,NULL),(472,52,26,2,NULL),(473,53,26,2,NULL),(474,80,26,2,NULL),(475,81,26,2,NULL),(476,82,26,2,NULL),(477,83,26,2,NULL),(478,84,26,2,NULL),(479,85,26,2,NULL),(480,86,26,2,NULL),(481,87,26,2,NULL),(482,116,26,2,NULL),(483,117,26,2,NULL),(484,118,26,2,NULL),(485,119,26,2,NULL),(486,120,26,2,NULL),(487,121,26,2,NULL),(488,71,26,2,NULL),(489,76,26,2,NULL),(490,77,26,2,NULL),(491,105,26,2,NULL),(492,106,26,2,NULL),(493,38,27,2,NULL),(494,45,27,2,NULL),(495,46,27,2,NULL),(496,47,27,2,NULL),(497,38,43,2,NULL),(498,45,43,2,NULL),(499,46,43,2,NULL),(500,47,43,2,NULL),(501,38,45,2,NULL),(502,45,45,2,NULL),(503,46,45,2,NULL),(504,47,45,2,NULL),(505,28,26,2,NULL),(506,30,26,2,NULL),(507,38,40,2,NULL),(508,45,40,2,NULL),(509,46,40,2,NULL),(510,47,40,2,NULL),(511,38,42,2,NULL),(512,45,42,2,NULL),(513,46,42,2,NULL),(514,47,42,2,NULL),(515,38,44,2,NULL),(516,45,44,2,NULL),(517,46,44,2,NULL),(518,47,44,2,NULL),(519,38,24,2,NULL),(520,45,24,2,NULL),(521,46,24,2,NULL),(522,47,24,2,NULL),(523,41,26,2,NULL),(524,43,26,2,NULL),(525,29,26,2,NULL),(526,31,26,2,NULL),(527,38,36,2,NULL),(528,45,36,2,NULL),(529,46,36,2,NULL),(530,47,36,2,NULL),(531,38,41,2,NULL),(532,45,41,2,NULL),(533,46,41,2,NULL),(534,47,41,2,NULL),(535,38,48,2,NULL),(536,45,48,2,NULL),(537,46,48,2,NULL),(538,47,48,2,NULL),(539,38,50,2,NULL),(540,45,50,2,NULL),(541,46,50,2,NULL),(542,47,50,2,NULL),(543,129,26,2,NULL),(544,137,26,2,NULL),(545,38,51,2,NULL),(546,45,51,2,NULL),(547,46,51,2,NULL),(548,47,51,2,NULL),(549,123,26,2,NULL),(550,135,26,2,NULL),(551,145,26,2,NULL),(552,38,57,2,NULL),(553,45,57,2,NULL),(554,46,57,2,NULL),(555,47,57,2,NULL),(556,38,59,2,NULL),(557,45,59,2,NULL),(558,46,59,2,NULL),(559,47,59,2,NULL),(560,28,8,2,NULL),(561,30,8,2,NULL),(562,28,27,2,NULL),(563,30,27,2,NULL),(564,28,43,2,NULL),(565,30,43,2,NULL),(566,28,45,2,NULL),(567,30,45,2,NULL),(568,28,40,2,NULL),(569,30,40,2,NULL),(570,28,42,2,NULL),(571,30,42,2,NULL),(572,28,44,2,NULL),(573,30,44,2,NULL),(574,28,24,2,NULL),(575,30,24,2,NULL),(576,28,36,2,NULL),(577,30,36,2,NULL),(578,28,41,2,NULL),(579,30,41,2,NULL),(580,28,48,2,NULL),(581,30,48,2,NULL),(582,28,50,2,NULL),(583,30,50,2,NULL),(584,28,51,2,NULL),(585,30,51,2,NULL),(586,28,57,2,NULL),(587,30,57,2,NULL),(588,28,59,2,NULL),(589,30,59,2,NULL),(590,35,35,2,NULL),(591,44,35,2,NULL),(592,48,35,2,NULL),(593,49,35,2,NULL),(594,108,40,2,NULL),(595,109,40,2,NULL),(596,110,40,2,NULL),(597,111,40,2,NULL),(598,112,40,2,NULL),(599,113,40,2,NULL),(600,114,40,2,NULL),(601,115,40,2,NULL),(602,97,40,2,NULL),(603,98,40,2,NULL),(604,99,40,2,NULL),(605,100,40,2,NULL),(606,101,40,2,NULL),(607,102,40,2,NULL),(608,103,40,2,NULL),(609,104,40,2,NULL),(610,62,40,2,NULL),(611,63,40,2,NULL),(612,89,40,2,NULL),(613,90,40,2,NULL),(614,91,40,2,NULL),(615,92,40,2,NULL),(616,93,40,2,NULL),(617,94,40,2,NULL),(618,95,40,2,NULL),(619,96,40,2,NULL),(620,64,40,2,NULL),(621,65,40,2,NULL),(622,52,40,2,NULL),(623,53,40,2,NULL),(624,80,40,2,NULL),(625,81,40,2,NULL),(626,82,40,2,NULL),(627,83,40,2,NULL),(628,84,40,2,NULL),(629,85,40,2,NULL),(630,86,40,2,NULL),(631,87,40,2,NULL),(632,116,40,2,NULL),(633,117,40,2,NULL),(634,118,40,2,NULL),(635,119,40,2,NULL),(636,120,40,2,NULL),(637,121,40,2,NULL),(638,71,40,2,NULL),(639,76,40,2,NULL),(640,77,40,2,NULL),(641,105,40,2,NULL),(642,106,40,2,NULL),(643,41,40,2,NULL),(644,43,40,2,NULL),(645,29,40,2,NULL),(646,31,40,2,NULL),(647,129,40,2,NULL),(648,137,40,2,NULL),(649,123,40,2,NULL),(650,135,40,2,NULL),(651,145,40,2,NULL),(652,108,42,2,NULL),(653,109,42,2,NULL),(654,110,42,2,NULL),(655,111,42,2,NULL),(656,112,42,2,NULL),(657,39,33,2,NULL),(658,113,42,2,NULL),(659,40,31,2,NULL),(660,114,42,2,NULL),(661,41,8,2,NULL),(662,115,42,2,NULL),(663,43,8,2,NULL),(664,97,42,2,NULL),(665,108,24,2,NULL),(666,98,42,2,NULL),(667,109,24,2,NULL),(668,99,42,2,NULL),(669,110,24,2,NULL),(670,100,42,2,NULL),(671,111,24,2,NULL),(672,101,42,2,NULL),(673,112,24,2,NULL),(674,102,42,2,NULL),(675,113,24,2,NULL),(676,103,42,2,NULL),(677,114,24,2,NULL),(678,104,42,2,NULL),(679,115,24,2,NULL),(680,62,42,2,NULL),(681,97,24,2,NULL),(682,63,42,2,NULL),(683,98,24,2,NULL),(684,89,42,2,NULL),(685,99,24,2,NULL),(686,90,42,2,NULL),(687,100,24,2,NULL),(688,91,42,2,NULL),(689,101,24,2,NULL),(690,92,42,2,NULL),(691,102,24,2,NULL),(692,93,42,2,NULL),(693,103,24,2,NULL),(694,94,42,2,NULL),(695,104,24,2,NULL),(696,95,42,2,NULL),(697,62,24,2,NULL),(698,96,42,2,NULL),(699,63,24,2,NULL),(700,64,42,2,NULL),(701,89,24,2,NULL),(702,65,42,2,NULL),(703,90,24,2,NULL),(704,52,42,2,NULL),(705,91,24,2,NULL),(706,53,42,2,NULL),(707,92,24,2,NULL),(708,80,42,2,NULL),(709,93,24,2,NULL),(710,81,42,2,NULL),(711,94,24,2,NULL),(712,82,42,2,NULL),(713,95,24,2,NULL),(714,83,42,2,NULL),(715,96,24,2,NULL),(716,84,42,2,NULL),(717,64,24,2,NULL),(718,85,42,2,NULL),(719,65,24,2,NULL),(720,86,42,2,NULL),(721,52,24,2,NULL),(722,87,42,2,NULL),(723,53,24,2,NULL),(724,116,42,2,NULL),(725,80,24,2,NULL),(726,117,42,2,NULL),(727,81,24,2,NULL),(728,118,42,2,NULL),(729,82,24,2,NULL),(730,119,42,2,NULL),(731,83,24,2,NULL),(732,120,42,2,NULL),(733,84,24,2,NULL),(734,121,42,2,NULL),(735,85,24,2,NULL),(736,71,42,2,NULL),(737,86,24,2,NULL),(738,76,42,2,NULL),(739,87,24,2,NULL),(740,77,42,2,NULL),(741,116,24,2,NULL),(742,105,42,2,NULL),(743,117,24,2,NULL),(744,106,42,2,NULL),(745,118,24,2,NULL),(746,41,42,2,NULL),(747,119,24,2,NULL),(748,43,42,2,NULL),(749,120,24,2,NULL),(750,29,42,2,NULL),(751,121,24,2,NULL),(752,31,42,2,NULL),(753,71,24,2,NULL),(754,129,42,2,NULL),(755,76,24,2,NULL),(756,137,42,2,NULL),(757,77,24,2,NULL),(758,123,42,2,NULL),(759,105,24,2,NULL),(760,135,42,2,NULL),(761,106,24,2,NULL),(762,145,42,2,NULL),(763,41,27,2,NULL),(764,34,38,2,NULL),(765,43,27,2,NULL),(766,108,44,2,NULL),(767,41,43,2,NULL),(768,109,44,2,NULL),(769,43,43,2,NULL),(770,110,44,2,NULL),(771,41,45,2,NULL),(772,111,44,2,NULL),(773,43,45,2,NULL),(774,112,44,2,NULL),(775,41,44,2,NULL),(776,113,44,2,NULL),(777,43,44,2,NULL),(778,114,44,2,NULL),(779,29,24,2,NULL),(780,124,54,2,NULL),(781,115,44,2,NULL),(782,31,24,2,NULL),(783,130,54,2,NULL),(784,97,44,2,NULL),(785,41,36,2,NULL),(786,140,52,2,NULL),(787,98,44,2,NULL),(788,43,36,2,NULL),(789,142,54,2,NULL),(790,99,44,2,NULL),(791,41,41,2,NULL),(792,100,44,2,NULL),(793,129,8,2,NULL),(794,43,41,2,NULL),(795,101,44,2,NULL),(796,137,8,2,NULL),(797,41,48,2,NULL),(798,102,44,2,NULL),(799,108,50,2,NULL),(800,43,48,2,NULL),(801,103,44,2,NULL),(802,41,50,2,NULL),(803,109,50,2,NULL),(804,104,44,2,NULL),(805,43,50,2,NULL),(806,110,50,2,NULL),(807,62,44,2,NULL),(808,129,24,2,NULL),(809,111,50,2,NULL),(810,63,44,2,NULL),(811,137,24,2,NULL),(812,112,50,2,NULL),(813,89,44,2,NULL),(814,41,51,2,NULL),(815,90,44,2,NULL),(816,113,50,2,NULL),(817,43,51,2,NULL),(818,91,44,2,NULL),(819,123,24,2,NULL),(820,114,50,2,NULL),(821,92,44,2,NULL),(822,135,24,2,NULL),(823,115,50,2,NULL),(824,93,44,2,NULL),(825,145,24,2,NULL),(826,97,50,2,NULL),(827,94,44,2,NULL),(828,41,57,2,NULL),(829,98,50,2,NULL),(830,95,44,2,NULL),(831,43,57,2,NULL),(832,96,44,2,NULL),(833,99,50,2,NULL),(834,41,59,2,NULL),(835,64,44,2,NULL),(836,100,50,2,NULL),(837,43,59,2,NULL),(838,65,44,2,NULL),(839,101,50,2,NULL),(840,29,8,2,NULL),(841,52,44,2,NULL),(842,102,50,2,NULL),(843,31,8,2,NULL),(844,53,44,2,NULL),(845,103,50,2,NULL),(846,29,27,2,NULL),(847,80,44,2,NULL),(848,104,50,2,NULL),(849,31,27,2,NULL),(850,81,44,2,NULL),(851,62,50,2,NULL),(852,29,43,2,NULL),(853,82,44,2,NULL),(854,63,50,2,NULL),(855,31,43,2,NULL),(856,83,44,2,NULL),(857,89,50,2,NULL),(858,29,45,2,NULL),(859,84,44,2,NULL),(860,90,50,2,NULL),(861,31,45,2,NULL),(862,85,44,2,NULL),(863,91,50,2,NULL),(864,29,44,2,NULL),(865,86,44,2,NULL),(866,92,50,2,NULL),(867,31,44,2,NULL),(868,87,44,2,NULL),(869,93,50,2,NULL),(870,29,36,2,NULL),(871,116,44,2,NULL),(872,94,50,2,NULL),(873,31,36,2,NULL),(874,117,44,2,NULL),(875,95,50,2,NULL),(876,29,41,2,NULL),(877,118,44,2,NULL),(878,96,50,2,NULL),(879,31,41,2,NULL),(880,119,44,2,NULL),(881,64,50,2,NULL),(882,29,48,2,NULL),(883,120,44,2,NULL),(884,65,50,2,NULL),(885,31,48,2,NULL),(886,121,44,2,NULL),(887,52,50,2,NULL),(888,29,50,2,NULL),(889,71,44,2,NULL),(890,53,50,2,NULL),(891,31,50,2,NULL),(892,76,44,2,NULL),(893,80,50,2,NULL),(894,29,51,2,NULL),(895,77,44,2,NULL),(896,81,50,2,NULL),(897,31,51,2,NULL),(898,82,50,2,NULL),(899,105,44,2,NULL),(900,29,57,2,NULL),(901,83,50,2,NULL),(902,106,44,2,NULL),(903,31,57,2,NULL),(904,84,50,2,NULL),(905,129,44,2,NULL),(906,29,59,2,NULL),(907,85,50,2,NULL),(908,137,44,2,NULL),(909,31,59,2,NULL),(910,86,50,2,NULL),(911,123,44,2,NULL),(912,108,36,2,NULL),(913,87,50,2,NULL),(914,135,44,2,NULL),(915,109,36,2,NULL),(916,116,50,2,NULL),(917,145,44,2,NULL),(918,110,36,2,NULL),(919,117,50,2,NULL),(920,111,36,2,NULL),(921,118,50,2,NULL),(922,112,36,2,NULL),(923,119,50,2,NULL),(924,113,36,2,NULL),(925,120,50,2,NULL),(926,114,36,2,NULL),(927,121,50,2,NULL),(928,115,36,2,NULL),(929,71,50,2,NULL),(930,97,36,2,NULL),(931,76,50,2,NULL),(932,98,36,2,NULL),(933,77,50,2,NULL),(934,99,36,2,NULL),(935,105,50,2,NULL),(936,100,36,2,NULL),(937,106,50,2,NULL),(938,101,36,2,NULL),(939,129,27,2,NULL),(940,102,36,2,NULL),(941,137,27,2,NULL),(942,103,36,2,NULL),(943,129,43,2,NULL),(944,104,36,2,NULL),(945,137,43,2,NULL),(946,62,36,2,NULL),(947,129,45,2,NULL),(948,63,36,2,NULL),(949,137,45,2,NULL),(950,89,36,2,NULL),(951,90,36,2,NULL),(952,129,36,2,NULL),(953,91,36,2,NULL),(954,137,36,2,NULL),(955,92,36,2,NULL),(956,129,41,2,NULL),(957,93,36,2,NULL),(958,137,41,2,NULL),(959,94,36,2,NULL),(960,129,48,2,NULL),(961,95,36,2,NULL),(962,137,48,2,NULL),(963,96,36,2,NULL),(964,129,51,2,NULL),(965,64,36,2,NULL),(966,137,51,2,NULL),(967,65,36,2,NULL),(968,123,50,2,NULL),(969,52,36,2,NULL),(970,135,50,2,NULL),(971,53,36,2,NULL),(972,145,50,2,NULL),(973,80,36,2,NULL),(974,129,57,2,NULL),(975,81,36,2,NULL),(976,137,57,2,NULL),(977,82,36,2,NULL),(978,129,59,2,NULL),(979,83,36,2,NULL),(980,137,59,2,NULL),(981,84,36,2,NULL),(982,139,50,2,NULL),(983,85,36,2,NULL),(984,143,19,2,NULL),(985,86,36,2,NULL),(986,87,36,2,NULL),(987,143,58,2,NULL),(988,116,36,2,NULL),(989,108,51,2,NULL),(990,117,36,2,NULL),(991,109,51,2,NULL),(992,118,36,2,NULL),(993,110,51,2,NULL),(994,119,36,2,NULL),(995,111,51,2,NULL),(996,120,36,2,NULL),(997,112,51,2,NULL),(998,121,36,2,NULL),(999,113,51,2,NULL),(1000,71,36,2,NULL),(1001,114,51,2,NULL),(1002,76,36,2,NULL),(1003,115,51,2,NULL),(1004,77,36,2,NULL),(1005,97,51,2,NULL),(1006,105,36,2,NULL),(1007,98,51,2,NULL),(1008,106,36,2,NULL),(1009,99,51,2,NULL),(1010,123,36,2,NULL),(1011,100,51,2,NULL),(1012,135,36,2,NULL),(1013,101,51,2,NULL),(1014,145,36,2,NULL),(1015,102,51,2,NULL),(1016,36,33,2,NULL),(1017,103,51,2,NULL),(1018,108,41,2,NULL),(1019,104,51,2,NULL),(1020,109,41,2,NULL),(1021,62,51,2,NULL),(1022,110,41,2,NULL),(1023,63,51,2,NULL),(1024,111,41,2,NULL),(1025,89,51,2,NULL),(1026,112,41,2,NULL),(1027,90,51,2,NULL),(1028,113,41,2,NULL),(1029,91,51,2,NULL),(1030,114,41,2,NULL),(1031,92,51,2,NULL),(1032,115,41,2,NULL),(1033,93,51,2,NULL),(1034,97,41,2,NULL),(1035,94,51,2,NULL),(1036,98,41,2,NULL),(1037,95,51,2,NULL),(1038,99,41,2,NULL),(1039,96,51,2,NULL),(1040,100,41,2,NULL),(1041,64,51,2,NULL),(1042,101,41,2,NULL),(1043,65,51,2,NULL),(1044,102,41,2,NULL),(1045,52,51,2,NULL),(1046,103,41,2,NULL),(1047,53,51,2,NULL),(1048,104,41,2,NULL),(1049,80,51,2,NULL),(1050,62,41,2,NULL),(1051,81,51,2,NULL),(1052,63,41,2,NULL),(1053,82,51,2,NULL),(1054,89,41,2,NULL),(1055,83,51,2,NULL),(1056,90,41,2,NULL),(1057,84,51,2,NULL),(1058,91,41,2,NULL),(1059,85,51,2,NULL),(1060,92,41,2,NULL),(1061,86,51,2,NULL),(1062,93,41,2,NULL),(1063,87,51,2,NULL),(1064,94,41,2,NULL),(1065,116,51,2,NULL),(1066,95,41,2,NULL),(1067,117,51,2,NULL),(1068,96,41,2,NULL),(1069,118,51,2,NULL),(1070,64,41,2,NULL),(1071,119,51,2,NULL),(1072,65,41,2,NULL),(1073,120,51,2,NULL),(1074,52,41,2,NULL),(1075,121,51,2,NULL),(1076,53,41,2,NULL),(1077,71,51,2,NULL),(1078,80,41,2,NULL),(1079,76,51,2,NULL),(1080,81,41,2,NULL),(1081,77,51,2,NULL),(1082,82,41,2,NULL),(1083,105,51,2,NULL),(1084,83,41,2,NULL),(1085,106,51,2,NULL),(1086,84,41,2,NULL),(1087,123,51,2,NULL),(1088,85,41,2,NULL),(1089,135,51,2,NULL),(1090,86,41,2,NULL),(1091,145,51,2,NULL),(1092,87,41,2,NULL),(1093,123,8,2,NULL),(1094,116,41,2,NULL),(1095,135,8,2,NULL),(1096,117,41,2,NULL),(1097,145,8,2,NULL),(1098,118,41,2,NULL),(1099,123,27,2,NULL),(1100,119,41,2,NULL),(1101,135,27,2,NULL),(1102,120,41,2,NULL),(1103,145,27,2,NULL),(1104,121,41,2,NULL),(1105,123,43,2,NULL),(1106,71,41,2,NULL),(1107,135,43,2,NULL),(1108,76,41,2,NULL),(1109,145,43,2,NULL),(1110,77,41,2,NULL),(1111,123,45,2,NULL),(1112,105,41,2,NULL),(1113,135,45,2,NULL),(1114,106,41,2,NULL),(1115,145,45,2,NULL),(1116,123,41,2,NULL),(1117,135,41,2,NULL),(1118,145,41,2,NULL),(1119,123,48,2,NULL),(1120,108,48,2,NULL),(1121,135,48,2,NULL),(1122,109,48,2,NULL),(1123,145,48,2,NULL),(1124,110,48,2,NULL),(1125,123,57,2,NULL),(1126,111,48,2,NULL),(1127,135,57,2,NULL),(1128,112,48,2,NULL),(1129,145,57,2,NULL),(1130,113,48,2,NULL),(1131,123,59,2,NULL),(1132,114,48,2,NULL),(1133,135,59,2,NULL),(1134,115,48,2,NULL),(1135,145,59,2,NULL),(1136,97,48,2,NULL),(1137,133,53,2,NULL),(1138,98,48,2,NULL),(1139,136,53,2,NULL),(1140,99,48,2,NULL),(1141,108,57,2,NULL),(1142,100,48,2,NULL),(1143,109,57,2,NULL),(1144,101,48,2,NULL),(1145,110,57,2,NULL),(1146,102,48,2,NULL),(1147,111,57,2,NULL),(1148,103,48,2,NULL),(1149,112,57,2,NULL),(1150,104,48,2,NULL),(1151,113,57,2,NULL),(1152,62,48,2,NULL),(1153,114,57,2,NULL),(1154,63,48,2,NULL),(1155,115,57,2,NULL),(1156,89,48,2,NULL),(1157,97,57,2,NULL),(1158,90,48,2,NULL),(1159,98,57,2,NULL),(1160,91,48,2,NULL),(1161,99,57,2,NULL),(1162,92,48,2,NULL),(1163,100,57,2,NULL),(1164,93,48,2,NULL),(1165,101,57,2,NULL),(1166,94,48,2,NULL),(1167,102,57,2,NULL),(1168,95,48,2,NULL),(1169,103,57,2,NULL),(1170,96,48,2,NULL),(1171,104,57,2,NULL),(1172,64,48,2,NULL),(1173,62,57,2,NULL),(1174,65,48,2,NULL),(1175,63,57,2,NULL),(1176,52,48,2,NULL),(1177,89,57,2,NULL),(1178,53,48,2,NULL),(1179,90,57,2,NULL),(1180,80,48,2,NULL),(1181,91,57,2,NULL),(1182,81,48,2,NULL),(1183,92,57,2,NULL),(1184,82,48,2,NULL),(1185,93,57,2,NULL),(1186,83,48,2,NULL),(1187,94,57,2,NULL),(1188,84,48,2,NULL),(1189,95,57,2,NULL),(1190,85,48,2,NULL),(1191,96,57,2,NULL),(1192,86,48,2,NULL),(1193,64,57,2,NULL),(1194,87,48,2,NULL),(1195,65,57,2,NULL),(1196,116,48,2,NULL),(1197,52,57,2,NULL),(1198,117,48,2,NULL),(1199,53,57,2,NULL),(1200,118,48,2,NULL),(1201,80,57,2,NULL),(1202,119,48,2,NULL),(1203,81,57,2,NULL),(1204,120,48,2,NULL),(1205,82,57,2,NULL),(1206,121,48,2,NULL),(1207,83,57,2,NULL),(1208,71,48,2,NULL),(1209,57,22,2,NULL),(1210,84,57,2,NULL),(1211,76,48,2,NULL),(1212,58,11,2,NULL),(1213,85,57,2,NULL),(1214,77,48,2,NULL),(1215,70,25,2,NULL),(1216,86,57,2,NULL),(1217,105,48,2,NULL),(1218,107,10,2,NULL),(1219,87,57,2,NULL),(1220,106,48,2,NULL),(1221,122,16,2,NULL),(1222,116,57,2,NULL),(1223,117,57,2,NULL),(1224,97,8,2,NULL),(1225,118,57,2,NULL),(1226,98,8,2,NULL),(1227,119,57,2,NULL),(1228,99,8,2,NULL),(1229,120,57,2,NULL),(1230,100,8,2,NULL),(1231,121,57,2,NULL),(1232,101,8,2,NULL),(1233,71,57,2,NULL),(1234,102,8,2,NULL),(1235,76,57,2,NULL),(1236,103,8,2,NULL),(1237,77,57,2,NULL),(1238,104,8,2,NULL),(1239,105,57,2,NULL),(1240,62,8,2,NULL),(1241,106,57,2,NULL),(1242,63,8,2,NULL),(1243,134,19,2,NULL),(1244,89,8,2,NULL),(1245,134,58,2,NULL),(1246,90,8,2,NULL),(1247,108,59,2,NULL),(1248,91,8,2,NULL),(1249,109,59,2,NULL),(1250,92,8,2,NULL),(1251,110,59,2,NULL),(1252,93,8,2,NULL),(1253,111,59,2,NULL),(1254,94,8,2,NULL),(1255,112,59,2,NULL),(1256,95,8,2,NULL),(1257,113,59,2,NULL),(1258,96,8,2,NULL),(1259,114,59,2,NULL),(1260,64,8,2,NULL),(1261,115,59,2,NULL),(1262,65,8,2,NULL),(1263,97,59,2,NULL),(1264,52,8,2,NULL),(1265,98,59,2,NULL),(1266,53,8,2,NULL),(1267,99,59,2,NULL),(1268,80,8,2,NULL),(1269,100,59,2,NULL),(1270,81,8,2,NULL),(1271,101,59,2,NULL),(1272,82,8,2,NULL),(1273,102,59,2,NULL),(1274,83,8,2,NULL),(1275,103,59,2,NULL),(1276,84,8,2,NULL),(1277,104,59,2,NULL),(1278,85,8,2,NULL),(1279,62,59,2,NULL),(1280,86,8,2,NULL),(1281,63,59,2,NULL),(1282,87,8,2,NULL),(1283,89,59,2,NULL),(1284,116,8,2,NULL),(1285,90,59,2,NULL),(1286,117,8,2,NULL),(1287,91,59,2,NULL),(1288,118,8,2,NULL),(1289,92,59,2,NULL),(1290,119,8,2,NULL),(1291,93,59,2,NULL),(1292,120,8,2,NULL),(1293,94,59,2,NULL),(1294,121,8,2,NULL),(1295,95,59,2,NULL),(1296,71,8,2,NULL),(1297,96,59,2,NULL),(1298,76,8,2,NULL),(1299,64,59,2,NULL),(1300,77,8,2,NULL),(1301,65,59,2,NULL),(1302,105,8,2,NULL),(1303,52,59,2,NULL),(1304,106,8,2,NULL),(1305,53,59,2,NULL),(1306,108,27,2,NULL),(1307,80,59,2,NULL),(1308,109,27,2,NULL),(1309,81,59,2,NULL),(1310,110,27,2,NULL),(1311,82,59,2,NULL),(1312,111,27,2,NULL),(1313,83,59,2,NULL),(1314,112,27,2,NULL),(1315,84,59,2,NULL),(1316,113,27,2,NULL),(1317,85,59,2,NULL),(1318,114,27,2,NULL),(1319,86,59,2,NULL),(1320,115,27,2,NULL),(1321,87,59,2,NULL),(1322,108,43,2,NULL),(1323,116,59,2,NULL),(1324,109,43,2,NULL),(1325,117,59,2,NULL),(1326,110,43,2,NULL),(1327,118,59,2,NULL),(1328,111,43,2,NULL),(1329,119,59,2,NULL),(1330,112,43,2,NULL),(1331,120,59,2,NULL),(1332,113,43,2,NULL),(1333,121,59,2,NULL),(1334,114,43,2,NULL),(1335,71,59,2,NULL),(1336,115,43,2,NULL),(1337,76,59,2,NULL),(1338,108,45,2,NULL),(1339,77,59,2,NULL),(1340,109,45,2,NULL),(1341,105,59,2,NULL),(1342,110,45,2,NULL),(1343,106,59,2,NULL),(1344,111,45,2,NULL),(1345,112,45,2,NULL),(1346,113,45,2,NULL),(1347,114,45,2,NULL),(1348,115,45,2,NULL),(1349,97,27,2,NULL),(1350,98,27,2,NULL),(1351,99,27,2,NULL),(1352,100,27,2,NULL),(1353,101,27,2,NULL),(1354,102,27,2,NULL),(1355,103,27,2,NULL),(1356,104,27,2,NULL),(1357,97,43,2,NULL),(1358,98,43,2,NULL),(1359,99,43,2,NULL),(1360,100,43,2,NULL),(1361,101,43,2,NULL),(1362,102,43,2,NULL),(1363,103,43,2,NULL),(1364,104,43,2,NULL),(1365,97,45,2,NULL),(1366,98,45,2,NULL),(1367,99,45,2,NULL),(1368,100,45,2,NULL),(1369,101,45,2,NULL),(1370,102,45,2,NULL),(1371,103,45,2,NULL),(1372,104,45,2,NULL),(1373,69,14,2,NULL),(1374,62,27,2,NULL),(1375,63,27,2,NULL),(1376,89,27,2,NULL),(1377,90,27,2,NULL),(1378,91,27,2,NULL),(1379,92,27,2,NULL),(1380,93,27,2,NULL),(1381,94,27,2,NULL),(1382,95,27,2,NULL),(1383,96,27,2,NULL),(1384,62,43,2,NULL),(1385,63,43,2,NULL),(1386,89,43,2,NULL),(1387,90,43,2,NULL),(1388,91,43,2,NULL),(1389,92,43,2,NULL),(1390,93,43,2,NULL),(1391,94,43,2,NULL),(1392,95,43,2,NULL),(1393,96,43,2,NULL),(1394,62,45,2,NULL),(1395,63,45,2,NULL),(1396,89,45,2,NULL),(1397,90,45,2,NULL),(1398,91,45,2,NULL),(1399,92,45,2,NULL),(1400,93,45,2,NULL),(1401,94,45,2,NULL),(1402,95,45,2,NULL),(1403,96,45,2,NULL),(1404,64,27,2,NULL),(1405,65,27,2,NULL),(1406,64,43,2,NULL),(1407,65,43,2,NULL),(1408,64,45,2,NULL),(1409,65,45,2,NULL),(1410,59,20,2,NULL),(1411,52,27,2,NULL),(1412,53,27,2,NULL),(1413,80,27,2,NULL),(1414,81,27,2,NULL),(1415,82,27,2,NULL),(1416,83,27,2,NULL),(1417,84,27,2,NULL),(1418,85,27,2,NULL),(1419,86,27,2,NULL),(1420,87,27,2,NULL),(1421,116,27,2,NULL),(1422,117,27,2,NULL),(1423,118,27,2,NULL),(1424,119,27,2,NULL),(1425,120,27,2,NULL),(1426,121,27,2,NULL),(1427,52,43,2,NULL),(1428,53,43,2,NULL),(1429,80,43,2,NULL),(1430,81,43,2,NULL),(1431,82,43,2,NULL),(1432,83,43,2,NULL),(1433,84,43,2,NULL),(1434,85,43,2,NULL),(1435,86,43,2,NULL),(1436,87,43,2,NULL),(1437,116,43,2,NULL),(1438,117,43,2,NULL),(1439,118,43,2,NULL),(1440,119,43,2,NULL),(1441,120,43,2,NULL),(1442,121,43,2,NULL),(1443,52,45,2,NULL),(1444,53,45,2,NULL),(1445,80,45,2,NULL),(1446,81,45,2,NULL),(1447,82,45,2,NULL),(1448,83,45,2,NULL),(1449,84,45,2,NULL),(1450,85,45,2,NULL),(1451,86,45,2,NULL),(1452,87,45,2,NULL),(1453,116,45,2,NULL),(1454,117,45,2,NULL),(1455,118,45,2,NULL),(1456,119,45,2,NULL),(1457,120,45,2,NULL),(1458,121,45,2,NULL),(1459,88,23,2,NULL),(1460,71,27,2,NULL),(1461,76,27,2,NULL),(1462,77,27,2,NULL),(1463,71,43,2,NULL),(1464,76,43,2,NULL),(1465,77,43,2,NULL),(1466,71,45,2,NULL),(1467,76,45,2,NULL),(1468,77,45,2,NULL),(1469,105,27,2,NULL),(1470,106,27,2,NULL),(1471,105,43,2,NULL),(1472,106,43,2,NULL),(1473,105,45,2,NULL),(1474,106,45,2,NULL),(1475,51,25,2,NULL);
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

-- Dump completed on 2015-10-12  3:31:48
