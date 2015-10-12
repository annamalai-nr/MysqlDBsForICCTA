-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_349
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (32,'.ImageTestActivity'),(27,'.Myhall'),(29,'.Web'),(19,'INTENT_DONE'),(20,'SENDED'),(15,'android.intent.action.ATTACH_DATA'),(2,'android.intent.action.BOOT_COMPLETED'),(34,'android.intent.action.CHOOSER'),(6,'android.intent.action.DATA_SMS_RECEIVED'),(23,'android.intent.action.DELETE'),(10,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(33,'android.intent.action.MEDIA_MOUNTED'),(24,'android.intent.action.PACKAGE_ADDED'),(28,'android.intent.action.PACKAGE_REMOVED'),(18,'android.intent.action.PHONE_STATE'),(11,'android.intent.action.PICK'),(38,'android.intent.action.SEND'),(35,'android.intent.action.SEND_MSG'),(36,'android.intent.action.SEND_MULTIPLE'),(16,'android.intent.action.SET_WALLPAPER'),(12,'android.intent.action.VIEW'),(37,'android.media.action.STILL_IMAGE_CAMERA'),(14,'com.android.camera.action.CROP'),(17,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(13,'com.cooliris.media.action.REVIEW'),(8,'com.google.android.c2dm.intent.RECEIVE'),(22,'com.google.android.c2dm.intent.REGISTER'),(9,'com.google.android.c2dm.intent.REGISTRATION'),(25,'com.scenicwallpaper.GameBootReceiver'),(31,'com.scenicwallpaper.ImageTestActivity'),(26,'com.scenicwallpaper.Myhall'),(30,'com.scenicwallpaper.Web'),(3,'com.software.CHECKER'),(7,'work.service.upinfo'),(5,'work.service.xm_gps'),(21,'work.service.xm_main');
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
INSERT INTO `Applications` VALUES (1,'com.software.install',1),(2,'com.nicky.lyyws.xmall',1),(3,'com.software.application',1),(4,'com.cxjf.appmanager',11),(5,'com.alensw.super.PicFolder',44),(6,'com.scenicwallpaper',1016);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (7,'android.intent.category.ALTERNATIVE'),(5,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(10,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(6,'android.intent.category.OPENABLE'),(8,'android.intent.category.SELECTED_ALTERNATIVE'),(3,'android.intent.category.defult'),(9,'android.intent.categroy.DEFUAULT'),(4,'com.software.application');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.software.install.Main'),(2,1,'com.software.install.AgreementActivity'),(3,1,'com.software.install.GrantAccess'),(4,1,'com.software.install.PushHandler'),(5,1,'com.software.install.Notifier'),(6,3,'com.software.application.Main'),(7,3,'com.software.application.OffertActivity'),(8,3,'com.software.application.OffertActivity'),(9,2,'com.nicky.lyyws.xmall.MainActivity'),(10,3,'com.software.application.ShowLink'),(11,3,'com.software.application.ShowLink'),(12,3,'com.software.application.C2DMReceiver'),(13,3,'com.software.application.C2DMReceiver'),(14,2,'com.nicky.lyyws.xmall.XM_Setting'),(15,3,'com.software.application.Notificator'),(16,3,'com.software.application.Notificator'),(17,2,'com.nicky.lyyws.xmall.MainService'),(18,3,'com.software.application.Checker'),(19,3,'com.software.application.Checker'),(20,2,'com.nicky.lyyws.xmall.GpsService'),(21,3,'com.software.application.SmsReceiver'),(22,2,'com.nicky.lyyws.xmall.SocketService'),(23,2,'com.nicky.lyyws.xmall.XM_SmsListener'),(24,3,'com.google.android.c2dm.C2DMBroadcastReceiver'),(25,2,'com.nicky.lyyws.xmall.XM_CallListener'),(26,2,'com.nicky.lyyws.xmall.XM_CallRecordService'),(27,2,'com.nicky.lyyws.xmall.RecordService'),(28,2,'com.nicky.lyyws.xmall.BootReceiver'),(29,2,'com.nicky.lyyws.xmall.AlarmReceiver'),(30,4,'com.cxjf.appmanager.main'),(31,4,'ad.imadpush.com.poster.PosterInfoActivity'),(32,4,'ad.imadpush.com.poster.AlarmService'),(33,4,'com.airpuh.ad.UpdateCheck'),(34,4,'ad.imadpush.com.poster.ReceiverAlarm'),(35,5,'com.alensw.PicFolder.GalleryActivity'),(36,6,'com.scenicwallpaper.Myhall'),(37,5,'com.alensw.PicFolder.FolderActivity'),(38,6,'com.scenicwallpaper.Web'),(39,5,'com.alensw.PicFolder.PictureActivity'),(40,6,'com.scenicwallpaper.HomeActivity'),(41,6,'com.scenicwallpaper.SortActivity1'),(42,6,'com.scenicwallpaper.SortActivity2'),(43,6,'com.scenicwallpaper.SearchActivity'),(44,5,'com.alensw.PicFolder.CropActivity'),(45,6,'com.scenicwallpaper.ManagerActivity'),(46,6,'com.scenicwallpaper.GameInfo'),(47,5,'com.alensw.PicFolder.WallpaperActivity'),(48,6,'com.scenicwallpaper.TableClass'),(49,6,'com.scenicwallpaper.GameAlertDialog'),(50,6,'com.scenicwallpaper.DevelopmentSettings'),(51,5,'com.alensw.PicFolder.FolderListActivity'),(52,6,'com.scenicwallpaper.qimg.ImageTestActivity'),(53,5,'com.alensw.PicFolder.MainPreference'),(54,5,'com.passionteam.lightdd.CoreService'),(55,5,'com.passionteam.lightdd.Receiver'),(56,6,'com.scenicwallpaper.qimg.ADactivity'),(57,6,'com.scenicwallpaper.GameService'),(58,6,'com.scenicwallpaper.GameBootReceiver'),(59,1,'com.software.install.Main$2'),(60,1,'com.software.install.GrantAccess$1'),(61,1,'com.software.install.Activater$1'),(62,3,'com.software.application.Actor$1'),(63,2,'com.nicky.lyyws.xmall.XM_Setting$10'),(64,3,'com.software.application.Main$3'),(65,3,'com.google.android.c2dm.C2DMBaseReceiver'),(66,3,'com.software.application.ShowLink$1'),(67,3,'com.google.android.c2dm.C2DMessaging'),(68,3,'com.software.application.Actor'),(69,2,'com.nicky.lyyws.xmall.XM_Setting$11'),(70,2,'com.nicky.lyyws.xmall.MainActivity$2'),(71,4,'ad.imadpush.com.poster.PosterInfoActivity$PackageReceiver'),(72,2,'com.nicky.lyyws.xmall.MainActivity$4'),(73,6,'g'),(74,6,'dv'),(75,6,'ay'),(76,6,'do'),(77,6,'f'),(78,6,'cf'),(79,6,'bq'),(80,6,'cg'),(81,6,'l'),(82,6,'bh'),(83,6,'bt'),(84,5,'com.alensw.PicFolder.n'),(85,5,'com.alensw.PicFolder.r');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'URL'),(2,3,'URL'),(3,10,'URL'),(4,22,'UpInfo'),(5,31,'dId'),(6,31,'notifyId'),(7,33,'MYAD_PID'),(8,31,'push'),(9,30,'ad.imadpush.com'),(10,32,'ad.imadpush.com'),(11,31,'userId'),(12,45,'package_name'),(13,45,'status'),(14,42,'package_name'),(15,45,'app_name'),(16,43,'package_name'),(17,45,'url'),(18,45,'soft_id'),(19,36,'nextclassid'),(20,46,'filepath'),(21,45,'completed'),(22,45,'total'),(23,46,'from_table'),(24,46,'status'),(25,36,'service_channel'),(26,52,'service_channel'),(27,38,'service_channel'),(28,49,'btn_txt'),(29,43,'version_code'),(30,45,'filepath'),(31,46,'title'),(32,46,'from_alert'),(33,49,'title'),(34,42,'status'),(35,45,'icon'),(36,49,'url'),(37,57,'service_channel'),(38,42,'nextclassid'),(39,49,'content'),(40,43,'status'),(41,54,'url2'),(42,39,'cur_file'),(43,54,'Title2'),(44,54,'filename2'),(45,54,'PackageName2'),(46,44,'share'),(47,39,'slideshow'),(48,54,'Description2'),(49,51,'exclude_mode');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,8,'a',0,NULL,NULL),(8,7,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'s',1,NULL,NULL),(18,19,'r',1,NULL,NULL),(19,18,'r',1,NULL,NULL),(20,20,'s',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'s',1,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,25,'s',0,NULL,NULL),(25,24,'r',1,23,NULL),(26,26,'s',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',0,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'r',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'r',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'s',1,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,61,'r',1,NULL,NULL),(61,62,'r',1,NULL,NULL),(62,64,'r',1,NULL,NULL),(63,71,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,4),(4,4,1),(5,5,28),(6,6,17),(7,7,14),(8,8,9),(9,9,25),(10,10,23),(11,11,10),(12,12,17),(13,13,6),(14,14,17),(15,15,20),(16,16,6),(17,17,17),(18,18,6),(19,19,17),(20,20,6),(21,21,20),(22,22,14),(23,23,29),(24,24,20),(25,25,20),(26,26,17),(27,27,30),(28,28,17),(29,29,30),(30,30,17),(31,31,17),(32,32,30),(33,33,24),(34,34,9),(35,35,34),(36,36,17),(37,37,9),(38,38,30),(39,39,9),(40,40,30),(41,41,36),(42,42,58),(43,43,40),(44,44,36),(45,45,45),(46,46,56),(47,47,46),(48,48,56),(49,49,43),(50,50,36),(51,51,58),(52,52,42),(53,53,56),(54,54,48),(55,55,48),(56,56,49),(57,56,48),(58,57,42),(59,58,52),(60,59,46),(61,60,48),(62,60,49),(63,61,42),(64,62,49),(65,63,49),(66,64,40),(67,65,38),(68,66,46),(69,67,49),(70,68,40),(71,69,40),(72,70,58),(73,71,43),(74,72,40),(75,73,42),(76,74,40),(77,75,46),(78,76,46),(79,77,52),(80,78,45),(81,79,36),(82,80,42),(83,81,46),(84,82,38),(85,83,36),(86,84,49),(87,85,42),(88,86,45),(89,87,52),(90,88,36),(91,89,36),(92,90,38),(93,91,39),(94,92,39),(95,92,37),(96,92,53),(97,92,35),(98,92,44),(99,93,53),(100,93,37),(101,93,39),(102,93,35),(103,93,44),(104,94,39),(105,94,37),(106,94,44),(107,94,35),(108,95,39),(109,95,44),(110,95,35),(111,95,37),(112,96,53),(113,96,37),(114,96,35),(115,96,44),(116,96,39),(117,97,37),(118,97,39),(119,97,35),(120,97,44),(121,98,35),(122,98,39),(123,98,37),(124,98,44),(125,99,35),(126,99,37),(127,99,53),(128,99,39),(129,99,44),(130,100,35),(131,100,53),(132,100,37),(133,100,39),(134,100,44),(135,101,39),(136,101,37),(137,101,44),(138,101,35),(139,102,44),(140,102,37),(141,102,39),(142,102,35),(143,103,55),(144,104,37),(145,104,39),(146,104,35),(147,104,44),(148,105,35),(149,106,35),(150,106,39),(151,106,37),(152,106,44),(153,107,35),(154,108,47),(155,109,47),(156,110,35),(157,110,37),(158,110,39),(159,110,44),(160,111,53),(161,112,35),(162,112,37),(163,112,44),(164,112,39),(165,112,53),(166,113,44),(167,113,35),(168,113,39),(169,113,37),(170,114,44),(171,114,53),(172,114,35),(173,114,37),(174,114,39),(175,115,44),(176,115,39),(177,115,37),(178,115,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.software.install.Main: void showURL()>',6,'a',NULL),(2,60,'<com.software.install.GrantAccess$1: void onClick(android.view.View)>',8,'a',NULL),(3,4,'<com.software.install.PushHandler: void onCreate(android.os.Bundle)>',17,'a',NULL),(4,1,'<com.software.install.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(5,28,'<com.nicky.lyyws.xmall.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',6,'s',NULL),(6,17,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',91,'s',NULL),(7,63,'<com.nicky.lyyws.xmall.XM_Setting$10: void onClick(android.view.View)>',41,'a',NULL),(8,9,'<com.nicky.lyyws.xmall.MainActivity: void onCreate(android.os.Bundle)>',35,'s',NULL),(9,65,'<com.google.android.c2dm.C2DMBaseReceiver: void runIntentInService(android.content.Context,android.content.Intent)>',17,'s',NULL),(10,23,'<com.nicky.lyyws.xmall.XM_SmsListener: void onCreate()>',12,'p',NULL),(11,66,'<com.software.application.ShowLink$1: void onClick(android.view.View)>',8,'a',NULL),(12,17,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',104,'s',NULL),(13,67,'<com.google.android.c2dm.C2DMessaging: boolean register(android.content.Context,java.lang.String)>',10,'s',NULL),(14,17,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',116,'s',NULL),(15,20,'<com.nicky.lyyws.xmall.GpsService: void getLocation()>',96,'s',NULL),(16,68,'<com.software.application.Actor: void report(int,android.app.PendingIntent)>',4,'r',NULL),(17,17,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',85,'s',NULL),(18,6,'<com.software.application.Main: void showRules()>',3,'a',NULL),(19,17,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',119,'s',NULL),(20,6,'<com.software.application.Main: void showURL()>',6,'a',NULL),(21,20,'<com.nicky.lyyws.xmall.GpsService: void updateWithNewLocation(android.location.Location)>',35,'s',NULL),(22,69,'<com.nicky.lyyws.xmall.XM_Setting$11: void onClick(android.view.View)>',7,'a',NULL),(23,29,'<com.nicky.lyyws.xmall.AlarmReceiver: void onReceive(android.content.Context,android.content.Intent)>',42,'s',NULL),(24,20,'<com.nicky.lyyws.xmall.GpsService: void updateWithNewLocation(android.location.Location)>',71,'s',NULL),(25,20,'<com.nicky.lyyws.xmall.GpsService: void getLocation()>',66,'s',NULL),(26,17,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',110,'s',NULL),(27,30,'<com.cxjf.appmanager.main: boolean onMenuItemSelected(int,android.view.MenuItem)>',45,'a',NULL),(28,17,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',98,'s',NULL),(29,30,'<com.cxjf.appmanager.main: void nomalRemove(com.cxjf.appmanager.AppInfo)>',12,'a',NULL),(30,17,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',88,'s',NULL),(31,17,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',74,'s',NULL),(32,30,'<com.cxjf.appmanager.main: void nomalSetup(java.lang.String)>',8,'a',NULL),(33,25,'<com.nicky.lyyws.xmall.XM_CallListener: void onCreate()>',12,'p',NULL),(34,70,'<com.nicky.lyyws.xmall.MainActivity$2: void onClick(android.view.View)>',6,'a',NULL),(35,34,'<ad.imadpush.com.poster.ReceiverAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(36,17,'<com.nicky.lyyws.xmall.MainService: void onStart(android.content.Intent,int)>',82,'s',NULL),(37,9,'<com.nicky.lyyws.xmall.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(38,30,'<com.cxjf.appmanager.main: void onCreate(android.os.Bundle)>',20,'s',NULL),(39,72,'<com.nicky.lyyws.xmall.MainActivity$4: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(40,30,'<com.cxjf.appmanager.main: boolean onMenuItemSelected(int,android.view.MenuItem)>',54,'a',NULL),(41,73,'<g: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(42,58,'<com.scenicwallpaper.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(43,74,'<dv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(44,36,'<com.scenicwallpaper.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(45,45,'<com.scenicwallpaper.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(46,75,'<ay: void onClick(android.view.View)>',6,'a',NULL),(47,76,'<do: void onClick(android.view.View)>',224,'a',NULL),(48,56,'<com.scenicwallpaper.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',34,'a',NULL),(49,43,'<com.scenicwallpaper.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(50,77,'<f: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(51,58,'<com.scenicwallpaper.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(52,78,'<cf: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(53,56,'<com.scenicwallpaper.qimg.ADactivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(54,48,'<com.scenicwallpaper.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(55,48,'<com.scenicwallpaper.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(56,79,'<bq: void a(int,boolean)>',29,'a',NULL),(57,80,'<cg: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(58,81,'<l: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(59,46,'<com.scenicwallpaper.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(60,79,'<bq: void a(int,boolean)>',10,'s',NULL),(61,42,'<com.scenicwallpaper.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(62,49,'<com.scenicwallpaper.GameAlertDialog: void onClick(android.view.View)>',71,'a',NULL),(63,49,'<com.scenicwallpaper.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(64,74,'<dv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(65,38,'<com.scenicwallpaper.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(66,46,'<com.scenicwallpaper.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(67,49,'<com.scenicwallpaper.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(68,74,'<dv: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(69,40,'<com.scenicwallpaper.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(70,58,'<com.scenicwallpaper.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(71,43,'<com.scenicwallpaper.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(72,40,'<com.scenicwallpaper.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(73,78,'<cf: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(74,40,'<com.scenicwallpaper.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(75,76,'<do: void onClick(android.view.View)>',205,'a',NULL),(76,46,'<com.scenicwallpaper.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(77,52,'<com.scenicwallpaper.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(78,82,'<bh: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(79,77,'<f: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(80,42,'<com.scenicwallpaper.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(81,46,'<com.scenicwallpaper.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(82,83,'<bt: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(83,77,'<f: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(84,49,'<com.scenicwallpaper.GameAlertDialog: void onClick(android.view.View)>',40,'a',NULL),(85,78,'<cf: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(86,82,'<bh: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(87,52,'<com.scenicwallpaper.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(88,77,'<f: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(89,36,'<com.scenicwallpaper.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(90,38,'<com.scenicwallpaper.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(91,84,'<com.alensw.PicFolder.n: java.lang.String a(android.net.Uri)>',5,'p',0),(92,84,'<com.alensw.PicFolder.n: boolean e(java.lang.String)>',34,'p',NULL),(93,84,'<com.alensw.PicFolder.n: void a(java.lang.String,boolean)>',24,'p',NULL),(94,84,'<com.alensw.PicFolder.n: void a(java.lang.String,java.lang.String,char)>',19,'p',NULL),(95,84,'<com.alensw.PicFolder.n: void c(java.lang.String)>',29,'p',NULL),(96,84,'<com.alensw.PicFolder.n: boolean e(java.lang.String)>',26,'p',NULL),(97,84,'<com.alensw.PicFolder.n: void a(java.lang.String,java.lang.String,char)>',23,'p',NULL),(98,84,'<com.alensw.PicFolder.n: void a(java.lang.String,java.lang.String,char)>',26,'p',NULL),(99,84,'<com.alensw.PicFolder.n: boolean e(java.lang.String)>',37,'p',NULL),(100,84,'<com.alensw.PicFolder.n: boolean g()>',5,'p',0),(101,84,'<com.alensw.PicFolder.n: android.graphics.Bitmap a(long,char,com.alensw.PicFolder.ch)>',22,'p',NULL),(102,39,'<com.alensw.PicFolder.PictureActivity: boolean a(int)>',159,'a',NULL),(103,55,'<com.passionteam.lightdd.Receiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',NULL),(104,84,'<com.alensw.PicFolder.n: void c(java.lang.String)>',25,'p',NULL),(105,84,'<com.alensw.PicFolder.n: void b(android.content.Context)>',5,'r',NULL),(106,85,'<com.alensw.PicFolder.r: void a(android.content.Context,android.content.Intent)>',2,'a',NULL),(107,35,'<com.alensw.PicFolder.GalleryActivity: void onCreate(android.os.Bundle)>',5,'s',NULL),(108,47,'<com.alensw.PicFolder.WallpaperActivity: void onCreate(android.os.Bundle)>',10,'a',NULL),(109,47,'<com.alensw.PicFolder.WallpaperActivity: void onCreate(android.os.Bundle)>',18,'a',NULL),(110,84,'<com.alensw.PicFolder.n: void a(java.lang.String,java.lang.String,char)>',16,'p',NULL),(111,51,'<com.alensw.PicFolder.FolderListActivity: void a(android.content.Context,boolean)>',5,'a',NULL),(112,84,'<com.alensw.PicFolder.n: boolean e(java.lang.String)>',29,'p',NULL),(113,39,'<com.alensw.PicFolder.PictureActivity: void a(android.content.Context,android.content.Intent,boolean)>',6,'a',NULL),(114,84,'<com.alensw.PicFolder.n: void a(java.lang.String,boolean)>',20,'p',NULL),(115,35,'<com.alensw.PicFolder.GalleryActivity: boolean a(int)>',18,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,12),(2,3,12),(3,5,21),(4,10,12),(5,12,22),(6,14,7),(7,15,19),(8,20,7),(9,23,7),(10,24,7),(11,28,23),(12,30,23),(13,32,12),(14,33,1),(15,38,1),(16,40,12),(17,41,25),(18,43,26),(19,44,27),(20,47,1),(21,48,1),(22,49,1),(23,50,1),(24,51,12),(25,54,25),(26,57,1),(27,58,1),(28,62,12),(29,67,17),(30,69,29),(31,70,30),(32,72,12),(33,73,12),(34,74,12),(35,78,12),(36,81,12),(37,82,12),(38,85,23),(39,89,12),(40,92,12),(41,93,1),(42,94,1),(43,95,31),(44,96,32),(45,102,33),(46,103,34),(47,104,34),(48,105,34),(49,106,34),(50,107,12),(51,108,35),(52,109,36),(53,110,37),(54,111,36),(55,112,35),(56,113,34),(57,114,34),(58,115,34),(59,116,34),(60,117,38),(61,118,35),(62,119,36),(63,120,12),(64,121,36),(65,122,35),(66,123,38),(67,124,35),(68,125,12),(69,126,35),(70,127,12),(71,128,35),(72,129,38),(73,131,35),(74,132,36),(75,133,12),(76,134,35),(77,135,36),(78,138,16),(79,139,10),(80,141,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,33,2),(2,38,2),(3,47,1),(4,48,10),(5,49,1),(6,50,10),(7,57,1),(8,58,10),(9,93,1),(10,94,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/software/install/GrantAccess'),(2,4,'com/software/install/AgreementActivity'),(3,5,'com/nicky/lyyws/xmall/MainService'),(4,6,'com/nicky/lyyws/xmall/XM_CallRecordService'),(5,7,'com/nicky/lyyws/xmall/MainActivity'),(6,8,'com/nicky/lyyws/xmall/MainService'),(7,9,'com.software.application.C2DMReceiver'),(8,11,'com/nicky/lyyws/xmall/XM_SmsListener'),(9,13,'com/nicky/lyyws/xmall/XM_CallRecordService'),(10,16,'com/nicky/lyyws/xmall/XM_CallListener'),(11,17,'com/software/application/OffertActivity'),(12,18,'com/nicky/lyyws/xmall/SocketService'),(13,19,'com/software/application/ShowLink'),(14,21,'com/nicky/lyyws/xmall/MainActivity'),(15,22,'com/nicky/lyyws/xmall/MainService'),(16,25,'com/nicky/lyyws/xmall/XM_CallListener'),(17,26,'com.htc.fieldtest.FieldTestActivity'),(18,27,'com/nicky/lyyws/xmall/GpsService'),(19,29,'com/nicky/lyyws/xmall/XM_SmsListener'),(20,31,'com/nicky/lyyws/xmall/SocketService'),(21,34,'ad/imadpush/com/poster/AlarmService'),(22,35,'com/nicky/lyyws/xmall/GpsService'),(23,36,'com/nicky/lyyws/xmall/XM_Setting'),(24,37,'com/airpuh/ad/UpdateCheck'),(25,39,'com.android.settings.TestingSettings'),(26,41,'com/scenicwallpaper/GameService'),(27,42,'com/scenicwallpaper/Myhall'),(28,43,'com/scenicwallpaper/GameService'),(29,44,'com/scenicwallpaper/GameService'),(30,45,'com/scenicwallpaper/GameService'),(31,46,'com/scenicwallpaper/qimg/ImageTestActivity'),(32,52,'com/scenicwallpaper/GameInfo'),(33,53,'com/scenicwallpaper/Myhall'),(34,54,'com/scenicwallpaper/GameService'),(35,55,'com/scenicwallpaper/GameInfo'),(36,56,'com/scenicwallpaper/GameInfo'),(37,59,'com/scenicwallpaper/GameInfo'),(38,60,'com/scenicwallpaper/Myhall'),(39,61,'com/scenicwallpaper/Myhall'),(40,63,'com/scenicwallpaper/GameService'),(41,64,'com/scenicwallpaper/GameService'),(42,65,'com/scenicwallpaper/GameService'),(43,66,'com/scenicwallpaper/GameAlertDialog'),(44,68,'com/scenicwallpaper/GameInfo'),(45,69,'com/scenicwallpaper/GameService'),(46,70,'com/scenicwallpaper/GameService'),(47,71,'com/scenicwallpaper/Myhall'),(48,75,'com/scenicwallpaper/GameInfo'),(49,76,'com/scenicwallpaper/GameService'),(50,77,'com/scenicwallpaper/GameService'),(51,79,'com/scenicwallpaper/Myhall'),(52,80,'com/scenicwallpaper/Myhall'),(53,83,'com/scenicwallpaper/Myhall'),(54,84,'com/scenicwallpaper/GameService'),(55,86,'com/scenicwallpaper/Myhall'),(56,87,'com/scenicwallpaper/GameInfo'),(57,88,'com/scenicwallpaper/Myhall'),(58,90,'com/scenicwallpaper/Myhall'),(59,91,'com/scenicwallpaper/GameInfo'),(60,95,'com/scenicwallpaper/GameService'),(61,96,'com/scenicwallpaper/GameService'),(62,97,'com/scenicwallpaper/Myhall'),(63,98,'com/scenicwallpaper/GameService'),(64,99,'com/scenicwallpaper/GameService'),(65,100,'com/alensw/PicFolder/MainPreference'),(66,101,'com/passionteam/lightdd/CoreService'),(67,108,'NULL-CONSTANT'),(68,109,'NULL-CONSTANT'),(69,111,'NULL-CONSTANT'),(70,112,'NULL-CONSTANT'),(71,117,'NULL-CONSTANT'),(72,118,'NULL-CONSTANT'),(73,119,'NULL-CONSTANT'),(74,121,'NULL-CONSTANT'),(75,122,'NULL-CONSTANT'),(76,123,'NULL-CONSTANT'),(77,124,'NULL-CONSTANT'),(78,126,'NULL-CONSTANT'),(79,128,'NULL-CONSTANT'),(80,129,'NULL-CONSTANT'),(81,130,'NULL-CONSTANT'),(82,131,'NULL-CONSTANT'),(83,132,'NULL-CONSTANT'),(84,134,'NULL-CONSTANT'),(85,135,'NULL-CONSTANT'),(86,136,'NULL-CONSTANT'),(87,137,'com/passionteam/lightdd/CoreService'),(88,138,'com/alensw/PicFolder/CropActivity'),(89,139,'com/alensw/PicFolder/GalleryActivity'),(90,140,'com/alensw/PicFolder/FolderListActivity'),(91,141,'com/alensw/PicFolder/PictureActivity'),(92,142,'com/alensw/PicFolder/MainPreference');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,3,2),(3,10,4),(4,28,5),(5,30,6),(6,32,8),(7,40,9),(8,51,10),(9,62,11),(10,72,12),(11,73,13),(12,74,14),(13,78,15),(14,81,16),(15,82,17),(16,85,18),(17,89,19),(18,92,20),(19,102,32),(20,107,33),(21,120,34),(22,125,35),(23,127,36),(24,133,37),(25,138,38),(26,141,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'URL'),(2,12,'sender'),(3,12,'app'),(4,14,'UpInfo'),(5,19,'URL'),(6,20,'UpInfo'),(7,23,'UpInfo'),(8,24,'UpInfo'),(9,42,'title'),(10,42,'nextclassid'),(11,42,'clicked'),(12,53,'clicked'),(13,55,'title'),(14,61,'title'),(15,61,'nextclassid'),(16,61,'clicked'),(17,66,'title'),(18,66,'btn_txt'),(19,66,'need_adb_flag'),(20,66,'cont'),(21,66,'close_flag'),(22,68,'title'),(23,79,'title'),(24,79,'nextclassid'),(25,79,'clicked'),(26,80,'nextclassid'),(27,80,'clicked'),(28,86,'clicked'),(29,87,'title'),(30,90,'clicked'),(31,91,'id'),(32,91,'from_alert'),(33,91,'detail_flag'),(34,97,'clicked'),(35,103,'android.intent.extra.INTENT'),(36,104,'android.intent.extra.INTENT'),(37,105,'android.intent.extra.INTENT'),(38,106,'android.intent.extra.TITLE'),(39,106,'android.intent.extra.INTENT'),(40,108,'android.intent.extra.STREAM'),(41,109,'android.intent.extra.STREAM'),(42,113,'android.intent.extra.TITLE'),(43,113,'android.intent.extra.INTENT'),(44,114,'android.intent.extra.TITLE'),(45,114,'android.intent.extra.INTENT'),(46,115,'android.intent.extra.INTENT'),(47,116,'android.intent.extra.TITLE'),(48,116,'android.intent.extra.INTENT'),(49,117,'android.intent.extra.STREAM'),(50,118,'android.intent.extra.STREAM'),(51,122,'android.intent.extra.STREAM'),(52,123,'android.intent.extra.STREAM'),(53,126,'android.intent.extra.STREAM'),(54,128,'android.intent.extra.STREAM'),(55,129,'android.intent.extra.STREAM'),(56,131,'android.intent.extra.STREAM'),(57,132,'android.intent.extra.STREAM'),(58,135,'android.intent.extra.STREAM'),(59,136,'android.intent.extra.STREAM'),(60,138,'scale'),(61,138,'aspectX'),(62,138,'aspectY'),(63,138,'outputX'),(64,138,'noFaceDetection'),(65,138,'outputY'),(66,138,'setWallpaper'),(67,139,'scale'),(68,139,'aspectX'),(69,139,'aspectY'),(70,139,'outputX'),(71,139,'noFaceDetection'),(72,139,'outputY'),(73,139,'setWallpaper'),(74,139,'crop'),(75,140,'exclude_mode'),(76,141,'slideshow'),(77,141,'file_index');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,4,1),(4,3,1),(5,5,1),(6,6,2),(7,7,2),(8,9,3),(9,10,5),(10,11,6),(11,12,7),(12,13,8),(13,14,2),(14,15,9),(15,16,1),(16,17,10),(17,18,11),(18,19,10),(19,20,1),(20,21,11),(21,22,12),(22,23,1),(23,24,13),(24,25,1),(25,26,1),(26,27,14),(27,28,1),(28,29,15),(29,30,1),(30,31,16),(31,32,17),(32,33,1),(33,34,18),(34,35,1),(35,36,2),(36,37,19),(37,38,20),(38,39,20),(39,40,19),(40,41,24),(41,42,24),(42,43,28);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,1),(6,7,2),(7,6,2),(8,8,3),(9,9,2),(10,13,4),(11,14,2),(12,15,4),(13,16,1),(14,17,6),(15,17,5),(16,18,5),(17,19,6),(18,20,1),(19,21,5),(20,22,5),(21,24,5),(22,27,8),(23,27,7),(24,27,5),(25,29,5),(26,31,5),(27,33,1),(28,34,5),(29,35,1),(30,42,9),(31,43,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,11,'sms',NULL,NULL,NULL,NULL,NULL),(2,11,NULL,NULL,'8901',NULL,NULL,NULL),(3,17,NULL,NULL,NULL,NULL,'image','*'),(4,18,NULL,NULL,NULL,NULL,'image','*'),(5,19,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','image'),(6,21,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','image'),(7,22,NULL,NULL,NULL,NULL,'image','*'),(8,24,NULL,NULL,NULL,NULL,'image','*'),(9,27,NULL,NULL,NULL,NULL,'image','*'),(10,29,NULL,NULL,NULL,NULL,'image','*'),(11,41,'package',NULL,NULL,NULL,NULL,NULL),(12,42,'package',NULL,NULL,NULL,NULL,NULL),(13,43,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,32,'application','vnd.android.package-archive'),(2,40,'application','vnd.android.package-archive'),(3,62,'application','vnd.android.package-archive'),(4,81,'application','vnd.android.package-archive'),(5,82,'application','vnd.android.package-archive'),(6,89,'application','vnd.android.package-archive'),(7,108,'image','*'),(8,109,'image','*'),(9,111,'image','*'),(10,112,'image','*'),(11,117,'(.*)','(.*)'),(12,118,'(.*)','(.*)'),(13,119,'*','*'),(14,121,'video','*'),(15,124,'*','*'),(16,128,'video','*'),(17,131,'*','*'),(18,132,'*','*'),(19,134,'video','*'),(20,135,'video','*'),(21,139,'image','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.software.install'),(2,4,'com.software.install'),(3,5,'com.nicky.lyyws.xmall'),(4,6,'com.nicky.lyyws.xmall'),(5,7,'com.nicky.lyyws.xmall'),(6,8,'com.nicky.lyyws.xmall'),(7,9,'com.software.application'),(8,11,'com.nicky.lyyws.xmall'),(9,13,'com.nicky.lyyws.xmall'),(10,12,'com.google.android.gsf'),(11,16,'com.nicky.lyyws.xmall'),(12,17,'com.software.application'),(13,18,'com.nicky.lyyws.xmall'),(14,19,'com.software.application'),(15,21,'com.nicky.lyyws.xmall'),(16,22,'com.nicky.lyyws.xmall'),(17,25,'com.nicky.lyyws.xmall'),(18,26,'com.htc.fieldtest'),(19,27,'com.nicky.lyyws.xmall'),(20,29,'com.nicky.lyyws.xmall'),(21,31,'com.nicky.lyyws.xmall'),(22,34,'com.cxjf.appmanager'),(23,35,'com.nicky.lyyws.xmall'),(24,36,'com.nicky.lyyws.xmall'),(25,37,'com.cxjf.appmanager'),(26,39,'com.android.settings'),(27,41,'com.scenicwallpaper'),(28,42,'com.scenicwallpaper'),(29,43,'com.scenicwallpaper'),(30,44,'com.scenicwallpaper'),(31,45,'com.scenicwallpaper'),(32,46,'com.scenicwallpaper'),(33,47,'(.*)'),(34,48,''),(35,49,''),(36,50,'(.*)'),(37,52,'com.scenicwallpaper'),(38,53,'com.scenicwallpaper'),(39,54,'com.scenicwallpaper'),(40,55,'com.scenicwallpaper'),(41,56,'com.scenicwallpaper'),(42,57,'(.*)'),(43,58,'(.*)'),(44,59,'com.scenicwallpaper'),(45,60,'com.scenicwallpaper'),(46,61,'com.scenicwallpaper'),(47,63,'com.scenicwallpaper'),(48,64,'com.scenicwallpaper'),(49,65,'com.scenicwallpaper'),(50,66,'com.scenicwallpaper'),(51,68,'com.scenicwallpaper'),(52,69,'com.scenicwallpaper'),(53,70,'com.scenicwallpaper'),(54,71,'com.scenicwallpaper'),(55,75,'com.scenicwallpaper'),(56,76,'com.scenicwallpaper'),(57,77,'com.scenicwallpaper'),(58,79,'com.scenicwallpaper'),(59,80,'com.scenicwallpaper'),(60,83,'com.scenicwallpaper'),(61,84,'com.scenicwallpaper'),(62,86,'com.scenicwallpaper'),(63,87,'com.scenicwallpaper'),(64,88,'com.scenicwallpaper'),(65,90,'com.scenicwallpaper'),(66,91,'com.scenicwallpaper'),(67,93,'NULL-CONSTANT'),(68,94,'NULL-CONSTANT'),(69,95,'com.scenicwallpaper'),(70,96,'com.scenicwallpaper'),(71,97,'com.scenicwallpaper'),(72,98,'com.scenicwallpaper'),(73,99,'com.scenicwallpaper'),(74,100,'com.alensw.super.PicFolder'),(75,101,'com.alensw.super.PicFolder'),(76,108,'NULL-CONSTANT'),(77,109,'NULL-CONSTANT'),(78,111,'NULL-CONSTANT'),(79,112,'NULL-CONSTANT'),(80,117,'NULL-CONSTANT'),(81,118,'NULL-CONSTANT'),(82,119,'NULL-CONSTANT'),(83,121,'NULL-CONSTANT'),(84,122,'NULL-CONSTANT'),(85,123,'NULL-CONSTANT'),(86,124,'NULL-CONSTANT'),(87,126,'NULL-CONSTANT'),(88,128,'NULL-CONSTANT'),(89,129,'NULL-CONSTANT'),(90,130,'NULL-CONSTANT'),(91,131,'NULL-CONSTANT'),(92,132,'NULL-CONSTANT'),(93,134,'NULL-CONSTANT'),(94,135,'NULL-CONSTANT'),(95,136,'NULL-CONSTANT'),(96,137,'com.alensw.super.PicFolder'),(97,138,'com.alensw.super.PicFolder'),(98,139,'com.alensw.super.PicFolder'),(99,140,'com.alensw.super.PicFolder'),(100,141,'com.alensw.super.PicFolder'),(101,142,'com.alensw.super.PicFolder');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,6,0),(5,9,0),(6,15,0),(7,16,0),(8,17,0),(9,19,0),(10,20,0),(11,21,0),(12,22,0),(13,25,0),(14,28,0),(15,25,0),(16,30,0),(17,35,0),(18,35,0),(19,35,0),(20,35,0),(21,35,0),(22,39,0),(23,42,0),(24,39,0),(25,43,0),(26,45,0),(27,44,0),(28,46,0),(29,47,0),(30,48,0),(31,47,0),(32,50,0),(33,52,0),(34,55,0),(35,57,0),(36,58,0),(37,59,0),(38,60,0),(39,61,0),(40,62,0),(41,63,0),(42,58,0),(43,58,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,11,1,0),(11,12,0,0),(12,13,1,0),(13,14,0,0),(14,15,1,0),(15,16,1,0),(16,17,0,0),(17,18,0,0),(18,19,0,0),(19,20,0,0),(20,21,1,0),(21,22,0,0),(22,23,0,0),(23,24,1,0),(24,25,1,0),(25,26,0,0),(26,27,0,0),(27,28,0,0),(28,29,1,0),(29,30,0,0),(30,29,1,0),(31,31,0,0),(32,32,1,0),(33,34,1,0),(34,35,0,0),(35,36,0,0),(36,37,0,0),(37,38,0,0),(38,39,1,0),(39,40,0,0),(40,41,1,0),(41,42,0,0),(42,43,0,0),(43,44,0,0),(44,44,0,0),(45,45,0,0),(46,46,0,0),(47,47,1,0),(48,47,1,0),(49,47,1,0),(50,47,1,0),(51,48,1,0),(52,49,0,0),(53,50,0,0),(54,51,0,0),(55,52,0,0),(56,53,0,0),(57,54,1,0),(58,54,1,0),(59,55,0,0),(60,56,0,0),(61,57,0,0),(62,58,1,0),(63,59,0,0),(64,60,0,0),(65,61,0,0),(66,62,0,0),(67,63,1,0),(68,64,0,0),(69,65,0,0),(70,65,0,0),(71,66,0,0),(72,67,1,0),(73,67,1,0),(74,68,1,0),(75,69,0,0),(76,70,0,0),(77,71,0,0),(78,72,1,0),(79,73,0,0),(80,74,0,0),(81,75,1,0),(82,75,1,0),(83,76,0,0),(84,77,0,0),(85,78,1,0),(86,79,0,0),(87,80,0,0),(88,81,0,0),(89,82,1,0),(90,83,0,0),(91,84,0,0),(92,85,1,0),(93,86,1,0),(94,86,1,0),(95,87,0,0),(96,87,0,0),(97,88,0,0),(98,89,0,0),(99,90,0,0),(100,102,0,0),(101,103,0,0),(102,105,1,0),(103,106,1,0),(104,106,1,0),(105,106,1,0),(106,106,1,0),(107,106,1,0),(108,106,0,0),(109,106,0,0),(110,106,1,0),(111,106,0,0),(112,106,0,0),(113,106,1,0),(114,106,1,0),(115,106,1,0),(116,106,1,0),(117,106,0,0),(118,106,0,0),(119,106,0,0),(120,106,1,0),(121,106,0,0),(122,106,0,0),(123,106,0,0),(124,106,0,0),(125,106,1,0),(126,106,0,0),(127,106,1,0),(128,106,0,0),(129,106,0,0),(130,106,0,0),(131,106,0,0),(132,106,0,0),(133,106,1,0),(134,106,0,0),(135,106,0,0),(136,106,0,0),(137,107,0,0),(138,108,0,0),(139,109,0,0),(140,111,0,0),(141,113,0,0),(142,115,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (29,'android.permission.ACCESS_CACHE_FILESYSTEM'),(8,'android.permission.ACCESS_COARSE_LOCATION'),(12,'android.permission.ACCESS_COARSE_UPDATES'),(16,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_GPS'),(25,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(10,'android.permission.CALL_PHONE'),(31,'android.permission.DELETE_CACHE_FILES'),(19,'android.permission.DEVICE_POWER'),(24,'android.permission.GET_TASKS'),(4,'android.permission.INTERNET'),(15,'android.permission.PERMISSION_NAME'),(5,'android.permission.PROCESS_OUTGOING_CALLS'),(9,'android.permission.READ_CONTACTS'),(30,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(28,'android.permission.RECEIVE_BOOT_COMPLETED'),(21,'android.permission.RECEIVE_SMS'),(18,'android.permission.RECORD_AUDIO'),(2,'android.permission.SEND_SMS'),(26,'android.permission.SET_WALLPAPER'),(17,'android.permission.WAKE_LOCK'),(11,'android.permission.WRITE_CONTACTS'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'android.permission.WRITE_SMS'),(27,'com.android.launcher.permission.INSTALL_SHORTCUT'),(32,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(22,'com.google.android.c2dm.permission.RECEIVE'),(23,'com.google.android.c2dm.permission.SEND'),(20,'com.software.application.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (20,'s');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'content://sms/',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'package:',NULL,NULL,NULL),(7,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://',NULL,NULL,NULL),(18,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'file://',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(22,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(23,NULL,NULL,'content://media/internal/images/media',NULL,NULL,NULL),(24,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(25,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(26,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(27,NULL,NULL,'content://media/internal/video/media',NULL,NULL,NULL),(28,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(29,NULL,NULL,'content://media/external/images/thumbnails',NULL,NULL,NULL),(30,NULL,NULL,'content://media/external/video/thumbnails',NULL,NULL,NULL),(31,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'market://search?q=pub:alensw.com',NULL,NULL,NULL),(34,NULL,NULL,'http://market.android.com/search?q=pub:alensw.com',NULL,NULL,NULL),(35,NULL,NULL,'http://maps.google.com/maps?f=q&q=((.*),(.*))',NULL,NULL,NULL),(36,NULL,NULL,'market://details?id=com.alensw.super.PicFolder',NULL,NULL,NULL),(37,NULL,NULL,'http://market.android.com/details?id=com.alensw.super.PicFolder',NULL,NULL,NULL),(38,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(39,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(40,NULL,NULL,'content://media/external/video/media',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,10,3),(2,33,7),(3,92,21),(4,93,22),(5,94,23),(6,95,24),(7,96,25),(8,97,26),(9,98,27),(10,99,28),(11,101,29),(12,101,30),(13,104,31),(14,110,39),(15,112,40),(16,114,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,2,3),(7,2,4),(8,2,5),(9,2,6),(10,2,7),(11,3,17),(12,2,8),(13,3,1),(14,2,9),(15,3,2),(16,3,3),(17,2,10),(18,3,21),(19,3,21),(20,2,11),(21,3,4),(22,3,4),(23,2,12),(24,3,20),(25,3,20),(26,3,22),(27,2,13),(28,3,22),(29,2,14),(30,3,14),(31,2,15),(32,2,17),(33,2,16),(34,2,19),(35,2,18),(36,4,1),(37,4,3),(38,4,4),(39,4,7),(40,4,25),(41,4,8),(42,4,24),(43,5,17),(44,5,1),(45,5,3),(46,5,4),(47,5,26),(48,6,1),(49,6,32),(50,6,3),(51,6,4),(52,6,25),(53,6,27),(54,6,26),(55,6,29),(56,6,28),(57,6,31),(58,6,30);
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

-- Dump completed on 2015-10-09  0:39:15
