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
) ENGINE=InnoDB AUTO_INCREMENT=2054 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,152,44,2,NULL),(2,219,13,2,NULL),(3,222,11,2,NULL),(4,224,17,2,NULL),(5,227,20,2,NULL),(6,217,1,2,NULL),(7,217,5,2,NULL),(8,217,9,2,NULL),(9,28,7,2,NULL),(10,29,7,2,NULL),(11,217,14,2,NULL),(12,18,7,2,NULL),(13,19,7,2,NULL),(14,20,7,2,NULL),(15,217,26,2,NULL),(16,217,34,2,NULL),(17,112,7,2,NULL),(18,217,10,2,NULL),(19,217,16,2,NULL),(20,217,24,2,NULL),(21,217,30,2,NULL),(22,217,37,2,NULL),(23,163,7,2,NULL),(24,166,7,2,NULL),(25,126,7,2,NULL),(26,128,7,2,NULL),(27,231,7,2,NULL),(28,217,47,2,NULL),(29,217,54,2,NULL),(30,75,7,2,NULL),(31,217,63,2,NULL),(32,217,66,2,NULL),(33,143,7,2,NULL),(34,147,7,2,NULL),(35,155,7,2,NULL),(36,159,7,2,NULL),(37,176,7,2,NULL),(38,194,7,2,NULL),(39,197,7,2,NULL),(40,233,7,2,NULL),(41,217,35,2,NULL),(42,217,48,2,NULL),(43,164,7,2,NULL),(44,168,7,2,NULL),(45,170,7,2,NULL),(46,47,7,2,NULL),(47,53,7,2,NULL),(48,59,7,2,NULL),(49,78,7,2,NULL),(50,80,7,2,NULL),(51,91,7,2,NULL),(52,101,7,2,NULL),(53,108,7,2,NULL),(54,115,7,2,NULL),(55,121,7,2,NULL),(56,129,7,2,NULL),(57,134,7,2,NULL),(58,217,62,2,NULL),(59,249,7,2,NULL),(60,217,27,2,NULL),(61,217,33,2,NULL),(62,217,39,2,NULL),(63,217,45,2,NULL),(64,217,51,2,NULL),(65,230,7,2,NULL),(66,232,7,2,NULL),(67,57,7,2,NULL),(68,209,7,2,NULL),(69,211,7,2,NULL),(70,217,59,2,NULL),(71,217,64,2,NULL),(72,217,69,2,NULL),(73,217,72,2,NULL),(74,217,19,2,NULL),(75,6,7,2,NULL),(76,8,7,2,NULL),(77,217,40,2,NULL),(78,187,7,2,NULL),(79,217,53,2,NULL),(80,217,58,2,NULL),(81,217,65,2,NULL),(82,217,67,2,NULL),(83,217,70,2,NULL),(84,178,7,2,NULL),(85,180,7,2,NULL),(86,49,7,2,NULL),(87,52,7,2,NULL),(88,56,7,2,NULL),(89,217,73,2,NULL),(90,217,74,2,NULL),(91,217,75,2,NULL),(92,217,76,2,NULL),(93,74,20,2,NULL),(94,210,11,2,NULL),(95,143,1,2,NULL),(96,147,1,2,NULL),(97,155,1,2,NULL),(98,159,1,2,NULL),(99,176,1,2,NULL),(100,194,1,2,NULL),(101,197,1,2,NULL),(102,233,1,2,NULL),(103,143,5,2,NULL),(104,147,5,2,NULL),(105,155,5,2,NULL),(106,159,5,2,NULL),(107,176,5,2,NULL),(108,194,5,2,NULL),(109,197,5,2,NULL),(110,233,5,2,NULL),(111,143,9,2,NULL),(112,147,9,2,NULL),(113,155,9,2,NULL),(114,159,9,2,NULL),(115,176,9,2,NULL),(116,194,9,2,NULL),(117,197,9,2,NULL),(118,233,9,2,NULL),(119,143,14,2,NULL),(120,147,14,2,NULL),(121,155,14,2,NULL),(122,159,14,2,NULL),(123,176,14,2,NULL),(124,194,14,2,NULL),(125,197,14,2,NULL),(126,233,14,2,NULL),(127,143,26,2,NULL),(128,147,26,2,NULL),(129,155,26,2,NULL),(130,159,26,2,NULL),(131,176,26,2,NULL),(132,194,26,2,NULL),(133,197,26,2,NULL),(134,233,26,2,NULL),(135,143,34,2,NULL),(136,147,34,2,NULL),(137,155,34,2,NULL),(138,159,34,2,NULL),(139,176,34,2,NULL),(140,194,34,2,NULL),(141,197,34,2,NULL),(142,233,34,2,NULL),(143,143,10,2,NULL),(144,147,10,2,NULL),(145,155,10,2,NULL),(146,159,10,2,NULL),(147,176,10,2,NULL),(148,194,10,2,NULL),(149,197,10,2,NULL),(150,233,10,2,NULL),(151,143,16,2,NULL),(152,147,16,2,NULL),(153,155,16,2,NULL),(154,159,16,2,NULL),(155,176,16,2,NULL),(156,194,16,2,NULL),(157,197,16,2,NULL),(158,233,16,2,NULL),(159,143,24,2,NULL),(160,147,24,2,NULL),(161,155,24,2,NULL),(162,159,24,2,NULL),(163,176,24,2,NULL),(164,194,24,2,NULL),(165,197,24,2,NULL),(166,233,24,2,NULL),(167,143,30,2,NULL),(168,147,30,2,NULL),(169,155,30,2,NULL),(170,159,30,2,NULL),(171,176,30,2,NULL),(172,194,30,2,NULL),(173,197,30,2,NULL),(174,233,30,2,NULL),(175,143,37,2,NULL),(176,147,37,2,NULL),(177,155,37,2,NULL),(178,159,37,2,NULL),(179,176,37,2,NULL),(180,194,37,2,NULL),(181,197,37,2,NULL),(182,233,37,2,NULL),(183,143,47,2,NULL),(184,147,47,2,NULL),(185,155,47,2,NULL),(186,159,47,2,NULL),(187,176,47,2,NULL),(188,194,47,2,NULL),(189,197,47,2,NULL),(190,233,47,2,NULL),(191,143,54,2,NULL),(192,147,54,2,NULL),(193,155,54,2,NULL),(194,159,54,2,NULL),(195,176,54,2,NULL),(196,194,54,2,NULL),(197,197,54,2,NULL),(198,233,54,2,NULL),(199,143,63,2,NULL),(200,147,63,2,NULL),(201,155,63,2,NULL),(202,159,63,2,NULL),(203,176,63,2,NULL),(204,194,63,2,NULL),(205,197,63,2,NULL),(206,233,63,2,NULL),(207,143,66,2,NULL),(208,147,66,2,NULL),(209,155,66,2,NULL),(210,159,66,2,NULL),(211,176,66,2,NULL),(212,194,66,2,NULL),(213,197,66,2,NULL),(214,233,66,2,NULL),(215,143,35,2,NULL),(216,147,35,2,NULL),(217,155,35,2,NULL),(218,159,35,2,NULL),(219,176,35,2,NULL),(220,194,35,2,NULL),(221,197,35,2,NULL),(222,233,35,2,NULL),(223,143,48,2,NULL),(224,147,48,2,NULL),(225,155,48,2,NULL),(226,159,48,2,NULL),(227,176,48,2,NULL),(228,194,48,2,NULL),(229,197,48,2,NULL),(230,233,48,2,NULL),(231,143,62,2,NULL),(232,147,62,2,NULL),(233,155,62,2,NULL),(234,159,62,2,NULL),(235,176,62,2,NULL),(236,194,62,2,NULL),(237,197,62,2,NULL),(238,233,62,2,NULL),(239,143,27,2,NULL),(240,147,27,2,NULL),(241,155,27,2,NULL),(242,159,27,2,NULL),(243,176,27,2,NULL),(244,194,27,2,NULL),(245,197,27,2,NULL),(246,233,27,2,NULL),(247,143,33,2,NULL),(248,147,33,2,NULL),(249,155,33,2,NULL),(250,159,33,2,NULL),(251,176,33,2,NULL),(252,194,33,2,NULL),(253,197,33,2,NULL),(254,233,33,2,NULL),(255,143,39,2,NULL),(256,147,39,2,NULL),(257,155,39,2,NULL),(258,159,39,2,NULL),(259,176,39,2,NULL),(260,194,39,2,NULL),(261,197,39,2,NULL),(262,233,39,2,NULL),(263,143,45,2,NULL),(264,147,45,2,NULL),(265,155,45,2,NULL),(266,159,45,2,NULL),(267,176,45,2,NULL),(268,194,45,2,NULL),(269,197,45,2,NULL),(270,233,45,2,NULL),(271,143,51,2,NULL),(272,147,51,2,NULL),(273,155,51,2,NULL),(274,159,51,2,NULL),(275,176,51,2,NULL),(276,194,51,2,NULL),(277,197,51,2,NULL),(278,233,51,2,NULL),(279,143,59,2,NULL),(280,147,59,2,NULL),(281,155,59,2,NULL),(282,159,59,2,NULL),(283,176,59,2,NULL),(284,194,59,2,NULL),(285,197,59,2,NULL),(286,233,59,2,NULL),(287,143,64,2,NULL),(288,147,64,2,NULL),(289,155,64,2,NULL),(290,159,64,2,NULL),(291,176,64,2,NULL),(292,194,64,2,NULL),(293,197,64,2,NULL),(294,233,64,2,NULL),(295,143,69,2,NULL),(296,147,69,2,NULL),(297,155,69,2,NULL),(298,159,69,2,NULL),(299,176,69,2,NULL),(300,194,69,2,NULL),(301,197,69,2,NULL),(302,233,69,2,NULL),(303,143,72,2,NULL),(304,147,72,2,NULL),(305,155,72,2,NULL),(306,159,72,2,NULL),(307,176,72,2,NULL),(308,194,72,2,NULL),(309,197,72,2,NULL),(310,233,72,2,NULL),(311,143,19,2,NULL),(312,147,19,2,NULL),(313,155,19,2,NULL),(314,159,19,2,NULL),(315,176,19,2,NULL),(316,194,19,2,NULL),(317,197,19,2,NULL),(318,233,19,2,NULL),(319,143,40,2,NULL),(320,147,40,2,NULL),(321,155,40,2,NULL),(322,159,40,2,NULL),(323,176,40,2,NULL),(324,194,40,2,NULL),(325,197,40,2,NULL),(326,233,40,2,NULL),(327,143,53,2,NULL),(328,147,53,2,NULL),(329,155,53,2,NULL),(330,159,53,2,NULL),(331,176,53,2,NULL),(332,194,53,2,NULL),(333,197,53,2,NULL),(334,233,53,2,NULL),(335,143,58,2,NULL),(336,147,58,2,NULL),(337,155,58,2,NULL),(338,159,58,2,NULL),(339,176,58,2,NULL),(340,194,58,2,NULL),(341,197,58,2,NULL),(342,233,58,2,NULL),(343,143,65,2,NULL),(344,147,65,2,NULL),(345,155,65,2,NULL),(346,159,65,2,NULL),(347,176,65,2,NULL),(348,194,65,2,NULL),(349,197,65,2,NULL),(350,233,65,2,NULL),(351,143,67,2,NULL),(352,147,67,2,NULL),(353,155,67,2,NULL),(354,159,67,2,NULL),(355,176,67,2,NULL),(356,194,67,2,NULL),(357,197,67,2,NULL),(358,233,67,2,NULL),(359,143,70,2,NULL),(360,147,70,2,NULL),(361,155,70,2,NULL),(362,159,70,2,NULL),(363,176,70,2,NULL),(364,194,70,2,NULL),(365,197,70,2,NULL),(366,233,70,2,NULL),(367,143,73,2,NULL),(368,147,73,2,NULL),(369,155,73,2,NULL),(370,159,73,2,NULL),(371,176,73,2,NULL),(372,194,73,2,NULL),(373,197,73,2,NULL),(374,233,73,2,NULL),(375,143,74,2,NULL),(376,147,74,2,NULL),(377,155,74,2,NULL),(378,159,74,2,NULL),(379,176,74,2,NULL),(380,194,74,2,NULL),(381,197,74,2,NULL),(382,233,74,2,NULL),(383,143,75,2,NULL),(384,147,75,2,NULL),(385,155,75,2,NULL),(386,159,75,2,NULL),(387,176,75,2,NULL),(388,194,75,2,NULL),(389,197,75,2,NULL),(390,233,75,2,NULL),(391,143,76,2,NULL),(392,147,76,2,NULL),(393,155,76,2,NULL),(394,159,76,2,NULL),(395,176,76,2,NULL),(396,194,76,2,NULL),(397,197,76,2,NULL),(398,233,76,2,NULL),(399,202,41,2,NULL),(400,65,7,2,NULL),(401,206,41,2,NULL),(402,28,35,2,NULL),(403,29,35,2,NULL),(404,18,35,2,NULL),(405,19,35,2,NULL),(406,20,35,2,NULL),(407,112,35,2,NULL),(408,163,35,2,NULL),(409,166,35,2,NULL),(410,126,35,2,NULL),(411,128,35,2,NULL),(412,231,35,2,NULL),(413,75,35,2,NULL),(414,164,35,2,NULL),(415,168,35,2,NULL),(416,170,35,2,NULL),(417,47,35,2,NULL),(418,53,35,2,NULL),(419,59,35,2,NULL),(420,78,35,2,NULL),(421,80,35,2,NULL),(422,91,35,2,NULL),(423,101,35,2,NULL),(424,108,35,2,NULL),(425,115,35,2,NULL),(426,121,35,2,NULL),(427,129,35,2,NULL),(428,134,35,2,NULL),(429,249,35,2,NULL),(430,230,35,2,NULL),(431,232,35,2,NULL),(432,57,35,2,NULL),(433,209,35,2,NULL),(434,211,35,2,NULL),(435,6,35,2,NULL),(436,8,35,2,NULL),(437,187,35,2,NULL),(438,178,35,2,NULL),(439,180,35,2,NULL),(440,49,35,2,NULL),(441,52,35,2,NULL),(442,56,35,2,NULL),(443,28,48,2,NULL),(444,29,48,2,NULL),(445,18,48,2,NULL),(446,19,48,2,NULL),(447,20,48,2,NULL),(448,112,48,2,NULL),(449,163,48,2,NULL),(450,166,48,2,NULL),(451,126,48,2,NULL),(452,128,48,2,NULL),(453,231,48,2,NULL),(454,75,48,2,NULL),(455,164,48,2,NULL),(456,168,48,2,NULL),(457,170,48,2,NULL),(458,47,48,2,NULL),(459,53,48,2,NULL),(460,59,48,2,NULL),(461,78,48,2,NULL),(462,80,48,2,NULL),(463,91,48,2,NULL),(464,101,48,2,NULL),(465,108,48,2,NULL),(466,115,48,2,NULL),(467,121,48,2,NULL),(468,129,48,2,NULL),(469,134,48,2,NULL),(470,249,48,2,NULL),(471,230,48,2,NULL),(472,232,48,2,NULL),(473,57,48,2,NULL),(474,209,48,2,NULL),(475,211,48,2,NULL),(476,6,48,2,NULL),(477,8,48,2,NULL),(478,187,48,2,NULL),(479,178,48,2,NULL),(480,180,48,2,NULL),(481,49,48,2,NULL),(482,52,48,2,NULL),(483,56,48,2,NULL),(484,164,1,2,NULL),(485,168,1,2,NULL),(486,170,1,2,NULL),(487,164,5,2,NULL),(488,168,5,2,NULL),(489,170,5,2,NULL),(490,164,9,2,NULL),(491,168,9,2,NULL),(492,170,9,2,NULL),(493,164,14,2,NULL),(494,168,14,2,NULL),(495,170,14,2,NULL),(496,164,26,2,NULL),(497,168,26,2,NULL),(498,170,26,2,NULL),(499,164,34,2,NULL),(500,168,34,2,NULL),(501,170,34,2,NULL),(502,164,10,2,NULL),(503,168,10,2,NULL),(504,170,10,2,NULL),(505,164,16,2,NULL),(506,168,16,2,NULL),(507,170,16,2,NULL),(508,164,24,2,NULL),(509,168,24,2,NULL),(510,170,24,2,NULL),(511,164,30,2,NULL),(512,168,30,2,NULL),(513,170,30,2,NULL),(514,164,37,2,NULL),(515,168,37,2,NULL),(516,170,37,2,NULL),(517,164,47,2,NULL),(518,168,47,2,NULL),(519,170,47,2,NULL),(520,164,54,2,NULL),(521,168,54,2,NULL),(522,170,54,2,NULL),(523,164,63,2,NULL),(524,168,63,2,NULL),(525,170,63,2,NULL),(526,164,66,2,NULL),(527,168,66,2,NULL),(528,170,66,2,NULL),(529,164,62,2,NULL),(530,168,62,2,NULL),(531,170,62,2,NULL),(532,164,27,2,NULL),(533,168,27,2,NULL),(534,170,27,2,NULL),(535,164,33,2,NULL),(536,168,33,2,NULL),(537,170,33,2,NULL),(538,164,39,2,NULL),(539,168,39,2,NULL),(540,170,39,2,NULL),(541,164,45,2,NULL),(542,168,45,2,NULL),(543,170,45,2,NULL),(544,164,51,2,NULL),(545,168,51,2,NULL),(546,170,51,2,NULL),(547,164,59,2,NULL),(548,168,59,2,NULL),(549,170,59,2,NULL),(550,164,64,2,NULL),(551,168,64,2,NULL),(552,170,64,2,NULL),(553,164,69,2,NULL),(554,168,69,2,NULL),(555,170,69,2,NULL),(556,164,72,2,NULL),(557,168,72,2,NULL),(558,170,72,2,NULL),(559,164,19,2,NULL),(560,168,19,2,NULL),(561,170,19,2,NULL),(562,164,40,2,NULL),(563,168,40,2,NULL),(564,170,40,2,NULL),(565,164,53,2,NULL),(566,168,53,2,NULL),(567,170,53,2,NULL),(568,164,58,2,NULL),(569,168,58,2,NULL),(570,170,58,2,NULL),(571,164,65,2,NULL),(572,168,65,2,NULL),(573,170,65,2,NULL),(574,164,67,2,NULL),(575,168,67,2,NULL),(576,170,67,2,NULL),(577,164,70,2,NULL),(578,168,70,2,NULL),(579,170,70,2,NULL),(580,164,73,2,NULL),(581,168,73,2,NULL),(582,170,73,2,NULL),(583,164,74,2,NULL),(584,168,74,2,NULL),(585,170,74,2,NULL),(586,164,75,2,NULL),(587,168,75,2,NULL),(588,170,75,2,NULL),(589,164,76,2,NULL),(590,168,76,2,NULL),(591,170,76,2,NULL),(592,47,1,2,NULL),(593,53,1,2,NULL),(594,59,1,2,NULL),(595,47,5,2,NULL),(596,53,5,2,NULL),(597,59,5,2,NULL),(598,47,9,2,NULL),(599,53,9,2,NULL),(600,59,9,2,NULL),(601,47,14,2,NULL),(602,53,14,2,NULL),(603,59,14,2,NULL),(604,47,26,2,NULL),(605,53,26,2,NULL),(606,59,26,2,NULL),(607,47,34,2,NULL),(608,53,34,2,NULL),(609,59,34,2,NULL),(610,47,10,2,NULL),(611,53,10,2,NULL),(612,59,10,2,NULL),(613,47,16,2,NULL),(614,53,16,2,NULL),(615,59,16,2,NULL),(616,47,24,2,NULL),(617,53,24,2,NULL),(618,59,24,2,NULL),(619,47,30,2,NULL),(620,53,30,2,NULL),(621,59,30,2,NULL),(622,47,37,2,NULL),(623,53,37,2,NULL),(624,59,37,2,NULL),(625,47,47,2,NULL),(626,53,47,2,NULL),(627,59,47,2,NULL),(628,47,54,2,NULL),(629,53,54,2,NULL),(630,59,54,2,NULL),(631,47,63,2,NULL),(632,53,63,2,NULL),(633,59,63,2,NULL),(634,47,66,2,NULL),(635,53,66,2,NULL),(636,59,66,2,NULL),(637,47,62,2,NULL),(638,53,62,2,NULL),(639,59,62,2,NULL),(640,47,27,2,NULL),(641,53,27,2,NULL),(642,59,27,2,NULL),(643,47,33,2,NULL),(644,53,33,2,NULL),(645,59,33,2,NULL),(646,47,39,2,NULL),(647,53,39,2,NULL),(648,59,39,2,NULL),(649,47,45,2,NULL),(650,53,45,2,NULL),(651,59,45,2,NULL),(652,47,51,2,NULL),(653,53,51,2,NULL),(654,59,51,2,NULL),(655,47,59,2,NULL),(656,53,59,2,NULL),(657,59,59,2,NULL),(658,47,64,2,NULL),(659,53,64,2,NULL),(660,59,64,2,NULL),(661,47,69,2,NULL),(662,53,69,2,NULL),(663,59,69,2,NULL),(664,47,72,2,NULL),(665,53,72,2,NULL),(666,59,72,2,NULL),(667,47,19,2,NULL),(668,53,19,2,NULL),(669,59,19,2,NULL),(670,47,40,2,NULL),(671,53,40,2,NULL),(672,59,40,2,NULL),(673,47,53,2,NULL),(674,53,53,2,NULL),(675,59,53,2,NULL),(676,47,58,2,NULL),(677,53,58,2,NULL),(678,59,58,2,NULL),(679,47,65,2,NULL),(680,53,65,2,NULL),(681,59,65,2,NULL),(682,47,67,2,NULL),(683,53,67,2,NULL),(684,59,67,2,NULL),(685,47,70,2,NULL),(686,53,70,2,NULL),(687,59,70,2,NULL),(688,47,73,2,NULL),(689,53,73,2,NULL),(690,59,73,2,NULL),(691,47,74,2,NULL),(692,53,74,2,NULL),(693,59,74,2,NULL),(694,47,75,2,NULL),(695,53,75,2,NULL),(696,59,75,2,NULL),(697,47,76,2,NULL),(698,53,76,2,NULL),(699,59,76,2,NULL),(700,78,1,2,NULL),(701,80,1,2,NULL),(702,91,1,2,NULL),(703,101,1,2,NULL),(704,108,1,2,NULL),(705,115,1,2,NULL),(706,121,1,2,NULL),(707,129,1,2,NULL),(708,134,1,2,NULL),(709,78,5,2,NULL),(710,80,5,2,NULL),(711,91,5,2,NULL),(712,101,5,2,NULL),(713,108,5,2,NULL),(714,115,5,2,NULL),(715,121,5,2,NULL),(716,129,5,2,NULL),(717,134,5,2,NULL),(718,78,9,2,NULL),(719,80,9,2,NULL),(720,91,9,2,NULL),(721,101,9,2,NULL),(722,108,9,2,NULL),(723,115,9,2,NULL),(724,121,9,2,NULL),(725,129,9,2,NULL),(726,134,9,2,NULL),(727,78,14,2,NULL),(728,80,14,2,NULL),(729,91,14,2,NULL),(730,101,14,2,NULL),(731,108,14,2,NULL),(732,115,14,2,NULL),(733,121,14,2,NULL),(734,129,14,2,NULL),(735,134,14,2,NULL),(736,78,26,2,NULL),(737,80,26,2,NULL),(738,91,26,2,NULL),(739,101,26,2,NULL),(740,108,26,2,NULL),(741,115,26,2,NULL),(742,121,26,2,NULL),(743,129,26,2,NULL),(744,134,26,2,NULL),(745,78,34,2,NULL),(746,80,34,2,NULL),(747,91,34,2,NULL),(748,101,34,2,NULL),(749,108,34,2,NULL),(750,115,34,2,NULL),(751,121,34,2,NULL),(752,129,34,2,NULL),(753,134,34,2,NULL),(754,78,10,2,NULL),(755,80,10,2,NULL),(756,91,10,2,NULL),(757,101,10,2,NULL),(758,108,10,2,NULL),(759,115,10,2,NULL),(760,121,10,2,NULL),(761,129,10,2,NULL),(762,134,10,2,NULL),(763,78,16,2,NULL),(764,80,16,2,NULL),(765,91,16,2,NULL),(766,101,16,2,NULL),(767,108,16,2,NULL),(768,115,16,2,NULL),(769,121,16,2,NULL),(770,129,16,2,NULL),(771,134,16,2,NULL),(772,78,24,2,NULL),(773,80,24,2,NULL),(774,91,24,2,NULL),(775,101,24,2,NULL),(776,108,24,2,NULL),(777,115,24,2,NULL),(778,121,24,2,NULL),(779,129,24,2,NULL),(780,134,24,2,NULL),(781,78,30,2,NULL),(782,80,30,2,NULL),(783,91,30,2,NULL),(784,101,30,2,NULL),(785,108,30,2,NULL),(786,115,30,2,NULL),(787,121,30,2,NULL),(788,129,30,2,NULL),(789,134,30,2,NULL),(790,78,37,2,NULL),(791,80,37,2,NULL),(792,91,37,2,NULL),(793,101,37,2,NULL),(794,108,37,2,NULL),(795,115,37,2,NULL),(796,121,37,2,NULL),(797,129,37,2,NULL),(798,134,37,2,NULL),(799,78,47,2,NULL),(800,80,47,2,NULL),(801,91,47,2,NULL),(802,101,47,2,NULL),(803,108,47,2,NULL),(804,115,47,2,NULL),(805,121,47,2,NULL),(806,129,47,2,NULL),(807,134,47,2,NULL),(808,78,54,2,NULL),(809,80,54,2,NULL),(810,91,54,2,NULL),(811,101,54,2,NULL),(812,108,54,2,NULL),(813,115,54,2,NULL),(814,121,54,2,NULL),(815,129,54,2,NULL),(816,134,54,2,NULL),(817,78,63,2,NULL),(818,80,63,2,NULL),(819,91,63,2,NULL),(820,101,63,2,NULL),(821,108,63,2,NULL),(822,115,63,2,NULL),(823,121,63,2,NULL),(824,129,63,2,NULL),(825,134,63,2,NULL),(826,78,66,2,NULL),(827,80,66,2,NULL),(828,91,66,2,NULL),(829,101,66,2,NULL),(830,108,66,2,NULL),(831,115,66,2,NULL),(832,121,66,2,NULL),(833,129,66,2,NULL),(834,134,66,2,NULL),(835,78,62,2,NULL),(836,80,62,2,NULL),(837,91,62,2,NULL),(838,101,62,2,NULL),(839,108,62,2,NULL),(840,115,62,2,NULL),(841,121,62,2,NULL),(842,129,62,2,NULL),(843,134,62,2,NULL),(844,78,27,2,NULL),(845,80,27,2,NULL),(846,91,27,2,NULL),(847,101,27,2,NULL),(848,108,27,2,NULL),(849,115,27,2,NULL),(850,121,27,2,NULL),(851,129,27,2,NULL),(852,134,27,2,NULL),(853,78,33,2,NULL),(854,80,33,2,NULL),(855,91,33,2,NULL),(856,101,33,2,NULL),(857,108,33,2,NULL),(858,115,33,2,NULL),(859,121,33,2,NULL),(860,129,33,2,NULL),(861,134,33,2,NULL),(862,78,39,2,NULL),(863,80,39,2,NULL),(864,91,39,2,NULL),(865,101,39,2,NULL),(866,108,39,2,NULL),(867,115,39,2,NULL),(868,121,39,2,NULL),(869,129,39,2,NULL),(870,134,39,2,NULL),(871,78,45,2,NULL),(872,80,45,2,NULL),(873,91,45,2,NULL),(874,101,45,2,NULL),(875,108,45,2,NULL),(876,115,45,2,NULL),(877,121,45,2,NULL),(878,129,45,2,NULL),(879,134,45,2,NULL),(880,78,51,2,NULL),(881,80,51,2,NULL),(882,91,51,2,NULL),(883,101,51,2,NULL),(884,108,51,2,NULL),(885,115,51,2,NULL),(886,121,51,2,NULL),(887,129,51,2,NULL),(888,134,51,2,NULL),(889,78,59,2,NULL),(890,80,59,2,NULL),(891,91,59,2,NULL),(892,101,59,2,NULL),(893,108,59,2,NULL),(894,115,59,2,NULL),(895,121,59,2,NULL),(896,129,59,2,NULL),(897,134,59,2,NULL),(898,78,64,2,NULL),(899,80,64,2,NULL),(900,91,64,2,NULL),(901,101,64,2,NULL),(902,108,64,2,NULL),(903,115,64,2,NULL),(904,121,64,2,NULL),(905,129,64,2,NULL),(906,134,64,2,NULL),(907,78,69,2,NULL),(908,80,69,2,NULL),(909,91,69,2,NULL),(910,101,69,2,NULL),(911,108,69,2,NULL),(912,115,69,2,NULL),(913,121,69,2,NULL),(914,129,69,2,NULL),(915,134,69,2,NULL),(916,78,72,2,NULL),(917,80,72,2,NULL),(918,91,72,2,NULL),(919,101,72,2,NULL),(920,108,72,2,NULL),(921,115,72,2,NULL),(922,121,72,2,NULL),(923,129,72,2,NULL),(924,134,72,2,NULL),(925,78,19,2,NULL),(926,80,19,2,NULL),(927,91,19,2,NULL),(928,101,19,2,NULL),(929,108,19,2,NULL),(930,115,19,2,NULL),(931,121,19,2,NULL),(932,129,19,2,NULL),(933,134,19,2,NULL),(934,78,40,2,NULL),(935,80,40,2,NULL),(936,91,40,2,NULL),(937,101,40,2,NULL),(938,108,40,2,NULL),(939,115,40,2,NULL),(940,121,40,2,NULL),(941,129,40,2,NULL),(942,134,40,2,NULL),(943,78,53,2,NULL),(944,80,53,2,NULL),(945,91,53,2,NULL),(946,101,53,2,NULL),(947,108,53,2,NULL),(948,115,53,2,NULL),(949,121,53,2,NULL),(950,129,53,2,NULL),(951,134,53,2,NULL),(952,78,58,2,NULL),(953,80,58,2,NULL),(954,91,58,2,NULL),(955,101,58,2,NULL),(956,108,58,2,NULL),(957,115,58,2,NULL),(958,121,58,2,NULL),(959,129,58,2,NULL),(960,134,58,2,NULL),(961,78,65,2,NULL),(962,80,65,2,NULL),(963,91,65,2,NULL),(964,101,65,2,NULL),(965,108,65,2,NULL),(966,115,65,2,NULL),(967,121,65,2,NULL),(968,129,65,2,NULL),(969,134,65,2,NULL),(970,78,67,2,NULL),(971,80,67,2,NULL),(972,91,67,2,NULL),(973,101,67,2,NULL),(974,108,67,2,NULL),(975,115,67,2,NULL),(976,121,67,2,NULL),(977,129,67,2,NULL),(978,134,67,2,NULL),(979,78,70,2,NULL),(980,80,70,2,NULL),(981,91,70,2,NULL),(982,101,70,2,NULL),(983,108,70,2,NULL),(984,115,70,2,NULL),(985,121,70,2,NULL),(986,129,70,2,NULL),(987,134,70,2,NULL),(988,78,73,2,NULL),(989,80,73,2,NULL),(990,91,73,2,NULL),(991,101,73,2,NULL),(992,108,73,2,NULL),(993,115,73,2,NULL),(994,121,73,2,NULL),(995,129,73,2,NULL),(996,134,73,2,NULL),(997,78,74,2,NULL),(998,80,74,2,NULL),(999,91,74,2,NULL),(1000,101,74,2,NULL),(1001,108,74,2,NULL),(1002,115,74,2,NULL),(1003,121,74,2,NULL),(1004,129,74,2,NULL),(1005,134,74,2,NULL),(1006,78,75,2,NULL),(1007,80,75,2,NULL),(1008,91,75,2,NULL),(1009,101,75,2,NULL),(1010,108,75,2,NULL),(1011,115,75,2,NULL),(1012,121,75,2,NULL),(1013,129,75,2,NULL),(1014,134,75,2,NULL),(1015,78,76,2,NULL),(1016,80,76,2,NULL),(1017,91,76,2,NULL),(1018,101,76,2,NULL),(1019,108,76,2,NULL),(1020,115,76,2,NULL),(1021,121,76,2,NULL),(1022,129,76,2,NULL),(1023,134,76,2,NULL),(1024,28,62,2,NULL),(1025,29,62,2,NULL),(1026,18,62,2,NULL),(1027,19,62,2,NULL),(1028,20,62,2,NULL),(1029,112,62,2,NULL),(1030,163,62,2,NULL),(1031,166,62,2,NULL),(1032,126,62,2,NULL),(1033,128,62,2,NULL),(1034,231,62,2,NULL),(1035,75,62,2,NULL),(1036,249,62,2,NULL),(1037,230,62,2,NULL),(1038,232,62,2,NULL),(1039,57,62,2,NULL),(1040,209,62,2,NULL),(1041,211,62,2,NULL),(1042,6,62,2,NULL),(1043,8,62,2,NULL),(1044,187,62,2,NULL),(1045,178,62,2,NULL),(1046,180,62,2,NULL),(1047,49,62,2,NULL),(1048,52,62,2,NULL),(1049,56,62,2,NULL),(1050,174,69,2,NULL),(1051,198,69,2,NULL),(1052,200,69,2,NULL),(1053,95,69,2,NULL),(1054,98,69,2,NULL),(1055,156,69,2,NULL),(1056,119,45,2,NULL),(1057,215,12,2,NULL),(1058,249,1,2,NULL),(1059,249,5,2,NULL),(1060,249,9,2,NULL),(1061,249,14,2,NULL),(1062,249,26,2,NULL),(1063,249,34,2,NULL),(1064,249,10,2,NULL),(1065,249,16,2,NULL),(1066,249,24,2,NULL),(1067,249,30,2,NULL),(1068,249,37,2,NULL),(1069,249,47,2,NULL),(1070,249,54,2,NULL),(1071,249,63,2,NULL),(1072,249,66,2,NULL),(1073,249,27,2,NULL),(1074,249,33,2,NULL),(1075,249,39,2,NULL),(1076,249,45,2,NULL),(1077,249,51,2,NULL),(1078,249,59,2,NULL),(1079,249,64,2,NULL),(1080,249,69,2,NULL),(1081,249,72,2,NULL),(1082,249,19,2,NULL),(1083,249,40,2,NULL),(1084,249,53,2,NULL),(1085,249,58,2,NULL),(1086,249,65,2,NULL),(1087,249,67,2,NULL),(1088,249,70,2,NULL),(1089,249,73,2,NULL),(1090,249,74,2,NULL),(1091,249,75,2,NULL),(1092,249,76,2,NULL),(1093,203,45,2,NULL),(1094,238,69,2,NULL),(1095,28,27,2,NULL),(1096,29,27,2,NULL),(1097,18,27,2,NULL),(1098,19,27,2,NULL),(1099,20,27,2,NULL),(1100,112,27,2,NULL),(1101,163,27,2,NULL),(1102,166,27,2,NULL),(1103,126,27,2,NULL),(1104,128,27,2,NULL),(1105,231,27,2,NULL),(1106,75,27,2,NULL),(1107,230,27,2,NULL),(1108,232,27,2,NULL),(1109,57,27,2,NULL),(1110,209,27,2,NULL),(1111,211,27,2,NULL),(1112,6,27,2,NULL),(1113,8,27,2,NULL),(1114,187,27,2,NULL),(1115,178,27,2,NULL),(1116,180,27,2,NULL),(1117,49,27,2,NULL),(1118,52,27,2,NULL),(1119,56,27,2,NULL),(1120,38,45,2,NULL),(1121,117,69,2,NULL),(1122,28,33,2,NULL),(1123,29,33,2,NULL),(1124,18,33,2,NULL),(1125,19,33,2,NULL),(1126,20,33,2,NULL),(1127,112,33,2,NULL),(1128,163,33,2,NULL),(1129,166,33,2,NULL),(1130,126,33,2,NULL),(1131,128,33,2,NULL),(1132,231,33,2,NULL),(1133,75,33,2,NULL),(1134,230,33,2,NULL),(1135,232,33,2,NULL),(1136,57,33,2,NULL),(1137,209,33,2,NULL),(1138,211,33,2,NULL),(1139,6,33,2,NULL),(1140,8,33,2,NULL),(1141,187,33,2,NULL),(1142,178,33,2,NULL),(1143,180,33,2,NULL),(1144,49,33,2,NULL),(1145,52,33,2,NULL),(1146,56,33,2,NULL),(1147,241,69,2,NULL),(1148,28,39,2,NULL),(1149,29,39,2,NULL),(1150,18,39,2,NULL),(1151,19,39,2,NULL),(1152,20,39,2,NULL),(1153,112,39,2,NULL),(1154,163,39,2,NULL),(1155,166,39,2,NULL),(1156,126,39,2,NULL),(1157,128,39,2,NULL),(1158,231,39,2,NULL),(1159,75,39,2,NULL),(1160,230,39,2,NULL),(1161,232,39,2,NULL),(1162,57,39,2,NULL),(1163,209,39,2,NULL),(1164,211,39,2,NULL),(1165,6,39,2,NULL),(1166,8,39,2,NULL),(1167,187,39,2,NULL),(1168,178,39,2,NULL),(1169,180,39,2,NULL),(1170,49,39,2,NULL),(1171,52,39,2,NULL),(1172,56,39,2,NULL),(1173,131,12,2,NULL),(1174,220,12,2,NULL),(1175,246,69,2,NULL),(1176,262,12,2,NULL),(1177,28,45,2,NULL),(1178,29,45,2,NULL),(1179,18,45,2,NULL),(1180,19,45,2,NULL),(1181,20,45,2,NULL),(1182,112,45,2,NULL),(1183,163,45,2,NULL),(1184,166,45,2,NULL),(1185,126,45,2,NULL),(1186,128,45,2,NULL),(1187,231,45,2,NULL),(1188,75,45,2,NULL),(1189,230,45,2,NULL),(1190,232,45,2,NULL),(1191,57,45,2,NULL),(1192,209,45,2,NULL),(1193,211,45,2,NULL),(1194,6,45,2,NULL),(1195,8,45,2,NULL),(1196,187,45,2,NULL),(1197,178,45,2,NULL),(1198,180,45,2,NULL),(1199,49,45,2,NULL),(1200,52,45,2,NULL),(1201,56,45,2,NULL),(1202,186,45,2,NULL),(1203,230,1,2,NULL),(1204,232,1,2,NULL),(1205,230,5,2,NULL),(1206,232,5,2,NULL),(1207,230,9,2,NULL),(1208,232,9,2,NULL),(1209,28,51,2,NULL),(1210,29,51,2,NULL),(1211,230,14,2,NULL),(1212,232,14,2,NULL),(1213,18,51,2,NULL),(1214,19,51,2,NULL),(1215,20,51,2,NULL),(1216,230,26,2,NULL),(1217,232,26,2,NULL),(1218,230,34,2,NULL),(1219,232,34,2,NULL),(1220,112,51,2,NULL),(1221,230,10,2,NULL),(1222,232,10,2,NULL),(1223,230,16,2,NULL),(1224,232,16,2,NULL),(1225,230,24,2,NULL),(1226,232,24,2,NULL),(1227,230,30,2,NULL),(1228,232,30,2,NULL),(1229,230,37,2,NULL),(1230,232,37,2,NULL),(1231,163,51,2,NULL),(1232,16,26,2,NULL),(1233,166,51,2,NULL),(1234,17,26,2,NULL),(1235,126,51,2,NULL),(1236,23,26,2,NULL),(1237,128,51,2,NULL),(1238,99,3,2,NULL),(1239,231,51,2,NULL),(1240,28,1,2,NULL),(1241,230,47,2,NULL),(1242,29,1,2,NULL),(1243,232,47,2,NULL),(1244,18,1,2,NULL),(1245,230,54,2,NULL),(1246,19,1,2,NULL),(1247,232,54,2,NULL),(1248,20,1,2,NULL),(1249,75,51,2,NULL),(1250,112,1,2,NULL),(1251,230,63,2,NULL),(1252,163,1,2,NULL),(1253,232,63,2,NULL),(1254,166,1,2,NULL),(1255,230,66,2,NULL),(1256,126,1,2,NULL),(1257,232,66,2,NULL),(1258,128,1,2,NULL),(1259,57,51,2,NULL),(1260,231,1,2,NULL),(1261,209,51,2,NULL),(1262,75,1,2,NULL),(1263,211,51,2,NULL),(1264,57,1,2,NULL),(1265,230,59,2,NULL),(1266,209,1,2,NULL),(1267,232,59,2,NULL),(1268,211,1,2,NULL),(1269,230,64,2,NULL),(1270,6,1,2,NULL),(1271,232,64,2,NULL),(1272,8,1,2,NULL),(1273,230,69,2,NULL),(1274,187,1,2,NULL),(1275,232,69,2,NULL),(1276,178,1,2,NULL),(1277,230,72,2,NULL),(1278,180,1,2,NULL),(1279,232,72,2,NULL),(1280,49,1,2,NULL),(1281,230,19,2,NULL),(1282,52,1,2,NULL),(1283,232,19,2,NULL),(1284,56,1,2,NULL),(1285,6,51,2,NULL),(1286,13,26,2,NULL),(1287,8,51,2,NULL),(1288,22,1,2,NULL),(1289,230,40,2,NULL),(1290,24,1,2,NULL),(1291,232,40,2,NULL),(1292,26,1,2,NULL),(1293,187,51,2,NULL),(1294,64,1,2,NULL),(1295,230,53,2,NULL),(1296,96,26,2,NULL),(1297,232,53,2,NULL),(1298,28,5,2,NULL),(1299,230,58,2,NULL),(1300,29,5,2,NULL),(1301,232,58,2,NULL),(1302,18,5,2,NULL),(1303,230,65,2,NULL),(1304,19,5,2,NULL),(1305,232,65,2,NULL),(1306,20,5,2,NULL),(1307,230,67,2,NULL),(1308,112,5,2,NULL),(1309,232,67,2,NULL),(1310,163,5,2,NULL),(1311,230,70,2,NULL),(1312,166,5,2,NULL),(1313,232,70,2,NULL),(1314,126,5,2,NULL),(1315,178,51,2,NULL),(1316,128,5,2,NULL),(1317,180,51,2,NULL),(1318,231,5,2,NULL),(1319,49,51,2,NULL),(1320,75,5,2,NULL),(1321,52,51,2,NULL),(1322,57,5,2,NULL),(1323,56,51,2,NULL),(1324,230,73,2,NULL),(1325,209,5,2,NULL),(1326,232,73,2,NULL),(1327,211,5,2,NULL),(1328,230,74,2,NULL),(1329,6,5,2,NULL),(1330,232,74,2,NULL),(1331,8,5,2,NULL),(1332,230,75,2,NULL),(1333,187,5,2,NULL),(1334,232,75,2,NULL),(1335,178,5,2,NULL),(1336,230,76,2,NULL),(1337,180,5,2,NULL),(1338,232,76,2,NULL),(1339,49,5,2,NULL),(1340,66,56,2,NULL),(1341,52,5,2,NULL),(1342,188,45,2,NULL),(1343,56,5,2,NULL),(1344,57,9,2,NULL),(1345,34,5,2,NULL),(1346,209,9,2,NULL),(1347,28,14,2,NULL),(1348,211,9,2,NULL),(1349,29,14,2,NULL),(1350,57,14,2,NULL),(1351,18,9,2,NULL),(1352,209,14,2,NULL),(1353,19,9,2,NULL),(1354,211,14,2,NULL),(1355,20,9,2,NULL),(1356,57,26,2,NULL),(1357,28,26,2,NULL),(1358,209,26,2,NULL),(1359,29,26,2,NULL),(1360,211,26,2,NULL),(1361,28,34,2,NULL),(1362,57,34,2,NULL),(1363,29,34,2,NULL),(1364,209,34,2,NULL),(1365,112,9,2,NULL),(1366,211,34,2,NULL),(1367,28,10,2,NULL),(1368,57,10,2,NULL),(1369,29,10,2,NULL),(1370,209,10,2,NULL),(1371,28,16,2,NULL),(1372,211,10,2,NULL),(1373,29,16,2,NULL),(1374,57,16,2,NULL),(1375,28,24,2,NULL),(1376,209,16,2,NULL),(1377,29,24,2,NULL),(1378,211,16,2,NULL),(1379,28,30,2,NULL),(1380,57,24,2,NULL),(1381,29,30,2,NULL),(1382,209,24,2,NULL),(1383,28,37,2,NULL),(1384,211,24,2,NULL),(1385,29,37,2,NULL),(1386,57,30,2,NULL),(1387,163,9,2,NULL),(1388,209,30,2,NULL),(1389,166,9,2,NULL),(1390,211,30,2,NULL),(1391,126,9,2,NULL),(1392,57,37,2,NULL),(1393,128,9,2,NULL),(1394,209,37,2,NULL),(1395,231,9,2,NULL),(1396,211,37,2,NULL),(1397,28,47,2,NULL),(1398,57,47,2,NULL),(1399,29,47,2,NULL),(1400,209,47,2,NULL),(1401,28,54,2,NULL),(1402,211,47,2,NULL),(1403,29,54,2,NULL),(1404,57,54,2,NULL),(1405,75,9,2,NULL),(1406,209,54,2,NULL),(1407,28,63,2,NULL),(1408,211,54,2,NULL),(1409,29,63,2,NULL),(1410,57,63,2,NULL),(1411,28,66,2,NULL),(1412,209,63,2,NULL),(1413,29,66,2,NULL),(1414,211,63,2,NULL),(1415,28,59,2,NULL),(1416,57,66,2,NULL),(1417,29,59,2,NULL),(1418,209,66,2,NULL),(1419,28,64,2,NULL),(1420,211,66,2,NULL),(1421,29,64,2,NULL),(1422,57,59,2,NULL),(1423,28,69,2,NULL),(1424,209,59,2,NULL),(1425,29,69,2,NULL),(1426,211,59,2,NULL),(1427,28,72,2,NULL),(1428,57,64,2,NULL),(1429,29,72,2,NULL),(1430,209,64,2,NULL),(1431,28,19,2,NULL),(1432,211,64,2,NULL),(1433,29,19,2,NULL),(1434,57,69,2,NULL),(1435,6,9,2,NULL),(1436,209,69,2,NULL),(1437,8,9,2,NULL),(1438,211,69,2,NULL),(1439,28,40,2,NULL),(1440,57,72,2,NULL),(1441,29,40,2,NULL),(1442,209,72,2,NULL),(1443,187,9,2,NULL),(1444,211,72,2,NULL),(1445,28,53,2,NULL),(1446,57,19,2,NULL),(1447,29,53,2,NULL),(1448,209,19,2,NULL),(1449,28,58,2,NULL),(1450,211,19,2,NULL),(1451,29,58,2,NULL),(1452,57,40,2,NULL),(1453,28,65,2,NULL),(1454,209,40,2,NULL),(1455,29,65,2,NULL),(1456,211,40,2,NULL),(1457,28,67,2,NULL),(1458,57,53,2,NULL),(1459,29,67,2,NULL),(1460,209,53,2,NULL),(1461,28,70,2,NULL),(1462,211,53,2,NULL),(1463,29,70,2,NULL),(1464,57,58,2,NULL),(1465,178,9,2,NULL),(1466,209,58,2,NULL),(1467,180,9,2,NULL),(1468,211,58,2,NULL),(1469,49,9,2,NULL),(1470,57,65,2,NULL),(1471,52,9,2,NULL),(1472,209,65,2,NULL),(1473,56,9,2,NULL),(1474,211,65,2,NULL),(1475,28,73,2,NULL),(1476,57,67,2,NULL),(1477,29,73,2,NULL),(1478,209,67,2,NULL),(1479,28,74,2,NULL),(1480,211,67,2,NULL),(1481,29,74,2,NULL),(1482,57,70,2,NULL),(1483,28,75,2,NULL),(1484,209,70,2,NULL),(1485,29,75,2,NULL),(1486,211,70,2,NULL),(1487,28,76,2,NULL),(1488,57,73,2,NULL),(1489,29,76,2,NULL),(1490,209,73,2,NULL),(1491,12,1,2,NULL),(1492,211,73,2,NULL),(1493,48,26,2,NULL),(1494,57,74,2,NULL),(1495,18,14,2,NULL),(1496,209,74,2,NULL),(1497,19,14,2,NULL),(1498,211,74,2,NULL),(1499,20,14,2,NULL),(1500,57,75,2,NULL),(1501,112,14,2,NULL),(1502,209,75,2,NULL),(1503,163,14,2,NULL),(1504,211,75,2,NULL),(1505,166,14,2,NULL),(1506,57,76,2,NULL),(1507,126,14,2,NULL),(1508,209,76,2,NULL),(1509,128,14,2,NULL),(1510,211,76,2,NULL),(1511,231,14,2,NULL),(1512,18,59,2,NULL),(1513,75,14,2,NULL),(1514,19,59,2,NULL),(1515,20,59,2,NULL),(1516,6,14,2,NULL),(1517,112,59,2,NULL),(1518,8,14,2,NULL),(1519,163,59,2,NULL),(1520,187,14,2,NULL),(1521,166,59,2,NULL),(1522,178,14,2,NULL),(1523,126,59,2,NULL),(1524,180,14,2,NULL),(1525,128,59,2,NULL),(1526,49,14,2,NULL),(1527,231,59,2,NULL),(1528,52,14,2,NULL),(1529,75,59,2,NULL),(1530,56,14,2,NULL),(1531,6,59,2,NULL),(1532,35,21,2,NULL),(1533,8,59,2,NULL),(1534,104,5,2,NULL),(1535,187,59,2,NULL),(1536,18,26,2,NULL),(1537,178,59,2,NULL),(1538,19,26,2,NULL),(1539,180,59,2,NULL),(1540,20,26,2,NULL),(1541,49,59,2,NULL),(1542,18,34,2,NULL),(1543,52,59,2,NULL),(1544,19,34,2,NULL),(1545,56,59,2,NULL),(1546,20,34,2,NULL),(1547,42,69,2,NULL),(1548,18,10,2,NULL),(1549,45,69,2,NULL),(1550,19,10,2,NULL),(1551,90,69,2,NULL),(1552,20,10,2,NULL),(1553,18,64,2,NULL),(1554,18,16,2,NULL),(1555,19,64,2,NULL),(1556,19,16,2,NULL),(1557,20,64,2,NULL),(1558,20,16,2,NULL),(1559,112,64,2,NULL),(1560,18,24,2,NULL),(1561,163,64,2,NULL),(1562,19,24,2,NULL),(1563,166,64,2,NULL),(1564,20,24,2,NULL),(1565,126,64,2,NULL),(1566,18,30,2,NULL),(1567,128,64,2,NULL),(1568,19,30,2,NULL),(1569,231,64,2,NULL),(1570,20,30,2,NULL),(1571,75,64,2,NULL),(1572,18,37,2,NULL),(1573,19,37,2,NULL),(1574,6,64,2,NULL),(1575,20,37,2,NULL),(1576,8,64,2,NULL),(1577,18,47,2,NULL),(1578,187,64,2,NULL),(1579,19,47,2,NULL),(1580,178,64,2,NULL),(1581,20,47,2,NULL),(1582,180,64,2,NULL),(1583,18,54,2,NULL),(1584,49,64,2,NULL),(1585,19,54,2,NULL),(1586,52,64,2,NULL),(1587,20,54,2,NULL),(1588,56,64,2,NULL),(1589,18,63,2,NULL),(1590,18,69,2,NULL),(1591,19,63,2,NULL),(1592,19,69,2,NULL),(1593,20,63,2,NULL),(1594,20,69,2,NULL),(1595,18,66,2,NULL),(1596,112,69,2,NULL),(1597,19,66,2,NULL),(1598,163,69,2,NULL),(1599,20,66,2,NULL),(1600,166,69,2,NULL),(1601,18,72,2,NULL),(1602,126,69,2,NULL),(1603,19,72,2,NULL),(1604,128,69,2,NULL),(1605,20,72,2,NULL),(1606,231,69,2,NULL),(1607,18,19,2,NULL),(1608,75,69,2,NULL),(1609,19,19,2,NULL),(1610,6,69,2,NULL),(1611,20,19,2,NULL),(1612,8,69,2,NULL),(1613,18,40,2,NULL),(1614,187,69,2,NULL),(1615,19,40,2,NULL),(1616,178,69,2,NULL),(1617,20,40,2,NULL),(1618,180,69,2,NULL),(1619,18,53,2,NULL),(1620,49,69,2,NULL),(1621,19,53,2,NULL),(1622,52,69,2,NULL),(1623,20,53,2,NULL),(1624,56,69,2,NULL),(1625,18,58,2,NULL),(1626,149,69,2,NULL),(1627,19,58,2,NULL),(1628,171,69,2,NULL),(1629,20,58,2,NULL),(1630,177,69,2,NULL),(1631,18,65,2,NULL),(1632,112,72,2,NULL),(1633,19,65,2,NULL),(1634,163,72,2,NULL),(1635,20,65,2,NULL),(1636,166,72,2,NULL),(1637,18,67,2,NULL),(1638,126,72,2,NULL),(1639,19,67,2,NULL),(1640,128,72,2,NULL),(1641,20,67,2,NULL),(1642,231,72,2,NULL),(1643,18,70,2,NULL),(1644,75,72,2,NULL),(1645,19,70,2,NULL),(1646,6,72,2,NULL),(1647,20,70,2,NULL),(1648,8,72,2,NULL),(1649,18,73,2,NULL),(1650,187,72,2,NULL),(1651,19,73,2,NULL),(1652,178,72,2,NULL),(1653,20,73,2,NULL),(1654,180,72,2,NULL),(1655,18,74,2,NULL),(1656,49,72,2,NULL),(1657,19,74,2,NULL),(1658,52,72,2,NULL),(1659,20,74,2,NULL),(1660,56,72,2,NULL),(1661,18,75,2,NULL),(1662,19,75,2,NULL),(1663,20,75,2,NULL),(1664,18,76,2,NULL),(1665,19,76,2,NULL),(1666,20,76,2,NULL),(1667,112,26,2,NULL),(1668,163,26,2,NULL),(1669,166,26,2,NULL),(1670,126,26,2,NULL),(1671,128,26,2,NULL),(1672,231,26,2,NULL),(1673,75,26,2,NULL),(1674,6,26,2,NULL),(1675,8,26,2,NULL),(1676,187,26,2,NULL),(1677,178,26,2,NULL),(1678,180,26,2,NULL),(1679,49,26,2,NULL),(1680,52,26,2,NULL),(1681,56,26,2,NULL),(1682,21,26,2,NULL),(1683,25,26,2,NULL),(1684,27,26,2,NULL),(1685,112,34,2,NULL),(1686,163,34,2,NULL),(1687,166,34,2,NULL),(1688,126,34,2,NULL),(1689,128,34,2,NULL),(1690,231,34,2,NULL),(1691,75,34,2,NULL),(1692,6,34,2,NULL),(1693,8,34,2,NULL),(1694,187,34,2,NULL),(1695,178,34,2,NULL),(1696,180,34,2,NULL),(1697,49,34,2,NULL),(1698,52,34,2,NULL),(1699,56,34,2,NULL),(1700,79,75,2,NULL),(1701,84,75,2,NULL),(1702,87,75,2,NULL),(1703,110,63,2,NULL),(1704,184,75,2,NULL),(1705,120,63,2,NULL),(1706,247,75,2,NULL),(1707,123,63,2,NULL),(1708,250,75,2,NULL),(1709,150,63,2,NULL),(1710,72,67,2,NULL),(1711,153,63,2,NULL),(1712,94,42,2,NULL),(1713,185,63,2,NULL),(1714,187,10,2,NULL),(1715,239,30,2,NULL),(1716,187,16,2,NULL),(1717,259,2,2,NULL),(1718,187,24,2,NULL),(1719,112,10,2,NULL),(1720,187,30,2,NULL),(1721,112,16,2,NULL),(1722,187,37,2,NULL),(1723,112,24,2,NULL),(1724,187,47,2,NULL),(1725,112,30,2,NULL),(1726,187,54,2,NULL),(1727,112,37,2,NULL),(1728,187,63,2,NULL),(1729,112,47,2,NULL),(1730,187,66,2,NULL),(1731,112,54,2,NULL),(1732,187,19,2,NULL),(1733,112,63,2,NULL),(1734,187,40,2,NULL),(1735,112,66,2,NULL),(1736,187,53,2,NULL),(1737,112,19,2,NULL),(1738,187,58,2,NULL),(1739,112,40,2,NULL),(1740,187,65,2,NULL),(1741,112,53,2,NULL),(1742,187,67,2,NULL),(1743,112,58,2,NULL),(1744,187,70,2,NULL),(1745,112,65,2,NULL),(1746,187,73,2,NULL),(1747,112,67,2,NULL),(1748,187,74,2,NULL),(1749,112,70,2,NULL),(1750,187,75,2,NULL),(1751,112,73,2,NULL),(1752,187,76,2,NULL),(1753,112,74,2,NULL),(1754,106,67,2,NULL),(1755,112,75,2,NULL),(1756,137,75,2,NULL),(1757,112,76,2,NULL),(1758,163,53,2,NULL),(1759,50,63,2,NULL),(1760,166,53,2,NULL),(1761,139,30,2,NULL),(1762,126,53,2,NULL),(1763,163,10,2,NULL),(1764,128,53,2,NULL),(1765,166,10,2,NULL),(1766,231,53,2,NULL),(1767,126,10,2,NULL),(1768,75,53,2,NULL),(1769,128,10,2,NULL),(1770,6,53,2,NULL),(1771,231,10,2,NULL),(1772,8,53,2,NULL),(1773,75,10,2,NULL),(1774,178,53,2,NULL),(1775,6,10,2,NULL),(1776,180,53,2,NULL),(1777,8,10,2,NULL),(1778,49,53,2,NULL),(1779,178,10,2,NULL),(1780,52,53,2,NULL),(1781,180,10,2,NULL),(1782,56,53,2,NULL),(1783,49,10,2,NULL),(1784,122,67,2,NULL),(1785,52,10,2,NULL),(1786,173,75,2,NULL),(1787,56,10,2,NULL),(1788,163,58,2,NULL),(1789,60,63,2,NULL),(1790,166,58,2,NULL),(1791,223,30,2,NULL),(1792,126,58,2,NULL),(1793,163,16,2,NULL),(1794,128,58,2,NULL),(1795,166,16,2,NULL),(1796,231,58,2,NULL),(1797,126,16,2,NULL),(1798,75,58,2,NULL),(1799,128,16,2,NULL),(1800,6,58,2,NULL),(1801,231,16,2,NULL),(1802,8,58,2,NULL),(1803,75,16,2,NULL),(1804,178,58,2,NULL),(1805,6,16,2,NULL),(1806,180,58,2,NULL),(1807,8,16,2,NULL),(1808,49,58,2,NULL),(1809,178,16,2,NULL),(1810,52,58,2,NULL),(1811,180,16,2,NULL),(1812,1,32,2,NULL),(1813,56,58,2,NULL),(1814,49,16,2,NULL),(1815,4,25,2,NULL),(1816,69,75,2,NULL),(1817,52,16,2,NULL),(1818,5,29,2,NULL),(1819,163,65,2,NULL),(1820,56,16,2,NULL),(1821,163,19,2,NULL),(1822,166,65,2,NULL),(1823,63,63,2,NULL),(1824,166,19,2,NULL),(1825,126,65,2,NULL),(1826,126,19,2,NULL),(1827,128,65,2,NULL),(1828,163,24,2,NULL),(1829,128,19,2,NULL),(1830,231,65,2,NULL),(1831,166,24,2,NULL),(1832,231,19,2,NULL),(1833,75,65,2,NULL),(1834,126,24,2,NULL),(1835,75,19,2,NULL),(1836,128,24,2,NULL),(1837,6,65,2,NULL),(1838,6,19,2,NULL),(1839,231,24,2,NULL),(1840,8,65,2,NULL),(1841,8,19,2,NULL),(1842,75,24,2,NULL),(1843,178,19,2,NULL),(1844,178,65,2,NULL),(1845,180,65,2,NULL),(1846,180,19,2,NULL),(1847,49,65,2,NULL),(1848,6,24,2,NULL),(1849,49,19,2,NULL),(1850,52,65,2,NULL),(1851,8,24,2,NULL),(1852,52,19,2,NULL),(1853,56,65,2,NULL),(1854,178,24,2,NULL),(1855,56,19,2,NULL),(1856,169,42,2,NULL),(1857,180,24,2,NULL),(1858,6,30,2,NULL),(1859,204,42,2,NULL),(1860,49,24,2,NULL),(1861,8,30,2,NULL),(1862,212,42,2,NULL),(1863,52,24,2,NULL),(1864,6,37,2,NULL),(1865,261,75,2,NULL),(1866,56,24,2,NULL),(1867,8,37,2,NULL),(1868,46,63,2,NULL),(1869,163,67,2,NULL),(1870,6,47,2,NULL),(1871,166,67,2,NULL),(1872,105,2,2,NULL),(1873,8,47,2,NULL),(1874,172,2,2,NULL),(1875,126,67,2,NULL),(1876,6,54,2,NULL),(1877,128,67,2,NULL),(1878,196,2,2,NULL),(1879,8,54,2,NULL),(1880,231,67,2,NULL),(1881,163,30,2,NULL),(1882,6,63,2,NULL),(1883,75,67,2,NULL),(1884,166,30,2,NULL),(1885,8,63,2,NULL),(1886,126,30,2,NULL),(1887,6,66,2,NULL),(1888,6,67,2,NULL),(1889,128,30,2,NULL),(1890,8,67,2,NULL),(1891,8,66,2,NULL),(1892,231,30,2,NULL),(1893,178,67,2,NULL),(1894,6,40,2,NULL),(1895,75,30,2,NULL),(1896,180,67,2,NULL),(1897,8,40,2,NULL),(1898,178,30,2,NULL),(1899,49,67,2,NULL),(1900,6,70,2,NULL),(1901,180,30,2,NULL),(1902,52,67,2,NULL),(1903,8,70,2,NULL),(1904,49,30,2,NULL),(1905,56,67,2,NULL),(1906,6,73,2,NULL),(1907,52,30,2,NULL),(1908,140,67,2,NULL),(1909,8,73,2,NULL),(1910,56,30,2,NULL),(1911,6,74,2,NULL),(1912,178,37,2,NULL),(1913,157,30,2,NULL),(1914,180,37,2,NULL),(1915,8,74,2,NULL),(1916,163,70,2,NULL),(1917,126,37,2,NULL),(1918,6,75,2,NULL),(1919,166,70,2,NULL),(1920,128,37,2,NULL),(1921,8,75,2,NULL),(1922,126,70,2,NULL),(1923,231,37,2,NULL),(1924,6,76,2,NULL),(1925,128,70,2,NULL),(1926,163,47,2,NULL),(1927,8,76,2,NULL),(1928,231,70,2,NULL),(1929,166,47,2,NULL),(1930,3,19,2,NULL),(1931,178,47,2,NULL),(1932,163,54,2,NULL),(1933,11,19,2,NULL),(1934,180,47,2,NULL),(1935,166,54,2,NULL),(1936,163,40,2,NULL),(1937,178,54,2,NULL),(1938,75,37,2,NULL),(1939,166,40,2,NULL),(1940,180,54,2,NULL),(1941,163,63,2,NULL),(1942,126,40,2,NULL),(1943,75,70,2,NULL),(1944,166,63,2,NULL),(1945,128,40,2,NULL),(1946,178,63,2,NULL),(1947,163,66,2,NULL),(1948,231,40,2,NULL),(1949,180,63,2,NULL),(1950,166,66,2,NULL),(1951,75,40,2,NULL),(1952,178,66,2,NULL),(1953,180,66,2,NULL),(1954,178,40,2,NULL),(1955,49,37,2,NULL),(1956,52,37,2,NULL),(1957,180,40,2,NULL),(1958,56,37,2,NULL),(1959,49,70,2,NULL),(1960,49,40,2,NULL),(1961,163,73,2,NULL),(1962,52,70,2,NULL),(1963,52,40,2,NULL),(1964,166,73,2,NULL),(1965,56,70,2,NULL),(1966,56,40,2,NULL),(1967,163,74,2,NULL),(1968,178,73,2,NULL),(1969,166,74,2,NULL),(1970,180,73,2,NULL),(1971,163,75,2,NULL),(1972,178,74,2,NULL),(1973,166,75,2,NULL),(1974,180,74,2,NULL),(1975,163,76,2,NULL),(1976,178,75,2,NULL),(1977,166,76,2,NULL),(1978,180,75,2,NULL),(1979,234,43,2,NULL),(1980,178,76,2,NULL),(1981,263,30,2,NULL),(1982,180,76,2,NULL),(1983,126,47,2,NULL),(1984,61,71,2,NULL),(1985,128,47,2,NULL),(1986,229,67,2,NULL),(1987,231,47,2,NULL),(1988,49,47,2,NULL),(1989,126,54,2,NULL),(1990,52,47,2,NULL),(1991,128,54,2,NULL),(1992,56,47,2,NULL),(1993,231,54,2,NULL),(1994,49,54,2,NULL),(1995,126,63,2,NULL),(1996,52,54,2,NULL),(1997,128,63,2,NULL),(1998,56,54,2,NULL),(1999,231,63,2,NULL),(2000,49,63,2,NULL),(2001,126,66,2,NULL),(2002,52,63,2,NULL),(2003,128,66,2,NULL),(2004,56,63,2,NULL),(2005,231,66,2,NULL),(2006,49,66,2,NULL),(2007,126,73,2,NULL),(2008,52,66,2,NULL),(2009,56,66,2,NULL),(2010,128,73,2,NULL),(2011,49,73,2,NULL),(2012,231,73,2,NULL),(2013,52,73,2,NULL),(2014,126,74,2,NULL),(2015,56,73,2,NULL),(2016,128,74,2,NULL),(2017,49,74,2,NULL),(2018,231,74,2,NULL),(2019,52,74,2,NULL),(2020,126,75,2,NULL),(2021,56,74,2,NULL),(2022,128,75,2,NULL),(2023,49,75,2,NULL),(2024,231,75,2,NULL),(2025,52,75,2,NULL),(2026,126,76,2,NULL),(2027,56,75,2,NULL),(2028,128,76,2,NULL),(2029,49,76,2,NULL),(2030,231,76,2,NULL),(2031,52,76,2,NULL),(2032,75,47,2,NULL),(2033,56,76,2,NULL),(2034,36,63,2,NULL),(2035,75,73,2,NULL),(2036,214,63,2,NULL),(2037,221,75,2,NULL),(2038,218,63,2,NULL),(2039,226,75,2,NULL),(2040,75,54,2,NULL),(2041,253,75,2,NULL),(2042,67,30,2,NULL),(2043,75,74,2,NULL),(2044,75,63,2,NULL),(2045,75,75,2,NULL),(2046,75,66,2,NULL),(2047,130,75,2,NULL),(2048,75,76,2,NULL),(2049,165,75,2,NULL),(2050,136,63,2,NULL),(2051,240,75,2,NULL),(2052,142,63,2,NULL),(2053,245,63,2,NULL);
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

-- Dump completed on 2015-10-12  3:30:29
