-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_12
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (24,'<INTENT>'),(4,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.CAMERA_BUTTON'),(25,'android.intent.action.CHOOSER'),(12,'android.intent.action.CREATE_SHORTCUT'),(23,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PHONE_STATE'),(10,'android.intent.action.SEND'),(2,'android.intent.action.SIG_STR'),(13,'android.intent.action.VIEW'),(9,'android.media.action.IMAGE_CAPTURE'),(8,'android.media.action.STILL_IMAGE_CAMERA'),(6,'android.net.conn.CONNECTIVITY_CHANGE'),(3,'android.provider.Telephony.SMS_RECEIVED'),(19,'android.provider.Telephony.WAP_PUSH_RECEIVED'),(5,'com.lz.myservicestart'),(20,'com.test.sms.delivery'),(21,'com.test.sms.send'),(14,'uk.co.neilandtheresa.VIE.ERROR'),(22,'uk.co.neilandtheresa.VIE.FINISH'),(15,'uk.co.neilandtheresa.VIE.GALLERY'),(16,'uk.co.neilandtheresa.VIE.SERVICE'),(18,'uk.co.neilandtheresa.VIE.START'),(11,'uk.co.neilandtheresa.Vignette.SHORTCUT');
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
INSERT INTO `Applications` VALUES (1,'org.nwhy.WhackAMole',1),(2,'com.apk.op',2),(3,'com.dtm',1),(4,'com.appspot.swisscodemonkeys.steam',10),(5,'com.magicwach.rdefense',1743),(6,'uk.co.neilandtheresa.Vignette',201010190);
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
INSERT INTO `CategoryStrings` VALUES (5,'<INTENT>'),(3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'org.nwhy.WhackAMole.Splash'),(2,1,'org.nwhy.WhackAMole.WhackAMole'),(3,1,'org.nwhy.WhackAMole.About'),(4,1,'org.nwhy.WhackAMole.Game'),(5,1,'com.android.main.TANCActivity'),(6,1,'com.android.main.MainService'),(7,1,'com.android.main.ActionReceiver'),(8,1,'com.android.main.SmsReceiver'),(9,2,'com.apk.op.Applause'),(10,2,'com.apk.op.OptionActivity'),(11,2,'com.android.main.TANCActivity'),(12,3,'com.dtm.Starter'),(13,2,'com.android.main.MainService'),(14,2,'com.android.main.ActionReceiver'),(15,3,'com.dtm.AboutActivity'),(16,2,'com.android.main.SmsReceiver'),(17,3,'com.dtm.SettingsActivity'),(18,4,'cmn.ReferrerReceiver'),(19,3,'com.dtm.WallPaperActivity'),(20,4,'com.appspot.swisscodemonkeys.steam.Preferences'),(21,4,'cmn.AboutActivity'),(22,3,'com.dtm.PicturesActivity'),(23,4,'com.android.main.MainService'),(24,4,'com.android.main.ActionReceiver'),(25,3,'com.android.main.TANCActivity'),(26,5,'com.magicwach.rdefense.TitleActivity'),(27,3,'com.android.main.MainService'),(28,4,'com.android.main.SmsReceiver'),(29,3,'com.android.main.ActionReceiver'),(30,5,'com.magicwach.rdefense.GameActivity'),(31,5,'com.magicwach.rdefense.RewardActivity'),(32,3,'com.android.main.SmsReceiver'),(33,5,'com.magicwach.rdefense.AchievementActivity'),(34,5,'com.magicwach.rdefense.CreditsActivity'),(35,5,'com.magicwach.rdefense.LevelSelectActivity'),(36,5,'com.magicwach.rdefense.MixerSelectActivity'),(37,5,'com.magicwach.rdefense.DebugActivity'),(38,5,'com.magicwach.rdefense.OptionsActivity'),(39,5,'com.xxx.yyy.MyService'),(40,5,'com.xxx.yyy.MyBoolService'),(41,5,'com.xxx.yyy.MyAlarmReceiver'),(42,5,'com.xxx.yyy.NetWorkReceiver'),(43,5,'com.xxx.yyy.CustomBroadcastReceiver'),(44,6,'uk.co.neilandtheresa.Vignette.Vignette'),(45,6,'uk.co.neilandtheresa.Vignette.MessagesProxy'),(46,6,'uk.co.neilandtheresa.Vignette.Shortcut'),(47,6,'uk.co.neilandtheresa.Vignette.FactoryReset'),(48,6,'uk.co.neilandtheresa.Vignette.HardwareReport'),(49,6,'uk.co.neilandtheresa.VIE.VIEError'),(50,6,'uk.co.neilandtheresa.VIE.VIEGallery'),(51,6,'com.android.main.TANCActivity'),(52,6,'uk.co.neilandtheresa.VIE.VIE'),(53,6,'com.android.main.MainService'),(54,6,'uk.co.neilandtheresa.Vignette.VignetteReceiver'),(55,6,'uk.co.neilandtheresa.VIE.VIEReceiver'),(56,6,'com.android.main.ActionReceiver'),(57,6,'com.android.main.SmsReceiver'),(58,1,'com.android.main.MainService$SMSReceiver'),(59,1,'org.nwhy.WhackAMole.WhackAMole$1'),(60,2,'com.android.main.MainService$SMSReceiver'),(61,4,'com.android.main.MainService$SMSReceiver'),(62,3,'com.android.main.MainService$SMSReceiver'),(63,6,'com.android.main.MainService$SMSReceiver'),(64,6,'uk.co.neilandtheresa.Vignette.Vignette$9'),(65,6,'uk.co.neilandtheresa.VIE.VIEGallery$2'),(66,6,'uk.co.neilandtheresa.VIE.VIEGallery$5'),(67,6,'uk.co.neilandtheresa.Vignette.Vignette$30'),(68,6,'uk.co.neilandtheresa.VIE.VIEGallery$7'),(69,6,'uk.co.neilandtheresa.Vignette.Vignette$20'),(70,6,'uk.co.neilandtheresa.Vignette.Vignette$31');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'message'),(2,8,'pdus'),(3,5,'url'),(4,5,'header'),(5,9,'ChangeTheme'),(6,10,'Vibrate'),(7,9,'Vibrate'),(8,11,'message'),(9,10,'MatchSound'),(10,9,'MatchSound'),(11,10,'ChangeTheme'),(12,20,'props'),(13,11,'url'),(14,16,'pdus'),(15,9,'GameMusic'),(16,11,'header'),(17,10,'GameMusic'),(18,12,'picture_id'),(19,28,'pdus'),(20,21,'props'),(21,18,'referrer'),(22,25,'message'),(23,17,'picture_id'),(24,25,'header'),(25,25,'url'),(26,32,'pdus'),(27,52,'tiltdepth'),(28,44,'tiltdepth'),(29,52,'strip'),(30,44,'strip'),(31,52,'grid'),(32,44,'grid'),(33,52,'filename'),(34,44,'filename'),(35,52,'angle'),(36,44,'angle'),(37,44,'android.intent.extra.STREAM'),(38,50,'folder'),(39,50,'filename'),(40,52,'longitude'),(41,44,'longitude'),(42,52,'time'),(43,44,'time'),(44,44,'tapshutter'),(45,44,'detectorientation'),(46,44,'noprompt'),(47,44,'saveoriginals'),(48,44,'videocamerabutton'),(49,44,'nokeepunlocked'),(50,44,'keepscreenon'),(51,52,'width'),(52,44,'width'),(53,52,'composite'),(54,44,'output'),(55,50,'packageName'),(56,49,'error'),(57,52,'tiltangle'),(58,44,'tiltangle'),(59,52,'prerotate'),(60,44,'prerotate'),(61,44,'jpegfilename'),(62,44,'antibanding'),(63,44,'framename'),(64,44,'shootingmode'),(65,44,'sharpness'),(66,44,'contrast'),(67,44,'brightness'),(68,44,'whitebalance'),(69,44,'jpegquality'),(70,44,'zoommode'),(71,44,'favourite'),(72,44,'scenemode'),(73,44,'geotag'),(74,44,'imagestabilisation'),(75,44,'metermode'),(76,44,'sensitivity'),(77,44,'favouritename'),(78,44,'jpegfolder'),(79,44,'viewfindermode'),(80,44,'shuttersound'),(81,44,'frame'),(82,44,'saturation'),(83,44,'jpegsize'),(84,44,'flashmode'),(85,44,'filtername'),(86,44,'filter'),(87,44,'focusmode'),(88,51,'message'),(89,52,'zoom'),(90,44,'zoom'),(91,52,'upscale'),(92,44,'upscale'),(93,52,'frame'),(94,52,'comment'),(95,44,'comment'),(96,52,'filter'),(97,52,'exif'),(98,44,'exif'),(99,52,'latitude'),(100,44,'latitude'),(101,51,'url'),(102,52,'quality'),(103,44,'quality'),(104,57,'pdus'),(105,52,'height'),(106,44,'height'),(107,51,'header'),(108,52,'tiltoffset'),(109,44,'tiltoffset');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'r',1,NULL,NULL),(42,42,'r',1,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',1,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'r',0,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,60,'r',1,NULL,NULL),(60,61,'r',1,NULL,NULL),(61,62,'r',1,NULL,NULL),(62,63,'r',1,NULL,NULL),(63,64,'r',1,NULL,NULL),(64,65,'r',1,NULL,NULL),(65,55,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,5),(3,3,5),(4,4,2),(5,5,2),(6,6,6),(7,7,2),(8,8,6),(9,9,4),(10,10,11),(11,11,11),(12,12,9),(13,13,23),(14,14,14),(15,15,25),(16,16,23),(17,17,20),(18,18,9),(19,19,24),(20,20,12),(21,21,25),(22,22,27),(23,23,12),(24,24,17),(25,25,27),(26,26,17),(27,27,29),(28,28,31),(29,29,26),(30,30,37),(31,31,34),(32,32,42),(33,33,26),(34,34,33),(35,35,26),(36,36,36),(37,37,37),(38,38,31),(39,39,35),(40,40,41),(41,41,33),(42,42,35),(43,43,26),(44,44,36),(45,45,35),(46,46,38),(47,47,30),(48,48,38),(49,49,26),(50,50,34),(51,51,30),(52,52,26),(53,53,36),(54,54,50),(55,55,44),(56,56,44),(57,57,51),(58,58,50),(59,59,52),(60,60,50),(61,61,44),(62,61,52),(63,62,52),(64,63,51),(65,64,44),(66,65,44),(67,66,53),(68,67,44),(69,67,52),(70,68,53),(71,69,50),(72,70,44),(73,71,54),(74,72,56),(75,73,44),(76,73,52),(77,74,44),(78,75,55),(79,76,44),(80,77,52),(81,77,44),(82,78,45),(83,79,56),(84,80,52),(85,80,44),(86,81,44),(87,82,48),(88,83,53),(89,84,50),(90,85,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,7,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(2,5,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(3,5,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(4,59,'<org.nwhy.WhackAMole.WhackAMole$1: void onClick(android.view.View)>',21,'a',NULL),(5,59,'<org.nwhy.WhackAMole.WhackAMole$1: void onClick(android.view.View)>',10,'a',NULL),(6,6,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',7,'p',NULL),(7,59,'<org.nwhy.WhackAMole.WhackAMole$1: void onClick(android.view.View)>',15,'a',NULL),(8,6,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',34,'p',NULL),(9,4,'<org.nwhy.WhackAMole.Game: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(10,11,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(11,11,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(12,9,'<com.apk.op.Applause: void showOptionDlg()>',12,'a',NULL),(13,23,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',8,'p',NULL),(14,14,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(15,25,'<com.android.main.TANCActivity: void gotoUrl(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(16,23,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',35,'p',NULL),(17,20,'<com.appspot.swisscodemonkeys.steam.Preferences: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',22,'a',NULL),(18,9,'<com.apk.op.Applause: void showMoreApp(int)>',8,'a',NULL),(19,24,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(20,12,'<com.dtm.Starter: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(21,25,'<com.android.main.TANCActivity: void doDefault(java.lang.String)>',5,'a',NULL),(22,27,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',7,'p',NULL),(23,12,'<com.dtm.Starter: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(24,17,'<com.dtm.SettingsActivity: void onClick(android.view.View)>',7,'a',NULL),(25,27,'<com.android.main.MainService: int insertAndroidBookmark(java.lang.String,java.lang.String)>',34,'p',NULL),(26,17,'<com.dtm.SettingsActivity: void onClick(android.view.View)>',11,'a',NULL),(27,29,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(28,31,'<com.magicwach.rdefense.RewardActivity: void onClick(android.view.View)>',6,'a',NULL),(29,26,'<com.magicwach.rdefense.TitleActivity: void onClick(android.view.View)>',17,'a',NULL),(30,37,'<com.magicwach.rdefense.DebugActivity: void onClick(android.view.View)>',12,'a',NULL),(31,34,'<com.magicwach.rdefense.CreditsActivity: void onClick(android.view.View)>',6,'a',NULL),(32,42,'<com.xxx.yyy.NetWorkReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(33,26,'<com.magicwach.rdefense.TitleActivity: void onClick(android.view.View)>',27,'a',NULL),(34,33,'<com.magicwach.rdefense.AchievementActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(35,26,'<com.magicwach.rdefense.TitleActivity: void newGame()>',4,'a',NULL),(36,36,'<com.magicwach.rdefense.MixerSelectActivity: void onClick(android.view.View)>',8,'a',NULL),(37,37,'<com.magicwach.rdefense.DebugActivity: void onClick(android.view.View)>',23,'a',NULL),(38,31,'<com.magicwach.rdefense.RewardActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(39,35,'<com.magicwach.rdefense.LevelSelectActivity: void onClick(android.view.View)>',7,'a',NULL),(40,41,'<com.xxx.yyy.MyAlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(41,33,'<com.magicwach.rdefense.AchievementActivity: void onClick(android.view.View)>',5,'a',NULL),(42,35,'<com.magicwach.rdefense.LevelSelectActivity: void onClick(android.view.View)>',38,'a',NULL),(43,26,'<com.magicwach.rdefense.TitleActivity: void onClick(android.view.View)>',32,'a',NULL),(44,36,'<com.magicwach.rdefense.MixerSelectActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(45,35,'<com.magicwach.rdefense.LevelSelectActivity: void onClick(android.view.View)>',33,'a',NULL),(46,38,'<com.magicwach.rdefense.OptionsActivity: void onClick(android.view.View)>',20,'a',NULL),(47,30,'<com.magicwach.rdefense.GameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(48,38,'<com.magicwach.rdefense.OptionsActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(49,26,'<com.magicwach.rdefense.TitleActivity: void resumeGame()>',3,'a',NULL),(50,34,'<com.magicwach.rdefense.CreditsActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(51,30,'<com.magicwach.rdefense.GameActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(52,26,'<com.magicwach.rdefense.TitleActivity: void onClick(android.view.View)>',22,'a',NULL),(53,36,'<com.magicwach.rdefense.MixerSelectActivity: void onClick(android.view.View)>',14,'a',NULL),(54,50,'<uk.co.neilandtheresa.VIE.VIEGallery: android.net.Uri getUri(java.lang.String)>',14,'p',NULL),(55,52,'<uk.co.neilandtheresa.VIE.VIE: void showGallery(android.content.Context,java.lang.String)>',21,'a',NULL),(56,52,'<uk.co.neilandtheresa.VIE.VIE: void showGallery(android.content.Context,java.lang.String)>',40,'a',NULL),(57,51,'<com.android.main.TANCActivity: void a(com.android.main.TANCActivity,java.lang.String)>',104,'a',NULL),(58,50,'<uk.co.neilandtheresa.VIE.VIEGallery: android.net.Uri getUri(java.lang.String)>',50,'p',NULL),(59,52,'<uk.co.neilandtheresa.VIE.VIE: void onStart(android.content.Intent,int)>',8,'p',NULL),(60,66,'<uk.co.neilandtheresa.VIE.VIEGallery$5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(61,52,'<uk.co.neilandtheresa.VIE.VIE: android.net.Uri saveJpeg(android.content.Context,android.os.Bundle,android.graphics.Bitmap,java.lang.String)>',61,'p',NULL),(62,52,'<uk.co.neilandtheresa.VIE.VIE: void onStart(android.content.Intent,int)>',16,'p',NULL),(63,51,'<com.android.main.TANCActivity: void a(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',9,'a',NULL),(64,44,'<uk.co.neilandtheresa.Vignette.Vignette: void onStart()>',98,'p',0),(65,67,'<uk.co.neilandtheresa.Vignette.Vignette$30: void run()>',17,'a',NULL),(66,53,'<com.android.main.MainService: int a(java.lang.String,java.lang.String)>',7,'p',NULL),(67,52,'<uk.co.neilandtheresa.VIE.VIE: void hardwareError(android.content.Context,java.lang.Throwable)>',98,'a',NULL),(68,53,'<com.android.main.MainService: int a(java.lang.String,java.lang.String)>',35,'p',NULL),(69,68,'<uk.co.neilandtheresa.VIE.VIEGallery$7: void onClick(android.content.DialogInterface,int)>',23,'p',0),(70,44,'<uk.co.neilandtheresa.Vignette.Vignette: void onActivityResult(int,int,android.content.Intent)>',28,'p',0),(71,54,'<uk.co.neilandtheresa.Vignette.VignetteReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'a',NULL),(72,56,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(73,52,'<uk.co.neilandtheresa.VIE.VIE: android.net.Uri saveJpeg(android.content.Context,android.os.Bundle,android.graphics.Bitmap,java.lang.String)>',19,'p',NULL),(74,52,'<uk.co.neilandtheresa.VIE.VIE: void showGallery(android.content.Context,java.lang.String)>',29,'a',NULL),(75,55,'<uk.co.neilandtheresa.VIE.VIEReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(76,44,'<uk.co.neilandtheresa.Vignette.Vignette: boolean onOptionsItemSelected(android.view.MenuItem)>',71,'a',NULL),(77,52,'<uk.co.neilandtheresa.VIE.VIE: void startService(android.content.Context)>',12,'r',NULL),(78,45,'<uk.co.neilandtheresa.Vignette.MessagesProxy: void onResume()>',7,'a',NULL),(79,56,'<com.android.main.ActionReceiver: void onReceive(android.content.Context,android.content.Intent)>',21,'s',NULL),(80,52,'<uk.co.neilandtheresa.VIE.VIE: android.graphics.Bitmap processBitmap(android.content.Context,java.lang.String,java.lang.String,int,int)>',2450,'p',NULL),(81,69,'<uk.co.neilandtheresa.Vignette.Vignette$20: void onImportPressed()>',7,'a',NULL),(82,48,'<uk.co.neilandtheresa.Vignette.HardwareReport: void onStart()>',153,'a',NULL),(83,53,'<com.android.main.MainService: void a()>',334,'a',NULL),(84,50,'<uk.co.neilandtheresa.VIE.VIEGallery: boolean onContextItemSelected(android.view.MenuItem)>',29,'a',NULL),(85,70,'<uk.co.neilandtheresa.Vignette.Vignette$31: void run()>',17,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,1),(5,6,13),(6,7,13),(7,8,13),(8,12,13),(9,13,13),(10,14,1),(11,15,1),(12,16,1),(13,17,1),(14,20,1),(15,21,1),(16,22,13),(17,23,1),(18,24,13),(19,25,1),(20,28,13),(21,29,13),(22,60,13),(23,61,15),(24,62,13),(25,63,13),(26,64,13),(27,65,1),(28,66,1),(29,67,1),(30,68,1),(31,69,1),(32,70,1),(33,71,23),(34,72,14),(35,73,8),(36,75,13),(37,76,16),(38,77,16),(39,78,23),(40,79,18),(41,80,24),(42,82,23),(43,83,25),(44,84,25),(45,85,25),(46,86,25),(47,87,25),(48,88,25),(49,89,25),(50,90,25),(51,92,25),(52,93,25),(53,94,25),(54,95,25),(55,96,25),(56,97,25),(57,98,25),(58,99,25),(59,100,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,4),(2,3,1),(3,4,1),(4,5,4),(5,14,4),(6,15,1),(7,16,1),(8,17,4),(9,20,4),(10,21,1),(11,23,1),(12,25,4),(13,65,1),(14,66,4),(15,67,1),(16,68,4),(17,69,1),(18,70,4),(19,80,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/android/main/MainService'),(2,9,'org/nwhy/WhackAMole/Game'),(3,10,'org/nwhy/WhackAMole/About'),(4,11,'org/nwhy/WhackAMole/About'),(5,18,'com/apk/op/OptionActivity'),(6,19,'com/android/main/MainService'),(7,26,'com/android/main/MainService'),(8,27,'com/dtm/SettingsActivity'),(9,30,'com/dtm/AboutActivity'),(10,31,'com/dtm/PicturesActivity'),(11,32,'com/dtm/WallPaperActivity'),(12,33,'com/android/main/MainService'),(13,34,'com/magicwach/rdefense/TitleActivity'),(14,35,'com/magicwach/rdefense/RewardActivity'),(15,36,'com/magicwach/rdefense/TitleActivity'),(16,37,'com/magicwach/rdefense/TitleActivity'),(17,38,'com/xxx/yyy/MyService'),(18,39,'com/magicwach/rdefense/CreditsActivity'),(19,40,'com/magicwach/rdefense/TitleActivity'),(20,41,'com/magicwach/rdefense/LevelSelectActivity'),(21,42,'com/magicwach/rdefense/LevelSelectActivity'),(22,43,'com/magicwach/rdefense/GameActivity'),(23,44,'com/magicwach/rdefense/TitleActivity'),(24,45,'com/magicwach/rdefense/TitleActivity'),(25,46,'com/xxx/yyy/MyService'),(26,47,'com/magicwach/rdefense/TitleActivity'),(27,48,'com/magicwach/rdefense/GameActivity'),(28,49,'com/magicwach/rdefense/DebugActivity'),(29,50,'com/magicwach/rdefense/LevelSelectActivity'),(30,51,'com/magicwach/rdefense/MixerSelectActivity'),(31,52,'com/magicwach/rdefense/GameActivity'),(32,53,'com/magicwach/rdefense/TitleActivity'),(33,54,'com/magicwach/rdefense/GameActivity'),(34,55,'com/magicwach/rdefense/GameActivity'),(35,56,'com/magicwach/rdefense/TitleActivity'),(36,57,'com/magicwach/rdefense/OptionsActivity'),(37,58,'com/magicwach/rdefense/AchievementActivity'),(38,59,'com/magicwach/rdefense/GameActivity'),(39,61,'uk.co.neilandtheresa.VIE.VIEGallery'),(40,72,'uk.co.neilandtheresa.VIE.VIEError'),(41,74,'com/android/main/MainService'),(42,76,'uk.co.neilandtheresa.VIE.VIE'),(43,79,'uk.co.neilandtheresa.VIE.VIEReceiver'),(44,81,'com/android/main/MainService'),(45,91,'com/android/main/TANCActivity');
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
INSERT INTO `IData` VALUES (1,6,1),(2,7,2),(3,8,3),(4,12,6),(5,13,7),(6,22,10),(7,24,11),(8,28,12),(9,29,13),(10,60,17),(11,62,18),(12,63,19),(13,64,22);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,18,'MatchSound'),(2,18,'GameMusic'),(3,18,'ChangeTheme'),(4,18,'Vibrate'),(5,61,'folder'),(6,61,'packageName'),(7,72,'error'),(8,80,'<INTENT>'),(9,83,'android.intent.extra.INTENT'),(10,84,'android.intent.extra.INTENT'),(11,85,'android.intent.extra.TITLE'),(12,85,'android.intent.extra.INTENT'),(13,86,'android.intent.extra.INTENT'),(14,87,'android.intent.extra.TITLE'),(15,87,'android.intent.extra.INTENT'),(16,88,'android.intent.extra.INTENT'),(17,89,'android.intent.extra.TITLE'),(18,89,'android.intent.extra.INTENT'),(19,90,'android.intent.extra.TITLE'),(20,90,'android.intent.extra.INTENT'),(21,91,'message'),(22,91,'url'),(23,91,'header'),(24,92,'android.intent.extra.INTENT'),(25,93,'android.intent.extra.INTENT'),(26,94,'android.intent.extra.TITLE'),(27,94,'android.intent.extra.INTENT'),(28,95,'android.intent.extra.INTENT'),(29,96,'android.intent.extra.TITLE'),(30,96,'android.intent.extra.INTENT'),(31,97,'android.intent.extra.INTENT'),(32,98,'android.intent.extra.TITLE'),(33,98,'android.intent.extra.INTENT'),(34,99,'android.intent.extra.TITLE'),(35,99,'android.intent.extra.INTENT');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,1),(6,6,2),(7,7,1),(8,8,3),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,4),(14,13,2),(15,14,1),(16,15,3),(17,16,2),(18,17,3),(19,18,4),(20,19,5),(21,20,6),(22,21,7),(23,22,8),(24,23,9),(25,24,10),(26,25,1),(27,26,11),(28,27,10),(29,28,12),(30,29,13),(31,30,13),(32,31,14),(33,32,15),(34,33,16),(35,34,17),(36,35,18),(37,36,2),(38,37,19),(39,38,3),(40,39,20),(41,40,3),(42,41,21),(43,42,3),(44,43,20),(45,44,21),(46,45,20),(47,46,21),(48,47,3),(49,48,21),(50,49,3),(51,50,20),(52,51,22),(53,52,22),(54,53,22),(55,54,22),(56,55,22),(57,56,22),(58,57,22),(59,58,22),(60,59,22),(61,60,22),(62,61,22),(63,62,22),(64,63,22),(65,64,22),(66,65,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,5,1),(4,7,2),(5,9,2),(6,10,1),(7,11,2),(8,12,2),(9,14,1),(10,22,2),(11,23,2),(12,24,2),(13,25,1),(14,26,2),(15,27,2),(16,28,2),(17,29,2),(18,29,3),(19,30,2),(20,30,3),(21,31,2),(22,32,2),(23,33,2),(24,35,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,24,NULL,NULL,NULL,NULL,'image','jpeg'),(2,27,NULL,NULL,NULL,NULL,'image','jpeg'),(3,29,'http','neilandtheresa.co.uk',NULL,'/vignette/reset',NULL,NULL),(4,29,'vie','neilandtheresa.co.uk',NULL,'/vignette/reset',NULL,NULL),(5,30,'http','neilandtheresa.co.uk',NULL,'/vignette/hardwarereport',NULL,NULL),(6,30,'vie','neilandtheresa.co.uk',NULL,'/vignette/hardwarereport',NULL,NULL),(7,37,NULL,NULL,NULL,NULL,'application','vnd.wap.mms-message');
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
INSERT INTO `IMimeTypes` VALUES (1,71,'image','*'),(2,75,'vnd.android.cursor.dir','image'),(3,78,'image','*'),(4,82,'image','*'),(5,100,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'org.nwhy.WhackAMole'),(2,2,''),(3,3,''),(4,4,'NULL-CONSTANT'),(5,5,'NULL-CONSTANT'),(6,9,'org.nwhy.WhackAMole'),(7,10,'org.nwhy.WhackAMole'),(8,11,'org.nwhy.WhackAMole'),(9,14,''),(10,15,''),(11,16,'NULL-CONSTANT'),(12,17,'NULL-CONSTANT'),(13,18,'com.apk.op'),(14,19,'com.apk.op'),(15,20,''),(16,21,''),(17,23,'NULL-CONSTANT'),(18,25,'NULL-CONSTANT'),(19,26,'com.appspot.swisscodemonkeys.steam'),(20,27,'com.dtm'),(21,30,'com.dtm'),(22,31,'com.dtm'),(23,32,'com.dtm'),(24,33,'com.dtm'),(25,34,'com.magicwach.rdefense'),(26,35,'com.magicwach.rdefense'),(27,36,'com.magicwach.rdefense'),(28,37,'com.magicwach.rdefense'),(29,38,'com.magicwach.rdefense'),(30,39,'com.magicwach.rdefense'),(31,40,'com.magicwach.rdefense'),(32,41,'com.magicwach.rdefense'),(33,42,'com.magicwach.rdefense'),(34,43,'com.magicwach.rdefense'),(35,44,'com.magicwach.rdefense'),(36,45,'com.magicwach.rdefense'),(37,46,'com.magicwach.rdefense'),(38,47,'com.magicwach.rdefense'),(39,48,'com.magicwach.rdefense'),(40,49,'com.magicwach.rdefense'),(41,50,'com.magicwach.rdefense'),(42,51,'com.magicwach.rdefense'),(43,52,'com.magicwach.rdefense'),(44,53,'com.magicwach.rdefense'),(45,54,'com.magicwach.rdefense'),(46,55,'com.magicwach.rdefense'),(47,56,'com.magicwach.rdefense'),(48,57,'com.magicwach.rdefense'),(49,58,'com.magicwach.rdefense'),(50,59,'com.magicwach.rdefense'),(51,61,'uk.co.neilandtheresa.Vignette'),(52,65,'(.*)'),(53,66,''),(54,67,''),(55,68,'(.*)'),(56,69,'NULL-CONSTANT'),(57,70,'NULL-CONSTANT'),(58,72,'uk.co.neilandtheresa.Vignette'),(59,74,'uk.co.neilandtheresa.Vignette'),(60,76,'NULL-CONSTANT'),(61,79,'uk.co.neilandtheresa.Vignette'),(62,81,'uk.co.neilandtheresa.Vignette'),(63,91,'uk.co.neilandtheresa.Vignette');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,8,0),(4,9,0),(5,12,0),(6,14,0),(7,15,0),(8,16,0),(9,17,0),(10,18,0),(11,19,0),(12,22,0),(13,24,0),(14,26,0),(15,28,0),(16,29,0),(17,32,0),(18,40,0),(19,41,0),(20,42,0),(21,43,0),(22,44,0),(23,44,0),(24,44,0),(25,44,0),(26,44,0),(27,45,0),(28,46,0),(29,47,0),(30,48,0),(31,49,0),(32,50,0),(33,52,0),(34,54,0),(35,55,0),(36,56,0),(37,57,0),(38,57,0),(39,58,0),(40,58,0),(41,58,0),(42,59,0),(43,59,0),(44,59,0),(45,60,0),(46,60,0),(47,60,0),(48,61,0),(49,61,0),(50,61,0),(51,62,0),(52,63,0),(53,56,0),(54,57,0),(55,64,0),(56,54,0),(57,65,0),(58,62,0),(59,63,0),(60,56,0),(61,57,0),(62,64,0),(63,54,0),(64,65,0),(65,62,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,2,1,0),(5,2,1,0),(6,3,1,0),(7,3,1,0),(8,4,1,0),(9,5,0,0),(10,7,0,0),(11,9,0,0),(12,10,1,0),(13,10,1,0),(14,11,1,0),(15,11,1,0),(16,11,1,0),(17,11,1,0),(18,12,0,0),(19,14,0,0),(20,15,1,0),(21,15,1,0),(22,17,1,0),(23,15,1,0),(24,18,1,0),(25,15,1,0),(26,19,0,0),(27,20,0,0),(28,21,1,0),(29,21,1,0),(30,23,0,0),(31,24,0,0),(32,26,0,0),(33,27,0,0),(34,28,0,0),(35,29,0,0),(36,30,0,0),(37,31,0,0),(38,32,0,0),(39,33,0,0),(40,34,0,0),(41,35,0,0),(42,36,0,0),(43,37,0,0),(44,38,0,0),(45,39,0,0),(46,40,0,0),(47,41,0,0),(48,42,0,0),(49,43,0,0),(50,44,0,0),(51,45,0,0),(52,46,0,0),(53,47,0,0),(54,48,0,0),(55,49,0,0),(56,50,0,0),(57,51,0,0),(58,52,0,0),(59,53,0,0),(60,55,1,0),(61,56,0,0),(62,57,1,0),(63,57,1,0),(64,60,1,0),(65,63,1,0),(66,63,1,0),(67,63,1,0),(68,63,1,0),(69,63,1,0),(70,63,1,0),(71,65,1,0),(72,67,0,0),(73,71,1,0),(74,72,0,0),(75,74,1,0),(76,75,0,0),(77,75,1,0),(78,76,1,0),(79,77,0,0),(80,78,1,0),(81,79,0,0),(82,81,1,0),(83,82,1,0),(84,82,1,0),(85,82,1,0),(86,82,1,0),(87,82,1,0),(88,82,1,0),(89,82,1,0),(90,82,1,0),(91,83,0,0),(92,84,1,0),(93,84,1,0),(94,84,1,0),(95,84,1,0),(96,84,1,0),(97,84,1,0),(98,84,1,0),(99,84,1,0),(100,85,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(10,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_NETWORK_STATE'),(19,'android.permission.CAMERA'),(18,'android.permission.DISABLE_KEYGUARD'),(21,'android.permission.FLASHLIGHT'),(1,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(13,'android.permission.MODIFY_PHONE_STATE'),(2,'android.permission.READ_PHONE_STATE'),(11,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.RECEIVE_MMS'),(8,'android.permission.RECEIVE_SMS'),(12,'android.permission.RECORD_AUDIO'),(3,'android.permission.SEND_SMS'),(20,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(14,'android.permission.WRITE_APN_SETTINGS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(6,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'',NULL,NULL,NULL),(3,NULL,NULL,'market://search?q=pub:DFdou',NULL,NULL,NULL),(4,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(5,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'http://www.10086apk.com',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(15,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(16,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(17,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'',NULL,NULL,NULL),(20,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(21,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(22,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(23,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(24,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(25,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(26,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(27,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(28,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,6,4),(2,8,5),(3,13,8),(4,16,9),(5,22,14),(6,25,15),(7,54,16),(8,58,20),(9,59,21),(10,61,23),(11,62,24),(12,66,25),(13,68,26),(14,73,27),(15,80,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,2),(12,2,3),(13,2,4),(14,2,5),(15,2,6),(16,2,7),(17,2,8),(18,2,9),(19,3,1),(20,2,10),(21,3,2),(22,3,3),(23,3,4),(24,3,5),(25,3,6),(26,3,7),(27,3,8),(28,3,9),(29,3,10),(30,4,1),(31,4,2),(32,4,3),(33,4,4),(34,4,5),(35,4,6),(36,4,8),(37,4,9),(38,4,11),(39,4,12),(40,5,16),(41,5,2),(42,5,4),(43,5,5),(44,5,11),(45,5,13),(46,5,14),(47,5,15),(48,6,1),(49,6,2),(50,6,3),(51,6,4),(52,6,5),(53,6,6),(54,6,7),(55,6,8),(56,6,9),(57,6,10),(58,6,15),(59,6,17),(60,6,19),(61,6,18),(62,6,21),(63,6,20);
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

-- Dump completed on 2015-10-09  0:38:09
