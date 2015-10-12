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
) ENGINE=InnoDB AUTO_INCREMENT=1809 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,18,10,2,NULL),(2,2,9,2,NULL),(3,3,9,2,NULL),(4,4,9,2,NULL),(5,5,9,2,NULL),(6,6,9,2,NULL),(7,7,9,2,NULL),(8,12,9,2,NULL),(9,13,9,2,NULL),(10,14,9,2,NULL),(11,15,9,2,NULL),(12,16,9,2,NULL),(13,17,9,2,NULL),(14,20,9,2,NULL),(15,21,9,2,NULL),(16,23,9,2,NULL),(17,25,9,2,NULL),(18,28,9,2,NULL),(19,29,9,2,NULL),(20,22,9,2,NULL),(21,80,9,2,NULL),(22,83,9,2,NULL),(23,84,9,2,NULL),(24,85,9,2,NULL),(25,86,9,2,NULL),(26,87,9,2,NULL),(27,88,9,2,NULL),(28,89,9,2,NULL),(29,90,9,2,NULL),(30,92,9,2,NULL),(31,93,9,2,NULL),(32,94,9,2,NULL),(33,95,9,2,NULL),(34,96,9,2,NULL),(35,97,9,2,NULL),(36,98,9,2,NULL),(37,99,9,2,NULL),(38,62,9,2,NULL),(39,63,9,2,NULL),(40,65,9,2,NULL),(41,66,9,2,NULL),(42,67,9,2,NULL),(43,68,9,2,NULL),(44,69,9,2,NULL),(45,70,9,2,NULL),(46,73,9,2,NULL),(47,77,9,2,NULL),(48,12,1,2,NULL),(49,13,1,2,NULL),(50,14,1,2,NULL),(51,15,1,2,NULL),(52,16,1,2,NULL),(53,17,1,2,NULL),(54,12,7,2,NULL),(55,13,7,2,NULL),(56,14,7,2,NULL),(57,15,7,2,NULL),(58,16,7,2,NULL),(59,17,7,2,NULL),(60,12,8,2,NULL),(61,13,8,2,NULL),(62,14,8,2,NULL),(63,15,8,2,NULL),(64,16,8,2,NULL),(65,17,8,2,NULL),(66,12,58,2,NULL),(67,13,58,2,NULL),(68,14,58,2,NULL),(69,15,58,2,NULL),(70,16,58,2,NULL),(71,17,58,2,NULL),(72,12,14,2,NULL),(73,13,14,2,NULL),(74,14,14,2,NULL),(75,15,14,2,NULL),(76,16,14,2,NULL),(77,17,14,2,NULL),(78,12,16,2,NULL),(79,13,16,2,NULL),(80,14,16,2,NULL),(81,15,16,2,NULL),(82,16,16,2,NULL),(83,17,16,2,NULL),(84,12,59,2,NULL),(85,13,59,2,NULL),(86,14,59,2,NULL),(87,15,59,2,NULL),(88,16,59,2,NULL),(89,17,59,2,NULL),(90,12,12,2,NULL),(91,13,12,2,NULL),(92,14,12,2,NULL),(93,15,12,2,NULL),(94,16,12,2,NULL),(95,17,12,2,NULL),(96,12,15,2,NULL),(97,13,15,2,NULL),(98,14,15,2,NULL),(99,15,15,2,NULL),(100,16,15,2,NULL),(101,17,15,2,NULL),(102,12,17,2,NULL),(103,13,17,2,NULL),(104,14,17,2,NULL),(105,15,17,2,NULL),(106,16,17,2,NULL),(107,17,17,2,NULL),(108,12,19,2,NULL),(109,13,19,2,NULL),(110,14,19,2,NULL),(111,15,19,2,NULL),(112,16,19,2,NULL),(113,17,19,2,NULL),(114,12,22,2,NULL),(115,13,22,2,NULL),(116,14,22,2,NULL),(117,15,22,2,NULL),(118,16,22,2,NULL),(119,17,22,2,NULL),(120,12,29,2,NULL),(121,13,29,2,NULL),(122,14,29,2,NULL),(123,15,29,2,NULL),(124,16,29,2,NULL),(125,17,29,2,NULL),(126,12,32,2,NULL),(127,13,32,2,NULL),(128,14,32,2,NULL),(129,15,32,2,NULL),(130,16,32,2,NULL),(131,17,32,2,NULL),(132,12,61,2,NULL),(133,13,61,2,NULL),(134,14,61,2,NULL),(135,15,61,2,NULL),(136,16,61,2,NULL),(137,17,61,2,NULL),(138,12,18,2,NULL),(139,13,18,2,NULL),(140,14,18,2,NULL),(141,15,18,2,NULL),(142,16,18,2,NULL),(143,17,18,2,NULL),(144,12,24,2,NULL),(145,13,24,2,NULL),(146,14,24,2,NULL),(147,15,24,2,NULL),(148,16,24,2,NULL),(149,17,24,2,NULL),(150,12,28,2,NULL),(151,13,28,2,NULL),(152,14,28,2,NULL),(153,15,28,2,NULL),(154,16,28,2,NULL),(155,17,28,2,NULL),(156,12,60,2,NULL),(157,13,60,2,NULL),(158,14,60,2,NULL),(159,15,60,2,NULL),(160,16,60,2,NULL),(161,17,60,2,NULL),(162,12,26,2,NULL),(163,13,26,2,NULL),(164,14,26,2,NULL),(165,15,26,2,NULL),(166,16,26,2,NULL),(167,17,26,2,NULL),(168,12,40,2,NULL),(169,13,40,2,NULL),(170,14,40,2,NULL),(171,15,40,2,NULL),(172,16,40,2,NULL),(173,17,40,2,NULL),(174,12,41,2,NULL),(175,13,41,2,NULL),(176,14,41,2,NULL),(177,15,41,2,NULL),(178,16,41,2,NULL),(179,17,41,2,NULL),(180,12,42,2,NULL),(181,13,42,2,NULL),(182,14,42,2,NULL),(183,15,42,2,NULL),(184,16,42,2,NULL),(185,17,42,2,NULL),(186,12,43,2,NULL),(187,13,43,2,NULL),(188,14,43,2,NULL),(189,15,43,2,NULL),(190,16,43,2,NULL),(191,17,43,2,NULL),(192,12,44,2,NULL),(193,13,44,2,NULL),(194,14,44,2,NULL),(195,15,44,2,NULL),(196,16,44,2,NULL),(197,17,44,2,NULL),(198,12,46,2,NULL),(199,13,46,2,NULL),(200,14,46,2,NULL),(201,15,46,2,NULL),(202,16,46,2,NULL),(203,17,46,2,NULL),(204,12,49,2,NULL),(205,13,49,2,NULL),(206,14,49,2,NULL),(207,15,49,2,NULL),(208,16,49,2,NULL),(209,17,49,2,NULL),(210,12,50,2,NULL),(211,13,50,2,NULL),(212,14,50,2,NULL),(213,15,50,2,NULL),(214,16,50,2,NULL),(215,17,50,2,NULL),(216,12,52,2,NULL),(217,13,52,2,NULL),(218,14,52,2,NULL),(219,15,52,2,NULL),(220,16,52,2,NULL),(221,17,52,2,NULL),(222,12,54,2,NULL),(223,13,54,2,NULL),(224,14,54,2,NULL),(225,15,54,2,NULL),(226,16,54,2,NULL),(227,17,54,2,NULL),(228,12,55,2,NULL),(229,13,55,2,NULL),(230,14,55,2,NULL),(231,15,55,2,NULL),(232,16,55,2,NULL),(233,17,55,2,NULL),(234,12,65,2,NULL),(235,13,65,2,NULL),(236,14,65,2,NULL),(237,15,65,2,NULL),(238,16,65,2,NULL),(239,17,65,2,NULL),(240,12,56,2,NULL),(241,13,56,2,NULL),(242,14,56,2,NULL),(243,15,56,2,NULL),(244,16,56,2,NULL),(245,17,56,2,NULL),(246,12,57,2,NULL),(247,13,57,2,NULL),(248,14,57,2,NULL),(249,15,57,2,NULL),(250,16,57,2,NULL),(251,17,57,2,NULL),(252,12,62,2,NULL),(253,13,62,2,NULL),(254,14,62,2,NULL),(255,15,62,2,NULL),(256,16,62,2,NULL),(257,17,62,2,NULL),(258,12,63,2,NULL),(259,13,63,2,NULL),(260,14,63,2,NULL),(261,15,63,2,NULL),(262,16,63,2,NULL),(263,17,63,2,NULL),(264,12,64,2,NULL),(265,13,64,2,NULL),(266,14,64,2,NULL),(267,15,64,2,NULL),(268,16,64,2,NULL),(269,17,64,2,NULL),(270,19,6,2,NULL),(271,19,13,2,NULL),(272,19,23,2,NULL),(273,19,27,2,NULL),(274,19,53,2,NULL),(275,2,14,2,NULL),(276,3,14,2,NULL),(277,4,14,2,NULL),(278,5,14,2,NULL),(279,6,14,2,NULL),(280,7,14,2,NULL),(281,20,14,2,NULL),(282,21,14,2,NULL),(283,23,14,2,NULL),(284,25,14,2,NULL),(285,28,14,2,NULL),(286,29,14,2,NULL),(287,22,14,2,NULL),(288,80,14,2,NULL),(289,83,14,2,NULL),(290,84,14,2,NULL),(291,85,14,2,NULL),(292,86,14,2,NULL),(293,87,14,2,NULL),(294,88,14,2,NULL),(295,89,14,2,NULL),(296,90,14,2,NULL),(297,92,14,2,NULL),(298,93,14,2,NULL),(299,94,14,2,NULL),(300,95,14,2,NULL),(301,96,14,2,NULL),(302,97,14,2,NULL),(303,98,14,2,NULL),(304,99,14,2,NULL),(305,62,14,2,NULL),(306,63,14,2,NULL),(307,65,14,2,NULL),(308,66,14,2,NULL),(309,67,14,2,NULL),(310,68,14,2,NULL),(311,69,14,2,NULL),(312,70,14,2,NULL),(313,73,14,2,NULL),(314,77,14,2,NULL),(315,2,16,2,NULL),(316,3,16,2,NULL),(317,4,16,2,NULL),(318,5,16,2,NULL),(319,6,16,2,NULL),(320,7,16,2,NULL),(321,20,16,2,NULL),(322,21,16,2,NULL),(323,23,16,2,NULL),(324,25,16,2,NULL),(325,28,16,2,NULL),(326,29,16,2,NULL),(327,22,16,2,NULL),(328,80,16,2,NULL),(329,83,16,2,NULL),(330,84,16,2,NULL),(331,85,16,2,NULL),(332,86,16,2,NULL),(333,87,16,2,NULL),(334,88,16,2,NULL),(335,89,16,2,NULL),(336,90,16,2,NULL),(337,92,16,2,NULL),(338,93,16,2,NULL),(339,94,16,2,NULL),(340,95,16,2,NULL),(341,96,16,2,NULL),(342,97,16,2,NULL),(343,98,16,2,NULL),(344,99,16,2,NULL),(345,62,16,2,NULL),(346,63,16,2,NULL),(347,65,16,2,NULL),(348,66,16,2,NULL),(349,67,16,2,NULL),(350,68,16,2,NULL),(351,69,16,2,NULL),(352,70,16,2,NULL),(353,73,16,2,NULL),(354,77,16,2,NULL),(355,2,59,2,NULL),(356,3,59,2,NULL),(357,4,59,2,NULL),(358,5,59,2,NULL),(359,6,59,2,NULL),(360,7,59,2,NULL),(361,20,59,2,NULL),(362,21,59,2,NULL),(363,23,59,2,NULL),(364,25,59,2,NULL),(365,28,59,2,NULL),(366,29,59,2,NULL),(367,22,59,2,NULL),(368,80,59,2,NULL),(369,83,59,2,NULL),(370,84,59,2,NULL),(371,85,59,2,NULL),(372,86,59,2,NULL),(373,87,59,2,NULL),(374,88,59,2,NULL),(375,89,59,2,NULL),(376,90,59,2,NULL),(377,92,59,2,NULL),(378,93,59,2,NULL),(379,94,59,2,NULL),(380,95,59,2,NULL),(381,96,59,2,NULL),(382,97,59,2,NULL),(383,98,59,2,NULL),(384,99,59,2,NULL),(385,62,59,2,NULL),(386,63,59,2,NULL),(387,65,59,2,NULL),(388,66,59,2,NULL),(389,67,59,2,NULL),(390,68,59,2,NULL),(391,69,59,2,NULL),(392,70,59,2,NULL),(393,73,59,2,NULL),(394,77,59,2,NULL),(395,2,1,2,NULL),(396,3,1,2,NULL),(397,4,1,2,NULL),(398,5,1,2,NULL),(399,6,1,2,NULL),(400,7,1,2,NULL),(401,20,1,2,NULL),(402,21,1,2,NULL),(403,23,1,2,NULL),(404,25,1,2,NULL),(405,28,1,2,NULL),(406,29,1,2,NULL),(407,22,1,2,NULL),(408,80,1,2,NULL),(409,83,1,2,NULL),(410,84,1,2,NULL),(411,85,1,2,NULL),(412,86,1,2,NULL),(413,87,1,2,NULL),(414,88,1,2,NULL),(415,89,1,2,NULL),(416,90,1,2,NULL),(417,92,1,2,NULL),(418,93,1,2,NULL),(419,94,1,2,NULL),(420,95,1,2,NULL),(421,96,1,2,NULL),(422,97,1,2,NULL),(423,98,1,2,NULL),(424,99,1,2,NULL),(425,62,1,2,NULL),(426,63,1,2,NULL),(427,65,1,2,NULL),(428,66,1,2,NULL),(429,67,1,2,NULL),(430,68,1,2,NULL),(431,69,1,2,NULL),(432,70,1,2,NULL),(433,73,1,2,NULL),(434,77,1,2,NULL),(435,11,3,2,NULL),(436,2,7,2,NULL),(437,3,7,2,NULL),(438,4,7,2,NULL),(439,5,7,2,NULL),(440,6,7,2,NULL),(441,7,7,2,NULL),(442,2,8,2,NULL),(443,3,8,2,NULL),(444,4,8,2,NULL),(445,5,8,2,NULL),(446,6,8,2,NULL),(447,7,8,2,NULL),(448,2,58,2,NULL),(449,3,58,2,NULL),(450,4,58,2,NULL),(451,5,58,2,NULL),(452,6,58,2,NULL),(453,7,58,2,NULL),(454,2,12,2,NULL),(455,3,12,2,NULL),(456,4,12,2,NULL),(457,5,12,2,NULL),(458,6,12,2,NULL),(459,7,12,2,NULL),(460,2,15,2,NULL),(461,3,15,2,NULL),(462,4,15,2,NULL),(463,5,15,2,NULL),(464,6,15,2,NULL),(465,7,15,2,NULL),(466,2,17,2,NULL),(467,3,17,2,NULL),(468,4,17,2,NULL),(469,5,17,2,NULL),(470,6,17,2,NULL),(471,7,17,2,NULL),(472,2,19,2,NULL),(473,3,19,2,NULL),(474,4,19,2,NULL),(475,5,19,2,NULL),(476,6,19,2,NULL),(477,7,19,2,NULL),(478,2,22,2,NULL),(479,3,22,2,NULL),(480,4,22,2,NULL),(481,5,22,2,NULL),(482,6,22,2,NULL),(483,7,22,2,NULL),(484,2,29,2,NULL),(485,3,29,2,NULL),(486,4,29,2,NULL),(487,5,29,2,NULL),(488,6,29,2,NULL),(489,7,29,2,NULL),(490,2,32,2,NULL),(491,3,32,2,NULL),(492,4,32,2,NULL),(493,5,32,2,NULL),(494,6,32,2,NULL),(495,7,32,2,NULL),(496,2,61,2,NULL),(497,3,61,2,NULL),(498,4,61,2,NULL),(499,5,61,2,NULL),(500,6,61,2,NULL),(501,7,61,2,NULL),(502,2,18,2,NULL),(503,3,18,2,NULL),(504,4,18,2,NULL),(505,5,18,2,NULL),(506,6,18,2,NULL),(507,7,18,2,NULL),(508,2,24,2,NULL),(509,3,24,2,NULL),(510,4,24,2,NULL),(511,5,24,2,NULL),(512,6,24,2,NULL),(513,7,24,2,NULL),(514,2,28,2,NULL),(515,3,28,2,NULL),(516,4,28,2,NULL),(517,5,28,2,NULL),(518,6,28,2,NULL),(519,7,28,2,NULL),(520,2,60,2,NULL),(521,3,60,2,NULL),(522,4,60,2,NULL),(523,5,60,2,NULL),(524,6,60,2,NULL),(525,7,60,2,NULL),(526,2,26,2,NULL),(527,3,26,2,NULL),(528,4,26,2,NULL),(529,5,26,2,NULL),(530,6,26,2,NULL),(531,7,26,2,NULL),(532,2,40,2,NULL),(533,3,40,2,NULL),(534,4,40,2,NULL),(535,5,40,2,NULL),(536,6,40,2,NULL),(537,7,40,2,NULL),(538,2,41,2,NULL),(539,3,41,2,NULL),(540,4,41,2,NULL),(541,5,41,2,NULL),(542,6,41,2,NULL),(543,7,41,2,NULL),(544,2,42,2,NULL),(545,3,42,2,NULL),(546,4,42,2,NULL),(547,5,42,2,NULL),(548,6,42,2,NULL),(549,7,42,2,NULL),(550,2,43,2,NULL),(551,3,43,2,NULL),(552,4,43,2,NULL),(553,5,43,2,NULL),(554,6,43,2,NULL),(555,7,43,2,NULL),(556,2,44,2,NULL),(557,3,44,2,NULL),(558,4,44,2,NULL),(559,5,44,2,NULL),(560,6,44,2,NULL),(561,7,44,2,NULL),(562,2,46,2,NULL),(563,3,46,2,NULL),(564,4,46,2,NULL),(565,5,46,2,NULL),(566,6,46,2,NULL),(567,7,46,2,NULL),(568,2,49,2,NULL),(569,3,49,2,NULL),(570,4,49,2,NULL),(571,5,49,2,NULL),(572,6,49,2,NULL),(573,7,49,2,NULL),(574,2,50,2,NULL),(575,3,50,2,NULL),(576,4,50,2,NULL),(577,5,50,2,NULL),(578,6,50,2,NULL),(579,7,50,2,NULL),(580,2,52,2,NULL),(581,3,52,2,NULL),(582,4,52,2,NULL),(583,5,52,2,NULL),(584,6,52,2,NULL),(585,7,52,2,NULL),(586,2,54,2,NULL),(587,3,54,2,NULL),(588,4,54,2,NULL),(589,5,54,2,NULL),(590,6,54,2,NULL),(591,7,54,2,NULL),(592,2,55,2,NULL),(593,3,55,2,NULL),(594,4,55,2,NULL),(595,5,55,2,NULL),(596,6,55,2,NULL),(597,7,55,2,NULL),(598,2,65,2,NULL),(599,3,65,2,NULL),(600,4,65,2,NULL),(601,5,65,2,NULL),(602,6,65,2,NULL),(603,7,65,2,NULL),(604,2,56,2,NULL),(605,3,56,2,NULL),(606,4,56,2,NULL),(607,5,56,2,NULL),(608,6,56,2,NULL),(609,7,56,2,NULL),(610,2,57,2,NULL),(611,3,57,2,NULL),(612,4,57,2,NULL),(613,5,57,2,NULL),(614,6,57,2,NULL),(615,7,57,2,NULL),(616,2,62,2,NULL),(617,3,62,2,NULL),(618,4,62,2,NULL),(619,5,62,2,NULL),(620,6,62,2,NULL),(621,7,62,2,NULL),(622,2,63,2,NULL),(623,3,63,2,NULL),(624,4,63,2,NULL),(625,5,63,2,NULL),(626,6,63,2,NULL),(627,7,63,2,NULL),(628,2,64,2,NULL),(629,3,64,2,NULL),(630,4,64,2,NULL),(631,5,64,2,NULL),(632,6,64,2,NULL),(633,7,64,2,NULL),(634,1,6,2,NULL),(635,1,13,2,NULL),(636,1,23,2,NULL),(637,1,27,2,NULL),(638,1,53,2,NULL),(639,20,7,2,NULL),(640,21,7,2,NULL),(641,23,7,2,NULL),(642,25,7,2,NULL),(643,28,7,2,NULL),(644,29,7,2,NULL),(645,22,7,2,NULL),(646,80,7,2,NULL),(647,83,7,2,NULL),(648,84,7,2,NULL),(649,85,7,2,NULL),(650,86,7,2,NULL),(651,87,7,2,NULL),(652,88,7,2,NULL),(653,89,7,2,NULL),(654,90,7,2,NULL),(655,92,7,2,NULL),(656,93,7,2,NULL),(657,94,7,2,NULL),(658,95,7,2,NULL),(659,96,7,2,NULL),(660,97,7,2,NULL),(661,98,7,2,NULL),(662,99,7,2,NULL),(663,62,7,2,NULL),(664,63,7,2,NULL),(665,65,7,2,NULL),(666,66,7,2,NULL),(667,67,7,2,NULL),(668,68,7,2,NULL),(669,69,7,2,NULL),(670,70,7,2,NULL),(671,73,7,2,NULL),(672,77,7,2,NULL),(673,20,8,2,NULL),(674,21,8,2,NULL),(675,23,8,2,NULL),(676,25,8,2,NULL),(677,28,8,2,NULL),(678,29,8,2,NULL),(679,22,8,2,NULL),(680,80,8,2,NULL),(681,83,8,2,NULL),(682,84,8,2,NULL),(683,85,8,2,NULL),(684,86,8,2,NULL),(685,87,8,2,NULL),(686,88,8,2,NULL),(687,89,8,2,NULL),(688,90,8,2,NULL),(689,92,8,2,NULL),(690,93,8,2,NULL),(691,94,8,2,NULL),(692,95,8,2,NULL),(693,96,8,2,NULL),(694,97,8,2,NULL),(695,98,8,2,NULL),(696,99,8,2,NULL),(697,62,8,2,NULL),(698,63,8,2,NULL),(699,65,8,2,NULL),(700,66,8,2,NULL),(701,67,8,2,NULL),(702,68,8,2,NULL),(703,69,8,2,NULL),(704,70,8,2,NULL),(705,73,8,2,NULL),(706,77,8,2,NULL),(707,20,58,2,NULL),(708,21,58,2,NULL),(709,23,58,2,NULL),(710,25,58,2,NULL),(711,28,58,2,NULL),(712,29,58,2,NULL),(713,22,58,2,NULL),(714,80,58,2,NULL),(715,83,58,2,NULL),(716,84,58,2,NULL),(717,85,58,2,NULL),(718,86,58,2,NULL),(719,87,58,2,NULL),(720,88,58,2,NULL),(721,89,58,2,NULL),(722,90,58,2,NULL),(723,92,58,2,NULL),(724,93,58,2,NULL),(725,94,58,2,NULL),(726,95,58,2,NULL),(727,96,58,2,NULL),(728,97,58,2,NULL),(729,98,58,2,NULL),(730,99,58,2,NULL),(731,62,58,2,NULL),(732,63,58,2,NULL),(733,65,58,2,NULL),(734,66,58,2,NULL),(735,67,58,2,NULL),(736,68,58,2,NULL),(737,69,58,2,NULL),(738,70,58,2,NULL),(739,73,58,2,NULL),(740,77,58,2,NULL),(741,20,44,2,NULL),(742,21,44,2,NULL),(743,23,44,2,NULL),(744,25,44,2,NULL),(745,28,44,2,NULL),(746,29,44,2,NULL),(747,22,44,2,NULL),(748,80,44,2,NULL),(749,83,44,2,NULL),(750,84,44,2,NULL),(751,85,44,2,NULL),(752,86,44,2,NULL),(753,87,44,2,NULL),(754,88,44,2,NULL),(755,89,44,2,NULL),(756,90,44,2,NULL),(757,92,44,2,NULL),(758,93,44,2,NULL),(759,94,44,2,NULL),(760,95,44,2,NULL),(761,96,44,2,NULL),(762,97,44,2,NULL),(763,98,44,2,NULL),(764,99,44,2,NULL),(765,62,44,2,NULL),(766,63,44,2,NULL),(767,65,44,2,NULL),(768,66,44,2,NULL),(769,67,44,2,NULL),(770,68,44,2,NULL),(771,69,44,2,NULL),(772,70,44,2,NULL),(773,73,44,2,NULL),(774,77,44,2,NULL),(775,80,12,2,NULL),(776,80,15,2,NULL),(777,80,17,2,NULL),(778,80,19,2,NULL),(779,80,22,2,NULL),(780,80,29,2,NULL),(781,80,32,2,NULL),(782,80,61,2,NULL),(783,80,18,2,NULL),(784,80,24,2,NULL),(785,80,28,2,NULL),(786,80,60,2,NULL),(787,80,26,2,NULL),(788,80,40,2,NULL),(789,80,41,2,NULL),(790,80,42,2,NULL),(791,80,43,2,NULL),(792,80,46,2,NULL),(793,80,49,2,NULL),(794,80,50,2,NULL),(795,80,52,2,NULL),(796,80,54,2,NULL),(797,80,55,2,NULL),(798,80,65,2,NULL),(799,80,56,2,NULL),(800,80,57,2,NULL),(801,80,62,2,NULL),(802,80,63,2,NULL),(803,80,64,2,NULL),(804,20,46,2,NULL),(805,21,46,2,NULL),(806,23,46,2,NULL),(807,25,46,2,NULL),(808,28,46,2,NULL),(809,29,46,2,NULL),(810,22,46,2,NULL),(811,83,46,2,NULL),(812,84,46,2,NULL),(813,85,46,2,NULL),(814,86,46,2,NULL),(815,87,46,2,NULL),(816,88,46,2,NULL),(817,89,46,2,NULL),(818,90,46,2,NULL),(819,92,46,2,NULL),(820,93,46,2,NULL),(821,94,46,2,NULL),(822,95,46,2,NULL),(823,96,46,2,NULL),(824,97,46,2,NULL),(825,98,46,2,NULL),(826,99,46,2,NULL),(827,62,46,2,NULL),(828,63,46,2,NULL),(829,65,46,2,NULL),(830,66,46,2,NULL),(831,67,46,2,NULL),(832,68,46,2,NULL),(833,69,46,2,NULL),(834,70,46,2,NULL),(835,73,46,2,NULL),(836,77,46,2,NULL),(837,83,12,2,NULL),(838,84,12,2,NULL),(839,85,12,2,NULL),(840,86,12,2,NULL),(841,87,12,2,NULL),(842,88,12,2,NULL),(843,89,12,2,NULL),(844,90,12,2,NULL),(845,83,15,2,NULL),(846,84,15,2,NULL),(847,85,15,2,NULL),(848,86,15,2,NULL),(849,87,15,2,NULL),(850,88,15,2,NULL),(851,89,15,2,NULL),(852,90,15,2,NULL),(853,83,17,2,NULL),(854,84,17,2,NULL),(855,85,17,2,NULL),(856,86,17,2,NULL),(857,87,17,2,NULL),(858,88,17,2,NULL),(859,89,17,2,NULL),(860,90,17,2,NULL),(861,83,19,2,NULL),(862,84,19,2,NULL),(863,85,19,2,NULL),(864,86,19,2,NULL),(865,87,19,2,NULL),(866,88,19,2,NULL),(867,89,19,2,NULL),(868,90,19,2,NULL),(869,83,22,2,NULL),(870,84,22,2,NULL),(871,85,22,2,NULL),(872,86,22,2,NULL),(873,87,22,2,NULL),(874,88,22,2,NULL),(875,89,22,2,NULL),(876,90,22,2,NULL),(877,83,29,2,NULL),(878,84,29,2,NULL),(879,85,29,2,NULL),(880,86,29,2,NULL),(881,87,29,2,NULL),(882,88,29,2,NULL),(883,89,29,2,NULL),(884,90,29,2,NULL),(885,83,32,2,NULL),(886,84,32,2,NULL),(887,85,32,2,NULL),(888,86,32,2,NULL),(889,87,32,2,NULL),(890,88,32,2,NULL),(891,89,32,2,NULL),(892,90,32,2,NULL),(893,83,61,2,NULL),(894,84,61,2,NULL),(895,85,61,2,NULL),(896,86,61,2,NULL),(897,87,61,2,NULL),(898,88,61,2,NULL),(899,89,61,2,NULL),(900,90,61,2,NULL),(901,83,18,2,NULL),(902,84,18,2,NULL),(903,85,18,2,NULL),(904,86,18,2,NULL),(905,87,18,2,NULL),(906,88,18,2,NULL),(907,89,18,2,NULL),(908,90,18,2,NULL),(909,83,24,2,NULL),(910,84,24,2,NULL),(911,85,24,2,NULL),(912,86,24,2,NULL),(913,87,24,2,NULL),(914,88,24,2,NULL),(915,89,24,2,NULL),(916,90,24,2,NULL),(917,83,28,2,NULL),(918,84,28,2,NULL),(919,85,28,2,NULL),(920,86,28,2,NULL),(921,87,28,2,NULL),(922,88,28,2,NULL),(923,89,28,2,NULL),(924,90,28,2,NULL),(925,83,60,2,NULL),(926,84,60,2,NULL),(927,85,60,2,NULL),(928,86,60,2,NULL),(929,87,60,2,NULL),(930,88,60,2,NULL),(931,89,60,2,NULL),(932,90,60,2,NULL),(933,83,26,2,NULL),(934,84,26,2,NULL),(935,85,26,2,NULL),(936,86,26,2,NULL),(937,87,26,2,NULL),(938,88,26,2,NULL),(939,89,26,2,NULL),(940,90,26,2,NULL),(941,83,40,2,NULL),(942,84,40,2,NULL),(943,85,40,2,NULL),(944,86,40,2,NULL),(945,87,40,2,NULL),(946,88,40,2,NULL),(947,89,40,2,NULL),(948,90,40,2,NULL),(949,83,41,2,NULL),(950,84,41,2,NULL),(951,85,41,2,NULL),(952,86,41,2,NULL),(953,87,41,2,NULL),(954,88,41,2,NULL),(955,89,41,2,NULL),(956,90,41,2,NULL),(957,83,42,2,NULL),(958,84,42,2,NULL),(959,85,42,2,NULL),(960,86,42,2,NULL),(961,87,42,2,NULL),(962,88,42,2,NULL),(963,89,42,2,NULL),(964,90,42,2,NULL),(965,83,43,2,NULL),(966,84,43,2,NULL),(967,85,43,2,NULL),(968,86,43,2,NULL),(969,87,43,2,NULL),(970,88,43,2,NULL),(971,89,43,2,NULL),(972,90,43,2,NULL),(973,83,49,2,NULL),(974,84,49,2,NULL),(975,85,49,2,NULL),(976,86,49,2,NULL),(977,87,49,2,NULL),(978,88,49,2,NULL),(979,89,49,2,NULL),(980,90,49,2,NULL),(981,83,50,2,NULL),(982,84,50,2,NULL),(983,85,50,2,NULL),(984,86,50,2,NULL),(985,87,50,2,NULL),(986,88,50,2,NULL),(987,89,50,2,NULL),(988,90,50,2,NULL),(989,83,52,2,NULL),(990,84,52,2,NULL),(991,85,52,2,NULL),(992,86,52,2,NULL),(993,87,52,2,NULL),(994,88,52,2,NULL),(995,89,52,2,NULL),(996,90,52,2,NULL),(997,83,54,2,NULL),(998,84,54,2,NULL),(999,85,54,2,NULL),(1000,86,54,2,NULL),(1001,87,54,2,NULL),(1002,88,54,2,NULL),(1003,89,54,2,NULL),(1004,90,54,2,NULL),(1005,83,55,2,NULL),(1006,84,55,2,NULL),(1007,85,55,2,NULL),(1008,86,55,2,NULL),(1009,87,55,2,NULL),(1010,88,55,2,NULL),(1011,89,55,2,NULL),(1012,90,55,2,NULL),(1013,83,65,2,NULL),(1014,84,65,2,NULL),(1015,85,65,2,NULL),(1016,86,65,2,NULL),(1017,87,65,2,NULL),(1018,88,65,2,NULL),(1019,89,65,2,NULL),(1020,90,65,2,NULL),(1021,83,56,2,NULL),(1022,84,56,2,NULL),(1023,85,56,2,NULL),(1024,86,56,2,NULL),(1025,87,56,2,NULL),(1026,88,56,2,NULL),(1027,89,56,2,NULL),(1028,90,56,2,NULL),(1029,83,57,2,NULL),(1030,84,57,2,NULL),(1031,85,57,2,NULL),(1032,86,57,2,NULL),(1033,87,57,2,NULL),(1034,88,57,2,NULL),(1035,89,57,2,NULL),(1036,90,57,2,NULL),(1037,83,62,2,NULL),(1038,84,62,2,NULL),(1039,85,62,2,NULL),(1040,86,62,2,NULL),(1041,87,62,2,NULL),(1042,88,62,2,NULL),(1043,89,62,2,NULL),(1044,90,62,2,NULL),(1045,83,63,2,NULL),(1046,84,63,2,NULL),(1047,85,63,2,NULL),(1048,86,63,2,NULL),(1049,87,63,2,NULL),(1050,88,63,2,NULL),(1051,89,63,2,NULL),(1052,90,63,2,NULL),(1053,83,64,2,NULL),(1054,84,64,2,NULL),(1055,85,64,2,NULL),(1056,86,64,2,NULL),(1057,87,64,2,NULL),(1058,88,64,2,NULL),(1059,89,64,2,NULL),(1060,90,64,2,NULL),(1061,20,49,2,NULL),(1062,21,49,2,NULL),(1063,23,49,2,NULL),(1064,25,49,2,NULL),(1065,28,49,2,NULL),(1066,29,49,2,NULL),(1067,22,49,2,NULL),(1068,92,49,2,NULL),(1069,93,49,2,NULL),(1070,94,49,2,NULL),(1071,95,49,2,NULL),(1072,96,49,2,NULL),(1073,97,49,2,NULL),(1074,98,49,2,NULL),(1075,99,49,2,NULL),(1076,62,49,2,NULL),(1077,63,49,2,NULL),(1078,65,49,2,NULL),(1079,66,49,2,NULL),(1080,67,49,2,NULL),(1081,68,49,2,NULL),(1082,69,49,2,NULL),(1083,70,49,2,NULL),(1084,73,49,2,NULL),(1085,77,49,2,NULL),(1086,92,12,2,NULL),(1087,93,12,2,NULL),(1088,94,12,2,NULL),(1089,95,12,2,NULL),(1090,96,12,2,NULL),(1091,97,12,2,NULL),(1092,98,12,2,NULL),(1093,99,12,2,NULL),(1094,92,15,2,NULL),(1095,93,15,2,NULL),(1096,94,15,2,NULL),(1097,95,15,2,NULL),(1098,96,15,2,NULL),(1099,97,15,2,NULL),(1100,98,15,2,NULL),(1101,99,15,2,NULL),(1102,92,17,2,NULL),(1103,93,17,2,NULL),(1104,94,17,2,NULL),(1105,95,17,2,NULL),(1106,96,17,2,NULL),(1107,97,17,2,NULL),(1108,98,17,2,NULL),(1109,99,17,2,NULL),(1110,92,19,2,NULL),(1111,93,19,2,NULL),(1112,94,19,2,NULL),(1113,95,19,2,NULL),(1114,96,19,2,NULL),(1115,97,19,2,NULL),(1116,98,19,2,NULL),(1117,99,19,2,NULL),(1118,92,22,2,NULL),(1119,93,22,2,NULL),(1120,94,22,2,NULL),(1121,95,22,2,NULL),(1122,96,22,2,NULL),(1123,97,22,2,NULL),(1124,98,22,2,NULL),(1125,99,22,2,NULL),(1126,20,50,2,NULL),(1127,21,50,2,NULL),(1128,23,50,2,NULL),(1129,25,50,2,NULL),(1130,28,50,2,NULL),(1131,29,50,2,NULL),(1132,92,29,2,NULL),(1133,93,29,2,NULL),(1134,94,29,2,NULL),(1135,95,29,2,NULL),(1136,96,29,2,NULL),(1137,97,29,2,NULL),(1138,98,29,2,NULL),(1139,99,29,2,NULL),(1140,92,32,2,NULL),(1141,93,32,2,NULL),(1142,94,32,2,NULL),(1143,95,32,2,NULL),(1144,96,32,2,NULL),(1145,97,32,2,NULL),(1146,98,32,2,NULL),(1147,99,32,2,NULL),(1148,92,61,2,NULL),(1149,93,61,2,NULL),(1150,94,61,2,NULL),(1151,95,61,2,NULL),(1152,96,61,2,NULL),(1153,97,61,2,NULL),(1154,98,61,2,NULL),(1155,99,61,2,NULL),(1156,92,18,2,NULL),(1157,93,18,2,NULL),(1158,94,18,2,NULL),(1159,95,18,2,NULL),(1160,96,18,2,NULL),(1161,97,18,2,NULL),(1162,98,18,2,NULL),(1163,99,18,2,NULL),(1164,22,50,2,NULL),(1165,92,24,2,NULL),(1166,93,24,2,NULL),(1167,94,24,2,NULL),(1168,95,24,2,NULL),(1169,96,24,2,NULL),(1170,97,24,2,NULL),(1171,98,24,2,NULL),(1172,99,24,2,NULL),(1173,92,28,2,NULL),(1174,93,28,2,NULL),(1175,94,28,2,NULL),(1176,95,28,2,NULL),(1177,96,28,2,NULL),(1178,97,28,2,NULL),(1179,98,28,2,NULL),(1180,99,28,2,NULL),(1181,92,60,2,NULL),(1182,93,60,2,NULL),(1183,94,60,2,NULL),(1184,95,60,2,NULL),(1185,96,60,2,NULL),(1186,97,60,2,NULL),(1187,98,60,2,NULL),(1188,99,60,2,NULL),(1189,92,26,2,NULL),(1190,93,26,2,NULL),(1191,94,26,2,NULL),(1192,95,26,2,NULL),(1193,96,26,2,NULL),(1194,97,26,2,NULL),(1195,98,26,2,NULL),(1196,99,26,2,NULL),(1197,92,40,2,NULL),(1198,93,40,2,NULL),(1199,94,40,2,NULL),(1200,95,40,2,NULL),(1201,96,40,2,NULL),(1202,97,40,2,NULL),(1203,98,40,2,NULL),(1204,99,40,2,NULL),(1205,92,41,2,NULL),(1206,93,41,2,NULL),(1207,94,41,2,NULL),(1208,95,41,2,NULL),(1209,96,41,2,NULL),(1210,97,41,2,NULL),(1211,98,41,2,NULL),(1212,99,41,2,NULL),(1213,92,42,2,NULL),(1214,93,42,2,NULL),(1215,94,42,2,NULL),(1216,95,42,2,NULL),(1217,96,42,2,NULL),(1218,97,42,2,NULL),(1219,98,42,2,NULL),(1220,99,42,2,NULL),(1221,92,43,2,NULL),(1222,93,43,2,NULL),(1223,94,43,2,NULL),(1224,95,43,2,NULL),(1225,96,43,2,NULL),(1226,97,43,2,NULL),(1227,98,43,2,NULL),(1228,99,43,2,NULL),(1229,62,50,2,NULL),(1230,63,50,2,NULL),(1231,65,50,2,NULL),(1232,66,50,2,NULL),(1233,67,50,2,NULL),(1234,68,50,2,NULL),(1235,69,50,2,NULL),(1236,70,50,2,NULL),(1237,92,52,2,NULL),(1238,93,52,2,NULL),(1239,94,52,2,NULL),(1240,95,52,2,NULL),(1241,96,52,2,NULL),(1242,97,52,2,NULL),(1243,98,52,2,NULL),(1244,99,52,2,NULL),(1245,92,54,2,NULL),(1246,93,54,2,NULL),(1247,94,54,2,NULL),(1248,95,54,2,NULL),(1249,96,54,2,NULL),(1250,97,54,2,NULL),(1251,98,54,2,NULL),(1252,99,54,2,NULL),(1253,73,50,2,NULL),(1254,92,55,2,NULL),(1255,93,55,2,NULL),(1256,94,55,2,NULL),(1257,95,55,2,NULL),(1258,96,55,2,NULL),(1259,97,55,2,NULL),(1260,98,55,2,NULL),(1261,99,55,2,NULL),(1262,77,50,2,NULL),(1263,92,65,2,NULL),(1264,93,65,2,NULL),(1265,94,65,2,NULL),(1266,95,65,2,NULL),(1267,96,65,2,NULL),(1268,97,65,2,NULL),(1269,98,65,2,NULL),(1270,99,65,2,NULL),(1271,92,56,2,NULL),(1272,93,56,2,NULL),(1273,94,56,2,NULL),(1274,95,56,2,NULL),(1275,96,56,2,NULL),(1276,97,56,2,NULL),(1277,98,56,2,NULL),(1278,99,56,2,NULL),(1279,92,57,2,NULL),(1280,93,57,2,NULL),(1281,94,57,2,NULL),(1282,95,57,2,NULL),(1283,96,57,2,NULL),(1284,97,57,2,NULL),(1285,98,57,2,NULL),(1286,99,57,2,NULL),(1287,92,62,2,NULL),(1288,93,62,2,NULL),(1289,94,62,2,NULL),(1290,95,62,2,NULL),(1291,96,62,2,NULL),(1292,97,62,2,NULL),(1293,98,62,2,NULL),(1294,99,62,2,NULL),(1295,92,63,2,NULL),(1296,93,63,2,NULL),(1297,94,63,2,NULL),(1298,95,63,2,NULL),(1299,96,63,2,NULL),(1300,97,63,2,NULL),(1301,98,63,2,NULL),(1302,99,63,2,NULL),(1303,92,64,2,NULL),(1304,93,64,2,NULL),(1305,94,64,2,NULL),(1306,95,64,2,NULL),(1307,96,64,2,NULL),(1308,97,64,2,NULL),(1309,98,64,2,NULL),(1310,99,64,2,NULL),(1311,62,12,2,NULL),(1312,63,12,2,NULL),(1313,65,12,2,NULL),(1314,66,12,2,NULL),(1315,67,12,2,NULL),(1316,68,12,2,NULL),(1317,69,12,2,NULL),(1318,70,12,2,NULL),(1319,62,15,2,NULL),(1320,63,15,2,NULL),(1321,65,15,2,NULL),(1322,66,15,2,NULL),(1323,67,15,2,NULL),(1324,68,15,2,NULL),(1325,69,15,2,NULL),(1326,70,15,2,NULL),(1327,62,17,2,NULL),(1328,63,17,2,NULL),(1329,65,17,2,NULL),(1330,66,17,2,NULL),(1331,67,17,2,NULL),(1332,68,17,2,NULL),(1333,69,17,2,NULL),(1334,70,17,2,NULL),(1335,62,19,2,NULL),(1336,63,19,2,NULL),(1337,65,19,2,NULL),(1338,66,19,2,NULL),(1339,67,19,2,NULL),(1340,68,19,2,NULL),(1341,69,19,2,NULL),(1342,70,19,2,NULL),(1343,62,22,2,NULL),(1344,63,22,2,NULL),(1345,65,22,2,NULL),(1346,66,22,2,NULL),(1347,67,22,2,NULL),(1348,68,22,2,NULL),(1349,69,22,2,NULL),(1350,70,22,2,NULL),(1351,62,29,2,NULL),(1352,63,29,2,NULL),(1353,65,29,2,NULL),(1354,66,29,2,NULL),(1355,67,29,2,NULL),(1356,68,29,2,NULL),(1357,69,29,2,NULL),(1358,70,29,2,NULL),(1359,62,32,2,NULL),(1360,63,32,2,NULL),(1361,65,32,2,NULL),(1362,66,32,2,NULL),(1363,67,32,2,NULL),(1364,68,32,2,NULL),(1365,69,32,2,NULL),(1366,70,32,2,NULL),(1367,62,61,2,NULL),(1368,63,61,2,NULL),(1369,65,61,2,NULL),(1370,66,61,2,NULL),(1371,67,61,2,NULL),(1372,68,61,2,NULL),(1373,69,61,2,NULL),(1374,70,61,2,NULL),(1375,62,18,2,NULL),(1376,63,18,2,NULL),(1377,65,18,2,NULL),(1378,66,18,2,NULL),(1379,67,18,2,NULL),(1380,68,18,2,NULL),(1381,69,18,2,NULL),(1382,70,18,2,NULL),(1383,62,24,2,NULL),(1384,63,24,2,NULL),(1385,65,24,2,NULL),(1386,66,24,2,NULL),(1387,67,24,2,NULL),(1388,68,24,2,NULL),(1389,69,24,2,NULL),(1390,70,24,2,NULL),(1391,62,28,2,NULL),(1392,63,28,2,NULL),(1393,65,28,2,NULL),(1394,66,28,2,NULL),(1395,67,28,2,NULL),(1396,68,28,2,NULL),(1397,69,28,2,NULL),(1398,70,28,2,NULL),(1399,62,60,2,NULL),(1400,63,60,2,NULL),(1401,65,60,2,NULL),(1402,66,60,2,NULL),(1403,67,60,2,NULL),(1404,68,60,2,NULL),(1405,69,60,2,NULL),(1406,70,60,2,NULL),(1407,62,26,2,NULL),(1408,63,26,2,NULL),(1409,65,26,2,NULL),(1410,66,26,2,NULL),(1411,67,26,2,NULL),(1412,68,26,2,NULL),(1413,69,26,2,NULL),(1414,70,26,2,NULL),(1415,62,40,2,NULL),(1416,63,40,2,NULL),(1417,65,40,2,NULL),(1418,66,40,2,NULL),(1419,67,40,2,NULL),(1420,68,40,2,NULL),(1421,69,40,2,NULL),(1422,70,40,2,NULL),(1423,62,41,2,NULL),(1424,63,41,2,NULL),(1425,65,41,2,NULL),(1426,66,41,2,NULL),(1427,67,41,2,NULL),(1428,68,41,2,NULL),(1429,69,41,2,NULL),(1430,70,41,2,NULL),(1431,62,42,2,NULL),(1432,63,42,2,NULL),(1433,65,42,2,NULL),(1434,66,42,2,NULL),(1435,67,42,2,NULL),(1436,68,42,2,NULL),(1437,69,42,2,NULL),(1438,70,42,2,NULL),(1439,62,43,2,NULL),(1440,63,43,2,NULL),(1441,65,43,2,NULL),(1442,66,43,2,NULL),(1443,67,43,2,NULL),(1444,68,43,2,NULL),(1445,69,43,2,NULL),(1446,70,43,2,NULL),(1447,62,52,2,NULL),(1448,63,52,2,NULL),(1449,65,52,2,NULL),(1450,66,52,2,NULL),(1451,67,52,2,NULL),(1452,68,52,2,NULL),(1453,69,52,2,NULL),(1454,70,52,2,NULL),(1455,62,54,2,NULL),(1456,63,54,2,NULL),(1457,65,54,2,NULL),(1458,66,54,2,NULL),(1459,67,54,2,NULL),(1460,68,54,2,NULL),(1461,69,54,2,NULL),(1462,70,54,2,NULL),(1463,62,55,2,NULL),(1464,63,55,2,NULL),(1465,65,55,2,NULL),(1466,66,55,2,NULL),(1467,67,55,2,NULL),(1468,68,55,2,NULL),(1469,69,55,2,NULL),(1470,70,55,2,NULL),(1471,62,65,2,NULL),(1472,63,65,2,NULL),(1473,65,65,2,NULL),(1474,66,65,2,NULL),(1475,67,65,2,NULL),(1476,68,65,2,NULL),(1477,69,65,2,NULL),(1478,70,65,2,NULL),(1479,62,56,2,NULL),(1480,63,56,2,NULL),(1481,65,56,2,NULL),(1482,66,56,2,NULL),(1483,67,56,2,NULL),(1484,68,56,2,NULL),(1485,69,56,2,NULL),(1486,70,56,2,NULL),(1487,62,57,2,NULL),(1488,63,57,2,NULL),(1489,65,57,2,NULL),(1490,66,57,2,NULL),(1491,67,57,2,NULL),(1492,68,57,2,NULL),(1493,69,57,2,NULL),(1494,70,57,2,NULL),(1495,62,62,2,NULL),(1496,63,62,2,NULL),(1497,65,62,2,NULL),(1498,66,62,2,NULL),(1499,67,62,2,NULL),(1500,68,62,2,NULL),(1501,69,62,2,NULL),(1502,70,62,2,NULL),(1503,62,63,2,NULL),(1504,63,63,2,NULL),(1505,65,63,2,NULL),(1506,66,63,2,NULL),(1507,67,63,2,NULL),(1508,68,63,2,NULL),(1509,69,63,2,NULL),(1510,70,63,2,NULL),(1511,62,64,2,NULL),(1512,63,64,2,NULL),(1513,65,64,2,NULL),(1514,66,64,2,NULL),(1515,67,64,2,NULL),(1516,68,64,2,NULL),(1517,69,64,2,NULL),(1518,70,64,2,NULL),(1519,61,50,2,NULL),(1520,72,49,2,NULL),(1521,79,55,2,NULL),(1522,79,65,2,NULL),(1523,20,52,2,NULL),(1524,21,52,2,NULL),(1525,23,52,2,NULL),(1526,25,52,2,NULL),(1527,28,52,2,NULL),(1528,29,52,2,NULL),(1529,22,52,2,NULL),(1530,73,52,2,NULL),(1531,77,52,2,NULL),(1532,91,5,2,NULL),(1533,91,11,2,NULL),(1534,91,25,2,NULL),(1535,91,51,2,NULL),(1536,73,12,2,NULL),(1537,73,15,2,NULL),(1538,73,17,2,NULL),(1539,73,19,2,NULL),(1540,73,22,2,NULL),(1541,20,54,2,NULL),(1542,21,54,2,NULL),(1543,23,54,2,NULL),(1544,25,54,2,NULL),(1545,28,54,2,NULL),(1546,29,54,2,NULL),(1547,73,29,2,NULL),(1548,73,32,2,NULL),(1549,73,61,2,NULL),(1550,73,18,2,NULL),(1551,22,54,2,NULL),(1552,73,24,2,NULL),(1553,73,28,2,NULL),(1554,73,60,2,NULL),(1555,73,26,2,NULL),(1556,73,40,2,NULL),(1557,73,41,2,NULL),(1558,73,42,2,NULL),(1559,73,43,2,NULL),(1560,73,55,2,NULL),(1561,77,54,2,NULL),(1562,73,65,2,NULL),(1563,73,56,2,NULL),(1564,73,57,2,NULL),(1565,73,62,2,NULL),(1566,73,63,2,NULL),(1567,73,64,2,NULL),(1568,76,52,2,NULL),(1569,77,12,2,NULL),(1570,77,15,2,NULL),(1571,77,17,2,NULL),(1572,77,19,2,NULL),(1573,77,22,2,NULL),(1574,20,55,2,NULL),(1575,21,55,2,NULL),(1576,23,55,2,NULL),(1577,25,55,2,NULL),(1578,28,55,2,NULL),(1579,29,55,2,NULL),(1580,77,29,2,NULL),(1581,77,32,2,NULL),(1582,77,61,2,NULL),(1583,77,18,2,NULL),(1584,22,55,2,NULL),(1585,77,24,2,NULL),(1586,77,28,2,NULL),(1587,77,60,2,NULL),(1588,77,26,2,NULL),(1589,77,40,2,NULL),(1590,77,41,2,NULL),(1591,77,42,2,NULL),(1592,77,43,2,NULL),(1593,77,56,2,NULL),(1594,77,57,2,NULL),(1595,77,62,2,NULL),(1596,77,63,2,NULL),(1597,77,64,2,NULL),(1598,20,65,2,NULL),(1599,21,65,2,NULL),(1600,23,65,2,NULL),(1601,25,65,2,NULL),(1602,28,65,2,NULL),(1603,29,65,2,NULL),(1604,22,65,2,NULL),(1605,74,6,2,NULL),(1606,74,13,2,NULL),(1607,74,23,2,NULL),(1608,74,27,2,NULL),(1609,74,53,2,NULL),(1610,81,6,2,NULL),(1611,81,13,2,NULL),(1612,81,23,2,NULL),(1613,81,27,2,NULL),(1614,81,53,2,NULL),(1615,20,56,2,NULL),(1616,21,56,2,NULL),(1617,23,56,2,NULL),(1618,25,56,2,NULL),(1619,28,56,2,NULL),(1620,29,56,2,NULL),(1621,22,56,2,NULL),(1622,20,57,2,NULL),(1623,21,57,2,NULL),(1624,23,57,2,NULL),(1625,25,57,2,NULL),(1626,28,57,2,NULL),(1627,29,57,2,NULL),(1628,22,57,2,NULL),(1629,20,62,2,NULL),(1630,21,62,2,NULL),(1631,23,62,2,NULL),(1632,25,62,2,NULL),(1633,28,62,2,NULL),(1634,29,62,2,NULL),(1635,22,62,2,NULL),(1636,20,63,2,NULL),(1637,21,63,2,NULL),(1638,23,63,2,NULL),(1639,25,63,2,NULL),(1640,28,63,2,NULL),(1641,29,63,2,NULL),(1642,22,63,2,NULL),(1643,20,64,2,NULL),(1644,21,64,2,NULL),(1645,23,64,2,NULL),(1646,25,64,2,NULL),(1647,28,64,2,NULL),(1648,29,64,2,NULL),(1649,22,64,2,NULL),(1650,27,17,2,NULL),(1651,30,15,2,NULL),(1652,20,12,2,NULL),(1653,21,12,2,NULL),(1654,23,12,2,NULL),(1655,25,12,2,NULL),(1656,28,12,2,NULL),(1657,29,12,2,NULL),(1658,22,12,2,NULL),(1659,20,15,2,NULL),(1660,21,15,2,NULL),(1661,23,15,2,NULL),(1662,25,15,2,NULL),(1663,28,15,2,NULL),(1664,29,15,2,NULL),(1665,22,15,2,NULL),(1666,31,22,2,NULL),(1667,32,19,2,NULL),(1668,20,17,2,NULL),(1669,21,17,2,NULL),(1670,23,17,2,NULL),(1671,25,17,2,NULL),(1672,28,17,2,NULL),(1673,29,17,2,NULL),(1674,22,17,2,NULL),(1675,20,19,2,NULL),(1676,21,19,2,NULL),(1677,23,19,2,NULL),(1678,25,19,2,NULL),(1679,28,19,2,NULL),(1680,29,19,2,NULL),(1681,22,19,2,NULL),(1682,20,22,2,NULL),(1683,21,22,2,NULL),(1684,23,22,2,NULL),(1685,25,22,2,NULL),(1686,28,22,2,NULL),(1687,29,22,2,NULL),(1688,22,22,2,NULL),(1689,20,29,2,NULL),(1690,21,29,2,NULL),(1691,23,29,2,NULL),(1692,25,29,2,NULL),(1693,28,29,2,NULL),(1694,29,29,2,NULL),(1695,20,32,2,NULL),(1696,21,32,2,NULL),(1697,23,32,2,NULL),(1698,25,32,2,NULL),(1699,28,32,2,NULL),(1700,29,32,2,NULL),(1701,20,61,2,NULL),(1702,21,61,2,NULL),(1703,23,61,2,NULL),(1704,25,61,2,NULL),(1705,28,61,2,NULL),(1706,29,61,2,NULL),(1707,20,18,2,NULL),(1708,21,18,2,NULL),(1709,23,18,2,NULL),(1710,25,18,2,NULL),(1711,28,18,2,NULL),(1712,29,18,2,NULL),(1713,20,24,2,NULL),(1714,21,24,2,NULL),(1715,23,24,2,NULL),(1716,25,24,2,NULL),(1717,28,24,2,NULL),(1718,29,24,2,NULL),(1719,20,28,2,NULL),(1720,21,28,2,NULL),(1721,23,28,2,NULL),(1722,25,28,2,NULL),(1723,28,28,2,NULL),(1724,29,28,2,NULL),(1725,20,60,2,NULL),(1726,21,60,2,NULL),(1727,23,60,2,NULL),(1728,25,60,2,NULL),(1729,28,60,2,NULL),(1730,29,60,2,NULL),(1731,20,26,2,NULL),(1732,21,26,2,NULL),(1733,23,26,2,NULL),(1734,25,26,2,NULL),(1735,28,26,2,NULL),(1736,29,26,2,NULL),(1737,20,40,2,NULL),(1738,21,40,2,NULL),(1739,23,40,2,NULL),(1740,25,40,2,NULL),(1741,28,40,2,NULL),(1742,29,40,2,NULL),(1743,20,41,2,NULL),(1744,21,41,2,NULL),(1745,23,41,2,NULL),(1746,25,41,2,NULL),(1747,28,41,2,NULL),(1748,29,41,2,NULL),(1749,20,42,2,NULL),(1750,21,42,2,NULL),(1751,23,42,2,NULL),(1752,25,42,2,NULL),(1753,28,42,2,NULL),(1754,29,42,2,NULL),(1755,20,43,2,NULL),(1756,21,43,2,NULL),(1757,23,43,2,NULL),(1758,25,43,2,NULL),(1759,28,43,2,NULL),(1760,29,43,2,NULL),(1761,33,6,2,NULL),(1762,33,13,2,NULL),(1763,33,23,2,NULL),(1764,33,27,2,NULL),(1765,33,53,2,NULL),(1766,22,29,2,NULL),(1767,22,32,2,NULL),(1768,22,61,2,NULL),(1769,35,31,2,NULL),(1770,39,34,2,NULL),(1771,41,35,2,NULL),(1772,49,37,2,NULL),(1773,55,30,2,NULL),(1774,58,33,2,NULL),(1775,22,26,2,NULL),(1776,53,26,2,NULL),(1777,57,38,2,NULL),(1778,34,26,2,NULL),(1779,44,26,2,NULL),(1780,40,26,2,NULL),(1781,47,26,2,NULL),(1782,37,26,2,NULL),(1783,56,26,2,NULL),(1784,45,26,2,NULL),(1785,48,30,2,NULL),(1786,51,36,2,NULL),(1787,42,35,2,NULL),(1788,50,35,2,NULL),(1789,59,30,2,NULL),(1790,36,26,2,NULL),(1791,43,30,2,NULL),(1792,52,30,2,NULL),(1793,54,30,2,NULL),(1794,22,40,2,NULL),(1795,46,39,2,NULL),(1796,22,41,2,NULL),(1797,38,39,2,NULL),(1798,22,42,2,NULL),(1799,22,43,2,NULL),(1800,22,18,2,NULL),(1801,22,24,2,NULL),(1802,22,28,2,NULL),(1803,22,60,2,NULL),(1804,26,6,2,NULL),(1805,26,13,2,NULL),(1806,26,23,2,NULL),(1807,26,27,2,NULL),(1808,26,53,2,NULL);
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

-- Dump completed on 2015-10-12  3:29:21
