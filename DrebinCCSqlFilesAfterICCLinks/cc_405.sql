-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_405
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (19,'(.*)'),(32,'.ImageTestActivity'),(28,'.Myhall'),(24,'.Web'),(20,'NULL-CONSTANT'),(18,'about_online'),(2,'android.intent.action.BOOT_COMPLETED'),(21,'android.intent.action.CALL'),(23,'android.intent.action.CHOOSER'),(22,'android.intent.action.DELETE'),(6,'android.intent.action.EDIT'),(1,'android.intent.action.MAIN'),(29,'android.intent.action.PACKAGE_ADDED'),(30,'android.intent.action.PACKAGE_REMOVED'),(3,'android.intent.action.VIEW'),(11,'android.provider.Telephony.SMS_RECEIVED'),(12,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(26,'com.stuningbeauty.GameBootReceiver'),(31,'com.stuningbeauty.ImageTestActivity'),(27,'com.stuningbeauty.Myhall'),(25,'com.stuningbeauty.Web'),(16,'comment_post'),(17,'comments'),(13,'posview'),(14,'posview_fullscreen'),(15,'posview_randome'),(7,'wbs.netsentry.ACTION_EDIT_PREFERENCES'),(10,'wbs.netsentry.ACTION_EXECUTE_SCHEDULED_ACTION'),(8,'wbs.netsentry.ACTION_RESET_COUNTERS'),(9,'wbs.netsentry.ACTION_UPDATE_COUNTERS'),(5,'wbs.netsentry.ui.ChartInterfaceStats'),(4,'wbs.netsentry.ui.InterfaceStatsList');
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
INSERT INTO `Applications` VALUES (1,'com.magicwach.rdefense',1798),(2,'com.splGUI',3),(3,'wbs.netsentry',4),(4,'com.stuningbeauty',10017),(5,'com.dseffects.MonkeyJump2',4),(6,'wbs.LocalService',1),(7,'com.swampy.sexpos',162);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.SAMPLE_CODE'),(6,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.magicwach.rdefense.TitleActivity'),(2,1,'com.magicwach.rdefense.GameActivity'),(3,1,'com.magicwach.rdefense.RewardActivity'),(4,1,'com.magicwach.rdefense.AchievementActivity'),(5,1,'com.magicwach.rdefense.CreditsActivity'),(6,1,'com.magicwach.rdefense.LevelSelectActivity'),(7,1,'com.magicwach.rdefense.MixerSelectActivity'),(8,1,'com.magicwach.rdefense.DebugActivity'),(9,1,'com.magicwach.rdefense.OptionsActivity'),(10,1,'com.geinimi.custom.Ad3020_30200001'),(11,1,'com.geinimi.custom.GoogleKeyboard'),(12,1,'com.geinimi.AdServiceReceiver'),(13,2,'com.splGUI.splMeter'),(14,2,'com.geinimi.custom.Ad3072_30720001'),(15,2,'com.geinimi.custom.GoogleKeyboard'),(16,2,'com.geinimi.AdServiceReceiver'),(17,3,'wbs.netsentry.logo.WbsLogoAct'),(18,3,'wbs.netsentry.ui.InterfaceStatsList'),(19,3,'wbs.netsentry.ui.ChartInterfaceStats'),(20,3,'wbs.netsentry.ui.InterfaceStatsEditor'),(21,3,'wbs.netsentry.ui.ApplicationPreferences'),(22,4,'com.stuningbeauty.Myhall'),(23,3,'com.geinimi.custom.Ad00000005_2'),(24,4,'com.stuningbeauty.Web'),(25,3,'com.geinimi.AdService'),(26,4,'com.stuningbeauty.HomeActivity'),(27,3,'wbs.netsentry.backend.Resetter'),(28,4,'com.stuningbeauty.SortActivity1'),(29,4,'com.stuningbeauty.SortActivity2'),(30,3,'wbs.netsentry.backend.Updater'),(31,4,'com.stuningbeauty.SearchActivity'),(32,6,'wbs.LocalService.WbsLogoAct'),(33,4,'com.stuningbeauty.ManagerActivity'),(34,3,'wbs.netsentry.backend.scheduler.CronScheduler'),(35,5,'com.dseffects.MonkeyJump2.MonkeyJump2'),(36,6,'wbs.LocalService.LocalService'),(37,4,'com.stuningbeauty.GameInfo'),(38,5,'com.dseffects.MonkeyJump2.jump2.c.rufCuAtj'),(39,6,'wbs.LocalService.WbsMapActivity'),(40,3,'wbs.netsentry.backend.Bootstrapper'),(41,4,'com.stuningbeauty.TableClass'),(42,5,'com.dseffects.MonkeyJump2.jump2.c.AndroidIME'),(43,3,'com.geinimi.AdServiceReceiver'),(44,6,'com.geinimi.custom.Ad00000005_1'),(45,5,'com.dseffects.MonkeyJump2.jump2.f'),(46,4,'com.stuningbeauty.GameAlertDialog'),(47,6,'com.geinimi.AdService'),(48,4,'com.stuningbeauty.DevelopmentSettings'),(49,6,'com.geinimi.AdServiceReceiver'),(50,3,'wbs.netsentry.backend.InterfaceStatsProvider'),(51,4,'com.stuningbeauty.qimg.ImageTestActivity'),(52,4,'com.stuningbeauty.qimg.ADactivity'),(53,4,'com.stuningbeauty.GameService'),(54,4,'com.stuningbeauty.GameBootReceiver'),(55,7,'com.swampy.sexpos.SexPos'),(56,7,'com.swampy.sexpos.PosView'),(57,7,'com.swampy.sexpos.PosView_fullscreen'),(58,7,'com.swampy.sexpos.PosView_randome'),(59,7,'com.swampy.sexpos.Comment_post'),(60,7,'com.swampy.sexpos.Comments'),(61,7,'com.swampy.sexpos.about_online'),(62,7,'com.swampy.sexpos.pos.c.rzzuoyuj'),(63,7,'com.swampy.sexpos.pos.c.AndroidIME'),(64,7,'com.swampy.sexpos.pos.f'),(65,2,'com.geinimi.c.b'),(66,2,'com.geinimi.AdService'),(67,2,'com.geinimi.AdActivity'),(68,2,'com.geinimi.c.j'),(69,5,'com.dseffects.MonkeyJump2.jump2.e'),(70,2,'com.geinimi.ads.c'),(71,5,'com.dseffects.MonkeyJump2.jump2.h'),(72,5,'com.dseffects.MonkeyJump2.jump2.q'),(73,5,'com.dseffects.MonkeyJump2.jump2.e.b'),(74,6,'com.geinimi.AdActivity'),(75,6,'wbs.LocalService.LocalService$3'),(76,6,'com.geinimi.c.b'),(77,6,'com.geinimi.c.e'),(78,6,'com.geinimi.ads.c'),(79,6,'wbs.LocalService.LocalService$4'),(80,3,'com.geinimi.ads.c'),(81,3,'com.geinimi.c.b'),(82,3,'wbs.netsentry.backend.Bootstrapper$1'),(83,3,'wbs.netsentry.ui.InterfaceStatsEditor$2'),(84,3,'com.geinimi.AdActivity'),(85,4,'bx'),(86,7,'com.swampy.sexpos.PosView$3'),(87,3,'com.geinimi.c.e'),(88,4,'cx'),(89,7,'com.swampy.sexpos.pos.q'),(90,4,'dk'),(91,7,'com.swampy.sexpos.PosView_randome$1'),(92,7,'com.swampy.sexpos.Comments$2'),(93,4,'an'),(94,4,'aa'),(95,7,'com.swampy.sexpos.pos.e'),(96,7,'com.swampy.sexpos.pos.h'),(97,4,'ah'),(98,7,'com.swampy.sexpos.pos.e.b'),(99,4,'a'),(100,7,'com.swampy.sexpos.PosView$5'),(101,7,'com.swampy.sexpos.PosView$4'),(102,7,'com.swampy.sexpos.SexPos$4'),(103,4,'di'),(104,4,'ba'),(105,4,'dh'),(106,4,'cd');
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,14,'ACTIVITY_PARAM_KEY'),(2,14,'did'),(3,15,'did'),(4,38,'ptid'),(5,38,'salesid'),(6,14,'salesid'),(7,15,'salesid'),(8,14,'ptid'),(9,38,'cpid'),(10,15,'ptid'),(11,38,'ACTIVITY_PARAM_KEY'),(12,45,'pdus'),(13,38,'did'),(14,14,'cpid'),(15,15,'cpid'),(16,44,'cpid'),(17,47,'cpid'),(18,44,'ACTIVITY_PARAM_URL_KEY'),(19,44,'ACTIVITY_PARAM_KEY'),(20,44,'ptid'),(21,47,'ptid'),(22,25,'cpid'),(23,23,'cpid'),(24,23,'ACTIVITY_PARAM_URL_KEY'),(25,29,'status'),(26,22,'service_channel'),(27,24,'service_channel'),(28,51,'service_channel'),(29,34,'cron.expression'),(30,33,'status'),(31,37,'filepath'),(32,23,'ACTIVITY_PARAM_KEY'),(33,29,'nextclassid'),(34,33,'package_name'),(35,33,'soft_id'),(36,19,'deviceName'),(37,60,'did'),(38,62,'did'),(39,56,'pos_id'),(40,60,'posid'),(41,60,'cpid'),(42,62,'cpid'),(43,25,'ptid'),(44,23,'ptid'),(45,34,'target.intent'),(46,64,'pdus'),(47,62,'ACTIVITY_PARAM_KEY'),(48,46,'url'),(49,60,'ptid'),(50,62,'ptid'),(51,59,'posname'),(52,60,'salesid'),(53,62,'salesid'),(54,60,'posname'),(55,29,'package_name'),(56,59,'posid'),(57,57,'posid'),(58,33,'icon'),(59,33,'total'),(60,37,'title'),(61,33,'url'),(62,33,'filepath'),(63,33,'completed'),(64,58,'running'),(65,57,'posname'),(66,22,'nextclassid'),(67,46,'title'),(68,53,'service_channel'),(69,33,'app_name'),(70,37,'from_alert'),(71,31,'version_code'),(72,46,'content'),(73,37,'from_table'),(74,37,'status'),(75,31,'package_name'),(76,46,'btn_txt'),(77,31,'status');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'s',0,14,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'s',0,14,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,14,NULL),(26,26,'a',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'s',0,14,NULL),(43,43,'r',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,14,NULL),(48,48,'a',1,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'p',0,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'s',1,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',1,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',1,NULL,NULL),(61,61,'a',1,NULL,NULL),(62,62,'a',1,NULL,NULL),(63,63,'s',0,14,NULL),(64,64,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,15),(2,2,15),(3,3,14),(4,4,15),(5,5,42),(6,6,15),(7,7,15),(8,8,38),(9,9,15),(10,10,38),(11,10,45),(12,11,15),(13,12,15),(14,13,42),(15,14,14),(16,15,16),(17,16,15),(18,17,44),(19,18,36),(20,19,47),(21,20,47),(22,21,47),(23,22,47),(24,23,32),(25,24,44),(26,25,36),(27,26,47),(28,27,47),(29,28,49),(30,29,30),(31,30,30),(32,31,50),(33,32,18),(34,33,25),(35,34,25),(36,35,18),(37,35,40),(38,36,20),(39,37,34),(40,38,30),(41,39,20),(42,40,20),(43,41,17),(44,42,40),(45,42,18),(46,43,33),(47,44,30),(48,45,46),(49,46,18),(50,46,20),(51,47,50),(52,48,23),(53,49,31),(54,51,27),(55,50,56),(56,52,33),(57,53,23),(58,54,51),(59,55,25),(60,56,24),(61,57,18),(62,57,40),(63,58,25),(64,59,26),(65,60,20),(66,62,20),(67,61,62),(68,61,64),(69,63,33),(70,64,18),(71,65,25),(72,66,60),(73,67,25),(74,68,22),(75,70,50),(76,69,58),(77,71,30),(78,72,22),(79,73,60),(80,74,43),(81,75,37),(82,76,18),(83,77,55),(84,78,55),(85,79,29),(86,80,63),(87,81,26),(88,82,62),(89,83,52),(90,84,63),(91,85,46),(92,85,41),(93,86,56),(94,87,26),(95,88,55),(96,89,54),(97,90,56),(98,91,22),(99,92,55),(100,93,29),(101,94,22),(102,95,37),(103,96,22),(104,97,31),(105,98,26),(106,99,22),(107,100,26),(108,101,41),(109,102,24),(110,103,29),(111,104,46),(112,105,37),(113,106,54),(114,107,41),(115,108,26),(116,109,29),(117,110,29),(118,111,22),(119,112,37),(120,113,46),(121,114,51),(122,115,51),(123,116,37),(124,117,41),(125,117,46),(126,118,54),(127,119,52),(128,120,24),(129,121,29),(130,122,52),(131,123,37),(132,124,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,65,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(2,66,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(3,67,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(4,68,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(5,69,'<com.dseffects.MonkeyJump2.jump2.e: void onDestroy()>',13,'s',NULL),(6,70,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(7,65,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(8,71,'<com.dseffects.MonkeyJump2.jump2.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(9,65,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(10,72,'<com.dseffects.MonkeyJump2.jump2.q: void run()>',15,'s',NULL),(11,65,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(12,65,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(13,73,'<com.dseffects.MonkeyJump2.jump2.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(14,67,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(15,16,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(16,65,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(17,74,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',20,'s',NULL),(18,75,'<wbs.LocalService.LocalService$3: void onClick(android.view.View)>',11,'a',NULL),(19,47,'<com.geinimi.AdService: void onDestroy()>',6,'s',NULL),(20,76,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(21,77,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(22,78,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(23,74,'<com.geinimi.AdActivity: void startAdService(android.content.Context)>',7,'s',NULL),(24,74,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',28,'a',NULL),(25,79,'<wbs.LocalService.LocalService$4: void onClick(android.view.View)>',28,'a',NULL),(26,76,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(27,76,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(28,49,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(29,30,'<wbs.netsentry.backend.Updater: void onReceive(android.content.Context,android.content.Intent)>',72,'p',NULL),(30,30,'<wbs.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',26,'p',NULL),(31,50,'<wbs.netsentry.backend.InterfaceStatsProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(32,18,'<wbs.netsentry.ui.InterfaceStatsList: void onResume()>',4,'r',NULL),(33,80,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(34,81,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(35,82,'<wbs.netsentry.backend.Bootstrapper$1: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',23,'p',NULL),(36,20,'<wbs.netsentry.ui.InterfaceStatsEditor: void onResume()>',9,'r',NULL),(37,34,'<wbs.netsentry.backend.scheduler.CronScheduler: void onReceive(android.content.Context,android.content.Intent)>',12,'r',0),(38,30,'<wbs.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',52,'p',NULL),(39,20,'<wbs.netsentry.ui.InterfaceStatsEditor: void onResume()>',6,'p',0),(40,83,'<wbs.netsentry.ui.InterfaceStatsEditor$2: void onClick(android.view.View)>',9,'a',NULL),(41,84,'<com.geinimi.AdActivity: void startAdService(android.content.Context)>',7,'s',NULL),(42,40,'<wbs.netsentry.backend.Bootstrapper: boolean initializeSystem(android.content.Context)>',10,'p',NULL),(43,85,'<bx: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(44,30,'<wbs.netsentry.backend.Updater: boolean updateInterfaceStats(android.content.Context)>',104,'p',NULL),(45,46,'<com.stuningbeauty.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(46,27,'<wbs.netsentry.backend.Resetter: void broadcastResetIntent(android.content.Context,android.net.Uri)>',3,'r',NULL),(47,50,'<wbs.netsentry.backend.InterfaceStatsProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',34,'p',NULL),(48,84,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',22,'s',NULL),(49,31,'<com.stuningbeauty.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(50,86,'<com.swampy.sexpos.PosView$3: void onClick(android.view.View)>',46,'a',NULL),(51,27,'<wbs.netsentry.backend.Resetter: void onReceive(android.content.Context,android.content.Intent)>',31,'p',0),(52,33,'<com.stuningbeauty.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(53,84,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(54,51,'<com.stuningbeauty.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(55,87,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(56,24,'<com.stuningbeauty.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(57,82,'<wbs.netsentry.backend.Bootstrapper$1: void onSharedPreferenceChanged(android.content.SharedPreferences,java.lang.String)>',42,'p',NULL),(58,25,'<com.geinimi.AdService: void onDestroy()>',7,'s',NULL),(59,88,'<cx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(60,20,'<wbs.netsentry.ui.InterfaceStatsEditor: void updateGui()>',5,'p',0),(61,89,'<com.swampy.sexpos.pos.q: void run()>',15,'s',NULL),(62,20,'<wbs.netsentry.ui.InterfaceStatsEditor: android.app.Dialog onCreateDialog(int)>',8,'p',0),(63,85,'<bx: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(64,18,'<wbs.netsentry.ui.InterfaceStatsList: void startEditorActivity(android.net.Uri)>',4,'a',NULL),(65,81,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',14,'p',NULL),(66,60,'<com.swampy.sexpos.Comments: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(67,81,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',25,'p',0),(68,90,'<dk: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(69,91,'<com.swampy.sexpos.PosView_randome$1: void onClick(android.view.View)>',25,'a',NULL),(70,50,'<wbs.netsentry.backend.InterfaceStatsProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',21,'p',0),(71,30,'<wbs.netsentry.backend.Updater: void onReceive(android.content.Context,android.content.Intent)>',10,'p',NULL),(72,90,'<dk: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(73,92,'<com.swampy.sexpos.Comments$2: void onClick(android.view.View)>',11,'a',NULL),(74,43,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(75,93,'<an: void onClick(android.view.View)>',205,'a',NULL),(76,18,'<wbs.netsentry.ui.InterfaceStatsList: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(77,55,'<com.swampy.sexpos.SexPos: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',13,'a',NULL),(78,55,'<com.swampy.sexpos.SexPos: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(79,94,'<aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(80,95,'<com.swampy.sexpos.pos.e: void onDestroy()>',13,'s',NULL),(81,88,'<cx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(82,96,'<com.swampy.sexpos.pos.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(83,97,'<ah: void onClick(android.view.View)>',6,'a',NULL),(84,98,'<com.swampy.sexpos.pos.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(85,99,'<a: void a(int,boolean)>',10,'s',NULL),(86,100,'<com.swampy.sexpos.PosView$5: void onClick(android.view.View)>',12,'a',NULL),(87,88,'<cx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(88,55,'<com.swampy.sexpos.SexPos: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(89,54,'<com.stuningbeauty.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(90,101,'<com.swampy.sexpos.PosView$4: void onClick(android.view.View)>',24,'a',NULL),(91,22,'<com.stuningbeauty.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(92,102,'<com.swampy.sexpos.SexPos$4: void onClick(android.view.View)>',8,'a',NULL),(93,29,'<com.stuningbeauty.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(94,90,'<dk: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(95,37,'<com.stuningbeauty.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(96,22,'<com.stuningbeauty.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(97,31,'<com.stuningbeauty.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(98,26,'<com.stuningbeauty.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(99,103,'<di: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(100,26,'<com.stuningbeauty.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(101,41,'<com.stuningbeauty.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(102,104,'<ba: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(103,94,'<aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(104,46,'<com.stuningbeauty.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(105,37,'<com.stuningbeauty.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(106,54,'<com.stuningbeauty.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(107,41,'<com.stuningbeauty.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(108,26,'<com.stuningbeauty.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(109,105,'<dh: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(110,94,'<aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(111,90,'<dk: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(112,37,'<com.stuningbeauty.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(113,46,'<com.stuningbeauty.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(114,106,'<cd: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(115,51,'<com.stuningbeauty.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(116,93,'<an: void onClick(android.view.View)>',224,'a',NULL),(117,99,'<a: void a(int,boolean)>',29,'a',NULL),(118,54,'<com.stuningbeauty.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(119,52,'<com.stuningbeauty.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(120,24,'<com.stuningbeauty.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(121,29,'<com.stuningbeauty.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(122,52,'<com.stuningbeauty.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(123,37,'<com.stuningbeauty.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(124,46,'<com.stuningbeauty.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,3,19),(2,4,20),(3,12,21),(4,13,21),(5,15,19),(6,16,20),(7,21,9),(8,22,9),(9,25,22),(10,26,3),(11,27,8),(12,28,3),(13,32,23),(14,34,23),(15,36,23),(16,37,19),(17,38,23),(18,39,20),(19,40,23),(20,41,24),(21,42,23),(22,43,25),(23,44,23),(24,46,23),(25,49,1),(26,50,6),(27,51,1),(28,52,16),(29,54,13),(30,56,16),(31,58,3),(32,59,7),(33,60,13),(34,61,3),(35,62,15),(36,65,3),(37,70,14),(38,72,3),(39,73,26),(40,74,17),(41,76,15),(42,80,27),(43,81,28),(44,84,3),(45,87,3),(46,91,26),(47,92,1),(48,93,1),(49,94,3),(50,96,3),(51,99,12),(52,100,3),(53,101,31),(54,102,32),(55,103,1),(56,104,1),(57,105,1),(58,106,1),(59,112,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,49,1),(2,51,4),(3,72,5),(4,92,1),(5,93,4),(6,103,1),(7,104,4),(8,105,1),(9,106,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'(.*)'),(2,2,'(.*)'),(3,5,'(.*)'),(4,6,'(.*)'),(5,7,'(.*)'),(6,8,'(.*)'),(7,9,'(.*)'),(8,10,'(.*)'),(9,11,'com/geinimi/AdService'),(10,14,'com/geinimi/AdService'),(11,17,'com/geinimi/AdService'),(12,18,'(.*)'),(13,19,'wbs/LocalService/WbsMapActivity'),(14,20,'com/geinimi/AdService'),(15,23,'wbs/netsentry/ui/ChartInterfaceStats'),(16,24,'com/geinimi/AdService'),(17,29,'com/geinimi/AdService'),(18,30,'com/stuningbeauty/GameInfo'),(19,31,'com/stuningbeauty/GameService'),(20,33,'(.*)'),(21,35,'com/stuningbeauty/GameService'),(22,41,'com/stuningbeauty/GameService'),(23,43,'com/stuningbeauty/GameService'),(24,45,'com/geinimi/AdService'),(25,47,'com/stuningbeauty/GameInfo'),(26,48,'(.*)'),(27,53,'com/stuningbeauty/Myhall'),(28,55,'com/stuningbeauty/Myhall'),(29,57,'com/geinimi/AdService'),(30,64,'(.*)'),(31,63,'com/stuningbeauty/Myhall'),(32,66,'(.*)'),(33,67,'com/stuningbeauty/qimg/ImageTestActivity'),(34,68,'(.*)'),(35,69,'com/stuningbeauty/GameService'),(36,71,'com/stuningbeauty/Myhall'),(37,72,'com.android.browser.BrowserActivity'),(38,73,'com/stuningbeauty/GameService'),(39,75,'com/stuningbeauty/GameService'),(40,77,'com/stuningbeauty/GameService'),(41,78,'com/stuningbeauty/Myhall'),(42,79,'com/stuningbeauty/Myhall'),(43,80,'com/stuningbeauty/GameService'),(44,81,'com/stuningbeauty/GameService'),(45,82,'com/stuningbeauty/GameService'),(46,83,'com/stuningbeauty/Myhall'),(47,85,'com/stuningbeauty/GameInfo'),(48,86,'com/stuningbeauty/GameInfo'),(49,88,'com/stuningbeauty/GameInfo'),(50,89,'com/stuningbeauty/GameInfo'),(51,90,'com/stuningbeauty/GameService'),(52,91,'com/stuningbeauty/GameService'),(53,95,'com/stuningbeauty/Myhall'),(54,97,'com/stuningbeauty/Myhall'),(55,98,'com/stuningbeauty/Myhall'),(56,101,'com/stuningbeauty/GameService'),(57,102,'com/stuningbeauty/GameService'),(58,107,'com/stuningbeauty/Myhall'),(59,108,'com/stuningbeauty/GameService'),(60,109,'com/stuningbeauty/GameInfo'),(61,110,'com/stuningbeauty/GameService'),(62,111,'com/stuningbeauty/GameInfo'),(63,113,'com/stuningbeauty/Myhall'),(64,114,'com/stuningbeauty/GameAlertDialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,12,7),(2,13,8),(3,25,20),(4,26,21),(5,27,22),(6,28,23),(7,50,26),(8,58,29),(9,61,30),(10,65,31),(11,72,32),(12,84,33),(13,87,34),(14,94,35),(15,96,36),(16,100,37),(17,112,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'android.intent.extra.shortcut.NAME'),(2,3,'android.intent.extra.shortcut.ICON'),(3,3,'android.intent.extra.shortcut.INTENT'),(4,4,'android.intent.extra.shortcut.NAME'),(5,4,'android.intent.extra.shortcut.ICON'),(6,4,'android.intent.extra.shortcut.INTENT'),(7,15,'android.intent.extra.shortcut.NAME'),(8,15,'android.intent.extra.shortcut.ICON'),(9,15,'android.intent.extra.shortcut.INTENT'),(10,16,'android.intent.extra.shortcut.NAME'),(11,16,'android.intent.extra.shortcut.ICON'),(12,16,'android.intent.extra.shortcut.INTENT'),(13,19,'buildingname'),(14,19,'address'),(15,19,'longitude'),(16,19,'latitude'),(17,23,'deviceName'),(18,32,'android.intent.extra.INTENT'),(19,34,'android.intent.extra.INTENT'),(20,36,'android.intent.extra.TITLE'),(21,36,'android.intent.extra.INTENT'),(22,37,'android.intent.extra.shortcut.NAME'),(23,37,'android.intent.extra.shortcut.ICON'),(24,38,'android.intent.extra.INTENT'),(25,37,'android.intent.extra.shortcut.INTENT'),(26,39,'android.intent.extra.shortcut.NAME'),(27,40,'android.intent.extra.TITLE'),(28,39,'android.intent.extra.shortcut.ICON'),(29,40,'android.intent.extra.INTENT'),(30,39,'android.intent.extra.shortcut.INTENT'),(31,42,'android.intent.extra.INTENT'),(32,44,'android.intent.extra.TITLE'),(33,44,'android.intent.extra.INTENT'),(34,46,'android.intent.extra.TITLE'),(35,46,'android.intent.extra.INTENT'),(36,47,'title'),(37,52,'posid'),(38,53,'clicked'),(39,54,'pos_id'),(40,55,'clicked'),(41,56,'posname'),(42,56,'posid'),(43,60,'pos_id'),(44,63,'title'),(45,63,'nextclassid'),(46,63,'clicked'),(47,71,'title'),(48,70,'posname'),(49,71,'nextclassid'),(50,70,'posid'),(51,71,'clicked'),(52,74,'posname'),(53,74,'posid'),(54,78,'clicked'),(55,83,'nextclassid'),(56,83,'clicked'),(57,88,'title'),(58,89,'id'),(59,89,'from_alert'),(60,89,'detail_flag'),(61,95,'title'),(62,95,'nextclassid'),(63,95,'clicked'),(64,97,'clicked'),(65,111,'title'),(66,114,'title'),(67,114,'btn_txt'),(68,114,'need_adb_flag'),(69,114,'cont'),(70,114,'close_flag');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,5,1),(4,6,2),(5,7,1),(6,8,3),(7,9,4),(8,10,5),(9,11,3),(10,11,6),(11,12,7),(12,13,8),(13,14,1),(14,15,1),(15,16,9),(16,17,1),(17,18,1),(18,20,10),(19,21,1),(20,22,1),(21,23,1),(22,24,2),(23,25,1),(24,26,2),(25,27,11),(26,28,2),(27,29,12),(28,30,2),(29,31,1),(30,32,1),(31,33,2),(32,35,13),(33,36,14),(34,37,15),(35,38,16),(36,39,17),(37,40,18),(38,41,1),(39,42,11),(40,43,2),(41,44,29),(42,45,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,2),(9,9,2),(10,10,2),(11,11,2),(12,12,2),(13,17,1),(14,19,1),(15,22,1),(16,23,3),(17,26,1),(18,28,1),(19,30,1),(20,31,1),(21,32,1),(22,34,1),(23,35,2),(24,36,2),(25,37,2),(26,38,2),(27,39,2),(28,40,2),(29,41,1),(30,43,1),(31,44,6),(32,45,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,8,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','interfacestats'),(2,11,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','interfacestats'),(3,13,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','interfacestats'),(4,20,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','*'),(5,44,'package',NULL,NULL,NULL,NULL,NULL),(6,45,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,58,'application','vnd.android.package-archive'),(2,61,'application','vnd.android.package-archive'),(3,84,'application','vnd.android.package-archive'),(4,87,'application','vnd.android.package-archive'),(5,100,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.splGUI'),(2,2,'com.splGUI'),(3,5,'com.dseffects.MonkeyJump2'),(4,6,'com.dseffects.MonkeyJump2'),(5,7,'com.dseffects.MonkeyJump2'),(6,8,'(.*)'),(7,9,'com.splGUI'),(8,10,'com.splGUI'),(9,11,'wbs.LocalService'),(10,14,'wbs.LocalService'),(11,17,'wbs.LocalService'),(12,18,'wbs.LocalService'),(13,19,'wbs.LocalService'),(14,20,'wbs.LocalService'),(15,23,'wbs.netsentry'),(16,24,'wbs.netsentry'),(17,29,'wbs.netsentry'),(18,30,'com.stuningbeauty'),(19,31,'com.stuningbeauty'),(20,33,'wbs.netsentry'),(21,35,'com.stuningbeauty'),(22,41,'com.stuningbeauty'),(23,43,'com.stuningbeauty'),(24,45,'wbs.netsentry'),(25,47,'com.stuningbeauty'),(26,48,'com.swampy.sexpos'),(27,49,'NULL-CONSTANT'),(28,51,'NULL-CONSTANT'),(29,53,'com.stuningbeauty'),(30,55,'com.stuningbeauty'),(31,57,'wbs.netsentry'),(32,64,'com.swampy.sexpos'),(33,63,'com.stuningbeauty'),(34,66,'com.swampy.sexpos'),(35,67,'com.stuningbeauty'),(36,68,'(.*)'),(37,69,'com.stuningbeauty'),(38,71,'com.stuningbeauty'),(39,72,'com.android.browser'),(40,73,'com.stuningbeauty'),(41,75,'com.stuningbeauty'),(42,77,'com.stuningbeauty'),(43,78,'com.stuningbeauty'),(44,79,'com.stuningbeauty'),(45,80,'com.stuningbeauty'),(46,81,'com.stuningbeauty'),(47,82,'com.stuningbeauty'),(48,83,'com.stuningbeauty'),(49,85,'com.stuningbeauty'),(50,86,'com.stuningbeauty'),(51,88,'com.stuningbeauty'),(52,89,'com.stuningbeauty'),(53,90,'com.stuningbeauty'),(54,91,'com.stuningbeauty'),(55,92,'(.*)'),(56,93,'(.*)'),(57,95,'com.stuningbeauty'),(58,97,'com.stuningbeauty'),(59,98,'com.stuningbeauty'),(60,101,'com.stuningbeauty'),(61,102,'com.stuningbeauty'),(62,103,'(.*)'),(63,104,''),(64,105,''),(65,106,'(.*)'),(66,107,'com.stuningbeauty'),(67,108,'com.stuningbeauty'),(68,109,'com.stuningbeauty'),(69,110,'com.stuningbeauty'),(70,111,'com.stuningbeauty'),(71,113,'com.stuningbeauty'),(72,114,'com.stuningbeauty');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,10,0),(3,12,0),(4,13,0),(5,14,0),(6,16,0),(7,17,0),(8,18,0),(9,18,0),(10,19,0),(11,20,0),(12,21,0),(13,27,0),(14,29,0),(15,31,0),(16,30,0),(17,32,0),(18,33,0),(19,35,0),(20,34,0),(21,37,0),(22,38,0),(23,39,0),(24,40,0),(25,41,0),(26,43,0),(27,45,0),(28,45,0),(29,48,0),(30,49,0),(31,51,0),(32,53,0),(33,54,0),(34,55,0),(35,56,0),(36,57,0),(37,58,0),(38,59,0),(39,60,0),(40,61,0),(41,62,0),(42,64,0),(43,64,0),(44,54,0),(45,54,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,3,0,0),(3,4,1,0),(4,4,1,0),(5,5,0,0),(6,8,0,0),(7,10,0,0),(8,13,0,0),(9,14,0,0),(10,15,0,0),(11,17,0,0),(12,18,1,0),(13,18,1,0),(14,19,0,0),(15,21,1,0),(16,21,1,0),(17,23,0,0),(18,24,0,0),(19,25,0,0),(20,28,0,0),(21,32,1,0),(22,36,1,0),(23,40,0,0),(24,41,0,0),(25,43,1,0),(26,45,1,0),(27,46,1,0),(28,45,1,0),(29,48,0,0),(30,49,0,0),(31,52,0,0),(32,50,1,0),(33,53,0,0),(34,50,1,0),(35,54,0,0),(36,50,1,0),(37,55,1,0),(38,50,1,0),(39,55,1,0),(40,50,1,0),(41,56,0,0),(42,50,1,0),(43,56,0,0),(44,50,1,0),(45,58,0,0),(46,50,1,0),(47,59,0,0),(48,61,0,0),(49,63,1,0),(50,64,1,0),(51,63,1,0),(52,66,1,0),(53,68,0,0),(54,69,1,0),(55,72,0,0),(56,73,1,0),(57,74,0,0),(58,75,1,0),(59,76,1,0),(60,77,1,0),(61,75,1,0),(62,78,1,0),(63,79,0,0),(64,80,0,0),(65,81,1,0),(66,82,0,0),(67,83,0,0),(68,84,0,0),(69,85,0,0),(70,86,1,0),(71,87,0,0),(72,88,0,0),(73,89,0,0),(74,90,1,0),(75,91,0,0),(76,92,1,0),(77,93,0,0),(78,94,0,0),(79,95,0,0),(80,96,0,0),(81,96,0,0),(82,97,0,0),(83,98,0,0),(84,99,1,0),(85,100,0,0),(86,101,0,0),(87,102,1,0),(88,103,0,0),(89,104,0,0),(90,105,0,0),(91,106,0,0),(92,107,1,0),(93,107,1,0),(94,108,1,0),(95,109,0,0),(96,110,1,0),(97,111,0,0),(98,112,0,0),(99,113,1,0),(100,114,1,0),(101,115,0,0),(102,115,0,0),(103,116,1,0),(104,116,1,0),(105,116,1,0),(106,116,1,0),(107,117,0,0),(108,118,0,0),(109,119,0,0),(110,120,0,0),(111,121,0,0),(112,122,1,0),(113,123,0,0),(114,124,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=510 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,21,13,2,NULL),(2,59,13,2,NULL),(3,22,13,2,NULL),(4,94,13,2,NULL),(5,92,13,2,NULL),(6,93,13,2,NULL),(7,26,13,2,NULL),(8,28,13,2,NULL),(9,99,13,2,NULL),(10,112,13,2,NULL),(11,60,13,2,NULL),(12,62,13,2,NULL),(13,52,13,2,NULL),(14,21,14,2,NULL),(15,59,14,2,NULL),(16,22,14,2,NULL),(17,94,14,2,NULL),(18,92,14,2,NULL),(19,93,14,2,NULL),(20,26,14,2,NULL),(21,28,14,2,NULL),(22,99,14,2,NULL),(23,112,14,2,NULL),(24,60,14,2,NULL),(25,62,14,2,NULL),(26,52,14,2,NULL),(27,21,16,2,NULL),(28,59,16,2,NULL),(29,22,16,2,NULL),(30,94,16,2,NULL),(31,92,16,2,NULL),(32,93,16,2,NULL),(33,26,16,2,NULL),(34,28,16,2,NULL),(35,99,16,2,NULL),(36,112,16,2,NULL),(37,60,16,2,NULL),(38,62,16,2,NULL),(39,52,16,2,NULL),(40,60,1,2,NULL),(41,62,1,2,NULL),(42,60,10,2,NULL),(43,62,10,2,NULL),(44,60,12,2,NULL),(45,62,12,2,NULL),(46,60,17,2,NULL),(47,62,17,2,NULL),(48,60,18,2,NULL),(49,62,18,2,NULL),(50,21,55,2,NULL),(51,59,55,2,NULL),(52,60,19,2,NULL),(53,62,19,2,NULL),(54,22,55,2,NULL),(55,60,21,2,NULL),(56,62,21,2,NULL),(57,60,30,2,NULL),(58,62,30,2,NULL),(59,60,40,2,NULL),(60,62,40,2,NULL),(61,60,43,2,NULL),(62,62,43,2,NULL),(63,94,55,2,NULL),(64,60,29,2,NULL),(65,62,29,2,NULL),(66,60,31,2,NULL),(67,62,31,2,NULL),(68,60,33,2,NULL),(69,62,33,2,NULL),(70,60,37,2,NULL),(71,62,37,2,NULL),(72,60,41,2,NULL),(73,62,41,2,NULL),(74,92,55,2,NULL),(75,93,55,2,NULL),(76,26,55,2,NULL),(77,28,55,2,NULL),(78,99,55,2,NULL),(79,60,48,2,NULL),(80,62,48,2,NULL),(81,60,51,2,NULL),(82,62,51,2,NULL),(83,112,55,2,NULL),(84,60,53,2,NULL),(85,62,53,2,NULL),(86,60,54,2,NULL),(87,62,54,2,NULL),(88,60,35,2,NULL),(89,62,35,2,NULL),(90,60,38,2,NULL),(91,62,38,2,NULL),(92,60,45,2,NULL),(93,62,45,2,NULL),(94,60,32,2,NULL),(95,62,32,2,NULL),(96,60,39,2,NULL),(97,62,39,2,NULL),(98,60,49,2,NULL),(99,62,49,2,NULL),(100,60,56,2,NULL),(101,62,56,2,NULL),(102,60,57,2,NULL),(103,62,57,2,NULL),(104,60,58,2,NULL),(105,62,58,2,NULL),(106,60,59,2,NULL),(107,62,59,2,NULL),(108,60,60,2,NULL),(109,62,60,2,NULL),(110,52,55,2,NULL),(111,60,61,2,NULL),(112,62,61,2,NULL),(113,60,62,2,NULL),(114,62,62,2,NULL),(115,60,64,2,NULL),(116,62,64,2,NULL),(117,21,56,2,NULL),(118,59,56,2,NULL),(119,22,56,2,NULL),(120,94,56,2,NULL),(121,92,56,2,NULL),(122,93,56,2,NULL),(123,26,56,2,NULL),(124,28,56,2,NULL),(125,99,56,2,NULL),(126,112,56,2,NULL),(127,52,56,2,NULL),(128,21,57,2,NULL),(129,59,57,2,NULL),(130,22,57,2,NULL),(131,94,57,2,NULL),(132,92,57,2,NULL),(133,93,57,2,NULL),(134,26,57,2,NULL),(135,28,57,2,NULL),(136,99,57,2,NULL),(137,112,57,2,NULL),(138,52,57,2,NULL),(139,21,58,2,NULL),(140,59,58,2,NULL),(141,22,58,2,NULL),(142,94,58,2,NULL),(143,92,58,2,NULL),(144,21,1,2,NULL),(145,93,58,2,NULL),(146,59,1,2,NULL),(147,26,58,2,NULL),(148,22,1,2,NULL),(149,28,58,2,NULL),(150,94,1,2,NULL),(151,99,58,2,NULL),(152,92,1,2,NULL),(153,112,58,2,NULL),(154,93,1,2,NULL),(155,52,58,2,NULL),(156,26,1,2,NULL),(157,21,59,2,NULL),(158,28,1,2,NULL),(159,59,59,2,NULL),(160,99,1,2,NULL),(161,22,59,2,NULL),(162,112,1,2,NULL),(163,94,59,2,NULL),(164,52,1,2,NULL),(165,92,59,2,NULL),(166,21,10,2,NULL),(167,93,59,2,NULL),(168,59,10,2,NULL),(169,26,59,2,NULL),(170,22,10,2,NULL),(171,28,59,2,NULL),(172,94,10,2,NULL),(173,99,59,2,NULL),(174,92,10,2,NULL),(175,112,59,2,NULL),(176,93,10,2,NULL),(177,52,59,2,NULL),(178,26,10,2,NULL),(179,52,10,2,NULL),(180,28,10,2,NULL),(181,52,12,2,NULL),(182,99,10,2,NULL),(183,52,17,2,NULL),(184,112,10,2,NULL),(185,52,18,2,NULL),(186,21,12,2,NULL),(187,21,60,2,NULL),(188,59,12,2,NULL),(189,59,60,2,NULL),(190,22,12,2,NULL),(191,52,19,2,NULL),(192,94,12,2,NULL),(193,22,60,2,NULL),(194,92,12,2,NULL),(195,52,21,2,NULL),(196,93,12,2,NULL),(197,52,30,2,NULL),(198,26,12,2,NULL),(199,52,40,2,NULL),(200,28,12,2,NULL),(201,52,43,2,NULL),(202,99,12,2,NULL),(203,94,60,2,NULL),(204,112,12,2,NULL),(205,52,29,2,NULL),(206,52,31,2,NULL),(207,52,33,2,NULL),(208,52,37,2,NULL),(209,52,41,2,NULL),(210,92,60,2,NULL),(211,93,60,2,NULL),(212,26,60,2,NULL),(213,28,60,2,NULL),(214,99,60,2,NULL),(215,52,48,2,NULL),(216,52,51,2,NULL),(217,112,60,2,NULL),(218,52,53,2,NULL),(219,52,54,2,NULL),(220,52,35,2,NULL),(221,52,38,2,NULL),(222,52,45,2,NULL),(223,52,32,2,NULL),(224,52,39,2,NULL),(225,52,49,2,NULL),(226,52,61,2,NULL),(227,52,62,2,NULL),(228,52,64,2,NULL),(229,21,61,2,NULL),(230,59,61,2,NULL),(231,22,61,2,NULL),(232,94,61,2,NULL),(233,92,61,2,NULL),(234,93,61,2,NULL),(235,26,61,2,NULL),(236,28,61,2,NULL),(237,99,61,2,NULL),(238,112,61,2,NULL),(239,21,62,2,NULL),(240,59,62,2,NULL),(241,22,62,2,NULL),(242,94,62,2,NULL),(243,92,62,2,NULL),(244,93,62,2,NULL),(245,26,62,2,NULL),(246,28,62,2,NULL),(247,99,62,2,NULL),(248,112,62,2,NULL),(249,21,64,2,NULL),(250,59,64,2,NULL),(251,22,64,2,NULL),(252,94,64,2,NULL),(253,92,64,2,NULL),(254,93,64,2,NULL),(255,26,64,2,NULL),(256,28,64,2,NULL),(257,99,64,2,NULL),(258,112,64,2,NULL),(259,21,35,2,NULL),(260,21,32,2,NULL),(261,21,17,2,NULL),(262,59,35,2,NULL),(263,59,17,2,NULL),(264,59,32,2,NULL),(265,22,35,2,NULL),(266,22,17,2,NULL),(267,22,32,2,NULL),(268,94,35,2,NULL),(269,94,17,2,NULL),(270,94,32,2,NULL),(271,92,35,2,NULL),(272,92,17,2,NULL),(273,92,32,2,NULL),(274,93,35,2,NULL),(275,93,17,2,NULL),(276,93,32,2,NULL),(277,26,35,2,NULL),(278,26,17,2,NULL),(279,26,32,2,NULL),(280,28,17,2,NULL),(281,28,35,2,NULL),(282,28,32,2,NULL),(283,99,17,2,NULL),(284,99,35,2,NULL),(285,99,32,2,NULL),(286,112,17,2,NULL),(287,112,35,2,NULL),(288,112,32,2,NULL),(289,21,19,2,NULL),(290,21,38,2,NULL),(291,21,39,2,NULL),(292,59,19,2,NULL),(293,59,38,2,NULL),(294,59,39,2,NULL),(295,22,18,2,NULL),(296,22,38,2,NULL),(297,22,39,2,NULL),(298,21,21,2,NULL),(299,94,38,2,NULL),(300,94,39,2,NULL),(301,59,21,2,NULL),(302,92,38,2,NULL),(303,92,39,2,NULL),(304,21,30,2,NULL),(305,93,38,2,NULL),(306,93,39,2,NULL),(307,59,30,2,NULL),(308,26,38,2,NULL),(309,21,40,2,NULL),(310,26,39,2,NULL),(311,28,38,2,NULL),(312,59,40,2,NULL),(313,28,39,2,NULL),(314,99,38,2,NULL),(315,21,43,2,NULL),(316,112,38,2,NULL),(317,99,39,2,NULL),(318,59,43,2,NULL),(319,21,45,2,NULL),(320,112,39,2,NULL),(321,94,18,2,NULL),(322,59,45,2,NULL),(323,14,25,2,NULL),(324,21,29,2,NULL),(325,14,47,2,NULL),(326,22,45,2,NULL),(327,59,29,2,NULL),(328,20,25,2,NULL),(329,94,45,2,NULL),(330,21,31,2,NULL),(331,20,47,2,NULL),(332,92,45,2,NULL),(333,59,31,2,NULL),(334,21,49,2,NULL),(335,21,33,2,NULL),(336,93,45,2,NULL),(337,59,49,2,NULL),(338,59,33,2,NULL),(339,26,45,2,NULL),(340,21,37,2,NULL),(341,22,49,2,NULL),(342,28,45,2,NULL),(343,59,37,2,NULL),(344,94,49,2,NULL),(345,21,41,2,NULL),(346,99,45,2,NULL),(347,92,49,2,NULL),(348,59,41,2,NULL),(349,112,45,2,NULL),(350,93,49,2,NULL),(351,92,18,2,NULL),(352,26,49,2,NULL),(353,93,18,2,NULL),(354,28,49,2,NULL),(355,26,18,2,NULL),(356,99,49,2,NULL),(357,28,18,2,NULL),(358,112,49,2,NULL),(359,99,18,2,NULL),(360,21,48,2,NULL),(361,59,48,2,NULL),(362,21,51,2,NULL),(363,59,51,2,NULL),(364,112,18,2,NULL),(365,21,53,2,NULL),(366,59,53,2,NULL),(367,21,54,2,NULL),(368,59,54,2,NULL),(369,22,19,2,NULL),(370,94,19,2,NULL),(371,92,19,2,NULL),(372,93,19,2,NULL),(373,26,19,2,NULL),(374,28,19,2,NULL),(375,99,19,2,NULL),(376,112,19,2,NULL),(377,22,21,2,NULL),(378,22,30,2,NULL),(379,22,40,2,NULL),(380,22,43,2,NULL),(381,22,29,2,NULL),(382,22,31,2,NULL),(383,22,33,2,NULL),(384,22,37,2,NULL),(385,22,41,2,NULL),(386,22,48,2,NULL),(387,22,51,2,NULL),(388,22,53,2,NULL),(389,22,54,2,NULL),(390,94,21,2,NULL),(391,92,21,2,NULL),(392,93,21,2,NULL),(393,26,21,2,NULL),(394,28,21,2,NULL),(395,99,21,2,NULL),(396,112,21,2,NULL),(397,45,25,2,NULL),(398,45,47,2,NULL),(399,94,30,2,NULL),(400,92,30,2,NULL),(401,93,30,2,NULL),(402,26,30,2,NULL),(403,28,30,2,NULL),(404,99,30,2,NULL),(405,112,30,2,NULL),(406,94,40,2,NULL),(407,92,40,2,NULL),(408,93,40,2,NULL),(409,26,40,2,NULL),(410,28,40,2,NULL),(411,99,40,2,NULL),(412,112,40,2,NULL),(413,57,25,2,NULL),(414,57,47,2,NULL),(415,94,43,2,NULL),(416,92,43,2,NULL),(417,93,43,2,NULL),(418,26,43,2,NULL),(419,28,43,2,NULL),(420,99,43,2,NULL),(421,112,43,2,NULL),(422,75,53,2,NULL),(423,80,53,2,NULL),(424,81,53,2,NULL),(425,41,53,2,NULL),(426,43,53,2,NULL),(427,110,53,2,NULL),(428,83,22,2,NULL),(429,85,37,2,NULL),(430,94,29,2,NULL),(431,94,31,2,NULL),(432,94,33,2,NULL),(433,94,37,2,NULL),(434,94,41,2,NULL),(435,94,48,2,NULL),(436,94,51,2,NULL),(437,94,53,2,NULL),(438,94,54,2,NULL),(439,77,53,2,NULL),(440,111,37,2,NULL),(441,92,29,2,NULL),(442,93,29,2,NULL),(443,26,29,2,NULL),(444,28,29,2,NULL),(445,99,29,2,NULL),(446,112,29,2,NULL),(447,30,37,2,NULL),(448,82,53,2,NULL),(449,92,31,2,NULL),(450,93,31,2,NULL),(451,26,31,2,NULL),(452,28,31,2,NULL),(453,99,31,2,NULL),(454,112,31,2,NULL),(455,31,53,2,NULL),(456,92,33,2,NULL),(457,93,33,2,NULL),(458,26,33,2,NULL),(459,28,33,2,NULL),(460,99,33,2,NULL),(461,112,33,2,NULL),(462,79,22,2,NULL),(463,90,53,2,NULL),(464,98,22,2,NULL),(465,113,22,2,NULL),(466,92,37,2,NULL),(467,93,37,2,NULL),(468,26,37,2,NULL),(469,28,37,2,NULL),(470,99,37,2,NULL),(471,112,37,2,NULL),(472,86,37,2,NULL),(473,26,41,2,NULL),(474,28,41,2,NULL),(475,99,41,2,NULL),(476,92,48,2,NULL),(477,93,48,2,NULL),(478,92,51,2,NULL),(479,93,51,2,NULL),(480,112,41,2,NULL),(481,92,53,2,NULL),(482,93,53,2,NULL),(483,92,54,2,NULL),(484,93,54,2,NULL),(485,89,37,2,NULL),(486,114,46,2,NULL),(487,26,48,2,NULL),(488,28,48,2,NULL),(489,99,48,2,NULL),(490,26,51,2,NULL),(491,28,51,2,NULL),(492,99,51,2,NULL),(493,26,53,2,NULL),(494,28,53,2,NULL),(495,99,53,2,NULL),(496,26,54,2,NULL),(497,28,54,2,NULL),(498,99,54,2,NULL),(499,112,48,2,NULL),(500,35,53,2,NULL),(501,101,53,2,NULL),(502,102,53,2,NULL),(503,112,51,2,NULL),(504,109,37,2,NULL),(505,112,53,2,NULL),(506,112,54,2,NULL),(507,73,53,2,NULL),(508,91,53,2,NULL),(509,108,53,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'wbs.netsentry');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (21,'android.permission.ACCESS_CACHE_FILESYSTEM'),(6,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_GPS'),(3,'android.permission.ACCESS_LOCATION'),(24,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.CALL_PHONE'),(23,'android.permission.DELETE_CACHE_FILES'),(14,'android.permission.INTERNET'),(11,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(7,'android.permission.READ_CONTACTS'),(22,'android.permission.READ_LOGS'),(10,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(20,'android.permission.RECEIVE_BOOT_COMPLETED'),(27,'android.permission.RECEIVE_SMS'),(19,'android.permission.RECORD_AUDIO'),(28,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(29,'android.permission.VIBRATE'),(17,'android.permission.WAKE_LOCK'),(9,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(26,'android.permission.WRITE_SMS'),(18,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(15,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(25,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,30,50,NULL),(2,40,50,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,50,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(4,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(5,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(6,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(7,NULL,NULL,'tel:',NULL,NULL,NULL),(8,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(9,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(10,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(11,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(12,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(13,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(15,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(16,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(17,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(18,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(19,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(20,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(23,NULL,NULL,'',NULL,NULL,NULL),(24,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(25,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(26,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(27,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(28,NULL,NULL,'content://wbs.netsentry/interfacestats',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'http://mobile.swampyfoot.com/sex-positions',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'file://',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,6,2),(3,7,3),(4,9,4),(5,12,5),(6,16,6),(7,22,9),(8,26,10),(9,27,11),(10,29,12),(11,30,13),(12,33,14),(13,34,15),(14,35,16),(15,38,17),(16,42,18),(17,44,19),(18,47,24),(19,57,25),(20,65,27),(21,71,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,18),(19,2,1),(20,2,2),(21,2,3),(22,2,4),(23,2,5),(24,2,6),(25,2,7),(26,2,8),(27,2,9),(28,2,10),(29,2,11),(30,2,12),(31,2,13),(32,2,14),(33,2,15),(34,2,16),(35,2,19),(36,2,18),(37,3,1),(38,3,2),(39,3,4),(40,3,5),(41,3,7),(42,3,8),(43,3,9),(44,3,10),(45,3,11),(46,3,14),(47,3,15),(48,3,16),(49,3,18),(50,3,20),(51,4,1),(52,4,2),(53,4,21),(54,4,5),(55,4,20),(56,4,23),(57,4,22),(58,5,1),(59,4,25),(60,5,2),(61,4,24),(62,5,3),(63,4,10),(64,5,4),(65,4,14),(66,5,5),(67,6,1),(68,5,6),(69,6,2),(70,5,7),(71,6,4),(72,5,8),(73,6,5),(74,5,9),(75,6,6),(76,5,10),(77,6,7),(78,5,11),(79,6,8),(80,5,12),(81,6,9),(82,5,13),(83,6,10),(84,5,14),(85,6,11),(86,5,15),(87,6,14),(88,5,16),(89,6,15),(90,5,18),(91,6,16),(92,5,27),(93,6,18),(94,5,26),(95,5,29),(96,5,28),(97,7,1),(98,7,2),(99,7,3),(100,7,4),(101,7,5),(102,7,6),(103,7,7),(104,7,8),(105,7,9),(106,7,10),(107,7,11),(108,7,12),(109,7,13),(110,7,14),(111,7,15),(112,7,16),(113,7,18),(114,7,24),(115,7,27),(116,7,26),(117,7,28);
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

-- Dump completed on 2015-10-12  3:30:22
