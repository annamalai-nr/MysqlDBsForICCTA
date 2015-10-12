-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_774
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (3,'(.*)'),(1,'android.intent.action.MAIN'),(4,'android.intent.action.SCREEN_OFF'),(5,'android.intent.action.USER_PRESENT'),(2,'android.intent.action.VIEW'),(8,'android.settings.WIRELESS_SETTINGS'),(6,'com.android.launcher.action.INSTALL_SHORTCUT'),(7,'com.tencent.webnet.smssendrecover');
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
INSERT INTO `Applications` VALUES (1,'com.AmazingBullshit.HolyFuckingBibleFree',6),(2,'com.AmazingBullshit.PrivacyPooperFree',4),(3,'com.AmazingBullshit.CopAppFree',4),(4,'com.AmazingBullshit.CopAppFree',3),(5,'com.war',8),(6,'com.ku6.dragon',6),(7,'com.sdwl.game.latale',106);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.BROWSABLE'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,2,'com.AmazingBullshit.PrivacyPooperFree.Main'),(2,1,'com.AmazingBullshit.HolyFuckingBibleFree.Main'),(3,2,'com.google.ads.AdActivity'),(4,1,'com.google.ads.AdActivity'),(5,3,'com.AmazingBullshit.CopAppFree.Main'),(6,3,'com.google.ads.AdActivity'),(7,4,'com.AmazingBullshit.CopAppFree.Main'),(8,4,'com.google.ads.AdActivity'),(9,5,'com.war.GameMidlet'),(10,5,'com.orz.lib.sd_sdk'),(11,1,'com.SoundboardEngine.SoundSaver'),(12,2,'com.SoundboardEngine.SoundSaver'),(13,6,'com.ku6.dragon.Login1stActivity'),(14,1,'com.google.ads.util.AdUtil$UserActivityReceiver'),(15,6,'com.ku6.dragon.AdviceActivity'),(16,6,'com.ku6.dragon.IGDialogDownload'),(17,6,'com.ku6.dragon.SMSLoginActivity'),(18,6,'com.ku6.dragon.LoginCenterActivity'),(19,3,'com.SoundboardEngine.SoundSaver'),(20,6,'com.ku6.dragon.SMSRegActivity'),(21,6,'com.ku6.dragon.MoreActivity'),(22,2,'com.google.ads.util.AdUtil$UserActivityReceiver'),(23,6,'com.ku6.dragon.SinaLoginActivity'),(24,6,'com.ku6.dragon.FansActivity'),(25,6,'com.ku6.dragon.IdolActivity'),(26,6,'com.ku6.dragon.SinaRegActivity'),(27,6,'com.ku6.dragon.ShareActivity'),(28,6,'com.ku6.dragon.SplashActivity'),(29,6,'com.ku6.dragon.MediaVideoActivity'),(30,6,'com.ku6.dragon.ShootActivity'),(31,6,'com.ku6.dragon.LoginActivity'),(32,6,'com.ku6.dragon.DragonActivity'),(33,6,'com.ku6.dragon.MyVideosActivity'),(34,6,'com.ku6.dragon.UserInfoActivity'),(35,6,'com.ku6.dragon.UploadLoginActivity'),(36,6,'com.ku6.dragon.event.BonusActivity'),(37,6,'com.ku6.dragon.SNSLoginActivity'),(38,3,'com.google.ads.util.AdUtil$UserActivityReceiver'),(39,6,'com.ku6.dragon.NewsActivity'),(40,6,'com.ku6.dragon.WeiguanListActivity'),(41,6,'com.ku6.dragon.CategoryActivity'),(42,6,'com.ku6.dragon.ManageCommentActivity'),(43,6,'com.ku6.dragon.VideoPlayActivity'),(44,6,'com.ku6.dragon.AppInfoActivity'),(45,6,'com.ku6.dragon.FileUploadService'),(46,6,'com.ku6.dragon.NewsService'),(47,4,'com.SoundboardEngine.SoundSaver'),(48,4,'u$b'),(49,5,'bg'),(50,5,'com.orz.lib.sd_sdk$2'),(51,7,'com.sdwl.game.latale.main.startActivity'),(52,7,'com.sdwl.game.latale.ChargeUI'),(53,7,'com.tencent.webnet.WebNetMain'),(54,7,'com.tencent.netdata.Login'),(55,7,'com.sdwl.game.latale.large.MainActivity'),(56,7,'com.sdwl.game.latale.small.MainActivity'),(57,7,'com.tencent.webnet.h'),(58,7,'com.tencent.webnet.am'),(59,7,'com.snda.sdw.woa.ba$a'),(60,7,'com.tencent.webnet.ac'),(61,6,'com.ku6.dragon.MoreActivity$6'),(62,6,'com.ku6.dragon.FansActivity$FansAdapter$3'),(63,6,'com.ku6.dragon.VideoInfoAdapter$6'),(64,6,'com.ku6.dragon.IdolActivity$IdolAdapter$4'),(65,6,'com.ku6.dragon.BaseActivity$2'),(66,6,'com.ku6.dragon.SplashActivity$2'),(67,6,'com.ku6.dragon.WeiguanListActivity$1'),(68,6,'com.ku6.dragon.WeiguanListActivity$2'),(69,6,'com.ku6.dragon.MoreActivity$3'),(70,6,'com.ku6.dragon.DialogMag$3'),(71,6,'com.ku6.dragon.BaseActivity$5'),(72,6,'com.ku6.dragon.MediaVideoActivity$15'),(73,6,'com.ku6.dragon.UserInfoActivity$5'),(74,6,'com.ku6.dragon.NewsActivity$ActiveCenAdapter$5'),(75,6,'com.ku6.dragon.LoginCenterActivity$5'),(76,6,'com.ku6.dragon.event.BonusActivity$1'),(77,6,'com.ku6.dragon.IGDialogDownload$2'),(78,6,'com.ku6.dragon.VideoInfoAdapter$5'),(79,6,'com.ku6.dragon.LoginCenterActivity$6'),(80,6,'com.ku6.dragon.UserInfoActivity$4'),(81,6,'com.ku6.dragon.BaseActivity$3'),(82,6,'com.ku6.dragon.VideoInfoAdapter$3'),(83,6,'com.ku6.dragon.MediaVideoActivity$22'),(84,6,'com.ku6.dragon.BaseActivity$6'),(85,6,'com.ku6.dragon.LoginCenterActivity$1'),(86,6,'com.ku6.dragon.NewsActivity$ActiveCenAdapter$11'),(87,6,'com.ku6.dragon.MediaVideoActivity$20'),(88,6,'com.ku6.dragon.NewsActivity$ActiveCenAdapter$3'),(89,6,'com.ku6.dragon.NewsActivity$ActiveCenAdapter$9'),(90,6,'com.ku6.dragon.UserInfoActivity$2'),(91,6,'com.ku6.dragon.MyVideoAdapter$2'),(92,6,'com.ku6.dragon.SinaLoginActivity$2'),(93,6,'com.ku6.dragon.UserInfoActivity$3'),(94,6,'com.ku6.dragon.UserVideoInfoAdapter$5'),(95,6,'com.ku6.dragon.MediaVideoActivity$23'),(96,6,'com.ku6.dragon.MediaVideoActivity$21'),(97,6,'com.ku6.dragon.DialogMag$5'),(98,6,'com.ku6.dragon.MoreActivity$2'),(99,6,'com.ku6.dragon.NewsActivity$ActiveCenAdapter$12'),(100,6,'com.ku6.dragon.BaseActivity$4'),(101,6,'com.ku6.dragon.UserVideoInfoAdapter$4'),(102,6,'com.ku6.dragon.CategoryActivity$2'),(103,6,'com.ku6.dragon.NewsActivity$ActiveCenAdapter$6'),(104,6,'com.ku6.dragon.NewsActivity$ActiveCenAdapter$14'),(105,6,'com.ku6.dragon.LoginCenterActivity$4');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'params'),(2,3,'action'),(3,4,'action'),(4,4,'com.google.ads.AdOpener'),(5,3,'params'),(6,6,'params'),(7,6,'action'),(8,6,'com.google.ads.AdOpener'),(9,3,'com.google.ads.AdOpener'),(10,8,'action'),(11,8,'com.google.ads.AdOpener'),(12,8,'params'),(13,49,'SMALL_VERSION'),(14,50,'SMALL_VERSION'),(15,40,'videoId'),(16,40,'lid'),(17,14,'activity'),(18,22,'SDO_CHANNEL'),(19,38,'SDO_CHANNEL'),(20,21,'SDO_CHANNEL'),(21,37,'SDO_CHANNEL'),(22,31,'SDO_CHANNEL'),(23,39,'SDO_CHANNEL'),(24,18,'SDO_CHANNEL'),(25,20,'SDO_CHANNEL'),(26,36,'SDO_CHANNEL'),(27,26,'SDO_CHANNEL'),(28,30,'SDO_CHANNEL'),(29,29,'SDO_CHANNEL'),(30,24,'video'),(31,33,'event'),(32,31,'uid'),(33,40,'uid'),(34,39,'videoId'),(35,21,'fanstype'),(36,35,'label'),(37,39,'userId'),(38,21,'uid'),(39,40,'channelid'),(40,40,'lcnt'),(41,40,'fid'),(42,29,'category'),(43,22,'uid'),(44,22,'idoltype'),(45,40,'playurl'),(46,40,'duration');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,13,'a',0,NULL,NULL),(12,14,'r',1,NULL,NULL),(13,15,'a',0,NULL,NULL),(14,16,'a',0,NULL,NULL),(15,17,'a',0,NULL,NULL),(16,18,'a',0,NULL,NULL),(17,20,'a',0,NULL,NULL),(18,21,'a',0,NULL,NULL),(19,22,'r',1,NULL,NULL),(20,23,'a',0,NULL,NULL),(21,24,'a',0,NULL,NULL),(22,25,'a',0,NULL,NULL),(23,26,'a',0,NULL,NULL),(24,27,'a',0,NULL,NULL),(25,28,'a',1,NULL,NULL),(26,29,'a',0,NULL,NULL),(27,30,'a',0,NULL,NULL),(28,31,'a',0,NULL,NULL),(29,32,'a',0,NULL,NULL),(30,33,'a',0,NULL,NULL),(31,34,'a',0,NULL,NULL),(32,35,'a',0,NULL,NULL),(33,36,'a',0,NULL,NULL),(34,38,'r',1,NULL,NULL),(35,37,'a',0,NULL,NULL),(36,39,'a',0,NULL,NULL),(37,40,'a',0,NULL,NULL),(38,41,'a',0,NULL,NULL),(39,42,'a',0,NULL,NULL),(40,43,'a',0,NULL,NULL),(41,44,'a',0,NULL,NULL),(42,45,'s',0,NULL,NULL),(43,46,'s',0,NULL,NULL),(44,48,'r',1,NULL,NULL),(45,51,'a',1,NULL,NULL),(46,52,'a',0,NULL,NULL),(47,53,'a',0,NULL,NULL),(48,54,'a',0,NULL,NULL),(49,55,'a',0,NULL,NULL),(50,56,'a',0,NULL,NULL),(51,59,'r',1,NULL,NULL),(52,60,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,1),(3,3,2),(4,4,3),(5,5,2),(6,6,2),(7,7,5),(8,8,2),(9,9,5),(10,10,1),(11,11,2),(12,12,6),(13,13,1),(14,14,4),(15,15,5),(16,16,1),(17,17,5),(18,18,1),(19,19,1),(20,20,5),(21,21,5),(22,22,7),(23,23,8),(24,24,7),(25,25,7),(26,26,7),(27,27,7),(28,28,7),(29,29,10),(30,30,10),(31,31,10),(32,32,10),(33,33,10),(34,34,10),(35,35,10),(36,36,10),(37,37,50),(38,37,49),(39,37,47),(40,38,47),(41,39,49),(42,39,47),(43,39,50),(44,40,50),(45,41,49),(46,42,20),(47,42,18),(48,42,16),(49,42,29),(50,42,26),(51,43,29),(52,43,26),(53,43,16),(54,43,20),(55,44,29),(56,44,16),(57,44,20),(58,44,26),(59,45,16),(60,45,29),(61,45,26),(62,45,20),(63,46,18),(64,46,36),(65,46,20),(66,46,30),(67,46,29),(68,46,16),(69,46,31),(70,46,26),(71,46,38),(72,46,37),(73,46,39),(74,47,25),(75,47,29),(76,47,26),(77,47,16),(78,47,20),(79,48,26),(80,48,29),(81,48,16),(82,48,20),(83,48,37),(84,49,37),(85,50,18),(86,51,18),(87,52,26),(88,52,36),(89,52,20),(90,52,16),(91,52,31),(92,52,32),(93,52,29),(94,52,30),(95,53,37),(96,53,20),(97,53,36),(98,53,39),(99,53,38),(100,53,26),(101,53,18),(102,53,29),(103,53,30),(104,53,16),(105,53,31),(106,54,14),(107,55,16),(108,55,26),(109,55,29),(110,55,20),(111,56,20),(112,56,16),(113,56,31),(114,56,29),(115,56,26),(116,57,20),(117,57,16),(118,57,26),(119,57,29),(120,58,20),(121,58,26),(122,58,16),(123,58,29),(124,59,20),(125,59,33),(126,59,29),(127,59,26),(128,59,16),(129,60,14),(130,61,16),(131,61,29),(132,61,26),(133,61,20),(134,62,16),(135,62,29),(136,62,20),(137,62,26),(138,63,16),(139,63,20),(140,63,26),(141,63,31),(142,63,29),(143,64,29),(144,64,26),(145,64,20),(146,64,31),(147,64,16),(148,65,29),(149,65,30),(150,65,31),(151,65,26),(152,65,20),(153,65,16),(154,65,39),(155,65,38),(156,65,37),(157,65,18),(158,65,36),(159,66,26),(160,66,16),(161,66,29),(162,66,20),(163,67,26),(164,67,29),(165,67,16),(166,67,20),(167,68,18),(168,69,37),(169,70,18),(170,70,36),(171,70,20),(172,70,30),(173,70,29),(174,70,16),(175,70,31),(176,70,26),(177,70,39),(178,70,37),(179,70,38),(180,71,20),(181,71,16),(182,71,29),(183,71,26),(184,72,26),(185,72,29),(186,72,16),(187,72,20),(188,73,26),(189,73,29),(190,73,16),(191,73,20),(192,74,29),(193,74,16),(194,74,26),(195,74,20),(196,75,16),(197,75,29),(198,75,26),(199,75,20),(200,76,20),(201,76,26),(202,76,29),(203,76,16),(204,77,20),(205,77,26),(206,77,29),(207,77,31),(208,77,16),(209,78,37),(210,79,26),(211,79,29),(212,79,20),(213,79,16),(214,80,16),(215,80,31),(216,80,20),(217,80,26),(218,80,29),(219,81,16),(220,81,20),(221,81,26),(222,81,29),(223,82,18),(224,83,37),(225,84,37),(226,85,16),(227,85,31),(228,85,29),(229,85,26),(230,85,20),(231,86,20),(232,86,29),(233,86,16),(234,86,26),(235,87,16),(236,87,20),(237,87,29),(238,87,26),(239,88,16),(240,88,29),(241,88,20),(242,88,26),(243,89,29),(244,89,26),(245,89,20),(246,89,16),(247,90,26),(248,90,16),(249,90,30),(250,90,31),(251,90,36),(252,90,37),(253,90,18),(254,91,29),(255,91,26),(256,91,16),(257,91,18),(258,91,20),(259,92,16),(260,92,20),(261,92,29),(262,92,26),(263,93,26),(264,93,36),(265,93,37),(266,93,38),(267,93,39),(268,93,20),(269,93,18),(270,93,16),(271,93,29),(272,93,30),(273,93,31),(274,94,26),(275,94,20),(276,94,29),(277,94,16),(278,95,38),(279,96,26),(280,96,29),(281,96,16),(282,96,20),(283,97,20),(284,97,16),(285,97,29),(286,97,26),(287,98,20),(288,98,29),(289,98,16),(290,98,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,11,'<com.SoundboardEngine.SoundSaver: java.lang.String getInternalSoundId(android.net.Uri,java.lang.String)>',67,'p',NULL),(2,12,'<com.SoundboardEngine.SoundSaver: java.lang.String getInternalSoundId(android.net.Uri,java.lang.String)>',11,'p',NULL),(3,11,'<com.SoundboardEngine.SoundSaver: void SaveSound(int,java.lang.String,int)>',119,'p',NULL),(4,3,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(5,11,'<com.SoundboardEngine.SoundSaver: java.lang.String getInternalSoundId(android.net.Uri,java.lang.String)>',11,'p',NULL),(6,11,'<com.SoundboardEngine.SoundSaver: void SaveSound(int,java.lang.String,int)>',179,'p',NULL),(7,19,'<com.SoundboardEngine.SoundSaver: void RemoveSound(int,java.lang.String)>',19,'p',NULL),(8,11,'<com.SoundboardEngine.SoundSaver: void RemoveSound(int,java.lang.String)>',19,'p',NULL),(9,19,'<com.SoundboardEngine.SoundSaver: void SaveSound(int,java.lang.String,int)>',179,'p',NULL),(10,1,'<com.AmazingBullshit.PrivacyPooperFree.Main: void navigateToUrl(java.lang.String)>',6,'a',NULL),(11,2,'<com.AmazingBullshit.HolyFuckingBibleFree.Main: void navigateToUrl(java.lang.String)>',6,'a',NULL),(12,6,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(13,12,'<com.SoundboardEngine.SoundSaver: void RemoveSound(int,java.lang.String)>',19,'p',NULL),(14,4,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(15,19,'<com.SoundboardEngine.SoundSaver: java.lang.String getInternalSoundId(android.net.Uri,java.lang.String)>',67,'p',NULL),(16,12,'<com.SoundboardEngine.SoundSaver: java.lang.String getInternalSoundId(android.net.Uri,java.lang.String)>',67,'p',NULL),(17,19,'<com.SoundboardEngine.SoundSaver: java.lang.String getInternalSoundId(android.net.Uri,java.lang.String)>',11,'p',NULL),(18,12,'<com.SoundboardEngine.SoundSaver: void SaveSound(int,java.lang.String,int)>',119,'p',NULL),(19,12,'<com.SoundboardEngine.SoundSaver: void SaveSound(int,java.lang.String,int)>',179,'p',NULL),(20,19,'<com.SoundboardEngine.SoundSaver: void SaveSound(int,java.lang.String,int)>',119,'p',NULL),(21,5,'<com.AmazingBullshit.CopAppFree.Main: void navigateToUrl(java.lang.String)>',6,'a',NULL),(22,47,'<com.SoundboardEngine.SoundSaver: void RemoveSound(int,java.lang.String)>',16,'p',NULL),(23,8,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(24,47,'<com.SoundboardEngine.SoundSaver: java.lang.String getInternalSoundId(android.net.Uri,java.lang.String)>',11,'p',NULL),(25,7,'<com.AmazingBullshit.CopAppFree.Main: void navigateToUrl(java.lang.String)>',6,'a',NULL),(26,47,'<com.SoundboardEngine.SoundSaver: void SaveSound(int,java.lang.String,int)>',71,'p',NULL),(27,47,'<com.SoundboardEngine.SoundSaver: java.lang.String getInternalSoundId(android.net.Uri,java.lang.String)>',67,'p',NULL),(28,47,'<com.SoundboardEngine.SoundSaver: void SaveSound(int,java.lang.String,int)>',131,'p',NULL),(29,49,'<bg: java.util.List g(android.content.Context)>',3,'p',NULL),(30,49,'<bg: java.util.List h(android.content.Context)>',5,'p',NULL),(31,49,'<bg: bf a(android.content.Context,bf)>',27,'p',NULL),(32,49,'<bg: bf a(android.content.Context,bf)>',30,'p',0),(33,49,'<bg: bf f(android.content.Context)>',3,'p',NULL),(34,50,'<com.orz.lib.sd_sdk$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(35,10,'<com.orz.lib.sd_sdk: void change()>',4,'a',NULL),(36,49,'<bg: void b(android.content.Context,bf)>',31,'p',NULL),(37,57,'<com.tencent.webnet.h: void a(android.content.Context)>',12,'p',NULL),(38,58,'<com.tencent.webnet.am: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(39,57,'<com.tencent.webnet.h: int b(android.content.Context)>',43,'p',NULL),(40,56,'<com.sdwl.game.latale.small.MainActivity: void createShortCut()>',20,'r',NULL),(41,55,'<com.sdwl.game.latale.large.MainActivity: void createShortCut()>',20,'r',NULL),(42,61,'<com.ku6.dragon.MoreActivity$6: void onClick(android.content.DialogInterface,int)>',25,'a',NULL),(43,62,'<com.ku6.dragon.FansActivity$FansAdapter$3: void onClick(android.view.View)>',12,'a',NULL),(44,63,'<com.ku6.dragon.VideoInfoAdapter$6: void onClick(android.view.View)>',12,'a',NULL),(45,64,'<com.ku6.dragon.IdolActivity$IdolAdapter$4: void onClick(android.view.View)>',12,'a',NULL),(46,65,'<com.ku6.dragon.BaseActivity$2: void onClick(android.view.View)>',8,'a',NULL),(47,66,'<com.ku6.dragon.SplashActivity$2: void onClick(android.view.View)>',6,'a',NULL),(48,67,'<com.ku6.dragon.WeiguanListActivity$1: void onClick(android.view.View)>',6,'a',NULL),(49,68,'<com.ku6.dragon.WeiguanListActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(50,69,'<com.ku6.dragon.MoreActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',20,'a',NULL),(51,69,'<com.ku6.dragon.MoreActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(52,70,'<com.ku6.dragon.DialogMag$3: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(53,71,'<com.ku6.dragon.BaseActivity$5: void onClick(android.view.View)>',9,'a',NULL),(54,16,'<com.ku6.dragon.IGDialogDownload: void openFile(java.io.File)>',8,'a',NULL),(55,72,'<com.ku6.dragon.MediaVideoActivity$15: void onClick(android.view.View)>',52,'a',NULL),(56,73,'<com.ku6.dragon.UserInfoActivity$5: void onClick(android.view.View)>',15,'a',NULL),(57,74,'<com.ku6.dragon.NewsActivity$ActiveCenAdapter$5: void onClick(android.view.View)>',37,'a',NULL),(58,75,'<com.ku6.dragon.LoginCenterActivity$5: void onClick(android.view.View)>',8,'a',NULL),(59,76,'<com.ku6.dragon.event.BonusActivity$1: void onClick(android.view.View)>',7,'a',NULL),(60,77,'<com.ku6.dragon.IGDialogDownload$2: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(61,78,'<com.ku6.dragon.VideoInfoAdapter$5: void onClick(android.view.View)>',30,'a',NULL),(62,79,'<com.ku6.dragon.LoginCenterActivity$6: void onClick(android.view.View)>',6,'a',NULL),(63,73,'<com.ku6.dragon.UserInfoActivity$5: void onClick(android.view.View)>',25,'a',NULL),(64,80,'<com.ku6.dragon.UserInfoActivity$4: void onClick(android.view.View)>',25,'a',NULL),(65,81,'<com.ku6.dragon.BaseActivity$3: void onClick(android.view.View)>',8,'a',NULL),(66,82,'<com.ku6.dragon.VideoInfoAdapter$3: void onClick(android.view.View)>',11,'a',NULL),(67,83,'<com.ku6.dragon.MediaVideoActivity$22: void onClick(android.view.View)>',9,'a',NULL),(68,69,'<com.ku6.dragon.MoreActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',12,'a',NULL),(69,68,'<com.ku6.dragon.WeiguanListActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',33,'a',NULL),(70,84,'<com.ku6.dragon.BaseActivity$6: void onClick(android.view.View)>',8,'a',NULL),(71,85,'<com.ku6.dragon.LoginCenterActivity$1: void onClick(android.view.View)>',25,'a',NULL),(72,86,'<com.ku6.dragon.NewsActivity$ActiveCenAdapter$11: void onClick(android.view.View)>',37,'a',NULL),(73,87,'<com.ku6.dragon.MediaVideoActivity$20: void onClick(android.view.View)>',7,'a',NULL),(74,88,'<com.ku6.dragon.NewsActivity$ActiveCenAdapter$3: void onClick(android.view.View)>',12,'a',NULL),(75,89,'<com.ku6.dragon.NewsActivity$ActiveCenAdapter$9: void onClick(android.view.View)>',12,'a',NULL),(76,85,'<com.ku6.dragon.LoginCenterActivity$1: void onClick(android.view.View)>',31,'a',NULL),(77,90,'<com.ku6.dragon.UserInfoActivity$2: void onClick(android.view.View)>',6,'a',NULL),(78,68,'<com.ku6.dragon.WeiguanListActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(79,91,'<com.ku6.dragon.MyVideoAdapter$2: void onClick(android.view.View)>',46,'a',NULL),(80,80,'<com.ku6.dragon.UserInfoActivity$4: void onClick(android.view.View)>',15,'a',NULL),(81,92,'<com.ku6.dragon.SinaLoginActivity$2: void onClick(android.view.View)>',6,'a',NULL),(82,69,'<com.ku6.dragon.MoreActivity$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(83,68,'<com.ku6.dragon.WeiguanListActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(84,68,'<com.ku6.dragon.WeiguanListActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(85,93,'<com.ku6.dragon.UserInfoActivity$3: void onClick(android.view.View)>',11,'s',NULL),(86,85,'<com.ku6.dragon.LoginCenterActivity$1: void onClick(android.view.View)>',37,'a',NULL),(87,94,'<com.ku6.dragon.UserVideoInfoAdapter$5: void onClick(android.view.View)>',30,'a',NULL),(88,95,'<com.ku6.dragon.MediaVideoActivity$23: void onClick(android.view.View)>',8,'a',NULL),(89,96,'<com.ku6.dragon.MediaVideoActivity$21: void onClick(android.view.View)>',7,'a',NULL),(90,97,'<com.ku6.dragon.DialogMag$5: void onClick(android.content.DialogInterface,int)>',15,'a',NULL),(91,98,'<com.ku6.dragon.MoreActivity$2: void onClick(android.view.View)>',6,'a',NULL),(92,99,'<com.ku6.dragon.NewsActivity$ActiveCenAdapter$12: void onClick(android.view.View)>',13,'a',NULL),(93,100,'<com.ku6.dragon.BaseActivity$4: void onClick(android.view.View)>',9,'a',NULL),(94,101,'<com.ku6.dragon.UserVideoInfoAdapter$4: void onClick(android.view.View)>',11,'a',NULL),(95,102,'<com.ku6.dragon.CategoryActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(96,103,'<com.ku6.dragon.NewsActivity$ActiveCenAdapter$6: void onClick(android.view.View)>',13,'a',NULL),(97,104,'<com.ku6.dragon.NewsActivity$ActiveCenAdapter$14: void onClick(android.view.View)>',12,'a',NULL),(98,105,'<com.ku6.dragon.LoginCenterActivity$4: void onClick(android.view.View)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,2,3),(3,3,3),(4,4,2),(5,5,2),(6,6,2),(7,7,2),(8,8,2),(9,9,3),(10,10,2),(11,11,2),(12,12,3),(13,13,2),(14,14,2),(15,15,2),(16,16,3),(17,17,3),(18,18,2),(19,19,2),(20,20,2),(21,21,2),(22,22,3),(23,23,2),(24,24,3),(25,25,2),(26,26,2),(27,27,2),(28,28,2),(29,29,2),(30,31,2),(31,32,6),(32,33,6),(33,44,8),(34,46,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,22,2),(2,23,2),(3,24,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,30,'com/war/GameMidlet'),(2,34,'com/ku6/dragon/LoginCenterActivity'),(3,35,'com/ku6/dragon/UserInfoActivity'),(4,36,'com/ku6/dragon/UserInfoActivity'),(5,37,'com/ku6/dragon/UserInfoActivity'),(6,38,'com/ku6/dragon/MediaVideoActivity'),(7,39,'com/ku6/dragon/LoginCenterActivity'),(8,40,'com/ku6/dragon/CategoryActivity'),(9,41,'com/ku6/dragon/DragonActivity'),(10,42,'com/ku6/dragon/AppInfoActivity'),(11,43,'com/ku6/dragon/AppInfoActivity'),(12,45,'com/ku6/dragon/UserInfoActivity'),(13,47,'com/ku6/dragon/UserInfoActivity'),(14,48,'com/ku6/dragon/IdolActivity'),(15,49,'com/ku6/dragon/VideoPlayActivity'),(16,50,'com/ku6/dragon/SNSLoginActivity'),(17,51,'com/ku6/dragon/SMSRegActivity'),(18,52,'com/ku6/dragon/MoreActivity'),(19,53,'com/ku6/dragon/MediaVideoActivity'),(20,54,'com/ku6/dragon/VideoPlayActivity'),(21,55,'com/ku6/dragon/SinaLoginActivity'),(22,56,'com/ku6/dragon/IdolActivity'),(23,57,'com/ku6/dragon/FansActivity'),(24,58,'com/ku6/dragon/WeiguanListActivity'),(25,59,'com/ku6/dragon/ShareActivity'),(26,60,'com/ku6/dragon/UserInfoActivity'),(27,61,'com/ku6/dragon/AppInfoActivity'),(28,62,'com/ku6/dragon/DragonActivity'),(29,63,'com/ku6/dragon/MoreActivity'),(30,64,'com/ku6/dragon/event/BonusActivity'),(31,65,'com/ku6/dragon/VideoPlayActivity'),(32,66,'com/ku6/dragon/WeiguanListActivity'),(33,67,'com/ku6/dragon/ShareActivity'),(34,68,'com/ku6/dragon/ShareActivity'),(35,69,'com/ku6/dragon/SMSRegActivity'),(36,70,'com/ku6/dragon/UploadLoginActivity'),(37,71,'com/ku6/dragon/DragonActivity'),(38,72,'com/ku6/dragon/VideoPlayActivity'),(39,73,'com/ku6/dragon/FansActivity'),(40,74,'com/ku6/dragon/SinaRegActivity'),(41,75,'com/ku6/dragon/AppInfoActivity'),(42,76,'com/ku6/dragon/DragonActivity'),(43,77,'com/ku6/dragon/DragonActivity'),(44,78,'com/ku6/dragon/FileUploadService'),(45,79,'com/ku6/dragon/SMSRegActivity'),(46,80,'com/ku6/dragon/VideoPlayActivity'),(47,81,'com/ku6/dragon/MoreActivity'),(48,82,'com/ku6/dragon/NewsActivity'),(49,83,'com/ku6/dragon/LoginCenterActivity'),(50,84,'com/ku6/dragon/AdviceActivity'),(51,85,'com/ku6/dragon/UserInfoActivity'),(52,86,'com/ku6/dragon/NewsActivity'),(53,87,'com/ku6/dragon/ShareActivity'),(54,88,'com/ku6/dragon/DragonActivity'),(55,89,'com/ku6/dragon/UserInfoActivity'),(56,90,'com/ku6/dragon/FansActivity'),(57,91,'com/ku6/dragon/SinaRegActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,4),(2,2,5),(3,3,7),(4,4,12),(5,5,13),(6,6,14),(7,7,15),(8,8,16),(9,9,17),(10,10,18),(11,11,19),(12,12,20),(13,13,21),(14,14,22),(15,15,25),(16,16,28),(17,17,30),(18,18,33),(19,19,34),(20,20,35),(21,21,36),(22,22,38),(23,23,39),(24,24,40),(25,25,42),(26,26,43),(27,27,44),(28,28,45),(29,29,53),(30,31,56),(31,46,58);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,32,'duplicate'),(2,32,'android.intent.extra.shortcut.NAME'),(3,32,'android.intent.extra.shortcut.ICON_RESOURCE'),(4,32,'android.intent.extra.shortcut.INTENT'),(5,33,'duplicate'),(6,33,'android.intent.extra.shortcut.NAME'),(7,33,'android.intent.extra.shortcut.ICON_RESOURCE'),(8,33,'android.intent.extra.shortcut.INTENT'),(9,35,'uid'),(10,36,'uid'),(11,37,'uid'),(12,41,'type'),(13,42,'activity_type'),(14,43,'activity_type'),(15,45,'uid'),(16,47,'uid'),(17,48,'uid'),(18,48,'idoltype'),(19,49,'uid'),(20,49,'fid'),(21,49,'lid'),(22,49,'duration'),(23,49,'status'),(24,49,'playurl'),(25,49,'channelid'),(26,50,'site'),(27,50,'label'),(28,54,'uid'),(29,54,'fid'),(30,54,'lid'),(31,54,'duration'),(32,54,'status'),(33,54,'playurl'),(34,54,'channelid'),(35,56,'uid'),(36,56,'idoltype'),(37,57,'uid'),(38,57,'fanstype'),(39,59,'video'),(40,60,'uid'),(41,61,'activity_type'),(42,62,'type'),(43,64,'event'),(44,65,'uid'),(45,65,'fid'),(46,65,'lid'),(47,65,'duration'),(48,65,'status'),(49,65,'playurl'),(50,65,'channelid'),(51,67,'video'),(52,68,'video'),(53,71,'type'),(54,72,'fid'),(55,72,'uid'),(56,72,'lid'),(57,72,'duration'),(58,72,'status'),(59,72,'playurl'),(60,72,'userId'),(61,72,'channelid'),(62,73,'uid'),(63,73,'fanstype'),(64,75,'activity_type'),(65,76,'type'),(66,77,'type'),(67,80,'uid'),(68,80,'fid'),(69,80,'lid'),(70,80,'duration'),(71,80,'status'),(72,80,'playurl'),(73,80,'channelid'),(74,83,'flag'),(75,85,'uid'),(76,86,'uid'),(77,87,'video'),(78,88,'category'),(79,88,'type'),(80,89,'uid'),(81,90,'uid'),(82,90,'fanstype');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,4),(7,6,5),(8,7,4),(9,7,5),(10,8,1),(11,9,4),(12,9,5),(13,10,5),(14,10,4),(15,11,1),(16,12,7),(17,13,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,8,1),(7,11,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'(.*)','(.*)'),(2,9,'(.*)','(.*)'),(3,16,'(.*)','(.*)'),(4,24,'(.*)','(.*)'),(5,46,'application','vnd.android.package-archive');
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
INSERT INTO `IPackages` VALUES (1,30,'com.war'),(2,34,'com.ku6.dragon'),(3,35,'com.ku6.dragon'),(4,36,'com.ku6.dragon'),(5,37,'com.ku6.dragon'),(6,38,'com.ku6.dragon'),(7,39,'com.ku6.dragon'),(8,40,'com.ku6.dragon'),(9,41,'com.ku6.dragon'),(10,42,'com.ku6.dragon'),(11,43,'com.ku6.dragon'),(12,45,'com.ku6.dragon'),(13,47,'com.ku6.dragon'),(14,48,'com.ku6.dragon'),(15,49,'com.ku6.dragon'),(16,50,'com.ku6.dragon'),(17,51,'com.ku6.dragon'),(18,52,'com.ku6.dragon'),(19,53,'com.ku6.dragon'),(20,54,'com.ku6.dragon'),(21,55,'com.ku6.dragon'),(22,56,'com.ku6.dragon'),(23,57,'com.ku6.dragon'),(24,58,'com.ku6.dragon'),(25,59,'com.ku6.dragon'),(26,60,'com.ku6.dragon'),(27,61,'com.ku6.dragon'),(28,62,'com.ku6.dragon'),(29,63,'com.ku6.dragon'),(30,64,'com.ku6.dragon'),(31,65,'com.ku6.dragon'),(32,66,'com.ku6.dragon'),(33,67,'com.ku6.dragon'),(34,68,'com.ku6.dragon'),(35,69,'com.ku6.dragon'),(36,70,'com.ku6.dragon'),(37,71,'com.ku6.dragon'),(38,72,'com.ku6.dragon'),(39,73,'com.ku6.dragon'),(40,74,'com.ku6.dragon'),(41,75,'com.ku6.dragon'),(42,76,'com.ku6.dragon'),(43,77,'com.ku6.dragon'),(44,78,'com.ku6.dragon'),(45,79,'com.ku6.dragon'),(46,80,'com.ku6.dragon'),(47,81,'com.ku6.dragon'),(48,82,'com.ku6.dragon'),(49,83,'com.ku6.dragon'),(50,84,'com.ku6.dragon'),(51,85,'com.ku6.dragon'),(52,86,'com.ku6.dragon'),(53,87,'com.ku6.dragon'),(54,88,'com.ku6.dragon'),(55,89,'com.ku6.dragon'),(56,90,'com.ku6.dragon'),(57,91,'com.ku6.dragon');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,7,0),(5,9,0),(6,12,0),(7,19,0),(8,25,0),(9,34,0),(10,44,0),(11,45,0),(12,51,0),(13,52,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,4,1,0),(2,4,1,0),(3,4,1,0),(4,10,1,0),(5,11,1,0),(6,12,1,0),(7,10,1,0),(8,11,1,0),(9,12,1,0),(10,10,1,0),(11,11,1,0),(12,12,1,0),(13,10,1,0),(14,11,1,0),(15,14,1,0),(16,14,1,0),(17,14,1,0),(18,21,1,0),(19,21,1,0),(20,21,1,0),(21,21,1,0),(22,23,1,0),(23,23,1,0),(24,23,1,0),(25,25,1,0),(26,25,1,0),(27,25,1,0),(28,25,1,0),(29,34,1,0),(30,35,0,0),(31,38,1,0),(32,40,1,0),(33,41,1,0),(34,42,0,0),(35,43,0,0),(36,44,0,0),(37,45,0,0),(38,46,0,0),(39,47,0,0),(40,48,0,0),(41,49,0,0),(42,50,0,0),(43,51,0,0),(44,52,1,0),(45,53,0,0),(46,54,1,0),(47,55,0,0),(48,56,0,0),(49,57,0,0),(50,58,0,0),(51,59,0,0),(52,60,0,0),(53,60,0,0),(54,61,0,0),(55,62,0,0),(56,63,0,0),(57,64,0,0),(58,65,0,0),(59,66,0,0),(60,67,0,0),(61,68,0,0),(62,69,0,0),(63,70,0,0),(64,71,0,0),(65,72,0,0),(66,73,0,0),(67,74,0,0),(68,75,0,0),(69,76,0,0),(70,77,0,0),(71,78,0,0),(72,79,0,0),(73,80,0,0),(74,81,0,0),(75,82,0,0),(76,83,0,0),(77,84,0,0),(78,85,0,0),(79,86,0,0),(80,87,0,0),(81,88,0,0),(82,89,0,0),(83,90,0,0),(84,91,0,0),(85,92,0,0),(86,93,0,0),(87,94,0,0),(88,95,0,0),(89,96,0,0),(90,97,0,0),(91,98,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (27,'Android.permission.CHANGE_CONFIGURATION'),(10,'android.permission.ACCESS_COARSE_LOCATION'),(21,'android.permission.ACCESS_FINE_LOCATION'),(23,'android.permission.ACCESS_MOCK_LOCATION'),(4,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(16,'android.permission.CALL_PHONE'),(19,'android.permission.CAMERA'),(11,'android.permission.CHANGE_NETWORK_STATE'),(20,'android.permission.CHANGE_WIFI_STATE'),(12,'android.permission.GET_TASKS'),(25,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(18,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(6,'android.permission.PERMISSION_NAME'),(13,'android.permission.READ_LOGS'),(5,'android.permission.READ_PHONE_STATE'),(22,'android.permission.RECORD_AUDIO'),(17,'android.permission.RESTART_PACKAGES'),(7,'android.permission.SEND_SMS'),(15,'android.permission.SET_ORIENTATION'),(24,'android.permission.UPDATE_DEVICE_STATS'),(28,'android.permission.VIBRATE'),(8,'android.permission.WRITE_APN_SETTINGS'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(1,'android.permission.WRITE_SETTINGS'),(14,'android.permission.WRITE_SMS'),(26,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(2,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(3,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(9,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(10,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(11,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(12,NULL,NULL,'market://search?q=Soundboard',NULL,NULL,NULL),(13,NULL,NULL,'market://search?q=Soundboard',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'http://aftshirts.com',NULL,NULL,NULL),(16,NULL,NULL,'http://aftshirts.com',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'http://www.facebook.com/actionfiguretherapy',NULL,NULL,NULL),(19,NULL,NULL,'http://www.facebook.com/actionfiguretherapy',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'http://www.youtube.com/actionfiguretherapy',NULL,NULL,NULL),(22,NULL,NULL,'http://www.youtube.com/actionfiguretherapy',NULL,NULL,NULL),(23,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(24,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(27,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(32,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(33,NULL,NULL,'market://search?q=Soundboard',NULL,NULL,NULL),(34,NULL,NULL,'http://aftshirts.com',NULL,NULL,NULL),(35,NULL,NULL,'http://www.facebook.com/actionfiguretherapy',NULL,NULL,NULL),(36,NULL,NULL,'http://www.youtube.com/actionfiguretherapy',NULL,NULL,NULL),(37,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(42,NULL,NULL,'market://search?q=Soundboard',NULL,NULL,NULL),(43,NULL,NULL,'http://aftshirts.com',NULL,NULL,NULL),(44,NULL,NULL,'http://www.facebook.com/actionfiguretherapy',NULL,NULL,NULL),(45,NULL,NULL,'http://www.youtube.com/actionfiguretherapy',NULL,NULL,NULL),(46,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(47,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(48,NULL,NULL,'content://media/internal/audio/media',NULL,NULL,NULL),(49,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(50,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(51,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(52,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(53,NULL,NULL,'http://t.sina.com/orzgame',NULL,NULL,NULL),(54,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(55,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(56,NULL,NULL,'',NULL,NULL,NULL),(57,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(58,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,1,1),(2,2,2),(3,3,3),(4,5,6),(5,6,8),(6,7,9),(7,8,10),(8,9,11),(9,13,23),(10,15,24),(11,16,26),(12,17,27),(13,18,29),(14,19,31),(15,20,32),(16,22,37),(17,24,41),(18,26,46),(19,27,47),(20,28,48),(21,29,49),(22,30,50),(23,31,51),(24,33,52),(25,36,54),(26,37,55),(27,39,57);
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
INSERT INTO `UsesPermissions` VALUES (1,2,1),(2,1,1),(3,2,2),(4,1,2),(5,2,3),(6,1,3),(7,2,4),(8,1,4),(9,3,1),(10,3,2),(11,3,3),(12,3,4),(13,4,1),(14,4,2),(15,4,3),(16,4,4),(17,5,2),(18,5,3),(19,5,4),(20,5,5),(21,5,6),(22,5,7),(23,5,8),(24,5,9),(25,5,10),(26,5,11),(27,6,1),(28,6,2),(29,6,3),(30,6,4),(31,6,5),(32,6,6),(33,6,7),(34,6,8),(35,6,9),(36,6,11),(37,6,12),(38,6,13),(39,6,14),(40,6,15),(41,6,17),(42,6,16),(43,6,19),(44,6,18),(45,6,21),(46,6,20),(47,6,23),(48,6,22),(49,6,24),(50,7,2),(51,7,3),(52,7,4),(53,7,5),(54,7,6),(55,7,7),(56,7,9),(57,7,10),(58,7,21),(59,7,22),(60,7,25),(61,7,27),(62,7,26),(63,7,28);
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

-- Dump completed on 2015-10-09  0:41:08
