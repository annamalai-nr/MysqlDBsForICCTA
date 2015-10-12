-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_437
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
INSERT INTO `ActionStrings` VALUES (6,'(.*)'),(7,'.ImageTestActivity'),(18,'.Myhall'),(19,'.Web'),(2,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.DELETE'),(27,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.PACKAGE_ADDED'),(11,'android.intent.action.PACKAGE_REMOVED'),(31,'android.intent.action.SENDTO'),(5,'android.intent.action.VIEW'),(13,'com.airpush.android.PushServiceStart(.*)'),(4,'com.airpush.android.PushServiceStart12138'),(16,'com.airpush.android.PushServiceStartInvalid'),(21,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(15,'com.airpush.android.PushServiceStartinvalid Id'),(3,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(25,'com.animewallpaper.GameBootReceiver'),(12,'com.animewallpaper.ImageTestActivity'),(28,'com.animewallpaper.Myhall'),(20,'com.animewallpaper.Web'),(24,'com.carwall1.GameBootReceiver'),(29,'com.carwall1.ImageTestActivity'),(22,'com.carwall1.Myhall'),(26,'com.carwall1.Web'),(23,'com.picshow1.GameBootReceiver'),(30,'com.picshow1.ImageTestActivity'),(17,'com.picshow1.Myhall'),(32,'com.picshow1.Web'),(8,'org.android_iokwybzh.ImageTestActivity'),(9,'org.android_iokwybzh.hnXNmoxe1');
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
INSERT INTO `Applications` VALUES (1,'org.android_iokwybzh',1100),(2,'com.carwall1',1014),(3,'com.qukijp.cdptra',10049),(4,'mwgmvgq.dvlgj.udlg',10038),(5,'com.animewallpaper',1016),(6,'com.jmiqclugc.qfnmpelawoito',10033),(7,'com.picshow1',1002);
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
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(3,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER'),(5,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'org.android_iokwybzh.image.PhotoGrid'),(2,2,'com.carwall1.Myhall'),(3,1,'org.android_iokwybzh.image.ShowImage'),(4,2,'com.carwall1.Web'),(5,1,'org.android_iokwybzh.hnXNmoxe8'),(6,2,'com.carwall1.HomeActivity'),(7,3,'com.qukijp.cdptra.Splash'),(8,2,'com.carwall1.SortActivity1'),(9,1,'org.android_iokwybzh.hnXNmoxe5'),(10,2,'com.carwall1.SortActivity2'),(11,3,'com.qukijp.cdptra.RabbitActivity'),(12,5,'com.animewallpaper.Myhall'),(13,3,'com.qukijp.cdptra.Prefs'),(14,1,'org.android_iokwybzh.hnXNmoxe13'),(15,5,'com.animewallpaper.Web'),(16,2,'com.carwall1.SearchActivity'),(17,3,'com.qukijp.cdptra.GlobalRankingActivity'),(18,5,'com.animewallpaper.HomeActivity'),(19,6,'com.jmiqclugc.qfnmpelawoito.ActivityMain'),(20,3,'com.qukijp.cdptra.TipsActivity'),(21,1,'org.android_iokwybzh.hnXNmoxe12'),(22,5,'com.animewallpaper.SortActivity1'),(23,2,'com.carwall1.ManagerActivity'),(24,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(25,6,'com.jmiqclugc.qfnmpelawoito.GameActivity'),(26,1,'org.android_iokwybzh.hnXNmoxe2'),(27,5,'com.animewallpaper.SortActivity2'),(28,3,'com.airpush.android.PushAds'),(29,6,'com.jmiqclugc.qfnmpelawoito.ActivityScore'),(30,2,'com.carwall1.GameInfo'),(31,3,'com.paqeE.atiEgDQOhf'),(32,6,'com.jmiqclugc.qfnmpelawoito.ActivityHelp'),(33,5,'com.animewallpaper.SearchActivity'),(34,1,'org.android_iokwybzh.hnXNmoxe1'),(35,3,'com.paqeE.ctOuwGFmSREp'),(36,6,'com.google.ads.AdActivity'),(37,2,'com.carwall1.TableClass'),(38,6,'com.tlgsDl.OpRrNbUajim'),(39,5,'com.animewallpaper.ManagerActivity'),(40,6,'com.tlgsDl.QtIiAckNME'),(41,3,'com.paqeE.tUTNCmQEkPVcr'),(42,7,'com.picshow1.Myhall'),(43,2,'com.carwall1.GameAlertDialog'),(44,3,'com.qukijp.cdptra.ScoreUpgrateService'),(45,5,'com.animewallpaper.GameInfo'),(46,7,'com.picshow1.Web'),(47,2,'com.carwall1.DevelopmentSettings'),(48,3,'com.airpush.android.PushService'),(49,6,'com.nd.dianjin.activity.OfferAppActivity'),(50,7,'com.picshow1.HomeActivity'),(51,5,'com.animewallpaper.TableClass'),(52,7,'com.picshow1.SortActivity1'),(53,2,'com.carwall1.qimg.ImageTestActivity'),(54,7,'com.picshow1.SortActivity2'),(55,3,'com.airpush.android.UserDetailsReceiver'),(56,5,'com.animewallpaper.GameAlertDialog'),(57,3,'com.airpush.android.MessageReceiver'),(58,7,'com.picshow1.SearchActivity'),(59,5,'com.animewallpaper.DevelopmentSettings'),(60,3,'com.airpush.android.DeliveryReceiver'),(61,2,'com.carwall1.qimg.ADactivity'),(62,3,'com.qukijp.cdptra.BootReceiver'),(63,2,'com.carwall1.GameService'),(64,5,'com.animewallpaper.qimg.ImageTestActivity'),(65,7,'com.picshow1.ManagerActivity'),(66,2,'com.carwall1.GameBootReceiver'),(67,7,'com.picshow1.GameInfo'),(68,5,'com.animewallpaper.image.ADactivity'),(69,5,'com.animewallpaper.GameService'),(70,7,'com.picshow1.TableClass'),(71,7,'com.picshow1.GameAlertDialog'),(72,5,'com.animewallpaper.GameBootReceiver'),(73,7,'com.picshow1.DevelopmentSettings'),(74,7,'com.picshow1.image.ImageTestActivity'),(75,7,'com.picshow1.GameService'),(76,7,'com.picshow1.GameBootReceiver'),(77,6,'com.nd.dianjin.DianJinPlatform'),(78,1,'aa'),(79,7,'q'),(80,1,'w'),(81,2,'de'),(82,7,'af'),(83,5,'au'),(84,2,'ah'),(85,1,'z'),(86,5,'ct'),(87,2,'cv'),(88,5,'bx'),(89,2,'an'),(90,2,'ct'),(91,7,'cy'),(92,5,'ea'),(93,7,'cd'),(94,5,'dd'),(95,7,'ce'),(96,5,'i'),(97,7,'cm'),(98,2,'ai'),(99,5,'db'),(100,5,'ac'),(101,7,'bd'),(102,5,'bw'),(103,2,'dd'),(104,5,'cd'),(105,2,'af'),(106,7,'bo'),(107,2,'bg'),(108,7,'bv'),(109,2,'bn'),(110,7,'ac'),(111,2,'df');
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,36,'params'),(2,36,'com.google.ads.AdOpener'),(3,36,'action'),(4,5,'filepath'),(5,5,'from_table'),(6,5,'fromtype'),(7,26,'stylebox'),(8,21,'url'),(9,21,'title'),(10,5,'title'),(11,1,'stylebox'),(12,5,'game'),(13,21,'package_name'),(14,21,'fromtable'),(15,5,'from_alert'),(16,21,'content'),(17,21,'version_code'),(18,21,'btn_txt'),(19,71,'content'),(20,14,'isDirectFromTable'),(21,65,'soft_id'),(22,74,'service_channel'),(23,65,'total'),(24,39,'total'),(25,27,'nextclassid'),(26,45,'title'),(27,39,'filepath'),(28,10,'nextclassid'),(29,24,'filepath'),(30,43,'content'),(31,39,'status'),(32,60,'imageurl'),(33,60,'creativeId'),(34,23,'overlayTransition'),(35,48,'appId'),(36,28,'creativeId'),(37,48,'creativeId'),(38,48,'header'),(39,39,'soft_id'),(40,14,'from'),(41,12,'nextclassid'),(42,39,'package_name'),(43,54,'service_channel'),(44,65,'app_name'),(45,65,'completed'),(46,15,'service_channel'),(47,33,'version_code'),(48,71,'url'),(49,43,'btn_txt'),(50,5,'status'),(51,60,'imei'),(52,60,'appId'),(53,39,'completed'),(54,28,'campId'),(55,24,'icon'),(56,28,'apikey'),(57,48,'campId'),(58,48,'adType'),(59,65,'package_name'),(60,48,'text'),(61,27,'package_name'),(62,39,'url'),(63,65,'status'),(64,48,'apikey'),(65,24,'url'),(66,39,'icon'),(67,53,'package_name'),(68,45,'from_table'),(69,21,'apk_url'),(70,2,'service_channel'),(71,30,'from_table'),(72,24,'soft_id'),(73,53,'nextclassid'),(74,24,'status'),(75,71,'title'),(76,65,'filepath'),(77,58,'status'),(78,24,'total'),(79,24,'package_name'),(80,4,'service_channel'),(81,56,'btn_txt'),(82,45,'from_alert'),(83,16,'status'),(84,16,'version_code'),(85,24,'app_name'),(86,24,'completed'),(87,58,'package_name'),(88,45,'filepath'),(89,64,'service_channel'),(90,56,'title'),(91,45,'status'),(92,12,'service_channel'),(93,67,'from_table'),(94,28,'appId'),(95,43,'url'),(96,60,'apikey'),(97,48,'number'),(98,56,'url'),(99,60,'text'),(100,33,'package_name'),(101,60,'title'),(102,69,'service_channel'),(103,30,'status'),(104,28,'url'),(105,48,'title'),(106,60,'number'),(107,67,'title'),(108,39,'app_name'),(109,65,'url'),(110,60,'campId'),(111,60,'sms'),(112,23,'overlayTitle'),(113,23,'shouldResizeOverlay'),(114,30,'title'),(115,10,'status'),(116,48,'link'),(117,23,'shouldShowTitlebar'),(118,67,'from_alert'),(119,67,'filepath'),(120,67,'status'),(121,42,'service_channel'),(122,30,'from_alert'),(123,23,'shouldEnableBottomBar'),(124,27,'status'),(125,42,'nextclassid'),(126,63,'service_channel'),(127,65,'icon'),(128,48,'imageurl'),(129,28,'sms'),(130,48,'sms'),(131,28,'number'),(132,23,'url'),(133,53,'status'),(134,60,'header'),(135,23,'shouldMakeOverlayTransparent'),(136,28,'header'),(137,28,'test'),(138,30,'filepath'),(139,75,'service_channel'),(140,48,'url'),(141,33,'status'),(142,48,'type'),(143,2,'nextclassid'),(144,16,'package_name'),(145,43,'title'),(146,28,'adType'),(147,46,'service_channel'),(148,48,'testMode'),(149,23,'shouldShowBottomBar'),(150,60,'url'),(151,10,'package_name'),(152,23,'transitionTime'),(153,41,''),(154,41,'(.*)'),(155,56,'content'),(156,71,'btn_txt'),(157,58,'version_code');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,23,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'s',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'s',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,54,'a',1,NULL,NULL),(54,53,'a',1,NULL,NULL),(55,55,'r',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'r',0,NULL,NULL),(58,58,'a',1,NULL,NULL),(59,59,'a',1,NULL,NULL),(60,60,'r',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'s',1,NULL,NULL),(64,64,'a',1,NULL,NULL),(65,65,'a',1,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'a',1,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'s',1,NULL,NULL),(70,70,'a',1,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'r',1,NULL,NULL),(73,73,'a',1,NULL,NULL),(74,74,'a',1,NULL,NULL),(75,75,'s',1,NULL,NULL),(76,76,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,19),(2,2,40),(3,3,38),(4,4,19),(5,5,19),(6,6,36),(7,7,38),(8,8,40),(9,9,14),(10,9,9),(11,9,21),(12,10,5),(13,11,5),(14,12,1),(15,13,21),(16,14,21),(17,15,34),(18,16,5),(19,17,1),(20,18,5),(21,19,34),(22,20,5),(23,21,34),(24,22,9),(25,23,5),(26,24,9),(27,25,21),(28,26,54),(29,27,67),(30,28,33),(31,29,5),(32,30,4),(33,31,64),(34,32,53),(35,33,30),(36,34,57),(37,35,21),(38,35,9),(39,35,14),(40,36,71),(41,37,10),(42,38,39),(43,39,2),(44,40,5),(45,41,71),(46,42,56),(47,43,16),(48,44,71),(49,45,51),(50,45,56),(51,46,24),(52,47,5),(53,48,35),(54,49,56),(55,50,61),(56,51,5),(57,52,65),(58,53,37),(59,54,50),(60,55,13),(61,56,61),(62,57,12),(63,58,42),(64,59,60),(65,60,5),(66,61,39),(67,62,6),(68,63,42),(69,64,24),(70,65,64),(71,66,50),(72,67,15),(73,68,5),(74,69,37),(75,70,1),(76,71,50),(77,72,2),(78,73,56),(79,73,51),(80,74,21),(81,75,30),(82,76,53),(83,77,18),(84,78,42),(85,79,2),(86,80,27),(87,81,6),(88,82,42),(89,83,64),(90,84,2),(91,85,33),(92,86,53),(93,87,18),(94,88,2),(95,89,58),(96,90,12),(97,91,74),(98,92,43),(99,93,12),(100,94,76),(101,95,45),(102,96,2),(103,97,53),(104,98,27),(105,99,66),(106,100,53),(107,101,18),(108,102,10),(109,103,70),(110,104,42),(111,105,66),(112,106,28),(113,107,15),(114,108,67),(115,109,2),(116,110,72),(117,111,4),(118,112,7),(119,113,28),(120,114,15),(121,115,37),(122,116,65),(123,117,24),(124,118,50),(125,119,45),(126,120,37),(127,121,55),(128,122,76),(129,123,67),(130,124,72),(131,125,30),(132,126,58),(133,127,12),(134,128,10),(135,129,28),(136,130,72),(137,131,70),(138,132,6),(139,133,31),(140,134,12),(141,135,46),(142,136,4),(143,137,51),(144,138,50),(145,139,56),(146,140,61),(147,141,41),(148,142,46),(149,143,54),(150,144,12),(151,145,28),(152,146,42),(153,147,30),(154,148,12),(155,149,10),(156,150,70),(157,151,31),(158,152,27),(159,153,30),(160,154,67),(161,155,35),(162,156,70),(163,157,56),(164,158,20),(165,159,67),(166,161,54),(167,160,7),(168,162,18),(169,163,53),(170,164,45),(171,165,74),(172,166,16),(173,167,27),(174,168,6),(175,169,71),(176,170,51),(177,171,43),(178,172,28),(179,173,43),(180,174,65),(181,175,18),(182,176,27),(183,177,6),(184,178,76),(185,179,39),(186,180,10),(187,181,27),(188,182,42),(189,183,66),(190,184,45),(191,185,46),(192,186,30),(193,187,18),(194,188,45),(195,189,74),(196,190,50),(197,191,6),(198,192,67),(199,193,45),(200,194,43),(201,195,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,19,'<com.jmiqclugc.qfnmpelawoito.ActivityMain: void onClick(android.view.View)>',17,'a',NULL),(2,77,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(3,38,'<com.tlgsDl.OpRrNbUajim: void a()>',3,'a',NULL),(4,19,'<com.jmiqclugc.qfnmpelawoito.ActivityMain: void onClick(android.view.View)>',9,'a',NULL),(5,19,'<com.jmiqclugc.qfnmpelawoito.ActivityMain: void onClick(android.view.View)>',13,'a',NULL),(6,36,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(7,38,'<com.tlgsDl.OpRrNbUajim: void a(java.lang.String)>',11,'a',NULL),(8,40,'<com.tlgsDl.QtIiAckNME: void a()>',3,'a',NULL),(9,14,'<org.android_iokwybzh.hnXNmoxe13: void a(int,boolean)>',63,'a',NULL),(10,5,'<org.android_iokwybzh.hnXNmoxe8: void onCreate(android.os.Bundle)>',90,'s',NULL),(11,78,'<aa: void onClick(android.view.View)>',218,'a',NULL),(12,1,'<org.android_iokwybzh.image.PhotoGrid: void onCreate(android.os.Bundle)>',122,'s',NULL),(13,21,'<org.android_iokwybzh.hnXNmoxe12: void onClick(android.view.View)>',66,'a',NULL),(14,21,'<org.android_iokwybzh.hnXNmoxe12: void onClick(android.view.View)>',75,'a',NULL),(15,34,'<org.android_iokwybzh.hnXNmoxe1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(16,5,'<org.android_iokwybzh.hnXNmoxe8: void onCreate(android.os.Bundle)>',177,'a',NULL),(17,1,'<org.android_iokwybzh.image.PhotoGrid: void onCreate(android.os.Bundle)>',126,'s',NULL),(18,5,'<org.android_iokwybzh.hnXNmoxe8: void onCreate(android.os.Bundle)>',172,'a',NULL),(19,34,'<org.android_iokwybzh.hnXNmoxe1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(20,5,'<org.android_iokwybzh.hnXNmoxe8: void onCreate(android.os.Bundle)>',76,'a',NULL),(21,34,'<org.android_iokwybzh.hnXNmoxe1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(22,9,'<org.android_iokwybzh.hnXNmoxe5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(23,78,'<aa: void onClick(android.view.View)>',239,'a',NULL),(24,9,'<org.android_iokwybzh.hnXNmoxe5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(25,21,'<org.android_iokwybzh.hnXNmoxe12: void onClick(android.view.View)>',84,'a',NULL),(26,53,'<com.carwall1.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(27,79,'<q: void onClick(android.view.View)>',205,'a',NULL),(28,33,'<com.animewallpaper.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(29,80,'<w: void onClick(android.view.View)>',218,'a',NULL),(30,81,'<de: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(31,64,'<com.animewallpaper.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(32,82,'<af: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(33,30,'<com.carwall1.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(34,57,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(35,14,'<org.android_iokwybzh.hnXNmoxe13: void a(int,boolean)>',10,'s',NULL),(36,71,'<com.picshow1.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(37,10,'<com.carwall1.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(38,83,'<au: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(39,84,'<ah: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(40,85,'<z: void onClick(android.view.View)>',221,'a',NULL),(41,71,'<com.picshow1.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(42,56,'<com.animewallpaper.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(43,16,'<com.carwall1.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(44,71,'<com.picshow1.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(45,86,'<ct: void a(int,boolean)>',10,'s',NULL),(46,23,'<com.carwall1.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(47,5,'<org.android_iokwybzh.hnXNmoxe8: void onCreate(android.os.Bundle)>',81,'a',NULL),(48,35,'<com.paqeE.ctOuwGFmSREp: void onRestart()>',14,'a',NULL),(49,56,'<com.animewallpaper.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL),(50,61,'<com.carwall1.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(51,85,'<z: void onClick(android.view.View)>',242,'a',NULL),(52,65,'<com.picshow1.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(53,87,'<cv: void a(int,boolean)>',10,'s',NULL),(54,50,'<com.picshow1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(55,13,'<com.qukijp.cdptra.Prefs: void onClick(android.view.View)>',43,'a',NULL),(56,61,'<com.carwall1.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(57,88,'<bx: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(58,42,'<com.picshow1.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(59,60,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(60,80,'<w: void onClick(android.view.View)>',239,'a',NULL),(61,83,'<au: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(62,89,'<an: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(63,42,'<com.picshow1.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(64,90,'<ct: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(65,64,'<com.animewallpaper.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(66,50,'<com.picshow1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(67,15,'<com.animewallpaper.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(68,5,'<org.android_iokwybzh.hnXNmoxe8: void onCreate(android.os.Bundle)>',33,'s',NULL),(69,87,'<cv: void a(int,boolean)>',29,'a',NULL),(70,1,'<org.android_iokwybzh.image.PhotoGrid: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(71,91,'<cy: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(72,84,'<ah: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(73,86,'<ct: void a(int,boolean)>',29,'a',NULL),(74,21,'<org.android_iokwybzh.hnXNmoxe12: void onClick(android.view.View)>',53,'a',NULL),(75,30,'<com.carwall1.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(76,54,'<com.picshow1.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(77,92,'<ea: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(78,93,'<cd: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(79,2,'<com.carwall1.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(80,94,'<dd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(81,6,'<com.carwall1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(82,95,'<ce: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(83,96,'<i: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(84,84,'<ah: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(85,33,'<com.animewallpaper.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(86,82,'<af: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(87,18,'<com.animewallpaper.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(88,2,'<com.carwall1.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(89,58,'<com.picshow1.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(90,88,'<bx: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(91,97,'<cm: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(92,43,'<com.carwall1.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(93,88,'<bx: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(94,76,'<com.picshow1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(95,45,'<com.animewallpaper.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(96,98,'<ai: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(97,82,'<af: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(98,99,'<db: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(99,66,'<com.carwall1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(100,54,'<com.picshow1.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(101,92,'<ea: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(102,10,'<com.carwall1.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(103,70,'<com.picshow1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(104,95,'<ce: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(105,66,'<com.carwall1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(106,28,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',239,'s',NULL),(107,100,'<ac: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(108,79,'<q: void onClick(android.view.View)>',224,'a',NULL),(109,84,'<ah: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(110,72,'<com.animewallpaper.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(111,4,'<com.carwall1.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(112,7,'<com.qukijp.cdptra.Splash: void onCreate(android.os.Bundle)>',24,'s',NULL),(113,28,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(114,15,'<com.animewallpaper.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(115,37,'<com.carwall1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(116,101,'<bd: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(117,90,'<ct: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(118,91,'<cy: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(119,102,'<bw: void onClick(android.view.View)>',205,'a',NULL),(120,37,'<com.carwall1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(121,55,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(122,76,'<com.picshow1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(123,67,'<com.picshow1.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(124,72,'<com.animewallpaper.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(125,30,'<com.carwall1.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(126,58,'<com.picshow1.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(127,12,'<com.animewallpaper.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(128,103,'<dd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(129,28,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(130,72,'<com.animewallpaper.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(131,70,'<com.picshow1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(132,89,'<an: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(133,31,'<com.paqeE.atiEgDQOhf: void b()>',33,'a',NULL),(134,104,'<cd: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(135,46,'<com.picshow1.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(136,4,'<com.carwall1.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(137,51,'<com.animewallpaper.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(138,50,'<com.picshow1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(139,56,'<com.animewallpaper.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(140,105,'<af: void onClick(android.view.View)>',6,'a',NULL),(141,41,'<com.paqeE.tUTNCmQEkPVcr: void a(android.content.Context,java.lang.String)>',10,'a',NULL),(142,106,'<bo: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(143,107,'<bg: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(144,88,'<bx: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(145,28,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',160,'s',NULL),(146,95,'<ce: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(147,30,'<com.carwall1.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(148,12,'<com.animewallpaper.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(149,103,'<dd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(150,108,'<bv: void a(int,boolean)>',10,'s',NULL),(151,31,'<com.paqeE.atiEgDQOhf: void onRestart()>',7,'a',NULL),(152,27,'<com.animewallpaper.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(153,109,'<bn: void onClick(android.view.View)>',205,'a',NULL),(154,67,'<com.picshow1.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(155,35,'<com.paqeE.ctOuwGFmSREp: void onRestart()>',7,'a',NULL),(156,108,'<bv: void a(int,boolean)>',29,'a',NULL),(157,56,'<com.animewallpaper.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(158,20,'<com.qukijp.cdptra.TipsActivity: void onClick(android.view.View)>',6,'a',NULL),(159,67,'<com.picshow1.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(160,7,'<com.qukijp.cdptra.Splash: void onClick(android.view.View)>',6,'a',NULL),(161,53,'<com.carwall1.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(162,18,'<com.animewallpaper.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(163,110,'<ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(164,45,'<com.animewallpaper.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(165,74,'<com.picshow1.image.ImageTestActivity: void onCreate(android.os.Bundle)>',49,'s',NULL),(166,16,'<com.carwall1.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(167,94,'<dd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(168,89,'<an: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(169,71,'<com.picshow1.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(170,51,'<com.animewallpaper.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(171,43,'<com.carwall1.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(172,28,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',172,'a',NULL),(173,43,'<com.carwall1.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(174,101,'<bd: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(175,92,'<ea: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(176,27,'<com.animewallpaper.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(177,6,'<com.carwall1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(178,76,'<com.picshow1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(179,39,'<com.animewallpaper.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(180,111,'<df: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(181,94,'<dd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(182,95,'<ce: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(183,66,'<com.carwall1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(184,45,'<com.animewallpaper.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(185,46,'<com.picshow1.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(186,109,'<bn: void onClick(android.view.View)>',224,'a',NULL),(187,18,'<com.animewallpaper.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(188,102,'<bw: void onClick(android.view.View)>',224,'a',NULL),(189,74,'<com.picshow1.image.ImageTestActivity: void onCreate(android.os.Bundle)>',53,'s',NULL),(190,91,'<cy: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(191,6,'<com.carwall1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(192,67,'<com.picshow1.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(193,45,'<com.animewallpaper.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(194,43,'<com.carwall1.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(195,103,'<dd: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,6,5),(2,7,6),(3,8,6),(4,9,5),(5,10,5),(6,14,5),(7,15,5),(8,16,7),(9,17,8),(10,18,5),(11,19,5),(12,20,3),(13,25,9),(14,27,9),(15,28,1),(16,29,1),(17,30,1),(18,31,1),(19,32,1),(20,33,1),(21,37,5),(22,39,5),(23,40,5),(24,41,5),(25,42,12),(26,43,5),(27,44,5),(28,45,7),(29,47,13),(30,49,5),(31,51,14),(32,52,5),(33,53,15),(34,55,5),(35,56,3),(36,57,3),(37,58,5),(38,59,16),(39,68,1),(40,70,1),(41,73,1),(42,75,5),(43,77,1),(44,79,17),(45,80,13),(46,81,1),(47,82,1),(48,83,5),(49,84,18),(50,85,1),(51,86,1),(52,88,1),(53,89,1),(54,91,13),(55,92,1),(56,93,1),(57,95,19),(58,98,20),(59,101,21),(60,107,5),(61,108,13),(62,109,5),(63,112,5),(64,114,5),(65,115,13),(66,120,22),(67,121,21),(68,123,18),(69,126,5),(70,125,5),(71,128,5),(72,129,21),(73,130,23),(74,132,5),(75,134,21),(76,136,24),(77,143,13),(78,144,5),(79,145,1),(80,147,21),(81,148,1),(82,149,25),(83,150,26),(84,151,1),(85,153,19),(86,154,1),(87,155,13),(88,158,14),(89,159,21),(90,160,14),(91,161,5),(92,162,5),(93,163,1),(94,164,13),(95,166,1),(96,167,5),(97,168,16),(98,170,15),(99,176,27),(100,177,25),(101,178,1),(102,180,1),(103,181,5),(104,182,5),(105,183,5),(106,187,5),(107,190,5),(108,191,5),(109,192,5),(110,194,13),(111,197,21),(112,198,28),(113,200,18),(114,205,5),(115,208,5),(116,209,5),(117,211,5),(118,213,5),(119,214,7),(120,218,29),(121,221,7),(122,226,30),(123,230,1),(124,231,3),(125,232,1),(126,233,31),(127,235,1),(128,237,1),(129,240,23),(130,243,5),(131,245,24),(132,247,19),(133,248,1),(134,249,5),(135,250,32),(136,251,1),(137,252,1),(138,254,1),(139,255,1),(140,256,1),(141,258,1),(142,260,1),(143,264,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,28,2),(2,29,4),(3,30,2),(4,31,4),(5,32,2),(6,33,4),(7,68,2),(8,70,4),(9,73,2),(10,77,4),(11,81,2),(12,82,2),(13,85,4),(14,86,4),(15,88,2),(16,89,2),(17,92,4),(18,93,4),(19,145,2),(20,148,4),(21,151,2),(22,154,4),(23,163,2),(24,166,4),(25,178,2),(26,180,4),(27,230,2),(28,232,4),(29,235,2),(30,237,4),(31,248,2),(32,251,4),(33,252,2),(34,254,2),(35,255,4),(36,256,4),(37,258,2),(38,260,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/jmiqclugc/qfnmpelawoito/ActivityHelp'),(2,2,'com/nd/dianjin/activity/OfferAppActivity'),(3,3,'com/jmiqclugc/qfnmpelawoito/ActivityMain'),(4,4,'com/jmiqclugc/qfnmpelawoito/GameActivity'),(5,5,'com/jmiqclugc/qfnmpelawoito/ActivityScore'),(6,11,'com/jmiqclugc/qfnmpelawoito/ActivityMain'),(7,12,'org/android_iokwybzh/image/PhotoGrid'),(8,13,'org/android_iokwybzh/hnXNmoxe2'),(9,16,'org/android_iokwybzh/hnXNmoxe2'),(10,17,'org/android_iokwybzh/hnXNmoxe2'),(11,21,'org/android_iokwybzh/hnXNmoxe2'),(12,22,'org/android_iokwybzh/image/PhotoGrid'),(13,23,'org/android_iokwybzh/hnXNmoxe2'),(14,24,'org/android_iokwybzh/image/PhotoGrid'),(15,25,'org/android_iokwybzh/hnXNmoxe2'),(16,26,'org/android_iokwybzh/image/PhotoGrid'),(17,27,'org/android_iokwybzh/hnXNmoxe2'),(18,34,'org/android_iokwybzh/hnXNmoxe8'),(19,36,'com/carwall1/GameService'),(20,35,'org/android_iokwybzh/hnXNmoxe12'),(21,38,'com/animewallpaper/GameInfo'),(22,42,'com/animewallpaper/GameService'),(23,45,'com/animewallpaper/GameService'),(24,46,'com/carwall1/GameService'),(25,48,'org/android_iokwybzh/hnXNmoxe2'),(26,50,'com/carwall1/GameService'),(27,54,'com/carwall1/Myhall'),(28,60,'com/carwall1/GameService'),(29,62,'com/animewallpaper/GameService'),(30,63,'com/carwall1/GameService'),(31,64,'org/android_iokwybzh/image/PhotoGrid'),(32,61,'com/picshow1/GameAlertDialog'),(33,65,'com/qukijp/cdptra/Splash'),(34,67,'com/carwall1/GameInfo'),(35,69,'com/picshow1/GameService'),(36,66,'com/animewallpaper/GameAlertDialog'),(37,71,'com/carwall1/GameService'),(38,72,'com/picshow1/GameInfo'),(39,74,'com/qukijp/cdptra/TipsActivity'),(40,76,'com/animewallpaper/Myhall'),(41,79,'com/picshow1/GameService'),(42,84,'com/picshow1/GameService'),(43,87,'com/picshow1/GameService'),(44,90,'com/animewallpaper/GameService'),(45,94,'com/picshow1/Myhall'),(46,95,'com/animewallpaper/GameService'),(47,96,'org/android_iokwybzh/hnXNmoxe2'),(48,97,'com/carwall1/Myhall'),(49,98,'com/animewallpaper/GameService'),(50,99,'org/android_iokwybzh/image/ShowImage'),(51,100,'com/picshow1/Myhall'),(52,102,'com/carwall1/Myhall'),(53,103,'com/animewallpaper/Myhall'),(54,105,'com/carwall1/Myhall'),(55,104,'org/android_iokwybzh/hnXNmoxe8'),(56,106,'com/picshow1/GameInfo'),(57,110,'com/carwall1/GameService'),(58,111,'com/animewallpaper/GameInfo'),(59,113,'com/picshow1/Myhall'),(60,116,'com/carwall1/Myhall'),(61,117,'com/animewallpaper/GameService'),(62,118,'com/picshow1/Myhall'),(63,119,'com/animewallpaper/GameInfo'),(64,120,'com/carwall1/GameService'),(65,122,'com/picshow1/GameInfo'),(66,123,'com/carwall1/GameService'),(67,124,'com/animewallpaper/Myhall'),(68,127,'com/animewallpaper/Myhall'),(69,130,'com/picshow1/GameService'),(70,131,'com/animewallpaper/Myhall'),(71,133,'com/picshow1/GameInfo'),(72,135,'com/animewallpaper/Myhall'),(73,136,'com/carwall1/GameService'),(74,137,'com/picshow1/GameService'),(75,140,'com/picshow1/GameInfo'),(76,139,'com/carwall1/GameInfo'),(77,138,'com/animewallpaper/Myhall'),(78,142,'com/carwall1/GameService'),(79,141,'com/picshow1/Myhall'),(80,146,'com/carwall1/Myhall'),(81,149,'com/animewallpaper/GameService'),(82,150,'com/carwall1/GameService'),(83,152,'com/qukijp/cdptra/ScoreUpgrateService'),(84,153,'com/carwall1/GameService'),(85,156,'com/animewallpaper/GameService'),(86,157,'com/carwall1/GameInfo'),(87,165,'com/picshow1/GameService'),(88,169,'com/picshow1/Myhall'),(89,171,'com/animewallpaper/GameService'),(90,172,'com/carwall1/Myhall'),(91,173,'com/picshow1/GameService'),(92,174,'com/animewallpaper/GameService'),(93,175,'com/carwall1/Myhall'),(94,177,'com/animewallpaper/GameService'),(95,179,'com/carwall1/Myhall'),(96,184,'com/picshow1/GameService'),(97,185,'com/carwall1/GameService'),(98,186,'com/animewallpaper/GameInfo'),(99,189,'com/carwall1/qimg/ImageTestActivity'),(100,188,'com/animewallpaper/GameInfo'),(101,193,'com/animewallpaper/Myhall'),(102,196,'com/carwall1/Myhall'),(103,195,'com/picshow1/Myhall'),(104,198,'com/animewallpaper/GameService'),(105,199,'com/carwall1/GameInfo'),(106,200,'com/animewallpaper/GameService'),(107,201,'com/picshow1/GameService'),(108,202,'com/paqeE/tUTNCmQEkPVcr'),(109,203,'com/animewallpaper/GameInfo'),(110,204,'com/picshow1/Myhall'),(111,206,'com/paqeE/tUTNCmQEkPVcr'),(112,207,'com/picshow1/Myhall'),(113,210,'com/qukijp/cdptra/RabbitActivity'),(114,212,'com/picshow1/Myhall'),(115,214,'com/carwall1/GameService'),(116,215,'com/animewallpaper/Myhall'),(117,216,'com/picshow1/Myhall'),(118,219,'com/qukijp/cdptra/Prefs'),(119,218,'com/carwall1/GameService'),(120,220,'com/animewallpaper/Myhall'),(121,222,'com/qukijp/cdptra/RabbitActivity'),(122,221,'com/picshow1/GameService'),(123,223,'com/carwall1/GameInfo'),(124,224,'com/qukijp/cdptra/GlobalRankingActivity'),(125,226,'com/picshow1/GameService'),(126,227,'com/qukijp/cdptra/TipsActivity'),(127,225,'com/animewallpaper/Myhall'),(128,228,'com/carwall1/GameInfo'),(129,229,'com/picshow1/GameInfo'),(130,236,'com/animewallpaper/GameInfo'),(131,234,'com/carwall1/GameAlertDialog'),(132,238,'com/animewallpaper/GameService'),(133,239,'com/carwall1/GameInfo'),(134,241,'com/animewallpaper/GameService'),(135,240,'com/picshow1/GameService'),(136,242,'com/carwall1/Myhall'),(137,244,'com/picshow1/Myhall'),(138,245,'com/carwall1/GameService'),(139,246,'com/animewallpaper/GameService'),(140,247,'com/picshow1/GameService'),(141,250,'com/picshow1/GameService'),(142,253,'com/picshow1/GameService'),(143,257,'com/picshow1/GameInfo'),(144,261,'com/picshow1/GameService'),(145,259,'com/carwall1/Myhall'),(146,262,'com/animewallpaper/Myhall'),(147,263,'com/carwall1/GameInfo');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,1),(2,7,2),(3,8,3),(4,9,4),(5,10,5),(6,14,6),(7,15,7),(8,18,8),(9,19,9),(10,37,10),(11,39,11),(12,40,12),(13,41,13),(14,43,15),(15,44,14),(16,49,16),(17,51,17),(18,52,18),(19,55,19),(20,58,20),(21,75,21),(22,83,22),(23,107,23),(24,109,24),(25,112,25),(26,114,26),(27,126,27),(28,125,28),(29,128,29),(30,132,30),(31,144,31),(32,158,32),(33,160,33),(34,161,34),(35,162,35),(36,167,36),(37,176,37),(38,181,38),(39,182,39),(40,183,40),(41,187,41),(42,190,42),(43,191,43),(44,192,44),(45,205,45),(46,209,46),(47,208,47),(48,211,48),(49,213,49),(50,233,50),(51,243,51),(52,249,52),(53,264,53);
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
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'oriention'),(2,34,'game'),(3,34,'fromtype'),(4,35,'title'),(5,35,'btn_txt'),(6,35,'need_adb_flag'),(7,35,'cont'),(8,35,'close_flag'),(9,47,'icon'),(10,47,'appId'),(11,47,'testMode'),(12,47,'type'),(13,47,'apikey'),(14,53,'icon'),(15,53,'appId'),(16,54,'clicked'),(17,53,'testMode'),(18,53,'type'),(19,53,'apikey'),(20,59,'icon'),(21,59,'appId'),(22,59,'testMode'),(23,59,'type'),(24,61,'title'),(25,59,'apikey'),(26,61,'btn_txt'),(27,61,'need_adb_flag'),(28,61,'cont'),(29,61,'close_flag'),(30,66,'title'),(31,66,'btn_txt'),(32,66,'need_adb_flag'),(33,66,'cont'),(34,66,'close_flag'),(35,76,'clicked'),(36,80,'campId'),(37,80,'text'),(38,80,'title'),(39,80,'creativeId'),(40,80,'appId'),(41,80,'expiry_time'),(42,80,'number'),(43,80,'adType'),(44,80,'type'),(45,80,'sms'),(46,80,'imageurl'),(47,80,'apikey'),(48,91,'campId'),(49,91,'title'),(50,94,'nextclassid'),(51,91,'text'),(52,94,'clicked'),(53,91,'creativeId'),(54,91,'appId'),(55,91,'expiry_time'),(56,91,'link'),(57,91,'adType'),(58,91,'type'),(59,91,'imageurl'),(60,91,'header'),(61,91,'apikey'),(62,99,'startid'),(63,99,'position'),(64,100,'title'),(65,100,'nextclassid'),(66,100,'clicked'),(67,101,'campId'),(68,102,'clicked'),(69,101,'text'),(70,101,'title'),(71,101,'creativeId'),(72,104,'id'),(73,101,'appId'),(74,104,'from_alert'),(75,101,'expiry_time'),(76,104,'detail_flag'),(77,101,'number'),(78,106,'title'),(79,101,'adType'),(80,101,'type'),(81,101,'sms'),(82,101,'imageurl'),(83,101,'apikey'),(84,108,'title'),(85,111,'title'),(86,108,'text'),(87,108,'appId'),(88,108,'expiry_time'),(89,108,'number'),(90,108,'adType'),(91,108,'type'),(92,108,'imageurl'),(93,113,'clicked'),(94,108,'apikey'),(95,115,'campId'),(96,116,'clicked'),(97,115,'title'),(98,115,'text'),(99,115,'creativeId'),(100,115,'appId'),(101,115,'expiry_time'),(102,115,'link'),(103,118,'title'),(104,115,'adType'),(105,118,'nextclassid'),(106,115,'type'),(107,118,'clicked'),(108,115,'imageurl'),(109,115,'apikey'),(110,121,'campId'),(111,121,'title'),(112,121,'text'),(113,121,'creativeId'),(114,124,'clicked'),(115,121,'appId'),(116,121,'expiry_time'),(117,121,'link'),(118,121,'adType'),(119,121,'type'),(120,121,'imageurl'),(121,121,'header'),(122,121,'apikey'),(123,127,'clicked'),(124,129,'title'),(125,129,'text'),(126,129,'appId'),(127,129,'expiry_time'),(128,129,'number'),(129,129,'adType'),(130,129,'type'),(131,129,'imageurl'),(132,129,'apikey'),(133,133,'title'),(134,134,'campId'),(135,135,'title'),(136,134,'title'),(137,135,'nextclassid'),(138,134,'text'),(139,135,'clicked'),(140,134,'creativeId'),(141,134,'appId'),(142,134,'expiry_time'),(143,134,'link'),(144,134,'adType'),(145,134,'type'),(146,138,'title'),(147,139,'title'),(148,134,'imageurl'),(149,138,'nextclassid'),(150,134,'apikey'),(151,138,'clicked'),(152,141,'clicked'),(153,143,'<INTENT>'),(154,143,'type'),(155,146,'clicked'),(156,147,'<INTENT>'),(157,147,'type'),(158,155,'<INTENT>'),(159,155,'type'),(160,159,'<INTENT>'),(161,159,'type'),(162,164,'appId'),(163,164,'type'),(164,164,'apikey'),(165,168,'appId'),(166,168,'type'),(167,168,'apikey'),(168,170,'appId'),(169,170,'type'),(170,170,'apikey'),(171,175,'title'),(172,175,'nextclassid'),(173,175,'clicked'),(174,179,'title'),(175,179,'nextclassid'),(176,179,'clicked'),(177,188,'id'),(178,188,'from_alert'),(179,188,'detail_flag'),(180,193,'clicked'),(181,194,'<INTENT>'),(182,194,'type'),(183,195,'clicked'),(184,197,'<INTENT>'),(185,197,'type'),(186,199,'title'),(187,203,'title'),(188,215,'nextclassid'),(189,216,'title'),(190,215,'clicked'),(191,216,'nextclassid'),(192,216,'clicked'),(193,225,'title'),(194,225,'nextclassid'),(195,225,'clicked'),(196,228,'title'),(197,229,'id'),(198,229,'from_table'),(199,229,'detail_flag'),(200,233,'sms_body'),(201,234,'title'),(202,234,'btn_txt'),(203,234,'need_adb_flag'),(204,234,'cont'),(205,236,'title'),(206,234,'close_flag'),(207,242,'title'),(208,242,'nextclassid'),(209,242,'clicked'),(210,244,'clicked'),(211,257,'title'),(212,259,'nextclassid'),(213,259,'clicked'),(214,263,'id'),(215,263,'from_table'),(216,263,'detail_flag');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,9,1),(8,10,1),(9,11,1),(10,12,1),(11,13,1),(12,14,1),(13,15,2),(14,16,1),(15,17,1),(16,18,1),(17,19,1),(18,20,3),(19,21,4),(20,22,1),(21,24,1),(22,23,1),(23,26,3),(24,25,1),(25,27,1),(26,28,2),(27,29,1),(28,30,1),(29,31,2),(30,32,1),(31,33,1),(32,34,1),(33,35,2),(34,36,3),(35,37,1),(36,38,1),(37,39,2),(38,40,10),(39,41,11),(40,42,10),(41,43,11),(42,44,10),(43,45,11),(44,46,10),(45,47,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,1,2),(3,10,2),(4,14,2),(5,18,2),(6,24,2),(7,27,2),(8,28,3),(9,29,2),(10,33,2),(11,37,2),(12,38,2),(13,40,5),(14,41,5),(15,42,5),(16,43,5),(17,44,5),(18,45,5),(19,46,5),(20,47,5);
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
INSERT INTO `IFData` VALUES (1,40,'package',NULL,NULL,NULL,NULL,NULL),(2,41,'package',NULL,NULL,NULL,NULL,NULL),(3,42,'package',NULL,NULL,NULL,NULL,NULL),(4,43,'package',NULL,NULL,NULL,NULL,NULL),(5,44,'package',NULL,NULL,NULL,NULL,NULL),(6,45,'package',NULL,NULL,NULL,NULL,NULL),(7,46,'package',NULL,NULL,NULL,NULL,NULL),(8,47,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,7,'(.*)','(.*)'),(2,10,'(.*)','(.*)'),(3,14,'application','vnd.android.package-archive'),(4,15,'application','vnd.android.package-archive'),(5,37,'application','vnd.android.package-archive'),(6,39,'application','vnd.android.package-archive'),(7,40,'application','vnd.android.package-archive'),(8,41,'application','vnd.android.package-archive'),(9,43,'application','vnd.android.package-archive'),(10,55,'application','vnd.android.package-archive'),(11,58,'application','vnd.android.package-archive'),(12,109,'application','vnd.android.package-archive'),(13,114,'application','vnd.android.package-archive'),(14,125,'application','vnd.android.package-archive'),(15,132,'application','vnd.android.package-archive'),(16,144,'application','vnd.android.package-archive'),(17,162,'application','vnd.android.package-archive'),(18,167,'application','vnd.android.package-archive'),(19,182,'application','vnd.android.package-archive'),(20,183,'(.*)','(.*)'),(21,190,'application','vnd.android.package-archive'),(22,191,'application','vnd.android.package-archive'),(23,192,'application','vnd.android.package-archive'),(24,205,'application','vnd.android.package-archive'),(25,208,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.jmiqclugc.qfnmpelawoito'),(2,2,'com.jmiqclugc.qfnmpelawoito'),(3,3,'com.jmiqclugc.qfnmpelawoito'),(4,4,'com.jmiqclugc.qfnmpelawoito'),(5,5,'com.jmiqclugc.qfnmpelawoito'),(6,11,'com.jmiqclugc.qfnmpelawoito'),(7,12,'org.android_iokwybzh'),(8,13,'org.android_iokwybzh'),(9,16,'org.android_iokwybzh'),(10,17,'org.android_iokwybzh'),(11,21,'org.android_iokwybzh'),(12,22,'org.android_iokwybzh'),(13,23,'org.android_iokwybzh'),(14,24,'org.android_iokwybzh'),(15,25,'org.android_iokwybzh'),(16,26,'org.android_iokwybzh'),(17,27,'org.android_iokwybzh'),(18,28,'(.*)'),(19,29,'(.*)'),(20,30,'(.*)'),(21,31,''),(22,32,''),(23,33,'(.*)'),(24,34,'org.android_iokwybzh'),(25,36,'com.carwall1'),(26,35,'org.android_iokwybzh'),(27,38,'com.animewallpaper'),(28,42,'com.animewallpaper'),(29,45,'com.animewallpaper'),(30,46,'com.carwall1'),(31,48,'org.android_iokwybzh'),(32,50,'com.carwall1'),(33,54,'com.carwall1'),(34,60,'com.carwall1'),(35,62,'com.animewallpaper'),(36,63,'com.carwall1'),(37,64,'org.android_iokwybzh'),(38,61,'com.picshow1'),(39,65,'com.qukijp.cdptra'),(40,67,'com.carwall1'),(41,68,'(.*)'),(42,69,'com.picshow1'),(43,66,'com.animewallpaper'),(44,70,''),(45,71,'com.carwall1'),(46,72,'com.picshow1'),(47,74,'com.qukijp.cdptra'),(48,73,''),(49,77,'(.*)'),(50,76,'com.animewallpaper'),(51,79,'com.picshow1'),(52,81,'(.*)'),(53,82,'NULL-CONSTANT'),(54,84,'com.picshow1'),(55,85,''),(56,86,'NULL-CONSTANT'),(57,87,'com.picshow1'),(58,88,''),(59,89,'NULL-CONSTANT'),(60,90,'com.animewallpaper'),(61,92,'(.*)'),(62,93,'NULL-CONSTANT'),(63,94,'com.picshow1'),(64,96,'org.android_iokwybzh'),(65,95,'com.animewallpaper'),(66,97,'com.carwall1'),(67,98,'com.animewallpaper'),(68,99,'org.android_iokwybzh'),(69,100,'com.picshow1'),(70,102,'com.carwall1'),(71,103,'com.animewallpaper'),(72,105,'com.carwall1'),(73,104,'org.android_iokwybzh'),(74,106,'com.picshow1'),(75,110,'com.carwall1'),(76,111,'com.animewallpaper'),(77,113,'com.picshow1'),(78,116,'com.carwall1'),(79,117,'com.animewallpaper'),(80,118,'com.picshow1'),(81,119,'com.animewallpaper'),(82,120,'com.carwall1'),(83,122,'com.picshow1'),(84,123,'com.carwall1'),(85,124,'com.animewallpaper'),(86,127,'com.animewallpaper'),(87,130,'com.picshow1'),(88,131,'com.animewallpaper'),(89,133,'com.picshow1'),(90,135,'com.animewallpaper'),(91,136,'com.carwall1'),(92,137,'com.picshow1'),(93,140,'com.picshow1'),(94,139,'com.carwall1'),(95,138,'com.animewallpaper'),(96,142,'com.carwall1'),(97,141,'com.picshow1'),(98,145,'(.*)'),(99,146,'com.carwall1'),(100,148,''),(101,149,'com.animewallpaper'),(102,151,''),(103,150,'com.carwall1'),(104,152,'com.qukijp.cdptra'),(105,154,'(.*)'),(106,153,'com.carwall1'),(107,156,'com.animewallpaper'),(108,157,'com.carwall1'),(109,163,'(.*)'),(110,165,'com.picshow1'),(111,166,'(.*)'),(112,169,'com.picshow1'),(113,171,'com.animewallpaper'),(114,172,'com.carwall1'),(115,173,'com.picshow1'),(116,174,'com.animewallpaper'),(117,175,'com.carwall1'),(118,177,'com.animewallpaper'),(119,178,'(.*)'),(120,180,'(.*)'),(121,179,'com.carwall1'),(122,184,'com.picshow1'),(123,185,'com.carwall1'),(124,186,'com.animewallpaper'),(125,189,'com.carwall1'),(126,188,'com.animewallpaper'),(127,193,'com.animewallpaper'),(128,196,'com.carwall1'),(129,195,'com.picshow1'),(130,198,'com.animewallpaper'),(131,199,'com.carwall1'),(132,200,'com.animewallpaper'),(133,201,'com.picshow1'),(134,202,'com.qukijp.cdptra'),(135,203,'com.animewallpaper'),(136,204,'com.picshow1'),(137,206,'com.qukijp.cdptra'),(138,207,'com.picshow1'),(139,210,'com.qukijp.cdptra'),(140,212,'com.picshow1'),(141,214,'com.carwall1'),(142,215,'com.animewallpaper'),(143,216,'com.picshow1'),(144,219,'com.qukijp.cdptra'),(145,218,'com.carwall1'),(146,220,'com.animewallpaper'),(147,222,'com.qukijp.cdptra'),(148,221,'com.picshow1'),(149,223,'com.carwall1'),(150,224,'com.qukijp.cdptra'),(151,226,'com.picshow1'),(152,227,'com.qukijp.cdptra'),(153,225,'com.animewallpaper'),(154,228,'com.carwall1'),(155,230,'(.*)'),(156,229,'com.picshow1'),(157,232,'(.*)'),(158,235,'NULL-CONSTANT'),(159,236,'com.animewallpaper'),(160,237,'NULL-CONSTANT'),(161,234,'com.carwall1'),(162,238,'com.animewallpaper'),(163,239,'com.carwall1'),(164,241,'com.animewallpaper'),(165,240,'com.picshow1'),(166,242,'com.carwall1'),(167,244,'com.picshow1'),(168,245,'com.carwall1'),(169,246,'com.animewallpaper'),(170,247,'com.picshow1'),(171,248,'(.*)'),(172,250,'com.picshow1'),(173,251,''),(174,252,'(.*)'),(175,253,'com.picshow1'),(176,254,''),(177,255,''),(178,256,'(.*)'),(179,257,'com.picshow1'),(180,258,''),(181,260,'(.*)'),(182,261,'com.picshow1'),(183,259,'com.carwall1'),(184,262,'com.animewallpaper'),(185,263,'com.carwall1');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,7,0),(4,9,0),(5,10,0),(6,14,0),(7,16,0),(8,19,0),(9,24,0),(10,26,0),(11,27,0),(12,30,0),(13,33,0),(14,35,0),(15,34,0),(16,37,0),(17,39,0),(18,40,0),(19,45,0),(20,47,0),(21,48,0),(22,51,0),(23,53,0),(24,54,0),(25,58,0),(26,59,0),(27,63,0),(28,62,0),(29,64,0),(30,65,0),(31,66,0),(32,67,0),(33,69,0),(34,70,0),(35,72,0),(36,73,0),(37,74,0),(38,75,0),(39,76,0),(40,34,0),(41,34,0),(42,66,0),(43,76,0),(44,72,0),(45,72,0),(46,76,0),(47,66,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,1,0),(7,6,1,0),(8,6,1,0),(9,7,1,0),(10,7,1,0),(11,8,0,0),(12,9,0,0),(13,10,0,0),(14,11,1,0),(15,11,1,0),(16,12,0,0),(17,12,0,0),(18,13,1,0),(19,13,1,0),(20,14,1,0),(21,15,0,0),(22,16,0,0),(23,17,0,0),(24,18,0,0),(25,19,0,0),(26,20,0,0),(27,21,0,0),(28,22,1,0),(29,22,1,0),(30,23,1,0),(31,23,1,0),(32,23,1,0),(33,23,1,0),(34,24,0,0),(35,25,0,0),(36,26,0,0),(37,27,1,0),(38,28,0,0),(39,27,1,0),(40,29,1,0),(41,30,1,0),(42,31,0,0),(43,29,1,0),(44,32,1,0),(45,31,0,0),(46,33,0,0),(47,34,1,0),(48,35,0,0),(49,36,1,0),(50,37,0,0),(51,38,1,0),(52,36,1,0),(53,34,1,0),(54,39,0,0),(55,40,1,0),(56,41,1,0),(57,42,1,0),(58,40,1,0),(59,34,1,0),(60,43,0,0),(61,44,0,0),(62,45,0,0),(63,46,0,0),(64,47,0,0),(65,48,0,0),(66,49,0,0),(67,50,0,0),(68,51,1,0),(69,52,0,0),(70,51,1,0),(71,53,0,0),(72,54,0,0),(73,51,1,0),(74,55,0,0),(75,56,1,0),(76,57,0,0),(77,51,1,0),(78,59,1,0),(79,58,0,0),(80,59,1,0),(81,60,1,0),(82,61,1,0),(83,62,1,0),(84,58,0,0),(85,60,1,0),(86,61,1,0),(87,63,0,0),(88,60,1,0),(89,64,1,0),(90,65,0,0),(91,59,1,0),(92,60,1,0),(93,64,1,0),(94,66,0,0),(95,67,0,0),(96,68,0,0),(97,69,0,0),(98,67,0,0),(99,70,0,0),(100,71,0,0),(101,59,1,0),(102,72,0,0),(103,73,0,0),(104,74,0,0),(105,75,0,0),(106,76,0,0),(107,77,1,0),(108,59,1,0),(109,78,1,0),(110,79,0,0),(111,80,0,0),(112,81,1,0),(113,82,0,0),(114,83,1,0),(115,59,1,0),(116,84,0,0),(117,85,0,0),(118,86,0,0),(119,87,0,0),(120,88,0,0),(121,59,1,0),(122,89,0,0),(123,88,0,0),(124,90,0,0),(125,91,1,0),(126,92,1,0),(127,93,0,0),(128,92,1,0),(129,59,1,0),(130,94,0,0),(131,95,0,0),(132,96,1,0),(133,97,0,0),(134,59,1,0),(135,98,0,0),(136,99,0,0),(137,100,0,0),(138,101,0,0),(139,102,0,0),(140,103,0,0),(141,104,0,0),(142,105,0,0),(143,106,1,0),(144,107,1,0),(145,108,1,0),(146,109,0,0),(147,106,1,0),(148,108,1,0),(149,110,0,0),(150,111,0,0),(151,108,1,0),(152,112,0,0),(153,111,0,0),(154,108,1,0),(155,113,1,0),(156,114,0,0),(157,115,0,0),(158,116,1,0),(159,113,1,0),(160,117,1,0),(161,118,1,0),(162,119,1,0),(163,120,1,0),(164,121,1,0),(165,122,0,0),(166,120,1,0),(167,119,1,0),(168,121,1,0),(169,123,0,0),(170,121,1,0),(171,124,0,0),(172,125,0,0),(173,126,0,0),(174,127,0,0),(175,128,0,0),(176,129,1,0),(177,130,0,0),(178,131,1,0),(179,132,0,0),(180,131,1,0),(181,133,1,0),(182,134,1,0),(183,133,1,0),(184,135,0,0),(185,136,0,0),(186,137,0,0),(187,138,1,0),(188,139,0,0),(189,140,0,0),(190,141,1,0),(191,142,1,0),(192,143,1,0),(193,144,0,0),(194,145,1,0),(195,146,0,0),(196,147,0,0),(197,145,1,0),(198,148,0,0),(199,149,0,0),(200,148,0,0),(201,150,0,0),(202,151,0,0),(203,152,0,0),(204,154,0,0),(205,153,1,0),(206,155,0,0),(207,156,0,0),(208,153,1,0),(209,157,1,0),(210,158,0,0),(211,157,1,0),(212,159,0,0),(213,160,1,0),(214,161,0,0),(215,162,0,0),(216,163,0,0),(217,160,1,0),(218,161,0,0),(219,160,0,0),(220,164,0,0),(221,165,0,0),(222,160,0,0),(223,166,0,0),(224,160,0,0),(225,167,0,0),(226,165,0,0),(227,160,0,0),(228,168,0,0),(229,169,0,0),(230,170,1,0),(231,171,1,0),(232,170,1,0),(233,172,1,0),(234,173,0,0),(235,174,1,0),(236,175,0,0),(237,174,1,0),(238,176,0,0),(239,177,0,0),(240,178,0,0),(241,179,0,0),(242,180,0,0),(243,181,1,0),(244,182,0,0),(245,183,0,0),(246,184,0,0),(247,185,0,0),(248,186,1,0),(249,187,1,0),(250,185,0,0),(251,186,1,0),(252,188,1,0),(253,189,0,0),(254,186,1,0),(255,188,1,0),(256,186,1,0),(257,190,0,0),(258,188,1,0),(259,191,0,0),(260,188,1,0),(261,192,0,0),(262,193,0,0),(263,194,0,0),(264,195,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_CACHE_FILESYSTEM'),(14,'android.permission.ACCESS_COARSE_LOCATION'),(7,'android.permission.ACCESS_NETWORK_STATE'),(13,'android.permission.ACCESS_WIFI_STATE'),(11,'android.permission.DELETE_CACHE_FILES'),(15,'android.permission.FLASHLIGHT'),(12,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(10,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(3,'android.permission.SET_WALLPAPER'),(19,'android.permission.VIBRATE'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(8,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://',NULL,NULL,NULL),(29,NULL,NULL,'',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL),(31,NULL,NULL,'file://',NULL,NULL,NULL),(32,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://',NULL,NULL,NULL),(37,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'file://',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'file://',NULL,NULL,NULL),(44,NULL,NULL,'file://',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'file://',NULL,NULL,NULL),(48,NULL,NULL,'',NULL,NULL,NULL),(49,NULL,NULL,'market://search?q=pub:DrHu',NULL,NULL,NULL),(50,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'(.*)',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,1,5),(7,2,2),(8,1,6),(9,2,3),(10,1,7),(11,2,4),(12,1,8),(13,2,5),(14,2,6),(15,2,7),(16,2,8),(17,3,1),(18,2,9),(19,3,4),(20,2,10),(21,3,5),(22,5,1),(23,3,6),(24,2,11),(25,5,2),(26,3,7),(27,5,3),(28,3,12),(29,5,4),(30,3,13),(31,5,5),(32,3,14),(33,5,6),(34,3,15),(35,5,7),(36,5,8),(37,5,9),(38,5,10),(39,6,1),(40,5,11),(41,6,19),(42,6,5),(43,6,6),(44,6,7),(45,6,13),(46,7,1),(47,7,2),(48,7,4),(49,7,5),(50,7,6),(51,7,7),(52,7,8),(53,7,9),(54,7,10),(55,7,11);
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

-- Dump completed on 2015-10-09  0:39:40
