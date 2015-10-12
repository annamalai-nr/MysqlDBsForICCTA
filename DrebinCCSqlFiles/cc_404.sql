-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_404
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(12,'.ImageTestActivity'),(21,'.Myhall'),(15,'.Web'),(3,'android.intent.action.BOOT_COMPLETED'),(19,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.PACKAGE_REMOVED'),(23,'android.intent.action.SCREEN_OFF'),(24,'android.intent.action.USER_PRESENT'),(11,'android.intent.action.VIEW'),(20,'com.adobe.air.AIRServiceAction'),(2,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(8,'com.android.vending.INSTALL_REFERRER'),(16,'com.attractionsphotos.GameBootReceiver'),(25,'com.attractionsphotos.ImageTestActivity'),(30,'com.attractionsphotos.Myhall'),(14,'com.attractionsphotos.Web'),(18,'com.beautystars.GameBootReceiver'),(13,'com.beautystars.ImageTestActivity'),(27,'com.beautystars.Myhall'),(31,'com.beautystars.Web'),(6,'com.nom.lib.intent.action.REQUEST_PLAYER_INFO'),(7,'com.nom.lib.intent.action.UPDATE_PLAYER_INFO'),(5,'com.nom.lib.service.YGNotificationService.intent.action.Launch'),(29,'com.sportsmajorstar.GameBootReceiver'),(26,'com.sportsmajorstar.ImageTestActivity'),(22,'com.sportsmajorstar.Myhall'),(28,'com.sportsmajorstar.Web');
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
INSERT INTO `Applications` VALUES (1,'com.iqtth.pnv.vqhkgq.hwgstvbk',10023),(2,'com.petparadise',10018),(3,'com.beautystars',10019),(4,'com.attractionsphotos',1016),(5,'com.sportsmajorstar',1016),(6,'com.oiocawjn.lepnuvd',10037),(7,'com.wia.ucgepcdvlsl',10023);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.iqtth.pnv.vqhkgq.hwgstvbk.Applause'),(2,1,'com.iqtth.pnv.vqhkgq.hwgstvbk.OptionActivity'),(3,1,'com.QwlqwMcf.pVplbvLoM'),(4,1,'com.QwlqwMcf.vUpmInLcTApNQ'),(5,2,'com.petparadise.Myhall'),(6,3,'com.beautystars.Myhall'),(7,2,'com.petparadise.Web'),(8,3,'com.beautystars.Web'),(9,2,'com.petparadise.HomeActivity'),(10,3,'com.beautystars.HomeActivity'),(11,2,'com.petparadise.SortActivity1'),(12,3,'com.beautystars.SortActivity1'),(13,4,'com.attractionsphotos.Myhall'),(14,2,'com.petparadise.SortActivity2'),(15,3,'com.beautystars.SortActivity2'),(16,4,'com.attractionsphotos.Web'),(17,4,'com.attractionsphotos.HomeActivity'),(18,2,'com.petparadise.SearchActivity'),(19,5,'com.sportsmajorstar.Myhall'),(20,3,'com.beautystars.SearchActivity'),(21,4,'com.attractionsphotos.SortActivity1'),(22,5,'com.sportsmajorstar.Web'),(23,4,'com.attractionsphotos.SortActivity2'),(24,2,'com.petparadise.ManagerActivity'),(25,5,'com.sportsmajorstar.HomeActivity'),(26,3,'com.beautystars.ManagerActivity'),(27,6,'com.oiocawjn.lepnuvd.StartGameActivity'),(28,5,'com.sportsmajorstar.SortActivity1'),(29,4,'com.attractionsphotos.SearchActivity'),(30,2,'com.petparadise.GameInfo'),(31,6,'com.oiocawjn.lepnuvd.GameActivity'),(32,5,'com.sportsmajorstar.SortActivity2'),(33,3,'com.beautystars.GameInfo'),(34,6,'com.oiocawjn.lepnuvd.HowToPlayGameActivity'),(35,4,'com.attractionsphotos.ManagerActivity'),(36,2,'com.petparadise.TableClass'),(37,6,'com.scoreloop.android.coreui.HighscoresActivity'),(38,5,'com.sportsmajorstar.SearchActivity'),(39,3,'com.beautystars.TableClass'),(40,6,'com.scoreloop.android.coreui.ProfileActivity'),(41,4,'com.attractionsphotos.GameInfo'),(42,2,'com.petparadise.GameAlertDialog'),(43,6,'com.scoreloop.android.coreui.AccountActivity'),(44,5,'com.sportsmajorstar.ManagerActivity'),(45,3,'com.beautystars.GameAlertDialog'),(46,2,'com.petparadise.DevelopmentSettings'),(47,6,'com.scoreloop.android.coreui.BuddiesActivity'),(48,3,'com.beautystars.DevelopmentSettings'),(49,4,'com.attractionsphotos.TableClass'),(50,6,'com.scoreloop.android.coreui.BuddiesAddActivity'),(51,5,'com.sportsmajorstar.GameInfo'),(52,6,'com.google.ads.AdActivity'),(53,2,'com.petparadise.qimg.ImageTestActivity'),(54,3,'com.beautystars.qimg.ImageTestActivity'),(55,4,'com.attractionsphotos.GameAlertDialog'),(56,6,'com.qcgto.dNeOirPRqh'),(57,5,'com.sportsmajorstar.TableClass'),(58,4,'com.attractionsphotos.DevelopmentSettings'),(59,6,'com.qcgto.fjaRDRLafoqdgU'),(60,2,'com.petparadise.qimg.ADactivity'),(61,3,'com.beautystars.qimg.ADactivity'),(62,5,'com.sportsmajorstar.GameAlertDialog'),(63,4,'com.attractionsphotos.qimg.ImageTestActivity'),(64,2,'com.petparadise.GameService'),(65,3,'com.beautystars.GameService'),(66,5,'com.sportsmajorstar.DevelopmentSettings'),(67,6,'com.nd.dianjin.activity.OfferAppActivity'),(68,5,'com.sportsmajorstar.qimg.ImageTestActivity'),(69,4,'com.attractionsphotos.qimg.ADactivity'),(70,3,'com.beautystars.GameBootReceiver'),(71,2,'com.petparadise.GameBootReceiver'),(72,4,'com.attractionsphotos.GameService'),(73,7,'com.wia.ucgepcdvlsl.activity.MainActivity'),(74,5,'com.sportsmajorstar.qimg.ADactivity'),(75,7,'com.wia.ucgepcdvlsl.activity.GameActivity'),(76,4,'com.attractionsphotos.GameBootReceiver'),(77,5,'com.sportsmajorstar.GameService'),(78,7,'com.nom.lib.app.YGUserFlowActivity'),(79,7,'com.nom.lib.app.YGFeedbackScreenActivity'),(80,5,'com.sportsmajorstar.GameBootReceiver'),(81,7,'com.nom.lib.app.LeaderboardActivity'),(82,7,'com.nom.lib.app.AppProfileActivity'),(83,7,'com.google.ads.AdActivity'),(84,7,'com.fJWjR.VemfFBVA'),(85,7,'com.fJWjR.wwltBMCp'),(86,7,'com.nd.dianjin.activity.OfferAppActivity'),(87,7,'com.nom.lib.service.YGNotificationService'),(88,7,'com.nom.lib.service.YGBroadcastReceiver'),(89,7,'com.nom.lib.service.YGPackageEventsReceiver'),(90,7,'com.nd.dianjin.broadcastreceiver.PackagedChangedBroadcastReceiver'),(91,6,'com.oiocawjn.lepnuvd.HowToPlayGameActivity$1'),(92,6,'com.oiocawjn.lepnuvd.StartGameActivity$3'),(93,6,'com.oiocawjn.lepnuvd.StartGameActivity$2'),(94,4,'as'),(95,6,'com.oiocawjn.lepnuvd.StartGameActivity$1'),(96,4,'cx'),(97,3,'cn'),(98,4,'w'),(99,5,'aw'),(100,3,'dg'),(101,5,'z'),(102,6,'com.scoreloop.client.android.core.controller.AddressBook'),(103,3,'ab'),(104,6,'com.nd.dianjin.DianJinPlatform'),(105,4,'cw'),(106,5,'dc'),(107,6,'com.oiocawjn.lepnuvd.StartGameActivity$4'),(108,5,'ce'),(109,3,'e'),(110,7,'air.airapp.AppEntry'),(111,7,'com.nom.lib.app.YGBaseActivity'),(112,3,'ae'),(113,4,'cs'),(114,7,'com.nd.dianjin.DianJinPlatform'),(115,3,'y'),(116,5,'k'),(117,4,'d'),(118,5,'bx'),(119,3,'bn'),(120,4,'bb'),(121,3,'cp'),(122,7,'u$b'),(123,3,'cl'),(124,4,'k'),(125,4,'au'),(126,4,'bm'),(127,5,'ax'),(128,5,'ca'),(129,5,'cb'),(130,3,'cq'),(131,5,'cu'),(132,3,'dl'),(133,4,'dk'),(134,5,'au');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'GameMusic'),(2,1,'GameMusic'),(3,1,'ChangeTheme'),(4,2,'ChangeTheme'),(5,1,'MatchSound'),(6,1,'Vibrate'),(7,2,'MatchSound'),(8,2,'Vibrate'),(9,52,'params'),(10,32,'nextclassid'),(11,62,'title'),(12,44,'total'),(13,6,'nextclassid'),(14,26,'filepath'),(15,33,'game'),(16,45,'version_code'),(17,41,'status'),(18,20,'version_code'),(19,26,'icon'),(20,38,'version_code'),(21,26,'package_name'),(22,44,'filepath'),(23,26,'completed'),(24,44,'url'),(25,33,'title'),(26,26,'soft_id'),(27,52,'action'),(28,52,'com.google.ads.AdOpener'),(29,45,'title'),(30,29,'package_name'),(31,38,'package_name'),(32,33,'status'),(33,45,'apk_url'),(34,35,'completed'),(35,35,'icon'),(36,63,'service_channel'),(37,16,'service_channel'),(38,13,'service_channel'),(39,41,'from_table'),(40,77,'service_channel'),(41,35,'filepath'),(42,35,'app_name'),(43,41,'title'),(44,35,'soft_id'),(45,15,'nextclassid'),(46,44,'status'),(47,6,'service_channel'),(48,33,'from_alert'),(49,78,'UserflowName'),(50,44,'package_name'),(51,44,'app_name'),(52,44,'completed'),(53,29,'status'),(54,44,'soft_id'),(55,88,'Nickname'),(56,26,'app_name'),(57,20,'package_name'),(58,26,'status'),(59,53,'service_channel'),(60,35,'total'),(61,83,'com.google.ads.AdOpener'),(62,88,'YoinkToken'),(63,26,'total'),(64,41,'filepath'),(65,83,'action'),(66,83,'params'),(67,35,'url'),(68,44,'icon'),(69,51,'title'),(70,55,'content'),(71,33,'from_table'),(72,41,'from_alert'),(73,38,'status'),(74,23,'nextclassid'),(75,8,'service_channel'),(76,62,'btn_txt'),(77,35,'package_name'),(78,51,'from_table'),(79,23,'status'),(80,55,'btn_txt'),(81,35,'status'),(82,26,'url'),(83,88,'DeviceId'),(84,32,'status'),(85,51,'from_alert'),(86,19,'nextclassid'),(87,32,'package_name'),(88,15,'package_name'),(89,15,'status'),(90,51,'filepath'),(91,72,'service_channel'),(92,64,'service_channel'),(93,23,'package_name'),(94,55,'url'),(95,13,'nextclassid'),(96,55,'title'),(97,45,'btn_txt'),(98,29,'version_code'),(99,20,'status'),(100,45,'package_name'),(101,69,'service_channel'),(102,33,'fromtype'),(103,19,'service_channel'),(104,62,'content'),(105,22,'service_channel'),(106,33,'filepath'),(107,62,'url'),(108,45,'url'),(109,51,'status'),(110,45,'content');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,30,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,54,'a',1,NULL,NULL),(54,53,'a',1,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',1,NULL,NULL),(64,65,'s',1,NULL,NULL),(65,64,'s',1,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,69,'a',0,NULL,NULL),(69,68,'a',1,NULL,NULL),(70,70,'r',1,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'s',1,NULL,NULL),(73,73,'a',1,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,77,'s',1,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'r',1,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',1,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'s',1,NULL,NULL),(88,88,'r',1,NULL,NULL),(89,89,'r',1,NULL,NULL),(90,90,'r',1,NULL,NULL),(91,122,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,1),(3,3,3),(4,4,1),(5,5,34),(6,6,53),(7,7,40),(8,8,27),(9,9,39),(10,10,56),(11,11,16),(12,12,27),(13,13,61),(14,14,56),(15,15,62),(16,16,76),(17,17,13),(18,18,27),(19,19,22),(20,20,15),(21,21,23),(22,22,52),(23,23,51),(24,24,6),(25,25,17),(26,26,19),(27,27,61),(28,28,35),(29,29,59),(30,30,70),(31,31,51),(32,32,37),(33,33,23),(34,34,50),(35,35,33),(36,36,59),(37,37,23),(38,38,44),(39,39,27),(40,40,19),(41,41,39),(42,42,41),(43,43,57),(44,44,84),(45,45,68),(46,46,74),(47,47,39),(48,47,45),(49,48,75),(50,49,23),(51,50,10),(52,51,17),(53,52,57),(54,53,88),(55,54,55),(56,55,73),(57,56,26),(58,57,49),(59,57,55),(60,58,19),(61,59,85),(62,60,41),(63,61,73),(64,62,53),(65,63,29),(66,64,25),(67,65,85),(68,66,45),(69,67,68),(70,68,81),(71,68,82),(72,69,32),(73,70,83),(74,71,13),(75,72,10),(76,73,32),(77,74,41),(78,75,62),(79,76,15),(80,77,84),(81,78,17),(82,79,10),(83,80,51),(84,81,73),(85,82,68),(86,84,8),(87,83,25),(88,85,16),(89,86,51),(90,87,6),(91,88,88),(92,89,19),(93,90,35),(94,91,10),(95,92,32),(96,93,23),(97,94,53),(98,95,51),(99,96,62),(100,97,33),(101,98,63),(102,99,80),(103,100,74),(104,101,61),(105,102,63),(106,103,44),(107,104,20),(108,105,76),(109,107,15),(110,106,44),(111,108,41),(112,109,32),(113,110,55),(114,111,15),(115,112,69),(116,113,6),(117,114,13),(118,115,25),(119,116,20),(120,117,88),(121,118,63),(122,119,89),(123,120,6),(124,121,25),(125,122,41),(126,123,70),(127,124,69),(128,125,49),(129,126,22),(130,127,15),(131,128,29),(132,129,45),(133,130,32),(134,131,13),(135,132,33),(136,133,38),(137,134,35),(138,135,10),(139,136,62),(140,136,57),(141,137,33),(142,138,69),(143,139,55),(144,140,45),(145,141,74),(146,142,6),(147,143,55),(148,143,49),(149,144,19),(150,145,33),(151,146,13),(152,147,80),(153,148,15),(154,149,22),(155,150,13),(156,151,6),(157,152,55),(158,153,25),(159,154,8),(160,155,80),(161,156,17),(162,157,62),(163,158,49),(164,159,6),(165,160,41),(166,161,8),(167,162,19),(168,163,16),(169,164,38),(170,165,39),(171,165,45),(172,166,17),(173,167,25),(174,168,26),(175,169,19),(176,170,23),(177,171,26),(178,172,70),(179,173,76),(180,174,32),(181,175,45),(182,176,51),(183,177,17),(184,178,13),(185,179,10),(186,180,62),(187,180,57);
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
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.QwlqwMcf.pVplbvLoM: void a()>',3,'a',NULL),(2,1,'<com.iqtth.pnv.vqhkgq.hwgstvbk.Applause: void showOptionDlg()>',12,'a',NULL),(3,3,'<com.QwlqwMcf.pVplbvLoM: void a(java.lang.String)>',10,'a',NULL),(4,1,'<com.iqtth.pnv.vqhkgq.hwgstvbk.Applause: void showMoreApp(int)>',9,'a',NULL),(5,91,'<com.oiocawjn.lepnuvd.HowToPlayGameActivity$1: void onClick(android.view.View)>',8,'a',NULL),(6,54,'<com.beautystars.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(7,40,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',0),(8,92,'<com.oiocawjn.lepnuvd.StartGameActivity$3: void onClick(android.view.View)>',8,'a',NULL),(9,39,'<com.beautystars.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(10,56,'<com.qcgto.dNeOirPRqh: void a()>',3,'a',NULL),(11,16,'<com.attractionsphotos.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(12,93,'<com.oiocawjn.lepnuvd.StartGameActivity$2: void onClick(android.view.View)>',8,'a',NULL),(13,61,'<com.beautystars.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(14,56,'<com.qcgto.dNeOirPRqh: void a(java.lang.String)>',11,'a',NULL),(15,62,'<com.sportsmajorstar.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(16,76,'<com.attractionsphotos.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(17,94,'<as: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(18,95,'<com.oiocawjn.lepnuvd.StartGameActivity$1: void onClick(android.view.View)>',8,'a',NULL),(19,22,'<com.sportsmajorstar.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(20,15,'<com.beautystars.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(21,96,'<cx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(22,52,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(23,51,'<com.sportsmajorstar.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(24,97,'<cn: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(25,98,'<w: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(26,99,'<aw: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(27,100,'<dg: void onClick(android.view.View)>',6,'a',NULL),(28,35,'<com.attractionsphotos.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(29,59,'<com.qcgto.fjaRDRLafoqdgU: void a()>',3,'a',NULL),(30,70,'<com.beautystars.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(31,101,'<z: void onClick(android.view.View)>',205,'a',NULL),(32,37,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',5,'a',0),(33,23,'<com.attractionsphotos.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(34,102,'<com.scoreloop.client.android.core.controller.AddressBook: java.util.List b(android.content.Context)>',5,'p',NULL),(35,103,'<ab: void onClick(android.view.View)>',239,'a',NULL),(36,104,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(37,105,'<cw: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(38,106,'<dc: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(39,107,'<com.oiocawjn.lepnuvd.StartGameActivity$4: void onClick(android.view.View)>',8,'a',NULL),(40,99,'<aw: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(41,39,'<com.beautystars.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(42,41,'<com.attractionsphotos.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(43,57,'<com.sportsmajorstar.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(44,84,'<com.fJWjR.VemfFBVA: void a(java.lang.String)>',10,'a',NULL),(45,69,'<com.attractionsphotos.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(46,108,'<ce: void onClick(android.view.View)>',6,'a',NULL),(47,109,'<e: void a(int,boolean)>',10,'s',NULL),(48,110,'<air.airapp.AppEntry: void launchAIRService()>',7,'s',NULL),(49,23,'<com.attractionsphotos.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(50,10,'<com.beautystars.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(51,98,'<w: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(52,57,'<com.sportsmajorstar.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(53,88,'<com.nom.lib.service.YGBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(54,55,'<com.attractionsphotos.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(55,111,'<com.nom.lib.app.YGBaseActivity: void init()>',9,'s',NULL),(56,112,'<ae: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(57,113,'<cs: void a(int,boolean)>',29,'a',NULL),(58,19,'<com.sportsmajorstar.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(59,114,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(60,41,'<com.attractionsphotos.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(61,111,'<com.nom.lib.app.YGBaseActivity: void startGameActivity()>',10,'a',NULL),(62,115,'<y: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(63,29,'<com.attractionsphotos.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(64,116,'<k: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(65,85,'<com.fJWjR.wwltBMCp: void a()>',3,'a',NULL),(66,45,'<com.beautystars.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(67,117,'<d: void onClick(android.view.View)>',6,'a',NULL),(68,111,'<com.nom.lib.app.YGBaseActivity: void launchMarketPlace(java.lang.String)>',9,'a',0),(69,118,'<bx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(70,83,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(71,94,'<as: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(72,119,'<bn: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(73,118,'<bx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(74,120,'<bb: void onClick(android.view.View)>',205,'a',NULL),(75,62,'<com.sportsmajorstar.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(76,121,'<cp: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(77,84,'<com.fJWjR.VemfFBVA: void a()>',3,'a',NULL),(78,17,'<com.attractionsphotos.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(79,10,'<com.beautystars.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(80,51,'<com.sportsmajorstar.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(81,111,'<com.nom.lib.app.YGBaseActivity: void installPackage(java.lang.String)>',14,'a',NULL),(82,69,'<com.attractionsphotos.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(83,25,'<com.sportsmajorstar.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(84,8,'<com.beautystars.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(85,16,'<com.attractionsphotos.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(86,51,'<com.sportsmajorstar.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(87,123,'<cl: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(88,88,'<com.nom.lib.service.YGBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',43,'r',NULL),(89,99,'<aw: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(90,124,'<k: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(91,119,'<bn: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(92,118,'<bx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(93,96,'<cx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(94,54,'<com.beautystars.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(95,51,'<com.sportsmajorstar.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(96,62,'<com.sportsmajorstar.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(97,103,'<ab: void onClick(android.view.View)>',218,'a',NULL),(98,63,'<com.attractionsphotos.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(99,80,'<com.sportsmajorstar.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(100,74,'<com.sportsmajorstar.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(101,61,'<com.beautystars.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(102,63,'<com.attractionsphotos.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(103,106,'<dc: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(104,20,'<com.beautystars.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(105,76,'<com.attractionsphotos.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(106,44,'<com.sportsmajorstar.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(107,121,'<cp: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(108,41,'<com.attractionsphotos.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(109,32,'<com.sportsmajorstar.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(110,55,'<com.attractionsphotos.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(111,15,'<com.beautystars.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(112,68,'<com.sportsmajorstar.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(113,6,'<com.beautystars.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(114,125,'<au: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(115,25,'<com.sportsmajorstar.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(116,20,'<com.beautystars.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(117,88,'<com.nom.lib.service.YGBroadcastReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(118,126,'<bm: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(119,89,'<com.nom.lib.service.YGPackageEventsReceiver: void onReceive(android.content.Context,android.content.Intent)>',38,'a',NULL),(120,6,'<com.beautystars.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(121,116,'<k: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(122,120,'<bb: void onClick(android.view.View)>',224,'a',NULL),(123,70,'<com.beautystars.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(124,127,'<ax: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(125,49,'<com.attractionsphotos.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(126,22,'<com.sportsmajorstar.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(127,121,'<cp: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(128,29,'<com.attractionsphotos.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(129,45,'<com.beautystars.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(130,128,'<ca: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(131,94,'<as: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(132,33,'<com.beautystars.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(133,38,'<com.sportsmajorstar.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(134,124,'<k: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(135,119,'<bn: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(136,129,'<cb: void a(int,boolean)>',29,'a',NULL),(137,33,'<com.beautystars.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(138,68,'<com.sportsmajorstar.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(139,55,'<com.attractionsphotos.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(140,45,'<com.beautystars.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(141,74,'<com.sportsmajorstar.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(142,97,'<cn: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(143,113,'<cs: void a(int,boolean)>',10,'s',NULL),(144,19,'<com.sportsmajorstar.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(145,33,'<com.beautystars.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(146,13,'<com.attractionsphotos.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(147,80,'<com.sportsmajorstar.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(148,130,'<cq: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(149,131,'<cu: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(150,13,'<com.attractionsphotos.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(151,97,'<cn: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(152,55,'<com.attractionsphotos.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL),(153,25,'<com.sportsmajorstar.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(154,8,'<com.beautystars.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(155,80,'<com.sportsmajorstar.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(156,98,'<w: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(157,62,'<com.sportsmajorstar.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL),(158,49,'<com.attractionsphotos.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(159,97,'<cn: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(160,41,'<com.attractionsphotos.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(161,132,'<dl: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(162,99,'<aw: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(163,133,'<dk: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(164,38,'<com.sportsmajorstar.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(165,109,'<e: void a(int,boolean)>',57,'a',NULL),(166,17,'<com.attractionsphotos.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(167,116,'<k: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(168,112,'<ae: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(169,134,'<au: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(170,96,'<cx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(171,26,'<com.beautystars.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(172,70,'<com.beautystars.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(173,76,'<com.attractionsphotos.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(174,32,'<com.sportsmajorstar.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(175,45,'<com.beautystars.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(176,101,'<z: void onClick(android.view.View)>',224,'a',NULL),(177,17,'<com.attractionsphotos.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(178,94,'<as: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(179,10,'<com.beautystars.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(180,129,'<cb: void a(int,boolean)>',10,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,11),(2,4,11),(3,5,11),(4,6,11),(5,8,12),(6,9,13),(7,11,1),(8,13,14),(9,14,1),(10,16,15),(11,17,11),(12,18,11),(13,19,11),(14,20,16),(15,21,11),(16,22,11),(17,28,11),(18,31,17),(19,34,17),(20,38,18),(21,39,11),(22,41,11),(23,42,1),(24,44,1),(25,46,1),(26,47,19),(27,49,1),(28,54,11),(29,55,11),(30,59,20),(31,62,1),(32,63,5),(33,64,1),(34,65,2),(35,66,5),(36,67,1),(37,69,1),(38,71,21),(39,73,22),(40,75,11),(41,77,11),(42,79,11),(43,81,11),(44,84,17),(45,86,11),(46,87,11),(47,88,11),(48,89,17),(49,91,11),(50,94,11),(51,95,11),(52,97,11),(53,103,11),(54,104,7),(55,106,19),(56,108,7),(57,110,7),(58,111,7),(59,115,7),(60,117,2),(61,116,11),(62,118,7),(63,119,12),(64,120,7),(65,122,11),(66,123,7),(67,124,25),(68,125,7),(69,128,7),(70,130,1),(71,132,1),(72,133,7),(73,135,7),(74,139,7),(75,141,7),(76,142,11),(77,144,11),(78,145,12),(79,146,7),(80,147,7),(81,148,26),(82,150,11),(83,153,5),(84,154,11),(85,156,27),(86,158,1),(87,159,21),(88,160,1),(89,161,18),(90,162,1),(91,163,11),(92,164,1),(93,165,1),(94,166,15),(95,167,1),(96,168,11),(97,169,28),(98,176,1),(99,177,11),(100,179,1),(101,183,2),(102,184,11),(103,189,21),(104,190,29),(105,191,30),(106,193,11),(107,197,11),(108,198,31),(109,199,29),(110,200,11),(111,201,15),(112,206,11),(113,208,11),(114,213,19),(115,214,11),(116,216,11),(117,218,16),(118,221,1),(119,223,1),(120,226,1),(121,227,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,11,1),(2,14,3),(3,42,1),(4,44,3),(5,46,1),(6,49,3),(7,62,1),(8,64,3),(9,67,1),(10,69,3),(11,84,5),(12,86,5),(13,89,5),(14,130,1),(15,132,3),(16,158,1),(17,160,3),(18,162,1),(19,164,3),(20,165,1),(21,167,3),(22,176,1),(23,179,3),(24,221,1),(25,223,3),(26,226,1),(27,227,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/iqtth/pnv/vqhkgq/hwgstvbk/Applause'),(2,2,'com/iqtth/pnv/vqhkgq/hwgstvbk/OptionActivity'),(3,7,'com/oiocawjn/lepnuvd/GameActivity'),(4,8,'com/beautystars/GameService'),(5,9,'com/beautystars/GameService'),(6,10,'com/oiocawjn/lepnuvd/HowToPlayGameActivity'),(7,12,'com/oiocawjn/lepnuvd/StartGameActivity'),(8,13,'com/attractionsphotos/GameService'),(9,15,'com/scoreloop/android/coreui/HighscoresActivity'),(10,16,'com/attractionsphotos/GameService'),(11,20,'com/attractionsphotos/GameService'),(12,24,'com/oiocawjn/lepnuvd/GameActivity'),(13,23,'com/attractionsphotos/Myhall'),(14,25,'com/sportsmajorstar/GameService'),(15,26,'com/beautystars/GameService'),(16,27,'com/attractionsphotos/GameInfo'),(17,29,'com/sportsmajorstar/Myhall'),(18,30,'com/beautystars/Myhall'),(19,33,'com/sportsmajorstar/Myhall'),(20,32,'com/attractionsphotos/Myhall'),(21,35,'com/beautystars/qimg/ImageTestActivity'),(22,36,'com/attractionsphotos/GameService'),(23,37,'com/oiocawjn/lepnuvd/StartGameActivity'),(24,38,'com/beautystars/GameService'),(25,40,'com/attractionsphotos/GameInfo'),(26,43,'com/nd/dianjin/activity/OfferAppActivity'),(27,45,'com/attractionsphotos/Myhall'),(28,48,'com/scoreloop/android/coreui/ProfileActivity'),(29,50,'com/sportsmajorstar/Myhall'),(30,52,'com/attractionsphotos/Myhall'),(31,51,'com/beautystars/GameInfo'),(32,53,'com/sportsmajorstar/GameInfo'),(33,56,'com/sportsmajorstar/qimg/ImageTestActivity'),(34,57,'com/beautystars/GameService'),(35,58,'com/attractionsphotos/GameService'),(36,59,'com.adobe.air.AIRService'),(37,60,'com/beautystars/GameInfo'),(38,61,'com/attractionsphotos/GameInfo'),(39,68,'com/attractionsphotos/Myhall'),(40,70,'com/nd/dianjin/activity/OfferAppActivity'),(41,71,'com/sportsmajorstar/GameService'),(42,72,'com/attractionsphotos/Myhall'),(43,74,'(.*)'),(44,73,'com/sportsmajorstar/GameService'),(45,76,'com/attractionsphotos/GameService'),(46,78,'com/wia/ucgepcdvlsl/activity/MainActivity'),(47,80,'com/attractionsphotos/qimg/ImageTestActivity'),(48,83,'com/attractionsphotos/Myhall'),(49,82,'com/sportsmajorstar/Myhall'),(50,85,'com/beautystars/GameInfo'),(51,90,'com/sportsmajorstar/GameInfo'),(52,92,'com/beautystars/GameInfo'),(53,93,'com/wia/ucgepcdvlsl/activity/MainActivity'),(54,96,'com/sportsmajorstar/Myhall'),(55,98,'com/attractionsphotos/GameInfo'),(56,99,'com/beautystars/GameService'),(57,100,'com/sportsmajorstar/GameInfo'),(58,101,'com/attractionsphotos/GameService'),(59,102,'com/sportsmajorstar/GameService'),(60,105,'com/sportsmajorstar/Myhall'),(61,107,'com/beautystars/Myhall'),(62,109,'com/sportsmajorstar/GameInfo'),(63,113,'com/beautystars/GameService'),(64,114,'com/sportsmajorstar/Myhall'),(65,112,'com/attractionsphotos/Myhall'),(66,119,'com/attractionsphotos/GameService'),(67,121,'com/sportsmajorstar/GameService'),(68,124,'com/attractionsphotos/GameService'),(69,126,'com/sportsmajorstar/GameInfo'),(70,127,'com/beautystars/GameInfo'),(71,129,'com/attractionsphotos/GameService'),(72,134,'com/attractionsphotos/GameService'),(73,131,'com/beautystars/GameInfo'),(74,137,'com/sportsmajorstar/GameService'),(75,138,'com/attractionsphotos/Myhall'),(76,136,'com/beautystars/Myhall'),(77,140,'com/sportsmajorstar/GameInfo'),(78,145,'com/sportsmajorstar/GameService'),(79,143,'com/beautystars/GameInfo'),(80,148,'com/sportsmajorstar/GameService'),(81,149,'com/beautystars/GameService'),(82,152,'com/beautystars/GameService'),(83,151,'com/sportsmajorstar/Myhall'),(84,155,'(.*)'),(85,156,'com/beautystars/GameService'),(86,157,'com/sportsmajorstar/GameInfo'),(87,159,'com/beautystars/GameService'),(88,161,'com/beautystars/GameService'),(89,166,'com/sportsmajorstar/GameService'),(90,169,'com/sportsmajorstar/GameService'),(91,170,'com/attractionsphotos/GameInfo'),(92,171,'com/beautystars/GameAlertDialog'),(93,173,'com/attractionsphotos/Myhall'),(94,172,'com/sportsmajorstar/Myhall'),(95,174,'com/beautystars/Myhall'),(96,175,'com/sportsmajorstar/GameInfo'),(97,178,'com/sportsmajorstar/Myhall'),(98,180,'com/beautystars/Myhall'),(99,181,'com/sportsmajorstar/GameService'),(100,182,'com/attractionsphotos/GameInfo'),(101,185,'com/beautystars/Myhall'),(102,186,'com/attractionsphotos/GameService'),(103,187,'com/sportsmajorstar/GameService'),(104,188,'com/beautystars/GameService'),(105,189,'com/attractionsphotos/GameService'),(106,190,'com/sportsmajorstar/GameService'),(107,191,'com/attractionsphotos/GameService'),(108,192,'com/beautystars/Myhall'),(109,194,'com/attractionsphotos/GameService'),(110,195,'com/beautystars/Myhall'),(111,196,'com/attractionsphotos/GameAlertDialog'),(112,198,'com/beautystars/GameService'),(113,199,'com/sportsmajorstar/GameService'),(114,201,'com/beautystars/GameService'),(115,203,'com/attractionsphotos/GameInfo'),(116,204,'com/beautystars/Myhall'),(117,202,'com/sportsmajorstar/GameAlertDialog'),(118,205,'com/attractionsphotos/GameService'),(119,207,'com/sportsmajorstar/Myhall'),(120,209,'com/sportsmajorstar/GameService'),(121,210,'com/beautystars/qimg/ImageTestActivity'),(122,211,'com/attractionsphotos/Myhall'),(123,212,'com/sportsmajorstar/Myhall'),(124,215,'com/beautystars/GameService'),(125,217,'com/beautystars/GameService'),(126,219,'com/sportsmajorstar/GameService'),(127,218,'com/attractionsphotos/GameService'),(128,222,'com/attractionsphotos/GameInfo'),(129,220,'com/beautystars/GameInfo'),(130,224,'com/attractionsphotos/Myhall'),(131,225,'com/beautystars/Myhall'),(132,228,'com/sportsmajorstar/GameService');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,5,3),(4,6,4),(5,17,5),(6,18,6),(7,19,7),(8,21,8),(9,22,9),(10,28,10),(11,31,11),(12,34,12),(13,39,13),(14,41,15),(15,47,16),(16,54,17),(17,55,18),(18,75,19),(19,77,20),(20,79,21),(21,81,22),(22,84,23),(23,86,24),(24,87,25),(25,88,26),(26,89,27),(27,91,28),(28,94,29),(29,95,30),(30,97,31),(31,103,32),(32,106,33),(33,116,34),(34,122,35),(35,142,36),(36,144,37),(37,150,38),(38,154,39),(39,163,40),(40,168,41),(41,177,42),(42,184,43),(43,193,44),(44,197,45),(45,200,46),(46,206,47),(47,208,48),(48,213,49),(49,216,50),(50,214,51);
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'MatchSound'),(2,2,'GameMusic'),(3,2,'ChangeTheme'),(4,2,'Vibrate'),(5,23,'clicked'),(6,27,'title'),(7,30,'clicked'),(8,32,'title'),(9,33,'clicked'),(10,32,'nextclassid'),(11,32,'clicked'),(12,40,'title'),(13,43,'oriention'),(14,45,'title'),(15,45,'nextclassid'),(16,45,'clicked'),(17,50,'clicked'),(18,51,'game'),(19,51,'fromtype'),(20,60,'game'),(21,60,'fromtype'),(22,61,'title'),(23,70,'oriention'),(24,82,'title'),(25,83,'clicked'),(26,82,'nextclassid'),(27,82,'clicked'),(28,85,'title'),(29,85,'game'),(30,85,'fromtype'),(31,90,'id'),(32,92,'title'),(33,90,'from_alert'),(34,92,'game'),(35,90,'detail_flag'),(36,92,'fromtype'),(37,105,'clicked'),(38,104,'DeviceId'),(39,104,'YoinkToken'),(40,104,'Nickname'),(41,107,'title'),(42,107,'nextclassid'),(43,107,'clicked'),(44,109,'title'),(45,110,'Nickname'),(46,111,'DeviceId'),(47,111,'Nickname'),(48,112,'title'),(49,112,'nextclassid'),(50,115,'Nickname'),(51,112,'clicked'),(52,115,'YoinkToken'),(53,115,'YoinkId'),(54,118,'DeviceId'),(55,120,'YoinkToken'),(56,123,'YoinkId'),(57,125,'DeviceId'),(58,125,'YoinkToken'),(59,127,'game'),(60,125,'Nickname'),(61,127,'fromtype'),(62,125,'YoinkId'),(63,128,'DeviceId'),(64,128,'Nickname'),(65,128,'YoinkId'),(66,131,'game'),(67,131,'fromtype'),(68,133,'DeviceId'),(69,133,'YoinkId'),(70,135,'Nickname'),(71,136,'title'),(72,135,'YoinkId'),(73,136,'nextclassid'),(74,136,'clicked'),(75,139,'DeviceId'),(76,139,'YoinkToken'),(77,140,'title'),(78,141,'DeviceId'),(79,141,'YoinkToken'),(80,143,'title'),(81,141,'YoinkId'),(82,143,'game'),(83,143,'fromtype'),(84,146,'YoinkToken'),(85,146,'YoinkId'),(86,147,'Nickname'),(87,147,'YoinkToken'),(88,151,'nextclassid'),(89,151,'clicked'),(90,157,'title'),(91,171,'title'),(92,171,'btn_txt'),(93,171,'need_adb_flag'),(94,171,'cont'),(95,172,'title'),(96,171,'close_flag'),(97,172,'nextclassid'),(98,173,'clicked'),(99,172,'clicked'),(100,182,'id'),(101,182,'from_alert'),(102,182,'detail_flag'),(103,185,'clicked'),(104,192,'title'),(105,192,'nextclassid'),(106,192,'clicked'),(107,195,'clicked'),(108,196,'title'),(109,196,'btn_txt'),(110,196,'need_adb_flag'),(111,196,'cont'),(112,196,'close_flag'),(113,202,'title'),(114,202,'btn_txt'),(115,202,'need_adb_flag'),(116,204,'clicked'),(117,202,'cont'),(118,202,'close_flag'),(119,207,'clicked'),(120,211,'nextclassid'),(121,211,'clicked'),(122,212,'title'),(123,212,'nextclassid'),(124,212,'clicked'),(125,220,'id'),(126,220,'from_alert'),(127,220,'detail_flag'),(128,224,'clicked'),(129,225,'nextclassid'),(130,225,'clicked');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,8,1),(8,10,1),(9,11,1),(10,12,1),(11,13,1),(12,14,1),(13,15,1),(14,16,1),(15,17,1),(16,18,1),(17,19,1),(18,20,1),(19,22,2),(20,21,2),(21,23,1),(22,24,1),(23,25,1),(24,26,1),(25,27,1),(26,28,2),(27,29,1),(28,30,1),(29,31,1),(30,32,1),(31,33,2),(32,34,1),(33,35,3),(34,36,1),(35,39,1),(36,38,3),(37,40,3),(38,41,1),(39,42,5),(40,43,6),(41,44,3),(42,45,7),(43,46,8),(44,47,10),(45,47,9),(46,48,9),(47,49,9),(48,50,24),(49,50,23),(50,51,10),(51,52,10),(52,53,10),(53,54,9),(54,55,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,2,1),(2,26,1),(3,25,1),(4,29,1),(5,30,1),(6,31,1),(7,32,1),(8,34,1),(9,36,1),(10,39,1),(11,41,1),(12,42,2),(13,44,2),(14,49,4),(15,51,4),(16,52,4),(17,53,4),(18,54,4),(19,55,4);
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
INSERT INTO `IFData` VALUES (1,47,'package',NULL,NULL,'com.adobe.air',NULL,NULL),(2,48,'package',NULL,NULL,NULL,NULL,NULL),(3,49,'package',NULL,NULL,NULL,NULL,NULL),(4,51,'package',NULL,NULL,NULL,NULL,NULL),(5,52,'package',NULL,NULL,NULL,NULL,NULL),(6,53,'package',NULL,NULL,NULL,NULL,NULL),(7,54,'package',NULL,NULL,NULL,NULL,NULL),(8,55,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,3,'application','vnd.android.package-archive'),(2,21,'(.*)','(.*)'),(3,31,'(.*)','(.*)'),(4,39,'application','vnd.android.package-archive'),(5,41,'application','vnd.android.package-archive'),(6,54,'application','vnd.android.package-archive'),(7,75,'application','vnd.android.package-archive'),(8,88,'application','vnd.android.package-archive'),(9,89,'(.*)','(.*)'),(10,91,'application','vnd.android.package-archive'),(11,97,'application','vnd.android.package-archive'),(12,103,'application','vnd.android.package-archive'),(13,116,'application','vnd.android.package-archive'),(14,122,'application','vnd.android.package-archive'),(15,150,'application','vnd.android.package-archive'),(16,154,'application','vnd.android.package-archive'),(17,163,'application','vnd.android.package-archive'),(18,193,'application','vnd.android.package-archive'),(19,206,'application','vnd.android.package-archive'),(20,208,'application','vnd.android.package-archive'),(21,214,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.iqtth.pnv.vqhkgq.hwgstvbk'),(2,2,'com.iqtth.pnv.vqhkgq.hwgstvbk'),(3,7,'com.oiocawjn.lepnuvd'),(4,8,'com.beautystars'),(5,9,'com.beautystars'),(6,10,'com.oiocawjn.lepnuvd'),(7,12,'com.oiocawjn.lepnuvd'),(8,11,'(.*)'),(9,13,'com.attractionsphotos'),(10,14,'(.*)'),(11,15,'com.oiocawjn.lepnuvd'),(12,16,'com.attractionsphotos'),(13,20,'com.attractionsphotos'),(14,24,'com.oiocawjn.lepnuvd'),(15,23,'com.attractionsphotos'),(16,25,'com.sportsmajorstar'),(17,26,'com.beautystars'),(18,27,'com.attractionsphotos'),(19,29,'com.sportsmajorstar'),(20,30,'com.beautystars'),(21,33,'com.sportsmajorstar'),(22,32,'com.attractionsphotos'),(23,35,'com.beautystars'),(24,36,'com.attractionsphotos'),(25,37,'com.oiocawjn.lepnuvd'),(26,38,'com.beautystars'),(27,40,'com.attractionsphotos'),(28,42,'(.*)'),(29,43,'com.oiocawjn.lepnuvd'),(30,44,''),(31,46,''),(32,45,'com.attractionsphotos'),(33,48,'com.oiocawjn.lepnuvd'),(34,49,'(.*)'),(35,50,'com.sportsmajorstar'),(36,52,'com.attractionsphotos'),(37,51,'com.beautystars'),(38,53,'com.sportsmajorstar'),(39,56,'com.sportsmajorstar'),(40,57,'com.beautystars'),(41,58,'com.attractionsphotos'),(42,59,'com.adobe.air'),(43,60,'com.beautystars'),(44,61,'com.attractionsphotos'),(45,62,'(.*)'),(46,64,'(.*)'),(47,67,'NULL-CONSTANT'),(48,68,'com.attractionsphotos'),(49,69,'NULL-CONSTANT'),(50,70,'com.wia.ucgepcdvlsl'),(51,71,'com.sportsmajorstar'),(52,72,'com.attractionsphotos'),(53,74,'com.wia.ucgepcdvlsl'),(54,73,'com.sportsmajorstar'),(55,76,'com.attractionsphotos'),(56,78,'com.wia.ucgepcdvlsl'),(57,80,'com.attractionsphotos'),(58,83,'com.attractionsphotos'),(59,82,'com.sportsmajorstar'),(60,85,'com.beautystars'),(61,90,'com.sportsmajorstar'),(62,92,'com.beautystars'),(63,93,'com.wia.ucgepcdvlsl'),(64,96,'com.sportsmajorstar'),(65,98,'com.attractionsphotos'),(66,99,'com.beautystars'),(67,100,'com.sportsmajorstar'),(68,101,'com.attractionsphotos'),(69,102,'com.sportsmajorstar'),(70,105,'com.sportsmajorstar'),(71,107,'com.beautystars'),(72,109,'com.sportsmajorstar'),(73,114,'com.sportsmajorstar'),(74,113,'com.beautystars'),(75,112,'com.attractionsphotos'),(76,119,'com.attractionsphotos'),(77,121,'com.sportsmajorstar'),(78,124,'com.attractionsphotos'),(79,126,'com.sportsmajorstar'),(80,127,'com.beautystars'),(81,129,'com.attractionsphotos'),(82,130,'NULL-CONSTANT'),(83,132,'NULL-CONSTANT'),(84,134,'com.attractionsphotos'),(85,131,'com.beautystars'),(86,137,'com.sportsmajorstar'),(87,138,'com.attractionsphotos'),(88,136,'com.beautystars'),(89,140,'com.sportsmajorstar'),(90,145,'com.sportsmajorstar'),(91,143,'com.beautystars'),(92,148,'com.sportsmajorstar'),(93,149,'com.beautystars'),(94,152,'com.beautystars'),(95,151,'com.sportsmajorstar'),(96,155,'com.wia.ucgepcdvlsl'),(97,156,'com.beautystars'),(98,157,'com.sportsmajorstar'),(99,158,'(.*)'),(100,159,'com.beautystars'),(101,160,''),(102,161,'com.beautystars'),(103,162,''),(104,164,'(.*)'),(105,165,'(.*)'),(106,166,'com.sportsmajorstar'),(107,167,'(.*)'),(108,169,'com.sportsmajorstar'),(109,170,'com.attractionsphotos'),(110,171,'com.beautystars'),(111,173,'com.attractionsphotos'),(112,172,'com.sportsmajorstar'),(113,174,'com.beautystars'),(114,175,'com.sportsmajorstar'),(115,176,'NULL-CONSTANT'),(116,178,'com.sportsmajorstar'),(117,179,'NULL-CONSTANT'),(118,180,'com.beautystars'),(119,181,'com.sportsmajorstar'),(120,182,'com.attractionsphotos'),(121,185,'com.beautystars'),(122,186,'com.attractionsphotos'),(123,187,'com.sportsmajorstar'),(124,188,'com.beautystars'),(125,189,'com.attractionsphotos'),(126,190,'com.sportsmajorstar'),(127,191,'com.attractionsphotos'),(128,192,'com.beautystars'),(129,194,'com.attractionsphotos'),(130,195,'com.beautystars'),(131,196,'com.attractionsphotos'),(132,198,'com.beautystars'),(133,199,'com.sportsmajorstar'),(134,201,'com.beautystars'),(135,203,'com.attractionsphotos'),(136,204,'com.beautystars'),(137,202,'com.sportsmajorstar'),(138,205,'com.attractionsphotos'),(139,207,'com.sportsmajorstar'),(140,209,'com.sportsmajorstar'),(141,210,'com.beautystars'),(142,211,'com.attractionsphotos'),(143,212,'com.sportsmajorstar'),(144,215,'com.beautystars'),(145,217,'com.beautystars'),(146,219,'com.sportsmajorstar'),(147,218,'com.attractionsphotos'),(148,222,'com.attractionsphotos'),(149,221,'(.*)'),(150,220,'com.beautystars'),(151,223,''),(152,224,'com.attractionsphotos'),(153,225,'com.beautystars'),(154,226,''),(155,227,'(.*)'),(156,228,'com.sportsmajorstar');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,14,0),(4,15,0),(5,18,0),(6,20,0),(7,23,0),(8,24,0),(9,27,0),(10,26,0),(11,29,0),(12,31,0),(13,32,0),(14,33,0),(15,35,0),(16,36,0),(17,38,0),(18,39,0),(19,41,0),(20,44,0),(21,46,0),(22,48,0),(23,49,0),(24,51,0),(25,54,0),(26,53,0),(27,57,0),(28,58,0),(29,59,0),(30,63,0),(31,64,0),(32,65,0),(33,66,0),(34,69,0),(35,70,0),(36,72,0),(37,73,0),(38,76,0),(39,77,0),(40,80,0),(41,85,0),(42,87,0),(43,88,0),(44,88,0),(45,88,0),(46,88,0),(47,89,0),(48,90,0),(49,80,0),(50,91,0),(51,76,0),(52,70,0),(53,80,0),(54,70,0),(55,76,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,4,1,0),(5,4,1,0),(6,4,1,0),(7,5,0,0),(8,6,0,0),(9,6,0,0),(10,8,0,0),(11,9,1,0),(12,10,0,0),(13,11,0,0),(14,9,1,0),(15,12,0,0),(16,11,0,0),(17,13,1,0),(18,14,1,0),(19,15,1,0),(20,16,0,0),(21,14,1,0),(22,15,1,0),(23,17,0,0),(24,18,0,0),(25,19,0,0),(26,20,0,0),(27,21,0,0),(28,22,1,0),(29,23,0,0),(30,24,0,0),(31,22,1,0),(32,25,0,0),(33,26,0,0),(34,22,1,0),(35,27,0,0),(36,28,0,0),(37,29,0,0),(38,30,0,0),(39,31,1,0),(40,33,0,0),(41,31,1,0),(42,35,1,0),(43,36,0,0),(44,35,1,0),(45,37,0,0),(46,35,1,0),(47,38,1,0),(48,39,0,0),(49,35,1,0),(50,40,0,0),(51,41,0,0),(52,42,0,0),(53,43,0,0),(54,44,1,0),(55,45,1,0),(56,46,0,0),(57,47,0,0),(58,49,0,0),(59,48,0,0),(60,50,0,0),(61,51,0,0),(62,52,1,0),(63,53,1,0),(64,52,1,0),(65,54,1,0),(66,55,1,0),(67,56,1,0),(68,57,0,0),(69,56,1,0),(70,59,0,0),(71,58,0,0),(72,60,0,0),(73,58,0,0),(74,61,0,0),(75,62,1,0),(76,63,0,0),(77,64,1,0),(78,65,0,0),(79,66,1,0),(80,67,0,0),(81,66,1,0),(82,69,0,0),(83,71,0,0),(84,70,1,0),(85,72,0,0),(86,70,1,0),(87,73,1,0),(88,74,1,0),(89,70,1,0),(90,75,0,0),(91,74,1,0),(92,76,0,0),(93,77,0,0),(94,78,1,0),(95,79,1,0),(96,80,0,0),(97,81,1,0),(98,82,0,0),(99,84,0,0),(100,83,0,0),(101,85,0,0),(102,86,0,0),(103,87,1,0),(104,88,1,0),(105,89,0,0),(106,90,1,0),(107,91,0,0),(108,88,1,0),(109,92,0,0),(110,88,1,0),(111,88,1,0),(112,93,0,0),(113,94,0,0),(114,95,0,0),(115,88,1,0),(116,97,1,0),(117,96,1,0),(118,88,1,0),(119,98,0,0),(120,88,1,0),(121,99,0,0),(122,97,1,0),(123,88,1,0),(124,98,0,0),(125,88,1,0),(126,100,0,0),(127,101,0,0),(128,88,1,0),(129,102,0,0),(130,103,1,0),(131,104,0,0),(132,103,1,0),(133,88,1,0),(134,105,0,0),(135,88,1,0),(136,107,0,0),(137,106,0,0),(138,108,0,0),(139,88,1,0),(140,109,0,0),(141,88,1,0),(142,110,1,0),(143,111,0,0),(144,110,1,0),(145,112,0,0),(146,88,1,0),(147,88,1,0),(148,112,0,0),(149,113,0,0),(150,114,1,0),(151,115,0,0),(152,116,0,0),(153,117,1,0),(154,118,1,0),(155,119,0,0),(156,120,0,0),(157,121,0,0),(158,122,1,0),(159,120,0,0),(160,122,1,0),(161,123,0,0),(162,122,1,0),(163,124,1,0),(164,122,1,0),(165,125,1,0),(166,126,0,0),(167,125,1,0),(168,127,1,0),(169,126,0,0),(170,128,0,0),(171,129,0,0),(172,130,0,0),(173,131,0,0),(174,132,0,0),(175,133,0,0),(176,134,1,0),(177,135,1,0),(178,136,0,0),(179,134,1,0),(180,137,0,0),(181,138,0,0),(182,139,0,0),(183,140,1,0),(184,141,1,0),(185,142,0,0),(186,143,0,0),(187,144,0,0),(188,145,0,0),(189,146,0,0),(190,147,0,0),(191,146,0,0),(192,148,0,0),(193,149,1,0),(194,150,0,0),(195,151,0,0),(196,152,0,0),(197,153,1,0),(198,154,0,0),(199,155,0,0),(200,156,1,0),(201,154,0,0),(202,157,0,0),(203,158,0,0),(204,159,0,0),(205,160,0,0),(206,161,1,0),(207,162,0,0),(208,163,1,0),(209,164,0,0),(210,165,0,0),(211,166,0,0),(212,167,0,0),(213,168,1,0),(214,169,1,0),(215,171,0,0),(216,170,1,0),(217,172,0,0),(218,173,0,0),(219,174,0,0),(220,175,0,0),(221,176,1,0),(222,177,0,0),(223,176,1,0),(224,178,0,0),(225,179,0,0),(226,176,1,0),(227,176,1,0),(228,180,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_CACHE_FILESYSTEM'),(6,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(12,'android.permission.DELETE_CACHE_FILES'),(2,'android.permission.INTERNET'),(11,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.SET_WALLPAPER'),(4,'android.permission.VIBRATE'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'com.android.launcher.permission.INSTALL_SHORTCUT'),(13,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'market://details?id=com.feasy.jewels.Jelly',NULL,NULL,NULL),(3,NULL,NULL,'market:///search?q=pub:\"funweaver\"',NULL,NULL,NULL),(4,NULL,NULL,'market://search?q=pub:\"funweaver\"',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://',NULL,NULL,NULL),(33,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'',NULL,NULL,NULL),(38,NULL,NULL,'file://',NULL,NULL,NULL),(39,NULL,NULL,'file://',NULL,NULL,NULL),(40,NULL,NULL,'file://',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'file://',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'file://',NULL,NULL,NULL),(48,NULL,NULL,'file://',NULL,NULL,NULL),(49,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'(.*)',NULL,NULL,NULL),(51,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,34,14);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,2,2),(9,3,1),(10,3,2),(11,2,3),(12,3,3),(13,2,6),(14,3,6),(15,2,7),(16,3,7),(17,2,8),(18,2,9),(19,3,8),(20,3,9),(21,2,10),(22,4,1),(23,2,11),(24,3,10),(25,4,2),(26,2,12),(27,3,11),(28,4,3),(29,3,12),(30,2,13),(31,4,6),(32,3,13),(33,4,7),(34,4,8),(35,5,1),(36,4,9),(37,5,2),(38,4,10),(39,5,3),(40,4,11),(41,5,6),(42,4,12),(43,5,7),(44,4,13),(45,5,8),(46,5,9),(47,5,10),(48,5,11),(49,5,12),(50,5,13),(51,6,1),(52,6,2),(53,6,3),(54,6,5),(55,6,6),(56,7,1),(57,7,2),(58,7,3),(59,7,5),(60,7,6),(61,7,9);
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

-- Dump completed on 2015-10-09  0:39:31
