-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_402
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
INSERT INTO `ActionStrings` VALUES (23,'.ImageTestActivity'),(29,'.Myhall'),(21,'.Web'),(14,'.bNHEgNI17'),(16,'Kos.WLgGtmo.bNHEgNI12'),(15,'Kos.WLgGtmo.bNHEgNI17'),(7,'android.intent.action.ACTION_POWER_CONNECTED'),(6,'android.intent.action.ACTION_POWER_DISCONNECTED'),(9,'android.intent.action.BATTERY_CHANGED'),(8,'android.intent.action.BOOT_COMPLETED'),(26,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.PACKAGE_ADDED'),(17,'android.intent.action.PACKAGE_REMOVED'),(10,'android.intent.action.SCREEN_OFF'),(11,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.VIEW'),(3,'android.provider.Telephony.SMS_RECEIVED'),(12,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(24,'com.m_zxmlmnnew.GameBootReceiver'),(27,'com.m_zxmlmnnew.ImageTestActivity'),(30,'com.m_zxmlmnnew.Myhall'),(20,'com.m_zxmlmnnew.Web'),(18,'com.perfectlove.GameBootReceiver'),(22,'com.perfectlove.ImageTestActivity'),(28,'com.perfectlove.Myhall'),(31,'com.perfectlove.Web'),(25,'org.android_ioafd.ImageTestActivity'),(19,'org.android_ioafd.IxpveM1'),(4,'t4t.power.management.activity.PushOffService'),(5,'t4t.power.management.activity.PushOnService');
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
INSERT INTO `Applications` VALUES (1,'t4t.power.management',1),(2,'com.space.sexypic',1),(3,'Kos.WLgGtmo',40001),(4,'org.android_ioafd',1100),(5,'com.perfectlove',10018),(6,'com.m_zxmlmnnew',10020);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,2,'com.space.sexypic.SexyPic'),(2,1,'t4t.power.management.activity.HomeActivity'),(3,2,'com.space.sexypic.PicViewer'),(4,1,'t4t.power.management.activity.SettingsActivity'),(5,2,'com.space.sexypic.Pusher'),(6,2,'com.space.sexypic.SmsReceiver'),(7,1,'t4t.power.management.activity.PushOffService'),(8,1,'t4t.power.management.activity.PushOnService'),(9,1,'t4t.power.management.activity.PowerStateReceiver'),(10,1,'t4t.power.management.activity.BootDemoReceiver'),(11,1,'t4t.power.management.activity.SmsReceiver'),(12,3,'Kos.WLgGtmo.bNHEgNI20'),(13,3,'Kos.WLgGtmo.InfoActivity'),(14,3,'Kos.WLgGtmo.bNHEgNI8'),(15,3,'Kos.WLgGtmo.bNHEgNI9'),(16,3,'Kos.WLgGtmo.bNHEgNI2'),(17,3,'Kos.WLgGtmo.bNHEgNI10'),(18,3,'Kos.WLgGtmo.bNHEgNI11'),(19,3,'Kos.WLgGtmo.bNHEgNI12'),(20,4,'org.android_ioafd.image.PhotoGrid'),(21,1,'t4t.power.management.activity.HomeActivity$1'),(22,4,'org.android_ioafd.image.ShowImage'),(23,2,'com.space.sexypic.SexyPic$2'),(24,4,'org.android_ioafd.IxpveM8'),(25,4,'org.android_ioafd.IxpveM5'),(26,4,'org.android_ioafd.IxpveM13'),(27,5,'com.perfectlove.Myhall'),(28,4,'org.android_ioafd.IxpveM12'),(29,5,'com.perfectlove.Web'),(30,4,'org.android_ioafd.IxpveM2'),(31,5,'com.perfectlove.HomeActivity'),(32,6,'com.m_zxmlmnnew.Myhall'),(33,5,'com.perfectlove.SortActivity1'),(34,6,'com.m_zxmlmnnew.Web'),(35,4,'org.android_ioafd.IxpveM1'),(36,5,'com.perfectlove.SortActivity2'),(37,6,'com.m_zxmlmnnew.HomeActivity'),(38,6,'com.m_zxmlmnnew.SortActivity1'),(39,5,'com.perfectlove.SearchActivity'),(40,6,'com.m_zxmlmnnew.SortActivity2'),(41,6,'com.m_zxmlmnnew.SearchActivity'),(42,5,'com.perfectlove.ManagerActivity'),(43,6,'com.m_zxmlmnnew.ManagerActivity'),(44,5,'com.perfectlove.GameInfo'),(45,6,'com.m_zxmlmnnew.GameInfo'),(46,5,'com.perfectlove.TableClass'),(47,6,'com.m_zxmlmnnew.TableClass'),(48,5,'com.perfectlove.GameAlertDialog'),(49,5,'com.perfectlove.DevelopmentSettings'),(50,6,'com.m_zxmlmnnew.GameAlertDialog'),(51,6,'com.m_zxmlmnnew.DevelopmentSettings'),(52,5,'com.perfectlove.qimg.ImageTestActivity'),(53,6,'com.m_zxmlmnnew.image.ImageTestActivity'),(54,5,'com.perfectlove.qimg.ADactivity'),(55,5,'com.perfectlove.GameService'),(56,6,'com.m_zxmlmnnew.image.ADactivity'),(57,6,'com.m_zxmlmnnew.GameService'),(58,5,'com.perfectlove.GameBootReceiver'),(59,6,'com.m_zxmlmnnew.GameBootReceiver'),(60,3,'ae'),(61,4,'y'),(62,3,'ad'),(63,4,'ac'),(64,3,'q'),(65,4,'ae'),(66,6,'q'),(67,6,'bm'),(68,5,'db'),(69,6,'ds'),(70,6,'ci'),(71,5,'an'),(72,5,'cn'),(73,6,'cd'),(74,5,'do'),(75,6,'bp'),(76,5,'dx'),(77,5,'dp'),(78,6,'bs'),(79,5,'dv'),(80,6,'cn'),(81,5,'cg'),(82,5,'da'),(83,5,'cl'),(84,6,'ch'),(85,6,'cw'),(86,6,'ae'),(87,5,'ac');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,11,'pdus'),(2,6,'pdus'),(3,18,'service_channel'),(4,14,'title'),(5,14,'from_alert'),(6,17,'btn_txt'),(7,14,'from_table'),(8,16,'from'),(9,17,'package_name'),(10,17,'version_code'),(11,17,'url'),(12,14,'game'),(13,23,'from_table'),(14,25,'from'),(15,14,'filepath'),(16,17,'fromtable'),(17,27,'package_name'),(18,27,'fromtable'),(19,23,'title'),(20,23,'filepath'),(21,23,'game'),(22,27,'version_code'),(23,17,'title'),(24,27,'content'),(25,14,'fromtype'),(26,44,'from_alert'),(27,41,'url'),(28,41,'filepath'),(29,41,'icon'),(30,42,'soft_id'),(31,47,'apk_url'),(32,47,'content'),(33,54,'service_channel'),(34,41,'soft_id'),(35,41,'total'),(36,26,'service_channel'),(37,51,'service_channel'),(38,17,'content'),(39,28,'service_channel'),(40,16,'isDirectFromTable'),(41,14,'status'),(42,41,'completed'),(43,38,'nextclassid'),(44,25,'isDirectFromTable'),(45,49,'version_code'),(46,17,'apk_url'),(47,49,'content'),(48,39,'package_name'),(49,43,'from_table'),(50,12,'service_channel'),(51,27,'btn_txt'),(52,23,'from_alert'),(53,41,'status'),(54,42,'icon'),(55,42,'app_name'),(56,27,'apk_url'),(57,23,'fromtype'),(58,39,'status'),(59,42,'url'),(60,42,'status'),(61,27,'title'),(62,43,'title'),(63,41,'package_name'),(64,47,'url'),(65,41,'app_name'),(66,43,'from_alert'),(67,23,'status'),(68,29,'stylebox'),(69,20,'stylebox'),(70,27,'url'),(71,31,'nextclassid'),(72,40,'status'),(73,52,'service_channel'),(74,42,'total'),(75,38,'package_name'),(76,42,'completed'),(77,40,'package_name'),(78,56,'service_channel'),(79,47,'package_name'),(80,35,'package_name'),(81,26,'nextclassid'),(82,49,'title'),(83,49,'btn_txt'),(84,44,'game'),(85,42,'filepath'),(86,42,'package_name'),(87,32,'service_channel'),(88,31,'service_channel'),(89,35,'nextclassid'),(90,47,'version_code'),(91,39,'version_code'),(92,38,'status'),(93,44,'title'),(94,44,'from_table'),(95,47,'title'),(96,49,'url'),(97,40,'version_code'),(98,47,'btn_txt'),(99,43,'filepath'),(100,49,'apk_url'),(101,35,'status'),(102,43,'status'),(103,44,'fromtype'),(104,44,'status'),(105,44,'filepath'),(106,49,'package_name');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'s',1,NULL,NULL),(8,8,'s',1,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',1,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,24,'a',1,NULL,NULL),(24,25,'a',1,NULL,NULL),(25,26,'a',1,NULL,NULL),(26,27,'a',0,NULL,NULL),(27,28,'a',0,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,30,'s',1,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,34,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,35,'r',1,NULL,NULL),(35,36,'a',1,NULL,NULL),(36,37,'a',0,NULL,NULL),(37,38,'a',0,NULL,NULL),(38,40,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,41,'a',1,NULL,NULL),(41,42,'a',1,NULL,NULL),(42,43,'a',1,NULL,NULL),(43,44,'a',1,NULL,NULL),(44,45,'a',1,NULL,NULL),(45,46,'a',1,NULL,NULL),(46,47,'a',1,NULL,NULL),(47,48,'a',0,NULL,NULL),(48,49,'a',1,NULL,NULL),(49,50,'a',0,NULL,NULL),(50,51,'a',1,NULL,NULL),(51,52,'a',1,NULL,NULL),(52,53,'a',1,NULL,NULL),(53,54,'a',0,NULL,NULL),(54,55,'s',1,NULL,NULL),(55,56,'a',0,NULL,NULL),(56,57,'s',1,NULL,NULL),(57,58,'r',1,NULL,NULL),(58,59,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,4),(4,4,1),(5,5,1),(6,6,2),(7,7,2),(8,8,4),(9,9,15),(10,10,13),(11,10,14),(12,11,12),(13,12,19),(14,13,13),(15,13,14),(16,14,14),(17,15,14),(18,16,12),(19,17,17),(20,17,16),(21,17,15),(22,17,13),(23,18,14),(24,19,23),(25,20,14),(26,21,13),(27,21,17),(28,22,20),(29,23,13),(30,23,14),(31,24,34),(32,25,27),(33,26,13),(34,26,14),(35,27,23),(36,28,14),(37,28,13),(38,29,23),(39,30,19),(40,31,23),(41,32,17),(42,32,13),(43,34,30),(44,33,16),(45,33,17),(46,33,15),(47,33,13),(48,35,13),(49,35,17),(50,36,43),(51,37,42),(52,38,23),(53,39,14),(54,39,13),(55,40,39),(56,41,24),(57,42,46),(58,42,49),(59,43,43),(60,44,46),(61,45,27),(62,45,24),(63,45,25),(64,46,23),(65,47,17),(66,47,13),(67,48,35),(68,49,32),(69,50,23),(70,51,57),(71,52,31),(72,53,19),(73,54,55),(74,55,41),(75,56,15),(76,57,30),(77,59,20),(78,58,36),(79,60,14),(80,61,23),(81,62,47),(82,63,14),(83,64,44),(84,65,27),(85,66,43),(86,67,23),(87,68,44),(88,69,52),(89,70,34),(90,71,41),(91,72,32),(92,73,27),(93,74,43),(94,75,34),(95,76,31),(96,77,46),(97,78,26),(98,79,23),(99,80,51),(100,81,27),(101,82,38),(102,83,23),(103,84,58),(104,85,30),(105,86,24),(106,86,25),(107,86,27),(108,87,42),(109,88,23),(110,89,32),(111,90,26),(112,91,36),(113,92,35),(114,93,26),(115,94,38),(116,95,24),(117,96,58),(118,97,28),(119,98,20),(120,99,30),(121,100,44),(122,101,28),(123,102,35),(124,103,36),(125,104,26),(126,105,49),(127,106,45),(128,106,47),(129,107,35),(130,108,38),(131,109,53),(132,110,31),(133,111,47),(134,112,49),(135,112,46),(136,113,47),(137,114,55),(138,115,47),(139,115,45),(140,116,44),(141,117,35),(142,118,57),(143,119,43),(144,120,52),(145,121,58),(146,122,31),(147,123,51),(148,124,38),(149,125,57),(150,126,49),(151,127,26),(152,128,30),(153,129,44),(154,130,45),(155,131,40),(156,132,42),(157,133,53),(158,134,30),(159,135,31),(160,136,41),(161,137,52),(162,138,53),(163,139,26),(164,140,36),(165,141,31),(166,142,26),(167,143,28),(168,144,31),(169,145,36),(170,146,51),(171,147,49),(172,148,39),(173,149,38),(174,150,47),(175,151,45),(176,152,49),(177,153,40),(178,154,43),(179,155,36),(180,156,35),(181,157,38),(182,158,55);
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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.space.sexypic.SexyPic: void onCreate(android.os.Bundle)>',6,'s',NULL),(2,1,'<com.space.sexypic.SexyPic: void onCreate(android.os.Bundle)>',22,'a',NULL),(3,4,'<t4t.power.management.activity.SettingsActivity: void onBackPressed()>',3,'a',NULL),(4,1,'<com.space.sexypic.SexyPic: void onResume()>',8,'a',NULL),(5,23,'<com.space.sexypic.SexyPic$2: void onClick(android.view.View)>',6,'a',NULL),(6,2,'<t4t.power.management.activity.HomeActivity: void goToSettingsPage(android.view.View)>',4,'a',NULL),(7,2,'<t4t.power.management.activity.HomeActivity: void goToSettingsPage(android.view.View)>',4,'a',NULL),(8,4,'<t4t.power.management.activity.SettingsActivity: void onBackPressed()>',3,'a',NULL),(9,15,'<Kos.WLgGtmo.bNHEgNI9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(10,60,'<ae: void onClick(android.view.View)>',221,'a',NULL),(11,12,'<Kos.WLgGtmo.bNHEgNI20: void onCreate(android.os.Bundle)>',99,'s',NULL),(12,19,'<Kos.WLgGtmo.bNHEgNI12: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(13,60,'<ae: void onClick(android.view.View)>',242,'a',NULL),(14,14,'<Kos.WLgGtmo.bNHEgNI8: void onCreate(android.os.Bundle)>',172,'a',NULL),(15,14,'<Kos.WLgGtmo.bNHEgNI8: void onCreate(android.os.Bundle)>',177,'a',NULL),(16,12,'<Kos.WLgGtmo.bNHEgNI20: void onCreate(android.os.Bundle)>',103,'s',NULL),(17,16,'<Kos.WLgGtmo.bNHEgNI2: void a(int,boolean)>',63,'a',NULL),(18,14,'<Kos.WLgGtmo.bNHEgNI8: void onCreate(android.os.Bundle)>',33,'s',NULL),(19,61,'<y: void onClick(android.view.View)>',218,'a',NULL),(20,14,'<Kos.WLgGtmo.bNHEgNI8: void onCreate(android.os.Bundle)>',90,'s',NULL),(21,17,'<Kos.WLgGtmo.bNHEgNI10: void onClick(android.view.View)>',84,'a',NULL),(22,20,'<org.android_ioafd.image.PhotoGrid: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(23,62,'<ad: void onClick(android.view.View)>',239,'a',NULL),(24,35,'<org.android_ioafd.IxpveM1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(25,28,'<org.android_ioafd.IxpveM12: void onClick(android.view.View)>',53,'a',NULL),(26,62,'<ad: void onClick(android.view.View)>',218,'a',NULL),(27,63,'<ac: void onClick(android.view.View)>',218,'a',NULL),(28,64,'<q: void onClick(android.view.View)>',218,'a',NULL),(29,65,'<ae: void onClick(android.view.View)>',221,'a',NULL),(30,19,'<Kos.WLgGtmo.bNHEgNI12: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(31,61,'<y: void onClick(android.view.View)>',239,'a',NULL),(32,17,'<Kos.WLgGtmo.bNHEgNI10: void onClick(android.view.View)>',75,'a',NULL),(33,16,'<Kos.WLgGtmo.bNHEgNI2: void a(int,boolean)>',10,'s',NULL),(34,31,'<com.perfectlove.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(35,17,'<Kos.WLgGtmo.bNHEgNI10: void onClick(android.view.View)>',53,'a',NULL),(36,44,'<com.perfectlove.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(37,66,'<q: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(38,24,'<org.android_ioafd.IxpveM8: void onCreate(android.os.Bundle)>',81,'a',NULL),(39,64,'<q: void onClick(android.view.View)>',239,'a',NULL),(40,39,'<com.perfectlove.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(41,25,'<org.android_ioafd.IxpveM5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(42,67,'<bm: void a(int,boolean)>',57,'a',NULL),(43,44,'<com.perfectlove.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(44,47,'<com.m_zxmlmnnew.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(45,26,'<org.android_ioafd.IxpveM13: void a(int,boolean)>',10,'s',NULL),(46,24,'<org.android_ioafd.IxpveM8: void onCreate(android.os.Bundle)>',76,'a',NULL),(47,17,'<Kos.WLgGtmo.bNHEgNI10: void onClick(android.view.View)>',66,'a',NULL),(48,68,'<db: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(49,69,'<ds: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(50,63,'<ac: void onClick(android.view.View)>',239,'a',NULL),(51,58,'<com.perfectlove.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(52,32,'<com.m_zxmlmnnew.Myhall: void onCreate(android.os.Bundle)>',103,'s',NULL),(53,19,'<Kos.WLgGtmo.bNHEgNI12: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(54,56,'<com.m_zxmlmnnew.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',38,'a',NULL),(55,42,'<com.perfectlove.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(56,15,'<Kos.WLgGtmo.bNHEgNI9: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(57,31,'<com.perfectlove.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(58,70,'<ci: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(59,20,'<org.android_ioafd.image.PhotoGrid: void onCreate(android.os.Bundle)>',126,'s',NULL),(60,14,'<Kos.WLgGtmo.bNHEgNI8: void onCreate(android.os.Bundle)>',76,'a',NULL),(61,24,'<org.android_ioafd.IxpveM8: void onCreate(android.os.Bundle)>',90,'s',NULL),(62,48,'<com.perfectlove.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(63,14,'<Kos.WLgGtmo.bNHEgNI8: void onCreate(android.os.Bundle)>',81,'a',NULL),(64,45,'<com.m_zxmlmnnew.GameInfo: void onCreate(android.os.Bundle)>',25,'s',NULL),(65,28,'<org.android_ioafd.IxpveM12: void onClick(android.view.View)>',75,'a',NULL),(66,71,'<an: void onClick(android.view.View)>',205,'a',NULL),(67,24,'<org.android_ioafd.IxpveM8: void onCreate(android.os.Bundle)>',177,'a',NULL),(68,45,'<com.m_zxmlmnnew.GameInfo: void onCreate(android.os.Bundle)>',108,'a',NULL),(69,53,'<com.m_zxmlmnnew.image.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(70,35,'<org.android_ioafd.IxpveM1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(71,72,'<cn: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(72,34,'<com.m_zxmlmnnew.Web: void onCreate(android.os.Bundle)>',21,'s',NULL),(73,28,'<org.android_ioafd.IxpveM12: void onClick(android.view.View)>',66,'a',NULL),(74,44,'<com.perfectlove.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(75,35,'<org.android_ioafd.IxpveM1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(76,73,'<cd: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(77,47,'<com.m_zxmlmnnew.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(78,74,'<do: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(79,24,'<org.android_ioafd.IxpveM8: void onCreate(android.os.Bundle)>',33,'s',NULL),(80,52,'<com.perfectlove.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(81,28,'<org.android_ioafd.IxpveM12: void onClick(android.view.View)>',84,'a',NULL),(82,75,'<bp: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(83,24,'<org.android_ioafd.IxpveM8: void onCreate(android.os.Bundle)>',172,'a',NULL),(84,59,'<com.m_zxmlmnnew.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(85,76,'<dx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(86,26,'<org.android_ioafd.IxpveM13: void a(int,boolean)>',63,'a',NULL),(87,43,'<com.m_zxmlmnnew.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(88,65,'<ae: void onClick(android.view.View)>',242,'a',NULL),(89,34,'<com.m_zxmlmnnew.Web: void onCreate(android.os.Bundle)>',25,'s',NULL),(90,77,'<dp: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(91,37,'<com.m_zxmlmnnew.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(92,68,'<db: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(93,74,'<do: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(94,78,'<bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(95,25,'<org.android_ioafd.IxpveM5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(96,59,'<com.m_zxmlmnnew.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(97,79,'<dv: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(98,20,'<org.android_ioafd.image.PhotoGrid: void onCreate(android.os.Bundle)>',122,'s',NULL),(99,31,'<com.perfectlove.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(100,80,'<cn: void onClick(android.view.View)>',218,'a',NULL),(101,29,'<com.perfectlove.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(102,36,'<com.perfectlove.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(103,37,'<com.m_zxmlmnnew.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',43,'a',NULL),(104,74,'<do: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(105,50,'<com.m_zxmlmnnew.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(106,81,'<cg: void a(int,boolean)>',10,'s',NULL),(107,82,'<da: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(108,40,'<com.m_zxmlmnnew.SortActivity2: void onCreate(android.os.Bundle)>',13,'s',NULL),(109,83,'<cl: void onClick(android.view.View)>',6,'a',NULL),(110,84,'<ch: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(111,48,'<com.perfectlove.GameAlertDialog: void onClick(android.view.View)>',59,'a',NULL),(112,67,'<bm: void a(int,boolean)>',10,'s',NULL),(113,48,'<com.perfectlove.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(114,85,'<cw: void onClick(android.view.View)>',6,'a',NULL),(115,81,'<cg: void a(int,boolean)>',57,'a',NULL),(116,80,'<cn: void onClick(android.view.View)>',239,'a',NULL),(117,68,'<db: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(118,58,'<com.perfectlove.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(119,71,'<an: void onClick(android.view.View)>',224,'a',NULL),(120,86,'<ae: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(121,59,'<com.m_zxmlmnnew.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(122,73,'<cd: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(123,87,'<ac: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(124,78,'<bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(125,58,'<com.perfectlove.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(126,50,'<com.m_zxmlmnnew.GameAlertDialog: void onClick(android.view.View)>',77,'a',NULL),(127,27,'<com.perfectlove.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(128,76,'<dx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(129,45,'<com.m_zxmlmnnew.GameInfo: void onCreate(android.os.Bundle)>',113,'a',NULL),(130,46,'<com.perfectlove.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(131,41,'<com.m_zxmlmnnew.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(132,66,'<q: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(133,54,'<com.perfectlove.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(134,76,'<dx: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(135,73,'<cd: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(136,72,'<cn: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(137,53,'<com.m_zxmlmnnew.image.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(138,54,'<com.perfectlove.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(139,27,'<com.perfectlove.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(140,37,'<com.m_zxmlmnnew.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',52,'a',NULL),(141,32,'<com.m_zxmlmnnew.Myhall: void onCreate(android.os.Bundle)>',98,'s',NULL),(142,74,'<do: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(143,29,'<com.perfectlove.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(144,73,'<cd: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(145,70,'<ci: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(146,52,'<com.perfectlove.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(147,50,'<com.m_zxmlmnnew.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(148,39,'<com.perfectlove.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(149,40,'<com.m_zxmlmnnew.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',28,'a',NULL),(150,48,'<com.perfectlove.GameAlertDialog: void onClick(android.view.View)>',46,'a',NULL),(151,46,'<com.perfectlove.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(152,50,'<com.m_zxmlmnnew.GameAlertDialog: void onClick(android.view.View)>',68,'a',NULL),(153,41,'<com.m_zxmlmnnew.SearchActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(154,44,'<com.perfectlove.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(155,70,'<ci: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',31,'a',NULL),(156,36,'<com.perfectlove.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(157,78,'<bs: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',44,'a',NULL),(158,56,'<com.m_zxmlmnnew.image.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,2),(2,9,1),(3,10,1),(4,11,2),(5,12,2),(6,13,14),(7,14,15),(8,15,16),(9,16,1),(10,17,1),(11,18,1),(12,19,1),(13,25,2),(14,27,2),(15,30,1),(16,32,1),(17,34,1),(18,35,1),(19,36,2),(20,37,2),(21,38,2),(22,39,2),(23,40,2),(24,41,2),(25,42,2),(26,43,2),(27,44,16),(28,45,1),(29,46,12),(30,47,1),(31,50,1),(32,51,1),(33,54,1),(34,56,1),(35,57,1),(36,60,1),(37,63,1),(38,64,1),(39,65,1),(40,67,1),(41,69,2),(42,71,2),(43,72,1),(44,73,2),(45,74,1),(46,75,18),(47,77,1),(48,79,1),(49,80,2),(50,83,2),(51,88,12),(52,91,12),(53,92,2),(54,95,2),(55,97,19),(56,98,1),(57,99,20),(58,100,2),(59,101,1),(60,102,21),(61,103,2),(62,105,19),(63,110,22),(64,113,23),(65,119,1),(66,121,2),(67,122,1),(68,124,1),(69,126,1),(70,129,1),(71,130,1),(72,131,2),(73,132,24),(74,133,25),(75,135,23),(76,136,2),(77,138,2),(78,142,2),(79,144,2),(80,148,2),(81,149,2),(82,151,2),(83,155,1),(84,156,2),(85,157,1),(86,158,1),(87,160,1),(88,161,1),(89,162,1),(90,163,2),(91,164,1),(92,165,1),(93,166,24),(94,168,2),(95,169,2),(96,170,18),(97,173,2),(98,175,1),(99,177,1),(100,178,26),(101,179,2),(102,182,26),(103,183,27),(104,185,23),(105,186,28),(106,187,2),(107,188,29),(108,189,29),(109,190,30),(110,192,21),(111,194,31),(112,195,2),(113,202,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,9,1),(2,10,4),(3,16,1),(4,17,4),(5,18,1),(6,19,4),(7,30,1),(8,32,4),(9,34,1),(10,35,4),(11,45,1),(12,47,4),(13,50,1),(14,51,4),(15,54,1),(16,56,4),(17,57,1),(18,60,4),(19,63,1),(20,64,1),(21,65,4),(22,67,4),(23,72,1),(24,74,4),(25,77,1),(26,79,4),(27,98,1),(28,101,4),(29,119,1),(30,122,4),(31,124,1),(32,126,4),(33,129,1),(34,130,4),(35,155,1),(36,157,4),(37,158,1),(38,160,4),(39,161,1),(40,162,4),(41,164,1),(42,165,4),(43,175,1),(44,177,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/space/sexypic/Pusher'),(2,2,'com/space/sexypic/PicViewer'),(3,3,'t4t/power/management/activity/HomeActivity'),(4,5,'com/space/sexypic/PicViewer'),(5,6,'t4t/power/management/activity/SettingsActivity'),(6,7,'t4t/power/management/activity/SettingsActivity'),(7,8,'t4t/power/management/activity/HomeActivity'),(8,13,'Kos/WLgGtmo/bNHEgNI11'),(9,14,'Kos/WLgGtmo/bNHEgNI11'),(10,15,'Kos/WLgGtmo/bNHEgNI11'),(11,20,'Kos/WLgGtmo/bNHEgNI20'),(12,21,'Kos/WLgGtmo/bNHEgNI20'),(13,22,'Kos/WLgGtmo/bNHEgNI11'),(14,23,'Kos/WLgGtmo/bNHEgNI20'),(15,24,'Kos/WLgGtmo/bNHEgNI11'),(16,26,'Kos/WLgGtmo/bNHEgNI11'),(17,28,'Kos/WLgGtmo/bNHEgNI10'),(18,29,'org/android_ioafd/image/ShowImage'),(19,31,'org/android_ioafd/IxpveM2'),(20,33,'org/android_ioafd/IxpveM8'),(21,44,'Kos/WLgGtmo/bNHEgNI11'),(22,48,'Kos/WLgGtmo/bNHEgNI11'),(23,49,'com/perfectlove/Myhall'),(24,53,'com/perfectlove/Myhall'),(25,52,'Kos/WLgGtmo/bNHEgNI8'),(26,55,'org/android_ioafd/image/PhotoGrid'),(27,58,'com/perfectlove/GameService'),(28,59,'org/android_ioafd/IxpveM8'),(29,61,'com/m_zxmlmnnew/image/ImageTestActivity'),(30,62,'com/perfectlove/Myhall'),(31,66,'org/android_ioafd/IxpveM2'),(32,68,'org/android_ioafd/image/PhotoGrid'),(33,70,'com/perfectlove/Myhall'),(34,75,'com/perfectlove/GameService'),(35,76,'com/m_zxmlmnnew/GameService'),(36,78,'Kos/WLgGtmo/bNHEgNI11'),(37,81,'com/perfectlove/GameService'),(38,82,'Kos/WLgGtmo/bNHEgNI8'),(39,84,'org/android_ioafd/IxpveM2'),(40,85,'com/m_zxmlmnnew/Myhall'),(41,86,'Kos/WLgGtmo/bNHEgNI20'),(42,87,'org/android_ioafd/IxpveM2'),(43,89,'Kos/WLgGtmo/bNHEgNI20'),(44,90,'com/m_zxmlmnnew/GameService'),(45,93,'org/android_ioafd/image/PhotoGrid'),(46,94,'com/m_zxmlmnnew/Myhall'),(47,96,'com/m_zxmlmnnew/GameService'),(48,97,'org/android_ioafd/IxpveM2'),(49,99,'com/m_zxmlmnnew/GameService'),(50,102,'com/m_zxmlmnnew/GameService'),(51,104,'com/perfectlove/Myhall'),(52,105,'org/android_ioafd/IxpveM2'),(53,106,'com/m_zxmlmnnew/Myhall'),(54,109,'org/android_ioafd/IxpveM2'),(55,108,'com/perfectlove/Myhall'),(56,107,'com/m_zxmlmnnew/GameInfo'),(57,110,'com/perfectlove/GameService'),(58,111,'org/android_ioafd/IxpveM12'),(59,112,'com/m_zxmlmnnew/Myhall'),(60,113,'com/perfectlove/GameService'),(61,114,'org/android_ioafd/image/PhotoGrid'),(62,115,'com/m_zxmlmnnew/GameService'),(63,116,'com/perfectlove/Myhall'),(64,117,'org/android_ioafd/image/PhotoGrid'),(65,118,'com/m_zxmlmnnew/GameService'),(66,120,'com/m_zxmlmnnew/GameService'),(67,123,'com/m_zxmlmnnew/GameInfo'),(68,125,'com/perfectlove/GameInfo'),(69,127,'com/perfectlove/Myhall'),(70,128,'com/m_zxmlmnnew/GameInfo'),(71,132,'com/m_zxmlmnnew/GameService'),(72,133,'org/android_ioafd/IxpveM2'),(73,134,'com/perfectlove/GameInfo'),(74,135,'org/android_ioafd/IxpveM2'),(75,137,'com/perfectlove/GameService'),(76,139,'com/perfectlove/GameService'),(77,140,'com/m_zxmlmnnew/Myhall'),(78,141,'com/perfectlove/Myhall'),(79,143,'com/perfectlove/GameService'),(80,145,'com/perfectlove/Myhall'),(81,146,'com/m_zxmlmnnew/GameService'),(82,147,'com/perfectlove/qimg/ImageTestActivity'),(83,150,'com/m_zxmlmnnew/GameService'),(84,153,'com/m_zxmlmnnew/image/ImageTestActivity'),(85,152,'com/perfectlove/GameAlertDialog'),(86,154,'com/perfectlove/qimg/ImageTestActivity'),(87,159,'com/perfectlove/GameService'),(88,166,'com/m_zxmlmnnew/GameService'),(89,167,'com/m_zxmlmnnew/Myhall'),(90,170,'com/perfectlove/GameService'),(91,172,'com/perfectlove/GameService'),(92,171,'com/m_zxmlmnnew/GameAlertDialog'),(93,174,'com/m_zxmlmnnew/Myhall'),(94,176,'com/m_zxmlmnnew/GameInfo'),(95,180,'com/perfectlove/GameInfo'),(96,181,'com/m_zxmlmnnew/Myhall'),(97,183,'com/m_zxmlmnnew/GameService'),(98,184,'com/perfectlove/GameInfo'),(99,185,'com/m_zxmlmnnew/GameService'),(100,186,'com/perfectlove/GameService'),(101,188,'com/perfectlove/GameService'),(102,189,'com/m_zxmlmnnew/GameService'),(103,190,'com/m_zxmlmnnew/GameService'),(104,191,'com/perfectlove/Myhall'),(105,192,'com/perfectlove/GameService'),(106,193,'com/m_zxmlmnnew/Myhall'),(107,194,'com/perfectlove/GameService'),(108,196,'com/perfectlove/GameService'),(109,197,'com/m_zxmlmnnew/GameInfo'),(110,198,'com/perfectlove/GameInfo'),(111,199,'com/m_zxmlmnnew/GameInfo'),(112,200,'com/perfectlove/GameInfo'),(113,201,'com/perfectlove/GameInfo'),(114,203,'com/m_zxmlmnnew/GameService'),(115,204,'com/perfectlove/GameService'),(116,206,'com/perfectlove/GameInfo'),(117,205,'com/m_zxmlmnnew/GameInfo'),(118,207,'com/m_zxmlmnnew/Myhall'),(119,208,'com/m_zxmlmnnew/GameInfo');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,4,1),(2,11,2),(3,12,3),(4,25,4),(5,27,5),(6,36,6),(7,37,7),(8,38,8),(9,39,9),(10,40,10),(11,41,11),(12,42,12),(13,43,13),(14,69,14),(15,71,15),(16,73,16),(17,80,17),(18,83,18),(19,92,19),(20,95,20),(21,100,21),(22,103,22),(23,121,23),(24,131,24),(25,136,25),(26,138,26),(27,142,27),(28,144,28),(29,148,29),(30,149,30),(31,151,31),(32,156,32),(33,163,33),(34,168,34),(35,169,35),(36,173,36),(37,178,37),(38,179,38),(39,182,39),(40,187,40),(41,195,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,28,'title'),(2,28,'btn_txt'),(3,28,'need_adb_flag'),(4,28,'cont'),(5,28,'close_flag'),(6,29,'startid'),(7,29,'position'),(8,33,'id'),(9,33,'from_alert'),(10,33,'detail_flag'),(11,49,'nextclassid'),(12,49,'clicked'),(13,52,'id'),(14,52,'from_alert'),(15,52,'detail_flag'),(16,59,'game'),(17,59,'fromtype'),(18,70,'title'),(19,70,'nextclassid'),(20,70,'clicked'),(21,82,'game'),(22,82,'fromtype'),(23,85,'title'),(24,85,'nextclassid'),(25,85,'clicked'),(26,106,'clicked'),(27,107,'game'),(28,108,'clicked'),(29,107,'fromtype'),(30,111,'title'),(31,111,'btn_txt'),(32,111,'need_adb_flag'),(33,112,'title'),(34,111,'cont'),(35,112,'nextclassid'),(36,111,'close_flag'),(37,112,'clicked'),(38,116,'title'),(39,116,'nextclassid'),(40,116,'clicked'),(41,123,'game'),(42,123,'fromtype'),(43,125,'title'),(44,127,'clicked'),(45,128,'title'),(46,128,'game'),(47,128,'fromtype'),(48,140,'nextclassid'),(49,140,'clicked'),(50,141,'clicked'),(51,145,'title'),(52,145,'nextclassid'),(53,145,'clicked'),(54,152,'title'),(55,152,'btn_txt'),(56,152,'need_adb_flag'),(57,152,'cont'),(58,152,'close_flag'),(59,167,'clicked'),(60,171,'title'),(61,171,'btn_txt'),(62,171,'need_adb_flag'),(63,171,'cont'),(64,171,'close_flag'),(65,176,'game'),(66,176,'fromtype'),(67,180,'title'),(68,181,'clicked'),(69,191,'clicked'),(70,193,'clicked'),(71,197,'id'),(72,197,'from_alert'),(73,197,'detail_flag'),(74,199,'title'),(75,199,'game'),(76,199,'fromtype'),(77,200,'id'),(78,200,'from_alert'),(79,200,'detail_flag'),(80,205,'title'),(81,206,'title'),(82,205,'game'),(83,205,'fromtype'),(84,207,'title'),(85,207,'nextclassid'),(86,207,'clicked'),(87,208,'game'),(88,208,'fromtype');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,4),(6,6,5),(7,7,7),(8,7,6),(9,8,8),(10,9,3),(11,10,1),(12,11,1),(13,12,1),(14,13,1),(15,14,1),(16,15,2),(17,16,1),(18,17,4),(19,18,5),(20,19,8),(21,20,7),(22,20,6),(23,21,8),(24,22,3),(25,23,1),(26,24,11),(27,24,9),(28,24,10),(29,25,1),(30,26,1),(31,27,1),(32,28,1),(33,29,8),(34,30,1),(35,31,1),(36,32,1),(37,33,1),(38,34,1),(39,35,1),(40,36,1),(41,37,1),(42,38,1),(43,39,1),(44,40,12),(45,41,12),(46,42,1),(47,43,1),(48,44,1),(49,45,1),(50,46,8),(51,47,8),(52,48,9),(53,48,10),(54,48,11),(55,49,13),(56,50,17),(57,51,13),(58,52,17),(59,53,17),(60,54,13),(61,55,13),(62,56,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,10,3),(5,10,1),(6,14,1),(7,15,2),(8,16,1),(9,23,3),(10,23,1),(11,28,1),(12,42,1),(13,43,1),(14,44,1),(15,45,1),(16,49,5),(17,50,5),(18,51,5),(19,52,5),(20,53,5),(21,54,5),(22,55,5),(23,56,5);
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
INSERT INTO `IFData` VALUES (1,49,'package',NULL,NULL,NULL,NULL,NULL),(2,50,'package',NULL,NULL,NULL,NULL,NULL),(3,51,'package',NULL,NULL,NULL,NULL,NULL),(4,52,'package',NULL,NULL,NULL,NULL,NULL),(5,53,'package',NULL,NULL,NULL,NULL,NULL),(6,54,'package',NULL,NULL,NULL,NULL,NULL),(7,55,'package',NULL,NULL,NULL,NULL,NULL),(8,56,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,11,'application','vnd.android.package-archive'),(2,12,'application','vnd.android.package-archive'),(3,25,'application','vnd.android.package-archive'),(4,27,'application','vnd.android.package-archive'),(5,36,'application','vnd.android.package-archive'),(6,37,'application','vnd.android.package-archive'),(7,38,'application','vnd.android.package-archive'),(8,39,'application','vnd.android.package-archive'),(9,40,'application','vnd.android.package-archive'),(10,41,'application','vnd.android.package-archive'),(11,42,'application','vnd.android.package-archive'),(12,43,'application','vnd.android.package-archive'),(13,71,'application','vnd.android.package-archive'),(14,92,'application','vnd.android.package-archive'),(15,95,'application','vnd.android.package-archive'),(16,121,'application','vnd.android.package-archive'),(17,131,'application','vnd.android.package-archive'),(18,136,'application','vnd.android.package-archive'),(19,138,'application','vnd.android.package-archive'),(20,148,'application','vnd.android.package-archive'),(21,163,'application','vnd.android.package-archive'),(22,168,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.space.sexypic'),(2,2,'com.space.sexypic'),(3,3,'t4t.power.management'),(4,5,'com.space.sexypic'),(5,6,'t4t.power.management'),(6,7,'t4t.power.management'),(7,8,'t4t.power.management'),(8,9,'(.*)'),(9,10,'(.*)'),(10,13,'Kos.WLgGtmo'),(11,14,'Kos.WLgGtmo'),(12,15,'Kos.WLgGtmo'),(13,16,'(.*)'),(14,17,''),(15,18,''),(16,19,'(.*)'),(17,20,'Kos.WLgGtmo'),(18,21,'Kos.WLgGtmo'),(19,22,'Kos.WLgGtmo'),(20,23,'Kos.WLgGtmo'),(21,24,'Kos.WLgGtmo'),(22,26,'Kos.WLgGtmo'),(23,28,'Kos.WLgGtmo'),(24,29,'org.android_ioafd'),(25,30,'(.*)'),(26,31,'org.android_ioafd'),(27,32,''),(28,34,''),(29,33,'org.android_ioafd'),(30,35,'(.*)'),(31,44,'Kos.WLgGtmo'),(32,45,'(.*)'),(33,47,''),(34,48,'Kos.WLgGtmo'),(35,50,''),(36,49,'com.perfectlove'),(37,51,'(.*)'),(38,53,'com.perfectlove'),(39,52,'Kos.WLgGtmo'),(40,54,'NULL-CONSTANT'),(41,55,'org.android_ioafd'),(42,56,'NULL-CONSTANT'),(43,57,'(.*)'),(44,58,'com.perfectlove'),(45,59,'org.android_ioafd'),(46,60,''),(47,61,'com.m_zxmlmnnew'),(48,62,'com.perfectlove'),(49,63,''),(50,64,'(.*)'),(51,65,'(.*)'),(52,66,'org.android_ioafd'),(53,67,'(.*)'),(54,68,'org.android_ioafd'),(55,70,'com.perfectlove'),(56,72,'(.*)'),(57,74,''),(58,75,'com.perfectlove'),(59,76,'com.m_zxmlmnnew'),(60,77,''),(61,78,'Kos.WLgGtmo'),(62,79,'(.*)'),(63,81,'com.perfectlove'),(64,82,'Kos.WLgGtmo'),(65,84,'org.android_ioafd'),(66,85,'com.m_zxmlmnnew'),(67,86,'Kos.WLgGtmo'),(68,87,'org.android_ioafd'),(69,89,'Kos.WLgGtmo'),(70,90,'com.m_zxmlmnnew'),(71,93,'org.android_ioafd'),(72,94,'com.m_zxmlmnnew'),(73,96,'com.m_zxmlmnnew'),(74,97,'org.android_ioafd'),(75,98,'NULL-CONSTANT'),(76,99,'com.m_zxmlmnnew'),(77,101,'NULL-CONSTANT'),(78,102,'com.m_zxmlmnnew'),(79,104,'com.perfectlove'),(80,105,'org.android_ioafd'),(81,106,'com.m_zxmlmnnew'),(82,109,'org.android_ioafd'),(83,108,'com.perfectlove'),(84,107,'com.m_zxmlmnnew'),(85,110,'com.perfectlove'),(86,111,'org.android_ioafd'),(87,112,'com.m_zxmlmnnew'),(88,113,'com.perfectlove'),(89,114,'org.android_ioafd'),(90,115,'com.m_zxmlmnnew'),(91,116,'com.perfectlove'),(92,117,'org.android_ioafd'),(93,118,'com.m_zxmlmnnew'),(94,119,'(.*)'),(95,120,'com.m_zxmlmnnew'),(96,122,''),(97,124,''),(98,123,'com.m_zxmlmnnew'),(99,125,'com.perfectlove'),(100,126,'(.*)'),(101,127,'com.perfectlove'),(102,129,'(.*)'),(103,128,'com.m_zxmlmnnew'),(104,130,'(.*)'),(105,132,'com.m_zxmlmnnew'),(106,133,'org.android_ioafd'),(107,134,'com.perfectlove'),(108,135,'org.android_ioafd'),(109,137,'com.perfectlove'),(110,139,'com.perfectlove'),(111,140,'com.m_zxmlmnnew'),(112,141,'com.perfectlove'),(113,143,'com.perfectlove'),(114,145,'com.perfectlove'),(115,146,'com.m_zxmlmnnew'),(116,147,'com.perfectlove'),(117,150,'com.m_zxmlmnnew'),(118,153,'com.m_zxmlmnnew'),(119,152,'com.perfectlove'),(120,154,'com.perfectlove'),(121,155,'(.*)'),(122,157,''),(123,158,''),(124,159,'com.perfectlove'),(125,160,'(.*)'),(126,161,'(.*)'),(127,162,''),(128,164,''),(129,165,'(.*)'),(130,166,'com.m_zxmlmnnew'),(131,167,'com.m_zxmlmnnew'),(132,170,'com.perfectlove'),(133,172,'com.perfectlove'),(134,171,'com.m_zxmlmnnew'),(135,174,'com.m_zxmlmnnew'),(136,175,'(.*)'),(137,176,'com.m_zxmlmnnew'),(138,177,'(.*)'),(139,180,'com.perfectlove'),(140,181,'com.m_zxmlmnnew'),(141,183,'com.m_zxmlmnnew'),(142,184,'com.perfectlove'),(143,185,'com.m_zxmlmnnew'),(144,186,'com.perfectlove'),(145,188,'com.perfectlove'),(146,189,'com.m_zxmlmnnew'),(147,190,'com.m_zxmlmnnew'),(148,191,'com.perfectlove'),(149,192,'com.perfectlove'),(150,193,'com.m_zxmlmnnew'),(151,194,'com.perfectlove'),(152,196,'com.perfectlove'),(153,197,'com.m_zxmlmnnew'),(154,198,'com.perfectlove'),(155,199,'com.m_zxmlmnnew'),(156,200,'com.perfectlove'),(157,201,'com.perfectlove'),(158,203,'com.m_zxmlmnnew'),(159,204,'com.perfectlove'),(160,206,'com.perfectlove'),(161,205,'com.m_zxmlmnnew'),(162,207,'com.m_zxmlmnnew'),(163,208,'com.m_zxmlmnnew');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,4,0),(4,6,0),(5,7,0),(6,8,0),(7,9,0),(8,10,0),(9,11,0),(10,12,0),(11,14,0),(12,15,0),(13,16,0),(14,2,0),(15,4,0),(16,18,0),(17,7,0),(18,8,0),(19,19,0),(20,9,0),(21,10,0),(22,11,0),(23,20,0),(24,21,0),(25,23,0),(26,24,0),(27,25,0),(28,29,0),(29,34,0),(30,35,0),(31,38,0),(32,39,0),(33,40,0),(34,41,0),(35,42,0),(36,43,0),(37,44,0),(38,45,0),(39,46,0),(40,48,0),(41,50,0),(42,51,0),(43,52,0),(44,54,0),(45,56,0),(46,57,0),(47,58,0),(48,21,0),(49,19,0),(50,34,0),(51,34,0),(52,19,0),(53,57,0),(54,57,0),(55,58,0),(56,58,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,1,0),(10,9,1,0),(11,10,1,0),(12,10,1,0),(13,11,0,0),(14,11,0,0),(15,12,0,0),(16,13,1,0),(17,13,1,0),(18,13,1,0),(19,13,1,0),(20,14,0,0),(21,15,0,0),(22,16,0,0),(23,17,0,0),(24,18,0,0),(25,19,1,0),(26,20,0,0),(27,19,1,0),(28,21,0,0),(29,22,0,0),(30,23,1,0),(31,24,0,0),(32,23,1,0),(33,25,0,0),(34,23,1,0),(35,23,1,0),(36,26,1,0),(37,27,1,0),(38,26,1,0),(39,27,1,0),(40,28,1,0),(41,29,1,0),(42,28,1,0),(43,29,1,0),(44,30,0,0),(45,31,1,0),(46,32,1,0),(47,31,1,0),(48,33,0,0),(49,34,0,0),(50,31,1,0),(51,31,1,0),(52,35,0,0),(53,36,0,0),(54,37,1,0),(55,38,0,0),(56,37,1,0),(57,39,1,0),(58,40,0,0),(59,41,0,0),(60,39,1,0),(61,42,0,0),(62,43,0,0),(63,39,1,0),(64,44,1,0),(65,39,1,0),(66,45,0,0),(67,44,1,0),(68,46,0,0),(69,47,1,0),(70,48,0,0),(71,49,1,0),(72,50,1,0),(73,47,1,0),(74,50,1,0),(75,51,0,0),(76,52,0,0),(77,50,1,0),(78,53,0,0),(79,50,1,0),(80,54,1,0),(81,55,0,0),(82,56,0,0),(83,57,1,0),(84,59,0,0),(85,58,0,0),(86,60,0,0),(87,61,0,0),(88,62,1,0),(89,63,0,0),(90,64,0,0),(91,65,1,0),(92,66,1,0),(93,67,0,0),(94,68,0,0),(95,66,1,0),(96,69,0,0),(97,70,0,0),(98,71,1,0),(99,72,0,0),(100,73,1,0),(101,71,1,0),(102,72,0,0),(103,73,1,0),(104,74,0,0),(105,75,0,0),(106,76,0,0),(107,77,0,0),(108,78,0,0),(109,79,0,0),(110,80,0,0),(111,81,0,0),(112,82,0,0),(113,80,0,0),(114,83,0,0),(115,84,0,0),(116,85,0,0),(117,86,0,0),(118,87,0,0),(119,88,1,0),(120,89,0,0),(121,90,1,0),(122,88,1,0),(123,91,0,0),(124,88,1,0),(125,92,0,0),(126,88,1,0),(127,93,0,0),(128,94,0,0),(129,95,1,0),(130,95,1,0),(131,97,1,0),(132,96,0,0),(133,98,0,0),(134,99,0,0),(135,98,0,0),(136,100,1,0),(137,101,0,0),(138,100,1,0),(139,102,0,0),(140,103,0,0),(141,104,0,0),(142,105,1,0),(143,106,0,0),(144,105,1,0),(145,107,0,0),(146,108,0,0),(147,109,0,0),(148,110,1,0),(149,111,1,0),(150,112,0,0),(151,111,1,0),(152,113,0,0),(153,114,0,0),(154,115,0,0),(155,116,1,0),(156,117,1,0),(157,116,1,0),(158,116,1,0),(159,118,0,0),(160,116,1,0),(161,119,1,0),(162,119,1,0),(163,120,1,0),(164,119,1,0),(165,119,1,0),(166,121,0,0),(167,122,0,0),(168,123,1,0),(169,124,1,0),(170,125,0,0),(171,126,0,0),(172,127,0,0),(173,128,1,0),(174,129,0,0),(175,130,1,0),(176,131,0,0),(177,130,1,0),(178,132,1,0),(179,133,1,0),(180,134,0,0),(181,135,0,0),(182,136,1,0),(183,137,0,0),(184,138,0,0),(185,137,0,0),(186,139,0,0),(187,140,1,0),(188,139,0,0),(189,141,0,0),(190,141,0,0),(191,142,0,0),(192,143,0,0),(193,144,0,0),(194,143,0,0),(195,145,1,0),(196,146,0,0),(197,147,0,0),(198,148,0,0),(199,149,0,0),(200,150,0,0),(201,151,0,0),(202,152,1,0),(203,153,0,0),(204,154,0,0),(205,155,0,0),(206,156,0,0),(207,157,0,0),(208,158,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_CACHE_FILESYSTEM'),(10,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.CHANGE_NETWORK_STATE'),(6,'android.permission.CHANGE_WIFI_STATE'),(15,'android.permission.DELETE_CACHE_FILES'),(5,'android.permission.INTERNET'),(14,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_SMS'),(4,'android.permission.SEND_SMS'),(17,'android.permission.SET_WALLPAPER'),(13,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'com.android.launcher.permission.INSTALL_SHORTCUT'),(16,'com.android.launcher.permission.UNINSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'file://',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'',NULL,NULL,NULL),(29,NULL,NULL,'file://',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://',NULL,NULL,NULL),(34,NULL,NULL,'file://',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,1,2),(4,2,2),(5,1,3),(6,2,4),(7,1,4),(8,2,5),(9,1,5),(10,2,8),(11,1,6),(12,1,7),(13,1,8),(14,1,9),(15,1,10),(16,3,16),(17,3,1),(18,3,3),(19,3,5),(20,3,10),(21,3,11),(22,3,12),(23,3,13),(24,3,14),(25,3,15),(26,4,17),(27,4,16),(28,4,1),(29,4,3),(30,4,5),(31,4,10),(32,4,11),(33,4,13),(34,5,17),(35,5,16),(36,5,1),(37,5,3),(38,5,5),(39,6,17),(40,6,16),(41,5,10),(42,5,11),(43,6,1),(44,5,12),(45,6,3),(46,5,13),(47,6,5),(48,5,14),(49,6,10),(50,5,15),(51,6,11),(52,6,12),(53,6,13),(54,6,14),(55,6,15);
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
