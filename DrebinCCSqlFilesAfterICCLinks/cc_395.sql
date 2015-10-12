-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_395
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'(.*)'),(6,'NULL-CONSTANT'),(3,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.CALL'),(2,'android.intent.action.MAIN'),(9,'android.intent.action.VIEW'),(11,'android.net.conn.CONNECTIVITY_CHANGE'),(4,'android.provider.Telephony.SMS_RECEIVED'),(7,'com.xmobileapp.taskmanager.ACTION_LOADFINISH'),(1,'com.xmobileapp.taskmanager.TaskManager'),(10,'com/android/vending/licensing/ILicensingService');
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
INSERT INTO `Applications` VALUES (1,'wbs.logo',1),(2,'com.feasy.jewels.Gel',7),(3,'cmp.LocalService',1),(4,'com.lotsynergy',2),(5,'com.xTouch.game.Crazyhamster_Super',34),(6,'com.requiem.armoredStrike',254),(7,'com.outfit7.talkinghippo',3);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.ALTERNATIVE'),(2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.SAMPLE_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'wbs.logo.WbsLogoAct'),(2,1,'com.xmobileapp.taskmanager.TaskManager'),(3,1,'com.geinimi.custom.Ad0000_000004'),(4,1,'com.geinimi.AdService'),(5,1,'com.geinimi.AdServiceReceiver'),(6,2,'com.feasy.jewels.Gel.GMenu'),(7,2,'com.feasy.jewels.Gel.GameActivity'),(8,2,'com.feasy.jewels.Gel.OptionActivity'),(9,2,'com.feasy.jewels.Gel.ScoreList'),(10,2,'com.geinimi.custom.Ad3079_30790001'),(11,2,'com.geinimi.custom.GoogleKeyboard'),(12,2,'com.geinimi.AdServiceReceiver'),(13,3,'cmp.LocalService.LocalService'),(14,4,'com.lotsynergy.Main'),(15,3,'cmp.LocalService.cmpMapActivity'),(16,4,'com.lotsynergy.Contacts'),(17,4,'com.geinimi.custom.Ad3051_30510001'),(18,5,'com.xTouch.game.Crazyhamster_Super.Crazyhamster_Super'),(19,3,'cmp.LocalService.service.c.b'),(20,5,'com.geinimi.custom.Ad3080_30800001'),(21,4,'com.geinimi.custom.GoogleKeyboard'),(22,4,'com.geinimi.AdServiceReceiver'),(23,3,'cmp.LocalService.service.c.AndroidIME'),(24,5,'com.geinimi.custom.GoogleKeyboard'),(25,3,'cmp.LocalService.service.f'),(26,5,'com.geinimi.AdServiceReceiver'),(27,1,'com.geinimi.c.b'),(28,1,'com.geinimi.c.e'),(29,1,'com.xmobileapp.taskmanager.TaskManager$LoadFinishReceiver'),(30,1,'com.geinimi.ads.c'),(31,1,'com.geinimi.AdActivity'),(32,2,'com.geinimi.c.b'),(33,2,'com.geinimi.AdActivity'),(34,2,'com.geinimi.AdService'),(35,2,'com.feasy.jewels.Gel.GMenu$2'),(36,3,'cmp.LocalService.service.q'),(37,3,'cmp.LocalService.LocalService$4'),(38,2,'com.feasy.jewels.Gel.GMenu$1'),(39,4,'com.geinimi.c.b'),(40,3,'cmp.LocalService.service.e.b'),(41,4,'com.geinimi.c.j'),(42,3,'cmp.LocalService.service.h'),(43,3,'cmp.LocalService.LocalService$3'),(44,6,'com.requiem.armoredStrike.ArmoredStrike'),(45,6,'com.requiem.RSL.QuitGameDialog'),(46,6,'com.requiem.RSL.ReportBugDialog'),(47,4,'com.geinimi.AdActivity'),(48,2,'com.geinimi.c.j'),(49,6,'com.requiem.armoredStrike.Preferences'),(50,6,'com.requiem.RSL.PromotionWindow'),(51,6,'com.requiem.RSL.PromotionDialog'),(52,4,'com.geinimi.AdService'),(53,3,'cmp.LocalService.service.e'),(54,6,'com.requiem.RSL.RSLCreditsDialog'),(55,6,'com.requiem.armoredStrike.HelpDialog'),(56,6,'com.requiem.armoredStrike.LiteDialog'),(57,6,'com.requiem.RSL.OKAlert'),(58,6,'com.requiem.RSL.QuestionAlert'),(59,6,'com.requiem.RSL.RSLFbPostDialog'),(60,6,'com.requiem.rslMatchUp.PrivateGamePasswordDialog'),(61,6,'com.requiem.rslMatchUp.AdminControlDialog'),(62,6,'com.requiem.rslMatchUp.BroadcastMessageDialog'),(63,6,'com.requiem.rslMatchUp.UserSettingsDialog'),(64,6,'com.requiem.rslMatchUp.WaitingDialog'),(65,2,'com.geinimi.ads.c'),(66,6,'com.requiem.RSL.RSLIconSelector'),(67,6,'com.requiem.rslMatchUp.RSLSetUserDialog'),(68,6,'com.requiem.armoredStrike.CreateGameDialog'),(69,6,'com.requiem.armoredStrike.CameraSpeedDialog'),(70,6,'com.geinimi.custom.Ad3124_31240001'),(71,4,'com.geinimi.ads.c'),(72,6,'com.geinimi.custom.GoogleKeyboard'),(73,6,'com.geinimi.AdServiceReceiver'),(74,5,'com.geinimi.AdService'),(75,5,'com.xTouch.game.Crazyhamster_Super.Crazyhamster_Super$3'),(76,5,'com.android.vending.licensing.LicenseChecker'),(77,5,'com.geinimi.c.b'),(78,5,'com.geinimi.AdActivity'),(79,7,'com.outfit7.talkinghippo.Main'),(80,5,'com.geinimi.c.j'),(81,7,'com.outfit7.talkinghippo.BackgroundActivity'),(82,7,'com.outfit7.talkinghippo.AnimationPlayer'),(83,5,'com.geinimi.ads.c'),(84,7,'com.outfit7.talkinghippo.YouTubeLoginActivity'),(85,7,'com.outfit7.talkinghippo.Info'),(86,5,'com.xTouch.game.Crazyhamster_Super.Crazyhamster_Super$5'),(87,7,'com.outfit7.talkinghippo.VideoCommentActivity'),(88,7,'com.outfit7.talkinghippo.News'),(89,7,'com.outfit7.talkinghippo.VideoUploadedToFbActivity'),(90,7,'com.outfit7.talkinghippo.VideoUploadedToYtActivity'),(91,7,'com.outfit7.talkinghippo.Grid'),(92,5,'com.xTouch.game.Crazyhamster_Super.Crazyhamster_Super$1'),(93,7,'com.outfit7.talkinghippo.GridProxy'),(94,7,'com.outfit7.talkinghippo.Menu'),(95,7,'com.geinimi.custom.Ad3019_30190001'),(96,7,'com.geinimi.custom.GoogleKeyboard'),(97,7,'com.geinimi.AdServiceReceiver'),(98,7,'com.outfit7.talkinghippo.cd'),(99,7,'com.geinimi.c.b'),(100,7,'com.outfit7.talkinghippo.at'),(101,7,'com.outfit7.talkinghippo.by'),(102,7,'com.geinimi.ads.c'),(103,7,'com.outfit7.talkinghippo.bk'),(104,7,'com.geinimi.c.j'),(105,7,'com.geinimi.AdActivity'),(106,7,'com.geinimi.AdService'),(107,7,'com.android.vending.licensing.LicenseChecker'),(108,7,'com.outfit7.talkinghippo.au'),(109,6,'com.geinimi.c.b'),(110,6,'com.requiem.RSL.RSLConnectivityReceiver'),(111,6,'com.geinimi.AdActivity'),(112,6,'com.geinimi.c.j'),(113,6,'com.requiem.RSL.RSLLicensingWindow$1'),(114,6,'com.requiem.rslMatchUp.RSLMatchUpMainApp'),(115,6,'com.google.android.googlelogin.GoogleLoginServiceBlockingHelper'),(116,6,'com.requiem.RSL.PromotionDialog$1'),(117,6,'com.android.vending.licensing.LicenseChecker'),(118,6,'com.geinimi.ads.c'),(119,6,'com.requiem.armoredStrike.Preferences$1'),(120,6,'com.geinimi.AdService'),(121,6,'com.requiem.RSL.RSLIconPicker$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'ACTIVITY_PARAM_URL_KEY'),(2,3,'ptid'),(3,4,'ptid'),(4,3,'cpid'),(5,4,'cpid'),(6,3,'ACTIVITY_PARAM_KEY'),(7,6,'isVibrate'),(8,10,'did'),(9,11,'did'),(10,7,'gamePause'),(11,10,'ACTIVITY_PARAM_KEY'),(12,8,'isVibrate'),(13,6,'gameLevel'),(14,6,'isSound'),(15,10,'salesid'),(16,11,'salesid'),(17,8,'isSound'),(18,19,'salesid'),(19,19,'ACTIVITY_PARAM_KEY'),(20,6,'isMusic'),(21,14,'salesid'),(22,21,'salesid'),(23,17,'salesid'),(24,17,'ACTIVITY_PARAM_KEY'),(25,19,'ptid'),(26,6,'gameScore'),(27,8,'isMusic'),(28,10,'cpid'),(29,11,'cpid'),(30,19,'cpid'),(31,6,'gamePause'),(32,10,'ptid'),(33,11,'ptid'),(34,19,'did'),(35,25,'pdus'),(36,14,'did'),(37,21,'did'),(38,17,'did'),(39,14,'ptid'),(40,21,'ptid'),(41,17,'ptid'),(42,14,'cpid'),(43,21,'cpid'),(44,17,'cpid'),(45,20,'ACTIVITY_PARAM_KEY'),(46,24,'did'),(47,20,'did'),(48,24,'salesid'),(49,20,'salesid'),(50,24,'cpid'),(51,20,'cpid'),(52,24,'ptid'),(53,20,'ptid'),(54,53,'youtubeVideoTitle'),(55,53,'youtubeVideoDescription'),(56,64,'cpid'),(57,65,'cpid'),(58,58,'title'),(59,53,'youtubeUsername'),(60,64,'ACTIVITY_PARAM_KEY'),(61,61,'gridData'),(62,64,'salesid'),(63,65,'salesid'),(64,60,'youtubeVideoUrl'),(65,62,'intent'),(66,55,'youtubeVideoTitle'),(67,55,'youtubeVideoDescription'),(68,58,'url'),(69,58,'okButtonText'),(70,58,'imageUrl'),(71,59,'facebookVideoUrl'),(72,58,'description'),(73,53,'youtubePassword'),(74,52,'disableGrid'),(75,58,'closeButtonText'),(76,64,'ptid'),(77,65,'ptid'),(78,53,'facebokVideoDescription'),(79,64,'did'),(80,65,'did'),(81,28,'did'),(82,40,'did'),(83,49,'did'),(84,47,'did'),(85,42,'did'),(86,38,'did'),(87,46,'did'),(88,50,'did'),(89,44,'did'),(90,41,'did'),(91,43,'did'),(92,30,'did'),(93,30,'subject'),(94,49,'ACTIVITY_PARAM_KEY'),(95,37,'message'),(96,38,'answerInterface'),(97,37,'OKClickedInterface'),(98,37,'OKButtonLabel'),(99,28,'ptid'),(100,40,'ptid'),(101,49,'ptid'),(102,47,'ptid'),(103,42,'ptid'),(104,38,'ptid'),(105,46,'ptid'),(106,50,'ptid'),(107,44,'ptid'),(108,41,'ptid'),(109,43,'ptid'),(110,30,'ptid'),(111,46,'nameAlreadyTaken'),(112,33,'title'),(113,30,'broadcast'),(114,41,'username'),(115,43,'accountName'),(116,43,'rslName'),(117,37,'isScrolling'),(118,38,'title'),(119,38,'yesButtonLabel'),(120,46,'oldRSLUser'),(121,28,'salesid'),(122,40,'salesid'),(123,49,'salesid'),(124,47,'salesid'),(125,42,'salesid'),(126,38,'salesid'),(127,46,'salesid'),(128,50,'salesid'),(129,44,'salesid'),(130,41,'salesid'),(131,43,'salesid'),(132,30,'salesid'),(133,38,'noButtonLabel'),(134,38,'message'),(135,37,'title'),(136,28,'cpid'),(137,40,'cpid'),(138,49,'cpid'),(139,47,'cpid'),(140,42,'cpid'),(141,38,'cpid'),(142,46,'cpid'),(143,50,'cpid'),(144,44,'cpid'),(145,41,'cpid'),(146,43,'cpid'),(147,30,'cpid');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'s',0,15,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'s',0,15,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'s',0,15,NULL),(22,22,'r',1,NULL,NULL),(23,23,'s',0,15,NULL),(24,24,'s',0,15,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,29,'r',1,NULL,NULL),(28,44,'a',1,NULL,NULL),(29,45,'a',0,NULL,NULL),(30,46,'a',0,NULL,NULL),(31,49,'a',0,NULL,NULL),(32,50,'a',0,NULL,NULL),(33,51,'a',0,NULL,NULL),(34,54,'a',0,NULL,NULL),(35,55,'a',0,NULL,NULL),(36,56,'a',0,NULL,NULL),(37,57,'a',0,NULL,NULL),(38,58,'a',0,NULL,NULL),(39,59,'a',0,NULL,NULL),(40,60,'a',0,NULL,NULL),(41,61,'a',0,NULL,NULL),(42,62,'a',0,NULL,NULL),(43,63,'a',0,NULL,NULL),(44,64,'a',0,NULL,NULL),(45,66,'a',0,NULL,NULL),(46,67,'a',0,NULL,NULL),(47,68,'a',0,NULL,NULL),(48,69,'a',0,NULL,NULL),(49,70,'a',1,NULL,NULL),(50,72,'s',0,15,NULL),(51,73,'r',1,NULL,NULL),(52,79,'a',1,NULL,NULL),(53,81,'a',1,NULL,NULL),(54,82,'a',1,NULL,NULL),(55,84,'a',1,NULL,NULL),(56,85,'a',1,NULL,NULL),(57,87,'a',1,NULL,NULL),(58,88,'a',1,NULL,NULL),(59,89,'a',1,NULL,NULL),(60,90,'a',1,NULL,NULL),(61,91,'a',1,NULL,NULL),(62,93,'a',1,NULL,NULL),(63,94,'a',1,NULL,NULL),(64,95,'a',1,NULL,NULL),(65,96,'s',0,15,NULL),(66,97,'r',1,NULL,NULL),(67,110,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,4),(3,3,4),(4,4,4),(5,5,3),(6,6,3),(7,7,4),(8,8,4),(9,9,4),(10,10,6),(11,11,11),(12,12,11),(13,13,10),(14,14,11),(15,15,11),(16,16,6),(17,17,19),(18,17,25),(19,18,13),(20,19,6),(21,20,21),(22,21,7),(23,22,23),(24,23,21),(25,25,10),(26,24,21),(27,26,19),(28,27,6),(29,28,13),(30,29,21),(31,30,17),(32,31,11),(33,32,21),(34,33,23),(35,34,21),(36,35,11),(37,36,12),(38,37,17),(39,38,11),(40,39,11),(41,40,22),(42,41,11),(43,42,21),(44,43,21),(45,44,21),(46,45,26),(47,46,24),(48,47,18),(49,48,18),(50,49,24),(51,50,20),(52,51,20),(53,52,24),(54,53,24),(55,54,24),(56,55,18),(57,56,24),(58,57,24),(59,58,24),(60,59,18),(61,60,24),(62,61,52),(63,62,58),(64,63,65),(65,64,65),(66,65,61),(67,66,52),(68,67,63),(69,68,63),(70,69,65),(71,70,52),(72,71,65),(73,72,64),(74,73,61),(75,74,64),(76,75,65),(77,76,65),(78,77,63),(79,78,65),(80,79,65),(81,80,65),(82,81,63),(83,82,52),(84,83,62),(85,84,52),(86,85,61),(87,86,66),(88,87,50),(89,88,49),(90,89,50),(91,90,50),(92,91,44),(93,91,28),(94,91,42),(95,91,43),(96,91,46),(97,91,47),(98,91,30),(99,91,41),(100,91,40),(101,91,38),(102,92,50),(103,93,28),(104,94,51),(105,95,38),(106,95,40),(107,95,41),(108,95,42),(109,95,28),(110,95,43),(111,95,44),(112,95,47),(113,95,30),(114,95,46),(115,96,28),(116,97,38),(117,97,33),(118,97,30),(119,97,44),(120,97,28),(121,97,47),(122,97,46),(123,97,41),(124,97,40),(125,97,43),(126,97,42),(127,98,50),(128,99,28),(129,100,50),(130,101,38),(131,101,43),(132,101,42),(133,101,41),(134,101,40),(135,101,28),(136,101,47),(137,101,46),(138,101,30),(139,101,44),(140,101,32),(141,102,50),(142,103,50),(143,104,31),(144,105,49),(145,106,50),(146,107,38),(147,107,41),(148,107,40),(149,107,30),(150,107,46),(151,107,47),(152,107,44),(153,107,42),(154,107,28),(155,107,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,5,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(2,27,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(3,28,'<com.geinimi.c.e: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(4,30,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(5,31,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',20,'s',NULL),(6,31,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',28,'a',NULL),(7,27,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(8,4,'<com.geinimi.AdService: void onDestroy()>',6,'s',NULL),(9,27,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(10,6,'<com.feasy.jewels.Gel.GMenu: void showOptionDlg()>',10,'a',NULL),(11,32,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(12,32,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(13,33,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(14,32,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(15,34,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(16,35,'<com.feasy.jewels.Gel.GMenu$2: void onClick(android.view.View)>',35,'a',NULL),(17,36,'<cmp.LocalService.service.q: void run()>',15,'s',NULL),(18,37,'<cmp.LocalService.LocalService$4: void onClick(android.view.View)>',28,'a',NULL),(19,38,'<com.feasy.jewels.Gel.GMenu$1: void onClick(android.view.View)>',8,'a',NULL),(20,39,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(21,7,'<com.feasy.jewels.Gel.GameActivity: void doShowMenu(boolean,int,int)>',26,'a',NULL),(22,40,'<cmp.LocalService.service.e.b: void a(java.lang.String,java.lang.String)>',9,'a',NULL),(23,39,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(24,41,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(25,33,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(26,42,'<cmp.LocalService.service.h: void onCreate(android.os.Bundle)>',15,'a',NULL),(27,6,'<com.feasy.jewels.Gel.GMenu: void showScoreList()>',4,'a',NULL),(28,43,'<cmp.LocalService.LocalService$3: void onClick(android.view.View)>',11,'a',NULL),(29,39,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(30,47,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(31,48,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(32,52,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(33,53,'<cmp.LocalService.service.e: void onDestroy()>',13,'s',NULL),(34,39,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(35,32,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(36,12,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(37,47,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(38,32,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(39,32,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(40,22,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(41,65,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(42,39,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(43,71,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(44,39,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(45,26,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(46,74,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(47,75,'<com.xTouch.game.Crazyhamster_Super.Crazyhamster_Super$3: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(48,76,'<com.android.vending.licensing.LicenseChecker: void checkAccess(com.android.vending.licensing.LicenseCheckerCallback)>',26,'s',NULL),(49,77,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(50,78,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(51,78,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(52,80,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(53,83,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(54,77,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(55,86,'<com.xTouch.game.Crazyhamster_Super.Crazyhamster_Super$5: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(56,77,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(57,77,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(58,77,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(59,92,'<com.xTouch.game.Crazyhamster_Super.Crazyhamster_Super$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(60,77,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(61,79,'<com.outfit7.talkinghippo.Main: void a()>',3,'a',NULL),(62,98,'<com.outfit7.talkinghippo.cd: void onClick(android.view.View)>',12,'a',NULL),(63,99,'<com.geinimi.c.b: java.util.Vector a()>',30,'p',NULL),(64,99,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(65,100,'<com.outfit7.talkinghippo.at: void onClick(android.view.View)>',24,'a',NULL),(66,79,'<com.outfit7.talkinghippo.Main: void onCreate(android.os.Bundle)>',199,'a',NULL),(67,101,'<com.outfit7.talkinghippo.by: void onClick(android.content.DialogInterface,int)>',35,'a',NULL),(68,101,'<com.outfit7.talkinghippo.by: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(69,102,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(70,103,'<com.outfit7.talkinghippo.bk: void onClick(android.view.View)>',6,'a',NULL),(71,104,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(72,105,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(73,91,'<com.outfit7.talkinghippo.Grid: void a()>',5,'a',NULL),(74,105,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(75,99,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(76,106,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(77,101,'<com.outfit7.talkinghippo.by: void onClick(android.content.DialogInterface,int)>',23,'a',NULL),(78,99,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(79,99,'<com.geinimi.c.b: java.util.Vector a()>',51,'p',NULL),(80,99,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(81,101,'<com.outfit7.talkinghippo.by: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(82,107,'<com.android.vending.licensing.LicenseChecker: void a(com.android.vending.licensing.LicenseCheckerCallback)>',27,'s',NULL),(83,93,'<com.outfit7.talkinghippo.GridProxy: void onResume()>',27,'a',0),(84,79,'<com.outfit7.talkinghippo.Main: void a(com.outfit7.talkinghippo.Main,java.lang.String)>',8,'a',NULL),(85,108,'<com.outfit7.talkinghippo.au: void onClick(android.view.View)>',8,'a',NULL),(86,97,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(87,109,'<com.geinimi.c.b: boolean a(java.lang.String)>',7,'p',NULL),(88,111,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',24,'s',NULL),(89,112,'<com.geinimi.c.j: void a(java.lang.String,android.content.Intent,android.graphics.Bitmap)>',10,'r',NULL),(90,109,'<com.geinimi.c.b: java.util.Vector a()>',50,'p',NULL),(91,113,'<com.requiem.RSL.RSLLicensingWindow$1: void onClick(android.view.View)>',8,'a',NULL),(92,109,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',13,'p',NULL),(93,44,'<com.requiem.armoredStrike.ArmoredStrike: boolean onOptionsItemSelected(android.view.MenuItem)>',20,'a',NULL),(94,73,'<com.geinimi.AdServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',13,'s',NULL),(95,114,'<com.requiem.rslMatchUp.RSLMatchUpMainApp: void openAdminControlDialog(java.lang.String)>',7,'a',NULL),(96,115,'<com.google.android.googlelogin.GoogleLoginServiceBlockingHelper: void <init>(android.content.Context)>',30,'s',0),(97,116,'<com.requiem.RSL.PromotionDialog$1: void onClick(android.view.View)>',10,'a',NULL),(98,109,'<com.geinimi.c.b: java.util.Vector a()>',27,'p',NULL),(99,117,'<com.android.vending.licensing.LicenseChecker: void checkAccess(com.android.vending.licensing.LicenseCheckerCallback)>',26,'s',NULL),(100,109,'<com.geinimi.c.b: java.util.Vector a()>',5,'p',NULL),(101,50,'<com.requiem.RSL.PromotionWindow: void onButtonClick()>',8,'a',NULL),(102,109,'<com.geinimi.c.b: boolean a(java.lang.String,java.lang.String)>',24,'p',0),(103,118,'<com.geinimi.ads.c: boolean b()>',24,'p',NULL),(104,119,'<com.requiem.armoredStrike.Preferences$1: boolean onPreferenceClick(android.preference.Preference)>',6,'a',NULL),(105,111,'<com.geinimi.AdActivity: void onCreate(android.os.Bundle)>',30,'a',NULL),(106,120,'<com.geinimi.AdService: void onDestroy()>',11,'s',NULL),(107,121,'<com.requiem.RSL.RSLIconPicker$1: void onClick(android.view.View)>',28,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,5),(2,3,6),(3,18,5),(4,20,6),(5,22,8),(6,23,8),(7,25,5),(8,27,6),(9,34,9),(10,35,10),(11,38,5),(12,39,6),(13,40,9),(14,41,9),(15,43,9),(16,44,2),(17,45,2),(18,46,2),(19,47,2),(20,52,5),(21,53,6),(22,60,10),(23,62,9),(24,65,5),(25,66,6),(26,67,9),(27,72,9),(28,73,10),(29,74,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/geinimi/AdService'),(2,4,'com/geinimi/AdService'),(3,5,'(.*)'),(4,6,'com/geinimi/AdService'),(5,7,'com/feasy/jewels/Gel/OptionActivity'),(6,8,'(.*)'),(7,9,'(.*)'),(8,10,'com/feasy/jewels/Gel/GameActivity'),(9,11,'(.*)'),(10,12,'com/feasy/jewels/Gel/GameActivity'),(11,14,'com/feasy/jewels/Gel/GameActivity'),(12,13,'cmp/LocalService/cmpMapActivity'),(13,15,'com/feasy/jewels/Gel/GMenu'),(14,16,'(.*)'),(15,17,'(.*)'),(16,19,'(.*)'),(17,21,'com/feasy/jewels/Gel/ScoreList'),(18,24,'(.*)'),(19,26,'(.*)'),(20,28,'(.*)'),(21,29,'(.*)'),(22,30,'(.*)'),(23,31,'(.*)'),(24,32,'(.*)'),(25,33,'(.*)'),(26,36,'(.*)'),(27,37,'(.*)'),(28,42,'com/outfit7/talkinghippo/Menu'),(29,44,'(.*).Main'),(30,45,'.Main'),(31,46,'.Main'),(32,47,'(.*).Main'),(33,48,'com/outfit7/talkinghippo/News'),(34,49,'com/outfit7/talkinghippo/BackgroundActivity'),(35,50,'com/outfit7/talkinghippo/BackgroundActivity'),(36,51,'com/outfit7/talkinghippo/Info'),(37,54,'(.*)'),(38,55,'com/outfit7/talkinghippo/Main'),(39,56,'(.*)'),(40,57,'(.*)'),(41,58,'com/outfit7/talkinghippo/BackgroundActivity'),(42,59,'com/outfit7/talkinghippo/AnimationPlayer'),(43,61,'com/outfit7/talkinghippo/GridProxy'),(44,63,'(.*)'),(45,64,'(.*)'),(46,68,'com/requiem/armoredStrike/Preferences'),(47,69,'(.*)'),(48,70,'com/requiem/rslMatchUp/AdminControlDialog'),(49,71,'com/requiem/rslMatchUp/AdminControlDialog'),(50,75,'com/requiem/armoredStrike/CameraSpeedDialog'),(51,76,'(.*)'),(52,77,'(.*)'),(53,78,'com/requiem/RSL/RSLIconSelector');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,22,9),(2,23,10),(3,34,18),(4,40,22),(5,41,25),(6,43,27),(7,62,34),(8,67,37),(9,72,39),(10,74,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'android.intent.extra.shortcut.NAME'),(2,2,'android.intent.extra.shortcut.ICON'),(3,2,'android.intent.extra.shortcut.INTENT'),(4,3,'android.intent.extra.shortcut.NAME'),(5,3,'android.intent.extra.shortcut.ICON'),(6,3,'android.intent.extra.shortcut.INTENT'),(7,7,'isSound'),(8,7,'isVibrate'),(9,7,'isMusic'),(10,12,'gameScore'),(11,12,'gamePause'),(12,12,'gameLevel'),(13,13,'buildingname'),(14,13,'address'),(15,13,'longitude'),(16,13,'latitude'),(17,15,'gameScore'),(18,15,'gamePause'),(19,15,'gameLevel'),(20,18,'android.intent.extra.shortcut.NAME'),(21,18,'android.intent.extra.shortcut.ICON'),(22,18,'android.intent.extra.shortcut.INTENT'),(23,20,'android.intent.extra.shortcut.NAME'),(24,20,'android.intent.extra.shortcut.ICON'),(25,20,'android.intent.extra.shortcut.INTENT'),(26,25,'android.intent.extra.shortcut.NAME'),(27,25,'android.intent.extra.shortcut.ICON'),(28,25,'android.intent.extra.shortcut.INTENT'),(29,27,'android.intent.extra.shortcut.NAME'),(30,27,'android.intent.extra.shortcut.ICON'),(31,27,'android.intent.extra.shortcut.INTENT'),(32,38,'android.intent.extra.shortcut.NAME'),(33,38,'android.intent.extra.shortcut.ICON'),(34,38,'android.intent.extra.shortcut.INTENT'),(35,39,'android.intent.extra.shortcut.NAME'),(36,39,'android.intent.extra.shortcut.ICON'),(37,39,'android.intent.extra.shortcut.INTENT'),(38,44,'disableGrid'),(39,45,'disableGrid'),(40,46,'disableGrid'),(41,47,'disableGrid'),(42,48,'title'),(43,48,'imageUrl'),(44,48,'description'),(45,48,'okButtonText'),(46,48,'url'),(47,48,'closeButtonText'),(48,49,'action'),(49,50,'action'),(50,52,'android.intent.extra.shortcut.NAME'),(51,52,'android.intent.extra.shortcut.ICON'),(52,52,'android.intent.extra.shortcut.INTENT'),(53,53,'android.intent.extra.shortcut.NAME'),(54,53,'android.intent.extra.shortcut.ICON'),(55,53,'android.intent.extra.shortcut.INTENT'),(56,55,'disableGrid'),(57,58,'action'),(58,61,'intent'),(59,65,'android.intent.extra.shortcut.NAME'),(60,65,'android.intent.extra.shortcut.ICON'),(61,65,'android.intent.extra.shortcut.INTENT'),(62,66,'android.intent.extra.shortcut.NAME'),(63,66,'android.intent.extra.shortcut.ICON'),(64,66,'android.intent.extra.shortcut.INTENT'),(65,70,'username'),(66,78,'com.requiem.RSL.buttonSize'),(67,78,'com.requiem.RSL.iconsRef');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,4,3),(4,6,2),(5,7,3),(6,10,2),(7,11,2),(8,13,2),(9,14,2),(10,15,3),(11,16,3),(12,17,3),(13,18,4),(14,19,7),(15,20,7),(16,22,2),(17,23,3),(18,25,2),(19,26,2),(20,27,2),(21,28,2),(22,29,2),(23,30,2),(24,31,2),(25,32,2),(26,33,2),(27,34,2),(28,35,2),(29,36,2),(30,37,3),(31,38,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,3),(11,12,1),(12,11,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,21,1),(19,22,1),(20,23,1),(21,24,1),(22,25,4),(23,26,4),(24,27,4),(25,28,4),(26,29,4),(27,30,4),(28,31,4),(29,32,4),(30,33,4),(31,34,4),(32,35,4),(33,36,1),(34,37,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'wbs.logo'),(2,4,'wbs.logo'),(3,5,'wbs.logo'),(4,6,'wbs.logo'),(5,7,'com.feasy.jewels.Gel'),(6,8,'com.feasy.jewels.Gel'),(7,9,'com.feasy.jewels.Gel'),(8,10,'com.feasy.jewels.Gel'),(9,11,'cmp.LocalService'),(10,12,'com.feasy.jewels.Gel'),(11,14,'com.feasy.jewels.Gel'),(12,13,'cmp.LocalService'),(13,15,'com.feasy.jewels.Gel'),(14,16,'(.*)'),(15,17,'com.feasy.jewels.Gel'),(16,19,'cmp.LocalService'),(17,21,'com.feasy.jewels.Gel'),(18,24,'com.lotsynergy'),(19,26,'com.lotsynergy'),(20,28,'cmp.LocalService'),(21,29,'com.feasy.jewels.Gel'),(22,30,'com.lotsynergy'),(23,31,'com.lotsynergy'),(24,32,'com.xTouch.game.Crazyhamster_Super'),(25,33,'com.xTouch.game.Crazyhamster_Super'),(26,36,'com.xTouch.game.Crazyhamster_Super'),(27,37,'com.xTouch.game.Crazyhamster_Super'),(28,42,'com.outfit7.talkinghippo'),(29,44,''),(30,45,'(.*)'),(31,46,''),(32,47,'(.*)'),(33,48,'com.outfit7.talkinghippo'),(34,49,'com.outfit7.talkinghippo'),(35,50,'com.outfit7.talkinghippo'),(36,51,'com.outfit7.talkinghippo'),(37,54,'com.outfit7.talkinghippo'),(38,55,'com.outfit7.talkinghippo'),(39,56,'com.outfit7.talkinghippo'),(40,57,'com.outfit7.talkinghippo'),(41,58,'com.outfit7.talkinghippo'),(42,59,'com.outfit7.talkinghippo'),(43,61,'com.outfit7.talkinghippo'),(44,63,'com.outfit7.talkinghippo'),(45,64,'com.requiem.armoredStrike'),(46,68,'com.requiem.armoredStrike'),(47,69,'com.requiem.armoredStrike'),(48,70,'com.requiem.armoredStrike'),(49,71,'com.requiem.armoredStrike'),(50,75,'com.requiem.armoredStrike'),(51,76,'com.requiem.armoredStrike'),(52,77,'com.requiem.armoredStrike'),(53,78,'com.requiem.armoredStrike');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,6,0),(6,10,0),(7,12,0),(8,13,0),(9,14,0),(10,15,0),(11,17,0),(12,18,0),(13,19,0),(14,20,0),(15,22,0),(16,25,0),(17,26,0),(18,25,0),(19,27,0),(20,5,0),(21,28,0),(22,49,0),(23,51,0),(24,52,0),(25,53,0),(26,54,0),(27,55,0),(28,56,0),(29,57,0),(30,58,0),(31,59,0),(32,60,0),(33,61,0),(34,62,0),(35,63,0),(36,64,0),(37,66,0),(38,67,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,3,1,0),(3,3,1,0),(4,5,0,0),(5,6,0,0),(6,8,0,0),(7,10,0,0),(8,13,0,0),(9,15,0,0),(10,16,0,0),(11,17,0,0),(12,16,0,0),(13,18,0,0),(14,19,0,0),(15,21,0,0),(16,22,0,0),(17,25,0,0),(18,24,1,0),(19,26,0,0),(20,24,1,0),(21,27,0,0),(22,28,1,0),(23,28,1,0),(24,30,0,0),(25,31,1,0),(26,32,0,0),(27,31,1,0),(28,33,0,0),(29,36,0,0),(30,37,0,0),(31,40,0,0),(32,45,0,0),(33,46,0,0),(34,47,1,0),(35,48,1,0),(36,50,0,0),(37,51,0,0),(38,52,1,0),(39,52,1,0),(40,55,1,0),(41,59,1,0),(42,61,0,0),(43,62,1,0),(44,65,0,0),(45,65,0,0),(46,65,0,0),(47,65,0,0),(48,66,0,0),(49,67,0,0),(50,68,0,0),(51,70,0,0),(52,71,1,0),(53,71,1,0),(54,72,0,0),(55,73,0,0),(56,74,0,0),(57,76,0,0),(58,77,0,0),(59,81,0,0),(60,82,1,0),(61,84,0,0),(62,85,1,0),(63,86,0,0),(64,88,0,0),(65,89,1,0),(66,89,1,0),(67,91,1,0),(68,93,0,0),(69,94,0,0),(70,95,0,0),(71,95,0,0),(72,97,1,0),(73,99,1,0),(74,101,1,0),(75,104,0,0),(76,105,0,0),(77,106,0,0),(78,107,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,74,1,2,NULL),(2,74,2,2,NULL),(3,74,3,2,NULL),(4,6,4,2,NULL),(5,1,4,2,NULL),(6,74,5,2,NULL),(7,74,27,2,NULL),(8,74,13,2,NULL),(9,74,15,2,NULL),(10,74,19,2,NULL),(11,74,25,2,NULL),(12,74,14,2,NULL),(13,74,17,2,NULL),(14,74,22,2,NULL),(15,68,31,2,NULL),(16,74,28,2,NULL),(17,74,6,2,NULL),(18,74,10,2,NULL),(19,42,63,2,NULL),(20,74,12,2,NULL),(21,48,58,2,NULL),(22,74,18,2,NULL),(23,61,62,2,NULL),(24,74,20,2,NULL),(25,74,52,2,NULL),(26,74,26,2,NULL),(27,74,53,2,NULL),(28,74,49,2,NULL),(29,74,54,2,NULL),(30,74,51,2,NULL),(31,74,55,2,NULL),(32,74,67,2,NULL),(33,74,56,2,NULL),(34,74,57,2,NULL),(35,74,58,2,NULL),(36,74,59,2,NULL),(37,74,60,2,NULL),(38,74,61,2,NULL),(39,55,52,2,NULL),(40,74,62,2,NULL),(41,74,63,2,NULL),(42,74,64,2,NULL),(43,74,66,2,NULL),(44,7,8,2,NULL),(45,21,9,2,NULL),(46,15,6,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(20,'android.permission.ACCESS_COURSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_GPS'),(3,'android.permission.ACCESS_LOCATION'),(27,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.CALL_PHONE'),(25,'android.permission.GET_ACCOUNTS'),(29,'android.permission.GET_TASKS'),(15,'android.permission.INTERNET'),(23,'android.permission.MODIFY_PHONE_STATE'),(12,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(7,'android.permission.READ_CONTACTS'),(11,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(22,'android.permission.RECEIVE_SMS'),(30,'android.permission.RECORD_AUDIO'),(10,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(2,'android.permission.SET_WALLPAPER'),(19,'android.permission.VIBRATE'),(28,'android.permission.WAKE_LOCK'),(9,'android.permission.WRITE_CONTACTS'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'android.permission.WRITE_SMS'),(18,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(16,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS'),(1,'com.android.launcher.permission.INSTALL_SHORTCUT'),(24,'com.android.vending.CHECK_LICENSE'),(26,'com.google.android.googleapps.permission.GOOGLE_AUTH');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(2,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(3,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(4,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(5,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(6,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(7,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(8,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(9,NULL,NULL,'tel:',NULL,NULL,NULL),(10,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(11,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(12,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(13,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(14,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(15,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(16,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(17,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(18,NULL,NULL,'http://market.android.com/details?id=com.xTouch.game.Crazyhamster_Super',NULL,NULL,NULL),(19,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(20,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(21,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(22,NULL,NULL,'http://market.android.com/details?id=com.xTouch.game.Crazyhamster_Super',NULL,NULL,NULL),(23,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(24,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(25,NULL,NULL,'http://market.android.com/details?id=com.xTouch.game.Crazyhamster_Super',NULL,NULL,NULL),(26,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(29,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL),(30,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(31,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(32,NULL,NULL,'content://com.android.contacts/data/emails',NULL,NULL,NULL),(33,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(36,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(41,NULL,NULL,'content://contacts/people',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'content://browser/bookmarks',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,4,2),(3,9,3),(4,11,4),(5,12,5),(6,14,6),(7,20,7),(8,29,8),(9,34,11),(10,35,12),(11,39,13),(12,41,14),(13,42,15),(14,43,16),(15,44,17),(16,49,19),(17,53,20),(18,54,21),(19,56,23),(20,58,24),(21,60,26),(22,63,28),(23,69,29),(24,75,30),(25,78,31),(26,79,32),(27,80,33),(28,87,35),(29,90,36),(30,92,38),(31,98,40),(32,100,41),(33,103,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,17),(17,1,16),(18,1,18),(19,2,1),(20,2,2),(21,2,3),(22,2,4),(23,2,5),(24,2,6),(25,2,7),(26,2,8),(27,2,9),(28,2,11),(29,2,12),(30,2,13),(31,2,14),(32,2,15),(33,2,17),(34,2,16),(35,2,19),(36,2,18),(37,2,20),(38,3,1),(39,3,2),(40,3,3),(41,3,4),(42,3,5),(43,4,1),(44,3,6),(45,4,2),(46,3,7),(47,4,3),(48,3,8),(49,4,4),(50,5,1),(51,3,9),(52,4,5),(53,5,2),(54,3,10),(55,5,3),(56,4,6),(57,3,11),(58,5,4),(59,4,7),(60,3,12),(61,5,5),(62,4,8),(63,3,13),(64,4,9),(65,5,6),(66,3,14),(67,4,11),(68,5,7),(69,3,15),(70,4,12),(71,5,8),(72,3,17),(73,4,13),(74,5,9),(75,3,16),(76,5,11),(77,4,14),(78,3,18),(79,5,12),(80,4,15),(81,3,21),(82,4,17),(83,5,13),(84,3,22),(85,4,16),(86,5,14),(87,5,15),(88,4,18),(89,5,17),(90,5,16),(91,5,18),(92,5,23),(93,5,24),(94,6,1),(95,6,2),(96,6,3),(97,6,4),(98,6,5),(99,6,6),(100,6,7),(101,6,8),(102,6,9),(103,6,11),(104,6,12),(105,6,13),(106,6,14),(107,6,15),(108,6,17),(109,6,16),(110,6,19),(111,6,18),(112,6,25),(113,6,24),(114,6,27),(115,6,26),(116,6,28),(117,7,1),(118,7,2),(119,7,3),(120,7,4),(121,7,5),(122,7,6),(123,7,7),(124,7,8),(125,7,9),(126,7,11),(127,7,12),(128,7,13),(129,7,14),(130,7,15),(131,7,17),(132,7,16),(133,7,18),(134,7,24),(135,7,27),(136,7,29),(137,7,30);
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

-- Dump completed on 2015-10-12  3:30:19
